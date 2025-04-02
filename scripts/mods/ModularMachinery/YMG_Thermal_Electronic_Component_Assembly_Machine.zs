/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//处理器
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Electronic_Component_Assembly_Machine_material_22", "YMG_Thermal_Electronic_Component_Assembly_Machine", 5)
.addEnergyPerTickInput(600000)
.addItemInput(<minecraft:gold_ingot>)
.addItemInput(<minecraft:redstone>)
.addItemInput(<ore:itemSilicon>)
.addItemOutput(<appliedenergistics2:material:22>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Electronic_Component_Assembly_Machine_material_23", "YMG_Thermal_Electronic_Component_Assembly_Machine", 5)
.addEnergyPerTickInput(600000)
.addItemInput(<appliedenergistics2:material:10>)
.addItemInput(<minecraft:redstone>)
.addItemInput(<ore:itemSilicon>)
.addItemOutput(<appliedenergistics2:material:23>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Electronic_Component_Assembly_Machine_material_24", "YMG_Thermal_Electronic_Component_Assembly_Machine", 5)
.addEnergyPerTickInput(600000)
.addItemInput(<minecraft:diamond>)
.addItemInput(<minecraft:redstone>)
.addItemInput(<ore:itemSilicon>)
.addItemOutput(<appliedenergistics2:material:24>)
.build();

//福鲁伊克斯逻辑单元
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Electronic_Component_Assembly_Machine_threng_material_4", "YMG_Thermal_Electronic_Component_Assembly_Machine", 8)
.addEnergyPerTickInput(1000000)
.addItemInput(<appliedenergistics2:material:24>)
.addItemInput(<ore:ingotFluixSteel> * 4)
.addItemInput(<appliedenergistics2:quartz_vibrant_glass>)
.addItemOutput(<threng:material:4>)
.build();

//推测处理器
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Electronic_Component_Assembly_Machine_threng_material_14", "YMG_Thermal_Electronic_Component_Assembly_Machine", 600)
.addEnergyPerTickInput(4000000)
.addItemInputs([
    <threng:material:13> * 2,
    <mets:super_circuit> * 2,
    <super_solar_panels:crafting:44> * 4,
    <appliedenergistics2:material:22> * 32,
    <appliedenergistics2:material:23> * 32,
    <appliedenergistics2:material:24> * 32
])
.addItemOutput(<threng:material:14>)
.build();

//激光二极管 II
mods.modularmachinery.RecipeBuilder.newBuilder("laserdiodes2", "YMG_Thermal_Electronic_Component_Assembly_Machine", 300)
.addEnergyPerTickInput(1000000)
.addItemInputs([
    <contenttweaker:laserdiodes1>,
    <redstonearsenal:storage:1>,
    <contenttweaker:tungstenwire> * 32,
    <contenttweaker:anomalousice> * 4
])
.addItemOutput(<contenttweaker:laserdiodes2>)
.build();

//二极管
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Electronic_Component_Assembly_Machine_mysteriousiceplate", "YMG_Thermal_Electronic_Component_Assembly_Machine", 1200)
.addEnergyPerTickInput(12000000)
.addItemInputs([
    <contenttweaker:stellajewelglow>,
    <enderio:item_capacitor_stellar> * 4,
    <contenttweaker:mysteriousiceplate> * 32
])
.addItemOutput(<environmentaltech:diode>)
.build();

//活体电路板
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Electronic_Component_Assembly_Machine_living_circuit", "YMG_Thermal_Electronic_Component_Assembly_Machine", 600)
.addEnergyPerTickInput(60000000)
.addItemInputs([
    <contenttweaker:nano_rose_red_metal> * 4,
    <mets:neutron_plate>,
    <contenttweaker:insulationprintedcircuitboard>,
    <threng:material:14>
])
.addItemOutput(<mets:living_circuit>)
.build();
