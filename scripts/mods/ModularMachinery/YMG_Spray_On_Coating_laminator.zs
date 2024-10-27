/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.modularmachinery.MachineModifier;


//启用并行
// MachineModifier.setParallelizable("YMG_Spray_On_Coating_laminator", true);
MachineModifier.setMaxParallelism("YMG_Spray_On_Coating_laminator", 16);
MachineModifier.setInternalParallelism("YMG_Spray_On_Coating_laminator", 16);


//能量消耗
val setEnergy = 150000;
//配方时间
val setTime = 10;

val List as IItemStack[ILiquidStack] = {
    <liquid:copper>                 :   <thermalfoundation:glass>,
    <liquid:silver>                 :   <thermalfoundation:glass:2>,
    <liquid:lead>                   :   <thermalfoundation:glass:3>,
    <liquid:electrum>               :   <thermalfoundation:glass_alloy:1>,
    <liquid:platinum>               :   <thermalfoundation:glass:6>,
    <liquid:bronze>                 :   <thermalfoundation:glass_alloy:3>,
    <liquid:tin>                    :   <thermalfoundation:glass:1>,
    <liquid:enderium>               :   <thermalfoundation:glass_alloy:7>,
    <liquid:steel>                  :   <thermalfoundation:glass_alloy>,
    <liquid:constantan>             :   <thermalfoundation:glass_alloy:4>,
    <liquid:aluminum>               :   <thermalfoundation:glass:4>,
    <liquid:invar>                  :   <thermalfoundation:glass_alloy:2>,
    <liquid:nickel>                 :   <thermalfoundation:glass:5>,
    <liquid:iridium>                :   <thermalfoundation:glass:7>,
    <liquid:lumium>                 :   <thermalfoundation:glass_alloy:6>,
    <liquid:signalum>               :   <thermalfoundation:glass_alloy:5>,
    <liquid:gold>                   :   <jaopca:block_glasshardenedgold>,
    <liquid:osmium>                 :   <jaopca:block_glasshardenedosmium>,
    <liquid:ardite>                 :   <jaopca:block_glasshardenedardite>,
    <liquid:cobalt>                 :   <jaopca:block_glasshardenedcobalt>,
    <liquid:starmetal>              :   <jaopca:block_glasshardenedastralstarmetal>,
    <liquid:draconium>              :   <jaopca:block_glasshardeneddraconium>,
    <liquid:iron>                   :   <jaopca:block_glasshardenediron>,
    <liquid:uranium>                :   <jaopca:block_glasshardeneduranium>,
    <liquid:ancient_debris>         :   <jaopca:block_glasshardenedancientdebris>
};

//硬化玻璃
for input, output in List {
    mods.modularmachinery.RecipeBuilder.newBuilder("Spray_On_Coating_laminator_" + output.name, "YMG_Spray_On_Coating_laminator", setTime * 80)
    .addEnergyPerTickInput(setEnergy)
    .addItemInput(<ore:blockGlassHardened>)
    .addFluidInput(input * 72)
    .addItemOutput(output)
    .build();
}

//强化机械外壳
mods.modularmachinery.RecipeBuilder.newBuilder("Spray_On_Coating_laminator_blockcasing_4", "YMG_Spray_On_Coating_laminator", 200)
.addEnergyPerTickInput(5000000)
.addFluidInput(<liquid:dark_steel> * 576)
.addItemInputs([
    <modularmachinery:blockcasing>,
    <enderio:item_material:20> * 64,
    <contenttweaker:mysteriousiceplate> * 2
])
.addItemOutput(<modularmachinery:blockcasing:4>)
.build();

//绝缘电路基板
mods.modularmachinery.RecipeBuilder.newBuilder("insulationprintedcircuitboard", "YMG_Spray_On_Coating_laminator", 300)
.addEnergyPerTickInput(1500000)
.addGasInput(<gas:ethene> * 100)
.addFluidInputs([
    <liquid:astralsorcery.liquidstarlight> * 2400,
    <liquid:ic2biomass> * 5000,
    <liquid:resin> * 50
])
.addItemInputs([
    <mekanism:polyethene:2>,
    <appliedenergistics2:paint_ball:33> * 4
])
.addItemOutput(<contenttweaker:insulationprintedcircuitboard>)
.build();

//强化部件核心
mods.modularmachinery.RecipeBuilder.newBuilder("modifier_component", "YMG_Spray_On_Coating_laminator", 600)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:eezo_fluid> * 1296)
.addItemInputs([
    <fluxnetworks:fluxblock>,
    <extendedcrafting:trimmed> * 4,
    <contenttweaker:mysteriousiceplate> * 4
])
.addItemOutput(<valkyrielib:modifier_component>)
.build();

//莱泽尔水晶
mods.modularmachinery.RecipeBuilder.newBuilder("litherite_crystal", "YMG_Spray_On_Coating_laminator", 200)
.addEnergyPerTickInput(450000)
.addFluidInput(<liquid:draconium> * 576)
.addItemInputs([
    <actuallyadditions:block_crystal_empowered:4>,
    <contenttweaker:radiantcrystalpowder>
])
.addItemOutput(<environmentaltech:litherite_crystal> * 3)
.build();

//工业电路基板
mods.modularmachinery.RecipeBuilder.newBuilder("industryprintedcircuitboard", "YMG_Spray_On_Coating_laminator", 600)
.addEnergyPerTickInput(300000)
.addFluidInputs([
    <liquid:platinum> * 1296,
    <liquid:empoweredoil> * 400
])
.addItemInputs([
    <contenttweaker:insulationprintedcircuitboard>,
    <enderio:item_material:51> * 16,
])
.addItemOutput(<contenttweaker:industryprintedcircuitboard>)
.build();

//灵魂电路基板
mods.modularmachinery.RecipeBuilder.newBuilder("soulprintedcircuitboard", "YMG_Spray_On_Coating_laminator", 600)
.addEnergyPerTickInput(300000)
.addFluidInputs([
    <liquid:platinum> * 1296,
    <liquid:empoweredoil> * 400
])
.addItemInputs([
    <contenttweaker:insulationprintedcircuitboard>,
    <enderio:item_material:52> * 16,
])
.addItemOutput(<contenttweaker:soulprintedcircuitboard>)
.build();

//强化电路基板
mods.modularmachinery.RecipeBuilder.newBuilder("enhancedprintedcircuitboard", "YMG_Spray_On_Coating_laminator", 600)
.addEnergyPerTickInput(300000)
.addFluidInputs([
    <liquid:platinum> * 1296,
    <liquid:empoweredoil> * 400
])
.addItemInputs([
    <contenttweaker:insulationprintedcircuitboard>,
    <enderio:item_material:67> * 16,
])
.addItemOutput(<contenttweaker:enhancedprintedcircuitboard>)
.build();

//双锂水晶
mods.modularmachinery.RecipeBuilder.newBuilder("dilithiumlens", "YMG_Spray_On_Coating_laminator", 1200)
.addEnergyPerTickInput(15000000)
.addFluidInputs([
    <liquid:dilithium_fluid> * 1296
])
.addItemInputs([
    <astralsorcery:itemtunedrockcrystal>,
    <thermalfoundation:material:1028>
])
.addItemOutput(<contenttweaker:dilithiumlens>)
.build();

//强化玻璃
mods.modularmachinery.RecipeBuilder.newBuilder("Spray_On_Coating_laminator_reactorglass", "YMG_Spray_On_Coating_laminator", 400)
.addEnergyPerTickInput(6000000)
.addFluidInputs([
    <liquid:glass> * 64000,
])
.addItemInputs([
    <mekanismgenerators:reactor:1>
])
.addItemOutput(<mekanismgenerators:reactorglass>)
.build();