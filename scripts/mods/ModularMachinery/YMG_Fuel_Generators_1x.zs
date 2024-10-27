/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//能量产出
val EnergyOutputMagnification = 2500;

//氢气
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_1", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(64000)
.addGasPerTickInput(<gas:hydrogen> * 20)
.build();

//乙烯
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_2", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(225600)
.addGasPerTickInput(<gas:ethene> * 20)
.build();

//沼气
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_3", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(EnergyOutputMagnification * 50)
.addFluidPerTickInput(<liquid:ic2biogas> * 100)
.build();

//杂酚油
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_4", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(EnergyOutputMagnification * 20)
.addFluidPerTickInput(<liquid:creosote> * 100)
.build();

//液态煤炭
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_5", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(EnergyOutputMagnification * 40)
.addFluidPerTickInput(<liquid:coal> * 100)
.build();

//石油
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_6", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(EnergyOutputMagnification * 50)
.addFluidPerTickInput(<liquid:crude_oil> * 100)
.build();

//石脑油
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_7", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(EnergyOutputMagnification * 100)
.addFluidPerTickInput(<liquid:refined_oil> * 100)
.build();

//精炼油
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_8", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(EnergyOutputMagnification * 200)
.addFluidPerTickInput(<liquid:refined_fuel> * 100)
.build();

//树油
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_9", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(EnergyOutputMagnification * 50)
.addFluidPerTickInput(<liquid:tree_oil> * 100)
.build();

//种子油
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_10", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(EnergyOutputMagnification * 20)
.addFluidPerTickInput(<liquid:seed_oil> * 100)
.build();

//藿香碱
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_11", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(EnergyOutputMagnification * 125)
.addFluidPerTickInput(<liquid:refined_biofuel> * 100)
.build();

//菜籽油
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_12", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(EnergyOutputMagnification * 20)
.addFluidPerTickInput(<liquid:canolaoil> * 100)
.build();

//精致菜籽油
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_13", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(EnergyOutputMagnification * 40)
.addFluidPerTickInput(<liquid:refinedcanolaoil> * 100)
.build();

//晶化油
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_14", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(EnergyOutputMagnification * 80)
.addFluidPerTickInput(<liquid:crystaloil> * 100)
.build();

//充能油
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_15", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(EnergyOutputMagnification * 140)
.addFluidPerTickInput(<liquid:empoweredoil> * 100)
.build();

//烈酒
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_16", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(EnergyOutputMagnification * 60)
.addFluidPerTickInput(<liquid:hootch> * 100)
.build();

//火箭燃料
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_17", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(EnergyOutputMagnification * 160)
.addFluidPerTickInput(<liquid:rocket_fuel> * 100)
.build();

//火焰水
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_18", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(EnergyOutputMagnification * 80)
.addFluidPerTickInput(<liquid:fire_water> * 100)
.build();

//生物质
mods.modularmachinery.RecipeBuilder.newBuilder("Fuel_Generators_1x_19", "YMG_Fuel_Generators_1x", 20)
.addEnergyPerTickOutput(EnergyOutputMagnification * 15)
.addFluidPerTickInput(<liquid:ic2biomass> * 100)
.build();