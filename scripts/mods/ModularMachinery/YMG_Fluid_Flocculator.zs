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
// MachineModifier.setParallelizable("YMG_Fluid_Flocculator", false);
MachineModifier.setMaxParallelism("YMG_Fluid_Flocculator", 8);
MachineModifier.setInternalParallelism("YMG_Fluid_Flocculator", 8);

//超能物质
mods.modularmachinery.RecipeBuilder.newBuilder("superenergymatter_1", "YMG_Fluid_Flocculator", 1200)
.addEnergyPerTickInput(10000000)
.addFluidInputs([
    <liquid:ic2uu_matter> * 100,
    <liquid:neutron> * 100
])
.addItemInputs([
    <appliedenergistics2:paint_ball:22> * 64,
    <contenttweaker:mysteriousicedust>
])
.addFluidOutput(<liquid:mana> * 50)
.addItemOutput(<contenttweaker:superenergymatter>).setChance(0.2)
.build();

//中子
mods.modularmachinery.RecipeBuilder.newBuilder("crafting_29", "YMG_Fluid_Flocculator", 120)
.addEnergyPerTickInput(4000000)
.addFluidInput(<liquid:neutron> * 8000)
.addItemInput(<actuallyadditions:item_crystal_empowered:4>)
.addItemOutput(<super_solar_panels:crafting:29>).setChance(0.98)
.build();

//氢
mods.modularmachinery.RecipeBuilder.newBuilder("dsqmaterial70", "YMG_Fluid_Flocculator", 120)
.addEnergyPerTickInput(5000000)
.addGasInput(<gas:hydrogen> * 250)
.addItemInput(<appliedenergistics2:paint_ball:23> * 4)
.addItemOutput(<contenttweaker:dsqmaterial70>).setChance(0.80)
.build();

//原始魔力粉
mods.modularmachinery.RecipeBuilder.newBuilder("material_1028", "YMG_Fluid_Flocculator", 1200)
.addEnergyPerTickInput(40000000)
.addFluidInput(<liquid:mana> * 1600)
.addItemInputs([
    <thermalfoundation:material:1024>,
    <thermalfoundation:material:1025>,
    <thermalfoundation:material:1026>,
    <thermalfoundation:material:1027>
])
.addItemOutput(<thermalfoundation:material:1028>)
.build();