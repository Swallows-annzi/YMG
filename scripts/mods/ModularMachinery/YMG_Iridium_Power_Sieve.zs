/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineModifier;


//能量消耗
val setEnergy = 2000;

//线程设置
MachineModifier.setMaxThreads("YMG_Iridium_Power_Sieve", 12);

//线筛网-粉碎陨石
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_A_1_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:1>).setChance(0)
.addItemInput(<exnihilocreatio:block_skystone_crushed>)
.addItemOutput(<appliedenergistics2:crystal_seed>.withTag({progress: 0})).setChance(0.5)
.build();

//燧石筛网-粉碎陨石
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_B_1_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:2>).setChance(0)
.addItemInput(<exnihilocreatio:block_skystone_crushed>)
.addItemOutput(<appliedenergistics2:crystal_seed>.withTag({progress: 0})).setChance(0.5)
.build();

//铁筛网-粉碎陨石
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_C_1_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:iron_mesh>).setChance(0)
.addItemInput(<exnihilocreatio:block_skystone_crushed>)
.addItemOutput(<appliedenergistics2:crystal_seed>.withTag({progress: 0})).setChance(0.3)
.addItemOutput(<appliedenergistics2:material>).setChance(0.7)
.build();

//钻石筛网-粉碎陨石
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_D_1_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:4>).setChance(0)
.addItemInput(<exnihilocreatio:block_skystone_crushed>)
.addItemOutput(<appliedenergistics2:material>).setChance(0.8)
.addItemOutput(<appliedenergistics2:material:1>).setChance(0.1)
.build();

//线筛网-灵魂沙
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_A_2_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:1>).setChance(0)
.addItemInput(<ore:soulSand>)
.addItemOutput(<minecraft:nether_wart>).setChance(0.1)
.build();

//线筛网-压缩灵魂沙
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_A_2_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<exnihilocreatio:item_mesh:1>).setChance(0)
.addItemInput(<ore:compressed1xSoulsand>)
.addItemOutput(<minecraft:nether_wart> * 7).setChance(0.1)
.build();

//燧石筛网-灵魂沙
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_B_2_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:2>).setChance(0)
.addItemInput(<ore:soulSand>)
.addItemOutput(<minecraft:quartz>)
.addItemOutput(<minecraft:quartz>).setChance(0.33)
.build();

//燧石筛网-压缩灵魂沙
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_B_2_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<exnihilocreatio:item_mesh:2>).setChance(0)
.addItemInput(<ore:compressed1xSoulsand>)
.addItemOutput(<minecraft:quartz> * 7)
.addItemOutput(<minecraft:quartz> * 7).setChance(0.33)
.build();

//钻石筛网-灵魂沙
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_D_2_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:4>).setChance(0)
.addItemInput(<ore:soulSand>)
.addItemOutput(<minecraft:ghast_tear>).setChance(0.02)
.addItemOutput(<minecraft:quartz>)
.addItemOutput(<minecraft:quartz>).setChance(0.8)
.build();

//钻石筛网-压缩灵魂沙
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_D_2_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<exnihilocreatio:item_mesh:4>).setChance(0)
.addItemInput(<ore:compressed1xSoulsand>)
.addItemOutput(<minecraft:ghast_tear> * 7).setChance(0.02)
.addItemOutput(<minecraft:quartz> * 7)
.addItemOutput(<minecraft:quartz> * 7).setChance(0.8)
.build();

//线筛网-沙砾
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_A_3_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:1>).setChance(0)
.addItemInput(<ore:gravel>)
.addItemOutput(<minecraft:flint>).setChance(0.25)
.build();

//线筛网-压缩沙砾
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_A_3_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<exnihilocreatio:item_mesh:1>).setChance(0)
.addItemInput(<ore:compressed1xGravel>)
.addItemOutput(<minecraft:flint> * 7).setChance(0.25)
.build();

//燧石筛网-沙砾
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_B_3_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:2>).setChance(0)
.addItemInput(<ore:gravel>)
.addItemOutput(<minecraft:flint>).setChance(0.25)
.addItemOutput(<minecraft:coal>).setChance(0.125)
.addItemOutput(<minecraft:dye:4>).setChance(0.05)
.addItemOutput(<exnihilocreatio:item_ore_gold>).setChance(0.05)
.addItemOutput(<exnihilocreatio:item_ore_iron>).setChance(0.1)
.addItemOutput(<exnihilocreatio:item_ore_copper>).setChance(0.05)
.addItemOutput(<exnihilocreatio:item_ore_nickel>).setChance(0.05)
.addItemOutput(<exnihilocreatio:item_ore_platinum>).setChance(0.02)
.addItemOutput(<jaopca:item_pieceastralstarmetal>).setChance(0.01)
.addItemOutput(<jaopca:item_piecedraconium>).setChance(0.05)
.addItemOutput(<jaopca:item_pieceiridium>).setChance(0.004)
.addItemOutput(<jaopca:item_piecemithril>).setChance(0.02)
.build();

//燧石筛网-压缩沙砾
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_B_3_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<exnihilocreatio:item_mesh:2>).setChance(0)
.addItemInput(<ore:compressed1xGravel>)
.addItemOutput(<minecraft:flint> * 7).setChance(0.25)
.addItemOutput(<minecraft:coal> * 7).setChance(0.125)
.addItemOutput(<minecraft:dye:4> * 7).setChance(0.05)
.addItemOutput(<exnihilocreatio:item_ore_gold> * 7).setChance(0.05)
.addItemOutput(<exnihilocreatio:item_ore_iron> * 7).setChance(0.1)
.addItemOutput(<exnihilocreatio:item_ore_copper> * 7).setChance(0.05)
.addItemOutput(<exnihilocreatio:item_ore_nickel> * 7).setChance(0.05)
.addItemOutput(<exnihilocreatio:item_ore_platinum> * 7).setChance(0.02)
.addItemOutput(<jaopca:item_pieceastralstarmetal> * 7).setChance(0.01)
.addItemOutput(<jaopca:item_piecedraconium> * 7).setChance(0.05)
.addItemOutput(<jaopca:item_pieceiridium> * 7).setChance(0.004)
.addItemOutput(<jaopca:item_piecemithril> * 7).setChance(0.02)
.build();

//铁筛网-沙砾
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_C_3_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:iron_mesh>).setChance(0)
.addItemInput(<ore:gravel>)
.addItemOutput(<minecraft:diamond>).setChance(0.008)
.addItemOutput(<minecraft:emerald>).setChance(0.008)
.addItemOutput(<exnihilocreatio:item_ore_gold>).setChance(0.075)
.addItemOutput(<exnihilocreatio:item_ore_iron>).setChance(0.15)
.addItemOutput(<exnihilocreatio:item_ore_copper>).setChance(0.075)
.addItemOutput(<exnihilocreatio:item_ore_nickel>).setChance(0.075)
.addItemOutput(<exnihilocreatio:item_ore_uranium>).setChance(0.05)
.addItemOutput(<exnihilocreatio:item_ore_osmium>).setChance(0.05)
.addItemOutput(<exnihilocreatio:item_ore_platinum>).setChance(0.04)
.addItemOutput(<jaopca:item_pieceastralstarmetal>).setChance(0.02)
.addItemOutput(<jaopca:item_piecedraconium>).setChance(0.07)
.addItemOutput(<jaopca:item_pieceiridium>).setChance(0.008)
.addItemOutput(<jaopca:item_piecemithril>).setChance(0.04)
.addItemOutput(<astralsorcery:itemcraftingcomponent>).setChance(0.008)
.addItemOutput(<appliedenergistics2:material:1>).setChance(0.008)
.addItemOutput(<mekanism:fluoriteclump>).setChance(0.008)
.build();

//铁筛网-压缩沙砾
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_C_3_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<ore:iron_mesh>).setChance(0)
.addItemInput(<ore:compressed1xGravel>)
.addItemOutput(<minecraft:diamond> * 7).setChance(0.008)
.addItemOutput(<minecraft:emerald> * 7).setChance(0.008)
.addItemOutput(<exnihilocreatio:item_ore_gold> * 7).setChance(0.075)
.addItemOutput(<exnihilocreatio:item_ore_iron> * 7).setChance(0.15)
.addItemOutput(<exnihilocreatio:item_ore_copper> * 7).setChance(0.075)
.addItemOutput(<exnihilocreatio:item_ore_nickel> * 7).setChance(0.075)
.addItemOutput(<exnihilocreatio:item_ore_uranium> * 7).setChance(0.05)
.addItemOutput(<exnihilocreatio:item_ore_osmium> * 7).setChance(0.05)
.addItemOutput(<exnihilocreatio:item_ore_platinum> * 7).setChance(0.04)
.addItemOutput(<jaopca:item_pieceastralstarmetal> * 7).setChance(0.02)
.addItemOutput(<jaopca:item_piecedraconium> * 7).setChance(0.07)
.addItemOutput(<jaopca:item_pieceiridium> * 7).setChance(0.008)
.addItemOutput(<jaopca:item_piecemithril> * 7).setChance(0.04)
.addItemOutput(<astralsorcery:itemcraftingcomponent> * 7).setChance(0.008)
.addItemOutput(<appliedenergistics2:material:1> * 7).setChance(0.008)
.addItemOutput(<mekanism:fluoriteclump> * 7).setChance(0.008)
.build();

//钻石筛网-沙砾
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_D_3_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:4>).setChance(0)
.addItemInput(<ore:gravel>)
.addItemOutput(<minecraft:diamond>).setChance(0.016)
.addItemOutput(<minecraft:emerald>).setChance(0.016)
.addItemOutput(<exnihilocreatio:item_ore_gold>).setChance(0.15)
.addItemOutput(<exnihilocreatio:item_ore_iron>).setChance(0.25)
.addItemOutput(<exnihilocreatio:item_ore_nickel>).setChance(0.15)
.addItemOutput(<exnihilocreatio:item_ore_uranium>).setChance(0.1)
.addItemOutput(<exnihilocreatio:item_ore_osmium>).setChance(0.1)
.addItemOutput(<exnihilocreatio:item_ore_platinum>).setChance(0.12)
.addItemOutput(<jaopca:item_pieceastralstarmetal>).setChance(0.04)
.addItemOutput(<jaopca:item_piecedraconium>).setChance(0.1)
.addItemOutput(<jaopca:item_pieceiridium>).setChance(0.01)
.addItemOutput(<jaopca:item_piecemithril>).setChance(0.06)
.addItemOutput(<astralsorcery:itemcraftingcomponent>).setChance(0.016)
.addItemOutput(<appliedenergistics2:material:1>).setChance(0.016)
.addItemOutput(<mekanism:fluoriteclump>).setChance(0.016)
.build();

//钻石筛网-压缩沙砾
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_D_3_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<exnihilocreatio:item_mesh:4>).setChance(0)
.addItemInput(<ore:compressed1xGravel>)
.addItemOutput(<minecraft:diamond> * 7).setChance(0.016)
.addItemOutput(<minecraft:emerald> * 7).setChance(0.016)
.addItemOutput(<exnihilocreatio:item_ore_gold> * 7).setChance(0.15)
.addItemOutput(<exnihilocreatio:item_ore_iron> * 7).setChance(0.25)
.addItemOutput(<exnihilocreatio:item_ore_nickel> * 7).setChance(0.15)
.addItemOutput(<exnihilocreatio:item_ore_uranium> * 7).setChance(0.1)
.addItemOutput(<exnihilocreatio:item_ore_osmium> * 7).setChance(0.1)
.addItemOutput(<exnihilocreatio:item_ore_platinum> * 7).setChance(0.12)
.addItemOutput(<jaopca:item_pieceastralstarmetal> * 7).setChance(0.04)
.addItemOutput(<jaopca:item_piecedraconium> * 7).setChance(0.1)
.addItemOutput(<jaopca:item_pieceiridium> * 7).setChance(0.01)
.addItemOutput(<jaopca:item_piecemithril> * 7).setChance(0.06)
.addItemOutput(<astralsorcery:itemcraftingcomponent> * 7).setChance(0.016)
.addItemOutput(<appliedenergistics2:material:1> * 7).setChance(0.016)
.addItemOutput(<mekanism:fluoriteclump> * 7).setChance(0.016)
.build();

//线筛网-尘土
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_A_4_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:1>).setChance(0)
.addItemInput(<ore:dust>)
.addItemOutput(<minecraft:dye:15>).setChance(0.2)
.addItemOutput(<minecraft:gunpowder>).setChance(0.07)
.build();

//线筛网-压缩尘土
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_A_4_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<exnihilocreatio:item_mesh:1>).setChance(0)
.addItemInput(<ore:compressed1xDust>)
.addItemOutput(<minecraft:dye:15> * 7).setChance(0.2)
.addItemOutput(<minecraft:gunpowder> * 7).setChance(0.07)
.build();

//燧石筛网-尘土
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_B_4_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:2>).setChance(0)
.addItemInput(<ore:dust>)
.addItemOutput(<appliedenergistics2:material:45>).setChance(0.1)
.build();

//燧石筛网-压缩尘土
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_B_4_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<exnihilocreatio:item_mesh:2>).setChance(0)
.addItemInput(<ore:compressed1xDust>)
.addItemOutput(<appliedenergistics2:material:45> * 7).setChance(0.1)
.build();

//铁筛网-尘土
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_C_4_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:iron_mesh>).setChance(0)
.addItemInput(<ore:dust>)
.addItemOutput(<minecraft:redstone>).setChance(0.125)
.addItemOutput(<minecraft:glowstone_dust>).setChance(0.0625)
.addItemOutput(<minecraft:blaze_powder>).setChance(0.05)
.addItemOutput(<appliedenergistics2:material:45>).setChance(0.2)
.build();

//铁筛网-压缩尘土
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_C_4_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<ore:iron_mesh>).setChance(0)
.addItemInput(<ore:compressed1xDust>)
.addItemOutput(<minecraft:redstone> * 7).setChance(0.125)
.addItemOutput(<minecraft:glowstone_dust> * 7).setChance(0.0625)
.addItemOutput(<minecraft:blaze_powder> * 7).setChance(0.05)
.addItemOutput(<appliedenergistics2:material:45> * 7).setChance(0.2)
.build();

//钻石筛网-尘土
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_D_4_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:4>).setChance(0)
.addItemInput(<ore:dust>)
.addItemOutput(<minecraft:redstone>).setChance(0.25)
.addItemOutput(<enderio:item_material:20>).setChance(0.01)
.addItemOutput(<appliedenergistics2:material:45>).setChance(0.3)
.build();

//钻石筛网-压缩尘土
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_D_4_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<exnihilocreatio:item_mesh:4>).setChance(0)
.addItemInput(<ore:compressed1xDust>)
.addItemOutput(<minecraft:redstone> * 7).setChance(0.25)
.addItemOutput(<enderio:item_material:20> * 7).setChance(0.01)
.addItemOutput(<appliedenergistics2:material:45> * 7).setChance(0.3)
.build();

//铁筛网-粉碎末地石
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_C_5_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:iron_mesh>).setChance(0)
.addItemInput(<exnihilocreatio:block_endstone_crushed>)
.addItemOutput(<exnihilocreatio:item_ore_aluminium>).setChance(0.15)
.addItemOutput(<exnihilocreatio:item_ore_silver>).setChance(0.15)
.addItemOutput(<draconicevolution:draconium_dust>).setChance(0.04)
.build();

//铁筛网-压缩末地石沙砾
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_C_5_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<ore:iron_mesh>).setChance(0)
.addItemInput(<ore:compressed1xEnderGravel>)
.addItemOutput(<exnihilocreatio:item_ore_aluminium> * 7).setChance(0.15)
.addItemOutput(<exnihilocreatio:item_ore_silver> * 7).setChance(0.15)
.addItemOutput(<draconicevolution:draconium_dust> * 7).setChance(0.04)
.build();

//钻石筛网-粉碎末地石
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_D_5_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:4>).setChance(0)
.addItemInput(<exnihilocreatio:block_endstone_crushed>)
.addItemOutput(<exnihilocreatio:item_ore_aluminium>).setChance(0.25)
.addItemOutput(<exnihilocreatio:item_ore_silver>).setChance(0.25)
.addItemOutput(<draconicevolution:draconium_dust>).setChance(0.08)
.build();

//钻石筛网-压缩末地石沙砾
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_D_5_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<exnihilocreatio:item_mesh:4>).setChance(0)
.addItemInput(<ore:compressed1xEnderGravel>)
.addItemOutput(<exnihilocreatio:item_ore_aluminium> * 7).setChance(0.25)
.addItemOutput(<exnihilocreatio:item_ore_silver> * 7).setChance(0.25)
.addItemOutput(<draconicevolution:draconium_dust> * 7).setChance(0.08)
.build();

//燧石筛网-粉碎地狱岩
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_B_6_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:2>).setChance(0)
.addItemInput(<exnihilocreatio:block_netherrack_crushed>)
.addItemOutput(<exnihilocreatio:item_ore_gold>).setChance(0.25)
.addItemOutput(<exnihilocreatio:item_ore_ardite>).setChance(0.25)
.addItemOutput(<exnihilocreatio:item_ore_cobalt>).setChance(0.1)
.build();

//燧石筛网-压缩地狱岩沙砾
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_B_6_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<exnihilocreatio:item_mesh:2>).setChance(0)
.addItemInput(<ore:compressed1xNetherGravel>)
.addItemOutput(<exnihilocreatio:item_ore_gold> * 7).setChance(0.25)
.addItemOutput(<exnihilocreatio:item_ore_ardite> * 7).setChance(0.25)
.addItemOutput(<exnihilocreatio:item_ore_cobalt> * 7).setChance(0.1)
.build();

//铁筛网-粉碎地狱岩
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_C_6_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:iron_mesh>).setChance(0)
.addItemInput(<exnihilocreatio:block_netherrack_crushed>)
.addItemOutput(<exnihilocreatio:item_ore_gold>).setChance(0.25)
.addItemOutput(<exnihilocreatio:item_ore_ardite>).setChance(0.2)
.addItemOutput(<exnihilocreatio:item_ore_cobalt>).setChance(0.2)
.addItemOutput(<minecraft:blaze_powder>).setChance(0.05)
.addItemOutput(<draconicevolution:draconium_dust>).setChance(0.02)
.build();

//铁筛网-压缩地狱岩沙砾
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_C_6_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<ore:iron_mesh>).setChance(0)
.addItemInput(<ore:compressed1xNetherGravel>)
.addItemOutput(<exnihilocreatio:item_ore_gold> * 7).setChance(0.25)
.addItemOutput(<exnihilocreatio:item_ore_ardite> * 7).setChance(0.2)
.addItemOutput(<exnihilocreatio:item_ore_cobalt> * 7).setChance(0.2)
.addItemOutput(<minecraft:blaze_powder> * 7).setChance(0.05)
.addItemOutput(<draconicevolution:draconium_dust> * 7).setChance(0.02)
.build();

//钻石筛网-粉碎地狱岩
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_D_6_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:4>).setChance(0)
.addItemInput(<exnihilocreatio:block_netherrack_crushed>)
.addItemOutput(<exnihilocreatio:item_ore_gold>).setChance(0.4)
.addItemOutput(<exnihilocreatio:item_ore_ardite>).setChance(0.3)
.addItemOutput(<exnihilocreatio:item_ore_cobalt>).setChance(0.3)
.addItemOutput(<draconicevolution:draconium_dust>).setChance(0.03)
.build();

//钻石筛网-压缩地狱岩沙砾
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_D_6_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<exnihilocreatio:item_mesh:4>).setChance(0)
.addItemInput(<ore:compressed1xNetherGravel>)
.addItemOutput(<exnihilocreatio:item_ore_gold> * 7).setChance(0.4)
.addItemOutput(<exnihilocreatio:item_ore_ardite> * 7).setChance(0.3)
.addItemOutput(<exnihilocreatio:item_ore_cobalt> * 7).setChance(0.3)
.addItemOutput(<draconicevolution:draconium_dust> * 7).setChance(0.03)
.build();

//燧石筛网-粉碎闪长岩
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_B_7_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:2>).setChance(0)
.addItemInput(<ore:crushedDiorite>)
.addItemOutput(<exnihilocreatio:item_ore_lead>).setChance(0.05)
.build();

//铁筛网-粉碎闪长岩
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_C_7_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:iron_mesh>).setChance(0)
.addItemInput(<ore:crushedDiorite>)
.addItemOutput(<exnihilocreatio:item_ore_lead>).setChance(0.075)
.build();

//钻石筛网-粉碎闪长岩
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_D_7_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:4>).setChance(0)
.addItemInput(<ore:crushedDiorite>)
.addItemOutput(<exnihilocreatio:item_ore_lead>).setChance(0.15)
.build();

//燧石筛网-沙子
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_B_8_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:2>).setChance(0)
.addItemInput(<ore:sand>)
.addItemOutput(<exnihilocreatio:item_ore_aluminium>).setChance(0.05)
.addItemOutput(<exnihilocreatio:item_ore_tin>).setChance(0.05)
.build();

//燧石筛网-压缩沙子
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_B_8_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<exnihilocreatio:item_mesh:2>).setChance(0)
.addItemInput(<ore:compressed1xSand>)
.addItemOutput(<exnihilocreatio:item_ore_aluminium> * 7).setChance(0.05)
.addItemOutput(<exnihilocreatio:item_ore_tin> * 7).setChance(0.05)
.build();

//铁筛网-沙子
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_C_8_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:iron_mesh>).setChance(0)
.addItemInput(<ore:sand>)
.addItemOutput(<exnihilocreatio:item_ore_aluminium>).setChance(0.075)
.addItemOutput(<exnihilocreatio:item_ore_tin>).setChance(0.075)
.addItemOutput(<actuallyadditions:item_misc:5>).setChance(0.02)
.build();

//铁筛网-压缩沙子
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_C_8_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<ore:iron_mesh>).setChance(0)
.addItemInput(<ore:compressed1xSand>)
.addItemOutput(<exnihilocreatio:item_ore_aluminium> * 7).setChance(0.075)
.addItemOutput(<exnihilocreatio:item_ore_tin> * 7).setChance(0.075)
.addItemOutput(<actuallyadditions:item_misc:5> * 7).setChance(0.02)
.build();

//钻石筛网-沙子
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_D_8_1", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<exnihilocreatio:item_mesh:4>).setChance(0)
.addItemInput(<ore:sand>)
.addItemOutput(<minecraft:prismarine_shard>).setChance(0.02)
.addItemOutput(<exnihilocreatio:item_ore_silver>).setChance(0.15)
.addItemOutput(<actuallyadditions:item_misc:5>).setChance(0.05)
.build();

//钻石筛网-压缩沙子
mods.modularmachinery.RecipeBuilder.newBuilder("mesh_D_8_2", "YMG_Iridium_Power_Sieve", 50)
.addEnergyPerTickInput(9000)
.addItemInput(<exnihilocreatio:item_mesh:4>).setChance(0)
.addItemInput(<ore:compressed1xSand>)
.addItemOutput(<minecraft:prismarine_shard> * 7).setChance(0.02)
.addItemOutput(<exnihilocreatio:item_ore_silver> * 7).setChance(0.15)
.addItemOutput(<actuallyadditions:item_misc:5> * 7).setChance(0.05)
.build();