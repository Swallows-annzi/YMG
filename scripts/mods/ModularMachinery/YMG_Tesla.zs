/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.FactoryRecipeTickEvent;


//最大能量存储
val MaxEnergy = 100000000000000;
//每Tick能量输出
val TickEnergyOutput = 1000000000;
//晴天产能基数
val Fine_Generation = 400000000;
//雨天产能基数
val Rain_Generation = 500000000;
//雷雨产能基数
val Thunder_Generation = 800000000;

//线程设置
MachineModifier.setMaxThreads("YMG_Tesla", 0);

//气象静电集束器
val Energy_Harvesting_String = "§b§l气象静电集束器";
MachineModifier.addCoreThread("YMG_Tesla", FactoryRecipeThread.createCoreThread(Energy_Harvesting_String));

//能量传导器
val Energy_Output_String = "§e§l能量传导器";
MachineModifier.addCoreThread("YMG_Tesla", FactoryRecipeThread.createCoreThread(Energy_Output_String));

//发电
mods.modularmachinery.RecipeBuilder.newBuilder("Tesla_Generation", "YMG_Tesla", 200)
.setThreadName(Energy_Harvesting_String)
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val weather = ctrl.world.isRaining();
    val thunder = ctrl.world.getWorldInfo().isThundering();
    map["Energy"] = isNull(map["Energy"]) ? 0 as long : map["Energy"].asLong();
    if (!weather){
        map["Energy"] = map["Energy"].asLong() + ctrl.world.random.nextInt(Fine_Generation / 2, Fine_Generation * 2);
        if(map["Energy"].asLong() > MaxEnergy)
        map["Energy"] = MaxEnergy;
    }
    if (weather && !thunder){
        map["Energy"] = map["Energy"].asLong() + ctrl.world.random.nextInt(Rain_Generation / 2, Rain_Generation * 2);
        if(map["Energy"].asLong() > MaxEnergy)
        map["Energy"] = MaxEnergy;
    }
    if (weather && thunder){
        map["Energy"] = map["Energy"].asLong() + ctrl.world.random.nextInt(Thunder_Generation / 2, Thunder_Generation * 2);
        if(map["Energy"].asLong() > MaxEnergy)
        map["Energy"] = MaxEnergy;
    }
    ctrl.customData = data;
})
.addItemOutput(<custommc:item782>).setChance(0.005)
.build();

//能量输出
mods.modularmachinery.RecipeBuilder.newBuilder("Tesla_Energy_Output", "YMG_Tesla", 1)
.setThreadName(Energy_Output_String)
.addEnergyPerTickOutput(TickEnergyOutput)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Energy"] = isNull(map["Energy"]) ? 0 as long : map["Energy"].asLong();
    if(map["Energy"].asLong() - TickEnergyOutput < 0)
    event.setFailed("§c内部电能不足！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Energy"] = isNull(map["Energy"]) ? 0 as long : map["Energy"].asLong();
    map["Energy"] = map["Energy"].asLong() - TickEnergyOutput;
    ctrl.customData = data;
})
.build();

//GUI
MMEvents.onControllerGUIRender("YMG_Tesla", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var info as string[] = [];
    map["Energy"] = isNull(map["Energy"]) ? 0 as long : map["Energy"].asLong();
    info += "§a//////////////////////////////////////////////";
    info += "§9RF存量：§b(§e" + FormatNumber(map["Energy"].asLong()) + " §6RF / §e" + FormatNumber(MaxEnergy) + "§6 RF§b) §e" + percentage(map["Energy"].asLong(), MaxEnergy, 3) + "%";
    info += "§a//////////////////////////////////////////////";
    // info += ctrl.world.isRaining();
    // info += ctrl.world.getWorldInfo().isThundering();
    ctrl.customData = data;
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

