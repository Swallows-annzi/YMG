/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineModifier;


//启用并行
// MachineModifier.setParallelizable("YMG_Biomass_Fermentation_Tank", true);
MachineModifier.setMaxParallelism("YMG_Biomass_Fermentation_Tank", 4);
MachineModifier.setInternalParallelism("YMG_Biomass_Fermentation_Tank", 4);

//糠处理
mods.modularmachinery.RecipeBuilder.newBuilder("Biomass_Fermentation_Tank_1", "YMG_Biomass_Fermentation_Tank", 20)
.addEnergyPerTickInput(50000)
.addItemInput(<ic2:crafting:21> * 10)
.addFluidInput(<liquid:water> * 1200)
.addItemOutput(<mekanism:biofuel> * 8)
.addFluidOutput(<liquid:ic2biomass> * 1000)
.build();

//生物燃料处理
mods.modularmachinery.RecipeBuilder.newBuilder("Biomass_Fermentation_Tank_2", "YMG_Biomass_Fermentation_Tank", 20)
.addEnergyPerTickInput(50000)
.addItemInput(<mekanism:biofuel> * 10)
.addFluidInput(<liquid:water> * 100)
.addItemOutput(<ic2:crop_res:2> * 10)
.addGasOutput(<gas:ethene> * 1000)
.build();

//精制菜籽油
mods.modularmachinery.RecipeBuilder.newBuilder("Biomass_Fermentation_Tank_3", "YMG_Biomass_Fermentation_Tank", 20)
.addEnergyPerTickInput(50000)
.addFluidInput(<liquid:canolaoil> * 1000)
.addFluidOutput(<liquid:refinedcanolaoil> * 1000)
.build();

//晶化油
mods.modularmachinery.RecipeBuilder.newBuilder("Biomass_Fermentation_Tank_4", "YMG_Biomass_Fermentation_Tank", 10)
.addEnergyPerTickInput(50000)
.addItemInput(<actuallyadditions:item_misc:23>).setChance(0.5F)
.addFluidInput(<liquid:refinedcanolaoil> * 1000)
.addFluidOutput(<liquid:crystaloil> * 1000)
.build();

//充能油
mods.modularmachinery.RecipeBuilder.newBuilder("Biomass_Fermentation_Tank_5", "YMG_Biomass_Fermentation_Tank", 10)
.addEnergyPerTickInput(50000)
.addItemInput(<actuallyadditions:item_misc:24>).setChance(0.5F)
.addFluidInput(<liquid:crystaloil> * 1000)
.addFluidOutput(<liquid:empoweredoil> * 1000)
.build();

//发酵蜘蛛眼
mods.modularmachinery.RecipeBuilder.newBuilder("Biomass_Fermentation_Tank_6", "YMG_Biomass_Fermentation_Tank", 20)
.addEnergyPerTickInput(50000)
.addItemInput(<minecraft:spider_eye>)
.addItemOutput(<minecraft:fermented_spider_eye>)
.build();