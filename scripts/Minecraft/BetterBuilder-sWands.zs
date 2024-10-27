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


//钻石手杖-不毁
recipes.addShapeless(<betterbuilderswands:wanddiamond>.withTag({Unbreakable: 1 as byte}),[<betterbuilderswands:wanddiamond>,<minecraft:nether_star>]);