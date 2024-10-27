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

//熔岩工厂外壳
recipes.addShaped(<actuallyadditions:block_misc:7> * 16,[
    [<mets:niobium_titanium_plate>,<super_solar_panels:crafting:47>,<mets:niobium_titanium_plate>],
    [<super_solar_panels:crafting:47>,<actuallyadditions:block_crystal_empowered:5>,<super_solar_panels:crafting:47>],
    [<mets:niobium_titanium_plate>,<super_solar_panels:crafting:47>,<mets:niobium_titanium_plate>]
]);
