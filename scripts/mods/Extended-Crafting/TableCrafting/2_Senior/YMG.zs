/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//环形钨制线圈
mods.extendedcrafting.TableCrafting.addShaped(0, <contenttweaker:tungstenringcoil>, [
	[<contenttweaker:tungstencoil>, <contenttweaker:tungstencoil>, <contenttweaker:tungstenplate>, <contenttweaker:tungstencoil>, <contenttweaker:tungstencoil>], 
	[<contenttweaker:tungstencoil>, <contenttweaker:tungsteningot>, <contenttweaker:tungsteningot>, <contenttweaker:tungsteningot>, <contenttweaker:tungstencoil>], 
	[<contenttweaker:tungstenplate>, <contenttweaker:tungsteningot>, <contenttweaker:tungstenplate>, <contenttweaker:tungsteningot>, <contenttweaker:tungstenplate>], 
	[<contenttweaker:tungstencoil>, <contenttweaker:tungsteningot>, <contenttweaker:tungsteningot>, <contenttweaker:tungsteningot>, <contenttweaker:tungstencoil>], 
	[<contenttweaker:tungstencoil>, <contenttweaker:tungstencoil>, <contenttweaker:tungstenplate>, <contenttweaker:tungstencoil>, <contenttweaker:tungstencoil>]
]);

//真空管
mods.extendedcrafting.TableCrafting.addShaped(0, <contenttweaker:vacuum_vessels> * 4, [
	[<contenttweaker:mysteriousiceplate>, <contenttweaker:mysteriousiceplate>, <thermaldynamics:duct_16:7>, <contenttweaker:mysteriousiceplate>, <contenttweaker:mysteriousiceplate>], 
	[<contenttweaker:mysteriousiceplate>, <mekanismgenerators:reactorglass>, <jaopca:block_glasshardenedancientdebris>, <mekanismgenerators:reactorglass>, <contenttweaker:mysteriousiceplate>], 
	[<thermaldynamics:duct_16:7>, <mekanismgenerators:reactorglass>, <jaopca:block_glasshardenedancientdebris>, <mekanismgenerators:reactorglass>, <thermaldynamics:duct_16:7>], 
	[<contenttweaker:mysteriousiceplate>, <mekanismgenerators:reactorglass>, <jaopca:block_glasshardenedancientdebris>, <mekanismgenerators:reactorglass>, <contenttweaker:mysteriousiceplate>], 
	[<contenttweaker:mysteriousiceplate>, <contenttweaker:mysteriousiceplate>, <thermaldynamics:duct_16:7>, <contenttweaker:mysteriousiceplate>, <contenttweaker:mysteriousiceplate>]
]);