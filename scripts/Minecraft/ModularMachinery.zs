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

//机械外壳
recipes.addShaped(<modularmachinery:blockcasing>,[
    [<modularmachinery:itemmodularium>,<ore:plateIridium>,<modularmachinery:itemmodularium>],
    [<ore:plateIridium>,<extendedcrafting:frame>,<ore:plateIridium>],
    [<modularmachinery:itemmodularium>,<ore:plateIridium>,<modularmachinery:itemmodularium>]
]);

//机械齿轮箱
recipes.addShaped(<modularmachinery:blockcasing:3>,[
    [null,<ore:gearSignalum>,null],
    [<ore:gearSignalum>,<modularmachinery:blockcasing>,<ore:gearSignalum>],
    [null,<ore:gearSignalum>,null]
]);

//机械通风口
recipes.addShaped(<modularmachinery:blockcasing:1>,[
    [<ore:ingotDarkSteel>,<enderio:block_end_iron_bars>,<ore:ingotDarkSteel>],
    [<enderio:block_end_iron_bars>,<modularmachinery:blockcasing>,<enderio:block_end_iron_bars>],
    [<ore:ingotDarkSteel>,<enderio:block_end_iron_bars>,<ore:ingotDarkSteel>]
]);

//燃烧室外壳
recipes.addShaped(<modularmachinery:blockcasing:2>,[
    [null,<ore:plateDenseBronze>,null],
    [<ore:plateDenseBronze>,<modularmachinery:blockcasing>,<ore:plateDenseBronze>],
    [null,<ore:plateDenseBronze>,null]
]);

//生命源质输入仓
recipes.addShaped(<modularmachinery:blocklifeessenceproviderinput>,[
    [<bloodmagic:ritual_stone>,<bloodmagic:blood_rune:10>,<bloodmagic:ritual_stone>],
    [<bloodmagic:slate:3>,<bloodmagic:blood_orb>,<bloodmagic:slate:3>],
    [<bloodmagic:ritual_stone>,<bloodmagic:blood_rune:7>,<bloodmagic:ritual_stone>]
]);

//生命源质输出仓
recipes.addShaped(<modularmachinery:blocklifeessenceprovideroutput>,[
    [<bloodmagic:ritual_stone>,<bloodmagic:blood_rune:9>,<bloodmagic:ritual_stone>],
    [<bloodmagic:slate:3>,<bloodmagic:blood_orb>,<bloodmagic:slate:3>],
    [<bloodmagic:ritual_stone>,<bloodmagic:blood_rune:7>,<bloodmagic:ritual_stone>]
]);

//环境传感器
recipes.addShaped(<gugu-utils:environmenthatch>,[
    [null,<minecraft:daylight_detector>,null],
    [<appliedenergistics2:light_detector>,<modularmachinery:blockcasing>,<appliedenergistics2:light_detector>],
    [<minecraft:comparator>,<modularmachinery:itemmodularium>,<minecraft:comparator>]
]);

//智能数据接口
recipes.addShapeless(<modularmachinery:blocksmartinterface>,[<modularmachinery:blockcasing>,<appliedenergistics2:memory_card>]);

//流体输入仓-微型
recipes.addShapeless(<modularmachinery:blockfluidinputhatch>,[<modularmachinery:blockcasing>,<thermalexpansion:tank>,<thermaldynamics:retriever:2>,<thermalfoundation:upgrade:1>]);

//流体输入仓-小型
recipes.addShapeless(<modularmachinery:blockfluidinputhatch:1>,[<modularmachinery:blockcasing>,<thermalexpansion:tank>,<thermaldynamics:retriever:4>,<thermalfoundation:upgrade:3>]);

//流体输出仓-微型
recipes.addShapeless(<modularmachinery:blockfluidoutputhatch>,[<modularmachinery:blockcasing>,<thermalexpansion:tank>,<thermaldynamics:servo:2>,<thermalfoundation:upgrade:1>]);

//流体输出仓-小型
recipes.addShapeless(<modularmachinery:blockfluidoutputhatch:1>,[<modularmachinery:blockcasing>,<thermalexpansion:tank>,<thermaldynamics:servo:4>,<thermalfoundation:upgrade:3>]);

//物品输入仓-微型
recipes.addShapeless(<modularmachinery:blockinputbus>,[<modularmachinery:blockcasing>,<ironchest:iron_chest:1>,<thermaldynamics:retriever:2>]);

//物品输入仓-小型
recipes.addShapeless(<modularmachinery:blockinputbus:1>,[<modularmachinery:blockcasing>,<ironchest:iron_chest:2>,<thermaldynamics:retriever:4>]);

//物品输出仓-微型
recipes.addShapeless(<modularmachinery:blockoutputbus>,[<modularmachinery:blockcasing>,<ironchest:iron_chest:1>,<thermaldynamics:servo:2>]);

//物品输出仓-小型
recipes.addShapeless(<modularmachinery:blockoutputbus:1>,[<modularmachinery:blockcasing>,<ironchest:iron_chest:2>,<thermaldynamics:servo:4>]);

//能源输入仓-微型
recipes.addShapeless(<modularmachinery:blockenergyinputhatch>,[<modularmachinery:blockcasing>,<thermalexpansion:cell>,<thermaldynamics:retriever:2>,<thermalfoundation:upgrade:1>]);

//能源输入仓-小型
recipes.addShapeless(<modularmachinery:blockenergyinputhatch:1>,[<modularmachinery:blockenergyinputhatch>,<thermalexpansion:cell>,<thermaldynamics:retriever:4>,<thermalfoundation:upgrade:3>]);

//能源输出仓-微型
recipes.addShapeless(<modularmachinery:blockenergyoutputhatch>,[<modularmachinery:blockcasing>,<thermalexpansion:cell>,<thermaldynamics:servo:2>,<thermalfoundation:upgrade:1>]);

//能源输出仓-小型
recipes.addShapeless(<modularmachinery:blockenergyoutputhatch:1>,[<modularmachinery:blockenergyoutputhatch>,<thermalexpansion:cell>,<thermaldynamics:servo:4>,<thermalfoundation:upgrade:3>]);


//AE输入输出总线
// recipes.addShapeless(<modularmachinery:blockmeitemoutputbus>,[<modularmachinery:blockcasing>,<appliedenergistics2:interface>,<appliedenergistics2:part:240>]);
// recipes.addShapeless(<modularmachinery:blockmeiteminputbus>,[<modularmachinery:blockcasing>,<appliedenergistics2:interface>,<appliedenergistics2:part:260>]);
// recipes.addShapeless(<modularmachinery:blockmefluidoutputbus>,[<modularmachinery:blockcasing>,<appliedenergistics2:fluid_interface>,<appliedenergistics2:part:241>]);
// recipes.addShapeless(<modularmachinery:blockmefluidinputbus>,[<modularmachinery:blockcasing>,<appliedenergistics2:fluid_interface>,<appliedenergistics2:part:261>]);
