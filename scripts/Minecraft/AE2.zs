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

//ME控制器
recipes.addShaped(<appliedenergistics2:controller>,[
    [<ore:pearlFluix>,<appliedenergistics2:part:76>,<ore:pearlFluix>],
    [<appliedenergistics2:part:76>,<threng:material:4>,<appliedenergistics2:part:76>],
    [<ore:pearlFluix>,<appliedenergistics2:part:76>,<ore:pearlFluix>]
]);

//石英玻璃
recipes.addShaped(<appliedenergistics2:quartz_glass> * 4,[
    [<ore:plateCertusQuartz>,<ore:blockGlass>,<ore:plateCertusQuartz>],
    [<ore:blockGlass>,<ore:plateCertusQuartz>,<ore:blockGlass>],
    [<ore:plateCertusQuartz>,<ore:blockGlass>,<ore:plateCertusQuartz>]
]);
recipes.addShaped(<appliedenergistics2:quartz_glass> * 4,[
    [<ore:plateQuartz>,<ore:blockGlass>,<ore:plateQuartz>],
    [<ore:blockGlass>,<ore:plateQuartz>,<ore:blockGlass>],
    [<ore:plateQuartz>,<ore:blockGlass>,<ore:plateQuartz>]
]);
recipes.addShaped(<appliedenergistics2:quartz_glass> * 4,[
    [<ore:plateQuartzBlack>,<ore:blockGlass>,<ore:plateQuartzBlack>],
    [<ore:blockGlass>,<ore:plateQuartzBlack>,<ore:blockGlass>],
    [<ore:plateQuartzBlack>,<ore:blockGlass>,<ore:plateQuartzBlack>]
]);
