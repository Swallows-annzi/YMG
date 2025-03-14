/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;

import mods.modularmachinery.MachineModifier;


//能量消耗
val setEnergy = 15000;
//配方时间
val setTime = 60;


//线程设置
MachineModifier.setMaxThreads("YMG_Grinder", 16);

// mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_0", "YMG_Grinder", 1)
// .addItemInput(<minecraft:grass>)
// .addItemOutput(<botania:twigwand>)
// .build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_1", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<actuallyadditions:block_crystal_cluster_redstone>)
.addItemOutput(<actuallyadditions:item_crystal_shard>).setMinMaxAmount(2,4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_2", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<actuallyadditions:block_crystal_cluster_lapis>)
.addItemOutput(<actuallyadditions:item_crystal_shard:1>).setMinMaxAmount(2,4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_3", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<actuallyadditions:block_crystal_cluster_diamond>)
.addItemOutput(<actuallyadditions:item_crystal_shard:2>).setMinMaxAmount(2,4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_4", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<actuallyadditions:block_crystal_cluster_coal>)
.addItemOutput(<actuallyadditions:item_crystal_shard:3>).setMinMaxAmount(2,4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_5", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<actuallyadditions:block_crystal_cluster_emerald>)
.addItemOutput(<actuallyadditions:item_crystal_shard:4>).setMinMaxAmount(2,4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_6", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<actuallyadditions:block_crystal_cluster_iron>)
.addItemOutput(<actuallyadditions:item_crystal_shard:5>).setMinMaxAmount(2,4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_7", "YMG_Grinder", 2.5 * setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:compressed1xCobblestone>)
.addItemOutput(<excompressum:compressed_block:2>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_8", "YMG_Grinder", 2.5 * setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:compressed1xGravel>)
.addItemOutput(<excompressum:compressed_block:3>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_9", "YMG_Grinder", 2.5 * setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:compressed1xSand>)
.addItemOutput(<excompressum:compressed_block>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_10", "YMG_Grinder", 2.5 * setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:compressed1xNetherrack>)
.addItemOutput(<excompressum:compressed_block:6>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_11", "YMG_Grinder", 2.5 * setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:compressed1xEndStone>)
.addItemOutput(<excompressum:compressed_block:7>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_12", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:cobblestone>)
.addItemOutput(<minecraft:gravel>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_13", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gravel>)
.addItemOutput(<minecraft:sand>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_14", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:sand>)
.addItemOutput(<exnihilocreatio:block_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_15", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:stoneDiorite>)
.addItemOutput(<exnihilocreatio:block_diorite_crushed>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_16", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockSkyStone>)
.addItemOutput(<exnihilocreatio:block_skystone_crushed>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_17", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:netherrack>)
.addItemOutput(<exnihilocreatio:block_netherrack_crushed>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_18", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:endstone>)
.addItemOutput(<exnihilocreatio:block_endstone_crushed>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_19", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:stoneGranite>)
.addItemOutput(<exnihilocreatio:block_granite_crushed>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_20", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:crushedGranite>)
.addItemOutput(<minecraft:sand:1>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_21", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:stoneAndesite>)
.addItemOutput(<exnihilocreatio:block_andesite_crushed>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_22", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<contenttweaker:tungsteningot>)
.addItemOutput(<contenttweaker:tungstendust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_23", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<contenttweaker:tungstengear>)
.addItemOutput(<contenttweaker:tungstendust> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_24", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<contenttweaker:tungstenplate>)
.addItemOutput(<contenttweaker:tungstendust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_25", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<contenttweaker:tungstenblock>)
.addItemOutput(<contenttweaker:tungstendust> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_26", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<contenttweaker:mysteriousiceingot>)
.addItemOutput(<contenttweaker:mysteriousicedust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_27", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<contenttweaker:mysteriousicegear>)
.addItemOutput(<contenttweaker:mysteriousicedust> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_28", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<contenttweaker:mysteriousiceplate>)
.addItemOutput(<contenttweaker:mysteriousicedust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_29", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotGelidEnderium>)
.addItemOutput(<redstonerepository:material>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_30", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearGelidEnderium>)
.addItemOutput(<redstonerepository:material> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_31", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateGelidEnderium>)
.addItemOutput(<redstonerepository:material>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_32", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockGelidEnderium>)
.addItemOutput(<redstonerepository:material> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_33", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotElectrumFlux>)
.addItemOutput(<redstonearsenal:material>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_34", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearElectrumFlux>)
.addItemOutput(<redstonearsenal:material> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_35", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateElectrumFlux>)
.addItemOutput(<redstonearsenal:material>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_36", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockElectrumFlux>)
.addItemOutput(<redstonearsenal:material> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_37", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<appliedenergistics2:material:7>)
.addItemOutput(<appliedenergistics2:material:8>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_38", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<appliedenergistics2:material>)
.addItemOutput(<appliedenergistics2:material:2>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_39", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<appliedenergistics2:material:1>)
.addItemOutput(<appliedenergistics2:material:2>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_40", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gemQuartz>)
.addItemOutput(<appliedenergistics2:material:3>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_41", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockQuartz>)
.addItemOutput(<minecraft:quartz> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_42", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:quartz_block:1>)
.addItemOutput(<minecraft:quartz> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_43", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:quartz_block:2>)
.addItemOutput(<minecraft:quartz> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_44", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:quartz_stairs>)
.addItemOutput(<minecraft:quartz> * 3)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_45", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:slabQuartz>)
.addItemOutput(<minecraft:quartz> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_46", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:coal>)
.addItemOutput(<thermalfoundation:material:768>)
.addItemOutput(<thermalfoundation:material:771>).setChance(0.15)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_47", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:coal:1>)
.addItemOutput(<thermalfoundation:material:769>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_48", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gemEmerald>)
.addItemOutput(<actuallyadditions:item_dust:3>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_49", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearEmerald>)
.addItemOutput(<actuallyadditions:item_dust:3> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_50", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateEmerald>)
.addItemOutput(<actuallyadditions:item_dust:3>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_51", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockEmerald>)
.addItemOutput(<actuallyadditions:item_dust:3> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_52", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseEmerald>)
.addItemOutput(<actuallyadditions:item_dust:3> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_53", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:diamond>)
.addItemOutput(<ic2:dust:5>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_54", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearDiamond>)
.addItemOutput(<ic2:dust:5> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_55", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDiamond>)
.addItemOutput(<ic2:dust:5>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_56", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockDiamond>)
.addItemOutput(<ic2:dust:5> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_57", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseDiamond>)
.addItemOutput(<ic2:dust:5> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_58", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:glowstone>)
.addItemOutput(<minecraft:glowstone_dust> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_59", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:obsidian>)
.addItemOutput(<thermalfoundation:material:770> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_60", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:dye:4>)
.addItemOutput(<ic2:dust:9>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_61", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearLapis>)
.addItemOutput(<ic2:dust:9> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_62", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateLapis>)
.addItemOutput(<ic2:dust:9>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_63", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockLapis>)
.addItemOutput(<ic2:dust:9> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_64", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseLapis>)
.addItemOutput(<ic2:dust:9> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_65", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotDraconium>)
.addItemOutput(<draconicevolution:draconium_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_66", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockClay>)
.addItemOutput(<minecraft:clay_ball> * 2)
.addItemOutput(<minecraft:clay_ball>).setChance(0.1)
.addItemOutput(<appliedenergistics2:material:5>).setChance(0.8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_67", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotGold>)
.addItemOutput(<thermalfoundation:material:1>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_68", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearGold>)
.addItemOutput(<thermalfoundation:material:1> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_69", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateGold>)
.addItemOutput(<thermalfoundation:material:1>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_70", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockGold>)
.addItemOutput(<thermalfoundation:material:1> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_71", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseGold>)
.addItemOutput(<thermalfoundation:material:1> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_72", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotIron>)
.addItemOutput(<thermalfoundation:material>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_73", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearIron>)
.addItemOutput(<thermalfoundation:material> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_74", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateIron>)
.addItemOutput(<thermalfoundation:material>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_75", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockIron>)
.addItemOutput(<thermalfoundation:material> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_76", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseIron>)
.addItemOutput(<thermalfoundation:material> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_77", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotUranium>)
.addItemOutput(<mekanism:dust:7>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_78", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearUranium>)
.addItemOutput(<mekanism:dust:7> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_79", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateUranium>)
.addItemOutput(<mekanism:dust:7>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_80", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockUranium>)
.addItemOutput(<mekanism:dust:7> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_81", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseUranium>)
.addItemOutput(<mekanism:dust:7> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_82", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ic2:crafting:20>)
.addItemOutput(<ic2:crafting:21>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_83", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotRefinedObsidian>)
.addItemOutput(<mekanism:otherdust:5>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_84", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotRefinedGlowstone>)
.addItemOutput(<minecraft:glowstone_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_85", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotOsmium>)
.addItemOutput(<mekanism:dust:2>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_86", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearOsmium>)
.addItemOutput(<mekanism:dust:2> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_87", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateOsmium>)
.addItemOutput(<mekanism:dust:2>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_88", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockOsmium>)
.addItemOutput(<mekanism:dust:2> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_89", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseOsmium>)
.addItemOutput(<mekanism:dust:2> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_90", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gemFluorite>)
.addItemOutput(<mekanism:otherdust:7>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_91", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockCoal>)
.addItemOutput(<thermalfoundation:material:768> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_92", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockCharcoal>)
.addItemOutput(<thermalfoundation:material:769> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_93", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpIron>)
.addItemOutput(<mekanism:dirtydust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_94", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpGold>)
.addItemOutput(<mekanism:dirtydust:1>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_95", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpOsmium>)
.addItemOutput(<mekanism:dirtydust:2>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_96", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpCopper>)
.addItemOutput(<mekanism:dirtydust:3>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_97", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpTin>)
.addItemOutput(<mekanism:dirtydust:4>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_98", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpSilver>)
.addItemOutput(<mekanism:dirtydust:5>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_99", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpLead>)
.addItemOutput(<mekanism:dirtydust:6>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_100", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpUranium>)
.addItemOutput(<mekanism:dirtydust:7>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_101", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpAluminium>)
.addItemOutput(<jaopca:item_dustdirtyaluminium>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_102", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpArdite>)
.addItemOutput(<jaopca:item_dustdirtyardite>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_103", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpAstralStarmetal>)
.addItemOutput(<jaopca:item_dustdirtyastralstarmetal>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_104", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpCobalt>)
.addItemOutput(<jaopca:item_dustdirtycobalt>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_105", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpDraconium>)
.addItemOutput(<jaopca:item_dustdirtydraconium>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_106", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpIridium>)
.addItemOutput(<jaopca:item_dustdirtyiridium>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_107", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpMithril>)
.addItemOutput(<jaopca:item_dustdirtymithril>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_108", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpNickel>)
.addItemOutput(<jaopca:item_dustdirtynickel>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_109", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpPlatinum>)
.addItemOutput(<jaopca:item_dustdirtyplatinum>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_110", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:clumpUranium>)
.addItemOutput(<jaopca:item_dustdirtyuranium>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_111", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotAstralStarmetal>)
.addItemOutput(<astralsorcery:itemcraftingcomponent:2>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_112", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearAstralStarmetal>)
.addItemOutput(<astralsorcery:itemcraftingcomponent:2> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_113", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateAstralStarmetal>)
.addItemOutput(<astralsorcery:itemcraftingcomponent:2>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_114", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<jaopca:block_blockastralstarmetal>)
.addItemOutput(<astralsorcery:itemcraftingcomponent:2> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_115", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseAstralStarmetal>)
.addItemOutput(<astralsorcery:itemcraftingcomponent:2> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_116", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearDraconium>)
.addItemOutput(<draconicevolution:draconium_dust> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_117", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDraconium>)
.addItemOutput(<draconicevolution:draconium_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_118", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockDraconium>)
.addItemOutput(<draconicevolution:draconium_dust> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_119", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseDraconium>)
.addItemOutput(<draconicevolution:draconium_dust> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_120", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearCertusQuartz>)
.addItemOutput(<appliedenergistics2:material:2> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_121", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateCertusQuartz>)
.addItemOutput(<appliedenergistics2:material:2>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_122", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockCertusQuartz>)
.addItemOutput(<appliedenergistics2:material:2> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_123", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseCertusQuartz>)
.addItemOutput(<appliedenergistics2:material:2> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_124", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearChargedCertusQuartz>)
.addItemOutput(<appliedenergistics2:material:2> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_125", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateChargedCertusQuartz>)
.addItemOutput(<appliedenergistics2:material:2>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_126", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseChargedCertusQuartz>)
.addItemOutput(<appliedenergistics2:material:2> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_127", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockChargedCertusQuartz>)
.addItemOutput(<appliedenergistics2:material:2> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_128", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotCobalt>)
.addItemOutput(<enderio:item_material:31>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_129", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearCobalt>)
.addItemOutput(<enderio:item_material:31> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_130", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateCobalt>)
.addItemOutput(<enderio:item_material:31>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_131", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockCobalt>)
.addItemOutput(<enderio:item_material:31> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_132", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseCobalt>)
.addItemOutput(<enderio:item_material:31> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_133", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotArdite>)
.addItemOutput(<enderio:item_material:30>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_134", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearArdite>)
.addItemOutput(<enderio:item_material:30> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_135", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateArdite>)
.addItemOutput(<enderio:item_material:30>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_136", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockArdite>)
.addItemOutput(<enderio:item_material:30> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_137", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseArdite>)
.addItemOutput(<enderio:item_material:30> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_138", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gemAquamarine>)
.addItemOutput(<jaopca:item_dustaquamarine>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_139", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearAquamarine>)
.addItemOutput(<jaopca:item_dustaquamarine> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_140", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateAquamarine>)
.addItemOutput(<jaopca:item_dustaquamarine>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_141", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockAquamarine>)
.addItemOutput(<jaopca:item_dustaquamarine> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_142", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseAquamarine>)
.addItemOutput(<jaopca:item_dustaquamarine> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_143", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearCoal>)
.addItemOutput(<thermalfoundation:material:768> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_144", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateCoal>)
.addItemOutput(<thermalfoundation:material:768>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_145", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseCoal>)
.addItemOutput(<thermalfoundation:material:768> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_146", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearQuartz>)
.addItemOutput(<appliedenergistics2:material:3> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_147", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateQuartz>)
.addItemOutput(<appliedenergistics2:material:3>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_148", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseQuartz>)
.addItemOutput(<appliedenergistics2:material:3> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_149", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockQuartzBlack>)
.addItemOutput(<actuallyadditions:item_dust:7> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_150", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<actuallyadditions:block_misc:1>)
.addItemOutput(<actuallyadditions:item_dust:7> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_151", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<actuallyadditions:block_misc>)
.addItemOutput(<actuallyadditions:item_dust:7> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_152", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gemQuartzBlack>)
.addItemOutput(<actuallyadditions:item_dust:7>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_153", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearQuartzBlack>)
.addItemOutput(<actuallyadditions:item_dust:7> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_154", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateQuartzBlack>)
.addItemOutput(<actuallyadditions:item_dust:7>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_155", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseQuartzBlack>)
.addItemOutput(<actuallyadditions:item_dust:7> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_156", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotWyvernMetal>)
.addItemOutput(<tconevo:metal:1>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_157", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearWyvernMetal>)
.addItemOutput(<tconevo:metal:1> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_158", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateWyvernMetal>)
.addItemOutput(<tconevo:metal:1>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_159", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockWyvernMetal>)
.addItemOutput(<tconevo:metal:1> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_160", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotDraconicMetal>)
.addItemOutput(<tconevo:metal:6>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_161", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearDraconicMetal>)
.addItemOutput(<tconevo:metal:6> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_162", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDraconicMetal>)
.addItemOutput(<tconevo:metal:6>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_163", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockDraconicMetal>)
.addItemOutput(<tconevo:metal:6> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_164", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotChaoticMetal>)
.addItemOutput(<tconevo:metal:11>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_165", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearChaoticMetal>)
.addItemOutput(<tconevo:metal:11> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_166", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateChaoticMetal>)
.addItemOutput(<tconevo:metal:11>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_167", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockChaoticMetal>)
.addItemOutput(<tconevo:metal:11> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_168", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotBoundMetal>)
.addItemOutput(<tconevo:metal:26>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_169", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearBoundMetal>)
.addItemOutput(<tconevo:metal:26> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_170", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateBoundMetal>)
.addItemOutput(<tconevo:metal:26>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_171", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockBoundMetal>)
.addItemOutput(<tconevo:metal:26> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_172", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotUUMatter>)
.addItemOutput(<tconevo:metal:41>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_173", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearUUMatter>)
.addItemOutput(<tconevo:metal:41> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_174", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateUUMatter>)
.addItemOutput(<tconevo:metal:41>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_175", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockUUMatter>)
.addItemOutput(<tconevo:metal:41> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_176", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotEnergium>)
.addItemOutput(<tconevo:metal:36>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_177", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearEnergium>)
.addItemOutput(<tconevo:metal:36> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_178", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateEnergium>)
.addItemOutput(<tconevo:metal:36>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_179", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockEnergium>)
.addItemOutput(<tconevo:metal:36> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_180", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotSentientMetal>)
.addItemOutput(<tconevo:metal:31>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_181", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearSentientMetal>)
.addItemOutput(<tconevo:metal:31> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_182", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateSentientMetal>)
.addItemOutput(<tconevo:metal:31>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_183", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockSentientMetal>)
.addItemOutput(<tconevo:metal:31> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_184", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotIridium>)
.addItemOutput(<thermalfoundation:material:71>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_185", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearIridium>)
.addItemOutput(<thermalfoundation:material:71> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_186", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateIridium>)
.addItemOutput(<thermalfoundation:material:71>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_187", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<super_solar_panels:crafting:41>)
.addItemOutput(<thermalfoundation:material:71> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_188", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockIridium>)
.addItemOutput(<thermalfoundation:material:71> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_189", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseIridium>)
.addItemOutput(<thermalfoundation:material:71> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_190", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<super_solar_panels:crafting:43>)
.addItemOutput(<thermalfoundation:material:71> * 81)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_191", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotTitanium>)
.addItemOutput(<mets:titanium_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_192", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<mets:niobium_titanium_ingot>)
.addItemOutput(<mets:niobium_titanium_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_193", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotPlatinum>)
.addItemOutput(<thermalfoundation:material:70>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_194", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearPlatinum>)
.addItemOutput(<thermalfoundation:material:70> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_195", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:platePlatinum>)
.addItemOutput(<thermalfoundation:material:70>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_196", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockPlatinum>)
.addItemOutput(<thermalfoundation:material:70> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_197", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDensePlatinum>)
.addItemOutput(<thermalfoundation:material:70> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_198", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:logWood>)
.addItemOutput(<thermalfoundation:material:800> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_199", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotCopper>)
.addItemOutput(<thermalfoundation:material:64>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_200", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearCopper>)
.addItemOutput(<thermalfoundation:material:64> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_201", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateCopper>)
.addItemOutput(<thermalfoundation:material:64>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_202", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockCopper>)
.addItemOutput(<thermalfoundation:material:64> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_203", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseCopper>)
.addItemOutput(<thermalfoundation:material:64> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_204", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotTin>)
.addItemOutput(<thermalfoundation:material:65>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_205", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearTin>)
.addItemOutput(<thermalfoundation:material:65> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_206", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateTin>)
.addItemOutput(<thermalfoundation:material:65>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_207", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockTin>)
.addItemOutput(<thermalfoundation:material:65> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_208", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseTin>)
.addItemOutput(<thermalfoundation:material:65> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_209", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotSilver>)
.addItemOutput(<thermalfoundation:material:66>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_210", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateFluorite>)
.addItemOutput(<mekanism:otherdust:7>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_211", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearFluorite>)
.addItemOutput(<mekanism:otherdust:7> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_212", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockFluorite>)
.addItemOutput(<mekanism:otherdust:7> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_213", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseFluorite>)
.addItemOutput(<mekanism:otherdust:7> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_214", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:poisonous_potato>)
.addItemOutput(<ic2:crop_res:3>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_215", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ic2:crafting:21>)
.addItemOutput(<minecraft:dirt>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_216", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:treeLeaves> * 8)
.addItemOutput(<ic2:crafting:21>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_217", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:treeSapling> * 4)
.addItemOutput(<ic2:crafting:21>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_218", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:listAllseed> * 16)
.addItemOutput(<ic2:crafting:21>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_219", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:stone>)
.addItemOutput(<minecraft:cobblestone>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_220", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearSilver>)
.addItemOutput(<thermalfoundation:material:66> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_221", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateSilver>)
.addItemOutput(<thermalfoundation:material:66>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_222", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockSilver>)
.addItemOutput(<thermalfoundation:material:66> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_223", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseSilver>)
.addItemOutput(<thermalfoundation:material:66> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_224", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotLead>)
.addItemOutput(<thermalfoundation:material:67>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_225", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearLead>)
.addItemOutput(<thermalfoundation:material:67> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_226", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateLead>)
.addItemOutput(<thermalfoundation:material:67>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_227", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockLead>)
.addItemOutput(<thermalfoundation:material:67> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_228", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseLead>)
.addItemOutput(<thermalfoundation:material:67> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_229", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotAluminium>)
.addItemOutput(<thermalfoundation:material:68>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_230", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearAluminium>)
.addItemOutput(<thermalfoundation:material:68> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_231", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateAluminium>)
.addItemOutput(<thermalfoundation:material:68>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_232", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockAluminium>)
.addItemOutput(<thermalfoundation:material:68> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_233", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseAluminium>)
.addItemOutput(<thermalfoundation:material:68> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_234", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotNickel>)
.addItemOutput(<thermalfoundation:material:69>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_235", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearNickel>)
.addItemOutput(<thermalfoundation:material:69> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_236", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateNickel>)
.addItemOutput(<thermalfoundation:material:69>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_237", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockNickel>)
.addItemOutput(<thermalfoundation:material:69> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_238", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseNickel>)
.addItemOutput(<thermalfoundation:material:69> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_239", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotMithril>)
.addItemOutput(<thermalfoundation:material:72>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_240", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearMithril>)
.addItemOutput(<thermalfoundation:material:72> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_241", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateMithril>)
.addItemOutput(<thermalfoundation:material:72>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_242", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockMithril>)
.addItemOutput(<thermalfoundation:material:72> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_243", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseMithril>)
.addItemOutput(<thermalfoundation:material:72> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_244", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotSteel>)
.addItemOutput(<thermalfoundation:material:96>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_245", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearSteel>)
.addItemOutput(<thermalfoundation:material:96> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_246", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateSteel>)
.addItemOutput(<thermalfoundation:material:96>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_247", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockSteel>)
.addItemOutput(<thermalfoundation:material:96> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_248", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseSteel>)
.addItemOutput(<thermalfoundation:material:96> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_249", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotElectrum>)
.addItemOutput(<thermalfoundation:material:97>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_250", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearElectrum>)
.addItemOutput(<thermalfoundation:material:97> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_251", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateElectrum>)
.addItemOutput(<thermalfoundation:material:97>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_252", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockElectrum>)
.addItemOutput(<thermalfoundation:material:97> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_253", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotInvar>)
.addItemOutput(<thermalfoundation:material:98>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_254", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearInvar>)
.addItemOutput(<thermalfoundation:material:98> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_255", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateInvar>)
.addItemOutput(<thermalfoundation:material:98>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_256", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockInvar>)
.addItemOutput(<thermalfoundation:material:98> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_257", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotBronze>)
.addItemOutput(<thermalfoundation:material:99>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_258", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearBronze>)
.addItemOutput(<thermalfoundation:material:99> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_259", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateBronze>)
.addItemOutput(<thermalfoundation:material:99>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_260", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockBronze>)
.addItemOutput(<thermalfoundation:material:99> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_261", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateDenseBronze>)
.addItemOutput(<thermalfoundation:material:99> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_262", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotConstantan>)
.addItemOutput(<thermalfoundation:material:100>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_263", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearConstantan>)
.addItemOutput(<thermalfoundation:material:100> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_264", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateConstantan>)
.addItemOutput(<thermalfoundation:material:100>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_265", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockConstantan>)
.addItemOutput(<thermalfoundation:material:100> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_266", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotSignalum>)
.addItemOutput(<thermalfoundation:material:101>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_267", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearSignalum>)
.addItemOutput(<thermalfoundation:material:101> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_268", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateSignalum>)
.addItemOutput(<thermalfoundation:material:101>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_269", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockSignalum>)
.addItemOutput(<thermalfoundation:material:101> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_270", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotLumium>)
.addItemOutput(<thermalfoundation:material:102>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_271", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearLumium>)
.addItemOutput(<thermalfoundation:material:102> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_272", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateLumium>)
.addItemOutput(<thermalfoundation:material:102>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_273", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockLumium>)
.addItemOutput(<thermalfoundation:material:102> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_274", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotEnderium>)
.addItemOutput(<thermalfoundation:material:103>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_275", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gearEnderium>)
.addItemOutput(<thermalfoundation:material:103> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_276", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plateEnderium>)
.addItemOutput(<thermalfoundation:material:103>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_277", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockEnderium>)
.addItemOutput(<thermalfoundation:material:103> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_278", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:blaze_rod>)
.addItemOutput(<minecraft:blaze_powder> * 4)
.addItemOutput(<thermalfoundation:material:771>).setChance(0.5)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_279", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<thermalfoundation:material:2048>)
.addItemOutput(<thermalfoundation:material:2049> * 4)
.addItemOutput(<minecraft:snowball>).setChance(0.5)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_280", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<thermalfoundation:material:2052>)
.addItemOutput(<thermalfoundation:material:2053> * 4)
.addItemOutput(<thermalfoundation:material:770>).setChance(0.5)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_281", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<thermalfoundation:material:2050>)
.addItemOutput(<thermalfoundation:material:2051> * 4)
.addItemOutput(<thermalfoundation:material:772>).setChance(0.5)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_282", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:bone>)
.addItemOutput(<minecraft:dye:15> * 6)
.addItemOutput(<minecraft:dye:15> * 2).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_283", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:crystalDilithium> * 2)
.addItemOutput(<taiga:dilithium_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_284", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:crystalTiberium> * 2)
.addItemOutput(<taiga:tiberium_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_285", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotTiberium>)
.addItemOutput(<taiga:tiberium_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_286", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotAurorium>)
.addItemOutput(<taiga:aurorium_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_287", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotPrometheum>)
.addItemOutput(<taiga:prometheum_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_288", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotDuranite>)
.addItemOutput(<taiga:duranite_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_289", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotValyrium>)
.addItemOutput(<taiga:valyrium_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_290", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotVibranium>)
.addItemOutput(<taiga:vibranium_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_291", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotKarmesine>)
.addItemOutput(<taiga:karmesine_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_292", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotOvium>)
.addItemOutput(<taiga:ovium_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_293", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotJauxum>)
.addItemOutput(<taiga:jauxum_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_294", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotTerrax>)
.addItemOutput(<taiga:terrax_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_295", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotPalladium>)
.addItemOutput(<taiga:palladium_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_296", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotUru>)
.addItemOutput(<taiga:uru_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_297", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotOsram>)
.addItemOutput(<taiga:osram_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_298", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotAbyssum>)
.addItemOutput(<taiga:abyssum_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_299", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotEezo>)
.addItemOutput(<taiga:eezo_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_300", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotTriberium>)
.addItemOutput(<taiga:triberium_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_301", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotFractum>)
.addItemOutput(<taiga:fractum_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_302", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotViolium>)
.addItemOutput(<taiga:violium_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_303", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotProxii>)
.addItemOutput(<taiga:proxii_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_304", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotTritonite>)
.addItemOutput(<taiga:tritonite_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_305", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotIgnitz>)
.addItemOutput(<taiga:ignitz_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_306", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotImperomite>)
.addItemOutput(<taiga:imperomite_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_307", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotSolarium>)
.addItemOutput(<taiga:solarium_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_308", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotNihilite>)
.addItemOutput(<taiga:nihilite_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_309", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotAdamant>)
.addItemOutput(<taiga:adamant_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_310", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotDyonite>)
.addItemOutput(<taiga:dyonite_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_311", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotNucleum>)
.addItemOutput(<taiga:nucleum_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_312", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotLumix>)
.addItemOutput(<taiga:lumix_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_313", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotSeismum>)
.addItemOutput(<taiga:seismum_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_314", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotAstrium>)
.addItemOutput(<taiga:astrium_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_315", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotNiob>)
.addItemOutput(<taiga:niob_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_316", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotYrdeen>)
.addItemOutput(<taiga:yrdeen_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_317", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotIox>)
.addItemOutput(<taiga:iox_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_318", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotMeteorite>)
.addItemOutput(<taiga:meteorite_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_319", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotBasalt>)
.addItemOutput(<taiga:basalt_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_320", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<taiga:obsidiorite_ingot>)
.addItemOutput(<taiga:obsidiorite_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_321", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotDilithium>)
.addItemOutput(<taiga:dilithium_dust>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_322", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:enderpearl>)
.addItemOutput(<appliedenergistics2:material:46>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_323", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:itemPrecientCrystal>)
.addItemOutput(<enderio:item_material:34>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_324", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:itemVibrantCrystal>)
.addItemOutput(<enderio:item_material:35>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_325", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:itemPulsatingCrystal>)
.addItemOutput(<enderio:item_material:36>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_326", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:itemEnderCrystal>)
.addItemOutput(<enderio:item_material:37>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_327", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:ingotSoularium>)
.addItemOutput(<enderio:item_material:74>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_328", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:compressed1xDustBedrock>)
.addItemOutput(<enderio:item_material:20> * 9)
.addItemOutput(<enderio:block_infinity_fog>).setChance(0.05)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_329", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:compressed2xDustBedrock>)
.addItemOutput(<enderio:block_infinity> * 9)
.addItemOutput(<enderio:item_material:20>).setChance(0.05)
.addItemOutput(<enderio:block_infinity_fog>).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_330", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:compressed3xDustBedrock>)
.addItemOutput(<enderio:block_infinity:1> * 9)
.addItemOutput(<enderio:block_infinity>).setChance(0.05)
.addItemOutput(<enderio:item_material:20>).setChance(0.1)
.addItemOutput(<enderio:block_infinity_fog>).setChance(0.2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_331", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:listAllfishfresh>)
.addItemOutput(<harvestcraft:groundfishitem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_332", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:wool>)
.addItemOutput(<minecraft:string> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_333", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:plankWood>)
.addItemOutput(<thermalfoundation:material:800> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_334", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:rawtofuttonitem>)
.addItemOutput(<harvestcraft:groundmuttonitem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_335", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:mutton>)
.addItemOutput(<harvestcraft:groundmuttonitem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_336", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:rawtofeakitem>)
.addItemOutput(<harvestcraft:groundbeefitem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_337", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:beef>)
.addItemOutput(<harvestcraft:groundbeefitem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_338", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:rawtofickenitem>)
.addItemOutput(<harvestcraft:groundchickenitem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_339", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:chicken>)
.addItemOutput(<harvestcraft:groundchickenitem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_340", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:rawtofuduckitem>)
.addItemOutput(<harvestcraft:groundduckitem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_341", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:duckrawitem>)
.addItemOutput(<harvestcraft:groundduckitem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_342", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:rawtofaconitem>)
.addItemOutput(<harvestcraft:groundporkitem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_343", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:porkchop>)
.addItemOutput(<harvestcraft:groundporkitem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_344", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:rawtofabbititem>)
.addItemOutput(<harvestcraft:groundrabbititem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_345", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:rabbit>)
.addItemOutput(<harvestcraft:groundrabbititem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_346", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:rawtofurkeyitem>)
.addItemOutput(<harvestcraft:groundturkeyitem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_437", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:turkeyrawitem>)
.addItemOutput(<harvestcraft:groundturkeyitem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_348", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:rawtofenisonitem>)
.addItemOutput(<harvestcraft:groundvenisonitem>  * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_349", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:venisonrawitem>)
.addItemOutput(<harvestcraft:groundvenisonitem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_350", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockGlass>)
.addItemOutput(<minecraft:sand>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_351", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gemPrismarine>)
.addItemOutput(<minecraft:prismarine_crystals>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_352", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:soybeanitem>)
.addItemOutput(<harvestcraft:flouritem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_353", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:wheat>)
.addItemOutput(<harvestcraft:flouritem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_354", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:barleyitem>)
.addItemOutput(<harvestcraft:flouritem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_355", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:almonditem>)
.addItemOutput(<harvestcraft:flouritem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_356", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:coconutitem>)
.addItemOutput(<harvestcraft:flouritem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_357", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:oatsitem>)
.addItemOutput(<harvestcraft:flouritem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_358", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:potato>)
.addItemOutput(<harvestcraft:flouritem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_359", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:riceitem>)
.addItemOutput(<harvestcraft:flouritem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_360", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:peasitem>)
.addItemOutput(<harvestcraft:flouritem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_361", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:chestnutitem>)
.addItemOutput(<harvestcraft:flouritem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_362", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:ryeitem>)
.addItemOutput(<harvestcraft:flouritem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_363", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:beanitem>)
.addItemOutput(<harvestcraft:flouritem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_364", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:bananaitem>)
.addItemOutput(<harvestcraft:flouritem> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_365", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:seaweeditem>)
.addItemOutput(<mekanism:salt>)
.addItemOutput(<harvestcraft:veggiebaititem>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_366", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:peppercornitem>)
.addItemOutput(<harvestcraft:blackpepperitem>)
.addItemOutput(<harvestcraft:veggiebaititem>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_367", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:nutmegitem>)
.addItemOutput(<harvestcraft:groundnutmegitem>)
.addItemOutput(<harvestcraft:grainbaititem>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_368", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<harvestcraft:cinnamonitem>)
.addItemOutput(<harvestcraft:groundcinnamonitem>)
.addItemOutput(<harvestcraft:grainbaititem>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_369", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:dustEnder>)
.addItemOutput(<enderio:item_material:28> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_370", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:clay_ball> * 2)
.addItemOutput(<ic2:dust:1>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_371", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:dust>)
.addItemOutput(<appliedenergistics2:material:5>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_372", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreCopper>)
.addItemOutput(<thermalfoundation:material:64> * 2)
.addItemOutput(<thermalfoundation:material:1>).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_373", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreTin>)
.addItemOutput(<thermalfoundation:material:65> * 2)
.addItemOutput(<thermalfoundation:material>).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_374", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreSilver>)
.addItemOutput(<thermalfoundation:material:66> * 2)
.addItemOutput(<thermalfoundation:material:67>).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_375", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreLead>)
.addItemOutput(<thermalfoundation:material:67> * 2)
.addItemOutput(<thermalfoundation:material:66>).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_376", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreAluminium>)
.addItemOutput(<thermalfoundation:material:68> * 2)
.addItemOutput(<thermalfoundation:material>).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_377", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreNickel>)
.addItemOutput(<thermalfoundation:material:69> * 2)
.addItemOutput(<thermalfoundation:material:70>).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_378", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:orePlatinum>)
.addItemOutput(<thermalfoundation:material:70> * 2)
.addItemOutput(<thermalfoundation:material:71>).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_379", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreIridium>)
.addItemOutput(<thermalfoundation:material:71> * 2)
.addItemOutput(<thermalfoundation:material:70>).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_380", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreMithril>)
.addItemOutput(<thermalfoundation:material:72> * 2)
.addItemOutput(<thermalfoundation:material:1>).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_381", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreClathrateOilSand>)
.addItemOutput(<thermalfoundation:material:892> * 3)
.addItemOutput(<thermalfoundation:material:833>).setChance(0.5)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_382", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreClathrateOilShale>)
.addItemOutput(<thermalfoundation:material:892> * 3)
.addItemOutput(<minecraft:flint>).setChance(0.5)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_383", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreClathrateRedstone>)
.addItemOutput(<thermalfoundation:material:893> * 3)
.addItemOutput(<thermalfoundation:material:866>).setChance(0.5)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_384", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreClathrateGlowstone>)
.addItemOutput(<thermalfoundation:material:894> * 3)
.addItemOutput(<thermalfoundation:material:771>).setChance(0.3)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_385", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreClathrateEnder>)
.addItemOutput(<thermalfoundation:material:895> * 3)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_386", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreCoal>)
.addItemOutput(<minecraft:coal> * 3)
.addItemOutput(<thermalfoundation:material:768>).setChance(0.6)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_387", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreIron>)
.addItemOutput(<thermalfoundation:material> * 2)
.addItemOutput(<thermalfoundation:material:69>).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_388", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreGold>)
.addItemOutput(<thermalfoundation:material:1> * 2)
.addItemOutput(<thermalfoundation:material:866>).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_389", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreLapis>)
.addItemOutput(<minecraft:dye:4> * 10)
.addItemOutput(<thermalfoundation:material:771>).setChance(0.2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_390", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreDiamond>)
.addItemOutput(<minecraft:diamond> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_391", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreRedstone>)
.addItemOutput(<minecraft:redstone> * 6)
.addItemOutput(<thermalfoundation:material:866>).setChance(0.25)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_392", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreEmerald>)
.addItemOutput(<minecraft:emerald> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_393", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreQuartz>)
.addItemOutput(<minecraft:quartz> * 3)
.addItemOutput(<thermalfoundation:material:771>).setChance(0.15)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_394", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreFluorite>)
.addItemOutput(<mekanism:fluoriteclump> *2)
.addItemOutput(<mekanism:fluoriteclump>).setChance(0.5)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_395", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreDraconium>)
.addItemOutput(<draconicevolution:draconium_dust> * 3)
.addItemOutput(<draconicevolution:draconium_dust> * 3).setChance(0.4F)
.addItemOutput(<draconicevolution:draconium_dust> * 3).setChance(0.15F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_396", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreAstralStarmetal>)
.addItemOutput(<astralsorcery:itemcraftingcomponent:2>* 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_397", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<astralsorcery:blockcustomore>)
.addItemOutput(<astralsorcery:itemrockcrystalsimple>)
.addItemOutput(<astralsorcery:itemrockcrystalsimple>).setChance(0.5)
.addItemOutput(<astralsorcery:itemrockcrystalsimple>).setChance(0.2)
.addItemOutput(<astralsorcery:itemrockcrystalsimple>).setChance(0.05)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_398", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreQuartzBlack>)
.addItemOutput(<actuallyadditions:item_misc:5> * 2)
.addItemOutput(<appliedenergistics2:material:3>).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_399", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreChargedCertusQuartz>)
.addItemOutput(<appliedenergistics2:material:1> * 2)
.addItemOutput(<appliedenergistics2:material:2>).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_400", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<appliedenergistics2:quartz_ore>)
.addItemOutput(<appliedenergistics2:material> * 2)
.addItemOutput(<appliedenergistics2:material:2>).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_401", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreArdite>)
.addItemOutput(<enderio:item_material:30> * 2)
.addItemOutput(<thermalfoundation:material:1>).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_402", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreCobalt>)
.addItemOutput(<enderio:item_material:31> * 2)
.addItemOutput(<thermalfoundation:material>).setChance(0.1)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_403", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreTitanium>)
.addItemOutput(<mets:titanium_dust> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_404", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreNiobium>)
.addItemOutput(<mets:niobium_dust> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_405", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreUranium>)
.addItemOutput(<mekanism:dust:7> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_406", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreOvium>)
.addItemOutput(<taiga:ovium_dust> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_407", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreKarmesine>)
.addItemOutput(<taiga:karmesine_dust> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_408", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreVibranium>)
.addItemOutput(<taiga:vibranium_dust> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_409", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreValyrium>)
.addItemOutput(<taiga:valyrium_dust> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_410", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreDuranite>)
.addItemOutput(<taiga:duranite_dust> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_411", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:orePrometheum>)
.addItemOutput(<taiga:prometheum_dust> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_412", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreAurorium>)
.addItemOutput(<taiga:aurorium_dust> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_413", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreTiberium>)
.addItemOutput(<taiga:tiberium_crystal>).setMinMaxAmount(1,3)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_414", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockBasalt>)
.addItemOutput(<taiga:basalt_dust> * 9)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_415", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockMeteoritecobble>)
.addItemOutput(<taiga:meteorite_dust> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_416", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<taiga:dilithium_ore>)
.addItemOutput(<taiga:dilithium_crystal>).setMinMaxAmount(1,3)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_417", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreAbyssum>)
.addItemOutput(<taiga:abyssum_dust> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_418", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreEezo>)
.addItemOutput(<taiga:eezo_dust> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_419", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreOsram>)
.addItemOutput(<taiga:ignitz_dust> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_420", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreUru>)
.addItemOutput(<taiga:uru_dust> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_421", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:orePalladium>)
.addItemOutput(<taiga:palladium_dust> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_422", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreJauxum>)
.addItemOutput(<taiga:jauxum_dust> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_423", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:spider_eye>)
.addItemOutput(<ic2:crop_res:3> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_424", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:melon> * 8)
.addItemOutput(<ic2:crafting:21>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_425", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:sugarcane> * 8)
.addItemOutput(<ic2:crafting:21>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_426", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ic2:crop_res:5> * 32)
.addItemOutput(<ic2:crafting:21>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_427", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreAquamarine>)
.addItemOutput(<astralsorcery:itemcraftingcomponent> * 6)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_428", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:brick_block>)
.addItemOutput(<minecraft:brick> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_429", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:nether_brick>)
.addItemOutput(<minecraft:netherbrick> * 4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_430", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:sandstone>)
.addItemOutput(<minecraft:sand>)
.addItemOutput(<thermalfoundation:material:772>).setChance(0.4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_431", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<deepmoblearning:glitch_heart>)
.addItemOutput(<deepmoblearning:glitch_fragment>).setMinMaxAmount(3,4)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_432", "YMG_Grinder", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:oreOsmium>)
.addItemOutput(<mekanism:dust:2> * 2)
.addItemOutput(<mekanism:dust:2>).setChance(0.1F)
.build();

// mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_", "YMG_Grinder", setTime)
// .addEnergyPerTickInput(setEnergy)
// .addItemInput()
// .addItemOutput()
// .build();


val List as IItemStack[IItemStack] = {
<environmentaltech:litherite_crystal>:<contenttweaker:litherite_powder>,
<environmentaltech:erodium_crystal>:<contenttweaker:erodium_powder>,
<environmentaltech:kyronite_crystal>:<contenttweaker:kyronite_powder>,
<environmentaltech:pladium_crystal>:<contenttweaker:pladium_powder>,
<environmentaltech:ionite_crystal>:<contenttweaker:ionite_powder>,
<environmentaltech:aethium_crystal>:<contenttweaker:aethium_powder>
};

for input, output in List {
    mods.modularmachinery.RecipeBuilder.newBuilder("Grinder_" + input.name + "_" + output.name, "YMG_Grinder", setTime)
    .addEnergyPerTickInput(setEnergy)
    .addItemInput(input)
    .addItemOutput(output)
    .build();
}