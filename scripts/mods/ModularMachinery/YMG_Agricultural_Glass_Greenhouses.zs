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

//线程设置
MachineModifier.setMaxThreads("YMG_Agricultural_Glass_Greenhouses", 64);


//有机灌注机配方继承
RecipeAdapterBuilder.create("YMG_Agricultural_Glass_Greenhouses", "thermalexpansion:insolator")
.addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input",  0.5F, 1, false).build())
.addModifier(RecipeModifierBuilder.create("modularmachinery:energy", "input",  4980, 0, false).build())
.build();

RecipeAdapterBuilder.create("YMG_Agricultural_Glass_Greenhouses", "thermalexpansion:insolator_tree")
.addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input",  0.5F, 1, false).build())
.addModifier(RecipeModifierBuilder.create("modularmachinery:energy", "input",  4980, 0, false).build())
.build();

//芝麻
mods.modularmachinery.RecipeBuilder.newBuilder("seedSesameseed", "YMG_Agricultural_Glass_Greenhouses", 120)
.addEnergyPerTickInput(5000)
.addFluidInput(<liquid:water> * 1200)
.addItemInput(<ore:seedSesameseed>)
.addItemOutputs([
    <harvestcraft:sesameseedsitem>,
    <harvestcraft:sesameseedsseeditem>
])
.addItemOutput(<harvestcraft:sesameseedsseeditem>).setChance(0.1F)
.build();
