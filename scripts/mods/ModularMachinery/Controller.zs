/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import moretweaker.draconicevolution.FusionCrafting;

import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.FactoryRecipeTickEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.RecipeModifierBuilder;

//符文祭坛
val YMG_Rune_Well_Runealtar_String = "§b§l符文祭坛";

//后藤独
recipes.addShaped(<modularmachinery:asterism_gotoh_hitori_factory_controller>,[
    [<minecraft:concrete:4>,<minecraft:concrete:3>,<minecraft:concrete:6>],
    [<minecraft:concrete:6>,<minecraft:concrete:6>,<minecraft:concrete:6>],
    [<minecraft:concrete:6>,<minecraft:concrete:6>,<minecraft:concrete:6>]
]);

//铱制动力筛
recipes.addShaped(<modularmachinery:ymg_iridium_power_sieve_factory_controller>,[
    [<ore:plateDenseIridium>,<ore:heavy_sieve>,<ore:plateDenseIridium>],
    [<ore:plateDenseIridium>,<contenttweaker:iridiumcasing>,<ore:plateDenseIridium>],
    [<ore:plateDenseIridium>,<contenttweaker:iridiummotor>,<ore:plateDenseIridium>]
]);

//基岩激光钻机
recipes.addShaped(<modularmachinery:ymg_bedrock_laser_drills_factory_controller>,[
    [<ore:plateDensePlatinum>,<mekanism:controlcircuit:3>,<ore:plateDensePlatinum>],
    [<mekanism:controlcircuit:3>,<environmentaltech:laser_core>,<mekanism:controlcircuit:3>],
    [<ore:plateDensePlatinum>,<ore:compressed3xDustBedrock>,<ore:plateDensePlatinum>]
]);

//淬炼龛控制器
mods.astralsorcery.Altar.addTraitAltarRecipe("mypackname:shaped/internal/altar/ymg_quenching_shrine_controller", <modularmachinery:ymg_quenching_shrine_controller>, 7000, 100, [
	<botania:pylon:1>,<astralsorcery:blockstarlightinfuser>,<botania:pylon:1>,
	<modularmachinery:blockcasing>,<astralsorcery:blockchalice>,<modularmachinery:blockcasing>,
	<modularmachinery:blockcasing>,<astralsorcery:blockmarble:2>,<modularmachinery:blockcasing>,
	<extendedcrafting:storage:1>,<extendedcrafting:storage:1>,<modularmachinery:blockcasing>,<modularmachinery:blockcasing>,
	null,null,<modularmachinery:blockcasing>,<modularmachinery:blockcasing>,
	null,null,<astralsorcery:blockmarble:3>,<astralsorcery:blockmarble:3>,
	<astralsorcery:blockprism>,null,null,<contenttweaker:tungstenblock>,
	<astralsorcery:itemcraftingcomponent:3>,<ore:dustAstralStarmetal>,<astralsorcery:itemcraftingcomponent:3>,<ore:dustAstralStarmetal>,<astralsorcery:itemcraftingcomponent:3>,<ore:dustAstralStarmetal>,<astralsorcery:itemcraftingcomponent:3>,<ore:dustAstralStarmetal>
],"astralsorcery.constellation.octans");

//炽焰熔炼炉
recipes.addShaped(<modularmachinery:ymg_blazing_furnace_factory_controller>,[
    [<extendedcrafting:material:14>,<forge:bucketfilled>.withTag({FluidName: "pyrotheum", Amount: 1000}),<extendedcrafting:material:14>],
    [<extendedcrafting:material:14>,<enderio:block_reinforced_obsidian>,<extendedcrafting:material:14>],
    [<ore:blockMelodicAlloy>,<enderio:block_enhanced_alloy_smelter>,<ore:blockMelodicAlloy>]
]);

//火力发电机
recipes.addShaped(<modularmachinery:ymg_thermal_power_plant_controller>,[
    [<enderio:item_alloy_ingot:6>,<modularmachinery:blockcasing:1>,<enderio:item_alloy_ingot:6>],
    [<enderio:item_alloy_ingot:6>,<botania:blazeblock>,<enderio:item_alloy_ingot:6>],
    [<modularmachinery:blockcasing:2>,<enderio:block_stirling_generator>,<modularmachinery:blockcasing:2>]
]);

//简易压缩/冲压一体式机床
recipes.addShaped(<modularmachinery:ymg_facility_compress_stamping_integrated_machine_tool_controller>, [
	[<actuallyadditions:block_crystal_empowered:5>,<contenttweaker:iridiummotor>,<actuallyadditions:block_crystal_empowered:5>], 
	[<ic2:fence>,<enderio:block_dark_steel_anvil>,<ic2:fence>], 
	[<actuallyadditions:block_crystal_empowered:5>,<thermalexpansion:machine:5>,<actuallyadditions:block_crystal_empowered:5>]
]);

//简易压缩/冲压一体式机床-集成
recipes.addShaped(<modularmachinery:ymg_facility_compress_stamping_integrated_machine_tool_factory_controller>, [
	[<jaopca:block_glasshardenedancientdebris>,<mekanism:tierinstaller:3>,<jaopca:block_glasshardenedancientdebris>], 
	[<contenttweaker:mysteriousiceplate>,<modularmachinery:ymg_facility_compress_stamping_integrated_machine_tool_controller>,<contenttweaker:mysteriousiceplate>], 
	[<contenttweaker:mysteriousiceplate>,<threng:material:6>,<contenttweaker:mysteriousiceplate>]
]);

//组装机
recipes.addShaped(<modularmachinery:ymg_assembling_machine_controller>,[
	[<mekanism:plasticblock:15>,<appliedenergistics2:material:24>,<mekanism:plasticblock:15>], 
	[<mekanism:plasticblock:15>,<appliedenergistics2:cell_workbench>,<mekanism:plasticblock:15>], 
	[<mekanism:plasticblock:15>,<mekanism:plasticblock:15>,<mekanism:plasticblock:15>]
]);

//聚合太阳能
recipes.addShaped(<modularmachinery:ymg_aggregate_solar_energy_controller>,[
	[<contenttweaker:tungstenplate>,<super_solar_panels:crafting:17>,<contenttweaker:tungstenplate>], 
	[<contenttweaker:tungstenplate>,<mets:te:18>,<contenttweaker:tungstenplate>], 
	[<contenttweaker:tungstencoil>,<enderio:item_capacitor_crystalline>,<contenttweaker:tungstencoil>]
]);

//粉碎机
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_grinder_factory_controller", "YMG_Assembling_machine", 2400)
.addEnergyPerTickInput(50000)
.addFluidInput(<liquid:empoweredoil> * 4000)
.addItemInputs([
	<contenttweaker:tungstencasing>,
	<modularmachinery:crushing_wheels>,
	<contenttweaker:tungstenmotor> * 2,
	<ore:gearPlatinum> * 64,
	<ore:gearElectrumFlux> * 64
])
.addItemOutput(<modularmachinery:ymg_grinder_factory_controller>)
.build();

//流体渗入器
recipes.addShaped(<modularmachinery:ymg_fluid_infiltration_device_factory_controller>,[
    [<ore:plateIridium>,<ore:plateIridium>,<ore:plateIridium>],
    [<actuallyadditions:block_crystal_empowered:3>,<exnihilocreatio:block_barrel1>,<actuallyadditions:block_crystal_empowered:3>],
    [<actuallyadditions:block_crystal_empowered:5>,<contenttweaker:iridiumcasing>,<actuallyadditions:block_crystal_empowered:5>]
]);

//电磁炼化合金工厂
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_electromagnetic_refining_factory_factory_controller", "YMG_Assembling_machine", 2400)
.addEnergyPerTickInput(100000)
.addItemInputs([
	<contenttweaker:tungstencasing> * 4,
	<ore:blockCrystalFlux>,
	<contenttweaker:tungstencoil> * 12,
	<ore:blockElectricalSteel> * 8,
	<appliedenergistics2:quartz_vibrant_glass> * 32
])
.addItemOutput(<modularmachinery:ymg_electromagnetic_refining_factory_factory_controller>)
.build();

//晶体催生仓
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_crystal_spawned_bin_controller", "YMG_Assembling_machine", 2400)
.addEnergyPerTickInput(100000)
.addItemInputs([
	<modularmachinery:blockcasing>,
	<mekanism:machineblock2:8>,
	<appliedenergistics2:quartz_growth_accelerator> * 3,
	<ore:plateUUMatter> * 4
])
.addItemOutput(<modularmachinery:ymg_crystal_spawned_bin_controller>)
.build();

//共振聚星缸
mods.astralsorcery.Altar.addConstellationAltarRecipe("mypackname:shaped/internal/altar/ymg_resonating_well_controller", <modularmachinery:ymg_resonating_well_controller>, 3500, 100, [
	<botania:managlass>,<astralsorcery:itemtunedcelestialcrystal>,<botania:managlass>,
	<astralsorcery:blockmarble:4>,<astralsorcery:blockwell>,<astralsorcery:blockmarble:4>,
	<astralsorcery:blockmarble:2>,<ore:ingotTerrasteel>,<astralsorcery:blockmarble:2>,
	<ore:plateAstralStarmetal>,<ore:plateAstralStarmetal>,<contenttweaker:tungstencasing>,<contenttweaker:tungstencasing>,
	<ore:plateAstralStarmetal>,<ore:plateAstralStarmetal>,<ore:plateAstralStarmetal>,<ore:plateAstralStarmetal>,
	<contenttweaker:tungstencasing>,<contenttweaker:tungstencasing>,<astralsorcery:blockmarble:2>,<astralsorcery:blockmarble:2>
]);

//魔力释能水晶
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_mana_relief_crystals_factory_controller_1", "YMG_Mana_Aggregation_Altar", 3600)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mods"] = isNull(map["Mods"]) ? 0 as long : map["Mods"].asInt();
    if (map["Mods"].asInt() != 1) {
        event.setFailed("§c该模式不支持此配方！");
    }
})
.addManaInput(1000000)
.addItemInputs([
    <ic2:te:22> * 4,
    <enderio:block_cap_bank:3> * 16,
    <botania:pool:3> * 4,
    <botania:prism> * 64,
    <ic2:containment_plating> * 64,
	<contenttweaker:tungstenplate> * 16
])
.addItemOutput(<modularmachinery:ymg_mana_relief_crystals_factory_controller>)
.addRecipeTooltip(
    "§9模式：§e泰拉凝聚"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_mana_relief_crystals_factory_controller_2", "YMG_Mana_Aggregation_Altar", 3600)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mods"] = isNull(map["Mods"]) ? 0 as long : map["Mods"].asInt();
    if (map["Mods"].asInt() != 1) {
        event.setFailed("§c该模式不支持此配方！");
    }
})
.addFluidInput(<liquid:fluidedmana> * 1000)
.addItemInputs([
    <ic2:te:22> * 4,
    <enderio:block_cap_bank:3> * 16,
    <botania:pool:3> * 4,
    <botania:prism> * 64,
    <ic2:containment_plating> * 64,
	<contenttweaker:tungstenplate> * 16
])
.addItemOutput(<modularmachinery:ymg_mana_relief_crystals_factory_controller>)
.addRecipeTooltip(
    "§9模式：§e泰拉凝聚"
)
.build();

//魔力聚合祭坛
mods.botania.RuneAltar.addRecipe(<modularmachinery:ymg_mana_aggregation_altar_controller>, [<contenttweaker:tungstencasing>,<botania:terraplate>,<ore:gaiaIngot>,<botania:livingrock:1>,<botania:livingrock:1>,<botania:livingrock:1>,<botania:livingrock:1>,<ore:blockLumium>], 1000000);
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_mana_aggregation_altar_controller_1", "YMG_Rune_Well", 20)
.setThreadName(YMG_Rune_Well_Runealtar_String)
.setParallelized(false)
.addManaInput(1000000)
.addItemInputs([
    <contenttweaker:tungstencasing>,
    <botania:terraplate>,
    <ore:gaiaIngot>,
    <botania:livingrock:1> * 4,
    <ore:blockLumium>
])
.addItemOutput(<modularmachinery:ymg_mana_aggregation_altar_controller>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_mana_aggregation_altar_controller_2", "YMG_Rune_Well", 20)
.setThreadName(YMG_Rune_Well_Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 1000)
.addItemInputs([
    <contenttweaker:tungstencasing>,
    <botania:terraplate>,
    <ore:gaiaIngot>,
    <botania:livingrock:1> * 4,
    <ore:blockLumium>
])
.addItemOutput(<modularmachinery:ymg_mana_aggregation_altar_controller>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//魔力动态储罐
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_mana_dynamic_storage_tank_factory_controller_1", "YMG_Mana_Aggregation_Altar", 2400)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mods"] = isNull(map["Mods"]) ? 0 as long : map["Mods"].asInt();
    if (map["Mods"].asInt() != 1) {
        event.setFailed("§c该模式不支持此配方！");
    }
})
.addManaInput(1000000)
.addItemInputs([
    <contenttweaker:tungstencasing>,
	<botania:spreader:3> * 8,
	<botania:pool:3> * 8,
	<enderio:block_tank:1> * 64
])
.addItemOutput(<modularmachinery:ymg_mana_dynamic_storage_tank_factory_controller>)
.addRecipeTooltip(
    "§9模式：§e泰拉凝聚"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_mana_dynamic_storage_tank_factory_controller_2", "YMG_Mana_Aggregation_Altar", 2400)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mods"] = isNull(map["Mods"]) ? 0 as long : map["Mods"].asInt();
    if (map["Mods"].asInt() != 1) {
        event.setFailed("§c该模式不支持此配方！");
    }
})
.addFluidInput(<liquid:fluidedmana> * 1000)
.addItemInputs([
    <contenttweaker:tungstencasing>,
	<botania:spreader:3> * 8,
	<botania:pool:3> * 8,
	<enderio:block_tank:1> * 64
])
.addItemOutput(<modularmachinery:ymg_mana_dynamic_storage_tank_factory_controller>)
.addRecipeTooltip(
    "§9模式：§e泰拉凝聚"
)
.build();

//热加工台
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_thermal_processing_table_controller", "YMG_Assembling_machine", 2400)
.addEnergyPerTickInput(50000)
.addItemInputs([
	<contenttweaker:iridiumcasing>,
	<ic2:te:12>,
	<ore:plateDenseIridium> * 16,
	<appliedenergistics2:material:22> * 32,
	<appliedenergistics2:material:23> * 32,
	<appliedenergistics2:material:24> * 32
])
.addItemOutput(<modularmachinery:ymg_thermal_processing_table_controller>)
.build();

//热电子元件装配机
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:ymg_thermal_electronic_component_assembly_machine_factory_controller>, [
	[<contenttweaker:mysteriousiceplate>, <contenttweaker:tungstencasing>, <contenttweaker:mysteriousiceplate>, <contenttweaker:tungstencasing>, <contenttweaker:mysteriousiceplate>], 
	[<contenttweaker:tungstencasing>, <threng:material:6>, <ore:blockEnergium>, <threng:material:6>, <contenttweaker:tungstencasing>], 
	[<contenttweaker:mysteriousiceplate>, <ore:blockEnergium>, <modularmachinery:ymg_thermal_processing_table_controller>, <ore:blockEnergium>, <contenttweaker:mysteriousiceplate>], 
	[<contenttweaker:tungstencasing>, <threng:material:6>, <threng:material:13>, <threng:material:6>, <contenttweaker:tungstencasing>], 
	[<contenttweaker:mysteriousiceplate>, <contenttweaker:tungstencasing>, <contenttweaker:mysteriousiceplate>, <contenttweaker:tungstencasing>, <contenttweaker:mysteriousiceplate>]
]);

//真空玻璃制造厂
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_vacuum_glass_manufacturing_plant_factory_controller", "YMG_Assembling_machine", 2400)
.addEnergyPerTickInput(50000)
.addItemInputs([
	<mekanism:machineblock:7>,
	<contenttweaker:tungstenplate> * 16,
	<ore:plateSignalum> * 16,
	<ore:plateDenseLead> * 8,
	<contenttweaker:iridiumcoil> * 8
])
.addItemOutput(<modularmachinery:ymg_vacuum_glass_manufacturing_plant_factory_controller>)
.build();

//数字化血之祭坛
mods.bloodmagic.BloodAltar.addRecipe(<modularmachinery:ymg_digital_altar_controller>, <contenttweaker:tungstencasing>, 4, 80000, 1000, 1000);

//双子塔-焱
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_gemini_blazing_controller", "YMG_Thermal_Electronic_Component_Assembly_Machine", 1200)
.addEnergyPerTickInput(24000000)
.addItemInputs([
    <modularmachinery:ymg_electromagnetic_refining_factory_factory_controller>,
    <ore:gemCrystalFlux> * 64,
    <ore:plateElectrumFlux> * 64,
    <contenttweaker:mysteriousiceplate> * 64,
    <threng:material:14>,
	<ore:ingotUUMatter> * 16
])
.addItemOutput(<modularmachinery:ymg_gemini_blazing_controller>)
.build();

//双子塔-霜
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_gemini_frost_controller", "YMG_Thermal_Electronic_Component_Assembly_Machine", 1200)
.addEnergyPerTickInput(24000000)
.addItemInputs([
    <modularmachinery:ymg_electromagnetic_refining_factory_factory_controller>,
    <ore:gemGelid> * 64,
	<ore:plateGelidEnderium> * 64,
    <contenttweaker:mysteriousiceplate> * 64,
    <threng:material:14>,
	<ore:ingotUUMatter> * 16
])
.addItemOutput(<modularmachinery:ymg_gemini_frost_controller>)
.build();

//喷涂式镀层覆膜机
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:ymg_spray_on_coating_laminator_controller>, [
	[<mekanism:plasticblock:15>, <mekanism:plasticblock:15>, <fluxnetworks:fluxblock>, <mekanism:plasticblock:15>, <mekanism:plasticblock:15>], 
	[<mekanism:plasticblock:15>, <contenttweaker:mysteriousiceplate>, <super_solar_panels:crafting:44>, <contenttweaker:mysteriousiceplate>, <mekanism:plasticblock:15>], 
	[<fluxnetworks:fluxblock>, <mets:super_circuit>, <modularmachinery:ymg_fluid_infiltration_device_factory_controller>, <mets:super_circuit>, <fluxnetworks:fluxblock>], 
	[<mekanism:plasticblock:15>, <contenttweaker:mysteriousiceplate>, <threng:material:6>, <contenttweaker:mysteriousiceplate>, <mekanism:plasticblock:15>], 
	[<mekanism:plasticblock:15>, <mekanism:plasticblock:15>, <fluxnetworks:fluxblock>, <mekanism:plasticblock:15>, <mekanism:plasticblock:15>]
]);

//地核压力模拟装置
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_core_pressure_analog_devices_controller", "YMG_Gemini_Blazing", 3600)
.addEnergyPerTickInput(10000000)
.addFluidInputs([
    <liquid:pyrotheum> * 64000,
    <liquid:mirion> * 1296
    ])
.addItemInputs([
    <mets:te:7> * 16,
    <mets:field_generator>
])
.addItemOutput(<modularmachinery:ymg_core_pressure_analog_devices_controller>)
.build();

//梦蓝魔力池
mods.botaniatweaks.Agglomeration.addRecipe(<modularmachinery:ymg_dream_blue_pool_factory_controller>,
[<modularmachinery:ymg_fluid_infiltration_device_factory_controller>,<contenttweaker:tungstenringcoil>,<botania:pool:3>,<extrabotany:material:1>,<botania:sparkupgrade:1>],
500000,0xFFFFFF,0x79FFFB,
<botania:alchemycatalyst>,<botania:storage:1>,<botania:dreamwood:5>,
null,null,null);

//铸体仪式
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:ymg_body_casting_ceremony_controller>, [
	[<ore:blockBloodInfusedGlitch>, <bloodmagic:blood_shard>, <minecraft:beacon>, <bloodmagic:blood_shard>, <ore:blockBloodInfusedGlitch>], 
	[<bloodmagic:blood_shard>, <bloodmagic:demon_brick_2:10>, <bloodmagic:ritual_controller>, <bloodmagic:demon_brick_2:10>, <bloodmagic:blood_shard>], 
	[<minecraft:beacon>, <bloodmagic:ritual_controller>, <bloodmagic:altar>, <bloodmagic:ritual_controller>, <minecraft:beacon>], 
	[<ore:blockSoularium>, <bloodmagic:demon_brick_2:10>, <bloodmagic:ritual_controller>, <bloodmagic:demon_brick_2:10>, <ore:blockSoularium>], 
	[<ore:blockBloodInfusedGlitch>, <ore:blockSoularium>, <deepmoblearningbm:digital_agonizer>, <ore:blockSoularium>, <ore:blockBloodInfusedGlitch>]
]);

//地狱深渊
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_nether_abyss_controller", "YMG_Assembling_machine", 1200)
.addEnergyPerTickInput(250000)
.addItemInputs([
    <contenttweaker:iridiumcasing> * 4,
    <actuallyadditions:block_misc:8> * 64,
    <contenttweaker:iridiumringcoil> * 4,
    <botania:bifrostperm> * 16
])
.addItemOutput(<modularmachinery:ymg_nether_abyss_controller>)
.build();

//太阳能能源输出转换器
recipes.addShaped(<modularmachinery:ymg_solar_energy_output_adapter_controller>,[
    [<super_solar_panels:crafting:17>,<super_solar_panels:crafting:17>,<super_solar_panels:crafting:17>],
    [<mekanism:controlcircuit:2>,<contenttweaker:iridiumcasing>,<mekanism:controlcircuit:2>],
    [<thermaldynamics:duct_0:5>,<ic2:te:80>,<thermaldynamics:duct_0:5>]
]);

//原子对撞机MK I
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_atomic_collider_mk_i_controller", "YMG_Gemini_Frost", 12000)
.addEnergyPerTickInput(20000000)
.addFluidInput(<liquid:cryotheum> * 8192000)
.addItemInputs([
    <mekanism:controlcircuit:3> * 64,
    <mekanism:controlcircuit:3> * 64,
    <thermaldynamics:duct_0:5> * 64,
    <gravisuite:crafting:1> * 64,
    <contenttweaker:mysteriousicecoil> * 16,
    <environmentaltech:structure_frame_1> * 4,
    <mets:field_generator> * 4
])
.addItemOutput(<modularmachinery:ymg_atomic_collider_mk_i_controller>)
.build();

//流体絮凝器
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:ymg_fluid_flocculator_controller>, [
	[<enderio:block_reinforced_obsidian>, <itemfilters:filter>, <contenttweaker:olihacon>, <itemfilters:filter>, <enderio:block_reinforced_obsidian>], 
	[<itemfilters:filter>, <enderio:block_industrial_insulation>, <mekanism:filterupgrade>, <enderio:block_industrial_insulation>, <itemfilters:filter>], 
	[<contenttweaker:nano_rose_red_metal>, <mekanism:filterupgrade>, <actuallyadditions:block_xp_solidifier>, <mekanism:filterupgrade>, <contenttweaker:nano_rose_red_metal>], 
	[<itemfilters:filter>, <enderio:block_industrial_insulation>, <mekanism:filterupgrade>, <enderio:block_industrial_insulation>, <itemfilters:filter>], 
	[<enderio:block_reinforced_obsidian>, <itemfilters:filter>, <mets:living_circuit>, <itemfilters:filter>, <enderio:block_reinforced_obsidian>]
]);

//进阶热能离心机
recipes.addShaped(<modularmachinery:ymg_advanced_centrifuge_controller>,[
    [<contenttweaker:iridiumcoil>,<ic2:mining_laser>,<contenttweaker:iridiumcoil>],
    [<ore:plateDenseIridium>,<contenttweaker:iridiumcasing>,<ore:plateDenseIridium>],
    [<ore:plateDenseIridium>,<contenttweaker:iridiummotor>,<ore:plateDenseIridium>]
]);

//磁通量金属融合器
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:ymg_magnetic_flux_metal_fused_factory_controller>, [
	[<fluxnetworks:fluxblock>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <fluxnetworks:fluxblock>], 
	[<ore:ingotAdamant>, <ore:gearUUMatter>, <mekanismgenerators:generator:9>, <ore:gearUUMatter>, <ore:ingotAdamant>], 
	[<mets:neutron_plate>, <contenttweaker:tungstenringcoil>, <modularmachinery:ymg_electromagnetic_refining_factory_factory_controller>, <contenttweaker:tungstenringcoil>, <mets:neutron_plate>], 
	[<ore:ingotAdamant>, <contenttweaker:mysteriousicecoil>, <mekanismgenerators:generator:9>, <contenttweaker:mysteriousicecoil>, <ore:ingotAdamant>], 
	[<fluxnetworks:fluxblock>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <fluxnetworks:fluxblock>]
]);

//装配塔
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:ymg_assembly_line_controller>, [
	[<ic2:resource:11>, <ic2:resource:11>, <ic2:resource:11>, <ic2:resource:11>, <ic2:resource:11>], 
	[<mets:living_circuit>, <contenttweaker:olihacon>, <mets:living_circuit>, <contenttweaker:olihacon>, <mets:living_circuit>], 
	[<environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>, <modularmachinery:ymg_assembling_machine_controller>, <environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>], 
	[<mets:living_circuit>, <contenttweaker:olihacon>, <mets:living_circuit>, <contenttweaker:olihacon>, <mets:living_circuit>], 
	[<ic2:resource:11>, <ic2:resource:11>, <ic2:resource:11>, <ic2:resource:11>, <ic2:resource:11>]
]);

//云梦电容库
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_ym_capacitor_bank_factory_controller_1", "YMG_Assembly_Line", 6000)
.addEnergyPerTickInput(50000000)
.addFluidInputs([
    <liquid:gelid_enderium> * 82944,
    <liquid:liquidsuperheatedsodium> * 4000
])
.addItemInput(<mekanism:basicblock2:3>.withTag({tier: 3}) * 16).setTag("item_1")
.addItemInput(<mekanism:basicblock2:4>.withTag({tier: 3}) * 16).setTag("item_2")
.addItemInput(<super_solar_panels:machines:46>).setTag("item_3")
.addItemInput(<enderio:item_capacitor_stellar> * 8).setTag("item_4")
.addItemInput(<thermaldynamics:duct_0:5> * 64).setTag("item_5")
.addItemInput(<contenttweaker:ymcomputecore> * 4).setTag("item_6")
.addItemInput(<mets:thorium_battery>).setTag("item_7")
.addItemInput(<mets:thorium_battery>).setTag("item_8")
.addItemInput(<mets:thorium_battery>).setTag("item_9")
.addItemInput(<mets:thorium_battery>).setTag("item_10")
.addItemInput(<mets:thorium_battery>).setTag("item_11")
.addItemInput(<mets:thorium_battery>).setTag("item_12")
.addItemOutput(<modularmachinery:ymg_ym_capacitor_bank_factory_controller>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_ym_capacitor_bank_factory_controller_2", "YMG_Assembly_Line_Advanced", 6000)
.addEnergyPerTickInput(50000000)
.addFluidInputs([
    <liquid:gelid_enderium> * 82944,
    <liquid:liquidsuperheatedsodium> * 4000
])
.addItemInput(<mekanism:basicblock2:3>.withTag({tier: 3}) * 16)
.addItemInput(<mekanism:basicblock2:4>.withTag({tier: 3}) * 16)
.addItemInput(<super_solar_panels:machines:46>)
.addItemInput(<enderio:item_capacitor_stellar> * 8)
.addItemInput(<thermaldynamics:duct_0:5> * 64)
.addItemInput(<contenttweaker:ymcomputecore> * 4)
.addItemInput(<mets:thorium_battery>)
.addItemInput(<mets:thorium_battery>)
.addItemInput(<mets:thorium_battery>)
.addItemInput(<mets:thorium_battery>)
.addItemInput(<mets:thorium_battery>)
.addItemInput(<mets:thorium_battery>)
.addItemOutput(<modularmachinery:ymg_ym_capacitor_bank_factory_controller>)
.build();

//特斯拉
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_tesla_factory_controller_1", "YMG_Assembly_Line", 24000)
.addEnergyPerTickInput(75000000)
.addFluidInputs([
    <liquid:cloud_seed_concentrated> * 1024000,
    <liquid:vapor_of_levity> * 1024000,
    <liquid:liquid_sunshine> * 1024000,
    <liquid:mica> * 28800,
])
.addItemInput(<extendedcrafting:trimmed:2>).setTag("item_1")
.addItemInput(<environmentaltech:erodium> * 10).setTag("item_2")
.addItemInput(<contenttweaker:teslacoil> * 4).setTag("item_3")
.addItemInput(<thermaldynamics:duct_0:5> * 64).setTag("item_4")
.addItemInput(<contenttweaker:teslashellplate> * 16).setTag("item_5")
.addItemInput(<contenttweaker:ymcomputecore> * 4).setTag("item_6")
.addItemInput(<contenttweaker:dilithiumlens>).setTag("item_7")
.addItemOutput(<modularmachinery:ymg_tesla_factory_controller>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_tesla_factory_controller_2", "YMG_Assembly_Line_Advanced", 24000)
.addEnergyPerTickInput(75000000)
.addFluidInputs([
    <liquid:cloud_seed_concentrated> * 1024000,
    <liquid:vapor_of_levity> * 1024000,
    <liquid:liquid_sunshine> * 1024000,
    <liquid:mica> * 28800,
])
.addItemInput(<extendedcrafting:trimmed:2>)
.addItemInput(<environmentaltech:erodium> * 10)
.addItemInput(<contenttweaker:teslacoil> * 4)
.addItemInput(<thermaldynamics:duct_0:5> * 64)
.addItemInput(<contenttweaker:teslashellplate> * 16)
.addItemInput(<contenttweaker:ymcomputecore> * 4)
.addItemInput(<contenttweaker:dilithiumlens>)
.addItemOutput(<modularmachinery:ymg_tesla_factory_controller>)
.build();


//折跃裂隙
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_jumping_rift_controller_1", "YMG_Assembly_Line", 18000)
.addEnergyPerTickInput(50000000)
.addItemInput(<modularmachinery:ymg_nether_abyss_controller>).setTag("item_1")
.addItemInput(<fluxnetworks:fluxblock> * 64).setTag("item_2")
.addItemInput(<environmentaltech:structure_frame_1> * 4).setTag("item_3")
.addItemInput(<minecraft:chorus_fruit_popped> * 64).setTag("item_4")
.addFluidInputs([
    <liquid:melodic_alloy> * 576000,
    <liquid:isaac_newton> * 64000
])
.addItemOutput(<modularmachinery:ymg_jumping_rift_controller>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_jumping_rift_controller_2", "YMG_Assembly_Line_Advanced", 18000)
.addEnergyPerTickInput(50000000)
.addItemInput(<modularmachinery:ymg_nether_abyss_controller>)
.addItemInput(<fluxnetworks:fluxblock> * 64)
.addItemInput(<environmentaltech:structure_frame_1> * 4)
.addItemInput(<minecraft:chorus_fruit_popped> * 64)
.addFluidInputs([
    <liquid:melodic_alloy> * 576000,
    <liquid:isaac_newton> * 64000
])
.addItemOutput(<modularmachinery:ymg_jumping_rift_controller>)
.build();

//磁导龙聚塔
FusionCrafting.add(
    <modularmachinery:ymg_magnetic_permeability_dragon_aggregation_tower_controller>, <modularmachinery:ymg_mana_aggregation_altar_controller>,
    FusionCrafting.BASIC, 1000000,
    [
        <draconicevolution:draconic_core>,<draconicevolution:draconic_core>,
        <draconicevolution:draconic_core>,<draconicevolution:draconic_core>,
        <botania:manaresource:15>,<botania:manaresource:15>,
        <contenttweaker:olihacon>,<contenttweaker:olihacon>,
        <plustic:mirioningot>,<plustic:mirioningot>,
        <plustic:mirioningot>,<plustic:mirioningot>,
        <environmentaltech:erodium>,<environmentaltech:erodium>
    ]
);

//盖亚湮灭者
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_gaia_guardian_annihilation_altar_controller", "YMG_Mana_Aggregation_Altar", 24000)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mods"] = isNull(map["Mods"]) ? 0 as long : map["Mods"].asInt();
    if (map["Mods"].asInt() != 1) {
        event.setFailed("§c该模式不支持此配方！");
    }
})
.addFluidInput(<liquid:fluidedmana> * 10000)
.addItemInput(<extrabotany:coregod>).setChance(0.0)
.addItemInputs([
    <draconicevolution:wyvern_core> * 8,
    <extrabotany:specialbag> * 12
])
.addItemOutput(<modularmachinery:ymg_gaia_guardian_annihilation_altar_controller>)
.addRecipeTooltip(
    "§9模式：§e泰拉凝聚"
)
.build();

//马铃薯的悲歌
mods.extendedcrafting.CombinationCrafting.addRecipe(<modularmachinery:ymg_sad_potatoes_controller>, 1000000 * 1200, 1000000, <contenttweaker:mysteriousicecasing>, 
[
    <botania_tweaks:compressed_tiny_potato_5>,<extrabotany:material:3>,
    <botania_tweaks:compressed_tiny_potato_5>,<extrabotany:material:3>,
    <botania_tweaks:compressed_tiny_potato_5>,<extrabotany:material:3>,
    <botania_tweaks:compressed_tiny_potato_5>,<extrabotany:material:3>,
    <botania_tweaks:compressed_tiny_potato_5>,<extrabotany:material:3>,
    <botania_tweaks:compressed_tiny_potato_5>,<extrabotany:material:3>
]);

//恶魔融合祭坛
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:ymg_demon_fusion_altar_controller>, [
	[<ore:plateSentientMetal>, <bloodmagic:demon_crystal:1>, <bloodmagic:demon_pylon>, <bloodmagic:demon_crystal:3>, <ore:plateSentientMetal>], 
	[<bloodmagic:demon_crystal:4>, <bloodmagic:blood_shard>, <bloodmagic:demon_crystal>, <bloodmagic:blood_shard>, <bloodmagic:demon_crystal:2>], 
	[<bloodmagic:slate:4>, <bloodmagic:blood_shard>, <bloodmagic:blood_rune>, <bloodmagic:blood_shard>, <bloodmagic:slate:4>], 
	[<bloodmagic:blood_rune>, <bloodmagic:slate:4>, <bloodmagic:blood_rune>, <bloodmagic:slate:4>, <bloodmagic:blood_rune>], 
	[<bloodmagic:blood_rune>, <bloodmagic:blood_rune>, <ore:blockSentientMetal>, <bloodmagic:blood_rune>, <bloodmagic:blood_rune>]
]);

//星光璀璨
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_star_resplendent_controller", "YMG_Magnetic_Permeability_Dragon_Aggregation_Tower", 36000)
.addEnergyPerTickInput(150000000)
.addFluidInputs([
    <liquid:astralsorcery.liquidstarlight> * 1024000,
    <liquid:mana> * 25000
])
.addItemInputs([
    <plustic:mirionblock> * 16,
    <contenttweaker:mysteriousicecasing> * 16,
    <modularmachinery:ymg_jumping_rift_controller>,
    <draconicevolution:crafting_injector:1> * 4,
    <contenttweaker:ymcomputecore> * 4,
    <contenttweaker:olihacon> * 32
])
.addItemOutput(<modularmachinery:ymg_star_resplendent_controller>)
.build();

//熔化炉
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:ymg_melting_furnace_controller>, [
	[null, <enderio:block_reinforced_obsidian>, <futuremc:netherite_ingot>, <enderio:block_reinforced_obsidian>, null], 
	[<modularmachinery:blockcasing:1>, <enderio:block_reinforced_obsidian>, <futuremc:netherite_ingot>, <enderio:block_reinforced_obsidian>, <modularmachinery:blockcasing:1>], 
	[<modularmachinery:blockcasing:2>, <futuremc:netherite_ingot>, <futuremc:netherite_ingot>, <futuremc:netherite_ingot>, <modularmachinery:blockcasing:2>], 
	[<modularmachinery:blockcasing:2>, <contenttweaker:tungstenblock>, <tconstruct:smeltery_controller>, <contenttweaker:tungstenblock>, <modularmachinery:blockcasing:2>], 
	[<threng:material:6>, <contenttweaker:tungstenblock>, <thermalexpansion:machine:6>, <contenttweaker:tungstenblock>, <threng:material:6>]
]);

//ECO-L4-可扩展存储子系统主机
mods.modularmachinery.RecipeBuilder.newBuilder("extendable_digital_storage_subsystem_l4", "YMG_Thermal_Electronic_Component_Assembly_Machine", 2400)
.addEnergyPerTickInput(60000000)
.addItemInputs([
    <mets:super_iridium_compress_plate> * 16,
    <appliedenergistics2:controller>,
    <mets:living_circuit> * 4,
    <appliedenergistics2:view_cell>,
    <ic2:component_heat_vent> * 16,
    <ic2:overclocked_heat_vent> * 16
])
.addItemOutput(<novaeng_core:extendable_digital_storage_subsystem_l4>)
.build();

//ECO-L6-可扩展存储子系统主机
mods.modularmachinery.RecipeBuilder.newBuilder("extendable_digital_storage_subsystem_l6_1", "YMG_Assembly_Line", 6000)
.addEnergyPerTickInput(20000000)
.addFluidInputs([
    <liquid:ic2uu_matter> * 16000
])
.addItemInput(<novaeng_core:extendable_digital_storage_subsystem_l4>).setTag("item_1")
.addItemInput(<contenttweaker:olihacon> * 10).setTag("item_2")
.addItemInput(<gravisuite:crafting:2> * 16).setTag("item_3")
.addItemInput(<contenttweaker:ymcomputecore> * 4).setTag("item_4")
.addItemOutput(<novaeng_core:extendable_digital_storage_subsystem_l6>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("extendable_digital_storage_subsystem_l6_2", "YMG_Assembly_Line_Advanced", 6000)
.addEnergyPerTickInput(20000000)
.addFluidInputs([
    <liquid:ic2uu_matter> * 16000
])
.addItemInput(<novaeng_core:extendable_digital_storage_subsystem_l4>)
.addItemInput(<contenttweaker:olihacon> * 10)
.addItemInput(<gravisuite:crafting:2> * 16)
.addItemInput(<contenttweaker:ymcomputecore> * 4)
.addItemOutput(<novaeng_core:extendable_digital_storage_subsystem_l6>)
.build();

//ECO-L4-可扩展合成子系统主机
mods.modularmachinery.RecipeBuilder.newBuilder("extendable_fabricator_subsystem_l4", "YMG_Thermal_Electronic_Component_Assembly_Machine", 2400)
.addEnergyPerTickInput(60000000)
.addItemInputs([
    <threng:big_assembler> * 4,
    <appliedenergistics2:controller>,
    <extendedcrafting:material:15> * 16,
    <mets:living_circuit> * 4,
    <threng:material:4> * 8,
    <ic2:component_heat_vent> * 16,
    <ic2:overclocked_heat_vent> * 16
])
.addItemOutput(<novaeng_core:extendable_fabricator_subsystem_l4>)
.build();

//ECO-L6-可扩展合成子系统主机
mods.modularmachinery.RecipeBuilder.newBuilder("extendable_fabricator_subsystem_l6_1", "YMG_Assembly_Line", 6000)
.addEnergyPerTickInput(20000000)
.addFluidInputs([
    <liquid:ic2uu_matter> * 16000
])
.addItemInput(<novaeng_core:extendable_fabricator_subsystem_l4>).setTag("item_1")
.addItemInput(<contenttweaker:olihacon> * 10).setTag("item_2")
.addItemInput(<gravisuite:crafting:2> * 16).setTag("item_3")
.addItemInput(<contenttweaker:ymcomputecore> * 4).setTag("item_4")
.addItemOutput(<novaeng_core:extendable_fabricator_subsystem_l6>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("extendable_fabricator_subsystem_l6_2", "YMG_Assembly_Line_Advanced", 6000)
.addEnergyPerTickInput(20000000)
.addFluidInputs([
    <liquid:ic2uu_matter> * 16000
])
.addItemInput(<novaeng_core:extendable_fabricator_subsystem_l4>)
.addItemInput(<contenttweaker:olihacon> * 10)
.addItemInput(<gravisuite:crafting:2> * 16)
.addItemInput(<contenttweaker:ymcomputecore> * 4)
.addItemOutput(<novaeng_core:extendable_fabricator_subsystem_l6>)
.build();

//构建器替换-共鸣祭坛
recipes.addShapeless(<modularmachinery:ymg_builder_attunement_altar_controller>,[<astralsorcery:blockattunementaltar>]);

//构建器替换-星辉转继器
recipes.addShapeless(<modularmachinery:ymg_builder_attunement_relay_controller>,[<astralsorcery:blockattunementrelay>]);

//构建器替换-仪式基座
recipes.addShapeless(<modularmachinery:ymg_builder_ritual_pedestal_controller>,[<astralsorcery:blockritualpedestal>]);

//构建器替换-星辉祭坛
recipes.addShapeless(<modularmachinery:ymg_builder_altar_1_controller>,[<astralsorcery:blockaltar:1>]);

//构建器替换-天辉祭坛
recipes.addShapeless(<modularmachinery:ymg_builder_altar_2_controller>,[<astralsorcery:blockaltar:2>]);

//构建器替换-五彩祭坛
recipes.addShapeless(<modularmachinery:ymg_builder_altar_3_controller>,[<astralsorcery:blockaltar:3>]);

//构建器替换-星能注入器
recipes.addShapeless(<modularmachinery:ymg_builder_star_light_infuser_controller>,[<astralsorcery:blockstarlightinfuser>]);

//构建器替换-强效聚能水晶
recipes.addShapeless(<modularmachinery:ymg_builder_collector_crystal_controller>,[<astralsorcery:blockmarble:4>]);

//幸运大乐透
recipes.addShaped(<modularmachinery:ymg_lucky_lotto_factory_controller>, [
	[<astralsorcery:blockmarble:1>,<moreplates:manasteel_plate>,<astralsorcery:blockmarble:1>], 
	[<moreplates:manasteel_plate>,<ftbquests:loot_crate_opener>,<moreplates:manasteel_plate>], 
	[<astralsorcery:blockmarble:1>,<moreplates:manasteel_plate>,<astralsorcery:blockmarble:1>]
]);

//符文灵井
recipes.addShaped(<modularmachinery:ymg_rune_well_factory_controller>, [
	[<ore:plateTerrasteel>,<botania:pylon:2>,<ore:plateTerrasteel>], 
	[<ore:plateGaia>,<botania:runealtar>,<ore:plateGaia>], 
	[<ore:plateTerrasteel>,<ore:ingotOrichalcos>,<ore:plateTerrasteel>]
]);

//热电离蒸馏塔
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_thermal_ionization_distillation_column_controller", "YMG_Gemini_Blazing", 2400)
.addEnergyPerTickInput(8000000)
.addFluidInputs([
    <liquid:pyrotheum> * 64000,
])
.addItemInputs([
    <mekanism:basicblock:14> * 4,
    <ore:plateDenseCopper> * 64,
    <moreplates:electrical_steel_plate> * 64,
    <contenttweaker:mysteriousicecoil> * 8,
    <mets:neutron_plate> * 4,
    <mets:living_circuit>
])
.addItemOutput(<modularmachinery:ymg_thermal_ionization_distillation_column_controller>)
.build();

//1x燃料发电机
recipes.addShaped(<modularmachinery:ymg_fuel_generators_1x_controller>,[
    [<ore:plateRefinedObsidian>,<ore:plateRefinedObsidian>,<ore:plateRefinedObsidian>],
    [<contenttweaker:tungstencasing>,<modularmachinery:ymg_thermal_power_plant_controller>,<contenttweaker:tungstencasing>],
    [<contenttweaker:tungstencasing>,<enderio:item_capacitor_melodic>,<contenttweaker:tungstencasing>]
]);

//生物质发酵池
recipes.addShaped(<modularmachinery:ymg_biomass_fermentation_tank_controller>,[
    [<mekanism:reinforcedplasticblock:8>,<enderio:block_end_iron_bars>,<mekanism:reinforcedplasticblock:8>],
    [<ic2:advanced_heat_vent>,<enderio:block_enhanced_vat>,<ic2:advanced_heat_vent>],
    [<contenttweaker:iridiumcoil>,<contenttweaker:iridiumcasing>,<contenttweaker:iridiumcoil>]
]);

//4x燃料发电机
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:ymg_fuel_generators_4x_factory_controller>, [
	[<extendedcrafting:trimmed>, <moreplates:crystalline_pink_slime_plate>, <moreplates:crystalline_pink_slime_plate>, <moreplates:crystalline_pink_slime_plate>, <extendedcrafting:trimmed>], 
	[<jaopca:block_glasshardenedancientdebris>, <modularmachinery:ymg_fuel_generators_1x_controller>, <threng:material:6>, <modularmachinery:ymg_fuel_generators_1x_controller>, <jaopca:block_glasshardenedancientdebris>], 
	[<jaopca:block_glasshardenedancientdebris>, <contenttweaker:mysteriousicecoil>, <mets:neutron_plate>, <contenttweaker:mysteriousicecoil>, <jaopca:block_glasshardenedancientdebris>], 
	[<jaopca:block_glasshardenedancientdebris>, <modularmachinery:ymg_fuel_generators_1x_controller>, <threng:material:6>, <modularmachinery:ymg_fuel_generators_1x_controller>, <jaopca:block_glasshardenedancientdebris>], 
	[<extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <threng:material:14>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>]
]);

//厨余发电机
recipes.addShaped(<modularmachinery:ymg_kitchen_generator_controller>,[
    [<ore:plateIridium>,<modularmachinery:blockcasing:1>,<ore:plateIridium>],
    [<ore:plateIridium>,<mekanismgenerators:generator:4>,<ore:plateIridium>],
    [<modularmachinery:blockcasing:2>,<cookingforblockheads:kitchen_floor>,<modularmachinery:blockcasing:2>]
]);

//末影钢熔炉
recipes.addShaped(<modularmachinery:ymg_endsteel_furnace_controller>,[
    [<ore:plateEndSteel>,<contenttweaker:iridiumcoil>,<ore:plateEndSteel>],
    [<gravisuite:crafting:2>,<contenttweaker:iridiumcoil>,<gravisuite:crafting:2>],
    [<enderio:item_material:66>,<ic2:te:54>,<enderio:item_material:66>]
]);

//复仇之烛
recipes.addShaped(<modularmachinery:ymg_vengeance_candle_controller>,[
    [null,<futuremc:soul_fire_lantern>,null],
    [<futuremc:soul_fire_lantern>,<bloodmagic:demon_light:3>,<futuremc:soul_fire_lantern>],
    [<bloodmagic:demon_wall_1:3>,<bloodmagic:demon_brick_2:13>,<bloodmagic:demon_wall_1:3>]
]);

//灵魂剥离祭坛
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_spirit_stripped_altar_factory_controller", "YMG_Demon_Fusion_Altar", 2400)
.addLifeEssenceInput(1200, true)
.addItemInputs([
    <modularmachinery:ymg_digital_altar_controller>,
    <enderio:item_material:53> * 16,
    <futuremc:soul_fire_lantern> * 64,
    <thermalfoundation:material:1028> * 4
])
.addItemOutput(<modularmachinery:ymg_spirit_stripped_altar_factory_controller>)
.build();

//大气游离中子汲取装置
// mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:ymg_atmospheric_free_neutron_extraction_device_controller>, [
// 	[<moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <avaritia:block_resource:2>, <avaritia:block_resource:2>, <avaritia:block_resource:2>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>], 
// 	[<moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <avaritia:block_resource:2>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>, <moreplates:neutronium_plate>], 
// 	[<environmentaltech:structure_frame_3>, <moreplates:neutronium_plate>, <moreplates:neutronium_gear>, <avaritia:block_resource:2>, <moreplates:neutronium_gear>, <moreplates:neutronium_plate>, <environmentaltech:structure_frame_3>], 
// 	[<environmentaltech:structure_frame_3>, <environmentaltech:structure_frame_3>, <avaritia:block_resource>, <avaritia:neutron_collector>, <avaritia:block_resource>, <environmentaltech:structure_frame_3>, <environmentaltech:structure_frame_3>], 
// 	[<environmentaltech:structure_frame_3>, <extendedcrafting:storage:7>, <avaritia:block_resource>, <avaritia:resource:5>, <avaritia:block_resource>, <extendedcrafting:storage:7>, <environmentaltech:structure_frame_3>], 
// 	[<extendedcrafting:storage:7>, <extendedcrafting:storage:7>, <extendedcrafting:storage:7>, <avaritia:block_resource:2>, <extendedcrafting:storage:7>, <extendedcrafting:storage:7>, <extendedcrafting:storage:7>], 
// 	[<extendedcrafting:storage:7>, <extendedcrafting:storage:7>, <avaritia:block_resource:2>, <avaritia:block_resource:2>, <avaritia:block_resource:2>, <extendedcrafting:storage:7>, <extendedcrafting:storage:7>]
// ]);

//自动装配塔
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:ymg_assembly_line_advanced_factory_controller>, [
	[<environmentaltech:structure_frame_2>, <environmentaltech:structure_frame_2>, <environmentaltech:structure_frame_2>, <environmentaltech:structure_frame_2>, <environmentaltech:structure_frame_2>], 
	[<avaritiaitem:triphasic_alloy>, <avaritiaitem:triphasic_alloy>, <contenttweaker:ymcomputecore>, <avaritiaitem:triphasic_alloy>, <avaritiaitem:triphasic_alloy>], 
	[<moreplates:awakened_draconium_gear>, <moreplates:awakened_draconium_gear>, <modularmachinery:ymg_assembly_line_controller>, <moreplates:awakened_draconium_gear>, <moreplates:awakened_draconium_gear>], 
	[<avaritiaitem:triphasic_alloy>, <avaritiaitem:triphasic_alloy>, <contenttweaker:ymcomputecore>, <avaritiaitem:triphasic_alloy>, <avaritiaitem:triphasic_alloy>], 
	[<environmentaltech:structure_frame_2>, <environmentaltech:structure_frame_2>, <environmentaltech:structure_frame_2>, <environmentaltech:structure_frame_2>, <environmentaltech:structure_frame_2>]
]);

//园艺种植机
recipes.addShaped(<modularmachinery:ymg_agricultural_glass_greenhouses_factory_controller>,[
    [<ic2:fence>,<ic2:te:36>,<ic2:fence>],
    [<ic2:fence>,<thermalexpansion:machine:4>,<ic2:fence>],
    [<mets:advanced_heat_vent>,<contenttweaker:tungstencoil>,<mets:advanced_heat_vent>]
]);

//魔力萃取台
recipes.addShaped(<modularmachinery:ymg_mana_extraction_stage_factory_controller>,[
    [<minecraft:dragon_breath>,<botania:brewery>,<minecraft:dragon_breath>],
    [<botania:quartztypemana:2>,<botania:pylon:1>,<botania:quartztypemana:2>],
    [<botania:quartztypemana:1>,<ic2:te:45>,<botania:quartztypemana:1>]
]);

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

//元素精炼机
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_elemental_refinery_controller_2", "YMG_Assembly_Line_Advanced", 2400)
.addEnergyPerTickInput(50000000)
.addFluidInputs([
    <liquid:liquidsuperheatedsodium> * 100
])
.addItemInput(<modularmachinery:ymg_thermal_ionization_distillation_column_controller>)
.addItemInput(<contenttweaker:olihacon> * 4)
.addItemInput(<mets:field_generator> * 4)
.addItemInput(<contenttweaker:ymcomputecore> * 2)
.addItemInput(<ore:plateCrystallinePinkSlime> * 16)
.addItemOutput(<modularmachinery:ymg_elemental_refinery_controller>)
.build();

//矿石火锻厂
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:ymg_ore_processing_plant_factory_controller>, [
	[<environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>, <botania:blazeblock>, <environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>], 
	[<environmentaltech:structure_frame_1>, <contenttweaker:mysteriousicecoil>, <botania:blazeblock>, <contenttweaker:mysteriousicecoil>, <environmentaltech:structure_frame_1>], 
	[<environmentaltech:structure_frame_1>, <contenttweaker:mysteriousicecoil>, <botania:blazeblock>, <contenttweaker:mysteriousicecoil>, <environmentaltech:structure_frame_1>], 
	[<environmentaltech:structure_frame_1>, <contenttweaker:tungstenringcoil>, <contenttweaker:mysteriousicecoil>, <contenttweaker:tungstenringcoil>, <environmentaltech:structure_frame_1>], 
	[<environmentaltech:lightning_rod>, <mets:living_circuit>, <ic2:te:12>, <mets:living_circuit>, <environmentaltech:lightning_rod>]
]);

//星空展台
recipes.addShaped(<modularmachinery:ymg_stars_booth_controller>,[
    [<thermalfoundation:glass_alloy:6>,<contenttweaker:crystal_lens>,<thermalfoundation:glass_alloy:6>],
    [<thermalfoundation:glass_alloy:6>,<astralsorcery:itemrockcrystalsimple>,<thermalfoundation:glass_alloy:6>],
    [<ore:blockQuartz>,<botania:runealtar>,<ore:blockQuartz>]
]);

//深核钻探机
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_deepcore_driller_controller_1", "YMG_Assembly_Line", 24000)
.addEnergyPerTickInput(200000000)
.addFluidInputs([
])
.addItemInput(<contenttweaker:mysteriousicecasing> * 16).setTag("item_1")
.addItemInput(<modularmachinery:ymg_bedrock_laser_drills_factory_controller> * 16).setTag("item_2")
.addItemInput(<contenttweaker:carbonfiber> * 64).setTag("item_3")
.addItemInput(<gravisuite:crafting:1> * 64).setTag("item_4")
.addItemInput(<contenttweaker:ymcomputecore> * 4).setTag("item_5")
.addItemInput(<extendedcrafting:material:10>).setTag("item_6")
.addItemInput(<contenttweaker:erodium_crystal_core> * 4).setTag("item_7")
.addItemOutput(<modularmachinery:ymg_deepcore_driller_controller>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_deepcore_driller_controller_2", "YMG_Assembly_Line_Advanced", 24000)
.addEnergyPerTickInput(200000000)
.addFluidInputs([
])
.addItemInput(<contenttweaker:mysteriousicecasing> * 16)
.addItemInput(<modularmachinery:ymg_bedrock_laser_drills_factory_controller> * 16)
.addItemInput(<contenttweaker:carbonfiber> * 64)
.addItemInput(<gravisuite:crafting:1> * 64)
.addItemInput(<contenttweaker:ymcomputecore> * 4)
.addItemInput(<extendedcrafting:material:10>)
.addItemInput(<contenttweaker:erodium_crystal_core> * 4)
.addItemOutput(<modularmachinery:ymg_deepcore_driller_controller>)
.build();

//气分子纤维纺丝机
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_vacuum_whirlwind_loom_controller_1", "YMG_Assembly_Line", 12000)
.addEnergyPerTickInput(40000000)
.addFluidInputs([
])
.addItemInput(<mekanismgenerators:generator:9> * 64).setTag("item_1")
.addItemInput(<thermaldynamics:duct_0:5> * 64).setTag("item_2")
.addItemInput(<mekanism:transmitter>.withTag({tier: 3}) * 64).setTag("item_3")
.addItemInput(<mets:field_generator> * 16).setTag("item_4")
.addItemOutput(<modularmachinery:ymg_vacuum_whirlwind_loom_controller>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_vacuum_whirlwind_loom_controller_2", "YMG_Assembly_Line_Advanced", 12000)
.addEnergyPerTickInput(40000000)
.addFluidInputs([
])
.addItemInput(<mekanismgenerators:generator:9> * 64)
.addItemInput(<thermaldynamics:duct_0:5> * 64)
.addItemInput(<mekanism:transmitter>.withTag({tier: 3}) * 64)
.addItemInput(<mets:field_generator> * 16)
.addItemOutput(<modularmachinery:ymg_vacuum_whirlwind_loom_controller>)
.build();

//微观粒子扭曲仪
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:ymg_microscopic_particles_distort_controller>, [
	[null, <thermalfoundation:glass_alloy:5>, <thermalfoundation:glass_alloy:5>, <thermalfoundation:glass_alloy:5>, null], 
	[<thermalfoundation:glass_alloy:5>, <thermalfoundation:glass_alloy:6>, <mets:living_circuit>, <thermalfoundation:glass_alloy:6>, <thermalfoundation:glass_alloy:5>], 
	[<thermalfoundation:glass_alloy:5>, <mets:living_circuit>, <contenttweaker:stellajewelblock>, <mets:living_circuit>, <thermalfoundation:glass_alloy:5>], 
	[<thermalfoundation:glass_alloy:5>, <thermalfoundation:glass_alloy:6>, <mekanismmultiblockmachine:multiblockmachine:1>, <thermalfoundation:glass_alloy:6>, <thermalfoundation:glass_alloy:5>], 
	[<environmentaltech:lightning_rod>, <thermalfoundation:glass_alloy:5>, <modularmachinery:ymg_endsteel_furnace_controller>, <thermalfoundation:glass_alloy:5>, <environmentaltech:lightning_rod>]
]);

//离子注入刻蚀机
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:ymg_ion_implantation_etching_machine_controller>, [
	[<contenttweaker:mysteriousiceplate>, <contenttweaker:mysteriousiceplate>, <contenttweaker:mysteriousiceplate>, <contenttweaker:mysteriousiceplate>, <contenttweaker:mysteriousiceplate>], 
	[<contenttweaker:mysteriousiceplate>, <contenttweaker:olihacon>, <mets:living_circuit>, <contenttweaker:olihacon>, <contenttweaker:mysteriousiceplate>], 
	[<contenttweaker:mysteriousiceplate>, <mets:living_circuit>, <contenttweaker:mysteriousicecasing>, <mets:living_circuit>, <contenttweaker:mysteriousiceplate>], 
	[<contenttweaker:mysteriousiceplate>, <contenttweaker:olihacon>, <mets:living_circuit>, <contenttweaker:olihacon>, <contenttweaker:mysteriousiceplate>], 
	[<contenttweaker:mysteriousiceplate>, <contenttweaker:mysteriousiceplate>, <contenttweaker:mysteriousiceplate>, <contenttweaker:mysteriousiceplate>, <contenttweaker:mysteriousiceplate>]
]);

//量子物质引擎
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:ymg_substance_engine_controller>, [
	[<contenttweaker:quantumcasing>, <contenttweaker:quantumcasing>, <contenttweaker:quantumcasing>, <contenttweaker:quantumcasing>, <contenttweaker:quantumcasing>], 
	[<contenttweaker:quantumglass>, <tconevo:metal_block:8>, <mets:te:39>, <tconevo:metal_block:8>, <contenttweaker:quantumglass>], 
	[<contenttweaker:quantumglass>, <mets:te:40>, <mets:te:37>, <mets:te:38>, <contenttweaker:quantumglass>], 
	[<contenttweaker:quantumglass>, <tconevo:metal_block:8>, <mets:te:39>, <tconevo:metal_block:8>, <contenttweaker:quantumglass>], 
	[<contenttweaker:quantumcasing>, <super_solar_panels:machines:15>, <contenttweaker:quantumcasing>, <super_solar_panels:machines:15>, <contenttweaker:quantumcasing>]
]);

//原子序数机
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_atomic_shaper_controller_1", "YMG_Assembly_Line", 18000)
.addEnergyPerTickInput(125000000)
.addFluidInputs([
])
.addItemInput(<super_solar_panels:machines:25> * 16).setTag("item_1")
.addItemInput(<moreplates:neutronium_gear> * 16).setTag("item_2")
.addItemInput(<moreplates:neutronium_plate> * 64).setTag("item_3")
.addItemInput(<contenttweaker:material_part:1008> * 64).setTag("item_4")
.addItemInput(<contenttweaker:ymcomputecore> * 16).setTag("item_5")
.addItemInput(<contenttweaker:olihacon> * 16).setTag("item_6")
.addItemInput(<ic2:upgrade> * 4).setTag("item_7")
.addItemOutput(<modularmachinery:ymg_atomic_shaper_controller>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_atomic_shaper_controller_2", "YMG_Assembly_Line_Advanced", 18000)
.addEnergyPerTickInput(125000000)
.addFluidInputs([
])
.addItemInput(<super_solar_panels:machines:25> * 16)
.addItemInput(<moreplates:neutronium_gear> * 16)
.addItemInput(<moreplates:neutronium_plate> * 64)
.addItemInput(<contenttweaker:material_part:1008> * 64)
.addItemInput(<contenttweaker:ymcomputecore> * 16)
.addItemInput(<contenttweaker:olihacon> * 16)
.addItemInput(<ic2:upgrade> * 4)
.addItemOutput(<modularmachinery:ymg_atomic_shaper_controller>)
.build();

//聚爆压缩机
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_blast_compression_controller_1", "YMG_Assembly_Line", 18000)
.addEnergyPerTickInput(75000000)
.addFluidInputs([
])
.addItemInput(<modularmachinery:ymg_core_pressure_analog_devices_controller>).setTag("item_1")
.addItemInput(<enderio:block_reinforced_obsidian> * 64).setTag("item_2")
.addItemInput(<mekanismgenerators:reactor:1> * 64).setTag("item_3")
.addItemInput(<jaopca:block_glasshardenedancientdebris> * 64).setTag("item_4")
.addItemInput(<contenttweaker:mysteriousicecasing> * 16).setTag("item_5")
.addItemInput(<contenttweaker:ymcomputecore> * 4).setTag("item_6")
.addItemOutput(<modularmachinery:ymg_blast_compression_controller>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_blast_compression_controller_2", "YMG_Assembly_Line_Advanced", 18000)
.addEnergyPerTickInput(75000000)
.addFluidInputs([
])
.addItemInput(<modularmachinery:ymg_core_pressure_analog_devices_controller>)
.addItemInput(<enderio:block_reinforced_obsidian> * 64)
.addItemInput(<mekanismgenerators:reactor:1> * 64)
.addItemInput(<jaopca:block_glasshardenedancientdebris> * 64)
.addItemInput(<contenttweaker:mysteriousicecasing> * 16)
.addItemInput(<contenttweaker:ymcomputecore> * 4)
.addItemOutput(<modularmachinery:ymg_blast_compression_controller>)
.build();

//星空透镜
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:ymg_astronomical_observatories_controller>, [
	[null, null, <appliedenergistics2:quartz_vibrant_glass>, <astralsorcery:blockprism>, <appliedenergistics2:quartz_vibrant_glass>, null, null], 
	[<modularmachinery:blockcasing:4>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_vibrant_glass>, <contenttweaker:lens>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_vibrant_glass>, <modularmachinery:blockcasing:4>], 
	[<modularmachinery:blockcasing:4>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_vibrant_glass>, <contenttweaker:lens>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_vibrant_glass>, <modularmachinery:blockcasing:4>], 
	[<modularmachinery:blockcasing:4>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_vibrant_glass>, <contenttweaker:lens>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_vibrant_glass>, <modularmachinery:blockcasing:4>], 
	[<modularmachinery:blockcasing:4>, <fluxnetworks:fluxblock>, <fluxnetworks:fluxblock>, <astralsorcery:blockobservatory>, <fluxnetworks:fluxblock>, <fluxnetworks:fluxblock>, <modularmachinery:blockcasing:4>], 
	[<modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <fluxnetworks:fluxblock>, <fluxnetworks:fluxblock>, <fluxnetworks:fluxblock>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>], 
	[<actuallyadditions:block_crystal_empowered:3>, <modularmachinery:blockcasing:4>, <fluxnetworks:fluxblock>, <appliedenergistics2:controller>, <fluxnetworks:fluxblock>, <modularmachinery:blockcasing:4>, <actuallyadditions:block_crystal_empowered:3>]
]);

//星体位标处理矩阵
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_astral_coordinate_processing_matrix_factory_controller_1", "YMG_Assembly_Line", 24000)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
])
.addItemInput(<modularmachinery:ymg_stars_booth_controller>).setTag("item_1")
.addItemInput(<appliedenergistics2:controller> * 64).setTag("item_2")
.addItemInput(<appliedenergistics2:crafting_accelerator> * 64).setTag("item_3")
.addItemInput(<contenttweaker:mysteriousicecasing> * 16).setTag("item_4")
.addItemInput(<gravisuite:crafting:2> * 64).setTag("item_5")
.addItemInput(<gravisuite:crafting:2> * 64).setTag("item_6")
.addItemInput(<appliedenergistics2:material:41> * 64).setTag("item_7")
.addItemInput(<threng:material:14> * 16).setTag("item_8")
.addItemInput(<super_solar_panels:machines:15> * 16).setTag("item_9")
.addItemOutput(<modularmachinery:ymg_astral_coordinate_processing_matrix_factory_controller>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_astral_coordinate_processing_matrix_factory_controller_2", "YMG_Assembly_Line_Advanced", 24000)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
])
.addItemInput(<modularmachinery:ymg_stars_booth_controller>)
.addItemInput(<appliedenergistics2:controller> * 64)
.addItemInput(<appliedenergistics2:crafting_accelerator> * 64)
.addItemInput(<contenttweaker:mysteriousicecasing> * 16)
.addItemInput(<gravisuite:crafting:2> * 64)
.addItemInput(<gravisuite:crafting:2> * 64)
.addItemInput(<appliedenergistics2:material:41> * 64)
.addItemInput(<threng:material:14> * 16)
.addItemInput(<super_solar_panels:machines:15> * 16)
.addItemOutput(<modularmachinery:ymg_astral_coordinate_processing_matrix_factory_controller>)
.build();

//火箭发射井
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_rocket_silos_factory_controller_1", "YMG_Assembly_Line", 24000)
.addEnergyPerTickInput(175000000)
.addFluidInputs([
])
.addItemInput(<modularmachinery:ymg_jumping_rift_controller>).setTag("item_1")
.addItemInput(<ic2:resource:11> * 64).setTag("item_2")
.addItemInput(<contenttweaker:mysteriousicecasing> * 16).setTag("item_3")
.addItemInput(<extendedcrafting:trimmed:2> * 4).setTag("item_4")
.addItemInput(<contenttweaker:material_part:1012> * 16).setTag("item_5")
.addItemInput(<contenttweaker:material_part:1001> * 16).setTag("item_6")
.addItemInput(<contenttweaker:jump_stand> * 4).setTag("item_7")
.addItemInput(<contenttweaker:ymcomputecore> * 4).setTag("item_8")
.addItemOutput(<modularmachinery:ymg_rocket_silos_factory_controller>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_rocket_silos_factory_controller_2", "YMG_Assembly_Line_Advanced", 24000)
.addEnergyPerTickInput(175000000)
.addFluidInputs([
])
.addItemInput(<modularmachinery:ymg_jumping_rift_controller>)
.addItemInput(<ic2:resource:11> * 64)
.addItemInput(<contenttweaker:mysteriousicecasing> * 16)
.addItemInput(<extendedcrafting:trimmed:2> * 4)
.addItemInput(<contenttweaker:material_part:1012> * 16)
.addItemInput(<contenttweaker:material_part:1001> * 16)
.addItemInput(<contenttweaker:jump_stand> * 4)
.addItemInput(<contenttweaker:ymcomputecore> * 4)
.addItemOutput(<modularmachinery:ymg_rocket_silos_factory_controller>)
.build();

//精密火箭装配仓
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_precision_rocket_assembly_chamber_controller_1", "YMG_Assembly_Line", 18000)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
])
.addItemInput(<modularmachinery:ymg_assembly_line_controller>).setTag("item_1")
.addItemInput(<mekanismmultiblockmachine:multiblockmachine:3>).setTag("item_2")
.addItemInput(<environmentaltech:structure_frame_2> * 16).setTag("item_3")
.addItemInput(<contenttweaker:material_part:1001> * 16).setTag("item_4")
.addItemInput(<contenttweaker:material_part:1003> * 16).setTag("item_5")
.addItemInput(<contenttweaker:material_part:1012> * 16).setTag("item_6")
.addItemInput(<contenttweaker:material_part:1013> * 16).setTag("item_7")
.addItemOutput(<modularmachinery:ymg_precision_rocket_assembly_chamber_controller>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_precision_rocket_assembly_chamber_controller_2", "YMG_Assembly_Line_Advanced", 18000)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
])
.addItemInput(<modularmachinery:ymg_assembly_line_controller>)
.addItemInput(<mekanismmultiblockmachine:multiblockmachine:3>)
.addItemInput(<environmentaltech:structure_frame_2> * 16)
.addItemInput(<contenttweaker:material_part:1001> * 16)
.addItemInput(<contenttweaker:material_part:1003> * 16)
.addItemInput(<contenttweaker:material_part:1012> * 16)
.addItemInput(<contenttweaker:material_part:1013> * 16)
.addItemOutput(<modularmachinery:ymg_precision_rocket_assembly_chamber_controller>)
.build();

//卫星接收天线
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_satellite_receiving_antenna_factory_controller_1", "YMG_Assembly_Line", 36000)
.addEnergyPerTickInput(100000000)
.addFluidInputs([
    <liquid:jump_crystalline> * 16000,
    <liquid:isaac_newton> * 16000
])
.addItemInput(<appliedenergistics2:controller> * 64).setTag("item_1")
.addItemInput(<appliedenergistics2:energy_acceptor> * 64).setTag("item_2")
.addItemInput(<enderio:item_material:65> * 64).setTag("item_3")
.addItemInput(<enderio:item_material:65> * 64).setTag("item_4")
.addItemInput(<enderio:item_material:65> * 64).setTag("item_5")
.addItemInput(<enderio:item_material:65> * 64).setTag("item_6")
.addItemInput(<appliedenergistics2:wireless_access_point> * 64).setTag("item_7")
.addItemInput(<mets:electric_wirless_manager>).setTag("item_8")
.addItemInput(<contenttweaker:star_signal_amplification_card_1>).setTag("item_9")
.addItemOutput(<modularmachinery:ymg_satellite_receiving_antenna_factory_controller>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("ymg_satellite_receiving_antenna_factory_controller_2", "YMG_Assembly_Line_Advanced", 36000)
.addEnergyPerTickInput(200000000)
.addFluidInputs([
    <liquid:jump_crystalline> * 16000,
    <liquid:isaac_newton> * 16000
])
.addItemInput(<appliedenergistics2:controller> * 64)
.addItemInput(<appliedenergistics2:energy_acceptor> * 64)
.addItemInput(<enderio:item_material:65> * 64)
.addItemInput(<enderio:item_material:65> * 64)
.addItemInput(<enderio:item_material:65> * 64)
.addItemInput(<enderio:item_material:65> * 64)
.addItemInput(<appliedenergistics2:wireless_access_point> * 64)
.addItemInput(<mets:electric_wirless_manager>)
.addItemInput(<contenttweaker:star_signal_amplification_card_1>)
.addItemOutput(<modularmachinery:ymg_satellite_receiving_antenna_factory_controller>)
.build();

//ECO-C4-可扩展计算子系统主机
recipes.addShaped(<novaeng_core:extendable_calculator_subsystem_l4>,[
    [<novaeng_core:ecalculator_casing>,<gravisuite:crafting:6>,<novaeng_core:ecalculator_casing>],
    [<novaeng_core:ecalculator_me_channel>,<gravisuite:crafting:1>,<appliedenergistics2:crafting_monitor>],
    [<novaeng_core:ecalculator_casing>,<gravisuite:crafting:2>,<novaeng_core:ecalculator_casing>]
]);

//ECO-C6-可扩展计算子系统主机
recipes.addShaped(<novaeng_core:extendable_calculator_subsystem_l6>,[
    [<contenttweaker:olihacon>,<contenttweaker:ymcomputecore>,<contenttweaker:olihacon>],
    [<novaeng_core:ecalculator_parallel_proc_l4>,<novaeng_core:ecalculator_transmitter_bus>,<novaeng_core:extendable_calculator_subsystem_l4>],
    [<contenttweaker:olihacon>,<contenttweaker:ymcomputecore>,<contenttweaker:olihacon>]
]);

//AA充能装置
mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:ymg_aa_charging_device_controller>, [
	[<mets:super_iridium_compress_plate>, <mets:super_iridium_compress_plate>, <actuallyadditions:block_display_stand>, <mets:super_iridium_compress_plate>, <mets:super_iridium_compress_plate>], 
	[<mets:super_iridium_compress_plate>, <contenttweaker:mysteriousicegear>, <appliedenergistics2:quartz_vibrant_glass>, <contenttweaker:mysteriousicegear>, <mets:super_iridium_compress_plate>], 
	[<actuallyadditions:block_display_stand>, <appliedenergistics2:quartz_vibrant_glass>, <actuallyadditions:block_empowerer>, <appliedenergistics2:quartz_vibrant_glass>, <actuallyadditions:block_display_stand>], 
	[<mets:super_iridium_compress_plate>, <contenttweaker:mysteriousicegear>, <appliedenergistics2:quartz_vibrant_glass>, <contenttweaker:mysteriousicegear>, <mets:super_iridium_compress_plate>], 
	[<mets:super_iridium_compress_plate>, <mets:super_iridium_compress_plate>, <actuallyadditions:block_display_stand>, <mets:super_iridium_compress_plate>, <mets:super_iridium_compress_plate>]
]);