/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//基座
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:pedestal>, [
	[<ore:blockBlackIron>, <ore:blockBlackIron>, <ore:blockBlackIron>, <ore:blockBlackIron>, <ore:blockBlackIron>], 
	[<ore:blockLuminessence>, <ore:blockBlackIron>, <extendedcrafting:frame>, <ore:blockBlackIron>, <ore:blockLuminessence>], 
	[<extendedcrafting:material:3>, <ore:blockBlackIron>, <extendedcrafting:frame>, <ore:blockBlackIron>, <extendedcrafting:material:3>], 
	[<ore:blockLuminessence>, <ore:blockBlackIron>, <extendedcrafting:frame>, <ore:blockBlackIron>, <ore:blockLuminessence>], 
	[<ore:blockBlackIron>, <ore:blockBlackIron>, <ore:blockBlackIron>, <ore:blockBlackIron>, <ore:blockBlackIron>]
]);

//合成核心
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:crafting_core>, [
	[<ore:blockLuminessence>, <ore:blockLuminessence>, <environmentaltech:connector>, <ore:blockLuminessence>, <ore:blockLuminessence>], 
	[<ore:blockLuminessence>, <ore:blockBlackIron>, <avaritia:double_compressed_crafting_table>, <ore:blockBlackIron>, <ore:blockLuminessence>], 
	[<environmentaltech:connector>, <avaritia:double_compressed_crafting_table>, <contenttweaker:stellajewelglow>, <avaritia:double_compressed_crafting_table>, <environmentaltech:connector>], 
	[<ore:blockLuminessence>, <ore:blockBlackIron>, <avaritia:double_compressed_crafting_table>, <ore:blockBlackIron>, <ore:blockLuminessence>], 
	[<ore:blockLuminessence>, <ore:blockLuminessence>, <environmentaltech:connector>, <ore:blockLuminessence>, <ore:blockLuminessence>]
]);

//自动化接口
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:interface>, [
	[<ore:blockBlackIron>, <ore:blockBlackIron>, <extendedcrafting:material:9>, <ore:blockBlackIron>, <ore:blockBlackIron>], 
	[<ore:blockBlackIron>, <ore:blockBlackIron>, <extendedcrafting:frame>, <ore:blockBlackIron>, <ore:blockBlackIron>], 
	[<extendedcrafting:material:3>, <ore:blockBlackIron>, <extendedcrafting:frame>, <ore:blockBlackIron>, <extendedcrafting:material:3>], 
	[<extendedcrafting:material:3>, <ore:blockBlackIron>, <ore:blockLuminessence>, <ore:blockBlackIron>, <extendedcrafting:material:3>], 
	[null, <ore:ingotBlackIron>, null, <ore:ingotBlackIron>, null]
]);

//黑铁块-钻石
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:trimmed:2>, [
	[<ore:ingotAdamant>, <extendedcrafting:material:15>, <extendedcrafting:material:15>, <extendedcrafting:material:15>, <ore:ingotAdamant>], 
	[<extendedcrafting:material:15>, <extendedcrafting:material:16>, <contenttweaker:olihacon>, <extendedcrafting:material:16>, <extendedcrafting:material:15>], 
	[<extendedcrafting:material:15>, <contenttweaker:olihacon>, <extendedcrafting:trimmed:1>, <contenttweaker:olihacon>, <extendedcrafting:material:15>], 
	[<extendedcrafting:material:15>, <extendedcrafting:material:16>, <contenttweaker:olihacon>, <extendedcrafting:material:16>, <extendedcrafting:material:15>], 
	[<ore:ingotAdamant>, <extendedcrafting:material:15>, <extendedcrafting:material:15>, <extendedcrafting:material:15>, <ore:ingotAdamant>]
]);