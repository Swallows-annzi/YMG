/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.MachineStructureFormedEvent;
import mods.modularmachinery.FactoryRecipeTickEvent;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.ActiveMachineRecipe;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.FactoryRecipeStartEvent;


//热量上限
val MaxThermal = 10000;
//热量单位消耗
val setEnergy_Thermal = 400000;
//待机倍率
val setStandby = 0.1;
//初始值
val setInitialize_Number = 0;

//线程设置
MachineModifier.setMaxThreads("YMG_Thermal_Electronic_Component_Assembly_Machine", 0);

//启用并行
// MachineModifier.setParallelizable("YMG_Facility_Compress_Stamping_Integrated_Machine_Tool", false);
MachineModifier.setMaxParallelism("YMG_Thermal_Electronic_Component_Assembly_Machine", 4);
MachineModifier.setInternalParallelism("YMG_Thermal_Electronic_Component_Assembly_Machine", 4);

//初始化装置
val Initialize_String = "§d§l机械初始化装置";
MachineModifier.addCoreThread("YMG_Thermal_Electronic_Component_Assembly_Machine", FactoryRecipeThread.createCoreThread(Initialize_String));

//运行核心
val Work_Barnroom_String = "§b§l工作仓室";
MachineModifier.addCoreThread("YMG_Thermal_Electronic_Component_Assembly_Machine", FactoryRecipeThread.createCoreThread(Work_Barnroom_String));

//热量增加
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Electronic_Component_Assembly_Machine_Initialize", "YMG_Thermal_Electronic_Component_Assembly_Machine", 1)
.setThreadName(Initialize_String)
.setParallelized(false)
.addEnergyPerTickInput(setEnergy_Thermal)
.addFactoryStartHandler(function(event as FactoryRecipeStartEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    if(map["Thermal"].asLong() == MaxThermal)
    ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_Input_1", RecipeModifierBuilder.create("modularmachinery:energy", "input", setStandby, 1, false).build());
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    if(map["Thermal"].asLong() < MaxThermal){
        map["Thermal"] = map["Thermal"].asLong() + 1;
        ctrl.customData = data;
    }
})
.build();

//处理器
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Electronic_Component_Assembly_Machine_material_22", "YMG_Thermal_Electronic_Component_Assembly_Machine", 5)
.setThreadName(Work_Barnroom_String)
.addItemInput(<minecraft:gold_ingot>)
.addItemInput(<minecraft:redstone>)
.addItemInput(<ore:itemSilicon>)
.addItemOutput(<appliedenergistics2:material:22>)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    if(map["Thermal"].asLong() < MaxThermal)
    event.setFailed("§d工作状态未达标！");
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val RecipeList = ctrl.activeRecipeList;
    if(RecipeList[0].registryName != "thermal_electronic_component_assembly_machine_initialize")
    event.setFailed(false,"§d缺少能量输入！");
    ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_Input_2", RecipeModifierBuilder.create("modularmachinery:energy", "input", 600000, 0, false).build());
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_output_2", RecipeModifierBuilder.create("modularmachinery:energy", "input", -600000, 0, false).build());
})
.addRecipeTooltip(
    "§f能量消耗：60.0K FE/t",
    "§f总计：300.0K FE",
    "§f工作状态需要达到 §e100%！",
    "§c不消耗状态值。"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Electronic_Component_Assembly_Machine_material_23", "YMG_Thermal_Electronic_Component_Assembly_Machine", 5)
.setThreadName(Work_Barnroom_String)
.addItemInput(<appliedenergistics2:material:10>)
.addItemInput(<minecraft:redstone>)
.addItemInput(<ore:itemSilicon>)
.addItemOutput(<appliedenergistics2:material:23>)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    if(map["Thermal"].asLong() < MaxThermal)
    event.setFailed("§d工作状态未达标！");
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val RecipeList = ctrl.activeRecipeList;
    if(RecipeList[0].registryName != "thermal_electronic_component_assembly_machine_initialize")
    event.setFailed(false,"§d缺少能量输入！");
    ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_Input_3", RecipeModifierBuilder.create("modularmachinery:energy", "input", 600000, 0, false).build());
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_output_3", RecipeModifierBuilder.create("modularmachinery:energy", "input", -600000, 0, false).build());
})
.addRecipeTooltip(
    "§f能量消耗：60.0K FE/t",
    "§f总计：300.0K FE",
    "§f工作状态需要达到 §e100%！",
    "§c不消耗状态值。"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Electronic_Component_Assembly_Machine_material_24", "YMG_Thermal_Electronic_Component_Assembly_Machine", 5)
.setThreadName(Work_Barnroom_String)
.addItemInput(<minecraft:diamond>)
.addItemInput(<minecraft:redstone>)
.addItemInput(<ore:itemSilicon>)
.addItemOutput(<appliedenergistics2:material:24>)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    if(map["Thermal"].asLong() < MaxThermal)
    event.setFailed("§d工作状态未达标！");
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val RecipeList = ctrl.activeRecipeList;
    if(RecipeList[0].registryName != "thermal_electronic_component_assembly_machine_initialize")
    event.setFailed(false,"§d缺少能量输入！");
    ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_Input_4", RecipeModifierBuilder.create("modularmachinery:energy", "input", 600000, 0, false).build());
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_output_4", RecipeModifierBuilder.create("modularmachinery:energy", "input", -600000, 0, false).build());
})
.addRecipeTooltip(
    "§f能量消耗：60.0K FE/t",
    "§f总计：300.0K FE",
    "§f工作状态需要达到 §e100%！",
    "§c不消耗状态值。"
)
.build();

//福鲁伊克斯逻辑单元
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Electronic_Component_Assembly_Machine_threng_material_4", "YMG_Thermal_Electronic_Component_Assembly_Machine", 8)
.setThreadName(Work_Barnroom_String)
.addItemInput(<appliedenergistics2:material:24>)
.addItemInput(<ore:ingotFluixSteel> * 4)
.addItemInput(<appliedenergistics2:quartz_vibrant_glass>)
.addItemOutput(<threng:material:4>)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    if(map["Thermal"].asLong() < MaxThermal)
    event.setFailed("§d工作状态未达标！");
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val RecipeList = ctrl.activeRecipeList;
    if(RecipeList[0].registryName != "thermal_electronic_component_assembly_machine_initialize")
    event.setFailed(false,"§d缺少能量输入！");
    ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_Input_5", RecipeModifierBuilder.create("modularmachinery:energy", "input", 1000000, 0, false).build());
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_output_5", RecipeModifierBuilder.create("modularmachinery:energy", "input", -1000000, 0, false).build());
})
.addRecipeTooltip(
    "§f能量消耗：100.0K FE/t",
    "§f总计：800.0K FE",
    "§f工作状态需要达到 §e100%！",
    "§c不消耗状态值。"
)
.build();

//推测处理器
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Electronic_Component_Assembly_Machine_threng_material_14", "YMG_Thermal_Electronic_Component_Assembly_Machine", 600)
.setThreadName(Work_Barnroom_String)
.addItemInputs([
    <threng:material:13> * 2,
    <mets:super_circuit> * 2,
    <super_solar_panels:crafting:44> * 4,
    <appliedenergistics2:material:22> * 32,
    <appliedenergistics2:material:23> * 32,
    <appliedenergistics2:material:24> * 32
])
.addItemOutput(<threng:material:14>)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    if(map["Thermal"].asLong() < 0.6 * MaxThermal)
    event.setFailed("§d工作状态未达标！");
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    val RecipeList = ctrl.activeRecipeList;
    if(RecipeList[0].registryName != "thermal_electronic_component_assembly_machine_initialize")
    event.setFailed(false,"§d缺少能量输入！");
    if(map["Thermal"].asLong() == MaxThermal){
        ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_Input_6", RecipeModifierBuilder.create("modularmachinery:energy", "input", 4000000, 0, false).build());
        map["setsumber"] = 1;
        ctrl.customData = data;
    }
    if(map["Thermal"].asLong() < MaxThermal){
        ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_Input_6", RecipeModifierBuilder.create("modularmachinery:energy", "input", 400000, 0, false).build());
        map["setsumber"] = 2;
        ctrl.customData = data;
    }
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    map["setsumber"] = isNull(map["setsumber"]) ? 0 as int : map["setsumber"].asInt();
    if(map["setsumber"].asInt() == 1){
        ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_output_6", RecipeModifierBuilder.create("modularmachinery:energy", "input", -4000000, 0, false).build());
    }
    if(map["setsumber"].asInt() == 2){
        ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_output_6", RecipeModifierBuilder.create("modularmachinery:energy", "input", -400000, 0, false).build());
    }
    map["Thermal"] = map["Thermal"].asLong() - (0.1 * MaxThermal);
    ctrl.customData = data;
})
.addRecipeTooltip(
    "§f能量消耗：400.0K FE/t",
    "§f总计：240.0M FE",
    "§f工作状态需要达到 §e60%！",
    "§c消耗状态值 §e10%。"
)
.build();

//激光二极管 II
mods.modularmachinery.RecipeBuilder.newBuilder("laserdiodes2", "YMG_Thermal_Electronic_Component_Assembly_Machine", 300)
.setThreadName(Work_Barnroom_String)
.addItemInputs([
    <contenttweaker:laserdiodes1>,
    <redstonearsenal:storage:1>,
    <contenttweaker:tungstenwire> * 32,
    <contenttweaker:anomalousice> * 4
])
.addItemOutput(<contenttweaker:laserdiodes2>)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    if(map["Thermal"].asLong() < 0.8 * MaxThermal)
    event.setFailed("§d工作状态未达标！");
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    val RecipeList = ctrl.activeRecipeList;
    if(RecipeList[0].registryName != "thermal_electronic_component_assembly_machine_initialize")
    event.setFailed(false,"§d缺少能量输入！");
    if(map["Thermal"].asLong() == MaxThermal){
        ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_Input_11", RecipeModifierBuilder.create("modularmachinery:energy", "input", 1000000, 0, false).build());
        map["setsumber"] = 1;
        ctrl.customData = data;
    }
    if(map["Thermal"].asLong() < MaxThermal){
        ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_Input_11", RecipeModifierBuilder.create("modularmachinery:energy", "input", 100000, 0, false).build());
        map["setsumber"] = 2;
        ctrl.customData = data;
    }
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    map["setsumber"] = isNull(map["setsumber"]) ? 0 as int : map["setsumber"].asInt();
    if(map["setsumber"].asInt() == 1){
        ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_output_11", RecipeModifierBuilder.create("modularmachinery:energy", "input", -1000000, 0, false).build());
    }
    if(map["setsumber"].asInt() == 2){
        ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_output_11", RecipeModifierBuilder.create("modularmachinery:energy", "input", -100000, 0, false).build());
    }
    map["Thermal"] = map["Thermal"].asLong() - (0.2 * MaxThermal);
    ctrl.customData = data;
})
.addRecipeTooltip(
    "§f能量消耗：100.0K FE/t",
    "§f总计：30.0M FE",
    "§f工作状态需要达到 §e80%！",
    "§c消耗状态值 §e20%。"
)
.build();

//二极管
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Electronic_Component_Assembly_Machine_mysteriousiceplate", "YMG_Thermal_Electronic_Component_Assembly_Machine", 1200)
.setThreadName(Work_Barnroom_String)
.addItemInputs([
    <contenttweaker:stellajewelglow>,
    <enderio:item_capacitor_stellar> * 4,
    <contenttweaker:mysteriousiceplate> * 32
])
.addItemOutput(<environmentaltech:diode>)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    if(map["Thermal"].asLong() <  MaxThermal)
    event.setFailed("§d工作状态未达标！");
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    val RecipeList = ctrl.activeRecipeList;
    if(RecipeList[0].registryName != "thermal_electronic_component_assembly_machine_initialize")
    event.setFailed(false,"§d缺少能量输入！");
    if(map["Thermal"].asLong() == MaxThermal){
        ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_Input_7", RecipeModifierBuilder.create("modularmachinery:energy", "input", 12000000, 0, false).build());
        map["setsumber"] = 1;
        ctrl.customData = data;
    }
    if(map["Thermal"].asLong() < MaxThermal){
        ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_Input_7", RecipeModifierBuilder.create("modularmachinery:energy", "input", 1200000, 0, false).build());
        map["setsumber"] = 2;
        ctrl.customData = data;
    }
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    map["setsumber"] = isNull(map["setsumber"]) ? 0 as int : map["setsumber"].asInt();
    if(map["setsumber"].asInt() == 1){
        ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_output_7", RecipeModifierBuilder.create("modularmachinery:energy", "input", -12000000, 0, false).build());
    }
    if(map["setsumber"].asInt() == 2){
        ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_output_7", RecipeModifierBuilder.create("modularmachinery:energy", "input", -1200000, 0, false).build());
    }
    map["Thermal"] = map["Thermal"].asLong() - MaxThermal;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "§f能量消耗：1.2M FE/t",
    "§f总计：1.44G FE",
    "§f工作状态需要达到 §e100%！",
    "§c消耗状态值 §e100%。"
)
.build();

//活体电路板
mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Electronic_Component_Assembly_Machine_living_circuit", "YMG_Thermal_Electronic_Component_Assembly_Machine", 600)
.setThreadName(Work_Barnroom_String)
.addItemInputs([
    <contenttweaker:nano_rose_red_metal> * 4,
    <mets:neutron_plate>,
    <contenttweaker:insulationprintedcircuitboard>,
    <threng:material:14>
])
.addItemOutput(<mets:living_circuit>)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    if(map["Thermal"].asLong() <  MaxThermal)
    event.setFailed("§d工作状态未达标！");
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    val RecipeList = ctrl.activeRecipeList;
    if(RecipeList[0].registryName != "thermal_electronic_component_assembly_machine_initialize")
    event.setFailed(false,"§d缺少能量输入！");
    if(map["Thermal"].asLong() == MaxThermal){
        ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_Input_10", RecipeModifierBuilder.create("modularmachinery:energy", "input", 60000000, 0, false).build());
        map["setsumber"] = 1;
        ctrl.customData = data;
    }
    if(map["Thermal"].asLong() < MaxThermal){
        ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_Input_10", RecipeModifierBuilder.create("modularmachinery:energy", "input", 6000000, 0, false).build());
        map["setsumber"] = 2;
        ctrl.customData = data;
    }
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    map["setsumber"] = isNull(map["setsumber"]) ? 0 as int : map["setsumber"].asInt();
    if(map["setsumber"].asInt() == 1){
        ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_output_10", RecipeModifierBuilder.create("modularmachinery:energy", "input", -60000000, 0, false).build());
    }
    if(map["setsumber"].asInt() == 2){
        ctrl.addModifier("Thermal_Electronic_Component_Assembly_Machine_Energy_output_10", RecipeModifierBuilder.create("modularmachinery:energy", "input", -6000000, 0, false).build());
    }
    map["Thermal"] = map["Thermal"].asLong() - (0.6 * MaxThermal);
    ctrl.customData = data;
})
.addRecipeTooltip(
    "§f能量消耗：6.0M FE/t",
    "§f总计：3.6G FE",
    "§f工作状态需要达到 §e100%！",
    "§c消耗状态值 §e60%。"
)
.build();


//初始化
MMEvents.onStructureFormed("YMG_Thermal_Electronic_Component_Assembly_Machine", function(event as MachineStructureFormedEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Thermal"] = setInitialize_Number as int;
    ctrl.customData = data;
});

//GUI
MMEvents.onControllerGUIRender("YMG_Thermal_Electronic_Component_Assembly_Machine", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var info as string[] = [];
    map["Thermal"] = isNull(map["Thermal"]) ? 0 as long : map["Thermal"].asLong();
    info += "§c>>";
    info += "§9工作状态：" + State(map["Thermal"].asLong(), MaxThermal) + " " + percentage(map["Thermal"].asLong(), MaxThermal, 2) + "%";
    info += "§c>>";
    //测试项
    // info += "§4测试数据输出";
    // info += "§d运行中配方";
    // val RecipeList = ctrl.activeRecipeList;
    // for Recipe in RecipeList {
    //     info += "§c" + Recipe.registryName;
    // }
    // info += "§c" + RecipeList[0].registryName;
    ctrl.customData = data;
    event.extraInfo = info;
});

//状态
function State(A as int, MaxThermal as int) as string{
    if(A < 0.6 * MaxThermal)
    return "§c未就绪";
    if(A >= 0.6 * MaxThermal && A < 0.8 * MaxThermal)
    return "§b良好";
    if(A >= 0.8 * MaxThermal && A < MaxThermal)
    return "§e优秀";
    if(A == MaxThermal)
    return "§e完美就绪";
}

//百分比
function percentage(A as long, B as long, C as int) as double {
    return (((A as double / B as double) * pow(10, C + 2)) as long) as double / pow(10, C);
}

//B次方
function pow(A as int, B as int) as long {
    var sum = 1 as long;
    for i in 0 to B {
        sum = sum * A;
    }
    return sum;
}