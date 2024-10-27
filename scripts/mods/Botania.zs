/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//白雏菊
//mods.botania.PureDaisy.addRecipe(IIngredient blockInput, IItemStack blockOutput, @Optional int time);

//水晶石矿石
mods.botania.PureDaisy.addRecipe(<astralsorcery:blockcustomsandore>, <astralsorcery:blockcustomore>, 600);

//符文祭坛
//mods.botania.RuneAltar.addRecipe(IItemStack output, IIngredient[] input, int mana);

//空白符文
mods.botania.RuneAltar.addRecipe(<contenttweaker:blankrunes>, [<ore:ingotManasteel>,<ore:manaPearl>,<ore:manaDiamond>,<ore:powderMana>], 5200);