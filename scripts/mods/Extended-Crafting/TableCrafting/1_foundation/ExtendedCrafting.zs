/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//高级工作台
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:table_advanced>, [
	[<extendedcrafting:material:15>, <extendedcrafting:material:9>, <extendedcrafting:material:15>], 
	[<contenttweaker:tungstenrod>, <extendedcrafting:table_basic>, <contenttweaker:tungstenrod>], 
	[<contenttweaker:tungstenrod>, <extendedcrafting:trimmed:1>, <contenttweaker:tungstenrod>]
]);

//黑铁块-金
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:trimmed:1>, [
	[<extendedcrafting:material:15>, <contenttweaker:mysteriousiceingot>, <extendedcrafting:material:15>], 
	[<contenttweaker:mysteriousiceingot>, <extendedcrafting:trimmed>, <contenttweaker:mysteriousiceingot>], 
	[<extendedcrafting:material:15>, <contenttweaker:mysteriousiceingot>, <extendedcrafting:material:15>]
]);

//精英工作台
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:table_elite>, [
	[<extendedcrafting:material:16>, <extendedcrafting:material:10>, <extendedcrafting:material:16>], 
	[<contenttweaker:mysteriousicerod>, <extendedcrafting:table_advanced>, <contenttweaker:mysteriousicerod>], 
	[<contenttweaker:mysteriousicerod>, <extendedcrafting:trimmed:2>, <contenttweaker:mysteriousicerod>]
]);