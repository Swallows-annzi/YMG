/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable


//龙息
mods.modularmachinery.RecipeBuilder.newBuilder("dragon_breath", "YMG_Jumping_Rift", 600)
.addEnergyPerTickInput(40000000)
.addItemInputs([
    <minecraft:skull:5>,
    <botania:manaresource:15>
])
.addItemOutput(<minecraft:dragon_breath>)
.build();

//龙蛋与龙首
mods.modularmachinery.RecipeBuilder.newBuilder("Jumping_Rift_skull_5_dragon_egg", "YMG_Jumping_Rift", 1200)
.addEnergyPerTickInput(200000000)
.addItemInputs([
    <minecraft:end_stone> * 64,
    <minecraft:chorus_flower> * 64,
    <botania:manaresource:15>
])
.addItemOutput(<minecraft:skull:5>)
.addItemOutput(<minecraft:dragon_egg>).setChance(0.5F)
.addRecipeTooltip(
    "据说末影龙会飞过折跃门....没错，就是末影龙..",
    "但是你需要将此向伪装成末地外围。",
    "总所周知.....公龙不会下蛋.."
)
.build();

//折跃晶素
mods.modularmachinery.RecipeBuilder.newBuilder("jump_crystalline", "YMG_Jumping_Rift", 400)
.addEnergyPerTickInput(64000000)
.addFluidInputs([
    <liquid:crystal_matrix> * 144
])
.addItemInputs([
    <minecraft:chorus_fruit> * 64,
    <ore:crystalErodium> * 4
])
.addFluidOutput(<liquid:jump_crystalline> * 200)
.build();