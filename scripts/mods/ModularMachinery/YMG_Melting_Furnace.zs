/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.MachineModifier;


//启用并行
// MachineModifier.setParallelizable("YMG_Melting_Furnace", true);
MachineModifier.setMaxParallelism("YMG_Melting_Furnace", 32);
MachineModifier.setInternalParallelism("YMG_Melting_Furnace", 32);

//匠魂熔化配方
mods.modularmachinery.RecipeAdapterBuilder.create("YMG_Melting_Furnace", "tconstruct:smeltery_melting")
.addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.5, 1, false).build())
.addEnergyPerTickInput(175000)
.build();


//熔融玄冰合金
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Melting_Furnace_mysteriousicefluid", "YMG_Melting_Furnace", 50)
.addEnergyPerTickInput(175000)
.addItemInput(<contenttweaker:mysteriousiceingot>)
.addFluidOutput(<liquid:mysteriousicefluid> * 144)
.build();

//熔融钨
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Melting_Furnace_tungstenfluid", "YMG_Melting_Furnace", 50)
.addEnergyPerTickInput(175000)
.addItemInput(<contenttweaker:tungsteningot>)
.addFluidOutput(<liquid:tungstenfluid> * 144)
.build();

//熔融煤炭
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Melting_Furnace_tungstenfluid", "YMG_Melting_Furnace", 50)
.addEnergyPerTickInput(175000)
.addItemInput(<ore:dustCoal>)
.addFluidOutput(<liquid:coal> * 100)
.build();
