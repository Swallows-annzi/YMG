/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.RecipeStartEvent;
import mods.modularmachinery.RecipeFinishEvent;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.MachineModifier;
// import mods.modularmachinery.ControllerGUIRenderEvent;
// import mods.modularmachinery.MMEvents;

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


//启用并行
// MachineModifier.setParallelizable("YMG_Atomic_Shaper", false);
MachineModifier.setMaxParallelism("YMG_Atomic_Shaper", 16);
MachineModifier.setInternalParallelism("YMG_Atomic_Shaper", 16);


//配方时间
val setTick = 20;

//小块阳光化合物
AtomicShaperRecipe("Atomic_Shaper_0", <minecraft:glowstone_dust>, <super_solar_panels:crafting:2>, 800000*4, setTick);
//小块阳光化合物
AtomicShaperRecipe("Atomic_Shaper_1", <ic2:misc_resource:1>, <super_solar_panels:crafting:52>, 25000000*4, setTick);
//月光镜
AtomicShaperRecipe("Atomic_Shaper_2", <ic2:misc_resource:1>,<super_solar_panels:crafting:49>, 15000000*4, setTick);
//萤石
AtomicShaperRecipe("Atomic_Shaper_3", <minecraft:wool:4>,<minecraft:glowstone>, 350000*4, setTick);
//金锭
AtomicShaperRecipe("Atomic_Shaper_4", <ore:ingotSilver>,<minecraft:gold_ingot>, 350000*4, setTick);
//镍锭
AtomicShaperRecipe("Atomic_Shaper_5", <ore:ingotCopper>,<thermalfoundation:material:133>, 150000*4, setTick);
//日光镜
AtomicShaperRecipe("Atomic_Shaper_6", <super_solar_panels:crafting:5>,<super_solar_panels:crafting:48>, 15000000*4, setTick);
//粘土
AtomicShaperRecipe("Atomic_Shaper_7", <ore:dirt>,<minecraft:clay>, 30000*4, setTick);
//钻石
AtomicShaperRecipe("Atomic_Shaper_8",<ic2:crafting:19>,<minecraft:diamond>, 800000*4, setTick);
//银
AtomicShaperRecipe("Atomic_Shaper_9",<ore:ingotTin>,<thermalfoundation:material:130>, 350000*4, setTick);
//铂
AtomicShaperRecipe("Atomic_Shaper_10",<ore:ingotGold>,<thermalfoundation:material:134>, 350000*4, setTick);
//青金石
AtomicShaperRecipe("Atomic_Shaper_11",<minecraft:wool:11>,<minecraft:lapis_block>, 350000*4, setTick);
//工业钻石
AtomicShaperRecipe("Atomic_Shaper_12",<minecraft:coal>,<ic2:crafting:19>, 7000000*4, setTick);
//阳光化合物
AtomicShaperRecipe("Atomic_Shaper_13",<minecraft:glowstone>,<super_solar_panels:crafting:1>, 4500000*4, setTick);
//沙砾
AtomicShaperRecipe("Atomic_Shaper_14",<ore:sand>,<minecraft:gravel>, 30000*4, setTick);
//铱矿石
AtomicShaperRecipe("Atomic_Shaper_15",<minecraft:iron_ingot>,<ic2:misc_resource:1>, 18000000*4, setTick);
//火药
AtomicShaperRecipe("Atomic_Shaper_16",<minecraft:netherrack>,<minecraft:gunpowder>*2, 80000*4, setTick);
//煤炭
AtomicShaperRecipe("Atomic_Shaper_17",<minecraft:coal:1>,<minecraft:coal>, 40000*4, setTick);
//红石
AtomicShaperRecipe("Atomic_Shaper_18",<minecraft:wool:14>,<minecraft:redstone_block>, 350000*4, setTick);

//分子重组仪配方
//配方名-物品输入-物品输出-总能量消耗-配方时间
function AtomicShaperRecipe(RecipeName as string, Input as IIngredient, Output as IItemStack, EnergyInput as int, Tick as int) as void {
    mods.modularmachinery.RecipeBuilder.newBuilder(RecipeName, "YMG_Atomic_Shaper", Tick)
    .addEnergyPerTickInput(EnergyInput / Tick)
    .addItemInput(Input)
    .addItemOutput(Output)
    .addStartHandler(function(event as RecipeStartEvent) {
        val ctrl = event.controller;
        val data = ctrl.customData;
        val map = data.asMap();
        val activeRecipe = event.activeRecipe;
        val registryName = activeRecipe.registryName;
        map["recipeRegistryName"] = isNull(map["recipeRegistryName"]) ? "null" as string : map["recipeRegistryName"].asString();
        map["duration"] = isNull(map["duration"]) ? 0 as float : map["duration"].asFloat();
        val lastRegName = map["recipeRegistryName"].asString();
        var duration = map["duration"].asFloat();
        if (!registryName.contains(lastRegName)) {
            duration = 0.0F;
            map["duration"] = duration;
        }
        map["recipeRegistryName"] = registryName;
        ctrl.addModifier("YMG_Atomic_Shaper_energy", RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.0F - duration, 1, false).build());
        ctrl.addModifier("YMG_Atomic_Shaper_duration", RecipeModifierBuilder.create("modularmachinery:duration", "input", 1.0F - duration, 1, false).build());
        ctrl.customData = data;
    })
    .addFinishHandler(function(event as RecipeFinishEvent) {
        val ctrl = event.controller;
        val data = ctrl.customData;
        val map = data.asMap();
        map["duration"] = isNull(map["duration"]) ? 0 as float : map["duration"].asFloat();
        var duration = map["duration"].asFloat();
        if (duration < 0.80F) {
            duration += 0.0005F;
            map["duration"] = duration;
            ctrl.customData = data;
        }
    })
    .build();
}

// MMEvents.onControllerGUIRender("YMG_Atomic_Shaper", function(event as ControllerGUIRenderEvent) {
//     val ctrl = event.controller;
//     val data = ctrl.customData;
//     val map = data.asMap();
//     map["recipeRegistryName"] = isNull(map["recipeRegistryName"]) ? "null" as string : map["recipeRegistryName"].asString();
//     map["duration"] = isNull(map["duration"]) ? 0 as float : map["duration"].asFloat();
//     var info as string[] = [];
//     info += data;
//     event.extraInfo = info;
// });