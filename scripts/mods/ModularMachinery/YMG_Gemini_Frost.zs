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
// MachineModifier.setParallelizable("YMG_Gemini_Frost", true);
MachineModifier.setMaxParallelism("YMG_Gemini_Frost", 12);
MachineModifier.setInternalParallelism("YMG_Gemini_Frost", 12);

//立场发生器
mods.modularmachinery.RecipeBuilder.newBuilder("field_generator", "YMG_Gemini_Frost", 2400)
.addEnergyPerTickInput(5000000)
.addFluidInput(<liquid:cryotheum> * 1024000)
.addItemInputs([
    <mets:living_circuit> * 4,
    <mets:super_iridium_compress_plate> * 4,
    <gravisuite:crafting:1> * 16,
    <super_solar_panels:crafting:22>
])
.addItemOutput(<mets:field_generator>)
.build();

//互联方块
mods.modularmachinery.RecipeBuilder.newBuilder("interconnect", "YMG_Gemini_Frost", 2400)
.addEnergyPerTickInput(3000000)
.addFluidInput(<liquid:cryotheum> * 32000)
.addItemInputs([
    <contenttweaker:tungstenblock>,
    <valkyrielib:modifier_component>,
    <environmentaltech:connector> * 8
])
.addItemOutput(<environmentaltech:interconnect>)
.build();

//物品输入仓-强化
mods.modularmachinery.RecipeBuilder.newBuilder("blockinputbus_3", "YMG_Gemini_Frost", 1200)
.addEnergyPerTickInput(3000000)
.addFluidInput(<liquid:cryotheum> * 32000)
.addItemInputs([
    <modularmachinery:blockcasing:4>,
    <contenttweaker:tungstenmotor> * 4,
    <appliedenergistics2:material:36>,
    <super_solar_panels:crafting:23> * 4,
    <threng:material:6>,
    <mekanism:controlcircuit:3> * 6,
    <thermaldynamics:retriever:4>
])
.addItemOutput(<modularmachinery:blockinputbus:3>)
.build();

//物品输出仓-强化
mods.modularmachinery.RecipeBuilder.newBuilder("blockoutputbus_3", "YMG_Gemini_Frost", 1200)
.addEnergyPerTickInput(3000000)
.addFluidInput(<liquid:cryotheum> * 32000)
.addItemInputs([
    <modularmachinery:blockcasing:4>,
    <contenttweaker:tungstenmotor> * 4,
    <appliedenergistics2:material:36>,
    <super_solar_panels:crafting:23> * 4,
    <threng:material:6>,
    <mekanism:controlcircuit:3> * 6,
    <thermaldynamics:servo:4>
])
.addItemOutput(<modularmachinery:blockoutputbus:3>)
.build();

//流体输入仓-强化
mods.modularmachinery.RecipeBuilder.newBuilder("blockfluidinputhatch_3", "YMG_Gemini_Frost", 1200)
.addEnergyPerTickInput(3000000)
.addFluidInput(<liquid:cryotheum> * 32000)
.addItemInputs([
    <modularmachinery:blockcasing:4>,
    <contenttweaker:tungstenmotor> * 4,
    <appliedenergistics2:material:55>,
    <super_solar_panels:crafting:23> * 4,
    <threng:material:6>,
    <mekanism:controlcircuit:3> * 6,
    <thermaldynamics:retriever:4>
])
.addItemOutput(<modularmachinery:blockfluidinputhatch:3>)
.build();

//流体输出仓-强化
mods.modularmachinery.RecipeBuilder.newBuilder("blockfluidoutputhatch_3", "YMG_Gemini_Frost", 1200)
.addEnergyPerTickInput(3000000)
.addFluidInput(<liquid:cryotheum> * 32000)
.addItemInputs([
    <modularmachinery:blockcasing:4>,
    <contenttweaker:tungstenmotor> * 4,
    <appliedenergistics2:material:55>,
    <super_solar_panels:crafting:23> * 4,
    <threng:material:6>,
    <mekanism:controlcircuit:3> * 6,
    <thermaldynamics:servo:4>
])
.addItemOutput(<modularmachinery:blockfluidoutputhatch:3>)
.build();

//能源输入仓-强化
mods.modularmachinery.RecipeBuilder.newBuilder("blockenergyinputhatch_3", "YMG_Gemini_Frost", 1200)
.addEnergyPerTickInput(3000000)
.addFluidInput(<liquid:cryotheum> * 32000)
.addItemInputs([
    <modularmachinery:blockenergyinputhatch:2>,
    <thermalfoundation:material:515> * 6,
    <super_solar_panels:crafting:44> * 8,
    <contenttweaker:mysteriousiceplate> * 2,
    <enderio:item_capacitor_grainy> * 64,
    <thermaldynamics:duct_0:9> * 8,
    <enderio:block_cap_bank:3>
])
.addItemOutput(<modularmachinery:blockenergyinputhatch:3>)
.build();

//能源输出仓-强化
mods.modularmachinery.RecipeBuilder.newBuilder("blockenergyoutputhatch_3", "YMG_Gemini_Frost", 1200)
.addEnergyPerTickInput(3000000)
.addFluidInput(<liquid:cryotheum> * 32000)
.addItemInputs([
    <modularmachinery:blockenergyoutputhatch:2>,
    <thermalfoundation:material:515> * 6,
    <super_solar_panels:crafting:44> * 8,
    <contenttweaker:mysteriousiceplate> * 2,
    <enderio:item_capacitor_grainy> * 64,
    <thermaldynamics:duct_0:9> * 8,
    <enderio:block_cap_bank:3>
])
.addItemOutput(<modularmachinery:blockenergyoutputhatch:3>)
.build();

//玄冰合金制线圈
mods.modularmachinery.RecipeBuilder.newBuilder("mysteriousicecoil", "YMG_Gemini_Frost", 1200)
.addEnergyPerTickInput(4000000)
.addFluidInput(<liquid:cryotheum> * 16000)
.addItemInputs([
    <redstonerepository:material:6>,
    <contenttweaker:mysteriousicewire> * 16
])
.addItemOutput(<contenttweaker:mysteriousicecoil>)
.build();

//ME机械物品输入总线
mods.modularmachinery.RecipeBuilder.newBuilder("blockmeiteminputbus", "YMG_Gemini_Frost", 1200)
.addEnergyPerTickInput(10000000)
.addFluidInputs([
    <liquid:cryotheum> * 64000,
    <liquid:crystal_matrix> * 144
])
.addItemInputs([
    <modularmachinery:blockinputbus:3>,
    <appliedenergistics2:interface>,
    <appliedenergistics2:part:76> * 16,
    <appliedenergistics2:material:38>,
    <mets:living_circuit>
])
.addItemOutput(<modularmachinery:blockmeiteminputbus>)
.build();

//ME机械物品输出总线
mods.modularmachinery.RecipeBuilder.newBuilder("blockmeitemoutputbus", "YMG_Gemini_Frost", 1200)
.addEnergyPerTickInput(10000000)
.addFluidInputs([
    <liquid:cryotheum> * 64000,
    <liquid:crystal_matrix> * 144
])
.addItemInputs([
    <modularmachinery:blockoutputbus:3>,
    <appliedenergistics2:interface>,
    <appliedenergistics2:part:76> * 16,
    <appliedenergistics2:material:38>,
    <mets:living_circuit>
])
.addItemOutput(<modularmachinery:blockmeitemoutputbus>)
.build();

//ME机械流体输入总线
mods.modularmachinery.RecipeBuilder.newBuilder("blockmefluidinputbus", "YMG_Gemini_Frost", 1200)
.addEnergyPerTickInput(10000000)
.addFluidInputs([
    <liquid:cryotheum> * 64000,
    <liquid:crystal_matrix> * 144
])
.addItemInputs([
    <modularmachinery:blockfluidinputhatch:3>,
    <appliedenergistics2:interface>,
    <appliedenergistics2:part:76> * 16,
    <appliedenergistics2:material:57>,
    <mets:living_circuit>
])
.addItemOutput(<modularmachinery:blockmefluidinputbus>)
.build();

//ME机械流体输出总线
mods.modularmachinery.RecipeBuilder.newBuilder("blockmefluidoutputbus", "YMG_Gemini_Frost", 1200)
.addEnergyPerTickInput(10000000)
.addFluidInputs([
    <liquid:cryotheum> * 64000,
    <liquid:crystal_matrix> * 144
])
.addItemInputs([
    <modularmachinery:blockfluidoutputhatch:3>,
    <appliedenergistics2:interface>,
    <appliedenergistics2:part:76> * 16,
    <appliedenergistics2:material:57>,
    <mets:living_circuit>
])
.addItemOutput(<modularmachinery:blockmefluidoutputbus>)
.build();

//ME机械气体输入总线
mods.modularmachinery.RecipeBuilder.newBuilder("blockmegasinputbus", "YMG_Gemini_Frost", 1200)
.addEnergyPerTickInput(10000000)
.addFluidInputs([
    <liquid:cryotheum> * 64000,
    <liquid:crystal_matrix> * 144
])
.addItemInputs([
    <modularmachinery:blockfluidinputhatch:3>,
    <appliedenergistics2:interface>,
    <appliedenergistics2:part:76> * 16,
    <mekeng:gas_core_64k>,
    <mets:living_circuit>
])
.addItemOutput(<modularmachinery:blockmegasinputbus>)
.build();

//ME机械气体输出总线
mods.modularmachinery.RecipeBuilder.newBuilder("blockmegasoutputbus", "YMG_Gemini_Frost", 1200)
.addEnergyPerTickInput(10000000)
.addFluidInputs([
    <liquid:cryotheum> * 64000,
    <liquid:crystal_matrix> * 144
])
.addItemInputs([
    <modularmachinery:blockfluidoutputhatch:3>,
    <appliedenergistics2:interface>,
    <appliedenergistics2:part:76> * 16,
    <mekeng:gas_core_64k>,
    <mets:living_circuit>
])
.addItemOutput(<modularmachinery:blockmegasoutputbus>)
.build();

//ECO-LE4存储矩阵-物品
mods.modularmachinery.RecipeBuilder.newBuilder("estorage_cell_item_16m", "YMG_Gemini_Frost", 900)
.addEnergyPerTickInput(25000000)
.addFluidInputs([
    <liquid:cryotheum> * 64000
])
.addItemInputs([
    <tconevo:metal:38> * 32,
    <mets:super_iridium_compress_plate> * 4,
    <threng:material:4> * 32,
    <nae2:material:3>,
    <mets:living_circuit>,
    <appliedenergistics2:material:39>
])
.addItemOutput(<novaeng_core:estorage_cell_item_16m>)
.build();

//ECO-LE4存储矩阵-流体
mods.modularmachinery.RecipeBuilder.newBuilder("estorage_cell_fluid_16m", "YMG_Gemini_Frost", 900)
.addEnergyPerTickInput(25000000)
.addFluidInputs([
    <liquid:cryotheum> * 64000
])
.addItemInputs([
    <tconevo:metal:38> * 32,
    <mets:super_iridium_compress_plate> * 4,
    <threng:material:4> * 32,
    <nae2:material:7>,
    <mets:living_circuit>,
    <appliedenergistics2:material:39>
])
.addItemOutput(<novaeng_core:estorage_cell_fluid_16m>)
.build();

//反应堆控制器
mods.modularmachinery.RecipeBuilder.newBuilder("reactor", "YMG_Gemini_Frost", 2400)
.addEnergyPerTickInput(25000000)
.addFluidInputs([
    <liquid:cryotheum> * 128000,
    <liquid:osmiridium> * 12960
])
.addItemInputs([
    <mekanismgenerators:reactor:1> * 8,
    <ic2:te:22>,
    <ic2:containment_plating> * 64,
    <ic2:iridium_reflector> * 4,
    <super_solar_panels:crafting:25> * 4,
    <mets:field_generator>
])
.addItemOutput(<mekanismgenerators:reactor>)
.build();