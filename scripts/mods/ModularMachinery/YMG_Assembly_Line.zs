/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//精英合成催化剂
mods.modularmachinery.RecipeBuilder.newBuilder("material_10_1", "YMG_Assembly_Line", 12000)
.addEnergyPerTickInput(60000000)
.addItemInput(<extendedcrafting:material:16>).setTag("item_1")
.addItemInput(<extendedcrafting:material:16>).setTag("item_2")
.addItemInput(<extendedcrafting:material:16>).setTag("item_3")
.addItemInput(<extendedcrafting:material:16>).setTag("item_4")
.addItemInput(<extendedcrafting:material:16>).setTag("item_5")
.addItemInput(<extendedcrafting:material:16>).setTag("item_6")
.addItemInput(<extendedcrafting:material:16>).setTag("item_7")
.addItemInput(<extendedcrafting:material:16>).setTag("item_8")
.addItemInput(<contenttweaker:colorfulice>).setTag("item_9")
.addItemInput(<contenttweaker:superenergymatter> * 64).setTag("item_10")
.addItemOutput(<extendedcrafting:material:10>)
.build();

//聚合核心
mods.modularmachinery.RecipeBuilder.newBuilder("fusion_crafting_core_1", "YMG_Assembly_Line", 24000)
.addEnergyPerTickInput(60000000)
.addItemInput(<extrabotany:chargepad> * 64).setTag("item_1")
.addItemInput(<draconicevolution:particle_generator:2>).setTag("item_2")
.addItemInput(<draconicevolution:particle_generator:2>).setTag("item_3")
.addItemInput(<draconicevolution:draconic_core>).setTag("item_4")
.addItemInput(<draconicevolution:draconic_core>).setTag("item_5")
.addItemInput(<draconicevolution:draconic_core>).setTag("item_6")
.addItemInput(<draconicevolution:draconic_core>).setTag("item_7")
.addItemInput(<actuallyadditions:block_phantom_booster> * 4).setTag("item_8")
.addItemInput(<actuallyadditions:block_laser_relay_extreme> * 4).setTag("item_9")
.addItemInput(<contenttweaker:olihacon> * 8).setTag("item_10")
.addItemInput(<appliedenergistics2:condenser>).setTag("item_11")
.addItemInput(<super_solar_panels:machines:25>).setTag("item_12")
.addFluidInputs([
    <liquid:draconium> * 1024000,
    <liquid:mana> * 20000
])
.addItemOutput(<draconicevolution:fusion_crafting_core>)
.build();

//二级结构方块
mods.modularmachinery.RecipeBuilder.newBuilder("structure_frame_2_1", "YMG_Assembly_Line", 1200)
.addEnergyPerTickInput(30000000)
.addItemInput(<environmentaltech:structure_frame_1>).setTag("item_1")
.addItemInput(<environmentaltech:erodium_crystal>).setTag("item_2")
.addItemInput(<environmentaltech:erodium_crystal>).setTag("item_3")
.addItemInput(<environmentaltech:erodium_crystal>).setTag("item_4")
.addItemInput(<environmentaltech:erodium_crystal>).setTag("item_5")
.addItemInput(<environmentaltech:erodium_crystal>).setTag("item_6")
.addItemInput(<environmentaltech:erodium_crystal>).setTag("item_7")
.addItemInput(<environmentaltech:erodium_crystal>).setTag("item_8")
.addItemInput(<environmentaltech:erodium_crystal>).setTag("item_9")
.addFluidInputs([
    <liquid:manyullyn> * 1296
])
.addItemOutput(<environmentaltech:structure_frame_2>)
.build();

//基础注入合成装置
mods.modularmachinery.RecipeBuilder.newBuilder("crafting_injector_1", "YMG_Assembly_Line", 1800)
.addEnergyPerTickInput(15000000)
.addItemInput(<enderio:item_material:54> * 10).setTag("item_1")
.addItemInput(<draconicevolution:draconic_core>).setTag("item_2")
.addItemInput(<taiga:adamant_ingot> * 4).setTag("item_3")
.addItemInput(<contenttweaker:olihacon>).setTag("item_4")
.addItemInput(<actuallyadditions:block_laser_relay_extreme>).setTag("item_5")
.addItemInput(<actuallyadditions:block_phantom_booster>).setTag("item_6")
.addItemInput(<gravisuite:crafting:1> * 8).setTag("item_7")
.addFluidInputs([
    <liquid:glass> * 256000
])
.addItemOutput(<draconicevolution:crafting_injector>)
.build();

//云梦计算核心
mods.modularmachinery.RecipeBuilder.newBuilder("ymcomputecore_1", "YMG_Assembly_Line", 2400)
.addEnergyPerTickInput(20000000)
.addItemInput(<mets:living_circuit>).setTag("item_1")
.addItemInput(<mets:living_circuit>).setTag("item_2")
.addItemInput(<contenttweaker:olihacon>).setTag("item_3")
.addItemInput(<contenttweaker:olihacon>).setTag("item_4")
.addItemInput(<environmentaltech:kyronite_crystal>).setTag("item_5")
.addItemInput(<environmentaltech:kyronite_crystal>).setTag("item_6")
.addItemInput(<super_solar_panels:crafting:25>).setTag("item_7")
.addItemInput(<enderio:item_capacitor_stellar>).setTag("item_8")
.addItemInput(<contenttweaker:enhancedprintedcircuitboard>).setTag("item_9")
.addItemInput(<contenttweaker:enhancedprintedcircuitboard>).setTag("item_10")
.addItemInput(<contenttweaker:enhancedprintedcircuitboard>).setTag("item_11")
.addItemInput(<contenttweaker:enhancedprintedcircuitboard>).setTag("item_12")
.addFluidInputs([
    <liquid:wyvern_metal> * 144
])
.addItemOutput(<contenttweaker:ymcomputecore>)
.build();

//特斯拉线圈
mods.modularmachinery.RecipeBuilder.newBuilder("teslacoil_1", "YMG_Assembly_Line", 400)
.addEnergyPerTickInput(18000000)
.addItemInput(<extendedcrafting:frame>).setTag("item_1")
.addItemInput(<redstonearsenal:material:193> * 8).setTag("item_2")
.addItemInput(<mets:titanium_shaft> * 4).setTag("item_3")
.addItemInput(<contenttweaker:mysteriousicecoil> * 4).setTag("item_4")
.addItemInput(<mekanism:polyethene:2> * 64).setTag("item_5")
.addItemInput(<ore:plateCrystalMatrix>).setTag("item_6")
.addItemInput(<mets:super_circuit>).setTag("item_7")
.addFluidInputs([
    <liquid:stellar_alloy> * 288
])
.addItemOutput(<contenttweaker:teslacoil>)
.build();

//特斯拉外壳
mods.modularmachinery.RecipeBuilder.newBuilder("teslashell_1", "YMG_Assembly_Line", 400)
.addEnergyPerTickInput(18000000)
.addItemInput(<modularmachinery:blockcasing:4>).setTag("item_1")
.addItemInput(<avaritiaitem:triphasic_alloy> * 4).setTag("item_2")
.addItemInput(<contenttweaker:teslashellplate> * 4).setTag("item_3")
.addItemInput(<tconevo:metal:43> * 4).setTag("item_4")
.addFluidInputs([
    <liquid:stellar_alloy> * 288
])
.addItemOutput(<contenttweaker:teslashell>)
.build();

//物品输入仓-大型
mods.modularmachinery.RecipeBuilder.newBuilder("blockinputbus_4_1", "YMG_Assembly_Line", 2400)
.addEnergyPerTickInput(20000000)
.addItemInput(<modularmachinery:blockinputbus:3>).setTag("item_1")
.addItemInput(<moreplates:crystal_matrix_plate>).setTag("item_2")
.addItemInput(<contenttweaker:mysteriousiceplate> * 16).setTag("item_3")
.addItemInput(<super_solar_panels:crafting:44> * 4).setTag("item_4")
.addItemInput(<threng:material:14>).setTag("item_5")
.addItemInput(<appliedenergistics2:material:37>).setTag("item_6")
.addFluidInputs([
    <liquid:mana> * 1000
])
.addItemOutput(<modularmachinery:blockinputbus:4>)
.build();

//物品输出仓-大型
mods.modularmachinery.RecipeBuilder.newBuilder("blockoutputbus_4_1", "YMG_Assembly_Line", 2400)
.addEnergyPerTickInput(20000000)
.addItemInput(<modularmachinery:blockoutputbus:3>).setTag("item_1")
.addItemInput(<moreplates:crystal_matrix_plate>).setTag("item_2")
.addItemInput(<contenttweaker:mysteriousiceplate> * 16).setTag("item_3")
.addItemInput(<super_solar_panels:crafting:44> * 4).setTag("item_4")
.addItemInput(<threng:material:14>).setTag("item_5")
.addItemInput(<appliedenergistics2:material:37>).setTag("item_6")
.addFluidInputs([
    <liquid:mana> * 1000
])
.addItemOutput(<modularmachinery:blockoutputbus:4>)
.build();

//流体输入仓-大型
mods.modularmachinery.RecipeBuilder.newBuilder("blockfluidinputhatch_4_1", "YMG_Assembly_Line", 2400)
.addEnergyPerTickInput(20000000)
.addItemInput(<modularmachinery:blockfluidinputhatch:3>).setTag("item_1")
.addItemInput(<moreplates:crystal_matrix_plate>).setTag("item_2")
.addItemInput(<contenttweaker:mysteriousiceplate> * 16).setTag("item_3")
.addItemInput(<super_solar_panels:crafting:44> * 4).setTag("item_4")
.addItemInput(<threng:material:14>).setTag("item_5")
.addItemInput(<appliedenergistics2:material:57>).setTag("item_6")
.addFluidInputs([
    <liquid:mana> * 1000
])
.addItemOutput(<modularmachinery:blockfluidinputhatch:4>)
.build();

//流体输出仓-大型
mods.modularmachinery.RecipeBuilder.newBuilder("blockfluidoutputhatch_4_1", "YMG_Assembly_Line", 2400)
.addEnergyPerTickInput(20000000)
.addItemInput(<modularmachinery:blockfluidoutputhatch:3>).setTag("item_1")
.addItemInput(<moreplates:crystal_matrix_plate>).setTag("item_2")
.addItemInput(<contenttweaker:mysteriousiceplate> * 16).setTag("item_3")
.addItemInput(<super_solar_panels:crafting:44> * 4).setTag("item_4")
.addItemInput(<threng:material:14>).setTag("item_5")
.addItemInput(<appliedenergistics2:material:57>).setTag("item_6")
.addFluidInputs([
    <liquid:mana> * 1000
])
.addItemOutput(<modularmachinery:blockfluidoutputhatch:4>)
.build();

//能量输入仓-大型
mods.modularmachinery.RecipeBuilder.newBuilder("blockenergyinputhatch_4_1", "YMG_Assembly_Line", 2400)
.addEnergyPerTickInput(20000000)
.addItemInput(<modularmachinery:blockenergyinputhatch:3>).setTag("item_1")
.addItemInput(<mekanism:basicblock2:3>.withTag({tier: 3})).setTag("item_2")
.addItemInput(<moreplates:crystal_matrix_plate>).setTag("item_3")
.addItemInput(<contenttweaker:mysteriousiceplate> * 16).setTag("item_4")
.addItemInput(<threng:material:14>).setTag("item_5")
.addItemInput(<draconicevolution:energy_crystal:3>).setTag("item_6")
.addFluidInputs([
    <liquid:mana> * 1000
])
.addItemOutput(<modularmachinery:blockenergyinputhatch:4>)
.build();

//能量输出仓-大型
mods.modularmachinery.RecipeBuilder.newBuilder("blockenergyoutputhatch_4_1", "YMG_Assembly_Line", 2400)
.addEnergyPerTickInput(20000000)
.addItemInput(<modularmachinery:blockenergyoutputhatch:3>).setTag("item_1")
.addItemInput(<mekanism:basicblock2:3>.withTag({tier: 3})).setTag("item_2")
.addItemInput(<moreplates:crystal_matrix_plate>).setTag("item_3")
.addItemInput(<contenttweaker:mysteriousiceplate> * 16).setTag("item_4")
.addItemInput(<threng:material:14>).setTag("item_5")
.addItemInput(<draconicevolution:energy_crystal:3>).setTag("item_6")
.addFluidInputs([
    <liquid:mana> * 1000
])
.addItemOutput(<modularmachinery:blockenergyoutputhatch:4>)
.build();

//ECO-LE6存储矩阵-物品
mods.modularmachinery.RecipeBuilder.newBuilder("estorage_cell_item_64m_1", "YMG_Assembly_Line", 2400)
.addEnergyPerTickInput(21000000)
.addFluidInputs([
    <liquid:crystal_matrix> * 1296
])
.addItemInput(<novaeng_core:estorage_cell_item_16m>).setTag("item_1")
.addItemInput(<contenttweaker:olihacon> * 10).setTag("item_2")
.addItemInput(<extrabotany:material:8> * 16).setTag("item_3")
.addItemInput(<extrabotany:material:5> * 16).setTag("item_4")
.addItemInput(<gravisuite:crafting:2> * 8).setTag("item_5")
.addItemInput(<contenttweaker:ymcomputecore> * 2).setTag("item_6")
.addItemOutput(<novaeng_core:estorage_cell_item_64m>)
.build();

//ECO-LE6存储矩阵-流体
mods.modularmachinery.RecipeBuilder.newBuilder("estorage_cell_fluid_64m_1", "YMG_Assembly_Line", 2400)
.addEnergyPerTickInput(21000000)
.addFluidInputs([
    <liquid:crystal_matrix> * 1296
])
.addItemInput(<novaeng_core:estorage_cell_fluid_16m>).setTag("item_1")
.addItemInput(<contenttweaker:olihacon> * 10).setTag("item_2")
.addItemInput(<extrabotany:material:8> * 16).setTag("item_3")
.addItemInput(<extrabotany:material:5> * 16).setTag("item_4")
.addItemInput(<gravisuite:crafting:2> * 8).setTag("item_5")
.addItemInput(<contenttweaker:ymcomputecore> * 2).setTag("item_6")
.addItemOutput(<novaeng_core:estorage_cell_fluid_64m>)
.build();

//元素精炼机
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_elemental_refinery_controller_1", "YMG_Assembly_Line", 2400)
.addEnergyPerTickInput(50000000)
.addFluidInputs([
    <liquid:liquidsuperheatedsodium> * 100
])
.addItemInput(<modularmachinery:ymg_thermal_ionization_distillation_column_controller>).setTag("item_1")
.addItemInput(<contenttweaker:olihacon> * 4).setTag("item_2")
.addItemInput(<mets:field_generator> * 4).setTag("item_3")
.addItemInput(<contenttweaker:ymcomputecore> * 2).setTag("item_4")
.addItemInput(<ore:plateCrystallinePinkSlime> * 16).setTag("item_5")
.addItemOutput(<modularmachinery:ymg_elemental_refinery_controller>)
.build();
