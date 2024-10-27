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
val setEnergy = 15000;
//配方时间
val setTime = 10;

//启用并行
// MachineModifier.setParallelizable("YMG_Melting_Furnace", true);
MachineModifier.setMaxParallelism("YMG_Thermal_Processing_Table", 12);
MachineModifier.setInternalParallelism("YMG_Thermal_Processing_Table", 12);

//硅板
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Processing_Table_appliedenergistics2_material_20", "YMG_Thermal_Processing_Table", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<appliedenergistics2:material:19>).setParallelizeUnaffected(true).setChance(0.0)
.addItemInput(<ore:itemSilicon>)
.addItemOutput(<appliedenergistics2:material:20>)
.build();

//运算电路板
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Processing_Table_appliedenergistics2_material_16", "YMG_Thermal_Processing_Table", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<appliedenergistics2:material:13>).setParallelizeUnaffected(true).setChance(0.0)
.addItemInput(<appliedenergistics2:material:10>)
.addItemOutput(<appliedenergistics2:material:16>)
.build();

//工程电路板
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Processing_Table_appliedenergistics2_material_17", "YMG_Thermal_Processing_Table", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<appliedenergistics2:material:14>).setParallelizeUnaffected(true).setChance(0.0)
.addItemInput(<minecraft:diamond>)
.addItemOutput(<appliedenergistics2:material:17>)
.build();

//逻辑电路板
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Processing_Table_appliedenergistics2_material_18", "YMG_Thermal_Processing_Table", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<appliedenergistics2:material:15>).setParallelizeUnaffected(true).setChance(0.0)
.addItemInput(<ore:ingotGold>)
.addItemOutput(<appliedenergistics2:material:18>)
.build();

//运算处理器
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Processing_Table_appliedenergistics2_material_23", "YMG_Thermal_Processing_Table", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <appliedenergistics2:material:16>,
    <minecraft:redstone>,
    <appliedenergistics2:material:20>
])
.addItemOutput(<appliedenergistics2:material:23>)
.build();

//工程处理器
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Processing_Table_appliedenergistics2_material_24", "YMG_Thermal_Processing_Table", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <appliedenergistics2:material:17>,
    <minecraft:redstone>,
    <appliedenergistics2:material:20>
])
.addItemOutput(<appliedenergistics2:material:24>)
.build();

//逻辑处理器
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Processing_Table_appliedenergistics2_material_22", "YMG_Thermal_Processing_Table", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <appliedenergistics2:material:18>,
    <minecraft:redstone>,
    <appliedenergistics2:material:20>
])
.addItemOutput(<appliedenergistics2:material:22>)
.build();

//大规模并行处理器
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Processing_Table_threng_material_6", "YMG_Thermal_Processing_Table", setTime * 8)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <threng:material:5>,
    <minecraft:redstone>,
    <appliedenergistics2:material:20>
])
.addItemOutput(<threng:material:6>)
.build();

//导线
mods.modularmachinery.RecipeBuilder.newBuilder("cable_1", "YMG_Thermal_Processing_Table", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ic2:crafting> * 2,
    <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}) * 3
])
.addItemOutput(<ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}) * 3)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("cable_2", "YMG_Thermal_Processing_Table", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ic2:crafting> * 2,
    <ic2:cable:4>.withTag({type: 4 as byte, insulation: 0 as byte}) * 3
])
.addItemOutput(<ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte}) * 3)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("cable_3", "YMG_Thermal_Processing_Table", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ic2:crafting> * 2,
    <ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte}) * 3
])
.addItemOutput(<ic2:cable:2>.withTag({type: 2 as byte, insulation: 1 as byte}) * 3)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("cable_4", "YMG_Thermal_Processing_Table", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ic2:crafting> * 2,
    <ic2:cable:2>.withTag({type: 2 as byte, insulation: 1 as byte}) * 3
])
.addItemOutput(<ic2:cable:2>.withTag({type: 2 as byte, insulation: 2 as byte}) * 3)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("cable_5", "YMG_Thermal_Processing_Table", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ic2:crafting> * 2,
    <ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}) * 3
])
.addItemOutput(<ic2:cable:3>.withTag({type: 3 as byte, insulation: 1 as byte}) * 3)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("cable_6", "YMG_Thermal_Processing_Table", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ic2:crafting> * 2,
    <ic2:cable:3>.withTag({type: 3 as byte, insulation: 1 as byte}) * 3
])
.addItemOutput(<ic2:cable:3>.withTag({type: 3 as byte, insulation: 2 as byte}) * 3)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("cable_7", "YMG_Thermal_Processing_Table", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ic2:crafting> * 2,
    <ic2:cable:3>.withTag({type: 3 as byte, insulation: 2 as byte}) * 3
])
.addItemOutput(<ic2:cable:3>.withTag({type: 3 as byte, insulation: 3 as byte}) * 3)
.build();