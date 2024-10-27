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

//龙芯
recipes.addShaped(<draconicevolution:draconic_core> * 3,[
    [<environmentaltech:litherite>,<jaopca:item_platedensedraconium>,<environmentaltech:litherite>],
    [<jaopca:item_platedensedraconium>,<avaritia:resource:1>,<jaopca:item_platedensedraconium>],
    [<environmentaltech:litherite>,<jaopca:item_platedensedraconium>,<environmentaltech:litherite>]
]);

//觉醒龙锭
recipes.addShapeless(<draconicevolution:draconic_ingot> * 9,[<draconicevolution:draconic_block>]);

//注入合成装置
recipes.addShapeless(<draconicevolution:crafting_injector>,[<packageddraconic:marked_basic_injector>]);
recipes.addShapeless(<draconicevolution:crafting_injector:1>,[<packageddraconic:marked_wyvern_injector>]);
recipes.addShapeless(<draconicevolution:crafting_injector:2>,[<packageddraconic:marked_draconic_injector>]);
recipes.addShapeless(<draconicevolution:crafting_injector:3>,[<packageddraconic:marked_chaotic_injector>]);