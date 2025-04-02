/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineModifier;


//启用并行
// MachineModifier.setParallelizable("YMG_Microscopic_Particles_Distort", true);
MachineModifier.setMaxParallelism("YMG_Microscopic_Particles_Distort", 8);
MachineModifier.setInternalParallelism("YMG_Microscopic_Particles_Distort", 8);


//高级冷却液
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_advanced_coolant", "YMG_Microscopic_Particles_Distort", 1200)
.addEnergyPerTickInput(20000000)
.addItemInput(<astralsorcery:itemcraftingcomponent:2> * 16)
.addFluidInputs([
    <liquid:ic2coolant> * 1000,
    <liquid:cryotheum> * 2000,
    <liquid:mana> * 100
])
.addFluidOutput(<liquid:advanced_coolant> * 500)
.build();

//石墨烯
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_graphene", "YMG_Microscopic_Particles_Distort", 400)
.addEnergyPerTickInput(80000000)
.addItemInputs([
    <ore:dustRefinedObsidian> * 16
])
.addFluidInputs([
    <liquid:aerospaceglue> * 1000,
    <liquid:vapor_of_levity> * 1000,
    <liquid:carbonfiberfluid> * 1000
])
.addItemOutput(<contenttweaker:graphene> * 4)
.build();

//肼
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_hydrazine", "YMG_Microscopic_Particles_Distort", 1200)
.addEnergyPerTickInput(100000000)
.addItemInputs([
    <ore:dustPyrotheum> * 64,
    <ore:dustQuartzBlack> * 64,
    <astralsorcery:itemusabledust> * 64,
    <ore:dustSulfur> * 64,
    <ore:dustFluorite> * 64,
    <contenttweaker:mysteriousicedust> * 16
])
.addFluidInputs([
    <liquid:rocket_fuel> * 1000
])
.addFluidOutput(<liquid:hydrazine> * 1000)
.build();

//纤维质熔融碳
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_carbonfiberfluid", "YMG_Microscopic_Particles_Distort", 200)
.addEnergyPerTickInput(30000000)
.addItemInputs([
    <ore:dustQuartzBlack> * 4
])
.addFluidInputs([
    <liquid:coal> * 6400,
    <liquid:sulfuricacid> * 1000
])
.addFluidOutput(<liquid:carbonfiberfluid> * 20)
.build();

//航天胶水
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_aerospaceglue", "YMG_Microscopic_Particles_Distort", 20)
.addEnergyPerTickInput(40000000)
.addItemInputs([
    <ore:slimeball> * 16,
    <ore:dustCryotheum> * 4,
    <ore:dustMithril> * 4
])
.addFluidInputs([
    <liquid:liquidethene> * 1000,
    <liquid:ic2distilled_water> * 1000,

])
.addFluidOutput(<liquid:aerospaceglue> * 1000)
.build();

//纳米纤维线轮
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_nanometre", "YMG_Microscopic_Particles_Distort", 20)
.addEnergyPerTickInput(50000000)
.addFluidInput(<liquid:mysteriousicefluid> * 72)
.addItemInputs([
    <contenttweaker:carbonfiber>,
    <astralsorcery:itemcraftingcomponent:2> * 16,
    <super_solar_panels:crafting:24> * 16,
    <contenttweaker:graphene> * 16
])
.addItemOutput(<contenttweaker:nanometre>)
.build();

//高量子催化剂
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_quantum_catalyst_1", "YMG_Microscopic_Particles_Distort", 20)
.addEnergyPerTickInput(10000000)
.addFluidInputs([
    <liquid:liquidhydrofluricacid> * 150,
    <liquid:glowstone> * 1000
])
.addItemInputs([
    <ic2:crafting:24> * 16,
    <ore:itemVibrantPowder> * 2
])
.addFluidOutput(<liquid:quantum_catalyst> * 100)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_quantum_catalyst_2", "YMG_Microscopic_Particles_Distort", 60)
.addEnergyPerTickInput(10000000)
.addFluidInputs([
    <liquid:liquidhydrofluricacid> * 150,
    <liquid:glowstone> * 1000
])
.addItemInputs([
    <mekanism:scrapbox> * 2,
    <ore:itemVibrantPowder> * 2
])
.addFluidOutput(<liquid:quantum_catalyst> * 100)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_quantum_catalyst_3", "YMG_Microscopic_Particles_Distort", 10)
.addEnergyPerTickInput(50000000)
.addFluidInputs([
    <liquid:liquidhydrofluricacid> * 150,
    <liquid:glowstone> * 1000
])
.addItemInputs([
    <mekanism:scrapbox> * 2,
    <thermalfoundation:material:1028>
])
.addFluidOutput(<liquid:quantum_catalyst> * 8000)
.build();

//二氧硫
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_sulfurdioxide", "YMG_Microscopic_Particles_Distort", 20)
.addEnergyPerTickInput(100000)
.addItemInputs([
    <ore:dustSulphur>
])
.addGasOutput(<gas:sulfurdioxide> * 100)
.build();

//气态盐水
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_brine", "YMG_Microscopic_Particles_Distort", 20)
.addEnergyPerTickInput(100000)
.addItemInputs([
    <ore:dustSalt>
])
.addGasOutput(<gas:brine> * 15)
.build();
//气态锂
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_lithium", "YMG_Microscopic_Particles_Distort", 20)
.addEnergyPerTickInput(100000)
.addItemInputs([
    <ore:dustLithium>
])
.addGasOutput(<gas:lithium> * 100)
.build();

//裂变燃料
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_fissilefuel", "YMG_Microscopic_Particles_Distort", 20)
.addEnergyPerTickInput(100000)
.addItemInputs([
    <ore:ReprocessedFissileFragment>
])
.addGasOutput(<gas:fissilefuel> * 100)
.build();

//铀黄饼
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_uraniumoxide", "YMG_Microscopic_Particles_Distort", 20)
.addEnergyPerTickInput(100000)
.addItemInputs([
    <ore:YellowCakeUranium>
])
.addGasOutput(<gas:uraniumoxide> * 100)
.build();

//气态氯化氢
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_hydrogenchloride", "YMG_Microscopic_Particles_Distort", 20)
.addEnergyPerTickInput(100000)
.addGasInputs([
    <gas:hydrogen> * 100,
    <gas:chlorine> * 100
])
.addGasOutput(<gas:hydrogenchloride> * 100)
.build();

//富氧水
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_oxygenenrichedwater", "YMG_Microscopic_Particles_Distort", 20)
.addEnergyPerTickInput(100000)
.addGasInputs([
    <gas:oxygen> * 200,
    <gas:water> * 100
])
.addGasOutput(<gas:oxygenenrichedwater> * 100)
.build();
//营养液
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_nutrientsolution", "YMG_Microscopic_Particles_Distort", 20)
.addEnergyPerTickInput(100000)
.addGasInputs([
    <gas:nutritionalpaste> * 1000,
    <gas:oxygenenrichedwater> * 100
])
.addGasOutput(<gas:nutrientsolution> * 100)
.build();

//三氧化硫
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_sulfurtrioxide", "YMG_Microscopic_Particles_Distort", 20)
.addEnergyPerTickInput(100000)
.addGasInputs([
    <gas:sulfurdioxide> * 200,
    <gas:oxygen> * 100
])
.addGasOutput(<gas:sulfurtrioxide> * 200)
.build();

//六氟化铀
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_uraniumhexafluoride", "YMG_Microscopic_Particles_Distort", 20)
.addEnergyPerTickInput(100000)
.addGasInputs([
    <gas:hydrofluoricacid> * 100,
    <gas:uraniumoxide> * 100
])
.addGasOutput(<gas:uraniumhexafluoride> * 100)
.build();

//硫酸
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_sulfuricacid", "YMG_Microscopic_Particles_Distort", 20)
.addEnergyPerTickInput(100000)
.addGasInputs([
    <gas:sulfurtrioxide> * 100,
    <gas:water> * 100
])
.addGasOutput(<gas:sulfuricacid> * 100)
.build();

//dt燃料
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_fusionfuel", "YMG_Microscopic_Particles_Distort", 20)
.addEnergyPerTickInput(100000)
.addGasInputs([
    <gas:deuterium> * 50,
    <gas:tritium> * 50
])
.addGasOutput(<gas:fusionfuel> * 100)
.build();

//红石琥珀金粉
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_dustElectrum", "YMG_Microscopic_Particles_Distort", 10)
.addEnergyPerTickInput(100000)
.addItemInput(<ore:dustElectrum>)
.addFluidInput(<liquid:redstone> * 500)
.addItemOutput(<redstonearsenal:material>)
.build();

//极寒末影粉
mods.modularmachinery.RecipeBuilder.newBuilder("Microscopic_Particles_Distort_dustEnderium", "YMG_Microscopic_Particles_Distort", 10)
.addEnergyPerTickInput(100000)
.addItemInput(<ore:dustEnderium>)
.addFluidInput(<liquid:cryotheum> * 1000)
.addItemOutput(<redstonerepository:material>)
.build();