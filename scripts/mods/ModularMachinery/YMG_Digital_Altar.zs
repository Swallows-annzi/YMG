/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineModifier;


//容量
val MaxBlood = 2000000;
//单次io(虚弱宝珠只能输入1000
val setBloodIO = 1000;

//启用并行
// MachineModifier.setParallelizable("YMG_Digital_Altar", true);
MachineModifier.setMaxParallelism("YMG_Digital_Altar", 8);
MachineModifier.setInternalParallelism("YMG_Digital_Altar", 8);


//配方
mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_1", "YMG_Digital_Altar", 20)
.addLifeEssenceInput(50, true)
.addItemInput(<ore:stone>)
.addItemOutput(<bloodmagic:slate>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_2", "YMG_Digital_Altar", 20)
.addLifeEssenceInput(100, true)
.addItemInput(<bloodmagic:slate>)
.addItemOutput(<bloodmagic:slate:1>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_3", "YMG_Digital_Altar", 20)
.addLifeEssenceInput(250, true)
.addItemInput(<bloodmagic:slate:1>)
.addItemOutput(<bloodmagic:slate:2>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_4", "YMG_Digital_Altar", 20)
.addLifeEssenceInput(750, true)
.addItemInput(<bloodmagic:slate:2>)
.addItemOutput(<bloodmagic:slate:3>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_5", "YMG_Digital_Altar", 20)
.addLifeEssenceInput(1500, true)
.addItemInput(<bloodmagic:slate:3>)
.addItemOutput(<bloodmagic:slate:4>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_6", "YMG_Digital_Altar", 20)
.addLifeEssenceInput(1500, true)
.addItemInput(<tconevo:material>)
.addItemOutput(<tconevo:metal:25>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_7", "YMG_Digital_Altar", 20)
.addLifeEssenceInput(500, true)
.addItemInput(<deepmoblearning:glitch_infused_ingot>)
.addItemOutput(<deepmoblearningbm:blood_infused_glitch_ingot>)
.build();

//恶魔气血碎片
mods.modularmachinery.RecipeBuilder.newBuilder("Digital_Altar_Blood_8", "YMG_Digital_Altar", 20)
.addLifeEssenceInput(2000, true)
.addItemInput(<avaritia:resource:1>)
.addItemOutput(<bloodmagic:blood_shard:1>)
.build();
