/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.FactoryRecipeTickEvent;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.FactoryRecipeStartEvent;
import mods.modularmachinery.RecipeAdapterBuilder;


//线程设置
MachineModifier.setMaxThreads("YMG_Blazing_Furnace", 0);

//运行核心
val Functioning_String = "§e§l运行核心";
MachineModifier.addCoreThread("YMG_Blazing_Furnace", FactoryRecipeThread.createCoreThread(Functioning_String));

//激光核心
val Furnace_Core_String = "§c§l熔炼核心";
MachineModifier.addCoreThread("YMG_Blazing_Furnace", FactoryRecipeThread.createCoreThread(Furnace_Core_String));

//运行核心
mods.modularmachinery.RecipeBuilder.newBuilder("Blazing_Furnace_functioning_core", "YMG_Blazing_Furnace", 1)
.setThreadName(Functioning_String)
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    if(!ctrl.hasMachineUpgrade("tungstencrystal")){
        map["crystal"] = 0;
    }
    if(ctrl.hasMachineUpgrade("tungstencrystal")){
        map["crystal"] = 1;
    }
    if(!(ctrl.hasMachineUpgrade("iridiumringcoil") || ctrl.hasMachineUpgrade("tungstenringcoil"))){
        map["coil"] = 0;
    }
    if(ctrl.hasMachineUpgrade("iridiumringcoil")){
        map["coil"] = 1;
    }
    if(ctrl.hasMachineUpgrade("tungstenringcoil")){
        map["coil"] = 2;
    }
    ctrl.customData = data;
})
.build();

//钨锭-炽焰
mods.modularmachinery.RecipeBuilder.newBuilder("tungsteningot_1", "YMG_Blazing_Furnace", 900)
.setThreadName(Furnace_Core_String)
.addFluidInput(<liquid:pyrotheum> * 250)
.addItemInput(<contenttweaker:tungstendust>)
.addItemOutput(<contenttweaker:tungsteningot>)
.addFactoryStartHandler(function(event as FactoryRecipeStartEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["crystal"] = isNull(map["crystal"]) ? 0 as int : map["crystal"].asInt();
    map["state"] = 1;
    if(map["crystal"].asInt() == 1){
        ctrl.addModifier("tungstencrysta_fluid", RecipeModifierBuilder.create("modularmachinery:fluid", "input", 0.5, 1, false).build());
    }
    ctrl.customData = data;
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["crystal"] = isNull(map["crystal"]) ? 0 as int : map["crystal"].asInt();
    if(map["crystal"].asInt() == 1){
        ctrl.addModifier("tungstencrysta_tick", RecipeModifierBuilder.create("modularmachinery:duration", "input", 1.5, 1, false).build());
    }
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["state"] = 0;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "§f若有钨结晶簇核：",
    "§f加工时长 §ex1.5",
    "§f流体减免 §ex0.5"
)
.build();

//钛锭-炽焰
mods.modularmachinery.RecipeBuilder.newBuilder("titanium_ingot_1", "YMG_Blazing_Furnace", 400)
.setThreadName(Furnace_Core_String)
.addFluidInput(<liquid:pyrotheum> * 250)
.addItemInput(<mets:titanium_dust>)
.addItemOutput(<mets:titanium_ingot>)
.addFactoryStartHandler(function(event as FactoryRecipeStartEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["state"] = 1;
    ctrl.customData = data;
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["state"] = 0;
    ctrl.customData = data;
})
.build();

//铌钛合金锭-炽焰
mods.modularmachinery.RecipeBuilder.newBuilder("niobium_titanium_ingot_1", "YMG_Blazing_Furnace", 600)
.setThreadName(Furnace_Core_String)
.addFluidInput(<liquid:pyrotheum> * 325)
.addItemInput(<mets:niobium_titanium_dust>)
.addItemOutput(<mets:niobium_titanium_ingot>)
.addFactoryStartHandler(function(event as FactoryRecipeStartEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["state"] = 1;
    ctrl.customData = data;
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["state"] = 0;
    ctrl.customData = data;
})
.build();

//钨锭-电力
mods.modularmachinery.RecipeBuilder.newBuilder("tungsteningot_2", "YMG_Blazing_Furnace", 5)
.setThreadName(Furnace_Core_String)
.addEnergyPerTickInput(1000)
.addItemInput(<contenttweaker:tungstendust>)
.addItemOutput(<contenttweaker:tungsteningot>)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["coil"] = isNull(map["coil"]) ? 0 as int : map["coil"].asInt();
    if(map["coil"].asInt() == 0) {
        event.setFailed("§c缺少加热线圈");
    }
    if(map["crystal"].asInt() == 0) {
        event.setFailed("§c缺少钨结晶核");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300 as int : map["thermal"].asInt();
    map["coil"] = isNull(map["coil"]) ? 0 as int : map["coil"].asInt();
    if(map["coil"].asInt() == 0 && map["thermal"].asInt() < 3422){
        map["state"] = 2;
        map["thermal"] = 300;
        ctrl.customData = data;
        event.setFailed(true, "§c缺少加热线圈");
    }
    if(map["crystal"].asInt() == 0 && map["thermal"].asInt() < 3422){
        map["state"] = 2;
        map["thermal"] = 300;
        ctrl.customData = data;
        event.setFailed(true, "§c缺少钨结晶核");
    }
    if(map["coil"].asInt() == 1){
        ctrl.addModifier("iridiumringcoil_tick", RecipeModifierBuilder.create("modularmachinery:duration", "input", 1.2, 1, false).build());
        ctrl.addModifier("iridiumringcoil_energy", RecipeModifierBuilder.create("modularmachinery:energy", "input", 5.0 * 5.0, 1, false).build());
    }
    if(map["coil"].asInt() == 2){
        ctrl.addModifier("tungstenringcoil_tick", RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.9, 1, false).build());
        ctrl.addModifier("tungstenringcoil_energy", RecipeModifierBuilder.create("modularmachinery:energy", "input", 4.5 * 15.0, 1, false).build());
    }
    if(map["coil"].asInt() == 1 && map["thermal"].asInt() < 3422){
        map["state"] = 3;
        map["thermal"] = map["thermal"].asInt() + 5;
        ctrl.customData = data;
    }
    if(map["coil"].asInt() == 2 && map["thermal"].asInt() < 3422){
        map["state"] = 3;
        map["thermal"] = map["thermal"].asInt() + 15;
        ctrl.customData = data;
    }
    if(map["coil"].asInt() == 0 && map["thermal"].asInt() < 3422) {
        map["state"] = 2;
        ctrl.customData = data;
        event.preventProgressing("§c缺少加热线圈");
    }
    if(map["thermal"].asInt() < 3422) {
        event.preventProgressing("§c物料温度不足！无法融化！");
    }
    if(map["thermal"].asInt() >= 3422) {
        map["state"] = 4;
        ctrl.customData = data;
        ctrl.addModifier("energy_zero", RecipeModifierBuilder.create("modularmachinery:energy", "input", 0.0, 1, false).build());
    }
    ctrl.customData = data;
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = 300;
    map["state"] = 0;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "§f需要钨结晶簇核与热量传导线圈！",
    "§f同时线圈将影响加工效率与能耗",
    "§f需要热量传导线圈等级达到§aLv 1"
)
.build();

//钛锭-电力
mods.modularmachinery.RecipeBuilder.newBuilder("titanium_ingot_2", "YMG_Blazing_Furnace", 5)
.setThreadName(Furnace_Core_String)
.addEnergyPerTickInput(1000)
.addItemInput(<mets:titanium_dust>)
.addItemOutput(<mets:titanium_ingot>)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["coil"] = isNull(map["coil"]) ? 0 as int : map["coil"].asInt();
    if(map["coil"].asInt() == 0) {
        event.setFailed("§c缺少加热线圈");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300 as int : map["thermal"].asInt();
    map["coil"] = isNull(map["coil"]) ? 0 as int : map["coil"].asInt();
    if(map["coil"].asInt() == 0 && map["thermal"].asInt() < 1668){
        map["state"] = 2;
        map["thermal"] = 300;
        ctrl.customData = data;
        event.setFailed(true, "§c缺少加热线圈");
    }
    if(map["coil"].asInt() == 1){
        ctrl.addModifier("iridiumringcoil_tick", RecipeModifierBuilder.create("modularmachinery:duration", "input", 1.2, 1, false).build());
        ctrl.addModifier("iridiumringcoil_energy", RecipeModifierBuilder.create("modularmachinery:energy", "input", 5.0 * 5.0, 1, false).build());
    }
    if(map["coil"].asInt() == 2){
        ctrl.addModifier("tungstenringcoil_tick", RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.9, 1, false).build());
        ctrl.addModifier("tungstenringcoil_energy", RecipeModifierBuilder.create("modularmachinery:energy", "input", 4.5 * 15.0, 1, false).build());
    }
    if(map["coil"].asInt() == 1 && map["thermal"].asInt() < 1668){
        map["state"] = 3;
        map["thermal"] = map["thermal"].asInt() + 5;
        ctrl.customData = data;
    }
    if(map["coil"].asInt() == 2 && map["thermal"].asInt() < 1668){
        map["state"] = 3;
        map["thermal"] = map["thermal"].asInt() + 15;
        ctrl.customData = data;
    }
    if(map["coil"].asInt() == 0 && map["thermal"].asInt() < 1668) {
        map["state"] = 2;
        ctrl.customData = data;
        event.preventProgressing("§c缺少加热线圈");
    }
    if(map["thermal"].asInt() < 1668) {
        event.preventProgressing("§c物料温度不足！无法融化！");
    }
    if(map["thermal"].asInt() >= 1668) {
        map["state"] = 4;
        ctrl.customData = data;
        ctrl.addModifier("energy_zero", RecipeModifierBuilder.create("modularmachinery:energy", "input", 0.0, 1, false).build());
    }
    ctrl.customData = data;
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = 300;
    map["state"] = 0;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "§f需要热量传导线圈！",
    "§f同时线圈将影响加工效率与能耗",
    "§f需要热量传导线圈等级达到§aLv 1"
)
.build();

//铌钛合金锭-电力
mods.modularmachinery.RecipeBuilder.newBuilder("niobium_titanium_ingot_2", "YMG_Blazing_Furnace", 5)
.setThreadName(Furnace_Core_String)
.addEnergyPerTickInput(1000)
.addItemInput(<mets:niobium_titanium_dust>)
.addItemOutput(<mets:niobium_titanium_ingot>)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["coil"] = isNull(map["coil"]) ? 0 as int : map["coil"].asInt();
    if(map["coil"].asInt() == 0) {
        event.setFailed("§c缺少加热线圈");
    }
    if(map["coil"].asInt() < 2) {
        event.setFailed("§c加热线圈等级过低");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300 as int : map["thermal"].asInt();
    map["coil"] = isNull(map["coil"]) ? 0 as int : map["coil"].asInt();
    if(map["coil"].asInt() == 0 && map["thermal"].asInt() < 1455){
        map["state"] = 2;
        map["thermal"] = 300;
        ctrl.customData = data;
        event.setFailed(true, "§c缺少加热线圈");
    }
    if(map["coil"].asInt() < 2 && map["thermal"].asInt() < 1455){
        map["state"] = 2;
        map["thermal"] = 300;
        ctrl.customData = data;
        event.setFailed(true, "§c加热线圈等级过低");
    }
    if(map["coil"].asInt() == 2){
        ctrl.addModifier("tungstenringcoil_tick", RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.9, 1, false).build());
        ctrl.addModifier("tungstenringcoil_energy", RecipeModifierBuilder.create("modularmachinery:energy", "input", 4.5 * 15.0, 1, false).build());
    }
    if(map["coil"].asInt() == 2 && map["thermal"].asInt() < 1455){
        map["state"] = 3;
        map["thermal"] = map["thermal"].asInt() + 15;
        ctrl.customData = data;
    }
    if(map["coil"].asInt() == 0 && map["thermal"].asInt() < 1455) {
        map["state"] = 2;
        ctrl.customData = data;
        event.preventProgressing("§c缺少加热线圈");
    }
    if(map["thermal"].asInt() < 1455) {
        event.preventProgressing("§c物料温度不足！无法融化！");
    }
    if(map["thermal"].asInt() >= 1455) {
        map["state"] = 4;
        ctrl.customData = data;
        ctrl.addModifier("energy_zero", RecipeModifierBuilder.create("modularmachinery:energy", "input", 0.0, 1, false).build());
    }
    ctrl.customData = data;
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = 300;
    map["state"] = 0;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "§f需要热量传导线圈！",
    "§f同时线圈将影响加工效率与能耗",
    "§f需要热量传导线圈等级达到§bLv 2"
)
.build();

//熔炉配方-炽焰
RecipeAdapterBuilder.create("YMG_Blazing_Furnace", "minecraft:furnace")
.addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input",  -110, 0, false).build())
.addModifier(RecipeModifierBuilder.create("modularmachinery:energy", "input",  0, 1, false).build())
.addFluidInput(<liquid:pyrotheum> * 2)
.setThreadName(Furnace_Core_String)
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["state"] = 1;
    ctrl.customData = data;
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["state"] = 0;
    ctrl.customData = data;
})
.build();

//熔炉配方-电力
RecipeAdapterBuilder.create("YMG_Blazing_Furnace", "minecraft:furnace")
.addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input",  -110, 0, false).build())
.addModifier(RecipeModifierBuilder.create("modularmachinery:energy", "input",  1980, 0, false).build())
.setThreadName(Furnace_Core_String)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["coil"] = isNull(map["coil"]) ? 0 as int : map["coil"].asInt();
    if(map["coil"].asInt() == 0) {
        event.setFailed("§c缺少加热线圈");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300 as int : map["thermal"].asInt();
    map["coil"] = isNull(map["coil"]) ? 0 as int : map["coil"].asInt();
    map["state"] = isNull(map["state"]) ? 0 as int : map["state"].asInt();
    map["state"] = 1;
    if(map["coil"].asInt() == 0){
        map["state"] = 2;
        map["thermal"] = 300;
        ctrl.customData = data;
        event.setFailed(true, "§c缺少加热线圈");
    }
    if(map["coil"].asInt() == 2){
        ctrl.addModifier("Blazing_Furnace_furnace_tick", RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.5, 1, false).build());
        ctrl.addModifier("Blazing_Furnace_furnace_energy", RecipeModifierBuilder.create("modularmachinery:energy", "input", 2.0, 1, false).build());
    }
    ctrl.customData = data;
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["state"] = 0;
    ctrl.customData = data;
})
.build();


//GUI
MMEvents.onControllerGUIRender("YMG_Blazing_Furnace", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val isWorking = ctrl.isWorking;
    val map = data.asMap();
    var info as string[] = [];
    map["thermal"] = isNull(map["thermal"]) ? 300 as int : map["thermal"].asInt();
    map["crystal"] = isNull(map["crystal"]) ? 0 as int : map["crystal"].asInt();
    map["coil"] = isNull(map["coil"]) ? 0 as int : map["coil"].asInt();
    map["state"] = isNull(map["state"]) ? 0 as int : map["state"].asInt();
    info += "§c//////////////////////////////////////////////";
    if(map["crystal"].asInt() == 0)
    info += "§9结晶簇核：§c当前无结晶簇核";
    if(map["crystal"].asInt() == 1)
    info += "§9结晶簇核：§e钨结晶簇核";
    if(map["coil"].asInt() == 0)
    info += "§9传导线圈：§c当前无热量传导线圈";
    if(map["coil"].asInt() == 1){
        info += "§9传导线圈：§e铱制热量传导线圈";
        info += "§9线圈等级：§aLv 1";
    }
    if(map["coil"].asInt() == 2){
        info += "§9传导线圈：§e钨制热量传导线圈";
        info += "§9线圈等级：§bLv 2";
    }
    if(map["state"].asInt() == 0)
    info += "§6等待输入中....";
    if(map["state"].asInt() == 1)
    info += "§6熔炼配方运行中";
    if(map["state"].asInt() == 2)
    info += "§c异常！请检查升级总线！";
    if(map["state"].asInt() == 3)
    info += "§9物料温度：§e" + map["thermal"].asInt() + " §6K";
    if(map["state"].asInt() == 4)
    info += "§6金属冷却中....";
    //测试项
    // info += "§4测试数据输出";
    // info += "§9状态码：§e" + map["state"].asInt();
    info += "§c//////////////////////////////////////////////";
    ctrl.customData = data;
    event.extraInfo = info;
});
