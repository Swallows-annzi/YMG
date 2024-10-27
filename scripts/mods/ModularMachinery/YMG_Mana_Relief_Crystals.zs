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
import mods.modularmachinery.FactoryRecipeTickEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.RecipeModifierBuilder;


//线程设置
MachineModifier.setMaxThreads("YMG_Mana_Relief_Crystals", 0);

//最大Mana容量
val MaxMana = 20000000 as long;
//最大电力容量
val MaxEnergy = 1000000000000 as long;
//单次Mana消耗
val ManaOutput = 1000;
//转换比
val Conversion = 2000 as long;

//魔力输入
val Mana_Input_String = "§d§l魔力输入装置";
MachineModifier.addCoreThread("YMG_Mana_Relief_Crystals", FactoryRecipeThread.createCoreThread(Mana_Input_String));

//能量转换装置
val Conversion_String = "§d§l能量转换装置";
MachineModifier.addCoreThread("YMG_Mana_Relief_Crystals", FactoryRecipeThread.createCoreThread(Conversion_String));

//催化剂输入装置
val Catalytic_Input_String = "§d§l催化输入装置";
MachineModifier.addCoreThread("YMG_Mana_Relief_Crystals", FactoryRecipeThread.createCoreThread(Catalytic_Input_String));

//电力输出
val Energy_Output_String = "§d§l电力输出装置";
MachineModifier.addCoreThread("YMG_Mana_Relief_Crystals", FactoryRecipeThread.createCoreThread(Energy_Output_String));


//Mana输入
mods.modularmachinery.RecipeBuilder.newBuilder("Mana_Relief_Crystals_Manainput_1", "YMG_Mana_Relief_Crystals", 1)
.setThreadName(Mana_Input_String)
.addManaInput(10000)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mana"] = isNull(map["Mana"]) ? 0 as long : map["Mana"].asLong();
    if(map["Mana"].asLong() + 10000 > MaxMana)
    event.setFailed("§c内部空间不足！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mana"] = isNull(map["Mana"]) ? 0 as long : map["Mana"].asLong();
    map["Mana"] = map["Mana"].asLong() + 10000;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "为其内部输入 10000 的Mana"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Mana_Relief_Crystals_Manainput_2", "YMG_Mana_Relief_Crystals", 1)
.setThreadName(Mana_Input_String)
.addFluidInput(<liquid:fluidedmana> * 10)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mana"] = isNull(map["Mana"]) ? 0 as long : map["Mana"].asLong();
    if(map["Mana"].asLong() + 10000 > MaxMana)
    event.setFailed("§c内部空间不足！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mana"] = isNull(map["Mana"]) ? 0 as long : map["Mana"].asLong();
    map["Mana"] = map["Mana"].asLong() + 10000;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "为其内部输入 10000 的Mana"
)
.build();

//能量转换
mods.modularmachinery.RecipeBuilder.newBuilder("Mana_Relief_Crystals_Conversion_Mana_RF", "YMG_Mana_Relief_Crystals", 1200)
.setThreadName(Conversion_String)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val Newconversion = Conversion * ManaOutput;
    map["Energy"] = isNull(map["Energy"]) ? 0 as long : map["Energy"].asLong();
    if(map["Energy"].asLong() + Newconversion > MaxEnergy)
    event.setFailed("§c内部空间不足！");
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val Newconversion = Conversion * ManaOutput;
    map["Mana"] = isNull(map["Mana"]) ? 0 as long : map["Mana"].asLong();
    map["Energy"] = isNull(map["Energy"]) ? 0 as long : map["Energy"].asLong();
    if(map["Mana"].asLong() < ManaOutput){
        event.preventProgressing("§cMana不足！");
    }
    if(map["Energy"].asLong() + Newconversion > MaxEnergy){
        event.preventProgressing("§c内部空间不足！");
    }
    if(map["Mana"].asLong() >= ManaOutput && map["Energy"].asLong() + Newconversion <= MaxEnergy){
        map["Mana"] = map["Mana"].asLong() - ManaOutput;
        map["Energy"] = map["Energy"].asLong() + Newconversion;
    }
    ctrl.customData = data;
})
.addRecipeTooltip(
    "每Tick消耗 " + ManaOutput + " 的Mana，并产出 " + Conversion * ManaOutput + " RF。",
    "同时能量将会暂存在机械内部。"
)
.build();

//星能液输入
mods.modularmachinery.RecipeBuilder.newBuilder("Mana_Relief_Crystals_Catalytic_Input_1", "YMG_Mana_Relief_Crystals", 1)
.setThreadName(Catalytic_Input_String)
.addFluidPerTickInput(<liquid:astralsorcery.liquidstarlight> * 150)
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    ctrl.addModifier("Catalytic_Input_1", RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build());
})
.addRecipeTooltip(
    "有星能液输入的情况下每Tick能量输出 x1.2",
    "若能量输出仓容量不足以输出能量时不会消耗星能液！"
)
.build();

//能源输出
mods.modularmachinery.RecipeBuilder.newBuilder("Mana_Relief_Crystals_Energy_Output", "YMG_Mana_Relief_Crystals", 1)
.setThreadName(Energy_Output_String)
.addEnergyPerTickOutput(Conversion * ManaOutput)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val Newconversion = Conversion * ManaOutput;
    map["Energy"] = isNull(map["Energy"]) ? 0 as long : map["Energy"].asLong();
    if(map["Energy"].asLong() < Newconversion)
    event.setFailed("§c内部电能不足！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val Newconversion = Conversion * ManaOutput;
    map["Energy"] = isNull(map["Energy"]) ? 0 as long : map["Energy"].asLong();
    map["Energy"] = map["Energy"].asLong() - Newconversion;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "输出 " + Conversion * ManaOutput + " 的RF"
)
.build();

//GUI
MMEvents.onControllerGUIRender("YMG_Mana_Relief_Crystals", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var info as string[] = [];
    map["Mana"] = isNull(map["Mana"]) ? 0 as long : map["Mana"].asLong();
    map["Energy"] = isNull(map["Energy"]) ? 0 as long : map["Energy"].asLong();
    info += "§a//////////////////////////////////////////////";
    info += "§9RF存量：§b(§e" + FormatNumber(map["Energy"].asLong()) + " §6RF / §e" + FormatNumber(MaxEnergy) + "§6 RF§b) §e" + percentage(map["Energy"].asLong(), MaxEnergy, 3) + "%";
    info += "§9Mana存量：§b(§e" + FormatNumber(map["Mana"].asLong()) + " §6 / §e" + FormatNumber(MaxMana) + "§6§b) §e" + percentage(map["Mana"].asLong(), MaxMana, 3) + "%";
    info += "§a//////////////////////////////////////////////";
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