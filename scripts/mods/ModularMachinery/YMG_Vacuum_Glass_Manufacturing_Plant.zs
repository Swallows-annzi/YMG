/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.modularmachinery.MachineModifier;


//能量消耗
val setEnergy = 75000;
//配方时间
val setTime = 10;

//线程设置
MachineModifier.setMaxThreads("YMG_Vacuum_Glass_Manufacturing_Plant", 8);

//原版玻璃
mods.modularmachinery.RecipeBuilder.newBuilder("glass", "YMG_Vacuum_Glass_Manufacturing_Plant", 5)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:sand> * 5)
.addItemOutput(<minecraft:glass> * 6)
.addRecipeTooltip(
    "§d在输出玻璃方块或者玻璃流体之间你只能选择一个！"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("liquid_glass", "YMG_Vacuum_Glass_Manufacturing_Plant", 1)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:sand>)
.addFluidOutput(<liquid:glass> * 1200)
.addRecipeTooltip(
    "§d在输出玻璃方块或者玻璃流体之间你只能选择一个！"
)
.build();

//通透玻璃
mods.modularmachinery.RecipeBuilder.newBuilder("clear_glass", "YMG_Vacuum_Glass_Manufacturing_Plant", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<ore:blockGlass>)
.addItemOutput(<tconstruct:clear_glass>)
.build();

//EnderIO石英玻璃
mods.modularmachinery.RecipeBuilder.newBuilder("block_fused_quartz", "YMG_Vacuum_Glass_Manufacturing_Plant", setTime * 4)
.addEnergyPerTickInput(setEnergy)
.addItemInput(<minecraft:quartz> * 4)
.addItemOutput(<enderio:block_fused_quartz>)
.build();

//AE2石英玻璃
mods.modularmachinery.RecipeBuilder.newBuilder("quartz_glass_1", "YMG_Vacuum_Glass_Manufacturing_Plant", setTime * 4)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:blockGlass> * 4,
    <ore:dustCertusQuartz> * 4
])
.addItemOutput(<appliedenergistics2:quartz_glass> * 4)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("quartz_glass_2", "YMG_Vacuum_Glass_Manufacturing_Plant", setTime * 4)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:blockGlass> * 4,
    <ore:dustNetherQuartz> * 4
])
.addItemOutput(<appliedenergistics2:quartz_glass> * 4)
.build();

//聚能石英玻璃
mods.modularmachinery.RecipeBuilder.newBuilder("quartz_vibrant_glass", "YMG_Vacuum_Glass_Manufacturing_Plant", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <appliedenergistics2:quartz_glass> * 4,
    <ore:dustGlowstone> * 4
])
.addItemOutput(<appliedenergistics2:quartz_vibrant_glass> * 4)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("quartz_glass_2", "YMG_Vacuum_Glass_Manufacturing_Plant", setTime * 4)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:blockGlass> * 4,
    <ore:dustFluix> * 4
])
.addItemOutput(<appliedenergistics2:quartz_vibrant_glass> * 4)
.build();

//魔力玻璃
mods.modularmachinery.RecipeBuilder.newBuilder("managlass", "YMG_Vacuum_Glass_Manufacturing_Plant", 1)
.addFluidInput(<liquid:fluidedmana> * 1)
.addItemInput(<ore:blockGlass>)
.addItemOutput(<botania:managlass>)
.build();

//精灵玻璃
mods.modularmachinery.RecipeBuilder.newBuilder("elfglass", "YMG_Vacuum_Glass_Manufacturing_Plant", 1)
.addFluidInput(<liquid:fluidedmana> * 1)
.addItemInput(<botania:managlass>)
.addItemOutput(<botania:elfglass>)
.build();

//强化玻璃
mods.modularmachinery.RecipeBuilder.newBuilder("Vacuum_Glass_Manufacturing_Plant_reactorglass", "YMG_Vacuum_Glass_Manufacturing_Plant", 12000)
.addFluidInputs([
    <liquid:glass> * 64000,
])
.addItemInputs([
    <mekanismgenerators:reactor:1>
])
.addItemOutput(<mekanismgenerators:reactorglass>)
.build();


val List as IItemStack[IOreDictEntry] = {
    <ore:dustCopper>                :   <thermalfoundation:glass>,
    <ore:dustSilver>                :   <thermalfoundation:glass:2>,
    <ore:dustLead>                  :   <thermalfoundation:glass:3>,
    <ore:dustElectrum>              :   <thermalfoundation:glass_alloy:1>,
    <ore:dustPlatinum>              :   <thermalfoundation:glass:6>,
    <ore:dustBronze>                :   <thermalfoundation:glass_alloy:3>,
    <ore:dustTin>                   :   <thermalfoundation:glass:1>,
    <ore:dustEnderium>              :   <thermalfoundation:glass_alloy:7>,
    <ore:dustSteel>                 :   <thermalfoundation:glass_alloy>,
    <ore:dustConstantan>            :   <thermalfoundation:glass_alloy:4>,
    <ore:dustAluminium>             :   <thermalfoundation:glass:4>,
    <ore:dustInvar>                 :   <thermalfoundation:glass_alloy:2>,
    <ore:dustNickel>                :   <thermalfoundation:glass:5>,
    <ore:dustIridium>               :   <thermalfoundation:glass:7>,
    <ore:dustLumium>                :   <thermalfoundation:glass_alloy:6>,
    <ore:dustSignalum>              :   <thermalfoundation:glass_alloy:5>,
    <ore:dustGold>                  :   <jaopca:block_glasshardenedgold>,
    <ore:dustOsmium>                :   <jaopca:block_glasshardenedosmium>,
    <ore:dustArdite>                :   <jaopca:block_glasshardenedardite>,
    <ore:dustCobalt>                :   <jaopca:block_glasshardenedcobalt>,
    <ore:dustAstralStarmetal>       :   <jaopca:block_glasshardenedastralstarmetal>,
    <ore:dustDraconium>             :   <jaopca:block_glasshardeneddraconium>,
    <ore:dustIron>                  :   <jaopca:block_glasshardenediron>,
    <ore:dustUranium>               :   <jaopca:block_glasshardeneduranium>,
    <ore:dustAncientDebris>         :   <jaopca:block_glasshardenedancientdebris>
};

for input, output in List {
    mods.modularmachinery.RecipeBuilder.newBuilder("Vacuum_Glass_Manufacturing_Plant_" + output.name + "_1", "YMG_Vacuum_Glass_Manufacturing_Plant", setTime * 4)
    .addEnergyPerTickInput(setEnergy)
    .addItemInput(<ore:blockGlassHardened> * 5)
    .addItemInput(input * 2)
    .addItemOutput(output * 5)
    .addItemOutput(<thermalfoundation:material:865>).setChance(0.18)
    .build();
}

for input, output in List {
    mods.modularmachinery.RecipeBuilder.newBuilder("Vacuum_Glass_Manufacturing_Plant_" + output.name + "_2", "YMG_Vacuum_Glass_Manufacturing_Plant", setTime * 4)
    .addEnergyPerTickInput(setEnergy)
    .addItemInput(<ore:dustObsidian> * 10)
    .addItemInput(input * 2)
    .addItemOutput(output * 5)
    .build();
}