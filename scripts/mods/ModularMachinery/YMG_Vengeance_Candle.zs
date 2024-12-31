/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MMEvents;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.MachineController;

//复仇之烛
mods.modularmachinery.RecipeBuilder.newBuilder("Spirit_Stripped_Altar_Vengeance_Candle_2", "YMG_Vengeance_Candle", 1200)
.addPreTickHandler(function(event as RecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["posx"] = isNull(map["posx"]) ? 0 as int : map["posx"].asInt();
    map["posy"] = isNull(map["posy"]) ? 0 as int : map["posy"].asInt();
    map["posz"] = isNull(map["posz"]) ? 0 as int : map["posz"].asInt();
    val block = ctrl.world.getBlock(map["posx"].asInt(), map["posy"].asInt(), map["posz"].asInt());
    if(block.definition.id == "modularmachinery:ymg_spirit_stripped_altar_factory_controller"){
        val ctrlA = MachineController.getControllerAt(ctrl.world, map["posx"].asInt(), map["posy"].asInt(), map["posz"].asInt());
        val dataA = ctrlA.customData;
        val mapA = dataA.asMap();
        mapA["posxA"] = isNull(mapA["posxA"]) ? 0 as int : mapA["posxA"].asInt();
        mapA["posyA"] = isNull(mapA["posyA"]) ? 0 as int : mapA["posyA"].asInt();
        mapA["poszA"] = isNull(mapA["poszA"]) ? 0 as int : mapA["poszA"].asInt();
        if(mapA["posxA"].asInt() != ctrl.pos.x || mapA["posyA"].asInt() != ctrl.pos.y || mapA["poszA"].asInt() != ctrl.pos.z){
            map["isbundled"] = false;
            ctrl.customData = data;
        }
    }
    else{
        map["isbundled"] = false;
        ctrl.customData = data;
    }
})
.build();

//GUI
MMEvents.onControllerGUIRender("YMG_Vengeance_Candle", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var info as string[] = [];
    map["isbundled"] = isNull(map["isbundled"]) ? false as bool : map["isbundled"].asBool();
    info += "§c>>";
    if(map["isbundled"].asBool()){
        info += "§a已与灵魂剥离祭坛绑定！";
        info += "§9(X: §b" + map["posx"].asInt() + " §9Y: §b" + map["posy"].asInt() + " §9Z: §b" + map["posz"].asInt() + "§9)";
    }
    if(!map["isbundled"].asBool()){
        info += "§c未绑定！";
    }
    info += "§c>>";
    // info += data;
    ctrl.customData = data;
    event.extraInfo = info;
});