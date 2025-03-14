/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//工作台配方
//有序：recipes.addShape(IIngredient output,ItemBOX);
//无序：recipes.addShapeless(IIngredient output,ItemBOX);

//天使方块+
recipes.addShaped(<novaeng_core:angel_block>,[
    [<minecraft:feather>,<minecraft:feather>,<minecraft:feather>],
    [<minecraft:feather>,<draconicevolution:infused_obsidian>,<minecraft:feather>],
    [<minecraft:feather>,<minecraft:feather>,<minecraft:feather>]
]);

//存储系统结构外壳
recipes.addShaped(<novaeng_core:estorage_casing> * 2,[
    [<mets:super_iridium_compress_plate>,<ic2:heat_vent>,<mets:super_iridium_compress_plate>],
    [<super_solar_panels:crafting:10>,<contenttweaker:mysteriousicecasing>,<super_solar_panels:crafting:10>],
    [<mets:super_iridium_compress_plate>,<ic2:heat_vent>,<mets:super_iridium_compress_plate>]
]);

//计算系统结构外壳
recipes.addShaped(<novaeng_core:ecalculator_casing> * 4,[
    [<ore:plateCrystalMatrix>,<ic2:heat_vent>,<ore:plateCrystalMatrix>],
    [<super_solar_panels:crafting:10>,<contenttweaker:mysteriousicecasing>,<super_solar_panels:crafting:10>],
    [<ore:plateCrystalMatrix>,<ic2:heat_vent>,<ore:plateCrystalMatrix>]
]);

//ECO-CR-ME-矩阵通讯接口
recipes.addShaped(<novaeng_core:ecalculator_me_channel>,[
    [<novaeng_core:ecalculator_casing>,<appliedenergistics2:quantum_link>,<novaeng_core:ecalculator_casing>],
    [<appliedenergistics2:part:76>,<appliedenergistics2:controller>,<appliedenergistics2:part:76>],
    [<novaeng_core:ecalculator_casing>,<mets:advanced_oc_heat_vent>,<novaeng_core:ecalculator_casing>]
]);

//ECO-LR-ME-矩阵通讯接口
recipes.addShaped(<novaeng_core:estorage_me_channel>,[
    [<novaeng_core:estorage_casing>,<appliedenergistics2:quantum_link>,<novaeng_core:estorage_casing>],
    [<appliedenergistics2:part:76>,<appliedenergistics2:controller>,<appliedenergistics2:part:76>],
    [<novaeng_core:estorage_casing>,<mets:advanced_oc_heat_vent>,<novaeng_core:estorage_casing>]
]);

//ECO-LD-存储矩阵驱动器
recipes.addShaped(<novaeng_core:estorage_cell_drive>,[
    [<novaeng_core:estorage_casing>,<threng:material:6>,<novaeng_core:estorage_casing>],
    [<appliedenergistics2:part:76>,<appliedenergistics2:drive>,<appliedenergistics2:drive>],
    [<novaeng_core:estorage_casing>,<threng:material:6>,<novaeng_core:estorage_casing>]
]);

//存储系统结构散热器
recipes.addShaped(<novaeng_core:estorage_vent> * 2,[
    [<novaeng_core:estorage_casing>,<mets:advanced_heat_vent>,<novaeng_core:estorage_casing>],
    [<ic2:hex_heat_storage>,<ic2:hex_heat_storage>,<ic2:hex_heat_storage>],
    [<novaeng_core:estorage_casing>,<mets:advanced_heat_vent>,<novaeng_core:estorage_casing>]
]);

//ECO-LT4-高密度能量元件
recipes.addShaped(<novaeng_core:estorage_energy_cell_l4>,[
    [<appliedenergistics2:dense_energy_cell>,<gravisuite:crafting:1>,<appliedenergistics2:dense_energy_cell>],
    [<novaeng_core:estorage_vent>,<ic2:charging_lapotron_crystal>,<novaeng_core:estorage_vent>],
    [<appliedenergistics2:dense_energy_cell>,<gravisuite:crafting:1>,<appliedenergistics2:dense_energy_cell>]
]);

//ECO-LT6-高密度能量元件
recipes.addShaped(<novaeng_core:estorage_energy_cell_l6>,[
    [<novaeng_core:estorage_energy_cell_l4>,<novaeng_core:estorage_energy_cell_l4>,<novaeng_core:estorage_energy_cell_l4>],
    [<novaeng_core:estorage_vent>,<contenttweaker:olihacon>,<novaeng_core:estorage_vent>],
    [<novaeng_core:estorage_energy_cell_l4>,<novaeng_core:estorage_energy_cell_l4>,<novaeng_core:estorage_energy_cell_l4>]
]);

//ECO-LT9-高密度能量元件
recipes.addShaped(<novaeng_core:estorage_energy_cell_l9>,[
    [<novaeng_core:estorage_energy_cell_l6>,<novaeng_core:estorage_energy_cell_l6>,<novaeng_core:estorage_energy_cell_l6>],
    [<novaeng_core:estorage_vent>,<avaritia:resource:6>,<novaeng_core:estorage_vent>],
    [<novaeng_core:estorage_energy_cell_l6>,<novaeng_core:estorage_energy_cell_l6>,<novaeng_core:estorage_energy_cell_l6>]
]);

//存储系统结构外壳
recipes.addShaped(<novaeng_core:efabricator_casing> * 2,[
    [<extendedcrafting:material:15>,<ic2:heat_vent>,<extendedcrafting:material:15>],
    [<super_solar_panels:crafting:10>,<contenttweaker:mysteriousicecasing>,<super_solar_panels:crafting:10>],
    [<extendedcrafting:material:15>,<ic2:heat_vent>,<extendedcrafting:material:15>]
]);

//ECO-FR-ME-矩阵通讯接口
recipes.addShaped(<novaeng_core:efabricator_me_channel>,[
    [<novaeng_core:efabricator_casing>,<appliedenergistics2:quantum_link>,<novaeng_core:efabricator_casing>],
    [<appliedenergistics2:part:76>,<appliedenergistics2:controller>,<appliedenergistics2:part:76>],
    [<novaeng_core:efabricator_casing>,<mets:advanced_oc_heat_vent>,<novaeng_core:efabricator_casing>]
]);

//合成系统结构散热器
recipes.addShaped(<novaeng_core:efabricator_vent> * 2,[
    [<novaeng_core:efabricator_casing>,<mets:advanced_heat_vent>,<novaeng_core:efabricator_casing>],
    [<ic2:hex_heat_storage>,<ic2:hex_heat_storage>,<ic2:hex_heat_storage>],
    [<novaeng_core:efabricator_casing>,<mets:advanced_heat_vent>,<novaeng_core:efabricator_casing>]
]);

//ECO-FD-智能样板总线
recipes.addShaped(<novaeng_core:efabricator_pattern_bus> * 2,[
    [<novaeng_core:efabricator_casing>,<threng:material:14>,<novaeng_core:efabricator_casing>],
    [<appliedenergistics2:material:58>,<threng:big_assembler:3>,<appliedenergistics2:material:58>],
    [<novaeng_core:efabricator_casing>,<threng:material:14>,<novaeng_core:efabricator_casing>]
]);

//ECO-FX-工作核心
recipes.addShaped(<novaeng_core:efabricator_worker>,[
    [<novaeng_core:efabricator_casing>,<threng:material:14>,<novaeng_core:efabricator_casing>],
    [<super_solar_panels:crafting:22>,<threng:big_assembler:4>,<super_solar_panels:crafting:22>],
    [<novaeng_core:efabricator_casing>,<threng:material:14>,<novaeng_core:efabricator_casing>]
]);

//ECO-FT4并行核心
recipes.addShaped(<novaeng_core:efabricator_parallel_proc_l4>,[
    [<nae2:coprocessor_4x>,<gravisuite:crafting:1>,<nae2:coprocessor_4x>],
    [<novaeng_core:efabricator_vent>,<mets:living_circuit>,<novaeng_core:efabricator_vent>],
    [<nae2:coprocessor_4x>,<gravisuite:crafting:1>,<nae2:coprocessor_4x>]
]);

//ECO-FT6并行核心
recipes.addShaped(<novaeng_core:efabricator_parallel_proc_l6> * 2,[
    [<nae2:coprocessor_16x>,<mets:field_generator>,<nae2:coprocessor_16x>],
    [<novaeng_core:efabricator_parallel_proc_l4>,<contenttweaker:ymcomputecore>,<novaeng_core:efabricator_parallel_proc_l4>],
    [<nae2:coprocessor_16x>,<mets:field_generator>,<nae2:coprocessor_16x>]
]);

//ECO-CD-晶阵驱动器
recipes.addShaped(<novaeng_core:ecalculator_cell_drive>,[
    [<novaeng_core:ecalculator_casing>,<threng:material:14>,<novaeng_core:ecalculator_casing>],
    [<appliedenergistics2:crafting_unit>,<appliedenergistics2:crafting_unit>,<appliedenergistics2:crafting_unit>],
    [<novaeng_core:ecalculator_casing>,<threng:material:14>,<novaeng_core:ecalculator_casing>]
]);

//ECO-CI-超导晶阵传输总线
recipes.addShaped(<novaeng_core:ecalculator_transmitter_bus>,[
    [<novaeng_core:ecalculator_casing>,<gravisuite:crafting:4>,<novaeng_core:ecalculator_casing>],
    [<gravisuite:crafting:1>,<threng:material:6>,<gravisuite:crafting:1>],
    [<novaeng_core:ecalculator_casing>,<gravisuite:crafting:4>,<novaeng_core:ecalculator_casing>]
]);

//ECO-CT4并行核心
recipes.addShaped(<novaeng_core:ecalculator_parallel_proc_l4>,[
    [<nae2:coprocessor_4x>,<gravisuite:crafting:1>,<nae2:coprocessor_4x>],
    [<novaeng_core:ecalculator_transmitter_bus>,<mets:living_circuit>,<novaeng_core:ecalculator_transmitter_bus>],
    [<nae2:coprocessor_4x>,<gravisuite:crafting:1>,<nae2:coprocessor_4x>]
]);

//ECO-CT6并行核心
recipes.addShaped(<novaeng_core:ecalculator_parallel_proc_l6> * 2,[
    [<nae2:coprocessor_16x>,<mets:field_generator>,<nae2:coprocessor_16x>],
    [<novaeng_core:ecalculator_parallel_proc_l4>,<contenttweaker:ymcomputecore>,<novaeng_core:ecalculator_parallel_proc_l4>],
    [<nae2:coprocessor_16x>,<mets:field_generator>,<nae2:coprocessor_16x>]
]);

//计算机散热总控-C4
recipes.addShaped(<novaeng_core:ecalculator_tail_l4>,[
    [<novaeng_core:ecalculator_casing>,<mets:living_circuit>,<novaeng_core:ecalculator_casing>],
    [<gravisuite:crafting:2>,<gravisuite:crafting:4>,<gravisuite:crafting:2>],
    [<novaeng_core:ecalculator_casing>,<mets:living_circuit>,<novaeng_core:ecalculator_casing>]
]);

//计算机散热总控-C6
recipes.addShaped(<novaeng_core:ecalculator_tail_l6>,[
    [<contenttweaker:olihacon>,<contenttweaker:ymcomputecore>,<contenttweaker:olihacon>],
    [<ic2:upgrade>,<novaeng_core:ecalculator_tail_l4>,<ic2:upgrade>],
    [<contenttweaker:olihacon>,<contenttweaker:ymcomputecore>,<contenttweaker:olihacon>]
]);

//ECO-CE4-闪存晶阵
recipes.addShaped(<novaeng_core:ecalculator_cell_64m>,[
    [<moreplates:crystal_matrix_plate>,<mets:living_circuit>,<moreplates:crystal_matrix_plate>],
    [<moreplates:stellar_alloy_plate>,<nae2:storage_crafting_4096k>,<gravisuite:crafting:4>],
    [<moreplates:crystal_matrix_plate>,<mets:living_circuit>,<moreplates:crystal_matrix_plate>]
]);

//ECO-CE6-闪存晶阵
recipes.addShaped(<novaeng_core:ecalculator_cell_1024m>,[
    [<contenttweaker:olihacon>,<contenttweaker:ymcomputecore>,<contenttweaker:olihacon>],
    [<ic2:upgrade>,<nae2:storage_crafting_16384k>,<novaeng_core:ecalculator_cell_64m>],
    [<contenttweaker:olihacon>,<contenttweaker:ymcomputecore>,<contenttweaker:olihacon>]
]);

//ECO-CM4A-线程核心
recipes.addShaped(<novaeng_core:ecalculator_thread_core_l4>,[
    [<novaeng_core:ecalculator_casing>,<threng:material:14>,<novaeng_core:ecalculator_casing>],
    [<nae2:coprocessor_4x>,<gravisuite:crafting:2>,<nae2:coprocessor_4x>],
    [<novaeng_core:ecalculator_casing>,<threng:material:14>,<novaeng_core:ecalculator_casing>]
]);

//ECO-CM4B-超线程核心
recipes.addShaped(<novaeng_core:ecalculator_thread_core_hyper_l4>,[
    [<novaeng_core:ecalculator_casing>,<threng:material:14>,<novaeng_core:ecalculator_casing>],
    [<nae2:coprocessor_16x>,<gravisuite:crafting:2>,<nae2:coprocessor_16x>],
    [<novaeng_core:ecalculator_casing>,<threng:material:14>,<novaeng_core:ecalculator_casing>]
]);

//ECO-CM6A-线程核心
recipes.addShaped(<novaeng_core:ecalculator_thread_core_l6>,[
    [<contenttweaker:olihacon>,<contenttweaker:ymcomputecore>,<contenttweaker:olihacon>],
    [<nae2:coprocessor_16x>,<novaeng_core:ecalculator_thread_core_l4>,<nae2:coprocessor_16x>],
    [<contenttweaker:olihacon>,<contenttweaker:ymcomputecore>,<contenttweaker:olihacon>]
]);

//ECO-CM6B-超线程核心
recipes.addShaped(<novaeng_core:ecalculator_thread_core_hyper_l6>,[
    [<contenttweaker:olihacon>,<contenttweaker:ymcomputecore>,<contenttweaker:olihacon>],
    [<nae2:coprocessor_64x>,<novaeng_core:ecalculator_thread_core_hyper_l4>,<nae2:coprocessor_64x>],
    [<contenttweaker:olihacon>,<contenttweaker:ymcomputecore>,<contenttweaker:olihacon>]
]);
