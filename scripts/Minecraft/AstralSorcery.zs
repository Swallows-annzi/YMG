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

//共振星杖
recipes.addShaped(<astralsorcery:itemwand>,[
    [null,<ore:plateAquamarine>,<ore:pearlFluix>],
    [null,<ore:blockMarble>,<ore:plateAquamarine>],
    [<ore:blockMarble>,null,null]
]);

//星辉合成台
recipes.addShaped(<astralsorcery:blockaltar>,[
    [<astralsorcery:blockblackmarble>,<ore:plateAquamarine>,<astralsorcery:blockblackmarble>],
    [<ore:blockMarble>,<avaritia:compressed_crafting_table>,<ore:blockMarble>],
    [<ore:blockMarble>,null,<ore:blockMarble>]
]);

//炭黑大理石
recipes.addShaped(<astralsorcery:blockblackmarble> * 8,[
    [<ore:blockMarble>,<ore:blockMarble>,<ore:blockMarble>],
    [<ore:blockMarble>,<ore:blockQuartzBlack>,<ore:blockMarble>],
    [<ore:blockMarble>,<ore:blockMarble>,<ore:blockMarble>]
]);

//大理石
recipes.addShaped(<astralsorcery:blockmarble> * 4,[
    [<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>],
    [<appliedenergistics2:smooth_sky_stone_block>,<botania:manaresource:23>,<appliedenergistics2:smooth_sky_stone_block>],
    [<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>]
]);

