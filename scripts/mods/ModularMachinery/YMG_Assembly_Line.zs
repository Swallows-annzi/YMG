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

//人造卫星-采矿
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Assembly_Line_sputnik_ore", "YMG_Assembly_Line", 2400)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:aerospaceglue> * 64000
])
.addItemInput(<contenttweaker:material_part:1008> * 64).setTag("item_1")
.addItemInput(<contenttweaker:material_part:1001> * 64).setTag("item_2")
.addItemInput(<contenttweaker:material_part:1012> * 16).setTag("item_3")
.addItemInput(<contenttweaker:material_part:1013> * 16).setTag("item_4")
.addItemInput(<contenttweaker:material_part:1010> * 16).setTag("item_5")
.addItemInput(<contenttweaker:material_part:1003> * 16).setTag("item_6")
.addItemInput(<contenttweaker:ymcomputecore> * 4).setTag("item_7")
.addItemInput(<actuallyadditions:block_furnace_solar> * 64).setTag("item_8")
.addItemInput(<ic2:te:57> * 64).setTag("item_9")
.addItemOutput(<contenttweaker:sputnik>.withTag({display: {Lore: ["§9卫星类型：§e采矿卫星§r"]}, Mode: "ORE"}))
.build();

//人造卫星-光伏
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Assembly_Line_sputnik_pv", "YMG_Assembly_Line", 2400)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:aerospaceglue> * 64000
])
.addItemInput(<contenttweaker:material_part:1008> * 64).setTag("item_1")
.addItemInput(<contenttweaker:material_part:1001> * 64).setTag("item_2")
.addItemInput(<contenttweaker:material_part:1012> * 16).setTag("item_3")
.addItemInput(<contenttweaker:material_part:1013> * 16).setTag("item_4")
.addItemInput(<contenttweaker:material_part:1010> * 16).setTag("item_5")
.addItemInput(<contenttweaker:material_part:1003> * 16).setTag("item_6")
.addItemInput(<contenttweaker:ymcomputecore> * 4).setTag("item_7")
.addItemInput(<actuallyadditions:block_furnace_solar> * 64).setTag("item_8")
.addItemInput(<enderio:block_solar_panel:6> * 64).setTag("item_9")
.addItemOutput(<contenttweaker:sputnik>.withTag({display: {Lore: ["§9卫星类型：§e光伏卫星§r"]}, Mode: "PV"}))
.build();

//人造卫星-气体收集
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Assembly_Line_sputnik_gas", "YMG_Assembly_Line", 2400)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:aerospaceglue> * 64000
])
.addItemInput(<contenttweaker:material_part:1008> * 64).setTag("item_1")
.addItemInput(<contenttweaker:material_part:1001> * 64).setTag("item_2")
.addItemInput(<contenttweaker:material_part:1012> * 16).setTag("item_3")
.addItemInput(<contenttweaker:material_part:1013> * 16).setTag("item_4")
.addItemInput(<contenttweaker:material_part:1010> * 16).setTag("item_5")
.addItemInput(<contenttweaker:material_part:1003> * 16).setTag("item_6")
.addItemInput(<contenttweaker:ymcomputecore> * 4).setTag("item_7")
.addItemInput(<actuallyadditions:block_furnace_solar> * 64).setTag("item_8")
.addItemInput(<mekanism:machineblock3:2> * 64).setTag("item_9")
.addItemOutput(<contenttweaker:sputnik>.withTag({display: {Lore: ["§9卫星类型：§e微尘收集卫星§r"]}, Mode: "GAS"}))
.build();

//人造卫星-装配
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Assembly_Line_sputnik_assembly", "YMG_Assembly_Line", 2400)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:aerospaceglue> * 64000
])
.addItemInput(<contenttweaker:material_part:1008> * 64).setTag("item_1")
.addItemInput(<contenttweaker:material_part:1001> * 64).setTag("item_2")
.addItemInput(<contenttweaker:material_part:1012> * 16).setTag("item_3")
.addItemInput(<contenttweaker:material_part:1013> * 16).setTag("item_4")
.addItemInput(<contenttweaker:material_part:1010> * 16).setTag("item_5")
.addItemInput(<contenttweaker:material_part:1003> * 16).setTag("item_6")
.addItemInput(<contenttweaker:ymcomputecore> * 4).setTag("item_7")
.addItemInput(<actuallyadditions:block_furnace_solar> * 64).setTag("item_8")
.addItemInput(<mekanismmultiblockmachine:multiblockmachine:3> * 64).setTag("item_9")
.addItemOutput(<contenttweaker:sputnik>.withTag({display: {Lore: ["§9卫星类型：§e装配卫星§r"]}, Mode: "ASSEMBLY"}))
.build();

//量子外壳
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Assembly_Line_quantumcasing", "YMG_Assembly_Line", 600)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:carbonfiberfluid> * 2000
])
.addItemInput(<contenttweaker:mysteriousicecasing>).setTag("item_1")
.addItemInput(<mets:super_iridium_compress_plate> * 4).setTag("item_2")
.addItemInput(<ore:plateCrystalMatrix> * 2).setTag("item_3")
.addItemInput(<ore:plateDiamatineEmpowered> * 2).setTag("item_4")
.addItemInput(<ore:plateUUMatter> * 2).setTag("item_5")
.addItemInput(<contenttweaker:graphene> * 4).setTag("item_6")
.addItemOutput(<contenttweaker:quantumcasing>)
.build();

//量子玻璃
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Assembly_Line_quantumglass", "YMG_Assembly_Line", 600)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:carbonfiberfluid> * 2000
])
.addItemInput(<mekanismgenerators:reactorglass>).setTag("item_1")
.addItemInput(<mets:super_iridium_compress_plate> * 4).setTag("item_2")
.addItemInput(<ore:plateCrystalMatrix> * 2).setTag("item_3")
.addItemInput(<ore:plateDiamatineEmpowered> * 2).setTag("item_4")
.addItemInput(<ore:plateUUMatter> * 2).setTag("item_5")
.addItemInput(<contenttweaker:graphene> * 4).setTag("item_6")
.addItemOutput(<contenttweaker:quantumglass>)
.build();

//星空信号增幅卡Lv1
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Assembly_Line_star_signal_amplification_card_1", "YMG_Assembly_Line", 1200)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:aerospaceglue> * 2000,
    <liquid:jump_crystalline> * 1000
])
.addItemInput(<contenttweaker:commondatamodel>).setTag("item_1")
.addItemInput(<enderio:block_wireless_charger_extension> * 64).setTag("item_2")
.addItemInput(<contenttweaker:material_part:1001> * 64).setTag("item_3")
.addItemInput(<contenttweaker:material_part:1012> * 16).setTag("item_4")
.addItemInput(<appliedenergistics2:material:42> * 64).setTag("item_5")
.addItemInput(<appliedenergistics2:material:41> * 64).setTag("item_6")
.addItemInput(<appliedenergistics2:material:59>).setTag("item_7")
.addItemInput(<appliedenergistics2:material:48> * 2).setTag("item_8")
.addItemOutput(<contenttweaker:star_signal_amplification_card_1> * 2)
.build();

//折跃力场发生器
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Assembly_Line_jump_stand", "YMG_Assembly_Line", 1200)
.addEnergyPerTickInput(120000000)
.addFluidInputs([
    <liquid:isaac_newton> * 2000,
    <liquid:dragon_blood> * 1000
])
.addItemInput(<minecraft:beacon> * 16).setTag("item_1")
.addItemInput(<mets:field_generator> * 4).setTag("item_2")
.addItemInput(<contenttweaker:crusaded_crystals> * 16).setTag("item_3")
.addItemInput(<contenttweaker:olihacon> * 16).setTag("item_4")
.addItemInput(<contenttweaker:ymcomputecore> * 4).setTag("item_5")
.addItemOutput(<contenttweaker:jump_stand>)
.build();