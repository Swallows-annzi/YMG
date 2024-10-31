/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.data.IData;

import mods.zenutils.UUID;

import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.FactoryRecipeTickEvent;
import mods.additionalapi.WorldData;

//线程设置
MachineModifier.setMaxThreads("YMG_Astral_Coordinate_Processing_Matrix", 0);

val Energy_Core_String = "#A382FF§l矩阵能源中枢§r";
MachineModifier.addCoreThread("YMG_Astral_Coordinate_Processing_Matrix", FactoryRecipeThread.createCoreThread(Energy_Core_String));
//输出姬
val Processing_Core_String = "#A382FF§l位标处理中枢§r";
MachineModifier.addCoreThread("YMG_Astral_Coordinate_Processing_Matrix", FactoryRecipeThread.createCoreThread(Processing_Core_String));

mods.modularmachinery.RecipeBuilder.newBuilder("processing_core", "YMG_Astral_Coordinate_Processing_Matrix", 1200)
.setThreadName(Energy_Core_String)
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val SolarSystemData as IData = WorldData.getArchiveData("PlanetsProgressData", ctrl.ownerUUID);
    map["SolarSystemData"] = SolarSystemData;
    ctrl.customData = data;
})
.build();


//GUI
MMEvents.onControllerGUIRender("YMG_Astral_Coordinate_Processing_Matrix", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var info as string[] = [];
    map["SolarSystemData"] = isNull(map["SolarSystemData"]) ? null as IData : map["SolarSystemData"];
    info += "§b//////////////////////////////////////////////";
    info += "" + ctrl.ownerUUID;
    info += "" + ctrl.ownerName;
    info += "" + ctrl.world.getPlayerByUUID(UUID.fromString(ctrl.ownerUUID)).name;
    info += "§b//////////////////////////////////////////////";
    // info += data;
    event.extraInfo = info;
});