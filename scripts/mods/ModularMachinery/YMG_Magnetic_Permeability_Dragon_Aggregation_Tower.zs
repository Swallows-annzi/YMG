/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//充能龙块
mods.modularmachinery.RecipeBuilder.newBuilder("draconium_block_1", "YMG_Magnetic_Permeability_Dragon_Aggregation_Tower", 20)
.addEnergyPerTickInput(100000000)
.addItemInputs([
    <draconicevolution:draconium_block>,
    <contenttweaker:dsqmaterial112> * 64,
    <contenttweaker:dsqmaterial112> * 64,
    <contenttweaker:dsqmaterial112> * 64,
    <contenttweaker:dsqmaterial112> * 64,
    <contenttweaker:superenergymatter> * 4
])
.addItemOutput(<draconicevolution:draconium_block:1>)
.build();

//双足飞龙核心
mods.modularmachinery.RecipeBuilder.newBuilder("wyvern_core", "YMG_Magnetic_Permeability_Dragon_Aggregation_Tower", 2400)
.addEnergyPerTickInput(50000000)
.addItemInputs([
    <draconicevolution:draconic_core> * 4,
    <contenttweaker:olihacon> * 4,
    <minecraft:dragon_egg>,
    <actuallyadditions:item_misc:19>
])
.addItemOutput(<draconicevolution:wyvern_core>)
.build();

//飞龙能量核心
mods.modularmachinery.RecipeBuilder.newBuilder("wyvern_energy_core", "YMG_Magnetic_Permeability_Dragon_Aggregation_Tower", 1200)
.addEnergyPerTickInput(75000000)
.addItemInputs([
    <draconicevolution:wyvern_core>,
    <ore:plateStellarAlloy> * 8,
    <thermaldynamics:duct_0:5> * 16,
    <avaritiaitem:triphasic_alloy> * 16,
    <mets:living_circuit> * 3
])
.addItemOutput(<draconicevolution:wyvern_energy_core>)
.build();

//觉醒龙块
// mods.modularmachinery.RecipeBuilder.newBuilder("draconic_block", "YMG_Magnetic_Permeability_Dragon_Aggregation_Tower", 1200)
// .addEnergyPerTickInput(150000000)
// .addGasInput(<gas:unstabledimensional> * 1000)
// .addFluidInput(<liquid:jump_crystalline> * 1000)
// .addItemInputs([
//     <draconicevolution:draconium_block:1> * 16,
//     <avaritiaitem:triphasic_alloy> * 64,
//     <bloodmagic:decorative_brick:2>,
//     <draconicevolution:dragon_heart>
// ])
// .addItemOutput(<draconicevolution:draconic_block> * 4)
// .build();

//觉醒龙锭
mods.modularmachinery.RecipeBuilder.newBuilder("draconic_ingot", "YMG_Magnetic_Permeability_Dragon_Aggregation_Tower", 600)
.addEnergyPerTickInput(100000000)
.addFluidInput(<liquid:jump_crystalline> * 200)
.addFluidInput(<liquid:ic2uu_matter> * 1000)
.addItemInputs([
    <contenttweaker:draconic_dust>
])
.addItemOutput(<draconicevolution:draconic_ingot>)
.build();

//神龙能量核心
mods.modularmachinery.RecipeBuilder.newBuilder("draconic_energy_core", "YMG_Magnetic_Permeability_Dragon_Aggregation_Tower", 2400)
.addEnergyPerTickInput(100000000)
.addItemInputs([
    <extendedcrafting:storage:7>,
    <draconicevolution:wyvern_energy_core>,
    <draconicevolution:awakened_core>,
    <contenttweaker:ymcomputecore> * 3,
    <moreplates:neutronium_plate> * 4
])
.addItemOutput(<draconicevolution:draconic_energy_core>)
.build();

//混沌龙能量核心
mods.modularmachinery.RecipeBuilder.newBuilder("chaotic_energy_core", "YMG_Magnetic_Permeability_Dragon_Aggregation_Tower", 6000)
.addEnergyPerTickInput(250000000)
.addItemInputs([
    <tconevo:metal_block:1>,
    <draconicevolution:draconic_energy_core>,
    <draconicevolution:chaotic_core>,
    <draconicevolution:chaos_shard>,
    <contenttweaker:ymcomputecore> * 16
])
.addItemOutput(<draconicadditions:chaotic_energy_core>)
.build();

//三级结构方块
mods.modularmachinery.RecipeBuilder.newBuilder("structure_frame_3", "YMG_Magnetic_Permeability_Dragon_Aggregation_Tower", 2400)
.addEnergyPerTickInput(50000000)
.addFluidInputs([
    <liquid:mana> * 1000
])
.addItemInputs([
    <environmentaltech:structure_frame_2>,
    <contenttweaker:olihacon>,
    <ore:plateGaia>,
    <environmentaltech:lonsdaleite_crystal> * 16,
    <environmentaltech:kyronite_crystal> * 8
])
.addItemOutput(<environmentaltech:structure_frame_3>)
.build();

//物品输入仓-巨型
mods.modularmachinery.RecipeBuilder.newBuilder("blockinputbus_5", "YMG_Magnetic_Permeability_Dragon_Aggregation_Tower", 3600)
.addEnergyPerTickInput(50000000)
.addGasInput(<gas:unstabledimensional> * 1000)
.addItemInputs([
    <modularmachinery:blockinputbus:4>,
    <contenttweaker:olihacon>,
    <mets:living_circuit> * 2,
    <nae2:material:1>
])
.addItemOutput(<modularmachinery:blockinputbus:5>)
.build();

//物品输出仓-巨型
mods.modularmachinery.RecipeBuilder.newBuilder("blockoutputbus_5", "YMG_Magnetic_Permeability_Dragon_Aggregation_Tower", 3600)
.addEnergyPerTickInput(50000000)
.addGasInput(<gas:unstabledimensional> * 1000)
.addItemInputs([
    <modularmachinery:blockoutputbus:4>,
    <contenttweaker:olihacon>,
    <mets:living_circuit> * 2,
    <nae2:material:1>
])
.addItemOutput(<modularmachinery:blockoutputbus:5>)
.build();

//流体输入仓-巨型
mods.modularmachinery.RecipeBuilder.newBuilder("blockfluidinputhatch_5", "YMG_Magnetic_Permeability_Dragon_Aggregation_Tower", 3600)
.addEnergyPerTickInput(50000000)
.addGasInput(<gas:unstabledimensional> * 1000)
.addItemInputs([
    <modularmachinery:blockfluidinputhatch:4>,
    <contenttweaker:olihacon>,
    <mets:living_circuit> * 2,
    <nae2:material:5>
])
.addItemOutput(<modularmachinery:blockfluidinputhatch:5>)
.build();

//流体输出仓-巨型
mods.modularmachinery.RecipeBuilder.newBuilder("blockfluidoutputhatch_5", "YMG_Magnetic_Permeability_Dragon_Aggregation_Tower", 3600)
.addEnergyPerTickInput(50000000)
.addGasInput(<gas:unstabledimensional> * 1000)
.addItemInputs([
    <modularmachinery:blockfluidoutputhatch:4>,
    <contenttweaker:olihacon>,
    <mets:living_circuit> * 2,
    <nae2:material:5>
])
.addItemOutput(<modularmachinery:blockfluidoutputhatch:5>)
.build();

//能源输入仓-巨型
mods.modularmachinery.RecipeBuilder.newBuilder("blockenergyinputhatch_5", "YMG_Magnetic_Permeability_Dragon_Aggregation_Tower", 3600)
.addEnergyPerTickInput(50000000)
.addGasInput(<gas:unstabledimensional> * 1000)
.addItemInputs([
    <modularmachinery:blockenergyinputhatch:4>,
    <mekanism:basicblock2:3>.withTag({tier: 3}) * 4,
    <contenttweaker:olihacon>,
    <mets:living_circuit> * 2,
    <draconicevolution:energy_crystal:4>
])
.addItemOutput(<modularmachinery:blockenergyinputhatch:5>)
.build();

//能源输出仓-巨型
mods.modularmachinery.RecipeBuilder.newBuilder("blockenergyoutputhatch_5", "YMG_Magnetic_Permeability_Dragon_Aggregation_Tower", 3600)
.addEnergyPerTickInput(50000000)
.addGasInput(<gas:unstabledimensional> * 1000)
.addItemInputs([
    <modularmachinery:blockenergyoutputhatch:4>,
    <mekanism:basicblock2:3>.withTag({tier: 3}) * 4,
    <contenttweaker:olihacon>,
    <mets:living_circuit> * 2,
    <draconicevolution:energy_crystal:4>
])
.addItemOutput(<modularmachinery:blockenergyoutputhatch:5>)
.build();