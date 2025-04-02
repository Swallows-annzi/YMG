/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.RecipeModifierBuilder;


//启用并行
// MachineModifier.setParallelizable("YMG_EndSteel_Furnace", false);
MachineModifier.setMaxParallelism("YMG_EndSteel_Furnace", 256);
MachineModifier.setInternalParallelism("YMG_EndSteel_Furnace", 256);

//熔炉配方继承
RecipeAdapterBuilder.create("YMG_EndSteel_Furnace", "minecraft:furnace")
.addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input",  -115, 0, false).build())
.addModifier(RecipeModifierBuilder.create("modularmachinery:energy", "input",  4980, 0, false).build())
.build();

//红石琥珀金锭
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_EndSteel_Furnace_ElectrumFlux", "YMG_EndSteel_Furnace", 5)
.addEnergyPerTickInput(5000)
.addItemInput(<ore:dustElectrumFlux>)
.addItemOutput(<redstonearsenal:material:32>)
.build();

//极寒末影锭
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_EndSteel_Furnace_GelidEnderium", "YMG_EndSteel_Furnace", 5)
.addEnergyPerTickInput(5000)
.addItemInput(<ore:dustGelidEnderium>)
.addItemOutput(<redstonerepository:material:1>)
.build();
