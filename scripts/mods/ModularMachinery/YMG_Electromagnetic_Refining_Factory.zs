/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineModifier;


//能量消耗
val setEnergy = 200000;
//配方时间
val setTime = 20;

//线程设置
MachineModifier.setMaxThreads("YMG_Electromagnetic_Refining_Factory", 5);

//聚合矩阵
mods.modularmachinery.RecipeBuilder.newBuilder("material", "YMG_Electromagnetic_Refining_Factory", 400)
.addEnergyPerTickInput(100000)
.addItemInputs([
    <deepmoblearning:glitch_infused_ingot> * 64,
    <ore:ingotLumium> * 8,
    <ore:ingotGelidEnderium> * 4,
    <contenttweaker:tungsteningot> * 8,
    <modularmachinery:itemmodularium> * 12,
    <ore:ingotBlackIron> * 32,
    <ore:ingotTerrasteel>,
    <ore:ingotMelodicAlloy> * 16,
    <ore:ingotCrystallineAlloy> * 16
])
.addItemOutput(<tconevo:material> * 16)
.build();

//玄冰合金锭
mods.modularmachinery.RecipeBuilder.newBuilder("mysteriousiceingot", "YMG_Electromagnetic_Refining_Factory", 600)
.addEnergyPerTickInput(250000)
.addItemInputs([
    <tconevo:material>,
    <contenttweaker:anomalousice> * 2,
    <enderio:item_material:76> * 64
])
.addItemOutput(<contenttweaker:mysteriousiceingot>)
.build();

//下界之星
mods.modularmachinery.RecipeBuilder.newBuilder("nether_star_1", "YMG_Electromagnetic_Refining_Factory", 12000)
.addEnergyPerTickInput(400000)
.addItemInput(<botania:terrasword>).setChance(0.0)
.addItemInputs([
    <minecraft:skull:1> * 64,
    <contenttweaker:mysteriousiceingot> * 16
])
.addItemOutput(<minecraft:nether_star>)
.build();

//彩虹桥玻璃
mods.modularmachinery.RecipeBuilder.newBuilder("bifrost", "YMG_Electromagnetic_Refining_Factory", 200)
.addEnergyPerTickInput(200000)
.addItemInputs([
    <botania:elfglass> * 16,
    <actuallyadditions:block_crystal_cluster_redstone>,
    <actuallyadditions:block_crystal_cluster_lapis>,
    <actuallyadditions:block_crystal_cluster_diamond>,
    <actuallyadditions:block_crystal_cluster_coal>,
    <actuallyadditions:block_crystal_cluster_emerald>,
    <actuallyadditions:block_crystal_cluster_iron>
])
.addItemOutput(<botania:bifrostperm>)
.build();

//高级合成组件
mods.modularmachinery.RecipeBuilder.newBuilder("material_15", "YMG_Electromagnetic_Refining_Factory", 200)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <extendedcrafting:material:14>,
    <super_solar_panels:crafting:45>,
    <contenttweaker:mysteriousiceplate>,
    <extendedcrafting:material:7> * 16
])
.addItemOutput(<extendedcrafting:material:15>)
.build();

//故障灌注锭
mods.modularmachinery.RecipeBuilder.newBuilder("glitch_infused_ingot", "YMG_Electromagnetic_Refining_Factory", 5)
.addEnergyPerTickInput(10000)
.addItemInputs([
    <deepmoblearning:glitch_fragment>,
    <minecraft:dye:4>,
    <ore:ingotGold>
])
.addItemOutput(<deepmoblearning:glitch_infused_ingot>)
.build();

//晶化粉红史莱姆锭
mods.modularmachinery.RecipeBuilder.newBuilder("item_alloy_endergy_ingot_4", "YMG_Electromagnetic_Refining_Factory", 600)
.addEnergyPerTickInput(250000)
.addItemInputs([
    <ore:ingotCrystallineAlloy>,
    <futuremc:netherite_ingot>,
    <mets:thorium_dust> * 4,
    <tconstruct:edible:2>
])
.addItemOutput(<enderio:item_alloy_endergy_ingot:4>)
.build();

//合金
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_1", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:endstone>,
    <ore:ingotDarkSteel>,
    <ore:obsidian>
])
.addItemOutput(<enderio:item_alloy_ingot:8>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_2", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotIron>,
    <ore:dustCoal>,
    <ore:obsidian>
])
.addItemOutput(<enderio:item_alloy_ingot:6>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_3", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotSteel>,
    <ore:obsidian>
])
.addItemOutput(<enderio:item_alloy_ingot:6>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_4", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotIron>,
    <ore:dustCoal> * 4
])
.addItemOutput(<thermalfoundation:material:160>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_5", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotEnderiumBase> * 2,
    <ore:sand>
])
.addItemOutput(<thermalfoundation:material:167> * 2)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_6", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotIron>,
    <ore:dustCoal>,
    <ore:itemSilicon>
])
.addItemOutput(<enderio:item_alloy_ingot>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_7", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotSteel>,
    <ore:itemSilicon>
])
.addItemOutput(<enderio:item_alloy_ingot>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_8", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <minecraft:redstone>,
    <ore:itemSilicon>
])
.addItemOutput(<enderio:item_alloy_ingot:3>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_9", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:itemPowderPhotovoltaic> * 3
])
.addItemOutput(<enderio:item_material:3>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_10", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <enderio:item_material:28> * 9
])
.addItemOutput(<minecraft:ender_pearl>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_11", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:dustLapis>,
    <ore:wool>,
    <ore:dustTin>
])
.addItemOutput(<enderio:block_industrial_insulation>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_12", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:itemPulsatingPowder>,
    <ore:ingotGold>
])
.addItemOutput(<enderio:item_alloy_endergy_ingot:1>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_13", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotIron> * 2,
    <ore:ingotNickel>
])
.addItemOutput(<thermalfoundation:material:162> * 3)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_14", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotIron>,
    <ore:fuelCoke>
])
.addItemOutput(<thermalfoundation:material:160>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_15", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotIron>,
    <minecraft:redstone>
])
.addItemOutput(<enderio:item_alloy_ingot:4>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_16", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotIron>,
    <ore:enderpearl>
])
.addItemOutput(<enderio:item_alloy_ingot:5>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_17", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotGold>,
    <ore:ingotSilver>
])
.addItemOutput(<thermalfoundation:material:161> * 2)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_18", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotCopper> * 3,
    <ore:ingotTin>
])
.addItemOutput(<thermalfoundation:material:163> * 4)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_19", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotCopper>,
    <ore:ingotNickel>
])
.addItemOutput(<thermalfoundation:material:164> * 2)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_20", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotCopper> * 3,
    <ore:ingotSilver>,
    <minecraft:redstone> * 10
])
.addItemOutput(<thermalfoundation:material:165> * 4)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_21", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotTin> * 3,
    <ore:ingotSilver>,
    <ore:dustGlowstone> * 4
])
.addItemOutput(<thermalfoundation:material:166> * 4)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_22", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotLead> * 3,
    <ore:ingotPlatinum>,
    <ore:enderpearl> * 4
])
.addItemOutput(<enderio:item_material:39> * 4)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_23", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <minecraft:redstone>,
    <ore:ingotSilver>,
    <ore:dustGlowstone>
])
.addItemOutput(<enderio:item_alloy_endergy_ingot:5>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_24", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <minecraft:redstone>,
    <ore:ingotGold>,
    <ore:dustGlowstone>
])
.addItemOutput(<enderio:item_alloy_ingot:1>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_25", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:dustLumium>,
    <astralsorcery:itemusabledust>
])
.addItemOutput(<extendedcrafting:material:7>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_26", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotDraconium>,
    <ore:ingotSoularium>,
    <ore:ingotElvenElementium>
])
.addItemOutput(<modularmachinery:itemmodularium> * 2)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_27", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:gravel>,
    <minecraft:clay_ball>,
    <ore:cobblestone>
])
.addItemOutput(<enderio:item_alloy_endergy_ingot>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_28", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotElectrumFlux>,
    <ore:ingotFluixSteel>
])
.addItemOutput(<extendedcrafting:material>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_29", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:gemQuartz> * 4
])
.addItemOutput(<enderio:block_fused_quartz>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_30", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:blockGlass>
])
.addItemOutput(<enderio:block_fused_glass>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_31", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotGold>,
    <ore:soulSand>
])
.addItemOutput(<enderio:item_alloy_ingot:7>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_32", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotArdite>,
    <ore:ingotCobalt>
])
.addItemOutput(<tconstruct:ingots:2>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_33", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:dustGlowstone>,
    <ore:clay>
])
.addItemOutput(<enderio:item_material:76> * 2)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_34", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotBrickNether>,
    <ore:cropNetherWart> * 4,
    <ore:clay> * 6
])
.addItemOutput(<enderio:item_material:72>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_35", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:netherStar>,
    <ore:ingotMelodicAlloy>,
    <ore:clay> * 4
])
.addItemOutput(<enderio:item_alloy_endergy_ingot:3> * 2)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_36", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotEnergeticAlloy>,
    <ore:enderpearl>
])
.addItemOutput(<enderio:item_alloy_ingot:2>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_37", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotEnergeticSilver>,
    <ore:enderpearl>
])
.addItemOutput(<enderio:item_alloy_endergy_ingot:6>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_38", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <minecraft:chorus_fruit_popped>,
    <ore:ingotEndSteel>
])
.addItemOutput(<enderio:item_alloy_endergy_ingot:2>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Electromagnetic_Refining_Factory_39", "YMG_Electromagnetic_Refining_Factory", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotElectricalSteel>,
    <threng:material:1>
])
.addItemOutput(<threng:material> * 3)
.build();
