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

//黑铁杆
recipes.addShaped(<extendedcrafting:material:3>,[
    [null,<extendedcrafting:material:7>,<ore:nuggetBlackIron>],
    [<extendedcrafting:material:7>,<ore:ingotBlackIron>,<extendedcrafting:material:7>],
    [<ore:nuggetBlackIron>,<extendedcrafting:material:7>,null]
]);

//黑铁框架
recipes.addShaped(<extendedcrafting:frame>,[
    [<extendedcrafting:material:2>,<appliedenergistics2:quartz_vibrant_glass>,<extendedcrafting:material:2>],
    [<appliedenergistics2:quartz_vibrant_glass>,<enderio:item_material:66>,<appliedenergistics2:quartz_vibrant_glass>],
    [<extendedcrafting:material:2>,<appliedenergistics2:quartz_vibrant_glass>,<extendedcrafting:material:2>]
]);

//黑铁块
recipes.addShaped(<extendedcrafting:storage>,[
    [<ore:ingotBlackIron>,<ore:ingotBlackIron>,<ore:ingotBlackIron>],
    [<ore:ingotBlackIron>,<ore:ingotBlackIron>,<ore:ingotBlackIron>],
    [<ore:ingotBlackIron>,<ore:ingotBlackIron>,<ore:ingotBlackIron>]
]);

//黑铁锭
recipes.addShaped(<extendedcrafting:material>,[
    [<extendedcrafting:material:1>,<extendedcrafting:material:1>,<extendedcrafting:material:1>],
    [<extendedcrafting:material:1>,<extendedcrafting:material:1>,<extendedcrafting:material:1>],
    [<extendedcrafting:material:1>,<extendedcrafting:material:1>,<extendedcrafting:material:1>]
]);

//流明精华块
recipes.addShaped(<extendedcrafting:storage:1>,[
    [<extendedcrafting:material:7>,<extendedcrafting:material:7>,<extendedcrafting:material:7>],
    [<extendedcrafting:material:7>,<extendedcrafting:material:7>,<extendedcrafting:material:7>],
    [<extendedcrafting:material:7>,<extendedcrafting:material:7>,<extendedcrafting:material:7>]
]);

//基础合成催化剂
recipes.addShaped(<extendedcrafting:material:8>,[
    [<extendedcrafting:material:14>,<contenttweaker:tungsteningot>,<extendedcrafting:material:14>],
    [<contenttweaker:tungsteningot>,<contenttweaker:tungsteningot>,<contenttweaker:tungsteningot>],
    [<extendedcrafting:material:14>,<contenttweaker:tungsteningot>,<extendedcrafting:material:14>]
]);

//镶饰黑铁块-铁
recipes.addShaped(<extendedcrafting:trimmed>,[
    [<extendedcrafting:material:14>,<contenttweaker:tungsteningot>,<extendedcrafting:material:14>],
    [<contenttweaker:tungsteningot>,<extendedcrafting:storage>,<contenttweaker:tungsteningot>],
    [<extendedcrafting:material:14>,<contenttweaker:tungsteningot>,<extendedcrafting:material:14>]
]);

//基础工作台
recipes.addShaped(<extendedcrafting:table_basic>,[
    [<extendedcrafting:material:14>,<extendedcrafting:material:8>,<extendedcrafting:material:14>],
    [<extendedcrafting:material:3>,<extendedcrafting:frame>,<extendedcrafting:material:3>],
    [<extendedcrafting:material:3>,<extendedcrafting:trimmed>,<extendedcrafting:material:3>]
]);

//黑铁灯-荧石
recipes.addShaped(<extendedcrafting:lamp>,[
    [<ore:glowstone>,<ore:glowstone>,<ore:glowstone>],
    [<ore:glowstone>,<extendedcrafting:frame>,<ore:glowstone>],
    [<ore:glowstone>,<ore:glowstone>,<ore:glowstone>]
]);

//黑铁灯-流明精华块
recipes.addShaped(<extendedcrafting:lamp:1>,[
    [<extendedcrafting:storage:1>,<extendedcrafting:storage:1>,<extendedcrafting:storage:1>],
    [<extendedcrafting:storage:1>,<extendedcrafting:frame>,<extendedcrafting:storage:1>],
    [<extendedcrafting:storage:1>,<extendedcrafting:storage:1>,<extendedcrafting:storage:1>]
]);

//下界之星
recipes.addShaped(<minecraft:nether_star>,[
    [<extendedcrafting:material:140>,<extendedcrafting:material:140>,<extendedcrafting:material:140>],
    [<extendedcrafting:material:140>,<extendedcrafting:material:140>,<extendedcrafting:material:140>],
    [<extendedcrafting:material:140>,<extendedcrafting:material:140>,<extendedcrafting:material:140>]
]);

//下界之星块
recipes.addShaped(<extendedcrafting:storage:2>,[
    [<minecraft:nether_star>,<minecraft:nether_star>,<minecraft:nether_star>],
    [<minecraft:nether_star>,<minecraft:nether_star>,<minecraft:nether_star>],
    [<minecraft:nether_star>,<minecraft:nether_star>,<minecraft:nether_star>]
]);

//末影锭
recipes.addShaped(<extendedcrafting:material:36>,[
    [<extendedcrafting:material:37>,<extendedcrafting:material:37>,<extendedcrafting:material:37>],
    [<extendedcrafting:material:37>,<extendedcrafting:material:37>,<extendedcrafting:material:37>],
    [<extendedcrafting:material:37>,<extendedcrafting:material:37>,<extendedcrafting:material:37>]
]);

//末影块
recipes.addShaped(<extendedcrafting:storage:5>,[
    [<extendedcrafting:material:36>,<extendedcrafting:material:36>,<extendedcrafting:material:36>],
    [<extendedcrafting:material:36>,<extendedcrafting:material:36>,<extendedcrafting:material:36>],
    [<extendedcrafting:material:36>,<extendedcrafting:material:36>,<extendedcrafting:material:36>]
]);

//增强末影锭
recipes.addShaped(<extendedcrafting:material:48>,[
    [<extendedcrafting:material:49>,<extendedcrafting:material:49>,<extendedcrafting:material:49>],
    [<extendedcrafting:material:49>,<extendedcrafting:material:49>,<extendedcrafting:material:49>],
    [<extendedcrafting:material:49>,<extendedcrafting:material:49>,<extendedcrafting:material:49>]
]);

//增强末影块
recipes.addShaped(<extendedcrafting:storage:7>,[
    [<extendedcrafting:material:48>,<extendedcrafting:material:48>,<extendedcrafting:material:48>],
    [<extendedcrafting:material:48>,<extendedcrafting:material:48>,<extendedcrafting:material:48>],
    [<extendedcrafting:material:48>,<extendedcrafting:material:48>,<extendedcrafting:material:48>]
]);

//末影之星
recipes.addShaped(<extendedcrafting:material:40>,[
    [<extendedcrafting:material:41>,<extendedcrafting:material:41>,<extendedcrafting:material:41>],
    [<extendedcrafting:material:41>,<extendedcrafting:material:41>,<extendedcrafting:material:41>],
    [<extendedcrafting:material:41>,<extendedcrafting:material:41>,<extendedcrafting:material:41>]
]);

//末影之星块
recipes.addShaped(<extendedcrafting:storage:6>,[
    [<extendedcrafting:material:40>,<extendedcrafting:material:40>,<extendedcrafting:material:40>],
    [<extendedcrafting:material:40>,<extendedcrafting:material:40>,<extendedcrafting:material:40>],
    [<extendedcrafting:material:40>,<extendedcrafting:material:40>,<extendedcrafting:material:40>]
]);

//晶素锭
recipes.addShaped(<extendedcrafting:material:24>,[
    [<extendedcrafting:material:25>,<extendedcrafting:material:25>,<extendedcrafting:material:25>],
    [<extendedcrafting:material:25>,<extendedcrafting:material:25>,<extendedcrafting:material:25>],
    [<extendedcrafting:material:25>,<extendedcrafting:material:25>,<extendedcrafting:material:25>]
]);

//晶素块
recipes.addShaped(<extendedcrafting:storage:3>,[
    [<extendedcrafting:material:24>,<extendedcrafting:material:24>,<extendedcrafting:material:24>],
    [<extendedcrafting:material:24>,<extendedcrafting:material:24>,<extendedcrafting:material:24>],
    [<extendedcrafting:material:24>,<extendedcrafting:material:24>,<extendedcrafting:material:24>]
]);

//基础合成组件
recipes.addShaped(<extendedcrafting:material:14>,[
    [<ore:plateIridium>,<extendedcrafting:material:7>],
    [<extendedcrafting:material:2>,<extendedcrafting:material:2>]
]);

//黑铁锭
recipes.addShapeless(<extendedcrafting:material> * 9,[<ore:blockBlackIron>]);

//黑铁粒
recipes.addShapeless(<extendedcrafting:material:1> * 9,[<extendedcrafting:material>]);

//流明精华
recipes.addShapeless(<extendedcrafting:material:7> * 9,[<ore:blockLuminessence>]);

//下界之星粒
recipes.addShapeless(<extendedcrafting:material:140> * 9,[<minecraft:nether_star>]);

//下界之星
recipes.addShapeless(<minecraft:nether_star> * 9,[<extendedcrafting:storage:2>]);

//末影锭
recipes.addShapeless(<extendedcrafting:material:36> * 9,[<extendedcrafting:storage:5>]);

//末影粒
recipes.addShapeless(<extendedcrafting:material:37> * 9,[<extendedcrafting:material:36>]);

//增强末影锭
recipes.addShapeless(<extendedcrafting:material:48> * 9,[<extendedcrafting:storage:7>]);

//增强末影粒
recipes.addShapeless(<extendedcrafting:material:49> * 9,[<extendedcrafting:material:48>]);

//末影之星
recipes.addShapeless(<extendedcrafting:material:40> * 9,[<extendedcrafting:storage:6>]);

//末影之星粒
recipes.addShapeless(<extendedcrafting:material:41> * 9,[<extendedcrafting:material:40>]);

//晶素锭
recipes.addShapeless(<extendedcrafting:material:24> * 9,[<extendedcrafting:storage:3>]);

//晶素粒
recipes.addShapeless(<extendedcrafting:material:25> * 9,[<extendedcrafting:material:24>]);