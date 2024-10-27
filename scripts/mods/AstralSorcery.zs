/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//9   1000
//mods.astralsorcery.Altar.addDiscoveryAltarRecipe("mypackname:shaped/internal/altar/---", IIngredient, int, int, []);

//海蓝宝石砂岩
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("mypackname:shaped/internal/altar/blockcustomsandore", <astralsorcery:blockcustomsandore>, 400, 100, [
    <ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>,
    <ore:gemAquamarine>,<ore:compressed1xSand>,<ore:gemAquamarine>,
    <ore:gemAquamarine>,<ore:gemAquamarine>,<ore:gemAquamarine>
]);


//13  2000
//mods.astralsorcery.Altar.addAttunementAltarRecipe("mypackname:shaped/internal/altar/---", IIngredient, int, int, []);

//基础星辉输入仓
mods.astralsorcery.Altar.addAttunementAltarRecipe("mypackname:shaped/internal/altar/starlightinputhatch", <gugu-utils:starlightinputhatch>, 1200, 100, [
    <extrabotany:material>,<botania:pool>,<extrabotany:material>,
    <botania:pool>,<modularmachinery:blockcasing>,<botania:pool>,
    <extrabotany:material>,<botania:pool>,<extrabotany:material>,
    <astralsorcery:itemshiftingstar>,<astralsorcery:itemshiftingstar>,<astralsorcery:itemshiftingstar>,<astralsorcery:itemshiftingstar>
]);

//21  4000
//mods.astralsorcery.Altar.addConstellationAltarRecipe("mypackname:shaped/internal/altar/---", IIngredient, int, int, []);

//25+ 8000
//mods.astralsorcery.Altar.addTraitAltarRecipe("mypackname:shaped/internal/altar/---", IIngredient, int, int, [],"astralsorcery.constellation.---");

//五彩星辉输入仓
mods.astralsorcery.Altar.addTraitAltarRecipe("mypackname:shaped/internal/altar/starlightinputhatch_1", <gugu-utils:starlightinputhatch:1>, 7000, 100, [
    <contenttweaker:tungsteningot>,<ore:ingotTerrasteel>,<contenttweaker:tungsteningot>,
    <ore:ingotTerrasteel>,<gugu-utils:starlightinputhatch>,<ore:ingotTerrasteel>,
    <contenttweaker:tungsteningot>,<ore:ingotTerrasteel>,<contenttweaker:tungsteningot>,
    <botania:rune:8>,<botania:rune:8>,<botania:rune:8>,<botania:rune:8>,
    <botania:bifrostperm>,<botania:bifrostperm>,<botania:bifrostperm>,<botania:bifrostperm>,
    <botania:bifrostperm>,<botania:bifrostperm>,<botania:bifrostperm>,<botania:bifrostperm>,
    <botania:bifrostperm>,<botania:bifrostperm>,<botania:bifrostperm>,<botania:bifrostperm>,
    <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.armara"}}),
    <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.discidia"}}),
    <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.evorsio"}}),
    <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.vicio"}}),
    <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.aevitas"}})
],"astralsorcery.constellation.vicio");

//瓶装末地空气
mods.astralsorcery.Altar.addTraitAltarRecipe("mypackname:shaped/internal/altar/manaresource_15", <botania:manaresource:15>, 7000, 100, [
    <astralsorcery:blockinfusedwood>,<astralsorcery:blockinfusedwood>,<astralsorcery:blockinfusedwood>,
    <botania:bifrostperm>,<botania:brewflask>.withTag({brewKey: "floating"}),<botania:bifrostperm>,
    <botania:bifrostperm>,<botania:bifrostperm>,<botania:bifrostperm>,
    null,null,<deepmoblearning:pristine_matter_doppleganger>,<deepmoblearning:pristine_matter_doppleganger>,
    <deepmoblearning:pristine_matter_doppleganger>,<deepmoblearning:pristine_matter_doppleganger>,<deepmoblearning:pristine_matter_doppleganger>,<deepmoblearning:pristine_matter_doppleganger>,
    <deepmoblearning:pristine_matter_doppleganger>,<deepmoblearning:pristine_matter_doppleganger>,<deepmoblearning:pristine_matter_doppleganger>,<deepmoblearning:pristine_matter_doppleganger>,
    <astralsorcery:blockinfusedwood>,<deepmoblearning:pristine_matter_shulker>,<deepmoblearning:pristine_matter_shulker>,<botania:bifrostperm>,
    <deepmoblearning:pristine_matter_shulker>,<minecraft:end_rod>,<minecraft:chorus_flower>,<minecraft:end_rod>,
    <deepmoblearning:pristine_matter_shulker>,<minecraft:end_rod>,<minecraft:chorus_flower>,<minecraft:end_rod>
],"astralsorcery.constellation.fornax");

//星能注入器
//mods.astralsorcery.StarlightInfusion.addInfusion(InputStack,OutputStack,consumeMultiple,consumerChance,craftTickTime);


