/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.RecipeModifierBuilder;


//能量产出
val EnergyOutputMagnification = 2500;

//线程设置
MachineModifier.setMaxThreads("YMG_Fuel_Generators_4x", 4);

//继承1x燃料发电机配方
RecipeAdapterBuilder.create("YMG_Fuel_Generators_4x", "modularmachinery:YMG_Fuel_Generators_1x")
.addModifier(RecipeModifierBuilder.create("modularmachinery:fluid", "input",  8.0F,  1, false).build())
.addModifier(RecipeModifierBuilder.create("modularmachinery:gas", "input",  8.0F,  1, false).build())
.addModifier(RecipeModifierBuilder.create("modularmachinery:energy", "output", 9.6F, 1, false).build())
.build();
