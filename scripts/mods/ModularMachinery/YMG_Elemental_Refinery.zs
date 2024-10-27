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


//启用并行
// MachineModifier.setParallelizable("YMG_Elemental_Refinery", false);
MachineModifier.setMaxParallelism("YMG_Elemental_Refinery", 4);
MachineModifier.setInternalParallelism("YMG_Elemental_Refinery", 4);

//继承热电离蒸馏塔配方
RecipeAdapterBuilder.create("YMG_Elemental_Refinery", "modularmachinery:YMG_Thermal_Ionization_Distillation_Column")
.addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input",  0.05F,  1, false).build())
.addModifier(RecipeModifierBuilder.create("modularmachinery:energy", "input", 15.0F, 1, false).build())
.build();

//元始魔力
mods.modularmachinery.RecipeBuilder.newBuilder("Elemental_Refinery_mana", "YMG_Elemental_Refinery", 5)
.addEnergyPerTickInput(25000000)
.addFluidInputs([
    <liquid:astralsorcery.liquidstarlight> * 1000,
    <liquid:fluidedmana> * 50
])
.addFluidOutput(<liquid:mana> * 1)
.build();

//龙之血
mods.modularmachinery.RecipeBuilder.newBuilder("Elemental_Refinery_dragon_blood", "YMG_Elemental_Refinery", 120)
.addEnergyPerTickInput(50000000)
.addItemInput(<minecraft:dragon_egg>).setChance(0.01F)
.addFluidInputs([
    <liquid:heavywater> * 250
])
.addGasInput(<gas:unstabledimensional> * 10)
.addFluidOutput(<liquid:dragon_blood> * 10)
.build();

