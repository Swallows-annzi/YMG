/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//工作台配方
//有序：recipes.addShape(IIngredient output,ItemBOX);
//无序：recipes.addShapeless(IIngredient output,ItemBOX);

//强化黑曜石
recipes.addShaped(<enderio:block_reinforced_obsidian>,[
    [<ore:ingotDarkSteel>,<ore:blockEndSteel>,<ore:ingotDarkSteel>],
    [<ore:blockEndSteel>,<ore:compressed3xDustBedrock>,<ore:blockEndSteel>],
    [<ore:ingotDarkSteel>,<ore:blockEndSteel>,<ore:ingotDarkSteel>]
]);