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

//铱制线圈
recipes.addShaped(<contenttweaker:iridiumcoil>,[
    [<contenttweaker:iridiumwire>,<ore:stickIridium>,<contenttweaker:iridiumwire>],
    [<contenttweaker:iridiumwire>,<ore:stickIridium>,<contenttweaker:iridiumwire>],
    [<contenttweaker:iridiumwire>,<ore:stickIridium>,<contenttweaker:iridiumwire>]
]);

//铱制马达
recipes.addShaped(<contenttweaker:iridiummotor>,[
    [<ore:plateIridium>,<contenttweaker:iridiumcoil>,<ore:stickIridium>],
    [<contenttweaker:iridiumcoil>,<ore:gearIridium>,<contenttweaker:iridiumcoil>],
    [<ic2:crafting:6>,<contenttweaker:iridiumcoil>,<ore:plateIridium>]
]);

//铱制外壳
recipes.addShaped(<contenttweaker:iridiumcasing>,[
    [<ore:plateIridium>,<ore:plateIridium>,<ore:plateIridium>],
    [<ore:plateIridium>,<ic2:resource:13>,<ore:plateIridium>],
    [<ore:plateIridium>,<ore:plateIridium>,<ore:plateIridium>]
]);

//钨制外壳
recipes.addShaped(<contenttweaker:tungstencasing>,[
    [<contenttweaker:tungstenplate>,<contenttweaker:tungstenplate>,<contenttweaker:tungstenplate>],
    [<contenttweaker:tungstenplate>,<contenttweaker:iridiumcasing>,<contenttweaker:tungstenplate>],
    [<contenttweaker:tungstenplate>,<contenttweaker:tungstenplate>,<contenttweaker:tungstenplate>]
]);

//钨块
recipes.addShaped(<contenttweaker:tungstenblock>,[
    [<contenttweaker:tungsteningot>,<contenttweaker:tungsteningot>,<contenttweaker:tungsteningot>],
    [<contenttweaker:tungsteningot>,<contenttweaker:tungsteningot>,<contenttweaker:tungsteningot>],
    [<contenttweaker:tungsteningot>,<contenttweaker:tungsteningot>,<contenttweaker:tungsteningot>]
]);

//钨锭
recipes.addShaped(<contenttweaker:tungsteningot>,[
    [<contenttweaker:tungstennugget>,<contenttweaker:tungstennugget>,<contenttweaker:tungstennugget>],
    [<contenttweaker:tungstennugget>,<contenttweaker:tungstennugget>,<contenttweaker:tungstennugget>],
    [<contenttweaker:tungstennugget>,<contenttweaker:tungstennugget>,<contenttweaker:tungstennugget>]
]);

//星光宝钻块
recipes.addShaped(<contenttweaker:stellajewelblock>,[
    [<contenttweaker:stellajewel>,<contenttweaker:stellajewel>,<contenttweaker:stellajewel>],
    [<contenttweaker:stellajewel>,<contenttweaker:stellajewel>,<contenttweaker:stellajewel>],
    [<contenttweaker:stellajewel>,<contenttweaker:stellajewel>,<contenttweaker:stellajewel>]
]);

//钨制齿轮
recipes.addShaped(<contenttweaker:tungstengear>,[
	[<contenttweaker:tungstenplate>,<contenttweaker:tungsteningot>,<contenttweaker:tungstenplate>], 
	[<contenttweaker:tungsteningot>,<contenttweaker:tungstennugget>,<contenttweaker:tungsteningot>], 
	[<contenttweaker:tungstenplate>,<contenttweaker:tungsteningot>,<contenttweaker:tungstenplate>]
]);

//钨棒
recipes.addShaped(<contenttweaker:tungstenrod> * 2,[
	[null,null,<contenttweaker:tungsteningot>], 
	[null,<contenttweaker:tungsteningot>,null], 
	[<contenttweaker:tungsteningot>,null,null]
]);

//钨制线圈
recipes.addShaped(<contenttweaker:tungstencoil>,[
	[<contenttweaker:tungstenwire>,<contenttweaker:tungstenrod>,<contenttweaker:tungstenwire>], 
	[<contenttweaker:tungstenwire>,<contenttweaker:tungstenrod>,<contenttweaker:tungstenwire>], 
	[<contenttweaker:tungstenwire>,<contenttweaker:tungstenrod>,<contenttweaker:tungstenwire>]
]);

//钨制马达
recipes.addShaped(<contenttweaker:tungstenmotor>,[
	[<contenttweaker:tungstenplate>,<contenttweaker:tungstencoil>,<contenttweaker:tungstenrod>], 
	[<contenttweaker:tungstencoil>,<contenttweaker:tungstengear>,<contenttweaker:tungstencoil>], 
	[<contenttweaker:iridiummotor>,<contenttweaker:tungstencoil>,<contenttweaker:tungstenplate>]
]);

//通用数据卡
recipes.addShaped(<contenttweaker:commondatamodel>,[
	[<mekanism:polyethene:2>,<ic2:crafting:15>,<mekanism:polyethene:2>], 
	[<ic2:crafting:15>,<mets:super_circuit>,<ic2:crafting:15>], 
	[<mekanism:polyethene:2>,<ic2:crafting:15>,<mekanism:polyethene:2>]
]);

//空白模具
recipes.addShaped(<contenttweaker:mold_0>,[
	[<ore:plateDarkSteel>,<ore:plateDarkSteel>],
	[<ore:plateDarkSteel>,<ore:plateDarkSteel>]
]);

//板冲压模具
recipes.addShaped(<contenttweaker:mold_1>,[
	[<ic2:cutter:*>,null,null], 
	[null,<contenttweaker:mold_0>,null], 
	[null,null,null]
]);

//齿轮冲压模具
recipes.addShaped(<contenttweaker:mold_2>,[
	[null,<ic2:cutter:*>,null], 
	[null,<contenttweaker:mold_0>,null], 
	[null,null,null]
]);

//杆冲压模具
recipes.addShaped(<contenttweaker:mold_3>,[
	[null,null,<ic2:cutter:*>], 
	[null,<contenttweaker:mold_0>,null], 
	[null,null,null]
]);

//导线模具
recipes.addShaped(<contenttweaker:mold_4>,[
	[null,null,null], 
	[<ic2:cutter:*>,<contenttweaker:mold_0>,null], 
	[null,null,null]
]);

//外壳模具
recipes.addShaped(<contenttweaker:mold_5>,[
	[null,null,null], 
	[null,<contenttweaker:mold_0>,<ic2:cutter:*>], 
	[null,null,null]
]);

//钨锭
recipes.addShapeless(<contenttweaker:tungsteningot> * 9,[<contenttweaker:tungstenblock>]);

//钨粒
recipes.addShapeless(<contenttweaker:tungstennugget> * 9,[<contenttweaker:tungsteningot>]);

//星光宝钻
recipes.addShapeless(<contenttweaker:stellajewel> * 9,[<contenttweaker:stellajewelblock>]);

//坐标卡数据清除
recipes.addShapeless(<contenttweaker:commondatamodelpos>.withTag({display: {Lore: ["§9x坐标：§enull", "§9y坐标：§enull", "§9z坐标：§enull"]}, state: "false"}),[<contenttweaker:commondatamodelpos>]);

//坐标卡
recipes.addShapeless(<contenttweaker:commondatamodelpos>.withTag({display: {Lore: ["§9x坐标：§enull", "§9y坐标：§enull", "§9z坐标：§enull"]}, state: "false"}),[<contenttweaker:commondatamodel>, <extrabotany:binder>]);
recipes.addShapeless(<contenttweaker:commondatamodelpos>.withTag({display: {Lore: ["§9x坐标：§enull", "§9y坐标：§enull", "§9z坐标：§enull"]}, state: "false"}),[<contenttweaker:commondatamodel>, <enderio:item_coord_selector>]);

//琉璃玄冰
// recipes.addShapeless(<contenttweaker:colorfulice> * 64,[<contenttweaker:colorfulice>,<custommc:item782>]);