/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//末影工作台
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:ender_crafter>, [
	[<ore:plateGelidEnderium>, <ore:plateGelidEnderium>, <extendedcrafting:material:36>, <extendedcrafting:material:36>, <extendedcrafting:material:36>, <ore:plateGelidEnderium>, <ore:plateGelidEnderium>], 
	[<ore:plateGelidEnderium>, <ore:blockCrystalMatrix>, <extendedcrafting:material:36>, <extendedcrafting:table_advanced>, <extendedcrafting:material:36>, <ore:blockCrystalMatrix>, <ore:plateGelidEnderium>], 
	[<ore:plateGelidEnderium>, <ore:blockCrystalMatrix>, <ore:blockCrystalMatrix>, <ore:blockCrystalMatrix>, <ore:blockCrystalMatrix>, <ore:blockCrystalMatrix>, <ore:plateGelidEnderium>], 
	[<ore:blockEnderium>, <extendedcrafting:trimmed>, <ore:blockCrystalMatrix>, <packagedastral:constellation_focus>, <ore:blockCrystalMatrix>, <extendedcrafting:trimmed>, <ore:blockEnderium>], 
	[<ore:blockEnderium>, <extendedcrafting:trimmed>, <extendedcrafting:material:36>, <extendedcrafting:material:36>, <extendedcrafting:material:36>, <extendedcrafting:trimmed>, <ore:blockEnderium>], 
	[<ore:blockEnderium>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <ore:blockEnderium>], 
	[<extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>]
]);

//末影发电机
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:ender_alternator>, [
	[null, null, <astralsorcery:iteminfusedglass>, <actuallyadditions:item_misc:19>, <astralsorcery:iteminfusedglass>, null, null], 
	[null, null, <mets:field_generator>, <extendedcrafting:material:36>, <mets:field_generator>, null, null], 
	[null, null, <ore:blockCrystalMatrix>, <extendedcrafting:material:36>, <ore:blockCrystalMatrix>, null, null], 
	[<ore:blockEnderium>, <extendedcrafting:trimmed>, <ore:blockCrystalMatrix>, <extendedcrafting:material:36>, <ore:blockCrystalMatrix>, <extendedcrafting:trimmed>, <ore:blockEnderium>], 
	[<ore:blockEnderium>, <extendedcrafting:trimmed>, <extendedcrafting:material:36>, <extendedcrafting:material:36>, <extendedcrafting:material:36>, <extendedcrafting:trimmed>, <ore:blockEnderium>], 
	[<ore:blockEnderium>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <ore:blockEnderium>], 
	[<extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed>]
]);