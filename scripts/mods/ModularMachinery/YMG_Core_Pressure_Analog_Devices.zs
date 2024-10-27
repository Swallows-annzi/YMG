/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;

import mods.modularmachinery.IMachineController;


//IC核电
//铀发电倍率
val Uranium_Magnification = 1.6F;
//MOX发电倍率
val MOX_Magnification = 3.5F;
//质子发电倍率
val Proton_Magnification = 5.0F;

//充能星光宝钻
mods.modularmachinery.RecipeBuilder.newBuilder("stellajewelglow", "YMG_Core_Pressure_Analog_Devices", 20)
.addEnergyPerTickInput(5000000)
.addEnergyPerTickOutput(100000000)
.addItemInputs([
    <minecraft:tnt> * 64,
    <minecraft:tnt> * 64,
    <minecraft:tnt> * 64,
    <minecraft:tnt> * 64,
    <contenttweaker:stellajewelblock>
])
.addItemOutput(<contenttweaker:stellajewelglow>)
.build();

//下界之星
mods.modularmachinery.RecipeBuilder.newBuilder("nether_star_2", "YMG_Core_Pressure_Analog_Devices", 20)
.addEnergyPerTickInput(1000000)
.addEnergyPerTickOutput(20000000)
.addItemInputs([
    <minecraft:tnt> * 64,
    <minecraft:skull:1> * 64
])
.addItemOutput(<minecraft:nether_star>)
.build();

//天辉水晶粉末
mods.modularmachinery.RecipeBuilder.newBuilder("Core_Pressure_Analog_Devices_radiantcrystalpowder", "YMG_Core_Pressure_Analog_Devices", 20)
.addEnergyPerTickInput(100000)
.addEnergyPerTickOutput(2000000)
.addItemInput(<minecraft:tnt> * 16)
.addItemInput(<astralsorcery:itemcelestialcrystal>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 100, size: 900, fract: 0, purity: 100, sizeOverride: -1}}}))
.setPreViewNBT({
    display: {
        Lore: [
            "§r尺寸:§e900§r",
            "§r纯度:§e100%§r",
            "§r抛光:§e100%§r"
        ],
    }
})
.addItemOutput(<contenttweaker:radiantcrystalpowder>)
.addFluidOutput(<liquid:astralsorcery.liquidstarlight> * 16000)
.build();

//精英合成组
mods.modularmachinery.RecipeBuilder.newBuilder("material_16", "YMG_Core_Pressure_Analog_Devices", 600)
.addEnergyPerTickInput(20000000)
.addItemInputs([
    <extendedcrafting:material:15>,
    <contenttweaker:olihacon>,
    <taiga:nihilite_dust> * 12,
    <botania:bifrostperm>
])
.addItemOutput(<extendedcrafting:material:16>)
.build();

//铀
mods.modularmachinery.RecipeBuilder.newBuilder("Core_Pressure_Analog_Devices_uranium_fuel_rod_Energy_Output_1", "YMG_Core_Pressure_Analog_Devices", 40)
.addEnergyPerTickInput(Uranium_Magnification * 100000)
.addEnergyPerTickOutput(Uranium_Magnification * 10000000)
.addItemInput(<ic2:uranium_fuel_rod>)
.addItemOutput(<ic2:nuclear:11>).setChance(0.80)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Core_Pressure_Analog_Devices_dual_uranium_fuel_rod_Energy_Output_1", "YMG_Core_Pressure_Analog_Devices", 80)
.addEnergyPerTickInput(Uranium_Magnification * 100000)
.addEnergyPerTickOutput(Uranium_Magnification * 10000000)
.addItemInput(<ic2:dual_uranium_fuel_rod>)
.addItemOutput(<ic2:nuclear:12>).setChance(0.80)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Core_Pressure_Analog_Devices_quad_uranium_fuel_rod_Energy_Output_1", "YMG_Core_Pressure_Analog_Devices", 160)
.addEnergyPerTickInput(Uranium_Magnification * 100000)
.addEnergyPerTickOutput(Uranium_Magnification * 10000000)
.addItemInput(<ic2:quad_uranium_fuel_rod>)
.addItemOutput(<ic2:nuclear:13>).setChance(0.80)
.build();
//MOX
mods.modularmachinery.RecipeBuilder.newBuilder("Core_Pressure_Analog_Devices_mox_fuel_rod_Energy_Output_1", "YMG_Core_Pressure_Analog_Devices", 20)
.addEnergyPerTickInput(MOX_Magnification * 100000)
.addEnergyPerTickOutput(MOX_Magnification * 10000000)
.addItemInput(<ic2:mox_fuel_rod>)
.addItemOutput(<ic2:nuclear:14>).setChance(0.80)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Core_Pressure_Analog_Devices_dual_mox_fuel_rod_Energy_Output_1", "YMG_Core_Pressure_Analog_Devices", 40)
.addEnergyPerTickInput(MOX_Magnification * 100000)
.addEnergyPerTickOutput(MOX_Magnification * 10000000)
.addItemInput(<ic2:dual_mox_fuel_rod>)
.addItemOutput(<ic2:nuclear:15>).setChance(0.80)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Core_Pressure_Analog_Devices_quad_mox_fuel_rod_Energy_Output_1", "YMG_Core_Pressure_Analog_Devices", 80)
.addEnergyPerTickInput(MOX_Magnification * 100000)
.addEnergyPerTickOutput(MOX_Magnification * 10000000)
.addItemInput(<ic2:quad_mox_fuel_rod>)
.addItemOutput(<ic2:nuclear:16>).setChance(0.80)
.build();
//质子
mods.modularmachinery.RecipeBuilder.newBuilder("Core_Pressure_Analog_Devices_proton_fuel_rod_Energy_Output_1", "YMG_Core_Pressure_Analog_Devices", 20)
.addEnergyPerTickInput(Proton_Magnification * 100000)
.addEnergyPerTickOutput(Proton_Magnification * 10000000)
.addItemInput(<super_solar_panels:proton_fuel_rod>)
.addItemOutput(<super_solar_panels:crafting:37>).setChance(0.80)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Core_Pressure_Analog_Devices_dual_proton_fuel_rod_Energy_Output_1", "YMG_Core_Pressure_Analog_Devices", 40)
.addEnergyPerTickInput(Proton_Magnification * 100000)
.addEnergyPerTickOutput(Proton_Magnification * 10000000)
.addItemInput(<super_solar_panels:dual_proton_fuel_rod>)
.addItemOutput(<super_solar_panels:crafting:38>).setChance(0.80)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Core_Pressure_Analog_Devices_quad_proton_fuel_rod_Energy_Output_1", "YMG_Core_Pressure_Analog_Devices", 80)
.addEnergyPerTickInput(Proton_Magnification * 100000)
.addEnergyPerTickOutput(Proton_Magnification * 10000000)
.addItemInput(<super_solar_panels:quad_proton_fuel_rod>)
.addItemOutput(<super_solar_panels:crafting:39>).setChance(0.80)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Core_Pressure_Analog_Devices_eit_proton_fuel_rod_Energy_Output_1", "YMG_Core_Pressure_Analog_Devices", 160)
.addEnergyPerTickInput(Proton_Magnification * 100000)
.addEnergyPerTickOutput(Proton_Magnification * 10000000)
.addItemInput(<super_solar_panels:eit_proton_fuel_rod>)
.addItemOutput(<super_solar_panels:crafting:40>).setChance(0.80)
.build();
