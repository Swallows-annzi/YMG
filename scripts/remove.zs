/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#reloadable
#priority 9999
#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;


var recipeItems_gzt as IItemStack[] = [
    //原版
    <minecraft:observer>,
    <minecraft:white_shulker_box>,
    <minecraft:orange_shulker_box>,
    <minecraft:magenta_shulker_box>,
    <minecraft:light_blue_shulker_box>,
    <minecraft:yellow_shulker_box>,
    <minecraft:lime_shulker_box>,
    <minecraft:pink_shulker_box>,
    <minecraft:gray_shulker_box>,
    <minecraft:silver_shulker_box>,
    <minecraft:cyan_shulker_box>,
    <minecraft:blue_shulker_box>,
    <minecraft:brown_shulker_box>,
    <minecraft:red_shulker_box>,
    <minecraft:black_shulker_box>,
    <minecraft:purple_shulker_box>,
    <minecraft:green_shulker_box>,
    <minecraft:item_frame>,
    <minecraft:nether_star>,
    //IC2
    <gravisuite:crafting:4>,
    <ic2:upgrade>,
    <ic2:te:82>,
    <gravisuite:vajra:*>,
    <gravisuite:crafting:5>,
    <ic2:te:111>,
    <ic2:te:112>,
    <ic2:te:113>,
    <ic2:te:114>,
    <ic2:te:115>,
    <ic2:te:134>,
    <ic2:te:133>,
    <ic2:te:131>,
    <ic2:te:132>,
    <ic2:dynamite_sticky>,
    <ic2:dynamite>,
    <ic2:remote>,
    <ic2:te:40>,
    <ic2:tfbp>,
    <ic2:tfbp:1>,
    <ic2:tfbp:2>,
    <ic2:tfbp:3>,
    <ic2:tfbp:4>,
    <ic2:tfbp:5>,
    <ic2:tfbp:6>,
    <ic2:te:1>,
    <ic2:te:88>,
    <ic2:te:89>,
    <ic2:te:52>,
    //IC-重力装甲
    <super_solar_panels:machines:25>,
    //IC-更多电力设备
    <mets:electric_life_support_ring>,
    <mets:te:15>,
    <mets:te:36>,
    <mets:rocket>,
    <mets:electric_rocket_launcher:*>,
    <mets:te:22>,
    <mets:field_generator>,
    <mets:lens>,
    <mets:te:19>,
    <mets:living_circuit>,
    <super_solar_panels:crafting:31>,
    //封包
    <packagedexcrafting:combination_crafter>,
    //热力膨胀
    <thermalexpansion:cache>,
    <thermaldynamics:duct_16>,
    <thermaldynamics:duct_16:2>,
    <thermaldynamics:duct_16:4>,
    <thermaldynamics:duct_16:6>,
    <thermaldynamics:duct_32>,
    <thermaldynamics:duct_32:2>,
    <thermaldynamics:duct_32:6>,
    <thermaldynamics:duct_32:4>,
    <thermalexpansion:strongbox>,
    <thermalfoundation:tome_lexicon>,
    <thermalexpansion:device:6>,
    <thermalexpansion:device:5>,
    <thermalexpansion:device:7>,
    <thermalexpansion:device:10>,
    <thermalexpansion:florb>,
    <thermalexpansion:florb:1>,
    <thermalexpansion:machine:11>,
    <thermalexpansion:augment:401>,
    <thermalexpansion:morb>,
    //MEK
    <mekanism:speedupgrade>,
    <mekanism:anchorupgrade>,
    // <mekanism:machineblock:13>,
    <mekanism:machineblock:4>,
    <mekanism:machineblock:15>,
    <mekanism:transmitter:1>,
    <mekanism:transmitter:3>,
    <mekanism:machineblock2:13>,
    // <mekanism:machineblock2:14>,
    // <mekanism:machineblock2:15>,
    // <mekanism:basicblock:10>,
    <mekanismgenerators:turbineblade>,
    <mekanismgenerators:generator:7>,
    <mekanismgenerators:generator:8>,
    <mekanismgenerators:generator:9>,
    <mekanismgenerators:generator:10>,
    <mekanismgenerators:generator:11>,
    <mekanismgenerators:generator:12>,
    <mekanismgenerators:generator:13>,
    <mekanismgenerators:reactor>,
    <mekanismgenerators:reactor:1>,
    <mekanismgenerators:reactor:2>,
    <mekanismgenerators:reactor:3>,
    <mekanismgenerators:reactorglass>,
    <mekanismgenerators:reactorglass:1>,
    <mekanism:basicblock2:6>,
    <mekanism:basicblock2:7>,
    <mekanism:basicblock2:8>,
    <mekanism:basicblock2:5>,
    // <mekanism:machineblock2:11>,
    // <mekanism:machineblock2>,
    <mekanism:basicblock:6>,
    <mekanism:machineblock:2>,
    <mekanism:machineblock:5>.withTag({recipeType: 4}),
    <mekanism:machineblock:6>.withTag({recipeType: 4}),
    <mekanism:machineblock:7>.withTag({recipeType: 4}),
    <mekanism:machineblock3:7>.withTag({recipeType: 4}),
    //龙之研究
    <draconicevolution:infused_obsidian>,
    <draconicevolution:fusion_crafting_core>,
    <draconicevolution:crafting_injector>,
    <draconicevolution:crafting_injector:1>,
    <draconicevolution:crafting_injector:2>,
    <draconicevolution:crafting_injector:3>,
    <draconicevolution:dislocator>,
    <draconicevolution:dislocator_bound:1>,
    <draconicevolution:dislocator_bound:2>,
    <draconicevolution:reactor_part:2>,
    <draconicevolution:reactor_part:1>,
    <draconicevolution:entity_detector>,
    <draconicevolution:entity_detector:1>,
    <draconicevolution:potentiometer>,
    <draconicevolution:reactor_part:3>,
    <draconicevolution:reactor_part:4>,
    <draconicevolution:dislocator_pedestal>,
    <draconicevolution:reactor_part>,
    <draconicevolution:dislocator_receptacle>,
    <draconicevolution:wyvern_core>,
    <draconicevolution:wyvern_energy_core>,
    <draconicevolution:draconic_energy_core>,
    <draconicevolution:magnet>,
    <draconicevolution:magnet:1>,
    <draconicevolution:celestial_manipulator>,
    <draconicevolution:draconic_spawner>,
    <draconicevolution:draconic_core>,
    <draconicevolution:diss_enchanter>,
    //无中生有
    <excompressum:auto_sieve>,
    <excompressum:auto_heavy_sieve>,
    <exnihilocreatio:item_material:7>,
    <exnihilocreatio:item_material:6>,
    <exnihilocreatio:block_auto_sifter>,
    <exnihilocreatio:block_axle_stone>,
    <exnihilocreatio:block_waterwheel>,
    <exnihilocreatio:block_end_cake>,
    //匠魂
    <tconstruct:fancy_frame>,
    <tconstruct:fancy_frame:1>,
    <tconstruct:fancy_frame:2>,
    <tconstruct:fancy_frame:3>,
    <tconstruct:fancy_frame:4>,
    <tconstruct:fancy_frame:5>,
    <tconstruct:fancy_frame:6>,
    <tconstruct:piggybackpack>,
    <tconstruct:tooltables>,
    <tconstruct:throwball:1>,
    <tconevo:material>,
    <conarm:travel_belt>,
    <conarm:travel_potion>,
    <conarm:travel_sack>,
    <conarm:travel_goggles>,
    <conarm:travel_night>,
    <conarm:travel_sneak>,
    <conarm:travel_slowfall>,
    <conarm:travel_soul>,
    <conarm:travel_belt_base>,
    <conarm:travel_goggles_base>,
    <conarm:travel_cloak>,
    //懒人ae
    <threng:machine>,
    <threng:machine:2>,
    // <threng:big_assembler>,
    // <threng:big_assembler:1>,
    <threng:big_assembler:2>,
    // <threng:big_assembler:3>,
    // <threng:big_assembler:4>,
    // <threng:big_assembler:5>,
    <threng:material:13>,
    //AE
    <appliedenergistics2:quartz_glass>,
    <appliedenergistics2:controller>,
    <appliedenergistics2:material:32>,
    <appliedenergistics2:material:33>,
    <appliedenergistics2:material:34>,
    <appliedenergistics2:spatial_storage_cell_2_cubed>,
    <appliedenergistics2:spatial_storage_cell_16_cubed>,
    <appliedenergistics2:spatial_storage_cell_128_cubed>,
    <appliedenergistics2:charged_staff>,
    <appliedenergistics2:entropy_manipulator>,
    <appliedenergistics2:portable_cell>,
    <appliedenergistics2:network_tool>,
    <appliedenergistics2:color_applicator>,
    <appliedenergistics2:matter_cannon>,
    <appliedenergistics2:tiny_tnt>,
    <appliedenergistics2:material:60>,
    <appliedenergistics2:part:300>,
    <appliedenergistics2:part:301>,
    <appliedenergistics2:part:302>,
    <appliedenergistics2:part:320>,
    <appliedenergistics2:part:321>,
    <appliedenergistics2:wireless_terminal>,
    <appliedenergistics2:wireless_crafting_terminal>,
    <appliedenergistics2:wireless_pattern_terminal>,
    <appliedenergistics2:wireless_fluid_terminal>,
    <ae2fc:wireless_fluid_pattern_terminal>,
    // <aeadditions:gas_interface>,
    // <aeadditions:storage.component:7>,
    // <aeadditions:storage.component:8>,
    // <aeadditions:storage.component:9>,
    // <aeadditions:storage.component:10>,
    // <aeadditions:storage.component:11>,
    // <aeadditions:storage.component:12>,
    // <aeadditions:storage.component:13>,
    // <aeadditions:storage.gas>,
    // <aeadditions:storage.gas:1>,
    // <aeadditions:storage.gas:2>,
    // <aeadditions:storage.gas:3>,
    // <aeadditions:storage.gas:4>,
    // <aeadditions:storage.gas:5>,
    // <aeadditions:storage.gas:6>,
    // <aeadditions:storage.physical:4>,
    // <aeadditions:storage.gas.portable>,
    // <aeadditions:storage.fluid.portable>,
    // <aeadditions:storage.casing:2>,
    // <aeadditions:part.base:3>,
    // <aeadditions:part.base:4>,
    // <aeadditions:part.base:5>,
    // <aeadditions:part.base:6>,
    // <aeadditions:part.base:7>,
    // <aeadditions:part.base:8>,
    // <aeadditions:part.base:9>,
    // <aeadditions:part.base:10>,
    //AE-MEK气体存储
    <mekeng:wireless_gas_terminal>,
    <mekeng:portable_gas_cell>,
    //环境科技
    <environmentaltech:diode>,
    <environmentaltech:laser_lens>,
    <environmentaltech:connector>,
    <environmentaltech:laser_core>,
    <environmentaltech:interconnect>,
    <valkyrielib:modifier_component>,
    <environmentaltech:modifier_null>,
    <environmentaltech:nano_cont_ranged_1>,
    <environmentaltech:nano_cont_ranged_2>,
    <environmentaltech:nano_cont_ranged_3>,
    <environmentaltech:nano_cont_ranged_4>,
    <environmentaltech:nano_cont_ranged_5>,
    <environmentaltech:nano_cont_ranged_6>,
    <environmentaltech:nano_cont_personal_1>,
    <environmentaltech:nano_cont_personal_2>,
    <environmentaltech:nano_cont_personal_3>,
    <environmentaltech:nano_cont_personal_4>,
    <environmentaltech:nano_cont_personal_5>,
    <environmentaltech:nano_cont_personal_6>,
    <environmentaltech:litherite_crystal>,
    <environmentaltech:structure_frame_1>,
    <environmentaltech:structure_frame_2>,
    <environmentaltech:structure_frame_3>,
    <environmentaltech:structure_frame_4>,
    <environmentaltech:structure_frame_5>,
    <environmentaltech:structure_frame_6>,
    //手杖
    <betterbuilderswands:wandunbreakable:12>,
    <betterbuilderswands:wandunbreakable:13>,
    <betterbuilderswands:wandunbreakable:14>,
    //末影接口
    <enderio:block_inventory_chest_tiny>,
    <enderio:block_inventory_chest_small>,
    <enderio:block_inventory_chest_medium>,
    <enderio:block_inventory_chest_big>,
    <enderio:block_inventory_chest_large>,
    <enderio:block_inventory_chest_huge>,
    <enderio:block_inventory_chest_enormous>,
    <enderio:block_inventory_chest_warehouse>,
    <enderio:block_simple_crafter>,
    <enderio:block_crafter>,
    //实用拓展
    <actuallyadditions:block_greenhouse_glass>,
    <actuallyadditions:block_misc:7>,
    <actuallyadditions:block_phantom_placer>,
    <actuallyadditions:block_phantom_breaker>,
    <actuallyadditions:block_breaker>,
    <actuallyadditions:block_placer>,
    <actuallyadditions:block_directional_breaker>,
    <actuallyadditions:block_miner>,
    <actuallyadditions:block_player_interface>,
    <actuallyadditions:block_fluid_collector>,
    <actuallyadditions:block_fluid_placer>,
    <actuallyadditions:block_inputter_advanced>,
    <actuallyadditions:block_inputter>,
    <actuallyadditions:block_dropper>,
    <actuallyadditions:item_spawner_changer>,
    <actuallyadditions:item_bag>,
    <actuallyadditions:item_void_bag>,
    <actuallyadditions:item_suction_ring>,
    <actuallyadditions:item_water_removal_ring>,
    <actuallyadditions:item_crafter_on_a_stick>,
    //星辉魔法
    <astralsorcery:itemwand>,
    <astralsorcery:blockaltar>,
    <astralsorcery:blockblackmarble>,
    //末影接口
    <enderio:block_reinforced_obsidian>,
    <enderio:block_painter>,
    <enderio:item_dark_steel_upgrade:1>,
    <enderio:item_gas_conduit>,
    <enderio:item_gas_conduit:1>,
    <enderio:item_gas_conduit:2>,
    <enderio:block_weather_obelisk>,
    <enderio:block_powered_spawner>,
    //植物魔法
    <botania:rainbowrod>,
    <botania:opencrate:1>,
    <botania:rfgenerator>,
    <botania:manaresource:14>,
    <botania:managun>,
    <botania:lens:7>,
    <botania:lens:11>,
    <botania:corporeaindex>,
    <botania:corporeafunnel>,
    <botania:corporeainterceptor>,
    <botania:corporeacrystalcube>,
    <botania:corporearetainer>,
    <botania:corporeaspark>,
    <botania:redstringcontainer>,
    <botania:redstringdispenser>,
    <botania:redstringfertilizer>,
    <botania:redstringcomparator>,
    <botania:redstringrelay>,
    <botania:redstringinterceptor>,
    <botania:manaresource:12>,
    <botania:lightrelay>,
    <botania:lightrelay:1>,
    <botania:lightrelay:2>,
    <botania:lightrelay:3>,
    <botania:baublebox>,
    <botania:bifrostperm>,
    <botania:craftpattern>,
    <botania:craftpattern:1>,
    <botania:craftpattern:2>,
    <botania:craftpattern:3>,
    <botania:craftpattern:4>,
    <botania:craftpattern:5>,
    <botania:craftpattern:6>,
    <botania:craftpattern:7>,
    <botania:craftpattern:8>,
    <botania:manaresource:11>,
    <botania:magnetring>,
    <botania:magnetringgreater>,
    //额外植物学
    <extrabotany:judahoath>,
    <extrabotany:manaliquefaction>,
    <extrabotany:judahoath:1>,
    //血魔法
    <bloodmagic:teleposition_focus:2>,
    <bloodmagic:teleposition_focus:3>,
    <bloodmagic:teleposer>,
    // <bloodmagic:blood_tank>,
    // <bloodmagic:blood_tank:1>,
    // <bloodmagic:blood_tank:2>,
    // <bloodmagic:blood_tank:3>,
    // <bloodmagic:blood_tank:4>,
    // <bloodmagic:blood_tank:5>,
    // <bloodmagic:blood_tank:6>,
    // <bloodmagic:blood_tank:7>,
    // <bloodmagic:blood_tank:8>,
    // <bloodmagic:blood_tank:9>,
    // <bloodmagic:blood_tank:10>,
    // <bloodmagic:blood_tank:11>,
    // <bloodmagic:blood_tank:12>,
    // <bloodmagic:blood_tank:13>,
    // <bloodmagic:blood_tank:14>,
    // <bloodmagic:blood_tank:15>,
    <bloodmagic:base_item_filter>,
    <bloodmagic:base_item_filter:1>,
    <bloodmagic:base_item_filter:2>,
    <bloodmagic:base_item_filter:3>,
    <bloodmagic:base_fluid_filter>,
    <bloodmagic:ritual_reader>,
    <bloodmagic:mimic>,
    <bloodmagic:mimic:1>,
    <bloodmagic:mimic:2>,
    <bloodmagic:mimic:3>,
    <bloodmagic:mimic:4>,
    //怪物深度学习
    <deepmoblearning:deep_learner>,
    <deepmoblearning:data_model_thermal_elemental>,
    <deepmoblearning:data_model_wither_skeleton>,
    //无尽贪婪
    <avaritia:resource:1>,
    //更多箱子
    <ironchest:iron_gold_shulker_upgrade>,
    <ironchest:gold_diamond_shulker_upgrade>,
    <ironchest:copper_silver_shulker_upgrade>,
    <ironchest:silver_gold_shulker_upgrade>,
    <ironchest:copper_iron_shulker_upgrade>,
    <ironchest:diamond_crystal_shulker_upgrade>,
    <ironchest:vanilla_iron_shulker_upgrade>,
    <ironchest:vanilla_copper_shulker_upgrade>,
    <ironchest:diamond_obsidian_shulker_upgrade>,
    <ironchest:diamond_crystal_chest_upgrade>,
    <ironchest:iron_chest:5>,
    <ironchest:iron_shulker_box_white>,
    <ironchest:iron_shulker_box_white:1>,
    <ironchest:iron_shulker_box_white:2>,
    <ironchest:iron_shulker_box_white:3>,
    <ironchest:iron_shulker_box_white:4>,
    <ironchest:iron_shulker_box_white:5>,
    <ironchest:iron_shulker_box_white:6>,
    <ironchest:iron_shulker_box_orange>,
    <ironchest:iron_shulker_box_orange:1>,
    <ironchest:iron_shulker_box_orange:2>,
    <ironchest:iron_shulker_box_orange:3>,
    <ironchest:iron_shulker_box_orange:4>,
    <ironchest:iron_shulker_box_orange:5>,
    <ironchest:iron_shulker_box_orange:6>,
    <ironchest:iron_shulker_box_magenta>,
    <ironchest:iron_shulker_box_magenta:1>,
    <ironchest:iron_shulker_box_magenta:2>,
    <ironchest:iron_shulker_box_magenta:3>,
    <ironchest:iron_shulker_box_magenta:4>,
    <ironchest:iron_shulker_box_magenta:5>,
    <ironchest:iron_shulker_box_magenta:6>,
    <ironchest:iron_shulker_box_light_blue>,
    <ironchest:iron_shulker_box_light_blue:1>,
    <ironchest:iron_shulker_box_light_blue:2>,
    <ironchest:iron_shulker_box_light_blue:3>,
    <ironchest:iron_shulker_box_light_blue:4>,
    <ironchest:iron_shulker_box_light_blue:5>,
    <ironchest:iron_shulker_box_light_blue:6>,
    <ironchest:iron_shulker_box_yellow>,
    <ironchest:iron_shulker_box_yellow:1>,
    <ironchest:iron_shulker_box_yellow:2>,
    <ironchest:iron_shulker_box_yellow:3>,
    <ironchest:iron_shulker_box_yellow:4>,
    <ironchest:iron_shulker_box_yellow:5>,
    <ironchest:iron_shulker_box_yellow:6>,
    <ironchest:iron_shulker_box_lime>,
    <ironchest:iron_shulker_box_lime:1>,
    <ironchest:iron_shulker_box_lime:2>,
    <ironchest:iron_shulker_box_lime:3>,
    <ironchest:iron_shulker_box_lime:4>,
    <ironchest:iron_shulker_box_lime:5>,
    <ironchest:iron_shulker_box_lime:6>,
    <ironchest:iron_shulker_box_pink>,
    <ironchest:iron_shulker_box_pink:1>,
    <ironchest:iron_shulker_box_pink:2>,
    <ironchest:iron_shulker_box_pink:3>,
    <ironchest:iron_shulker_box_pink:4>,
    <ironchest:iron_shulker_box_pink:5>,
    <ironchest:iron_shulker_box_pink:6>,
    <ironchest:iron_shulker_box_gray>,
    <ironchest:iron_shulker_box_gray:1>,
    <ironchest:iron_shulker_box_gray:2>,
    <ironchest:iron_shulker_box_gray:3>,
    <ironchest:iron_shulker_box_gray:4>,
    <ironchest:iron_shulker_box_gray:5>,
    <ironchest:iron_shulker_box_gray:6>,
    <ironchest:iron_shulker_box_silver>,
    <ironchest:iron_shulker_box_silver:1>,
    <ironchest:iron_shulker_box_silver:2>,
    <ironchest:iron_shulker_box_silver:3>,
    <ironchest:iron_shulker_box_silver:4>,
    <ironchest:iron_shulker_box_silver:5>,
    <ironchest:iron_shulker_box_silver:6>,
    <ironchest:iron_shulker_box_cyan>,
    <ironchest:iron_shulker_box_cyan:1>,
    <ironchest:iron_shulker_box_cyan:2>,
    <ironchest:iron_shulker_box_cyan:3>,
    <ironchest:iron_shulker_box_cyan:4>,
    <ironchest:iron_shulker_box_cyan:5>,
    <ironchest:iron_shulker_box_cyan:6>,
    <ironchest:iron_shulker_box_purple>,
    <ironchest:iron_shulker_box_purple:1>,
    <ironchest:iron_shulker_box_purple:2>,
    <ironchest:iron_shulker_box_purple:3>,
    <ironchest:iron_shulker_box_purple:4>,
    <ironchest:iron_shulker_box_purple:5>,
    <ironchest:iron_shulker_box_purple:6>,
    <ironchest:iron_shulker_box_blue>,
    <ironchest:iron_shulker_box_blue:1>,
    <ironchest:iron_shulker_box_blue:2>,
    <ironchest:iron_shulker_box_blue:3>,
    <ironchest:iron_shulker_box_blue:4>,
    <ironchest:iron_shulker_box_blue:5>,
    <ironchest:iron_shulker_box_blue:6>,
    <ironchest:iron_shulker_box_brown>,
    <ironchest:iron_shulker_box_brown:1>,
    <ironchest:iron_shulker_box_brown:2>,
    <ironchest:iron_shulker_box_brown:3>,
    <ironchest:iron_shulker_box_brown:4>,
    <ironchest:iron_shulker_box_brown:5>,
    <ironchest:iron_shulker_box_brown:6>,
    <ironchest:iron_shulker_box_green>,
    <ironchest:iron_shulker_box_green:1>,
    <ironchest:iron_shulker_box_green:2>,
    <ironchest:iron_shulker_box_green:3>,
    <ironchest:iron_shulker_box_green:4>,
    <ironchest:iron_shulker_box_green:5>,
    <ironchest:iron_shulker_box_green:6>,
    <ironchest:iron_shulker_box_red>,
    <ironchest:iron_shulker_box_red:1>,
    <ironchest:iron_shulker_box_red:2>,
    <ironchest:iron_shulker_box_red:3>,
    <ironchest:iron_shulker_box_red:4>,
    <ironchest:iron_shulker_box_red:5>,
    <ironchest:iron_shulker_box_red:6>,
    <ironchest:iron_shulker_box_black>,
    <ironchest:iron_shulker_box_black:1>,
    <ironchest:iron_shulker_box_black:2>,
    <ironchest:iron_shulker_box_black:3>,
    <ironchest:iron_shulker_box_black:4>,
    <ironchest:iron_shulker_box_black:5>,
    <ironchest:iron_shulker_box_black:6>,
    //懒人厨房
    <cookingforblockheads:fruit_basket>,
    <cookingforblockheads:counter>,
    <cookingforblockheads:cabinet>,
    <cookingforblockheads:cooking_table>,
    <cookingforblockheads:heating_unit>,
    <cookingforblockheads:ice_unit>,
    <cookingforblockheads:preservation_chamber>,
    <cookingforblockheads:toaster>,
    <cookingforblockheads:oven>,
    <cookingforblockheads:tool_rack>,
    <cookingforblockheads:spice_rack>,
    <cookingforblockheads:fridge>,
];

for recipeItem in recipeItems_gzt {
    recipes.remove(recipeItem);
}

//实用扩展磨粉机
mods.actuallyadditions.Crusher.removeRecipe(<ic2:misc_resource:1>);

//SAG磨粉机
//mods.enderio.SagMill.removeRecipe(IItemStack input);
mods.enderio.SagMill.removeRecipe(<enderio:item_material:76>);

//原子再构机
//mods.actuallyadditions.AtomicReconstructor.removeRecipe(IItemStack output);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_explosion_lens>);

//精灵门
//mods.botania.ElvenTrade.removeRecipe(IIngredient output);
mods.botania.ElvenTrade.removeRecipe(<botania_tweaks:dire_crafty_crate>);
mods.botania.ElvenTrade.removeRecipe(<botania_tweaks:basic_extended_crafty_crate>);
mods.botania.ElvenTrade.removeRecipe(<botania_tweaks:advanced_extended_crafty_crate>);
mods.botania.ElvenTrade.removeRecipe(<botania_tweaks:elite_extended_crafty_crate>);
mods.botania.ElvenTrade.removeRecipe(<botania_tweaks:ultimate_extended_crafty_crate>);

//魔力池
//mods.botania.ManaInfusion.removeRecipe(IIngredient output);
mods.botania.ManaInfusion.removeRecipe(<botania:manabottle>);
mods.botania.ManaInfusion.removeRecipe(<botania:specialflower>.withTag({type: "hopperhockChibi"}));
mods.botania.ManaInfusion.removeRecipe(<botania:specialflower>.withTag({type: "rannuncarpusChibi"}));

//花药台
//mods.botania.Apothecary.removeRecipe(IItemStack output);
//mods.botania.Apothecary.removeRecipe(String output);
mods.botania.Apothecary.removeRecipe("loonium");
mods.botania.Apothecary.removeRecipe("hopperhock");
mods.botania.Apothecary.removeRecipe("rannuncarpus");
mods.botania.Apothecary.removeRecipe("manalinkium");

//星辉祭坛
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/lens_break");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/treebeacon");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminator");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_grapple");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_exchange");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_architect");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_illumination");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/bore_core");

//血之祭坛
//mods.bloodmagic.BloodAltar.removeRecipe(IItemStack input);
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:ender_pearl>);
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:teleposition_focus>);

//狱火熔炉
//mods.bloodmagic.TartaricForge.removeRecipe(IItemStack[] inputs);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:diamond>,<bloodmagic:slate:2>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:glowstone_dust>,<minecraft:redstone>,<minecraft:gold_ingot>,<bloodmagic:item_routing_node>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:glowstone_dust>,<minecraft:redstone>,<minecraft:iron_ingot>,<bloodmagic:item_routing_node>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:glowstone_dust>,<minecraft:redstone>,<minecraft:glass>,<minecraft:stone>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:stick>,<bloodmagic:slate:1>,<minecraft:dye:4>,<minecraft:dye:4>]);
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:item_demon_crystal:2>,<bloodmagic:item_demon_crystal:2>,<bloodmagic:ritual_diviner>,<bloodmagic:blood_shard>]);

//炼金术阵
//mods.bloodmagic.AlchemyArray.removeRecipe(IItemStack input, IItemStack catalyst);
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_pickaxe>);
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_axe>);
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_shovel>);
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:15>, <bloodmagic:slate:3>);
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:1>, <bloodmagic:slate>);
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component>, <bloodmagic:slate>);
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:4>, <bloodmagic:slate:1>);
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:12>, <bloodmagic:slate:2>);
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:17>, <bloodmagic:slate:3>);
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:18>, <bloodmagic:slate:3>);
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:9>, <bloodmagic:slate:3>);
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:27>, <bloodmagic:slate:2>);

//终极工作台
//mods.avaritia.ExtremeCrafting.remove(IItemStack output);
mods.avaritia.ExtremeCrafting.remove(<avaritia:neutron_collector>);
mods.avaritia.ExtremeCrafting.remove(<avaritia:neutronium_compressor>);
// mods.avaritia.ExtremeCrafting.remove(<avaritia:cosmic_meatballs>);
// mods.avaritia.ExtremeCrafting.remove(<avaritia:ultimate_stew>);
mods.avaritia.ExtremeCrafting.remove(<avaritia:endest_pearl>);
mods.avaritia.ExtremeCrafting.remove(<eternalsingularity:eternal_singularity>);

//合成拓展
//mods.extendedcrafting.TableCrafting.remove(IItemStack output);
mods.extendedcrafting.TableCrafting.remove(<extendedcrafting:singularity_ultimate>);

//量子压缩机
//mods.extendedcrafting.CompressionCrafting.remove(<output>);
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:20>);
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:21>);
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:30>);
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:33>);

//////////模块化:社区版//////////
recipes.removeByMod("modularmachinery");
///////////FTB任务//////////
recipes.removeByMod("modularmachinery");
///////////合成拓展//////////
recipes.removeByMod("extendedcrafting");
