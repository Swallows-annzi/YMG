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
// MachineModifier.setParallelizable("YMG_Assembling_machine", true);
MachineModifier.setMaxParallelism("YMG_Assembling_machine", 4);
MachineModifier.setInternalParallelism("YMG_Assembling_machine", 4);

//升级总线
mods.modularmachinery.RecipeBuilder.newBuilder("blockupgradebus_1", "YMG_Assembling_machine", 600)
.addEnergyPerTickInput(10000)
.addFluidInputs([
    <liquid:electrical_steel> * 576
])
.addItemInputs([
    <modularmachinery:blockcasing>,
    <mekanism:controlcircuit:2> * 4,
    <appliedenergistics2:part:56> * 4,
    <appliedenergistics2:material:28> * 2
])
.addItemOutput(<modularmachinery:blockupgradebus>)
.build();

//机械电路板
mods.modularmachinery.RecipeBuilder.newBuilder("blockcasing_5", "YMG_Assembling_machine", 120)
.addEnergyPerTickInput(10000)
.addFluidInputs([
    <liquid:vibrant_alloy> * 576,
    <liquid:glass> * 2000
])
.addItemInputs([
    <modularmachinery:blockcasing>,
    <ore:capacitor_2>,
    <ic2:crafting:2> * 2
])
.addItemOutput(<modularmachinery:blockcasing:5>)
.build();

//环形铱制线圈
mods.modularmachinery.RecipeBuilder.newBuilder("iridiumringcoil", "YMG_Assembling_machine", 1200)
.addEnergyPerTickInput(20000)
.addFluidInputs([
    <liquid:iridium> * 576
])
.addItemInputs([
    <contenttweaker:iridiumcoil> * 8
])
.addItemOutput(<contenttweaker:iridiumringcoil>)
.build();

//激光二极管 I
mods.modularmachinery.RecipeBuilder.newBuilder("laserdiodes1", "YMG_Assembling_machine", 500)
.addEnergyPerTickInput(10000)
.addItemInputs([
    <mets:lens>,
    <actuallyadditions:item_crystal_empowered:4>,
    <ore:capacitor_3>,
    <ore:ingotRedstoneAlloy> * 8
])
.addItemOutput(<contenttweaker:laserdiodes1>)
.build();


//能源输入仓-中型
mods.modularmachinery.RecipeBuilder.newBuilder("blockenergyinputhatch_2", "YMG_Assembling_machine", 400)
.addEnergyPerTickInput(50000)
.addFluidInputs([
    <liquid:iridium> * 576,
    <liquid:glass> * 4000
])
.addItemInputs([
    <modularmachinery:blockenergyinputhatch:1>,
    <contenttweaker:tungstencoil>,
    <mets:super_circuit>,
    <mekanism:transmitter>.withTag({tier: 3}) * 8
])
.addItemOutput(<modularmachinery:blockenergyinputhatch:2>)
.build();

//能源输出仓-中型
mods.modularmachinery.RecipeBuilder.newBuilder("blockenergyoutputhatch_2", "YMG_Assembling_machine", 400)
.addEnergyPerTickInput(50000)
.addFluidInputs([
    <liquid:iridium> * 576,
    <liquid:glass> * 4000
])
.addItemInputs([
    <modularmachinery:blockenergyoutputhatch:1>,
    <contenttweaker:tungstencoil>,
    <mets:super_circuit>,
    <mekanism:transmitter>.withTag({tier: 3}) * 8
])
.addItemOutput(<modularmachinery:blockenergyoutputhatch:2>)
.build();

//粉碎轮
mods.modularmachinery.RecipeBuilder.newBuilder("crushing_wheels", "YMG_Assembling_machine", 600)
.addEnergyPerTickInput(50000)
.addItemInputs([
    <contenttweaker:tungstenblock>,
    <contenttweaker:tungstengear> * 4,
    <enderio:block_reinforced_obsidian> * 4,
    <ore:dustDiamond> * 64
])
.addItemOutput(<modularmachinery:crushing_wheels>)
.build();

//电磁线圈
mods.modularmachinery.RecipeBuilder.newBuilder("generator_9", "YMG_Assembling_machine", 600)
.addEnergyPerTickInput(50000)
.addItemInputs([
    <contenttweaker:tungstenblock>,
    <contenttweaker:tungstencoil> * 4,
    <actuallyadditions:item_crystal_empowered:1> * 16,
    <actuallyadditions:item_misc:8> * 8
])
.addItemOutput(<mekanismgenerators:generator:9>)
.build();

//物品输入仓-中型
mods.modularmachinery.RecipeBuilder.newBuilder("blockinputbus_2", "YMG_Assembling_machine", 400)
.addEnergyPerTickInput(25000)
.addFluidInputs([
    <liquid:iridium> * 576,
    <liquid:glass> * 4000
])
.addItemInputs([
    <modularmachinery:blockinputbus:1>,
    <ore:gearLumium> * 8,
    <ore:plateGelidEnderium> * 2,
    <ore:plateDenseIridium> * 4
])
.addItemOutput(<modularmachinery:blockinputbus:2>)
.build();

//物品输出仓-中型
mods.modularmachinery.RecipeBuilder.newBuilder("blockoutputbus_2", "YMG_Assembling_machine", 400)
.addEnergyPerTickInput(25000)
.addFluidInputs([
    <liquid:iridium> * 576,
    <liquid:glass> * 4000
])
.addItemInputs([
    <modularmachinery:blockoutputbus:1>,
    <ore:gearLumium> * 8,
    <ore:plateGelidEnderium> * 2,
    <ore:plateDenseIridium> * 4
])
.addItemOutput(<modularmachinery:blockoutputbus:2>)
.build();

//物品输入仓-中型
mods.modularmachinery.RecipeBuilder.newBuilder("blockfluidinputhatch_2", "YMG_Assembling_machine", 400)
.addEnergyPerTickInput(25000)
.addFluidInputs([
    <liquid:iridium> * 576,
    <liquid:glass> * 4000
])
.addItemInputs([
    <modularmachinery:blockfluidinputhatch:1>,
    <ore:gearLumium> * 8,
    <ore:plateGelidEnderium> * 2,
    <ore:plateDenseIridium> * 4
])
.addItemOutput(<modularmachinery:blockfluidinputhatch:2>)
.build();

//物品输出仓-中型
mods.modularmachinery.RecipeBuilder.newBuilder("blockfluidoutputhatch_2", "YMG_Assembling_machine", 400)
.addEnergyPerTickInput(25000)
.addFluidInputs([
    <liquid:iridium> * 576,
    <liquid:glass> * 4000
])
.addItemInputs([
    <modularmachinery:blockfluidoutputhatch:1>,
    <ore:gearLumium> * 8,
    <ore:plateGelidEnderium> * 2,
    <ore:plateDenseIridium> * 4
])
.addItemOutput(<modularmachinery:blockfluidoutputhatch:2>)
.build();

//高级合成催化剂
mods.modularmachinery.RecipeBuilder.newBuilder("material_9", "YMG_Assembling_machine", 600)
.addEnergyPerTickInput(100000)
.addItemInputs([
    <extendedcrafting:material:15> * 4,
    <deepmoblearning:glitch_infused_ingot> * 16,
    <contenttweaker:anomalousice> * 16
])
.addItemOutput(<extendedcrafting:material:9>)
.build();

//热力模型
mods.modularmachinery.RecipeBuilder.newBuilder("data_model_thermal_elemental", "YMG_Assembling_machine", 2400)
.addEnergyPerTickInput(200000)
.addFluidInputs([
    <liquid:pyrotheum> * 16000,
    <liquid:cryotheum> * 16000,
    <liquid:aerotheum> * 16000,
    <liquid:petrotheum> * 16000
])
.addItemInputs([
    <deepmoblearning:data_model_blank>,
    <contenttweaker:tungstenplate> * 16
])
.addItemOutput(<deepmoblearning:data_model_thermal_elemental>)
.build();

//福鲁伊克斯聚合器
mods.modularmachinery.RecipeBuilder.newBuilder("machine", "YMG_Assembling_machine", 2400)
.addEnergyPerTickInput(200000)
.addItemInputs([
    <appliedenergistics2:condenser>,
    <threng:material:4> * 8,
    <threng:material> * 64,
    <extendedcrafting:material:2> * 32
])
.addItemOutput(<threng:machine>)
.build();

//推测核心64x
mods.modularmachinery.RecipeBuilder.newBuilder("threng_material_13", "YMG_Assembling_machine", 300)
.addEnergyPerTickInput(100000)
.addItemInputs([
    <threng:material:12> * 2,
    <threng:material:6>,
    <mekanism:controlcircuit:3> * 4
])
.addItemOutput(<threng:material:13>)
.build();

//玄冰合金棒
mods.modularmachinery.RecipeBuilder.newBuilder("mysteriousicerod", "YMG_Assembling_machine", 300)
.addEnergyPerTickInput(100000)
.addItemInputs([
    <contenttweaker:tungstenrod>,
    <contenttweaker:mysteriousiceplate> * 3
])
.addItemOutput(<contenttweaker:mysteriousicerod>)
.build();