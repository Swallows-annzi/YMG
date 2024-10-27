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

//组合封包合成器
recipes.addShaped(<packagedexcrafting:combination_crafter>,[
    [<extendedcrafting:material:16>,<extendedcrafting:interface>,<extendedcrafting:material:16>],
    [<contenttweaker:olihacon>,<extendedcrafting:crafting_core>,<contenttweaker:olihacon>],
    [<extendedcrafting:material:16>,<packagedauto:me_package_component>,<extendedcrafting:material:16>]
]);

//聚合封包合成器
recipes.addShaped(<packageddraconic:fusion_crafter>,[
    [<ore:plateWyvernMetal>,<packagedauto:me_package_component>,<ore:plateWyvernMetal>],
    [<super_solar_panels:crafting:30>,<draconicevolution:fusion_crafting_core>,<super_solar_panels:crafting:30>],
    [<ore:plateWyvernMetal>,<contenttweaker:ymcomputecore>,<ore:plateWyvernMetal>]
]);
