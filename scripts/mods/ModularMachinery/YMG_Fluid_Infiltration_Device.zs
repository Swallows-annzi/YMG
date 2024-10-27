/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;

import mods.modularmachinery.MachineModifier;


//能量消耗
val setEnergy = 5000;
//运行时间
val setTime = 1;

//线程设置
MachineModifier.setMaxThreads("YMG_Fluid_Infiltration_Device", 16);


//粘土
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_1", "YMG_Fluid_Infiltration_Device", setTime)
.addFluidInput(<liquid:water> * 1000)
.addItemInput(<ore:dust>)
.addItemOutput(<minecraft:clay>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_2", "YMG_Fluid_Infiltration_Device", setTime * 8)
.addFluidInput(<liquid:water> * 8000)
.addItemInput(<ore:compressed1xDust>)
.addItemOutput(<minecraft:clay> * 9)
.build();

//地狱岩
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_3", "YMG_Fluid_Infiltration_Device", setTime)
.addFluidInput(<liquid:lava> * 1000)
.addItemInput(<minecraft:redstone>)
.addItemOutput(<minecraft:netherrack>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_4", "YMG_Fluid_Infiltration_Device", setTime * 9)
.addFluidInput(<liquid:lava> * 9000)
.addItemInput(<ore:blockRedstone>)
.addItemOutput(<minecraft:netherrack> * 9)
.build();

//末地石
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_5", "YMG_Fluid_Infiltration_Device", setTime)
.addFluidInput(<liquid:lava> * 1000)
.addItemInput(<ore:dustGlowstone>)
.addItemOutput(<minecraft:end_stone>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_6", "YMG_Fluid_Infiltration_Device", setTime * 4)
.addFluidInput(<liquid:lava> * 4000)
.addItemInput(<ore:glowstone>)
.addItemOutput(<minecraft:end_stone> * 4)
.build();

//灵魂沙
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_7", "YMG_Fluid_Infiltration_Device", setTime)
.addFluidInput(<liquid:witchwater> * 1000)
.addItemInput(<ore:sand>)
.addItemOutput(<minecraft:soul_sand>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_8", "YMG_Fluid_Infiltration_Device", setTime * 8)
.addFluidInput(<liquid:witchwater> * 8000)
.addItemInput(<ore:compressed1xSand>)
.addItemOutput(<excompressum:compressed_block:8>)
.build();

//粘液块
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_9", "YMG_Fluid_Infiltration_Device", setTime)
.addFluidInput(<liquid:milk> * 1000)
.addItemInput(<ore:listAllmushroom>)
.addItemOutput(<minecraft:slime>)
.build();

//巫水
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_10", "YMG_Fluid_Infiltration_Device", setTime * 40)
.addFluidInput(<liquid:water> * 1000)
.addItemInput(<exnihilocreatio:item_material:3>).setChance(0.0)
.addFluidOutput(<liquid:witchwater> * 1000)
.build();

//人偶
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_11", "YMG_Fluid_Infiltration_Device", setTime * 200)
.addEnergyPerTickInput(setEnergy)
.addFluidInput(<liquid:witchwater> * 1000)
.addItemInput(<exnihilocreatio:item_doll:1>)
.addItemOutput(<minecraft:ender_pearl>).setChance(0.8)
.addItemOutput(<minecraft:ender_pearl>).setChance(0.8)
.addItemOutput(<minecraft:ender_pearl>).setChance(0.5)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_12", "YMG_Fluid_Infiltration_Device", setTime * 200)
.addEnergyPerTickInput(setEnergy)
.addFluidInput(<liquid:witchwater> * 1000)
.addItemInput(<exnihilocreatio:item_doll:2>)
.addItemOutput(<minecraft:shulker_shell>).setChance(0.8)
.addItemOutput(<minecraft:shulker_shell>).setChance(0.8)
.addItemOutput(<minecraft:shulker_shell>).setChance(0.5)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_13", "YMG_Fluid_Infiltration_Device", setTime * 200)
.addEnergyPerTickInput(setEnergy)
.addFluidInput(<liquid:water> * 1000)
.addItemInput(<exnihilocreatio:item_doll:3>)
.addItemOutput(<minecraft:prismarine_shard>).setChance(0.8)
.addItemOutput(<minecraft:prismarine_shard>).setChance(0.5)
.addItemOutput(<minecraft:prismarine_crystals>).setChance(0.8)
.addItemOutput(<minecraft:prismarine_crystals>).setChance(0.5)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_14", "YMG_Fluid_Infiltration_Device", setTime * 200)
.addEnergyPerTickInput(setEnergy)
.addFluidInput(<liquid:water> * 1000)
.addItemInput(<exnihilocreatio:item_doll:7>)
.addItemOutput(<tconstruct:edible:1>).setChance(0.8)
.addItemOutput(<tconstruct:edible:1>).setChance(0.8)
.addItemOutput(<tconstruct:edible:1>).setChance(0.5)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_15", "YMG_Fluid_Infiltration_Device", setTime * 200)
.addEnergyPerTickInput(setEnergy)
.addFluidInput(<liquid:lava> * 1000)
.addItemInput(<exnihilocreatio:item_doll>)
.addItemOutput(<minecraft:blaze_rod>).setChance(0.5)
.addItemOutput(<minecraft:blaze_rod>).setChance(0.5)
.addItemOutput(<minecraft:blaze_rod>).setChance(0.3)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_16", "YMG_Fluid_Infiltration_Device", setTime * 200)
.addEnergyPerTickInput(setEnergy)
.addFluidInput(<liquid:pyrotheum> * 1000)
.addItemInput(<exnihilocreatio:item_doll:5>)
.addItemOutput(<thermalfoundation:material:2050>).setChance(0.5)
.addItemOutput(<thermalfoundation:material:2050>).setChance(0.5)
.addItemOutput(<thermalfoundation:material:2050>).setChance(0.3)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_17", "YMG_Fluid_Infiltration_Device", setTime * 200)
.addEnergyPerTickInput(setEnergy)
.addFluidInput(<liquid:pyrotheum> * 1000)
.addItemInput(<exnihilocreatio:item_doll:4>)
.addItemOutput(<thermalfoundation:material:2048>).setChance(0.5)
.addItemOutput(<thermalfoundation:material:2048>).setChance(0.5)
.addItemOutput(<thermalfoundation:material:2048>).setChance(0.3)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_18", "YMG_Fluid_Infiltration_Device", setTime * 200)
.addEnergyPerTickInput(setEnergy)
.addFluidInput(<liquid:pyrotheum> * 1000)
.addItemInput(<exnihilocreatio:item_doll:6>)
.addItemOutput(<thermalfoundation:material:2052>).setChance(0.5)
.addItemOutput(<thermalfoundation:material:2052>).setChance(0.5)
.addItemOutput(<thermalfoundation:material:2052>).setChance(0.3)
.build();

// //建筑泡沫
// mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_19", "YMG_Fluid_Infiltration_Device", setTime * 60)
// .addEnergyPerTickInput(setEnergy)
// .addFluidInput(<liquid:water> * 1000)
// .addItemInput(<ic2:crafting:25>)
// .addFluidOutput(<liquid:ic2construction_foam> * 1000)
// .build();

// //温泉水
// mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_20", "YMG_Fluid_Infiltration_Device", setTime * 60)
// .addEnergyPerTickInput(setEnergy)
// .addFluidInput(<liquid:water> * 6000)
// .addItemInput(<ore:stickWood>)
// .addFluidOutput(<liquid:ic2hot_water> * 1000)
// .build();

// //冷却液
// mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_21", "YMG_Fluid_Infiltration_Device", setTime * 60)
// .addEnergyPerTickInput(setEnergy)
// .addFluidInput(<liquid:water> * 1000)
// .addItemInput(<ore:dustLapis> * 8)
// .addFluidOutput(<liquid:ic2coolant> * 1000)
// .build();
// mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_22", "YMG_Fluid_Infiltration_Device", setTime * 60)
// .addEnergyPerTickInput(setEnergy)
// .addFluidInput(<liquid:ic2distilled_water> * 1000)
// .addItemInput(<ore:dustLapis>)
// .addFluidOutput(<liquid:ic2coolant> * 1000)
// .build();

// //生物质
// mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_23", "YMG_Fluid_Infiltration_Device", setTime * 60)
// .addEnergyPerTickInput(setEnergy)
// .addFluidInput(<liquid:water> * 1000)
// .addItemInput(<ic2:crafting:21>)
// .addFluidOutput(<liquid:ic2biomass> * 1000)
// .build();

// //共晶UU合金
// mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_24", "YMG_Fluid_Infiltration_Device", setTime * 60)
// .addEnergyPerTickInput(setEnergy)
// .addFluidInput(<liquid:ic2uu_matter> * 72)
// .addItemInput(<tconevo:material>)
// .addFluidOutput(<liquid:universal_metal> * 144)
// .build();

//陨石
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_25", "YMG_Fluid_Infiltration_Device", setTime)
.addFluidInput(<liquid:lava> * 1000)
.addItemInput(<ore:dustSkyStone>)
.addItemOutput(<appliedenergistics2:sky_stone_block>)
.build();

//非牛顿流体
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_26", "YMG_Fluid_Infiltration_Device", setTime * 10)
.addEnergyPerTickInput(setEnergy)
.addFluidInput(<liquid:water> * 1000)
.addItemInput(<ore:dustWheat>)
.addFluidOutput(<liquid:non_newtonian> * 100)
.build();

//晶化油
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_27", "YMG_Fluid_Infiltration_Device", setTime * 2)
.addEnergyPerTickInput(50000)
.addItemInput(<actuallyadditions:item_misc:23>)
.addFluidInput(<liquid:refinedcanolaoil> * 1000)
.addFluidOutput(<liquid:crystaloil> * 1000)
.build();

//充能油
mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_28", "YMG_Fluid_Infiltration_Device", setTime * 2)
.addEnergyPerTickInput(50000)
.addItemInput(<actuallyadditions:item_misc:24>)
.addFluidInput(<liquid:crystaloil> * 1000)
.addFluidOutput(<liquid:empoweredoil> * 1000)
.build();

//混凝土
val List as IItemStack[IItemStack] = {
    <minecraft:concrete_powder>     :   <minecraft:concrete>,
    <minecraft:concrete_powder:1>   :   <minecraft:concrete:1>,
    <minecraft:concrete_powder:2>   :   <minecraft:concrete:2>,
    <minecraft:concrete_powder:3>   :   <minecraft:concrete:3>,
    <minecraft:concrete_powder:4>   :   <minecraft:concrete:4>,
    <minecraft:concrete_powder:5>   :   <minecraft:concrete:5>,
    <minecraft:concrete_powder:6>   :   <minecraft:concrete:6>,
    <minecraft:concrete_powder:7>   :   <minecraft:concrete:7>,
    <minecraft:concrete_powder:8>   :   <minecraft:concrete:8>,
    <minecraft:concrete_powder:9>   :   <minecraft:concrete:9>,
    <minecraft:concrete_powder:10>  :   <minecraft:concrete:10>,
    <minecraft:concrete_powder:11>  :   <minecraft:concrete:11>,
    <minecraft:concrete_powder:12>  :   <minecraft:concrete:12>,
    <minecraft:concrete_powder:13>  :   <minecraft:concrete:13>,
    <minecraft:concrete_powder:14>  :   <minecraft:concrete:14>,
    <minecraft:concrete_powder:15>  :   <minecraft:concrete:15>
};

for input, output in List {
    mods.modularmachinery.RecipeBuilder.newBuilder("Infiltration_" + input.name + "_" + output.name, "YMG_Fluid_Infiltration_Device", setTime)
    .addFluidInput(<liquid:water> * 1000)
    .addItemInput(input)
    .addItemOutput(output)
    .build();
}