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

//发热元件
recipes.addShaped(<mekanism:basicblock2:5>,[
    [<ore:ingotElectricalSteel>,<ic2:crafting:5>,<ore:ingotElectricalSteel>],
    [<ic2:crafting:5>,<mekanism:basicblock:8>,<ic2:crafting:5>],
    [<ore:ingotElectricalSteel>,<ic2:crafting:5>,<ore:ingotElectricalSteel>]
]);

//回旋式气液转换机
// recipes.addShaped(<mekanism:machineblock2>,[
//     [<ore:blockGlass>,<ore:circuitBasic>,<ore:blockGlass>],
//     [<mekanism:gastank>,<ore:battery>,<thermalexpansion:tank>],
//     [<ore:blockGlass>,<ore:circuitBasic>,<ore:blockGlass>]
// ]);

//激光
recipes.addShaped(<mekanism:machineblock2:13>,[
    [<mekanism:controlcircuit:3>,<mekanism:energytablet>,null],
    [<mekanism:controlcircuit:3>,<contenttweaker:mysteriousicecasing>,<contenttweaker:laserdiodes3>],
    [<mekanism:controlcircuit:3>,<mekanism:energytablet>,null]
]);

//反应堆端口
recipes.addShaped(<mekanismgenerators:reactor:2> * 4,[
    [<mekanismgenerators:reactor:1>,<ic2:te:26>,<mekanismgenerators:reactor:1>],
    [<ic2:te:26>,<mets:living_circuit>,<ic2:te:26>],
    [<mekanismgenerators:reactor:1>,<ic2:te:26>,<mekanismgenerators:reactor:1>]
]);

//反应堆逻辑适配器
recipes.addShaped(<mekanismgenerators:reactor:3>,[
    [<moreplates:empowered_restonia_plate>,<ic2:te:23>,<moreplates:empowered_restonia_plate>],
    [<ic2:te:23>,<mekanismgenerators:reactor:1>,<ic2:te:23>],
    [<moreplates:empowered_restonia_plate>,<ic2:te:23>,<moreplates:empowered_restonia_plate>]
]);

//反应堆框架
recipes.addShaped(<mekanismgenerators:reactor:1>,[
    [<ore:plateDenseLead>,<ore:plateDenseLead>,<ore:plateDenseLead>],
    [<ore:plateDenseLead>,<mekanismgenerators:reactorglass>,<ore:plateDenseLead>],
    [<ore:plateDenseLead>,<ore:plateDenseLead>,<ore:plateDenseLead>]
]);

//激光聚焦矩阵
recipes.addShaped(<mekanismgenerators:reactorglass:1>,[
    [<ic2:iridium_reflector>,<mekanismgenerators:reactorglass>,<ic2:iridium_reflector>],
    [<mekanismgenerators:reactorglass>,<extrabotany:lens:6>,<mekanismgenerators:reactorglass>],
    [<ic2:iridium_reflector>,<mekanismgenerators:reactorglass>,<ic2:iridium_reflector>]
]);