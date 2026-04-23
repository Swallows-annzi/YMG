/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineModifier;


val setEnergy = 2000;

MachineModifier.setMaxThreads("YMG_Hydraulic_Sluice", 16);

mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Hydraulic_Sluice_1", "YMG_Hydraulic_Sluice", 50)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:gravel>)
.addItemInput(<ore:iron_mesh>).setChance(0)
.addFluidInput(<liquid:water> * 20)
.addItemOutput(<minecraft:diamond>).setChance(0.008).setIgnoreOutputCheck(true)
.addItemOutput(<minecraft:emerald>).setChance(0.008).setIgnoreOutputCheck(true)
.addItemOutput(<exnihilocreatio:item_ore_gold>).setChance(0.075).setIgnoreOutputCheck(true)
.addItemOutput(<exnihilocreatio:item_ore_iron>).setChance(0.15).setIgnoreOutputCheck(true)
.addItemOutput(<exnihilocreatio:item_ore_copper>).setChance(0.075).setIgnoreOutputCheck(true)
.addItemOutput(<exnihilocreatio:item_ore_nickel>).setChance(0.075).setIgnoreOutputCheck(true)
.addItemOutput(<exnihilocreatio:item_ore_uranium>).setChance(0.05).setIgnoreOutputCheck(true)
.addItemOutput(<exnihilocreatio:item_ore_osmium>).setChance(0.05).setIgnoreOutputCheck(true)
.addItemOutput(<exnihilocreatio:item_ore_platinum>).setChance(0.04).setIgnoreOutputCheck(true)
.addItemOutput(<jaopca:item_pieceastralstarmetal>).setChance(0.02).setIgnoreOutputCheck(true)
.addItemOutput(<jaopca:item_piecedraconium>).setChance(0.07).setIgnoreOutputCheck(true)
.addItemOutput(<jaopca:item_pieceiridium>).setChance(0.008).setIgnoreOutputCheck(true)
.addItemOutput(<jaopca:item_piecemithril>).setChance(0.04).setIgnoreOutputCheck(true)
.addItemOutput(<astralsorcery:itemcraftingcomponent>).setChance(0.008).setIgnoreOutputCheck(true)
.addItemOutput(<appliedenergistics2:material:1>).setChance(0.008).setIgnoreOutputCheck(true)
.addItemOutput(<mekanism:fluoriteclump>).setChance(0.008).setIgnoreOutputCheck(true)
.build();