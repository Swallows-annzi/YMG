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

//大理石
recipes.addShaped(<astralsorcery:blockmarble> * 4,[
    [<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>],
    [<appliedenergistics2:smooth_sky_stone_block>,<ore:dustAquamarine>,<appliedenergistics2:smooth_sky_stone_block>],
    [<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>]
]);