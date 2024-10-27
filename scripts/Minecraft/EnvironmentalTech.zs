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

//玻璃透镜
recipes.addShaped(<environmentaltech:laser_lens>,[
    [<ore:fusedQuartz>,null,<ore:fusedQuartz>],
    [<ore:fusedQuartz>,<astralsorcery:itemcraftingcomponent:3>,<ore:fusedQuartz>],
    [<ore:fusedQuartz>,null,<ore:fusedQuartz>]
]);

//连接器
recipes.addShaped(<environmentaltech:connector>,[
    [<ore:ingotCrystallineAlloy>,<super_solar_panels:crafting:47>,<ore:ingotCrystallineAlloy>],
    [<super_solar_panels:crafting:47>,<ore:ingotCrystallineAlloy>,<super_solar_panels:crafting:47>],
    [<ore:ingotCrystallineAlloy>,<super_solar_panels:crafting:47>,<ore:ingotCrystallineAlloy>]
]);

//激光核心
recipes.addShaped(<environmentaltech:laser_core>,[
    [<ore:ingotGelidEnderium>,<appliedenergistics2:quartz_vibrant_glass>,<ore:ingotGelidEnderium>],
    [<environmentaltech:connector>,<appliedenergistics2:quartz_vibrant_glass>,<environmentaltech:connector>],
    [<ore:ingotGelidEnderium>,<appliedenergistics2:quartz_vibrant_glass>,<ore:ingotGelidEnderium>]
]);

//莱泽尔水晶
recipes.addShapeless(<environmentaltech:litherite_crystal> * 9,[<environmentaltech:litherite>]);



