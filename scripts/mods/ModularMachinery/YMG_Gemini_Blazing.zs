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
// MachineModifier.setParallelizable("YMG_Gemini_Blazing", true);
MachineModifier.setMaxParallelism("YMG_Gemini_Blazing", 12);
MachineModifier.setInternalParallelism("YMG_Gemini_Blazing", 12);


//简并态中子板
mods.modularmachinery.RecipeBuilder.newBuilder("neutron_plate", "YMG_Gemini_Blazing", 600)
.addEnergyPerTickInput(4000000)
.addFluidInput(<liquid:pyrotheum> * 16000)
.addItemInputs([
    <mets:niobium_titanium_plate> * 4,
    <super_solar_panels:crafting:51>,
    <super_solar_panels:crafting:29>,
    <super_solar_panels:crafting:5>
])
.addItemOutput(<mets:neutron_plate>)
.build();

//纳米活体金属
mods.modularmachinery.RecipeBuilder.newBuilder("nano_living_metal", "YMG_Gemini_Blazing", 600)
.addEnergyPerTickInput(4000000)
.addFluidInputs([
    <liquid:pyrotheum> * 16000,
    <liquid:ic2biomass> * 64000
])
.addItemInputs([
    <mets:niobium_titanium_ingot>,
    <ore:ingotCrystallinePinkSlime>,
    <taiga:lumix_ingot>,
    <botania:manaresource:5> * 3,
    <super_solar_panels:crafting:24> * 16
])
.addItemOutput(<contenttweaker:nano_rose_red_metal>)
.build();

//一级结构方块
mods.modularmachinery.RecipeBuilder.newBuilder("structure_frame_1", "YMG_Gemini_Blazing", 450)
.addEnergyPerTickInput(8000000)
.addFluidInputs([
    <liquid:pyrotheum> * 16000
])
.addItemInputs([
    <environmentaltech:interconnect>,
    <environmentaltech:litherite_crystal> * 8
])
.addItemOutput(<environmentaltech:structure_frame_1>)
.build();

//玄冰合金制外壳
mods.modularmachinery.RecipeBuilder.newBuilder("mysteriousicecasing", "YMG_Gemini_Blazing", 2400)
.addEnergyPerTickInput(15000000)
.addFluidInputs([
    <liquid:pyrotheum> * 128000,
    <liquid:nucleum_fluid> * 1296
])
.addItemInputs([
    <environmentaltech:structure_frame_1>,
    <contenttweaker:mysteriousicegear> * 2,
    <ic2:plate:13> * 16,
    <contenttweaker:mysteriousiceplate> * 16
])
.addItemOutput(<contenttweaker:mysteriousicecasing>)
.build();

//激光二极管 III
mods.modularmachinery.RecipeBuilder.newBuilder("laserdiodes3", "YMG_Gemini_Blazing", 1200)
.addEnergyPerTickInput(10000000)
.addFluidInputs([
    <liquid:pyrotheum> * 128000,
    <liquid:glass> * 128000,
    <liquid:fluxed_electrum> * 10368
])
.addItemInputs([
    <contenttweaker:laserdiodes2>,
    <contenttweaker:mysteriousicewire> * 32,
    <mets:diamond_lens>,
    <mets:neutron_plate>
])
.addItemOutput(<contenttweaker:laserdiodes3>)
.build();

//反应堆框架
mods.modularmachinery.RecipeBuilder.newBuilder("Gemini_Blazing_reactor_1", "YMG_Gemini_Blazing", 600)
.addEnergyPerTickInput(15000000)
.addFluidInputs([
    <liquid:pyrotheum> * 16000,
    <liquid:osmiridium> * 5184
])
.addItemInputs([
    <ic2:resource:14>,
    <ore:plateDenseLead> * 8,
    <ic2:containment_plating> * 4,
    <super_solar_panels:crafting:45> * 4,
    <ic2:iridium_reflector>,
    <mets:neutron_plate>
])
.addItemOutput(<mekanismgenerators:reactor:1>)
.build();

//强化玻璃
mods.modularmachinery.RecipeBuilder.newBuilder("Gemini_Blazing_reactorglass", "YMG_Gemini_Blazing", 600)
.addEnergyPerTickInput(15000000)
.addFluidInputs([
    <liquid:pyrotheum> * 16000,
    <liquid:osmiridium> * 5184,
    <liquid:glass> * 64000
])
.addItemInputs([
    <appliedenergistics2:quartz_vibrant_glass>,
    <ic2:containment_plating> * 4,
    <super_solar_panels:crafting:45> * 4,
    <ic2:iridium_reflector>,
    <mets:neutron_plate>
])
.addItemOutput(<mekanismgenerators:reactorglass>)
.build();
