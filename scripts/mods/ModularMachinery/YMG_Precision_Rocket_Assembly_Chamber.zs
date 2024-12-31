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
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.MMEvents;


mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Precision_Rocket_Assembly_Chamber_Assemble", "YMG_Precision_Rocket_Assembly_Chamber", 12000)
.addEnergyPerTickInput(1000000)
.addItemInput(<contenttweaker:assembling_tool_1>)
.setNBTChecker(function(ctrl as IMachineController, item as IItemStack) {
    val data = ctrl.customData;
    val map = data.asMap();
    val nbt = item.tag.asMap();
    return true;
})
.addItemInput(<contenttweaker:assembling_tool_2>)
.addItemInput(<contenttweaker:assembling_tool_3>)
.build();

//GUI
MMEvents.onControllerGUIRender("YMG_Precision_Rocket_Assembly_Chamber", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var info as string[] = [];
    info += "§c>>";
    info += "§c>>";
    info += data;
    event.extraInfo = info;
});