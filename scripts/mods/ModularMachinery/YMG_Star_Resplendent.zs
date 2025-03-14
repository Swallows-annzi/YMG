/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable


//龙之心
// mods.modularmachinery.RecipeBuilder.newBuilder("Star_Resplendent_dragon_heart", "YMG_Star_Resplendent", 1800)
// .addEnergyPerTickInput(400000000)
// .addFluidInputs([
//     <liquid:mana> * 32000,
//     <liquid:dragon_blood> * 1000
// ])
// .addItemInputs([
//     <extendedcrafting:singularity_custom:1016> * 3,
//     <extendedcrafting:singularity_custom:1017>,
//     <extendedcrafting:singularity_custom:1012>,
//     <avaritia:resource:4> * 24,
//     <draconicevolution:mob_soul>
// ])
// .addItemOutput(<draconicevolution:dragon_heart>)
// .build();

//无尽催化剂
mods.modularmachinery.RecipeBuilder.newBuilder("Star_Resplendent_resource_5", "YMG_Star_Resplendent", 3600)
.addEnergyPerTickInput(500000000)
.addItemInputs([
    <avaritiatweaks:gaia_block> * 16,
    <avaritia:block_resource> * 16,
    <draconicevolution:draconic_block> * 16,
    <avaritia:ultimate_stew>,
    <avaritia:cosmic_meatballs>,
    <botania_tweaks:compressed_tiny_potato_8>
])
.addItemOutput(<avaritia:resource:5>)
.build();

//四级结构方块
mods.modularmachinery.RecipeBuilder.newBuilder("structure_frame_4", "YMG_Star_Resplendent", 3600)
.addEnergyPerTickInput(100000000)
.addGasInput(<gas:unstabledimensional> * 1000)
.addItemInputs([
    <environmentaltech:structure_frame_3>,
    <environmentaltech:lonsdaleite_crystal> * 32,
    <environmentaltech:pladium_crystal> * 8,
    <tconevo:metal:3> * 4
])
.addItemOutput(<environmentaltech:structure_frame_4>)
.build();

//五级结构方块
mods.modularmachinery.RecipeBuilder.newBuilder("structure_frame_5", "YMG_Star_Resplendent", 6000)
.addEnergyPerTickInput(200000000)
.addFluidInputs([
    <liquid:neutronium> * 1296
])
.addItemInputs([
    <environmentaltech:structure_frame_4>,
    <environmentaltech:lonsdaleite_crystal> * 64,
    <environmentaltech:ionite_crystal> * 8,
    <tconevo:metal:8> * 4
])
.addItemOutput(<environmentaltech:structure_frame_5>)
.build();

//六级结构方块
mods.modularmachinery.RecipeBuilder.newBuilder("structure_frame_6", "YMG_Star_Resplendent", 12000)
.addEnergyPerTickInput(500000000)
.addFluidInputs([
    <liquid:infinity_metal> * 1296
])
.addItemInputs([
    <environmentaltech:structure_frame_5>,
    <environmentaltech:lonsdaleite_crystal> * 64,
    <environmentaltech:lonsdaleite_crystal> * 64,
    <environmentaltech:aethium_crystal> * 8,
    <tconevo:metal:13> * 4
])
.addItemOutput(<environmentaltech:structure_frame_6>)
.build();

//物品输入仓-超级
mods.modularmachinery.RecipeBuilder.newBuilder("blockinputbus_6", "YMG_Star_Resplendent", 6000)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:neutronium> * 1296
])
.addItemInputs([
    <modularmachinery:blockinputbus:5>,
    <tconevo:metal:3> * 4,
    <contenttweaker:ymcomputecore>,
    <nae2:material:2>
])
.addItemOutput(<modularmachinery:blockinputbus:6>)
.build();

//物品输出仓-超级
mods.modularmachinery.RecipeBuilder.newBuilder("blockoutputbus_6", "YMG_Star_Resplendent", 6000)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:neutronium> * 1296
])
.addItemInputs([
    <modularmachinery:blockoutputbus:5>,
    <tconevo:metal:3> * 4,
    <contenttweaker:ymcomputecore>,
    <nae2:material:2>
])
.addItemOutput(<modularmachinery:blockoutputbus:6>)
.build();

//流体输入仓-超级
mods.modularmachinery.RecipeBuilder.newBuilder("blockfluidinputhatch_6", "YMG_Star_Resplendent", 6000)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:neutronium> * 1296
])
.addItemInputs([
    <modularmachinery:blockfluidinputhatch:5>,
    <tconevo:metal:3> * 4,
    <contenttweaker:ymcomputecore>,
    <nae2:material:6>
])
.addItemOutput(<modularmachinery:blockfluidinputhatch:6>)
.build();

//流体输出仓-超级
mods.modularmachinery.RecipeBuilder.newBuilder("blockfluidoutputhatch_6", "YMG_Star_Resplendent", 6000)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:neutronium> * 1296
])
.addItemInputs([
    <modularmachinery:blockfluidoutputhatch:5>,
    <tconevo:metal:3> * 4,
    <contenttweaker:ymcomputecore>,
    <nae2:material:6>
])
.addItemOutput(<modularmachinery:blockfluidoutputhatch:6>)
.build();

//能源输入仓-超级
mods.modularmachinery.RecipeBuilder.newBuilder("blockenergyinputhatch_6", "YMG_Star_Resplendent", 6000)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:neutronium> * 1296
])
.addItemInputs([
    <modularmachinery:blockenergyinputhatch:5>,
    <mekanism:basicblock2:3>.withTag({tier: 3}) * 16,
    <tconevo:metal:3> * 4,
    <contenttweaker:ymcomputecore>,
    <draconicevolution:energy_crystal:5>
])
.addItemOutput(<modularmachinery:blockenergyinputhatch:6>)
.build();

//能源输出仓-超级
mods.modularmachinery.RecipeBuilder.newBuilder("blockenergyoutputhatch_6", "YMG_Star_Resplendent", 6000)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:neutronium> * 1296
])
.addItemInputs([
    <modularmachinery:blockenergyoutputhatch:5>,
    <mekanism:basicblock2:3>.withTag({tier: 3}) * 16,
    <tconevo:metal:3> * 4,
    <contenttweaker:ymcomputecore>,
    <draconicevolution:energy_crystal:5>
])
.addItemOutput(<modularmachinery:blockenergyoutputhatch:6>)
.build();

//流体输入仓-真空
mods.modularmachinery.RecipeBuilder.newBuilder("blockfluidinputhatch_7", "YMG_Star_Resplendent", 12000)
.addEnergyPerTickInput(200000000)
.addFluidInputs([
    <liquid:infinity_metal> * 288
])
.addItemInputs([
    <modularmachinery:blockfluidinputhatch:6>,
    <tconevo:metal:8> * 4,
    <contenttweaker:ymcomputecore> * 4,
    <nae2:material:7>
])
.addItemOutput(<modularmachinery:blockfluidinputhatch:7>)
.build();

//流体输出仓-真空
mods.modularmachinery.RecipeBuilder.newBuilder("blockfluidoutputhatch_7", "YMG_Star_Resplendent", 12000)
.addEnergyPerTickInput(200000000)
.addFluidInputs([
    <liquid:infinity_metal> * 288
])
.addItemInputs([
    <modularmachinery:blockfluidoutputhatch:6>,
    <tconevo:metal:8> * 4,
    <contenttweaker:ymcomputecore> * 4,
    <nae2:material:7>
])
.addItemOutput(<modularmachinery:blockfluidoutputhatch:7>)
.build();

//能源输入仓-终极
mods.modularmachinery.RecipeBuilder.newBuilder("blockenergyinputhatch_7", "YMG_Star_Resplendent", 12000)
.addEnergyPerTickInput(200000000)
.addFluidInputs([
    <liquid:infinity_metal> * 288
])
.addItemInputs([
    <modularmachinery:blockenergyinputhatch:6>,
    <mekanism:basicblock2:3>.withTag({tier: 3}) * 32,
    <tconevo:metal:8> * 4,
    <contenttweaker:ymcomputecore> * 4,
    <draconicevolution:energy_crystal:5> * 4
])
.addItemOutput(<modularmachinery:blockenergyinputhatch:7>)
.build();

//能源输出仓-终极
mods.modularmachinery.RecipeBuilder.newBuilder("blockenergyoutputhatch_7", "YMG_Star_Resplendent", 12000)
.addEnergyPerTickInput(200000000)
.addFluidInputs([
    <liquid:infinity_metal> * 288
])
.addItemInputs([
    <modularmachinery:blockenergyoutputhatch:6>,
    <mekanism:basicblock2:3>.withTag({tier: 3}) * 32,
    <tconevo:metal:8> * 4,
    <contenttweaker:ymcomputecore> * 4,
    <draconicevolution:energy_crystal:5> * 4
])
.addItemOutput(<modularmachinery:blockenergyoutputhatch:7>)
.build();