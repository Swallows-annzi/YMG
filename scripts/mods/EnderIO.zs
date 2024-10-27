/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//合金炉
//mods.enderio.AlloySmelter.addRecipe(IItemStack output, IIngredient[] input, @Optional int energyCost, @Optional float xp);


//黑铁锭
mods.enderio.AlloySmelter.addRecipe(<extendedcrafting:material>, [<redstonearsenal:material:32>,<threng:material>], 50000);

//流明精华
mods.enderio.AlloySmelter.addRecipe(<extendedcrafting:material:7>, [<thermalfoundation:material:102>,<astralsorcery:itemusabledust>], 50000);

//模块化合金锭
mods.enderio.AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 2, [<draconicevolution:draconium_ingot>,<enderio:item_alloy_ingot:7>,<botania:manaresource:7>], 50000);