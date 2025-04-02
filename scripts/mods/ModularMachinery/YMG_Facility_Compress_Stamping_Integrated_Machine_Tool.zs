/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;

import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.MachineModifier;


//能量消耗
val EnergyInput = 10000;
//时间消耗
val TickInput = 60;

//线程设置
MachineModifier.setMaxThreads("YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", 16);

//启用并行
// MachineModifier.setParallelizable("YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", false);
MachineModifier.setMaxParallelism("YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", 64);
MachineModifier.setInternalParallelism("YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", 64);

//ic压缩机
RecipeAdapterBuilder.create("YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", "ic2:te_compressor")
.addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", TickInput - 300, 0, false).build())
.addModifier(RecipeModifierBuilder.create("modularmachinery:energy", "input", EnergyInput - 8, 0, false).build())
.build();

val List as IItemStack[IItemStack] = {
    <actuallyadditions:item_crystal:3> : <moreplates:void_plate>,
    <actuallyadditions:item_crystal_empowered:3> : <moreplates:empowered_void_plate>,
    <actuallyadditions:item_crystal> : <moreplates:restonia_plate>,
    <actuallyadditions:item_crystal_empowered> : <moreplates:empowered_restonia_plate>,
    <actuallyadditions:item_crystal:1> : <moreplates:palis_plate>,
    <actuallyadditions:item_crystal_empowered:1> : <moreplates:empowered_palis_plate>,
    <actuallyadditions:item_crystal:5> : <moreplates:enori_plate>,
    <actuallyadditions:item_crystal_empowered:5> : <moreplates:empowered_enori_plate>,
    <actuallyadditions:item_crystal:4> : <moreplates:emeradic_plate>,
    <actuallyadditions:item_crystal_empowered:4> : <moreplates:empowered_emeradic_plate>,
    <actuallyadditions:item_crystal:2> : <moreplates:diamatine_plate>,
    <actuallyadditions:item_crystal_empowered:2> : <moreplates:empowered_diamatine_plate>,
    <appliedenergistics2:material:5> : <moreplates:silicon_plate>,
    <avaritia:resource:4> : <moreplates:neutronium_plate>,
    <avaritia:resource:6> : <moreplates:infinity_plate>,
    <avaritia:resource:1> : <moreplates:crystal_matrix_plate>,
    <appliedenergistics2:material:7> : <moreplates:fluix_plate>,
    <botania:manaresource:7> : <moreplates:elementium_plate>,
    <botania:manaresource> : <moreplates:manasteel_plate>,
    <botania:manaresource:4> : <moreplates:terrasteel_plate>,
    <tconstruct:ingots:4> : <moreplates:pig_iron_plate>,
    <tconstruct:ingots:2> : <moreplates:manyullyn_plate>,
    <tconstruct:ingots:3> : <moreplates:knightslime_plate>,
    <plustic:osmiridiumingot> : <moreplates:osmiridium_plate>,
    <plustic:osgloglasingot> : <moreplates:osgloglas_plate>,
    <plustic:mirioningot> : <moreplates:mirion_plate>,
    <plustic:alumiteingot> : <moreplates:alumite_plate>,
    <mekanism:ingot> : <moreplates:refined_obsidian_plate>,
    <mekanism:ingot:3> : <moreplates:refined_glowstone_plate>,
    <mekanism:ingot:1> : <moreplates:osmium_plate>,
    <enderio:item_alloy_endergy_ingot:6> : <moreplates:vivid_alloy_plate>,
    <enderio:item_alloy_endergy_ingot:2> : <moreplates:melodic_alloy_plate>,
    <enderio:item_alloy_endergy_ingot:3> : <moreplates:stellar_alloy_plate>,
    <enderio:item_alloy_endergy_ingot:5> : <moreplates:energetic_silver_plate>,
    <enderio:item_alloy_endergy_ingot:4> : <moreplates:crystalline_pink_slime_plate>,
    <enderio:item_alloy_endergy_ingot:1> : <moreplates:crystalline_alloy_plate>,
    <enderio:item_alloy_endergy_ingot> : <moreplates:crude_steel_plate>,
    <enderio:item_alloy_ingot:2> : <moreplates:vibrant_alloy_plate>,
    <enderio:item_alloy_ingot:7> : <moreplates:soularium_plate>,
    <enderio:item_alloy_ingot:3> : <moreplates:redstone_alloy_plate>,
    <enderio:item_alloy_ingot:5> : <moreplates:pulsating_iron_plate>,
    <enderio:item_alloy_ingot:9> : <moreplates:iron_alloy_plate>,
    <enderio:item_alloy_ingot:1> : <moreplates:energetic_alloy_plate>,
    <enderio:item_alloy_ingot:8> : <moreplates:end_steel_plate>,
    <enderio:item_alloy_ingot> : <moreplates:electrical_steel_plate>,
    <enderio:item_alloy_ingot:6> : <moreplates:dark_steel_plate>,
    <enderio:item_alloy_ingot:4> : <moreplates:conductive_iron_plate>,
    <draconicevolution:draconic_ingot> : <moreplates:awakened_draconium_plate>,
    <botania:manaresource:14> : <moreplates:gaia_spirit_plate>
};

for input, output in List {
    mods.modularmachinery.RecipeBuilder.newBuilder("Facility_Compress_Stamping_Integrated_Machine_Tool_" + input.name + "_" + output.name, "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
    .addEnergyPerTickInput(EnergyInput)
    .addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
    .addItemInput(input)
    .addItemOutput(output)
    .build();
}

//金属成型机-卷板
mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_1", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_5>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:plateIron>)
.addItemOutput(<ic2:casing:3> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_2", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_5>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:plateCopper>)
.addItemOutput(<ic2:casing:1> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_3", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_5>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:plateTitanium>)
.addItemOutput(<mets:titanium_casing> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_4", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_5>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:plateSteel>)
.addItemOutput(<ic2:casing:5> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_5", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_5>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:plateGold>)
.addItemOutput(<ic2:casing:2> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_6", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_5>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:plateTin>)
.addItemOutput(<ic2:casing:6> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_7", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_5>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:plateBronze>)
.addItemOutput(<ic2:casing> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_8", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_5>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:plateLead>)
.addItemOutput(<ic2:casing:4> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_9", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotWyvernMetal>)
.addItemOutput(<tconevo:metal:3>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_10", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotDraconicMetal>)
.addItemOutput(<tconevo:metal:8>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_11", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotChaoticMetal>)
.addItemOutput(<tconevo:metal:13>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_12", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotBoundMetal>)
.addItemOutput(<tconevo:metal:28>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_13", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotSentientMetal>)
.addItemOutput(<tconevo:metal:33>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_14", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotEnergium>)
.addItemOutput(<tconevo:metal:38>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_15", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotUUMatter>)
.addItemOutput(<tconevo:metal:43>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_16", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotElectrumFlux>)
.addItemOutput(<redstonearsenal:material:128>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_17", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotGelidEnderium>)
.addItemOutput(<redstonerepository:material:4>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_18", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<ic2:crafting:17> * 8)
.addItemOutput(<ic2:crafting:18>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_19", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotIron>)
.addItemOutput(<thermalfoundation:material:32>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_20", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotCopper>)
.addItemOutput(<thermalfoundation:material:320>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_21", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotTitanium>)
.addItemOutput(<mets:titanium_plate>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_22", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotSteel>)
.addItemOutput(<thermalfoundation:material:352>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_23", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotGold>)
.addItemOutput(<thermalfoundation:material:33>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_24", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotTin>)
.addItemOutput(<thermalfoundation:material:321>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_25", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotBronze>)
.addItemOutput(<thermalfoundation:material:355>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_26", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotLead>)
.addItemOutput(<thermalfoundation:material:323>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_27", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<ore:ingotBlackIron> * 5)
.addItemOutput(<extendedcrafting:material:2> * 2)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_28", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<ore:dustBlizz> * 5)
.addItemOutput(<thermalfoundation:material:2048>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_29", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<ore:dustBasalz> * 5)
.addItemOutput(<thermalfoundation:material:2052>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_30", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<ore:dustBlitz> * 5)
.addItemOutput(<thermalfoundation:material:2050>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_31", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:gemFluorite>)
.addItemOutput(<jaopca:item_platefluorite>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_32", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<minecraft:coal>)
.addItemOutput(<moreplates:coal_plate>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_33", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<minecraft:quartz>)
.addItemOutput(<moreplates:nether_quartz_plate>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_34", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<actuallyadditions:item_misc:5>)
.addItemOutput(<moreplates:black_quartz_plate>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_35", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<appliedenergistics2:material:1>)
.addItemOutput(<jaopca:item_platechargedcertusquartz>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_36", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<appliedenergistics2:material>)
.addItemOutput(<moreplates:certus_quartz_plate>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_37", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<contenttweaker:tungsteningot>)
.addItemOutput(<contenttweaker:tungstenplate>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_38", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:gemDiamond>)
.addItemOutput(<moreplates:diamond_plate>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_39", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:gemEmerald>)
.addItemOutput(<moreplates:emerald_plate>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_40", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:gemAquamarine>)
.addItemOutput(<jaopca:item_plateaquamarine>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_41", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<mets:niobium_titanium_ingot>)
.addItemOutput(<mets:niobium_titanium_plate>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_42", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotArdite>)
.addItemOutput(<moreplates:ardite_plate>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_43", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotEnderium>)
.addItemOutput(<thermalfoundation:material:359>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_44", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotNickel>)
.addItemOutput(<thermalfoundation:material:325>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_45", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotPlatinum>)
.addItemOutput(<thermalfoundation:material:326>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_46", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotDraconium>)
.addItemOutput(<moreplates:draconium_plate>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_47", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotUranium>)
.addItemOutput(<jaopca:item_plateuranium>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_48", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotAluminum>)
.addItemOutput(<thermalfoundation:material:324>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_49", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotIridium>)
.addItemOutput(<thermalfoundation:material:327>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_50", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotSignalum>)
.addItemOutput(<thermalfoundation:material:357>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_51", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotConstantan>)
.addItemOutput(<thermalfoundation:material:356>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_52", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotMithril>)
.addItemOutput(<thermalfoundation:material:328>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_53", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotAstralStarmetal>)
.addItemOutput(<jaopca:item_plateastralstarmetal>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_54", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotOsmium>)
.addItemOutput(<moreplates:osmium_plate>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_55", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotElectrum>)
.addItemOutput(<thermalfoundation:material:353>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_56", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotLumium>)
.addItemOutput(<thermalfoundation:material:358>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_57", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotCobalt>)
.addItemOutput(<moreplates:cobalt_plate>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_58", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotSilver>)
.addItemOutput(<thermalfoundation:material:322>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_59", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotInvar>)
.addItemOutput(<thermalfoundation:material:354>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_60", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(80000)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<contenttweaker:mysteriousiceingot>)
.addItemOutput(<contenttweaker:mysteriousiceplate>)
.build();

//玄冰合金齿轮
mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_61", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(800000)
.addItemInput(<contenttweaker:mold_2>).setParallelizeUnaffected(true).setChance(0.0)
.addItemInput(<contenttweaker:mysteriousiceingot> * 4)
.addItemOutput(<contenttweaker:mysteriousicegear>)
.build();

//压缩高级铱板
mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_62", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<jaopca:item_platedenseiridium> * 9)
.addItemOutput(<super_solar_panels:crafting:43>)
.build();

//下界合金板
mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_63", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput * 10)
.addItemInput(<contenttweaker:mold_1>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotAncientDebris>)
.addItemOutput(<jaopca:item_plateancientdebris>)
.build();

//特斯拉外壳防护板
mods.modularmachinery.RecipeBuilder.newBuilder("teslashellplate", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput * 4)
.addEnergyPerTickInput(EnergyInput * 1000)
.addItemInputs([
    <mets:super_iridium_compress_plate>,
    <mets:neutron_plate>,
    <super_solar_panels:crafting:6>,
    <contenttweaker:mysteriousiceplate>,
    <jaopca:item_plateancientdebris>,
    <ic2:plate:13> * 12
])
.addItemOutput(<contenttweaker:teslashellplate>)
.build();

//钨棒
mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_64", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput * 2)
.addItemInput(<contenttweaker:mold_3>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<contenttweaker:tungsteningot>)
.addItemOutput(<contenttweaker:tungstenrod>)
.build();

//铱导线
mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_65", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_4>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<ore:ingotIridium>)
.addItemOutput(<contenttweaker:iridiumwire> * 3)
.build();

//钨导线
mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_66", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<contenttweaker:mold_4>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<contenttweaker:tungsteningot>)
.addItemOutput(<contenttweaker:tungstenwire> * 2)
.build();

//玄冰合金导线
mods.modularmachinery.RecipeBuilder.newBuilder("Rolling_67", "YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", TickInput)
.addEnergyPerTickInput(80000)
.addItemInput(<contenttweaker:mold_4>).setParallelizeUnaffected(true).setChance(0.0F)
.addItemInput(<contenttweaker:mysteriousiceingot>)
.addItemOutput(<contenttweaker:mysteriousicewire> * 3)
.build();