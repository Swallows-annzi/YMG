/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.modularmachinery.MachineModifier;


//启用并行
// MachineModifier.setParallelizable("YMG_AA_Charging_Device", true);
MachineModifier.setMaxParallelism("YMG_AA_Charging_Device", 64);
MachineModifier.setInternalParallelism("YMG_AA_Charging_Device", 64);


val Tick = 100;
val EnergyInput = 20000;

AA_Recipe_Iron("YMG_AA_Charging_Device_Iron_1", <ore:crystalEnori>, <actuallyadditions:item_crystal_empowered:5>, EnergyInput, Tick);
AA_Recipe_Iron("YMG_AA_Charging_Device_Iron_2", <actuallyadditions:block_crystal:5>, <actuallyadditions:block_crystal_empowered:5>, EnergyInput, Tick);
AA_Recipe_Iron("YMG_AA_Charging_Device_Iron_3", <ore:gearEnori>, <moreplates:empowered_enori_gear>, EnergyInput, Tick);
AA_Recipe_Iron("YMG_AA_Charging_Device_Iron_4", <ore:plateEnori>, <moreplates:empowered_enori_plate>, EnergyInput, Tick);
AA_Recipe_Dye("YMG_AA_Charging_Device_Dye_1", <ore:crystalPalis>, <actuallyadditions:item_crystal_empowered:1>,EnergyInput, Tick);
AA_Recipe_Dye("YMG_AA_Charging_Device_Dye_2", <actuallyadditions:block_crystal:1>, <actuallyadditions:block_crystal_empowered:1>, EnergyInput, Tick);
AA_Recipe_Dye("YMG_AA_Charging_Device_Dye_3", <ore:gearPalis>, <moreplates:empowered_palis_gear>, EnergyInput, Tick);
AA_Recipe_Dye("YMG_AA_Charging_Device_Dye_4", <ore:platePalis>, <moreplates:empowered_palis_plate>, EnergyInput, Tick);
AA_Recipe_RedStone("YMG_AA_Charging_Device_RedStone_1", <ore:crystalRestonia>, <actuallyadditions:item_crystal_empowered>, EnergyInput, Tick);
AA_Recipe_RedStone("YMG_AA_Charging_Device_RedStone_2", <actuallyadditions:block_crystal>, <actuallyadditions:block_crystal_empowered>, EnergyInput, Tick);
AA_Recipe_RedStone("YMG_AA_Charging_Device_RedStone_3", <ore:gearRestonia>, <moreplates:empowered_restonia_gear>, EnergyInput, Tick);
AA_Recipe_RedStone("YMG_AA_Charging_Device_RedStone_4", <ore:plateRestonia>, <moreplates:empowered_restonia_plate>, EnergyInput, Tick);
AA_Recipe_Coal("YMG_AA_Charging_Device_Coal_1", <ore:crystalVoid>, <actuallyadditions:item_crystal_empowered:3>, EnergyInput, Tick);
AA_Recipe_Coal("YMG_AA_Charging_Device_Coal_2", <actuallyadditions:block_crystal:3>, <actuallyadditions:block_crystal_empowered:3>, EnergyInput, Tick);
AA_Recipe_Coal("YMG_AA_Charging_Device_Coal_3", <ore:gearVoid>, <moreplates:empowered_void_gear>, EnergyInput, Tick);
AA_Recipe_Coal("YMG_AA_Charging_Device_Coal_4", <ore:plateVoid>, <moreplates:empowered_void_plate>, EnergyInput, Tick);
AA_Recipe_Diamond("YMG_AA_Charging_Device_Diamond_1", <ore:crystalDiamantine>, <actuallyadditions:item_crystal:2>, EnergyInput, Tick);
AA_Recipe_Diamond("YMG_AA_Charging_Device_Diamond_2", <actuallyadditions:block_crystal:2>, <actuallyadditions:block_crystal_empowered:2>, EnergyInput, Tick);
AA_Recipe_Diamond("YMG_AA_Charging_Device_Diamond_3", <ore:gearDiamatine>, <moreplates:empowered_diamatine_gear>, EnergyInput, Tick);
AA_Recipe_Diamond("YMG_AA_Charging_Device_Diamond_4", <ore:plateDiamatine>, <moreplates:empowered_diamatine_plate>, EnergyInput, Tick);
AA_Recipe_Emerald("YMG_AA_Charging_Device_Emerald_1", <ore:crystalEmeraldic>, <actuallyadditions:item_crystal_empowered:4>, EnergyInput, Tick);
AA_Recipe_Emerald("YMG_AA_Charging_Device_Emerald_2", <actuallyadditions:block_crystal:4>, <actuallyadditions:block_crystal_empowered:4>, EnergyInput, Tick);
AA_Recipe_Emerald("YMG_AA_Charging_Device_Emerald_3", <ore:gearEmeradic>, <moreplates:empowered_emeradic_gear>, EnergyInput, Tick);
AA_Recipe_Emerald("YMG_AA_Charging_Device_Emerald_4", <ore:plateEmeradic>, <moreplates:empowered_emeradic_plate>, EnergyInput, Tick);

//铁
function AA_Recipe_Iron(RecipeName as string, Input as IIngredient, Output as IItemStack, EnergyInput as int, Tick as int) as void {
    mods.modularmachinery.RecipeBuilder.newBuilder(RecipeName, "YMG_AA_Charging_Device", Tick)
    .addEnergyPerTickInput(EnergyInput)
    .addItemInput(Input)
    .addItemInputs([
        <ore:dyeGray>,
        <minecraft:snowball>,
        <minecraft:stone_button>,
        <ore:cobblestone>
    ])
    .addItemOutput(Output)
    .build();
}

//青金石
function AA_Recipe_Dye(RecipeName as string, Input as IIngredient, Output as IItemStack, EnergyInput as int, Tick as int) as void {
    mods.modularmachinery.RecipeBuilder.newBuilder(RecipeName, "YMG_AA_Charging_Device", Tick)
    .addEnergyPerTickInput(EnergyInput)
    .addItemInput(Input)
    .addItemInputs([
        <ore:dyeCyan>,
        <ore:gemPrismarine> * 3
    ])
    .addItemOutput(Output)
    .build();
}

//红石
function AA_Recipe_RedStone(RecipeName as string, Input as IIngredient, Output as IItemStack, EnergyInput as int, Tick as int) as void {
    mods.modularmachinery.RecipeBuilder.newBuilder(RecipeName, "YMG_AA_Charging_Device", Tick)
    .addEnergyPerTickInput(EnergyInput)
    .addItemInput(Input)
    .addItemInputs([
        <ore:dyeRed>,
        <ore:ingotBrickNether>,
        <ore:dustRedstone>,
        <ore:ingotBrick>
    ])
    .addItemOutput(Output)
    .build();
}

//煤
function AA_Recipe_Coal(RecipeName as string, Input as IIngredient, Output as IItemStack, EnergyInput as int, Tick as int) as void {
    mods.modularmachinery.RecipeBuilder.newBuilder(RecipeName, "YMG_AA_Charging_Device", Tick)
    .addEnergyPerTickInput(EnergyInput)
    .addItemInput(Input)
    .addItemInputs([
        <ore:dyeBlack>,
        <ore:charcoal>,
        <ore:itemFlint>,
        <ore:stone>
    ])
    .addItemOutput(Output)
    .build();
}

//钻石
function AA_Recipe_Diamond(RecipeName as string, Input as IIngredient, Output as IItemStack, EnergyInput as int, Tick as int) as void {
    mods.modularmachinery.RecipeBuilder.newBuilder(RecipeName, "YMG_AA_Charging_Device", Tick)
    .addEnergyPerTickInput(EnergyInput)
    .addItemInput(Input)
    .addItemInputs([
        <ore:dyeLightBlue>,
        <ore:itemClay> * 2,
        <ore:blockClay>
    ])
    .addItemOutput(Output)
    .build();
}

//绿宝石
function AA_Recipe_Emerald(RecipeName as string, Input as IIngredient, Output as IItemStack, EnergyInput as int, Tick as int) as void {
    mods.modularmachinery.RecipeBuilder.newBuilder(RecipeName, "YMG_AA_Charging_Device", Tick)
    .addEnergyPerTickInput(EnergyInput)
    .addItemInput(Input)
    .addItemInputs([
        <ore:dyeLime>,
        <minecraft:tallgrass:1>,
        <ore:treeSapling>,
        <ore:slimeball>
    ])
    .addItemOutput(Output)
    .build();
}

//充能油菜种子
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_AA_Charging_Device_item_misc_24", "YMG_AA_Charging_Device", Tick)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<actuallyadditions:item_misc:23>)
.addItemInputs([
    <actuallyadditions:item_canola_seed> * 4
])
.addItemOutput(<actuallyadditions:item_misc:24>)
.build();

//推测核心1x
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_AA_Charging_Device_material_7", "YMG_AA_Charging_Device", Tick)
.addEnergyPerTickInput(EnergyInput)
.addItemInput(<appliedenergistics2:material:6>)
.addItemInputs([
    <threng:material:1> * 2,
    <appliedenergistics2:material:45> * 2
])
.addItemOutput(<threng:material:7> * 2)
.build();