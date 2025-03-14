/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineModifier;

//线程设置
MachineModifier.setMaxThreads("YMG_Assembly_Line_Advanced", 4);


//精英合成催化剂
mods.modularmachinery.RecipeBuilder.newBuilder("material_10_2", "YMG_Assembly_Line_Advanced", 12000)
.addEnergyPerTickInput(60000000)
.addItemInput(<extendedcrafting:material:16> * 8)
.addItemInput(<contenttweaker:colorfulice>)
.addItemInput(<contenttweaker:superenergymatter> * 64)
.addItemOutput(<extendedcrafting:material:10>)
.build();

//聚合核心
mods.modularmachinery.RecipeBuilder.newBuilder("fusion_crafting_core_2", "YMG_Assembly_Line_Advanced", 24000)
.addEnergyPerTickInput(60000000)
.addItemInput(<extrabotany:chargepad> * 64)
.addItemInput(<draconicevolution:particle_generator:2> * 2)
.addItemInput(<draconicevolution:draconic_core> * 4)
.addItemInput(<actuallyadditions:block_phantom_booster> * 4)
.addItemInput(<actuallyadditions:block_laser_relay_extreme> * 4)
.addItemInput(<contenttweaker:olihacon> * 8)
.addItemInput(<appliedenergistics2:condenser>)
.addItemInput(<super_solar_panels:machines:25>)
.addFluidInputs([
    <liquid:draconium> * 1024000,
    <liquid:mana> * 20000
])
.addItemOutput(<draconicevolution:fusion_crafting_core>)
.build();

//二级结构方块
mods.modularmachinery.RecipeBuilder.newBuilder("structure_frame_2_2", "YMG_Assembly_Line_Advanced", 1200)
.addEnergyPerTickInput(30000000)
.addItemInput(<environmentaltech:structure_frame_1>)
.addItemInput(<environmentaltech:erodium_crystal> * 8)
.addFluidInputs([
    <liquid:manyullyn> * 1296
])
.addItemOutput(<environmentaltech:structure_frame_2>)
.build();

//基础注入合成装置
mods.modularmachinery.RecipeBuilder.newBuilder("crafting_injector_2", "YMG_Assembly_Line_Advanced", 1800)
.addEnergyPerTickInput(15000000)
.addItemInput(<enderio:item_material:54> * 10)
.addItemInput(<draconicevolution:draconic_core>)
.addItemInput(<taiga:adamant_ingot> * 4)
.addItemInput(<contenttweaker:olihacon>)
.addItemInput(<actuallyadditions:block_laser_relay_extreme>)
.addItemInput(<actuallyadditions:block_phantom_booster>)
.addItemInput(<gravisuite:crafting:1> * 8)
.addFluidInputs([
    <liquid:glass> * 256000
])
.addItemOutput(<draconicevolution:crafting_injector>)
.build();

//云梦计算核心
mods.modularmachinery.RecipeBuilder.newBuilder("ymcomputecore_2", "YMG_Assembly_Line_Advanced", 2400)
.addEnergyPerTickInput(20000000)
.addItemInput(<mets:living_circuit> * 2)
.addItemInput(<contenttweaker:olihacon> * 2)
.addItemInput(<environmentaltech:kyronite_crystal> * 2)
.addItemInput(<super_solar_panels:crafting:25>)
.addItemInput(<enderio:item_capacitor_stellar>)
.addItemInput(<contenttweaker:enhancedprintedcircuitboard> * 4)
.addFluidInputs([
    <liquid:wyvern_metal> * 144
])
.addItemOutput(<contenttweaker:ymcomputecore>)
.build();

//特斯拉线圈
mods.modularmachinery.RecipeBuilder.newBuilder("teslacoil_2", "YMG_Assembly_Line_Advanced", 400)
.addEnergyPerTickInput(18000000)
.addItemInput(<extendedcrafting:frame>)
.addItemInput(<redstonearsenal:material:193> * 8)
.addItemInput(<mets:titanium_shaft> * 4)
.addItemInput(<contenttweaker:mysteriousicecoil> * 4)
.addItemInput(<mekanism:polyethene:2> * 64)
.addItemInput(<ore:plateCrystalMatrix>)
.addItemInput(<mets:super_circuit>)
.addFluidInputs([
    <liquid:stellar_alloy> * 288
])
.addItemOutput(<contenttweaker:teslacoil>)
.build();

//特斯拉外壳
mods.modularmachinery.RecipeBuilder.newBuilder("teslashell_2", "YMG_Assembly_Line_Advanced", 400)
.addEnergyPerTickInput(18000000)
.addItemInput(<modularmachinery:blockcasing:4>)
.addItemInput(<avaritiaitem:triphasic_alloy> * 4)
.addItemInput(<contenttweaker:teslashellplate> * 4)
.addItemInput(<tconevo:metal:43> * 4)
.addFluidInputs([
    <liquid:stellar_alloy> * 288
])
.addItemOutput(<contenttweaker:teslashell>)
.build();

//物品输入仓-大型
mods.modularmachinery.RecipeBuilder.newBuilder("blockinputbus_4_2", "YMG_Assembly_Line_Advanced", 2400)
.addEnergyPerTickInput(20000000)
.addItemInput(<modularmachinery:blockinputbus:3>)
.addItemInput(<moreplates:crystal_matrix_plate>)
.addItemInput(<contenttweaker:mysteriousiceplate> * 16)
.addItemInput(<super_solar_panels:crafting:44> * 4)
.addItemInput(<threng:material:14>)
.addItemInput(<appliedenergistics2:material:37>)
.addFluidInputs([
    <liquid:mana> * 1000
])
.addItemOutput(<modularmachinery:blockinputbus:4>)
.build();

//物品输出仓-大型
mods.modularmachinery.RecipeBuilder.newBuilder("blockoutputbus_4_2", "YMG_Assembly_Line_Advanced", 2400)
.addEnergyPerTickInput(20000000)
.addItemInput(<modularmachinery:blockoutputbus:3>)
.addItemInput(<moreplates:crystal_matrix_plate>)
.addItemInput(<contenttweaker:mysteriousiceplate> * 16)
.addItemInput(<super_solar_panels:crafting:44> * 4)
.addItemInput(<threng:material:14>)
.addItemInput(<appliedenergistics2:material:37>)
.addFluidInputs([
    <liquid:mana> * 1000
])
.addItemOutput(<modularmachinery:blockoutputbus:4>)
.build();

//流体输入仓-大型
mods.modularmachinery.RecipeBuilder.newBuilder("blockfluidinputhatch_4_2", "YMG_Assembly_Line_Advanced", 2400)
.addEnergyPerTickInput(20000000)
.addItemInput(<modularmachinery:blockfluidinputhatch:3>)
.addItemInput(<moreplates:crystal_matrix_plate>)
.addItemInput(<contenttweaker:mysteriousiceplate> * 16)
.addItemInput(<super_solar_panels:crafting:44> * 4)
.addItemInput(<threng:material:14>)
.addItemInput(<appliedenergistics2:material:57>)
.addFluidInputs([
    <liquid:mana> * 1000
])
.addItemOutput(<modularmachinery:blockfluidinputhatch:4>)
.build();

//流体输出仓-大型
mods.modularmachinery.RecipeBuilder.newBuilder("blockfluidoutputhatch_4_2", "YMG_Assembly_Line_Advanced", 2400)
.addEnergyPerTickInput(20000000)
.addItemInput(<modularmachinery:blockfluidoutputhatch:3>)
.addItemInput(<moreplates:crystal_matrix_plate>)
.addItemInput(<contenttweaker:mysteriousiceplate> * 16)
.addItemInput(<super_solar_panels:crafting:44> * 4)
.addItemInput(<threng:material:14>)
.addItemInput(<appliedenergistics2:material:57>)
.addFluidInputs([
    <liquid:mana> * 1000
])
.addItemOutput(<modularmachinery:blockfluidoutputhatch:4>)
.build();

//能量输入仓-大型
mods.modularmachinery.RecipeBuilder.newBuilder("blockenergyinputhatch_4_2", "YMG_Assembly_Line_Advanced", 2400)
.addEnergyPerTickInput(20000000)
.addItemInput(<modularmachinery:blockenergyinputhatch:3>)
.addItemInput(<mekanism:basicblock2:3>.withTag({tier: 3}))
.addItemInput(<moreplates:crystal_matrix_plate>)
.addItemInput(<contenttweaker:mysteriousiceplate> * 16)
.addItemInput(<threng:material:14>)
.addItemInput(<draconicevolution:energy_crystal:3>)
.addFluidInputs([
    <liquid:mana> * 1000
])
.addItemOutput(<modularmachinery:blockenergyinputhatch:4>)
.build();

//能量输出仓-大型
mods.modularmachinery.RecipeBuilder.newBuilder("blockenergyoutputhatch_4_2", "YMG_Assembly_Line_Advanced", 2400)
.addEnergyPerTickInput(20000000)
.addItemInput(<modularmachinery:blockenergyoutputhatch:3>)
.addItemInput(<mekanism:basicblock2:3>.withTag({tier: 3}))
.addItemInput(<moreplates:crystal_matrix_plate>)
.addItemInput(<contenttweaker:mysteriousiceplate> * 16)
.addItemInput(<threng:material:14>)
.addItemInput(<draconicevolution:energy_crystal:3>)
.addFluidInputs([
    <liquid:mana> * 1000
])
.addItemOutput(<modularmachinery:blockenergyoutputhatch:4>)
.build();

//ECO-LE6存储矩阵-物品
mods.modularmachinery.RecipeBuilder.newBuilder("estorage_cell_item_64m_2", "YMG_Assembly_Line_Advanced", 2400)
.addEnergyPerTickInput(21000000)
.addFluidInputs([
    <liquid:crystal_matrix> * 1296
])
.addItemInput(<novaeng_core:estorage_cell_item_16m>)
.addItemInput(<contenttweaker:olihacon> * 10)
.addItemInput(<extrabotany:material:8> * 16)
.addItemInput(<extrabotany:material:5> * 16)
.addItemInput(<gravisuite:crafting:2> * 8)
.addItemInput(<contenttweaker:ymcomputecore> * 2)
.addItemOutput(<novaeng_core:estorage_cell_item_64m>)
.build();

//ECO-LE6存储矩阵-流体
mods.modularmachinery.RecipeBuilder.newBuilder("estorage_cell_fluid_64m_2", "YMG_Assembly_Line_Advanced", 2400)
.addEnergyPerTickInput(21000000)
.addFluidInputs([
    <liquid:crystal_matrix> * 1296
])
.addItemInput(<novaeng_core:estorage_cell_fluid_16m>)
.addItemInput(<contenttweaker:olihacon> * 10)
.addItemInput(<extrabotany:material:8> * 16)
.addItemInput(<extrabotany:material:5> * 16)
.addItemInput(<gravisuite:crafting:2> * 8)
.addItemInput(<contenttweaker:ymcomputecore> * 2)
.addItemOutput(<novaeng_core:estorage_cell_fluid_64m>)
.build();

//人造卫星-采矿
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Assembly_Line_Advanced_sputnik_ore", "YMG_Assembly_Line_Advanced", 2400)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:aerospaceglue> * 64000
])
.addItemInput(<contenttweaker:material_part:1008> * 64)
.addItemInput(<contenttweaker:material_part:1001> * 64)
.addItemInput(<contenttweaker:material_part:1012> * 16)
.addItemInput(<contenttweaker:material_part:1013> * 16)
.addItemInput(<contenttweaker:material_part:1010> * 16)
.addItemInput(<contenttweaker:material_part:1003> * 16)
.addItemInput(<contenttweaker:ymcomputecore> * 4)
.addItemInput(<actuallyadditions:block_furnace_solar> * 64)
.addItemInput(<ic2:te:57> * 64)
.addItemOutput(<contenttweaker:sputnik>.withTag({display: {Lore: ["§9卫星类型：§e采矿卫星§r"]}, Mode: "ORE"}))
.build();

//人造卫星-光伏
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Assembly_Line_Advanced_sputnik_pv", "YMG_Assembly_Line_Advanced", 2400)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:aerospaceglue> * 64000
])
.addItemInput(<contenttweaker:material_part:1008> * 64)
.addItemInput(<contenttweaker:material_part:1001> * 64)
.addItemInput(<contenttweaker:material_part:1012> * 16)
.addItemInput(<contenttweaker:material_part:1013> * 16)
.addItemInput(<contenttweaker:material_part:1010> * 16)
.addItemInput(<contenttweaker:material_part:1003> * 16)
.addItemInput(<contenttweaker:ymcomputecore> * 4)
.addItemInput(<actuallyadditions:block_furnace_solar> * 64)
.addItemInput(<enderio:block_solar_panel:6> * 64)
.addItemOutput(<contenttweaker:sputnik>.withTag({display: {Lore: ["§9卫星类型：§e光伏卫星§r"]}, Mode: "PV"}))
.build();

//人造卫星-气体收集
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Assembly_Line_Advanced_sputnik_gas", "YMG_Assembly_Line_Advanced", 2400)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:aerospaceglue> * 64000
])
.addItemInput(<contenttweaker:material_part:1008> * 64)
.addItemInput(<contenttweaker:material_part:1001> * 64)
.addItemInput(<contenttweaker:material_part:1012> * 16)
.addItemInput(<contenttweaker:material_part:1013> * 16)
.addItemInput(<contenttweaker:material_part:1010> * 16)
.addItemInput(<contenttweaker:material_part:1003> * 16)
.addItemInput(<contenttweaker:ymcomputecore> * 4)
.addItemInput(<actuallyadditions:block_furnace_solar> * 64)
.addItemInput(<mekanism:machineblock3:2> * 64)
.addItemOutput(<contenttweaker:sputnik>.withTag({display: {Lore: ["§9卫星类型：§e微尘收集卫星§r"]}, Mode: "GAS"}))
.build();

//人造卫星-装配
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Assembly_Line_Advanced_sputnik_assembly", "YMG_Assembly_Line_Advanced", 2400)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:aerospaceglue> * 64000
])
.addItemInput(<contenttweaker:material_part:1008> * 64)
.addItemInput(<contenttweaker:material_part:1001> * 64)
.addItemInput(<contenttweaker:material_part:1012> * 16)
.addItemInput(<contenttweaker:material_part:1013> * 16)
.addItemInput(<contenttweaker:material_part:1010> * 16)
.addItemInput(<contenttweaker:material_part:1003> * 16)
.addItemInput(<contenttweaker:ymcomputecore> * 4)
.addItemInput(<actuallyadditions:block_furnace_solar> * 64)
.addItemInput(<mekanismmultiblockmachine:multiblockmachine:3> * 64)
.addItemOutput(<contenttweaker:sputnik>.withTag({display: {Lore: ["§9卫星类型：§e装配卫星§r"]}, Mode: "ASSEMBLY"}))
.build();

//量子外壳
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Assembly_Line_Advanced_quantumcasing", "YMG_Assembly_Line_Advanced", 600)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:carbonfiberfluid> * 2000
])
.addItemInput(<contenttweaker:mysteriousicecasing>)
.addItemInput(<mets:super_iridium_compress_plate> * 4)
.addItemInput(<ore:plateCrystalMatrix> * 2)
.addItemInput(<ore:plateDiamatineEmpowered> * 2)
.addItemInput(<ore:plateUUMatter> * 2)
.addItemInput(<contenttweaker:graphene> * 4)
.addItemOutput(<contenttweaker:quantumcasing>)
.build();

//量子玻璃
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Assembly_Line_Advanced_quantumglass", "YMG_Assembly_Line_Advanced", 600)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:carbonfiberfluid> * 2000
])
.addItemInput(<mekanismgenerators:reactorglass>)
.addItemInput(<mets:super_iridium_compress_plate> * 4)
.addItemInput(<ore:plateCrystalMatrix> * 2)
.addItemInput(<ore:plateDiamatineEmpowered> * 2)
.addItemInput(<ore:plateUUMatter> * 2)
.addItemInput(<contenttweaker:graphene> * 4)
.addItemOutput(<contenttweaker:quantumglass>)
.build();

//星空信号增幅卡Lv1
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Assembly_Line_Advanced_star_signal_amplification_card_1", "YMG_Assembly_Line_Advanced", 1200)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:aerospaceglue> * 2000,
    <liquid:jump_crystalline> * 1000
])
.addItemInput(<contenttweaker:commondatamodel>)
.addItemInput(<enderio:block_wireless_charger_extension> * 64)
.addItemInput(<contenttweaker:material_part:1001> * 64)
.addItemInput(<contenttweaker:material_part:1012> * 16)
.addItemInput(<appliedenergistics2:material:42> * 64)
.addItemInput(<appliedenergistics2:material:41> * 64)
.addItemInput(<appliedenergistics2:material:59>)
.addItemInput(<appliedenergistics2:material:48> * 2)
.addItemOutput(<contenttweaker:star_signal_amplification_card_1> * 2)
.build();

//折跃力场发生器
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Assembly_Line_Advanced_jump_stand", "YMG_Assembly_Line_Advanced", 1200)
.addEnergyPerTickInput(120000000)
.addFluidInputs([
    <liquid:isaac_newton> * 2000,
    <liquid:dragon_blood> * 1000
])
.addItemInput(<minecraft:beacon> * 16)
.addItemInput(<mets:field_generator> * 4)
.addItemInput(<contenttweaker:crusaded_crystals> * 16)
.addItemInput(<contenttweaker:olihacon> * 16)
.addItemInput(<contenttweaker:ymcomputecore> * 4)
.addItemOutput(<contenttweaker:jump_stand>)
.build();