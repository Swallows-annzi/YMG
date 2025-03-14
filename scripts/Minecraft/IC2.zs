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

//分子重组仪
recipes.addShaped(<super_solar_panels:machines:25>,[
	[<contenttweaker:tungstenblock>,<ic2:resource:13>,<contenttweaker:tungstenblock>], 
	[<mets:super_circuit>,<ic2:nuclear:10>,<mets:super_circuit>], 
	[<contenttweaker:tungstenblock>,<ic2:resource:13>,<contenttweaker:tungstenblock>]
]);

//光谱电路板
recipes.addShaped(<super_solar_panels:crafting:44>,[
	[<super_solar_panels:crafting:42>,<jaopca:item_platedenseiridium>,<super_solar_panels:crafting:42>], 
	[<jaopca:item_platedenseiridium>,<super_solar_panels:crafting:23>,<jaopca:item_platedenseiridium>], 
	[<super_solar_panels:crafting:42>,<jaopca:item_platedenseiridium>,<super_solar_panels:crafting:42>]
]);

//钛铁合金扇叶
recipes.addShaped(<mets:titanium_iron_rotor_blade>,[
	[<ore:plateSteel>,<ore:plateTitanium>,<ore:plateSteel>], 
	[<ore:plateSteel>,<ore:plateTitanium>,<ore:plateSteel>], 
	[<ore:plateSteel>,<ore:plateTitanium>,<ore:plateSteel>]
]);

//电力激光镭射步枪
recipes.addShaped(<mets:electric_submachine_gun>,[
	[<ore:plateIron>,<ore:plateIron>,<mets:lithium_battery>], 
	[<mets:lens>,<ic2:neutron_reflector>,<ic2:crafting:2>], 
	[<ore:plateIron>,<ore:plateIron>,<ic2:crafting:12>]
]);

//光子阳光合金
recipes.addShaped(<super_solar_panels:crafting:31>,[
	[null,null,null], 
	[<super_solar_panels:crafting:32>,<super_solar_panels:crafting:33>,<super_solar_panels:crafting:32>], 
	[null,null,null]
]);

//双联燃料棒-质子
recipes.addShaped(<super_solar_panels:dual_proton_fuel_rod>,[
	[null,null,null], 
	[<super_solar_panels:proton_fuel_rod>,<ore:plateIron>,<super_solar_panels:proton_fuel_rod>], 
	[null,null,null]
]);

//四联燃料棒-质子
recipes.addShaped(<super_solar_panels:quad_proton_fuel_rod>,[
	[null,<super_solar_panels:dual_proton_fuel_rod>,null], 
	[<ore:plateCopper>,<ore:plateIron>,<ore:plateCopper>], 
	[null,<super_solar_panels:dual_proton_fuel_rod>,null]
]);
recipes.addShaped(<super_solar_panels:quad_proton_fuel_rod>,[
	[<super_solar_panels:proton_fuel_rod>,<ore:plateIron>,<super_solar_panels:proton_fuel_rod>], 
	[<ore:plateCopper>,<ore:plateIron>,<ore:plateCopper>], 
	[<super_solar_panels:proton_fuel_rod>,<ore:plateIron>,<super_solar_panels:proton_fuel_rod>]
]);

//四联燃料棒-质子
recipes.addShaped(<super_solar_panels:eit_proton_fuel_rod>,[
	[null,<super_solar_panels:quad_proton_fuel_rod>,null], 
	[<ore:plateCopper>,<ore:plateIron>,<ore:plateCopper>], 
	[null,<super_solar_panels:quad_proton_fuel_rod>,null]
]);
recipes.addShaped(<super_solar_panels:eit_proton_fuel_rod>,[
	[<super_solar_panels:dual_proton_fuel_rod>,<ore:plateIron>,<super_solar_panels:dual_proton_fuel_rod>], 
	[<ore:plateCopper>,<ore:plateIron>,<ore:plateCopper>], 
	[<super_solar_panels:dual_proton_fuel_rod>,<ore:plateIron>,<super_solar_panels:dual_proton_fuel_rod>]
]);

//超频升级
recipes.addShaped(<ic2:upgrade> * 4,[
	[<contenttweaker:olihacon>,<thermalfoundation:material:1028>,<contenttweaker:olihacon>], 
	[<gravisuite:crafting:1>,<contenttweaker:ymcomputecore>,<gravisuite:crafting:1>], 
	[<super_solar_panels:machines:15>,<super_solar_panels:max_heat_storage>,<super_solar_panels:machines:15>]
]);

//极性磁控管
recipes.addShaped(<gravisuite:crafting:4>,[
	[<ic2:crafting:4>,<gravisuite:crafting:1>,<ic2:crafting:4>], 
	[<ic2:crafting:4>,<gravisuite:crafting:1>,<ic2:crafting:4>], 
	[<contenttweaker:mysteriousicecoil>,<gravisuite:crafting:2>,<contenttweaker:mysteriousicecoil>]
]);