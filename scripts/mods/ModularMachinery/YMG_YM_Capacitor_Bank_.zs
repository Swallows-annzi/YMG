/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.MachineStructureFormedEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.SmartInterfaceType;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.FactoryRecipeTickEvent;


//能量上限
val setEnergyMax = 0x7FFFFFFFFFFFFFFF as long;
//最小传输速度
val SpeedMin = 0.01 as double;
//最大传输速度
val SpeedMax = 10000000000 as long;
//基础速率
val Base_rate = 100000;
//能量容量设置
val setEnergyLitherite  = 2000000000;
val setEnergyErodium    = 200000000000;
val setEnergyKyronite   = 20000000000000;
val setEnergyPladium    = 2000000000000000;
val setEnergyIonite     = 20000000000000000;
val setEnergyAethium    = 200000000000000000;

// <environmentaltech:structure_frame_1>.addTooltip("§f作为电容库的容量方块时：可为电容库提供 " + FormatNumber(setEnergyLitherite) + " RF的容量");
// <environmentaltech:structure_frame_2>.addTooltip("§f作为电容库的容量方块时：可为电容库提供 " + FormatNumber(setEnergyErodium) + " RF的容量");
// <environmentaltech:structure_frame_3>.addTooltip("§f作为电容库的容量方块时：可为电容库提供 " + FormatNumber(setEnergyKyronite) + " RF的容量");
// <environmentaltech:structure_frame_4>.addTooltip("§f作为电容库的容量方块时：可为电容库提供 " + FormatNumber(setEnergyPladium) + " RF的容量");
// <environmentaltech:structure_frame_5>.addTooltip("§f作为电容库的容量方块时：可为电容库提供 " + FormatNumber(setEnergyIonite) + " RF的容量");
// <environmentaltech:structure_frame_6>.addTooltip("§f作为电容库的容量方块时：可为电容库提供 " + FormatNumber(setEnergyAethium) + " RF的容量");
// <environmentaltech:structure_frame_6>.addTooltip("§f当六级结构方块数量为 27 个时容量为：" + FormatNumber(setEnergyMax) + "RF");

//线程设置
MachineModifier.setMaxThreads("YMG_YM_Capacitor_Bank_", 0);

//输入姬
val Energy_input_string = "§l§b能源§r§6 输入姬";
MachineModifier.addCoreThread("YMG_YM_Capacitor_Bank_", FactoryRecipeThread.createCoreThread(Energy_input_string));
//输出姬
val Energy_output_string = "§l§b能源§r§6 输出姬";
MachineModifier.addCoreThread("YMG_YM_Capacitor_Bank_", FactoryRecipeThread.createCoreThread(Energy_output_string));

//数据端口
MachineModifier.addSmartInterfaceType("YMG_YM_Capacitor_Bank_",
    SmartInterfaceType.create("speed", 1)
        .setHeaderInfo("能源传输速率设置")
        .setValueInfo("速度：%.5f 倍")
        .setFooterInfo("可调节的数据范围：" + SpeedMin + " ~ " + SpeedMax)
        .setNotEqualMessage("数据异常！")
);

//数据接口数据写入控制器
MMEvents.onMachinePostTick("YMG_YM_Capacitor_Bank_", function(event as MachineTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val nullable = ctrl.getSmartInterfaceData("speed");
    var speed = isNull(nullable) ? 1 as float : nullable.value;
    if (speed < SpeedMin || speed > SpeedMax) {
        nullable.value = 1;
    }
    map["speed"] = speed;
    ctrl.customData = data;
});


//能量输入
mods.modularmachinery.RecipeBuilder.newBuilder("YM_Capacitor_Bank__input", "YMG_YM_Capacitor_Bank_", 1)
.addEnergyPerTickInput(Base_rate)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["speed"] = isNull(map["speed"]) ? 0 as float : map["speed"].asFloat();
    map["Energy"] = isNull(map["Energy"]) ? 0 as long : map["Energy"].asLong();
    if (map["Energy"].asLong() + map["speed"].asFloat() * Base_rate > map["EnergyMax"].asLong()) {
        event.setFailed("容量不足！");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    ctrl.addModifier("Energyinput_up", RecipeModifierBuilder.create("modularmachinery:energy", "input", map["speed"].asFloat(), 1, false).build());
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["speed"] = isNull(map["speed"]) ? 0 as float : map["speed"].asFloat();
    map["Energy"] = isNull(map["Energy"]) ? 0 as long : map["Energy"].asLong();
    map["Energy"] = map["Energy"].asLong() + map["speed"].asFloat() * Base_rate;
    ctrl.customData = data;
})
.setThreadName(Energy_input_string)
.build();

//能量输出
mods.modularmachinery.RecipeBuilder.newBuilder("YM_Capacitor_Bank__output", "YMG_YM_Capacitor_Bank_", 1)
.addEnergyPerTickOutput(Base_rate)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["speed"] = isNull(map["speed"]) ? 0 as float : map["speed"].asFloat();
    map["Energy"] = isNull(map["Energy"]) ? 0 as long : map["Energy"].asLong();
    if (map["Energy"].asLong() < map["speed"].asFloat() * Base_rate) {
        event.setFailed("电量不足！");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    ctrl.addModifier("Energyoutput_up", RecipeModifierBuilder.create("modularmachinery:energy", "output", map["speed"].asFloat(), 1, false).build());
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["speed"] = isNull(map["speed"]) ? 0 as float : map["speed"].asFloat();
    map["Energy"] = isNull(map["Energy"]) ? 0 as long : map["Energy"].asLong();
    map["Energy"] = map["Energy"].asLong() - map["speed"].asFloat() * Base_rate;
    ctrl.customData = data;
})
.setThreadName(Energy_output_string)
.build();


//初始化
MMEvents.onStructureFormed("YMG_YM_Capacitor_Bank_", function(event as MachineStructureFormedEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["litherite"] = ctrl.getBlocksInPattern(<environmentaltech:structure_frame_1>) as int;
    map["erodium"] = ctrl.getBlocksInPattern(<environmentaltech:structure_frame_2>) as int;
    map["kyronite"] = ctrl.getBlocksInPattern(<environmentaltech:structure_frame_3>) as int;
    map["pladium"] = ctrl.getBlocksInPattern(<environmentaltech:structure_frame_4>) as int;
    map["ionite"] = ctrl.getBlocksInPattern(<environmentaltech:structure_frame_5>) as int;
    map["aethium"] = ctrl.getBlocksInPattern(<environmentaltech:structure_frame_6>) as int;
    val EnergyMax = (map["litherite"].asLong() * setEnergyLitherite + map["erodium"].asLong() * setEnergyErodium + map["kyronite"].asLong() * setEnergyKyronite + map["pladium"].asLong() * setEnergyPladium + map["ionite"].asLong() * setEnergyIonite + map["aethium"].asLong() * setEnergyAethium) as long;
    if( map["aethium"].asLong() == 27){
        map["EnergyMax"] = setEnergyMax;
    }
    else{
        map["EnergyMax"] = EnergyMax;
    }
    ctrl.customData = data;
});

//GUI
MMEvents.onControllerGUIRender("YMG_YM_Capacitor_Bank_", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["speed"] = isNull(map["speed"]) ? 0 as float : map["speed"].asFloat();
    map["Energy"] = isNull(map["Energy"]) ? 0 as long : map["Energy"].asLong();
    map["EnergyMax"] = isNull(map["EnergyMax"]) ? 0 as long : map["EnergyMax"].asLong();
    var info as string[] = [];
    info += "§b//////////////////////////////////////////////";
    info += "§9RF存量：§b(§e" + FormatNumber(map["Energy"].asLong()) + " §6RF / §e" + FormatNumber(map["EnergyMax"].asLong()) + "§6 RF§b) §e" + percentage(map["Energy"].asLong(), map["EnergyMax"].asLong(), 3) + "%";
    info += "§9传输倍率：§e" + Percentage_(map["speed"].asFloat()) + "§6x  §b(§9默认倍率：§e1.0§6x§b)";
    info += "§9传输速度：§e" + FormatNumber((map["speed"].asFloat() * Base_rate) as long) + " §6RF/t";
    info += "§b//////////////////////////////////////////////";
    info += data;
    event.extraInfo = info;
});


//单位转换
function FormatNumber(value as long) as string {
    if (value < 1000) {
        return "" + value;
    } else if (value < 1000000) {
        return "" + (value as float / 1000) + "K";
    } else if (value < 1000000000) {
        return "" + ((value / 1000) as float / 1000) + "M";
    } else if (value < 1000000000000) {
        return "" + ((value / 1000000) as float / 1000) + "G";
    } else if (value < 1000000000000000) {
        return "" + ((value / 1000000000) as float / 1000) + "T";
    } else if (value < 1000000000000000000) {
        return "" + ((value / 1000000000000) as float / 1000) + "P";
    } else {
        return "" + ((value / 1000000000000000) as float / 1000) + "E";
    }
}

//小数点后三位
function Percentage_(A as double) as double {
    return ((A * 1000.0) as int) as double / 1000.0;
}

//百分比
function percentage(A as long, B as long, C as int) as double {
    return (((A as double / B as double) * pow(10, C + 2)) as long) as double / pow(10, C);
}

//B次方
function pow(A as int, B as int) as long {
    var sum = 1 as long;
    for i in 0 to B {
        sum = sum * A;
    }
    return sum;
}