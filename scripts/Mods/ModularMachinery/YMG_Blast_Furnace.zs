/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.MMEvents;

import scripts.SWTools.MMGUITools;


// MachineModifier.setParallelizable("YMG_Blast_Furnace", false);
MachineModifier.setMaxParallelism("YMG_Blast_Furnace", 64);
MachineModifier.setInternalParallelism("YMG_Blast_Furnace", 64);

MachineModifier.setMaxThreads("YMG_Blast_Furnace", 0);

val Calories_Burned = 200 as long;
val Max_Calories = 1000000 as long;

val YMG_Blast_Furnace_1 = "§c§l热能熔炉工作站§r";
MachineModifier.addCoreThread("YMG_Blast_Furnace", FactoryRecipeThread.createCoreThread(YMG_Blast_Furnace_1));
val YMG_Blast_Furnace_2 = "§8§l热能燃料注入站§r";
MachineModifier.addCoreThread("YMG_Blast_Furnace", FactoryRecipeThread.createCoreThread(YMG_Blast_Furnace_2));

RecipeAdapterBuilder.create("YMG_Blast_Furnace", "minecraft:furnace")
.addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input",  -110, 0, false).build())
.addModifier(RecipeModifierBuilder.create("modularmachinery:energy", "input", 0.0F, 1, false).build())
.addItemInput(<minecraft:furnace>).setChance(0.0F).setTag("furnacebumberinput")
.setThreadName(YMG_Blast_Furnace_1)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val ParallelismNumber = ctrl.activeRecipeList[0].registryName.contains("ymg_blast_furnace") ? ctrl.activeRecipeList[1].parallelism : ctrl.activeRecipeList[0].parallelism;
    map["Calories"] = isNull(map["Calories"]) ? 0 as long : map["Calories"].asLong();
    if(map["Calories"].asLong() < Calories_Burned * ParallelismNumber) {
        event.setFailed("§c热能不足！§r");
    }
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val ParallelismNumber = ctrl.activeRecipeList[0].registryName.contains("ymg_blast_furnace") ? ctrl.activeRecipeList[1].parallelism : ctrl.activeRecipeList[0].parallelism;
    map["Calories"] = isNull(map["Calories"]) ? 0 as long : map["Calories"].asLong();
    map["Calories"] = map["Calories"].asLong() - Calories_Burned * ParallelismNumber;
    ctrl.customData = data;
})
.build();

var num = 0;
for mod in loadedMods {
    for item in mod.items {
        if(item.burnTime == 0)
        continue;
        mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Blast_Furnace_" + num, "YMG_Blast_Furnace", 1)
        .setThreadName(YMG_Blast_Furnace_2)
        .addItemInput(item)
        .addPostCheckHandler(function(event as RecipeCheckEvent) {
            val ctrl = event.controller;
            val data = ctrl.customData;
            val map = data.asMap();
            val ParallelismNumber = ctrl.activeRecipeList[0].registryName.contains("ymg_blast_furnace") ? ctrl.activeRecipeList[0].parallelism : ctrl.activeRecipeList[1].parallelism;
            map["Calories"] = isNull(map["Calories"]) ? 0 as long : map["Calories"].asLong();
            if(map["Calories"].asLong() + item.burnTime * ParallelismNumber > Max_Calories) {
                event.setFailed("§c热能饱和！§r");
            }
        })
        .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
            val ctrl = event.controller;
            val data = ctrl.customData;
            val map = data.asMap();
            val ParallelismNumber = ctrl.activeRecipeList[0].registryName.contains("ymg_blast_furnace") ? ctrl.activeRecipeList[0].parallelism : ctrl.activeRecipeList[1].parallelism;
            map["Calories"] = isNull(map["Calories"]) ? 0 as long : map["Calories"].asLong();
            map["Calories"] = map["Calories"].asLong() + item.burnTime * ParallelismNumber;
            ctrl.customData = data;
        })
        .build();
        num += 1;
    }
}

MMEvents.onControllerGUIRender("YMG_Blast_Furnace", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Calories"] = isNull(map["Calories"]) ? 0 as long : map["Calories"].asLong();
    var info as string[] = [];
    info += "§b>>§r";
    info += "§9热能: §e" + map["Calories"].asLong() + " §6K / §e" + Max_Calories + " §6K§r";
    info += "§b>>§r";
    info += data;
    info += MMGUITools.ItemOutputMonitoring(event);
    event.extraInfo = info;
});