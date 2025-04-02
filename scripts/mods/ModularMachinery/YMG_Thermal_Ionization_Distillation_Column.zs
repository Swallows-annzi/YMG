/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineModifier;
// import mods.modularmachinery.ControllerGUIRenderEvent;
// import mods.modularmachinery.MMEvents;
// import mods.modularmachinery.SmartInterfaceType;
// import mods.modularmachinery.MachineTickEvent;
// import mods.modularmachinery.FactoryRecipeTickEvent;


// //最小速度
// val SpeedMin = 1.0 as double;
// //最大速度
// val SpeedMax = 10000 as long;

//启用并行
// MachineModifier.setParallelizable("YMG_Thermal_Ionization_Distillation_Column", true);
MachineModifier.setMaxParallelism("YMG_Thermal_Ionization_Distillation_Column", 64);
MachineModifier.setInternalParallelism("YMG_Thermal_Ionization_Distillation_Column", 64);

//盐水
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Ionization_Distillation_Column_1", "YMG_Thermal_Ionization_Distillation_Column", 100)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:water> * 100000)
.addFluidOutputs([
    <liquid:ic2distilled_water> * 89000,
    <liquid:brine> * 10000,
    <liquid:heavywater> * 1000
])
// .addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
//     val ctrl = event.controller;
//     val data = ctrl.customData;
//     val map = data.asMap();
//     ctrl.addModifier("Thermal_Ionization_Distillation_Column_Energy", RecipeModifierBuilder.create("modularmachinery:energy", "input", map["speed"].asFloat(), 1, false).build());
//     ctrl.addModifier("Thermal_Ionization_Distillation_Column_Fluid_Input", RecipeModifierBuilder.create("modularmachinery:fluid", "input", map["speed"].asFloat(), 1, false).build());
//     ctrl.addModifier("Thermal_Ionization_Distillation_Column_Fluid_Output", RecipeModifierBuilder.create("modularmachinery:fluid", "output", map["speed"].asFloat(), 1, false).build());
// })
.build();

//液态锂
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Ionization_Distillation_Column_2", "YMG_Thermal_Ionization_Distillation_Column", 100)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:brine> * 100000)
.addFluidOutputs([
    <liquid:liquidlithium> * 10000
])
.build();

//过热纳蒸汽
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Ionization_Distillation_Column_3", "YMG_Thermal_Ionization_Distillation_Column", 100)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:liquidsodium> * 100000)
.addFluidOutputs([
    <liquid:liquidsuperheatedsodium> * 100
])
.build();

//重水
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Ionization_Distillation_Column_4", "YMG_Thermal_Ionization_Distillation_Column", 100)
.addEnergyPerTickInput(200000)
.addFluidInput(<liquid:ic2distilled_water> * 100000)
.addFluidOutputs([
    <liquid:ic2distilled_water> * 98500,
    <liquid:heavywater> * 1500
])
.build();

// //数据端口
// MachineModifier.addSmartInterfaceType("YMG_Thermal_Ionization_Distillation_Column",
//     SmartInterfaceType.create("speed", 1)
//         .setHeaderInfo("效率设置")
//         .setValueInfo("速度：%.5f 倍")
//         .setFooterInfo("可调节的数据范围：" + SpeedMin + " ~ " + SpeedMax)
//         .setNotEqualMessage("数据异常！")
// );

// //数据接口数据写入控制器
// MMEvents.onMachinePostTick("YMG_Thermal_Ionization_Distillation_Column", function(event as MachineTickEvent) {
//     val ctrl = event.controller;
//     val data = ctrl.customData;
//     val map = data.asMap();
//     val nullable = ctrl.getSmartInterfaceData("speed");
//     var speed = isNull(nullable) ? 1 as float : nullable.value;
//     if (speed < SpeedMin || speed > SpeedMax) {
//         nullable.value = 1;
//     }
//     map["speed"] = speed;
//     ctrl.customData = data;
// });

// //GUI
// MMEvents.onControllerGUIRender("YMG_Thermal_Ionization_Distillation_Column", function(event as ControllerGUIRenderEvent) {
//     val ctrl = event.controller;
//     val data = ctrl.customData;
//     val map = data.asMap();
//     map["speed"] = isNull(map["speed"]) ? 0 as float : map["speed"].asFloat();
//     var info as string[] = [];
//     info += "§c>>";
//     info += "§9效率倍率：§e" + Percentage_(map["speed"].asFloat()) + "§6x  §b(§9默认倍率：§e1.0§6x§b)";
//     info += "§c>>";
//     // info += data;
//     event.extraInfo = info;
// });

// //小数点后三位
// function Percentage_(A as double) as double {
//     return ((A * 1000.0) as int) as double / 1000.0;
// }
