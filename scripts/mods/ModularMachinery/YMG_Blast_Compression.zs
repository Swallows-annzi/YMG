/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.modularmachinery.MachineModifier;


val setTick = 2;
val setEnergy = 100000000;

//启用并行
// MachineModifier.setParallelizable("YMG_Blast_Compression", true);
MachineModifier.setMaxParallelism("YMG_Blast_Compression", 8);
MachineModifier.setInternalParallelism("YMG_Blast_Compression", 8);

BlastRecipe("YMG_Blast_Compression_1", <ore:plateCarbon> * 64, <contenttweaker:material_part:1001>, setEnergy, setTick);
BlastRecipe("YMG_Blast_Compression_2", <ore:plateIron> * 64, <contenttweaker:material_part:1002>, setEnergy, setTick);
BlastRecipe("YMG_Blast_Compression_3", <ore:plateCobalt> * 64, <contenttweaker:material_part:1003>, setEnergy, setTick);
BlastRecipe("YMG_Blast_Compression_4", <ore:plateDraconiumAwakened> * 64, <contenttweaker:material_part:1004>, setEnergy, setTick);
BlastRecipe("YMG_Blast_Compression_5", <ore:plateCopper> * 64, <contenttweaker:material_part:1005>, setEnergy, setTick);
BlastRecipe("YMG_Blast_Compression_6", <ore:plateTin> * 64, <contenttweaker:material_part:1006>, setEnergy, setTick);
BlastRecipe("YMG_Blast_Compression_7", <ore:plateBronze> * 64, <contenttweaker:material_part:1007>, setEnergy, setTick);
BlastRecipe("YMG_Blast_Compression_8", <ore:plateAluminum> * 64, <contenttweaker:material_part:1008>, setEnergy, setTick);
BlastRecipe("YMG_Blast_Compression_9", <ore:plateNickel> * 64, <contenttweaker:material_part:1009>, setEnergy, setTick);
BlastRecipe("YMG_Blast_Compression_10", <ore:ingotMeteorite> * 64, <contenttweaker:material_part:1010>, setEnergy, setTick);
BlastRecipe("YMG_Blast_Compression_11", <ore:plateTitanium> * 64, <contenttweaker:material_part:1012>, setEnergy, setTick);
BlastRecipe("YMG_Blast_Compression_12", <ore:plateIridium> * 64, <contenttweaker:material_part:1013>, setEnergy, setTick);

//聚爆配方
//配方名-物品输入-物品输出-总能量消耗-配方时间
function BlastRecipe(RecipeName as string, Input as IIngredient, Output as IItemStack, EnergyInput as int, Tick as int) as void {
    mods.modularmachinery.RecipeBuilder.newBuilder(RecipeName, "YMG_Blast_Compression", Tick)
    .addEnergyPerTickInput(EnergyInput)
    .addItemInput(Input)
    .addItemInput(<minecraft:tnt> * 32)
    .addItemOutput(Output)
    .build();
}