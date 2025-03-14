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
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipeModifier;


val CatalystItem as IItemStack = <thermalfoundation:material:1027>;
val CatalystString as string[] = [
    "§9产物数量 §6x1.25§f",
    "§9产物概率 §6x1.5§f"
];
val CatalysRecipeModifierBuilder as RecipeModifier[] = [
    RecipeModifierBuilder.create("modularmachinery:item", "output", 1.25F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:item", "output", 1.5F, 1, true).build()
];

//线程设置
MachineModifier.setMaxThreads("YMG_Ore_Processing_Plant", 4);

//启用并行
// MachineModifier.setParallelizable("YMG_Ore_Processing_Plant", false);
MachineModifier.setMaxParallelism("YMG_Ore_Processing_Plant", 1024);
MachineModifier.setInternalParallelism("YMG_Ore_Processing_Plant", 1024);

//稀土处理
mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_rare_earth", "YMG_Ore_Processing_Plant", 300)
.addEnergyPerTickInput(500000000)
.addFluidInput(<liquid:liquidhydrofluricacid> * 1000)
.addItemInput(<contenttweaker:rare_earth>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<contenttweaker:draconic_dust> * 4).setChance(0.2F)
.addItemOutput(<appliedenergistics2:material:45> * 256).setChance(0.8F)
.addItemOutput(<appliedenergistics2:material:3> * 192).setChance(0.99F)
.addItemOutput(<avaritia:resource:2> * 16).setChance(0.75F)
.addItemOutput(<mets:thorium_dust> * 128).setChance(0.2F)
.addItemOutput(<taiga:meteorite_dust> * 64).setChance(0.95F)
.addItemOutput(<jaopca:item_dustdirtyancientdebris> * 2).setChance(0.08F)
.addItemOutput(<jaopca:item_dustdirtymithril> * 2).setChance(0.08F)
.addItemOutput(<contenttweaker:radiantcrystalpowder>).setChance(0.02F)
.build();

//矿石处理
mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_1", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreIron>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<thermalfoundation:material> * 8)
.addItemOutput(<thermalfoundation:material:65> * 4).setChance(0.05F)
.addItemOutput(<thermalfoundation:material:69> * 4).setChance(0.1F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_2", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreGold>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<thermalfoundation:material:1> * 8)
.addItemOutput(<thermalfoundation:material:64> * 4).setChance(0.2F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_3", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreAstralStarmetal>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<astralsorcery:itemcraftingcomponent:2> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_4", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreAluminum>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<thermalfoundation:material:68> * 8)
.addItemOutput(<thermalfoundation:material> * 4).setChance(0.1F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_5", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreDraconium>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<draconicevolution:draconium_dust> * 12)
.addItemOutput(<draconicevolution:draconium_dust> * 8).setChance(0.4F)
.addItemOutput(<draconicevolution:draconium_dust> * 8).setChance(0.15F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_6", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreCopper>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<thermalfoundation:material:64> * 8)
.addItemOutput(<thermalfoundation:material:1> * 4).setChance(0.12F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_7", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreUranium>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<mekanism:dust:7> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_8", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:orePlatinum>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<thermalfoundation:material:70> * 8)
.addItemOutput(<thermalfoundation:material:71> * 4).setChance(0.1F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_9", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreIridium>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<thermalfoundation:material:71> * 8)
.addItemOutput(<thermalfoundation:material:70> * 4).setChance(0.1F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_10", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreCobalt>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<enderio:item_material:31> * 8)
.addItemOutput(<thermalfoundation:material> * 4).setChance(0.1F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_11", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreArdite>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<enderio:item_material:30> * 8)
.addItemOutput(<thermalfoundation:material:1> * 4).setChance(0.1F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_12", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreMithril>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<thermalfoundation:material:72> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_13", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreSilver>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<thermalfoundation:material:66> * 8)
.addItemOutput(<thermalfoundation:material:67> * 4).setChance(0.1F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_14", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreLead>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<thermalfoundation:material:67> * 8)
.addItemOutput(<thermalfoundation:material:66> * 4).setChance(0.1F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_15", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreOsmium>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<mekanism:dust:2> * 8)
.addItemOutput(<mekanism:dust:2> * 4).setChance(0.1F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_16", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreAncientDebris>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<jaopca:item_dustancientdebris> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_17", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreNickel>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<thermalfoundation:material:69> * 8)
.addItemOutput(<thermalfoundation:material:70> * 4).setChance(0.1F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_18", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreTin>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<thermalfoundation:material:65> * 8)
.addItemOutput(<thermalfoundation:material> * 4).setChance(0.1F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_19", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<taiga:dilithium_ore>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<taiga:dilithium_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_20", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreTiberium>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<taiga:tiberium_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_21", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreUru>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<taiga:uru_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_22", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreAbyssum>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<taiga:abyssum_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_23", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreClathrateOilSand>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<thermalfoundation:material:892> * 8)
.addItemOutput(<thermalfoundation:material:892> * 8).setChance(0.25F)
.addItemOutput(<thermalfoundation:material:833> * 4).setChance(0.15F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_24", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreClathrateOilShale>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<thermalfoundation:material:892> * 8)
.addItemOutput(<thermalfoundation:material:892> * 8).setChance(0.25F)
.addItemOutput(<minecraft:flint> * 4).setChance(0.15F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_25", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreAurorium>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<taiga:aurorium_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_26", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:orePrometheum>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<taiga:prometheum_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_27", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreDuranite>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<taiga:duranite_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_28", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreValyrium>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<taiga:valyrium_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_29", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreVibranium>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<taiga:vibranium_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_30", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreKarmesine>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<taiga:karmesine_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_31", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:orePalladium>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<taiga:palladium_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_32", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreJauxum>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<taiga:jauxum_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_33", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreOvium>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<taiga:ovium_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_34", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreOsram>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<taiga:osram_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_35", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreEezo>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<taiga:eezo_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_36", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<taiga:meteoritecobble_block>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<taiga:meteorite_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_37", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreClathrateRedstone>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<thermalfoundation:material:893> * 8)
.addItemOutput(<thermalfoundation:material:893> * 8).setChance(0.25F)
.addItemOutput(<thermalfoundation:material:866> * 4).setChance(0.5F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_38", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreClathrateGlowstone>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<thermalfoundation:material:894> * 8)
.addItemOutput(<thermalfoundation:material:894> * 8).setChance(0.25F)
.addItemOutput(<thermalfoundation:material:771> * 4).setChance(0.5F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_39", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreClathrateEnder>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<thermalfoundation:material:895> * 8)
.addItemOutput(<thermalfoundation:material:895> * 8).setChance(0.25F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_40", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreFluorite>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<mekanism:otherdust:7> * 8)
.addItemOutput(<mekanism:otherdust:7> * 4).setChance(0.5F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_41", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreNiobium>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<mets:niobium_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_42", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreTitanium>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<mets:titanium_dust> * 8)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_43", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreQuartzBlack>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<actuallyadditions:item_dust:7> * 8)
.addItemOutput(<appliedenergistics2:material:3> * 4).setChance(0.1F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_44", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreQuartz>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<appliedenergistics2:material:3> * 8)
.addItemOutput(<appliedenergistics2:material:3> * 4).setChance(0.1F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_45", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreChargedCertusQuartz>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<jaopca:item_dustchargedcertusquartz> * 8)
.addItemOutput(<appliedenergistics2:material:2> * 4).setChance(0.1F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_46", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreCertusQuartz>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<appliedenergistics2:material:2> * 8)
.addItemOutput(<appliedenergistics2:material:2> * 4).setChance(0.1F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_47", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreEmerald>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<actuallyadditions:item_dust:3> * 8)
.addItemOutput(<actuallyadditions:item_dust:3> * 4).setChance(0.25F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_48", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreDiamond>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<ic2:dust:5> * 8)
.addItemOutput(<ic2:dust:5> * 4).setChance(0.25F)
.addItemOutput(<thermalfoundation:material:768> * 4).setChance(0.05F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_49", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreCoal>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<thermalfoundation:material:768> * 12)
.addItemOutput(<thermalfoundation:material:768> * 4).setChance(0.6F)
.addItemOutput(<ic2:dust:5> * 4).setChance(0.005F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_50", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreRedstone>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<minecraft:redstone> * 64)
.addItemOutput(<minecraft:redstone> * 4).setChance(0.2F)
.addItemOutput(<appliedenergistics2:material:5> * 4).setChance(0.8F)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Ore_Processing_Plant_51", "YMG_Ore_Processing_Plant", 10)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100)
.addItemInput(<ore:oreLapis>)
.addCatalystInput(CatalystItem, CatalystString, CatalysRecipeModifierBuilder)
.addItemOutput(<ic2:dust:9> * 64)
.addItemOutput(<ic2:dust:9> * 4).setChance(0.2F)
.build();