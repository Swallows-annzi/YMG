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


//线程设置
MachineModifier.setMaxThreads("YMG_Mana_Dynamic_Storage_Tank", 0);

//最大Mana容量(最大：0x7FFFFFFFFFFFFFFF)
val MaxMana = 10000000000 as long;
//单次io
val setManaIO = 100000;

//魔力输入
val Mana_Input_String = "§d§l魔力输入装置";
MachineModifier.addCoreThread("YMG_Mana_Dynamic_Storage_Tank", FactoryRecipeThread.createCoreThread(Mana_Input_String));

//魔力输出
val Mana_Output_String = "§d§l魔力输出装置";
MachineModifier.addCoreThread("YMG_Mana_Dynamic_Storage_Tank", FactoryRecipeThread.createCoreThread(Mana_Output_String));

//液态魔力输入
val Fluid_Input_String = "§d§l液态魔力输入装置";
MachineModifier.addCoreThread("YMG_Mana_Dynamic_Storage_Tank", FactoryRecipeThread.createCoreThread(Fluid_Input_String));

//液态魔力输出
val Fluid_Output_String = "§d§l液态魔力输出装置";
MachineModifier.addCoreThread("YMG_Mana_Dynamic_Storage_Tank", FactoryRecipeThread.createCoreThread(Fluid_Output_String));

//魔力输入
mods.modularmachinery.RecipeBuilder.newBuilder("Mana_Dynamic_Storage_Tank_Manainput_1", "YMG_Mana_Dynamic_Storage_Tank", 1)
.setThreadName(Mana_Input_String)
.addManaInput(setManaIO)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mana"] = isNull(map["Mana"]) ? 0 as long : map["Mana"].asLong();
    if(map["Mana"].asLong() + setManaIO > MaxMana)
    event.setFailed("§c内部空间不足！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mana"] = isNull(map["Mana"]) ? 0 as long : map["Mana"].asLong();
    map["Mana"] = map["Mana"].asLong() + setManaIO;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "为其内部输入 " + setManaIO + " 的Mana"
)
.build();

//液态魔力输入
mods.modularmachinery.RecipeBuilder.newBuilder("Mana_Dynamic_Storage_Tank_Manainput_2", "YMG_Mana_Dynamic_Storage_Tank", 1)
.setThreadName(Fluid_Input_String)
.addFluidInput(<liquid:fluidedmana> * (setManaIO / 1000))
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mana"] = isNull(map["Mana"]) ? 0 as long : map["Mana"].asLong();
    if(map["Mana"].asLong() + setManaIO > MaxMana)
    event.setFailed("§c内部空间不足！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mana"] = isNull(map["Mana"]) ? 0 as long : map["Mana"].asLong();
    map["Mana"] = map["Mana"].asLong() + setManaIO;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "为其内部输入 " + setManaIO + " 的Mana"
)
.build();

//魔力输出
mods.modularmachinery.RecipeBuilder.newBuilder("Mana_Dynamic_Storage_Tank_ManaOutput_1", "YMG_Mana_Dynamic_Storage_Tank", 1)
.setThreadName(Mana_Output_String)
.addManaOutput(setManaIO)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mana"] = isNull(map["Mana"]) ? 0 as long : map["Mana"].asLong();
    if(map["Mana"].asLong() - setManaIO < 0)
    event.setFailed("§cMana不足！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mana"] = isNull(map["Mana"]) ? 0 as long : map["Mana"].asLong();
    map["Mana"] = map["Mana"].asLong() - setManaIO;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "从内部提取出 " + setManaIO + " 的Mana"
)
.build();

//液态魔力输出
mods.modularmachinery.RecipeBuilder.newBuilder("Mana_Dynamic_Storage_Tank_ManaOutput_2", "YMG_Mana_Dynamic_Storage_Tank", 1)
.setThreadName(Fluid_Output_String)
.addFluidOutput(<liquid:fluidedmana> * (setManaIO / 1000))
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mana"] = isNull(map["Mana"]) ? 0 as long : map["Mana"].asLong();
    if(map["Mana"].asLong() - setManaIO < 0)
    event.setFailed("§cMana不足！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mana"] = isNull(map["Mana"]) ? 0 as long : map["Mana"].asLong();
    map["Mana"] = map["Mana"].asLong() - setManaIO;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "从内部提取出 " + setManaIO + " 的Mana"
)
.build();


//GUI
MMEvents.onControllerGUIRender("YMG_Mana_Dynamic_Storage_Tank", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var info as string[] = [];
    map["Mana"] = isNull(map["Mana"]) ? 0 as long : map["Mana"].asLong();
    info += "§b>>";
    info += "§9Mana存量：§b(§e" + FormatNumber(map["Mana"].asLong()) + " §6 / §e" + FormatNumber(MaxMana) + "§6§b) §e" + percentage(map["Mana"].asLong(), MaxMana, 3) + "%";
    info += "§b>>";
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