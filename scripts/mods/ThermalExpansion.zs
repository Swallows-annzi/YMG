/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//感应炉
//mods.thermalexpansion.InductionSmelter.addRecipe(IItemStack primaryOutput, IItemStack primaryInput, IItemStack secondaryInput, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);

//黑铁锭
mods.thermalexpansion.InductionSmelter.addRecipe(<extendedcrafting:material>, <redstonearsenal:material:32>, <threng:material>, 50000);

//流明精华
mods.thermalexpansion.InductionSmelter.addRecipe(<extendedcrafting:material:7>, <thermalfoundation:material:102>, <astralsorcery:itemusabledust>, 50000);

//压缩机
//mods.thermalexpansion.Compactor.addPressRecipe(IItemStack output, IItemStack input, int energy); 板材
//mods.thermalexpansion.Compactor.addGearRecipe(IItemStack output, IItemStack input, int energy); 齿轮

//黑铁板
mods.thermalexpansion.Compactor.addPressRecipe(<extendedcrafting:material:2>, <extendedcrafting:material> * 3, 20000);

//玄冰合金齿轮
mods.thermalexpansion.Compactor.addGearRecipe(<contenttweaker:mysteriousicegear>, <contenttweaker:mysteriousiceplate> * 5, 5000);

//流体转置机
//mods.thermalexpansion.Transposer.addFillRecipe(IItemStack output, IItemStack input, ILiquidStack fluid, int energy);

//丰富的生物质
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:817>, <thermalfoundation:material:816>, <liquid:ic2biomass> * 1000, 800);

//丰富的生物混合质
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:819>, <thermalfoundation:material:818>, <liquid:ic2biomass> * 1000, 800);

//磨粉机
mods.thermalexpansion.Pulverizer.addRecipe(<contenttweaker:litherite_powder>,<environmentaltech:litherite_crystal>, 1500,<contenttweaker:litherite_powder>, 1);
mods.thermalexpansion.Pulverizer.addRecipe(<contenttweaker:erodium_powder>,<environmentaltech:erodium_crystal>, 1500,<contenttweaker:erodium_powder>, 1);
mods.thermalexpansion.Pulverizer.addRecipe(<contenttweaker:kyronite_powder>,<environmentaltech:kyronite_crystal>, 1500,<contenttweaker:kyronite_powder>, 1);
mods.thermalexpansion.Pulverizer.addRecipe(<contenttweaker:pladium_powder>,<environmentaltech:pladium_crystal>, 1500,<contenttweaker:pladium_powder>, 1);
mods.thermalexpansion.Pulverizer.addRecipe(<contenttweaker:ionite_powder>,<environmentaltech:ionite_crystal>, 1500,<contenttweaker:ionite_powder>, 1);
mods.thermalexpansion.Pulverizer.addRecipe(<contenttweaker:aethium_powder>,<environmentaltech:aethium_crystal>, 1500,<contenttweaker:aethium_powder>, 1);

