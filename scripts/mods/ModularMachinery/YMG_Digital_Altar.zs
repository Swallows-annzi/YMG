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
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.RecipeCheckEvent;


//容量
val MaxBlood = 2000000;
//单次io(虚弱宝珠只能输入1000
val setBloodIO = 1000;

//线程设置
MachineModifier.setMaxThreads("YMG_Digital_Altar", 0);

//祭坛核心
val Blood_String = "#770000§l血之仪式";
MachineModifier.addCoreThread("YMG_Digital_Altar", FactoryRecipeThread.createCoreThread(Blood_String));

//血液转位核心之输入
val Blood_Input_String = "#770000§l血液转位核心之输入";
MachineModifier.addCoreThread("YMG_Digital_Altar", FactoryRecipeThread.createCoreThread(Blood_Input_String));

//血液转位核心之输出
val Blood_Output_String = "#770000§l血液转位核心之输出";
MachineModifier.addCoreThread("YMG_Digital_Altar", FactoryRecipeThread.createCoreThread(Blood_Output_String));


//生命源质输入
mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_Input", "YMG_Digital_Altar", 1)
.addLifeEssenceInput(setBloodIO, true)
.setThreadName(Blood_Input_String)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    if(map["Blood"].asLong() + setBloodIO > MaxBlood)
    event.setFailed("§c内部空间不足！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    map["Blood"] = map["Blood"].asLong() + setBloodIO;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "为其内部输入 " + setBloodIO + " 的生命源质"
)
.build();

//生命源质出
mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_Output", "YMG_Digital_Altar", 1)
.addLifeEssenceOutput(setBloodIO, true)
.setThreadName(Blood_Output_String)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    if(map["Blood"].asLong() - setBloodIO < 0)
    event.setFailed("§c缺少生命源质！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    map["Blood"] = map["Blood"].asLong() - setBloodIO;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "为其内部输出 " + setBloodIO + " 的生命源质"
)
.build();

//配方
mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_1", "YMG_Digital_Altar", 5)
.setThreadName(Blood_String)
.addItemInput(<ore:stone>)
.addItemOutput(<bloodmagic:slate>)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    if(map["Blood"].asLong() - 1000 < 0)
    event.setFailed("§c缺少生命源质！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    map["Blood"] = map["Blood"].asLong() - 1000;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "消耗内部 1000 的生命源质"
)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_2", "YMG_Digital_Altar", 5)
.setThreadName(Blood_String)
.addItemInput(<bloodmagic:slate>)
.addItemOutput(<bloodmagic:slate:1>)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    if(map["Blood"].asLong() - 2000 < 0)
    event.setFailed("§c缺少生命源质！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    map["Blood"] = map["Blood"].asLong() - 2000;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "消耗内部 2000 的生命源质"
)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_3", "YMG_Digital_Altar", 5)
.setThreadName(Blood_String)
.addItemInput(<bloodmagic:slate:1>)
.addItemOutput(<bloodmagic:slate:2>)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    if(map["Blood"].asLong() - 5000 < 0)
    event.setFailed("§c缺少生命源质！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    map["Blood"] = map["Blood"].asLong() - 5000;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "消耗内部 5000 的生命源质"
)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_4", "YMG_Digital_Altar", 5)
.setThreadName(Blood_String)
.addItemInput(<bloodmagic:slate:2>)
.addItemOutput(<bloodmagic:slate:3>)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    if(map["Blood"].asLong() - 15000 < 0)
    event.setFailed("§c缺少生命源质！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    map["Blood"] = map["Blood"].asLong() - 15000;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "消耗内部 15000 的生命源质"
)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_5", "YMG_Digital_Altar", 5)
.setThreadName(Blood_String)
.addItemInput(<bloodmagic:slate:3>)
.addItemOutput(<bloodmagic:slate:4>)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    if(map["Blood"].asLong() - 30000 < 0)
    event.setFailed("§c缺少生命源质！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    map["Blood"] = map["Blood"].asLong() - 30000;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "消耗内部 30000 的生命源质"
)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_6", "YMG_Digital_Altar", 5)
.setThreadName(Blood_String)
.addItemInput(<tconevo:material>)
.addItemOutput(<tconevo:metal:25>)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    if(map["Blood"].asLong() - 30000 < 0)
    event.setFailed("§c缺少生命源质！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    map["Blood"] = map["Blood"].asLong() - 30000;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "消耗内部 30000 的生命源质"
)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_7", "YMG_Digital_Altar", 5)
.setThreadName(Blood_String)
.addItemInput(<deepmoblearning:glitch_infused_ingot>)
.addItemOutput(<deepmoblearningbm:blood_infused_glitch_ingot>)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    if(map["Blood"].asLong() - 10000 < 0)
    event.setFailed("§c缺少生命源质！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    map["Blood"] = map["Blood"].asLong() - 10000;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "消耗内部 10000 的生命源质"
)
.build();

//恶魔气血碎片
mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_8", "YMG_Digital_Altar", 5)
.setThreadName(Blood_String)
.addItemInput(<avaritia:resource:1>)
.addItemOutput(<bloodmagic:blood_shard:1>)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    if(map["Blood"].asLong() - 40000 < 0)
    event.setFailed("§c缺少生命源质！");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    map["Blood"] = map["Blood"].asLong() - 40000;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "消耗内部 40000 的生命源质"
)
.build();

//GUI
MMEvents.onControllerGUIRender("YMG_Digital_Altar", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var info as string[] = [];
    map["Blood"] = isNull(map["Blood"]) ? 0 as long : map["Blood"].asLong();
    info += "§b//////////////////////////////////////////////";
    info += "§9生命源质：§b(§e" + FormatNumber(map["Blood"].asLong()) + "#CE0000 LP §6/ §e" + FormatNumber(MaxBlood) + "#CE0000 LP§b) §e" + percentage(map["Blood"].asLong(), MaxBlood, 3) + "%";
    info += "§b//////////////////////////////////////////////";
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