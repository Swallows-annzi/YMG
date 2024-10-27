/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//工作台配方
//有序：recipes.addShaped(IIngredient output,ItemBOX);
//无序：recipes.addShapeless(IIngredient output,ItemBOX);

//测试密钥-末影人-4
recipes.addShaped(<deepmoblearning:trial_key>.withTag({tier: 4, attunement: "enderman", affixes: [{"0": "thunderdome"}, {"1": "knockback_immunity"}, {"2": "empowered_glitches"}]}),[
    [<deepmoblearning:pristine_matter_enderman>,<deepmoblearning:pristine_matter_enderman>,<deepmoblearning:pristine_matter_enderman>],
    [<deepmoblearning:pristine_matter_enderman>,<deepmoblearning:trial_key>,<deepmoblearning:pristine_matter_enderman>],
    [<deepmoblearning:pristine_matter_enderman>,<deepmoblearning:pristine_matter_enderman>,<deepmoblearning:pristine_matter_enderman>]
]);

//凋零骷髅模型
recipes.addShapeless(<deepmoblearning:data_model_wither_skeleton>,[<deepmoblearning:data_model_blank>,<minecraft:nether_star>]);

