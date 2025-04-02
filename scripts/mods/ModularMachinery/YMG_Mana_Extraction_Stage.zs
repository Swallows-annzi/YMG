/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.item.IIngredient;

import mods.modularmachinery.MachineModifier;


//线程设置
MachineModifier.setMaxThreads("YMG_Mana_Extraction_Stage", 4);


val Brewing as IIngredient[][string] = {
    "speed"             :   [<minecraft:sugar>,<minecraft:redstone>],
    "clear"             :   [<minecraft:quartz>,<minecraft:emerald>,<minecraft:melon>],
    "haste"             :   [<minecraft:sugar>,<minecraft:gold_nugget>],
    "jumpBoost"         :   [<minecraft:feather>,<minecraft:carrot>],
    "oneforall"         :   [<minecraft:golden_carrot>,<minecraft:ghast_tear>,<minecraft:glowstone_dust>],
    "overload"          :   [<minecraft:blaze_powder>,<minecraft:sugar>,<minecraft:glowstone_dust>,<botania:manaresource>,<minecraft:spider_eye>],
    "healing"           :   [<minecraft:speckled_melon>,<minecraft:potato>],
    "featherFeet"       :   [<minecraft:feather>,<minecraft:leather>,<minecraft:wool>],
    "revolution"        :   [<minecraft:iron_pickaxe>,<minecraft:sugar>],
    "shell"             :   [<minecraft:golden_apple>,<minecraft:bucket>,<minecraft:obsidian>],
    "regenWeak"         :   [<minecraft:ghast_tear>,<minecraft:redstone>],
    "deadpool"          :   [<minecraft:rotten_flesh>,<minecraft:bone>,<minecraft:blaze_powder>],
    "nightVision"       :   [<minecraft:spider_eye>,<minecraft:golden_carrot>],
    "regen"             :   [<minecraft:ghast_tear>,<minecraft:glowstone_dust>],
    "resistance"        :   [<minecraft:leather>,<minecraft:iron_ingot>],
    "bloodthirst"       :   [<minecraft:fermented_spider_eye>,<minecraft:dye:4>,<minecraft:fire_charge>,<minecraft:iron_ingot>],
    "soulCross"         :   [<minecraft:soul_sand>,<minecraft:paper>,<minecraft:apple>,<minecraft:bone>],
    "allure"            :   [<minecraft:fish>,<minecraft:quartz>,<minecraft:golden_carrot>],
    "floating"          :   [<minecraft:chorus_fruit>,<minecraft:sugar>],
    "absorption"        :   [<minecraft:golden_apple>,<minecraft:potato>],
    "fireResistance"    :   [<minecraft:magma_cream>,<minecraft:netherrack>],
    "emptiness"         :   [<minecraft:gunpowder>,<minecraft:rotten_flesh>,<minecraft:bone>,<minecraft:string>,<minecraft:ender_pearl>],
    "invisibility"      :   [<minecraft:snowball>,<minecraft:glowstone_dust>],
    "strength"          :   [<minecraft:blaze_powder>,<minecraft:glowstone_dust>],
    "waterBreathing"    :   [<minecraft:prismarine_shard>,<minecraft:glowstone_dust>]
};


for output, input in Brewing {
    mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Mana_Extraction_Stage_" + output + "_1", "YMG_Mana_Extraction_Stage", 100)
    .addFluidInput(<liquid:fluidedmana> * 100)
    .addItemInput(<minecraft:paper>.withTag({display: {Name: output}}))
    // .setPreViewNBT({
    //     display: {
    //         Lore: [
    //             "§b将纸重命名为‘ §d" + output + " §b’即可§r",
    //         ],
    //     }
    // })
    .setChance(0)
    .addItemInput(<botania:vial>)
    .addItemInputs(input)
    .addItemOutput(<botania:brewvial>.withTag({brewKey: output}))
    .build();

    mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Mana_Extraction_Stage_" + output + "_2", "YMG_Mana_Extraction_Stage", 100)
    .addFluidInput(<liquid:fluidedmana> * 100)
    .addItemInput(<minecraft:paper>.withTag({display: {Name: output}}))
    .setChance(0)
    .addItemInput(<botania:vial:1>)
    .addItemInputs(input)
    .addItemOutput(<botania:brewflask>.withTag({brewKey: output}))
    .build();

    mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Mana_Extraction_Stage_" + output + "_3", "YMG_Mana_Extraction_Stage", 100)
    .addFluidInput(<liquid:fluidedmana> * 100)
    .addItemInput(<minecraft:paper>.withTag({display: {Name: output}}))
    .setChance(0)
    .addItemInput(<botania:bloodpendant>)
    .addItemInputs(input)
    .addItemOutput(<botania:bloodpendant>.withTag({brewKey: output}))
    .build();

    mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Mana_Extraction_Stage_" + output + "_4", "YMG_Mana_Extraction_Stage", 100)
    .addFluidInput(<liquid:fluidedmana> * 100)
    .addItemInput(<minecraft:paper>.withTag({display: {Name: output}}))
    .setChance(0)
    .addItemInput(<botania:incensestick>)
    .addItemInputs(input)
    .addItemOutput(<botania:incensestick>.withTag({brewKey: output}))
    .build();
}