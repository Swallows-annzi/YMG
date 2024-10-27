/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import moretweaker.draconicevolution.FusionCrafting;


//ME机械样板供应器
FusionCrafting.add(
    <modularmachinery:blockmepatternprovider>, <contenttweaker:mysteriousicecasing>,
    FusionCrafting.BASIC, 1000000,
    [
        <modularmachinery:blockmeiteminputbus>,<modularmachinery:blockmefluidinputbus>,
        <modularmachinery:blockmeitemoutputbus>,<modularmachinery:blockmefluidoutputbus>,
        <nae2:material:2>,<nae2:material:6>,
        <contenttweaker:olihacon>,<contenttweaker:olihacon>,
        <taiga:nihilite_ingot>,<taiga:nihilite_ingot>,<taiga:nihilite_ingot>,<taiga:nihilite_ingot>,
        <draconicevolution:draconium_block:1>,<draconicevolution:draconium_block:1>
    ]
);

//觉醒核心
FusionCrafting.add(
    <draconicevolution:awakened_core>, <draconicevolution:wyvern_core>,
    FusionCrafting.WYVERN, 10000000,
    [
        <draconicevolution:draconic_ingot>,<draconicevolution:draconic_ingot>,
        <draconicevolution:draconic_ingot>,<draconicevolution:draconic_ingot>,
        <avaritia:resource:4>,<avaritia:resource:4>,
        <tconevo:metal:3>,<tconevo:metal:3>,
        <avaritia:resource:4>,<avaritia:resource:4>,
        <draconicevolution:draconic_ingot>,<draconicevolution:draconic_ingot>,
        <draconicevolution:draconic_ingot>,<draconicevolution:draconic_ingot>
    ]
);

//混沌核心
FusionCrafting.add(
    <draconicevolution:chaotic_core>, <draconicevolution:awakened_core>,
    FusionCrafting.DRACONIC, 100000000,
    [
        <draconicevolution:chaos_shard:1>,<draconicevolution:chaos_shard:1>,
        <draconicevolution:chaos_shard:1>,<draconicevolution:chaos_shard:1>,
        <avaritia:resource:6>,<avaritia:resource:6>,
        <tconevo:metal:8>,<tconevo:metal:8>,
        <avaritia:resource:6>,<avaritia:resource:6>,
        <draconicevolution:chaos_shard:1>,<draconicevolution:chaos_shard:1>,
        <draconicevolution:chaos_shard:1>,<draconicevolution:chaos_shard:1>
    ]
);
