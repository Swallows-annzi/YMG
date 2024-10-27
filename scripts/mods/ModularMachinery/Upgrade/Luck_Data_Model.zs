/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineUpgradeHelper;
import mods.modularmachinery.MachineUpgradeBuilder;
import mods.modularmachinery.SimpleMachineUpgrade;
import mods.modularmachinery.FactoryRecipeStartEvent;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.RecipeModifierBuilder;


//升级-时运升级
MachineUpgradeHelper.registerSupportedItem(<contenttweaker:luckdatamodel1>);
MachineUpgradeHelper.registerSupportedItem(<contenttweaker:luckdatamodel2>);
MachineUpgradeHelper.registerSupportedItem(<contenttweaker:luckdatamodel3>);

MachineUpgradeBuilder.newBuilder("luckdatamodel_I", "§a时运升级 I", 1, 1)
.addDescriptions(
    "§a///////////// §3功能介绍 §a/////////////",
    "§bYMG§e—§f铱制动力筛",
    "§9产出概率 §ex1.2 §9消耗能量 §ex2.0",
    "§a//////////////////////////////////",
    "§c时运升级有且仅有一个生效。",
    "§c若存在多个时默认对最高级生效。"
)
.setBusGUIDescriptionHandler(function(u as SimpleMachineUpgrade) {
    val str as string[] = [
        "§9产出概率 §ex1.2",
        "§9消耗能量 §ex2.0"
    ];
    return str;
})
.addFactoryRecipeStartHandler(function(e as FactoryRecipeStartEvent, u as SimpleMachineUpgrade) {
    val event = MMEvents.castToFactoryRecipeStartEvent(e);
    val ctrl = event.controller;
    if(!ctrl.hasMachineUpgrade("luckdatamodel_II") && !ctrl.hasMachineUpgrade("luckdatamodel_III")) {
        event.factoryRecipeThread.addModifier("luck_chance_1", RecipeModifierBuilder.create("modularmachinery:item", "output", 1.2, 1, true).build());
        event.factoryRecipeThread.addModifier("luck_energy_1", RecipeModifierBuilder.create("modularmachinery:energy", "input", 2.0, 1, false).build());
    }
})
.addCompatibleMachines("YMG_Iridium_Power_Sieve")
.buildAndRegister();

MachineUpgradeBuilder.newBuilder("luckdatamodel_II", "§a时运升级 II", 1, 1)
.addDescriptions(
    "§a///////////// §3功能介绍 §a/////////////",
    "§bYMG§e—§f铱制动力筛",
    "§9产出概率 §ex1.5 §9消耗能量 §ex4.0",
    "§a//////////////////////////////////",
    "§c时运升级有且仅有一个生效。",
    "§c若存在多个时默认对最高级生效。"
)
.setBusGUIDescriptionHandler(function(u as SimpleMachineUpgrade) {
    val str as string[] = [
        "§9产出概率 §ex1.5",
        "§9消耗能量 §ex4.0"
    ];
    return str;
})
.addFactoryRecipeStartHandler(function(e as FactoryRecipeStartEvent, u as SimpleMachineUpgrade) {
    val event = MMEvents.castToFactoryRecipeStartEvent(e);
    val ctrl = event.controller;
    if(!ctrl.hasMachineUpgrade("luckdatamodel_III")) {
        event.factoryRecipeThread.addModifier("luck_chance_1", RecipeModifierBuilder.create("modularmachinery:item", "output", 1.5, 1, true).build());
        event.factoryRecipeThread.addModifier("luck_energy_1", RecipeModifierBuilder.create("modularmachinery:energy", "input", 4.0, 1, false).build());
    }
})
.addCompatibleMachines("YMG_Iridium_Power_Sieve")
.buildAndRegister();

MachineUpgradeBuilder.newBuilder("luckdatamodel_III", "§a时运升级 III", 1, 1)
.addDescriptions(
    "§a///////////// §3功能介绍 §a/////////////",
    "§bYMG§e—§f铱制动力筛",
    "§9产出概率 §ex2.0 §9消耗能量 §ex10.0",
    "§6拥有一个隐藏属性",
    // "§9产出数量 §4+1",
    "§a//////////////////////////////////",
    "§c时运升级有且仅有一个生效。",
    "§c若存在多个时默认对最高级生效。"
)
.setBusGUIDescriptionHandler(function(u as SimpleMachineUpgrade) {
    val str as string[] = [
        "§9产出概率 §ex2.0",
        // "§9产出数量 §e+1",
        "§9消耗能量 §ex10.0"
    ];
    return str;
})
.addFactoryRecipeStartHandler(function(e as FactoryRecipeStartEvent, u as SimpleMachineUpgrade) {
    val event = MMEvents.castToFactoryRecipeStartEvent(e);
    val ctrl = event.controller;
    event.factoryRecipeThread.addModifier("luck_chance_1", RecipeModifierBuilder.create("modularmachinery:item", "output", 2.0, 1, true).build());
    event.factoryRecipeThread.addModifier("luck_chance_2", RecipeModifierBuilder.create("modularmachinery:item", "output", 1, 0, false).build());
    event.factoryRecipeThread.addModifier("luck_energy_1", RecipeModifierBuilder.create("modularmachinery:energy", "input", 10.0, 1, false).build());
})
.addCompatibleMachines("YMG_Iridium_Power_Sieve")
.buildAndRegister();

MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:luckdatamodel1>, "luckdatamodel_I");
MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:luckdatamodel2>, "luckdatamodel_II");
MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:luckdatamodel3>, "luckdatamodel_III");