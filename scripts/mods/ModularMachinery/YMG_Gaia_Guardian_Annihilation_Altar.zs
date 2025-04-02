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
// MachineModifier.setParallelizable("YMG_Gaia_Guardian_Annihilation_Altar", false);
MachineModifier.setMaxParallelism("YMG_Gaia_Guardian_Annihilation_Altar", 16);
MachineModifier.setInternalParallelism("YMG_Gaia_Guardian_Annihilation_Altar", 16);

//盖亚 I
mods.modularmachinery.RecipeBuilder.newBuilder("Gaia_Guardian_I_1", "YMG_Gaia_Guardian_Annihilation_Altar", 6000)
.addFluidInput(<liquid:fluidedmana> * 100)
.addItemInput(<botania:manaresource:4>)
.addItemOutput(<botania:manaresource:5>).setMinMaxAmount(6,10)
.addItemOutput(<draconicevolution:mob_soul>).setChance(0.04F)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Gaia_Guardian_I_2", "YMG_Gaia_Guardian_Annihilation_Altar", 1200)
.addFluidInput(<liquid:mana> * 100)
.addItemInput(<botania:manaresource:4>)
.addItemOutput(<botania:manaresource:5>).setMinMaxAmount(10,16)
.addItemOutput(<draconicevolution:mob_soul>).setChance(0.04F)
.build();

//盖亚 II
mods.modularmachinery.RecipeBuilder.newBuilder("Gaia_Guardian_II_1", "YMG_Gaia_Guardian_Annihilation_Altar", 12000)
.addFluidInput(<liquid:fluidedmana> * 1500)
.addItemInput(<botania:manaresource:14>)
.addItemOutput(<extrabotany:material:3>).setChance(0.01)
.addItemOutput(<botania:manaresource:5>).setMinMaxAmount(16,24)
.addItemOutput(<extrabotany:rewardbag943>).setMinMaxAmount(2,3)
.addItemOutput(<extrabotany:rewardbag:3>).setMinMaxAmount(2,4)
.addItemOutput(<extrabotany:rewardbag:2> * 3)
.addItemOutput(<extrabotany:rewardbag:1> * 4)
.addItemOutput(<draconicevolution:mob_soul>).setChance(0.08F)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Gaia_Guardian_II_2", "YMG_Gaia_Guardian_Annihilation_Altar", 2400)
.addFluidInput(<liquid:mana> * 1500)
.addItemInput(<botania:manaresource:14>)
.addItemOutput(<extrabotany:material:3>).setChance(0.01)
.addItemOutput(<botania:manaresource:5>).setMinMaxAmount(20,28)
.addItemOutput(<extrabotany:rewardbag943>).setMinMaxAmount(2,3)
.addItemOutput(<extrabotany:rewardbag:3>).setMinMaxAmount(2,4)
.addItemOutput(<extrabotany:rewardbag:2> * 3)
.addItemOutput(<extrabotany:rewardbag:1> * 4)
.addItemOutput(<draconicevolution:mob_soul>).setChance(0.08F)
.build();

//盖亚 III
mods.modularmachinery.RecipeBuilder.newBuilder("Gaia_Guardian_III_1", "YMG_Gaia_Guardian_Annihilation_Altar", 18000)
.addFluidInput(<liquid:fluidedmana> * 3000)
.addItemInput(<extrabotany:material:6>)
.addItemOutput(<extrabotany:material:3>)
.addItemOutput(<extrabotany:rewardbag:3> * 9)
.addItemOutput(<extrabotany:rewardbag:2> * 9)
.addItemOutput(<extrabotany:rewardbag:1> * 12)
.addItemOutput(<extrabotany:rewardbag> * 20)
.addItemOutput(<draconicevolution:mob_soul>).setChance(0.015F)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Gaia_Guardian_III_2", "YMG_Gaia_Guardian_Annihilation_Altar", 3600)
.addFluidInput(<liquid:mana> * 3000)
.addItemInput(<extrabotany:material:6>)
.addItemOutput(<extrabotany:material:3>)
.addItemOutput(<extrabotany:rewardbag:3> * 9)
.addItemOutput(<extrabotany:rewardbag:2> * 9)
.addItemOutput(<extrabotany:rewardbag:1> * 12)
.addItemOutput(<extrabotany:rewardbag> * 20)
.addItemOutput(<draconicevolution:mob_soul>).setChance(0.015F)
.build();