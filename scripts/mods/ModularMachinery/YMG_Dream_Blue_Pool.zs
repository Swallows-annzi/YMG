/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineModifier;


//线程设置
MachineModifier.setMaxThreads("YMG_Dream_Blue_Pool", 4);

//启用并行
// MachineModifier.setParallelizable("YMG_Dream_Blue_Pool", false);
MachineModifier.setMaxParallelism("YMG_Dream_Blue_Pool", 16);
MachineModifier.setInternalParallelism("YMG_Dream_Blue_Pool", 16);

//魔力钢锭
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_0_1", "YMG_Dream_Blue_Pool", 1)
.addManaInput(3000)
.addItemInput(<ore:ingotIron>)
.addItemOutput(<botania:manaresource>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_0_2", "YMG_Dream_Blue_Pool", 1)
.addFluidInput(<liquid:fluidedmana> * 3)
.addItemInput(<ore:ingotIron>)
.addItemOutput(<botania:manaresource>)
.build();

//魔力珍珠
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_1_1", "YMG_Dream_Blue_Pool", 1)
.addManaInput(6000)
.addItemInput(<ore:enderpearl>)
.addItemOutput(<botania:manaresource:1>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_1_2", "YMG_Dream_Blue_Pool", 1)
.addFluidInput(<liquid:fluidedmana> * 6)
.addItemInput(<ore:enderpearl>)
.addItemOutput(<botania:manaresource:1>)
.build();

//魔力钻石
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_2_1", "YMG_Dream_Blue_Pool", 1)
.addManaInput(10000)
.addItemInput(<ore:gemDiamond>)
.addItemOutput(<botania:manaresource:2>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_2_2", "YMG_Dream_Blue_Pool", 1)
.addFluidInput(<liquid:fluidedmana> * 10)
.addItemInput(<ore:gemDiamond>)
.addItemOutput(<botania:manaresource:2>)
.build();

//魔力尘
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_23_1_1", "YMG_Dream_Blue_Pool", 1)
.addManaInput(400)
.addItemInput(<ore:pollen>)
.addItemOutput(<botania:manaresource:23>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_23_1_2", "YMG_Dream_Blue_Pool", 5)
.addFluidInput(<liquid:fluidedmana> * 2)
.addItemInput(<ore:pollen> * 5)
.addItemOutput(<botania:manaresource:23> * 5)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_23_2_1", "YMG_Dream_Blue_Pool", 1)
.addManaInput(500)
.addItemInput(<minecraft:redstone>)
.addItemOutput(<botania:manaresource:23>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_23_2_2", "YMG_Dream_Blue_Pool", 2)
.addFluidInput(<liquid:fluidedmana>)
.addItemInput(<minecraft:redstone> * 2)
.addItemOutput(<botania:manaresource:23> * 2)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_23_3_1", "YMG_Dream_Blue_Pool", 1)
.addManaInput(500)
.addItemInput(<minecraft:glowstone_dust>)
.addItemOutput(<botania:manaresource:23>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_23_3_2", "YMG_Dream_Blue_Pool", 2)
.addFluidInput(<liquid:fluidedmana>)
.addItemInput(<minecraft:glowstone_dust> * 2)
.addItemOutput(<botania:manaresource:23> * 2)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_23_4_1", "YMG_Dream_Blue_Pool", 1)
.addManaInput(500)
.addItemInput(<minecraft:gunpowder>)
.addItemOutput(<botania:manaresource:23>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_23_4_2", "YMG_Dream_Blue_Pool", 2)
.addFluidInput(<liquid:fluidedmana>)
.addItemInput(<minecraft:gunpowder> * 2)
.addItemOutput(<botania:manaresource:23> * 2)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_23_5_1", "YMG_Dream_Blue_Pool", 1)
.addManaInput(500)
.addItemInput(<minecraft:sugar>)
.addItemOutput(<botania:manaresource:23>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_23_5_2", "YMG_Dream_Blue_Pool", 2)
.addFluidInput(<liquid:fluidedmana>)
.addItemInput(<minecraft:sugar> * 2)
.addItemOutput(<botania:manaresource:23> * 2)
.build();

//不死图腾
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_totem_of_undying_1", "YMG_Dream_Blue_Pool", 1)
.addManaInput(50000)
.addItemInput(<extrabotany:dimensioncatalyst>).setChance(0.0)
.addItemInput(<ore:netherStar>)
.addItemOutput(<minecraft:totem_of_undying>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_totem_of_undying_2", "YMG_Dream_Blue_Pool", 1)
.addFluidInput(<liquid:fluidedmana> * 50)
.addItemInput(<extrabotany:dimensioncatalyst>).setChance(0.0)
.addItemInput(<ore:netherStar>)
.addItemOutput(<minecraft:totem_of_undying>)
.build();

//鞘翅
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_elytra_1", "YMG_Dream_Blue_Pool", 1)
.addManaInput(50000)
.addItemInput(<extrabotany:dimensioncatalyst>).setChance(0.0)
.addItemInput(<extrabotany:flyingboat:1>)
.addItemOutput(<minecraft:elytra>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_elytra_2", "YMG_Dream_Blue_Pool", 1)
.addFluidInput(<liquid:fluidedmana> * 50)
.addItemInput(<extrabotany:dimensioncatalyst>).setChance(0.0)
.addItemInput(<extrabotany:flyingboat:1>)
.addItemOutput(<minecraft:elytra>)
.build();

//潜影壳
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_shulker_shell_1", "YMG_Dream_Blue_Pool", 1)
.addManaInput(20000)
.addItemInput(<extrabotany:dimensioncatalyst>).setChance(0.0)
.addItemInput(<minecraft:diamond_horse_armor>)
.addItemOutput(<minecraft:shulker_shell>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_shulker_shell_2", "YMG_Dream_Blue_Pool", 1)
.addFluidInput(<liquid:fluidedmana> * 20)
.addItemInput(<extrabotany:dimensioncatalyst>).setChance(0.0)
.addItemInput(<minecraft:diamond_horse_armor>)
.addItemOutput(<minecraft:shulker_shell>)
.build();

//蕴魔丝线
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_16_1", "YMG_Dream_Blue_Pool", 1)
.addManaInput(5000)
.addItemInput(<minecraft:string>)
.addItemOutput(<botania:manaresource:16>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_manaresource_16_2", "YMG_Dream_Blue_Pool", 1)
.addFluidInput(<liquid:fluidedmana> * 5)
.addItemInput(<minecraft:string>)
.addItemOutput(<botania:manaresource:16>)
.build();

//魔力玻璃
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_managlass_1", "YMG_Dream_Blue_Pool", 1)
.addManaInput(150)
.addItemInput(<ore:blockGlass>)
.addItemOutput(<botania:managlass>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_managlass_2", "YMG_Dream_Blue_Pool", 20)
.addFluidInput(<liquid:fluidedmana> * 3)
.addItemInput(<ore:blockGlass> * 20)
.addItemOutput(<botania:managlass> * 20)
.build();

//魔力石英
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_quartz_1_1", "YMG_Dream_Blue_Pool", 1)
.addManaInput(250)
.addItemInput(<ore:gemQuartz>)
.addItemOutput(<botania:quartz:1>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_quartz_1_2", "YMG_Dream_Blue_Pool", 4)
.addFluidInput(<liquid:fluidedmana>)
.addItemInput(<ore:gemQuartz> * 4)
.addItemOutput(<botania:quartz:1> * 4)
.build();

//紫菘花
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_chorus_flower_1", "YMG_Dream_Blue_Pool", 1)
.addManaInput(10000)
.addItemInput(<botania:alchemycatalyst>).setChance(0.0)
.addItemInput(<minecraft:chorus_fruit_popped>)
.addItemOutput(<minecraft:chorus_flower>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_chorus_flower_2", "YMG_Dream_Blue_Pool", 1)
.addFluidInput(<liquid:fluidedmana> * 10)
.addItemInput(<botania:alchemycatalyst>).setChance(0.0)
.addItemInput(<minecraft:chorus_fruit_popped>)
.addItemOutput(<minecraft:chorus_flower>)
.build();

//梦魇燃料
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_nightmarefuel_1", "YMG_Dream_Blue_Pool", 1)
.addManaInput(2000)
.addItemInput(<minecraft:coal>)
.addItemOutput(<extrabotany:nightmarefuel>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_nightmarefuel_2", "YMG_Dream_Blue_Pool", 1)
.addFluidInput(<liquid:fluidedmana> * 2)
.addItemInput(<minecraft:coal>)
.addItemOutput(<extrabotany:nightmarefuel>)
.build();

//小土豆
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_tinypotato_1", "YMG_Dream_Blue_Pool", 1)
.addManaInput(3000)
.addItemInput(<minecraft:potato> * 2)
.addItemOutput(<botania:tinypotato> * 2)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Dream_Blue_Pool_tinypotato_2", "YMG_Dream_Blue_Pool", 1)
.addFluidInput(<liquid:fluidedmana> * 3)
.addItemInput(<minecraft:potato> * 2)
.addItemOutput(<botania:tinypotato> * 2)
.build();