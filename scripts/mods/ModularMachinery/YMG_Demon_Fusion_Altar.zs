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
// MachineModifier.setParallelizable("YMG_Demon_Fusion_Altar", true);
MachineModifier.setMaxParallelism("YMG_Demon_Fusion_Altar", 16);
MachineModifier.setInternalParallelism("YMG_Demon_Fusion_Altar", 16);

//意志合金
mods.modularmachinery.RecipeBuilder.newBuilder("Demon_Fusion_Altar_demon_extras_10", "YMG_Demon_Fusion_Altar", 400)
.addLifeEssenceInput(400, true)
.addItemInputs([
    <tconevo:metal_block:6>,
    <bloodmagic:item_demon_crystal> * 8
])
.addItemOutput(<bloodmagic:demon_extras:10>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Demon_Fusion_Altar_demon_extras_11", "YMG_Demon_Fusion_Altar", 400)
.addLifeEssenceInput(400, true)
.addItemInputs([
    <tconevo:metal_block:6>,
    <bloodmagic:item_demon_crystal:1> * 8
])
.addItemOutput(<bloodmagic:demon_extras:11>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Demon_Fusion_Altar_demon_extras_12", "YMG_Demon_Fusion_Altar", 400)
.addLifeEssenceInput(400, true)
.addItemInputs([
    <tconevo:metal_block:6>,
    <bloodmagic:item_demon_crystal:2> * 8
])
.addItemOutput(<bloodmagic:demon_extras:12>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Demon_Fusion_Altar_demon_extras_13", "YMG_Demon_Fusion_Altar", 400)
.addLifeEssenceInput(400, true)
.addItemInputs([
    <tconevo:metal_block:6>,
    <bloodmagic:item_demon_crystal:3> * 8
])
.addItemOutput(<bloodmagic:demon_extras:13>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Demon_Fusion_Altar_demon_extras_14", "YMG_Demon_Fusion_Altar", 400)
.addLifeEssenceInput(400, true)
.addItemInputs([
    <tconevo:metal_block:6>,
    <bloodmagic:item_demon_crystal:4> * 8
])
.addItemOutput(<bloodmagic:demon_extras:14>)
.build();

//寒血棱晶
mods.modularmachinery.RecipeBuilder.newBuilder("Demon_Fusion_Altar_bloodyprism", "YMG_Demon_Fusion_Altar", 800)
.addLifeEssenceInput(50, true)
.addItemInputs([
    <bloodmagic:lava_crystal>,
    <bloodmagic:blood_shard>,
    <bloodmagic:component:8>,
    <bloodmagic:component>,
    <bloodmagic:arcane_ashes>,
    <bloodmagic:component:25>
])
.addItemOutput(<contenttweaker:bloodyprism>)
.build();

//炎血棱晶
mods.modularmachinery.RecipeBuilder.newBuilder("Demon_Fusion_Altar_flameprism", "YMG_Demon_Fusion_Altar", 800)
.addLifeEssenceInput(50, true)
.addItemInputs([
    <bloodmagic:lava_crystal>,
    <bloodmagic:blood_shard>,
    <bloodmagic:component:8>,
    <bloodmagic:component:1>,
    <bloodmagic:arcane_ashes>,
    <bloodmagic:component:25>
])
.addItemOutput(<contenttweaker:flameprism>)
.build();

//晶簇块
mods.modularmachinery.RecipeBuilder.newBuilder("Demon_Fusion_Altar_decorative_brick_2", "YMG_Demon_Fusion_Altar", 12000)
.addLifeEssenceInput(800, true)
.addItemInputs([
    <bloodmagic:demon_extras:10>,
    <bloodmagic:demon_extras:11>,
    <bloodmagic:demon_extras:12>,
    <bloodmagic:demon_extras:13>,
    <bloodmagic:demon_extras:14>,
    <contenttweaker:bloodyprism>,
    <contenttweaker:flameprism>,
    <bloodmagic:blood_shard:1>
])
.addItemOutput(<bloodmagic:decorative_brick:2>)
.build();

//气血碎片-虚弱
mods.modularmachinery.RecipeBuilder.newBuilder("Demon_Fusion_Altar_blood_shard", "YMG_Demon_Fusion_Altar", 2500)
.addLifeEssenceInput(20, true)
.addItemInput(<bloodmagic:component:28>).setChance(0.0F)
.addItemInput(<bloodmagic:component:29>).setChance(0.0F)
.addItemInputs([
    <bloodmagic:blood_shard>,
    <ore:dustMithril>
])
.addItemOutput(<bloodmagic:blood_shard> * 2)
.build();

