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
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.MachineController;
import mods.modularmachinery.FactoryRecipeTickEvent;
import mods.modularmachinery.RecipeCheckEvent;


//线程设置
MachineModifier.setMaxThreads("YMG_Spirit_Stripped_Altar", 0);

//坐标读取
val Pos_String = "§e§l坐标读取";
MachineModifier.addCoreThread("YMG_Spirit_Stripped_Altar", FactoryRecipeThread.createCoreThread(Pos_String));

//复仇之烛
val Vengeance_Candle_String = "§c§l复仇之烛";
MachineModifier.addCoreThread("YMG_Spirit_Stripped_Altar", FactoryRecipeThread.createCoreThread(Vengeance_Candle_String));

//配方运行
val Spirit_Stripped_String = "§c§l灵魂剥离";
MachineModifier.addCoreThread("YMG_Spirit_Stripped_Altar", FactoryRecipeThread.createCoreThread(Spirit_Stripped_String));

//绑定复仇之烛
mods.modularmachinery.RecipeBuilder.newBuilder("Spirit_Stripped_Altar_Vengeance_Candle_1", "YMG_Spirit_Stripped_Altar", 1200)
.setThreadName(Vengeance_Candle_String)
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val ctrlA = MachineController.getControllerAt(ctrl.world, map["posxA"].asInt(), map["posyA"].asInt(), map["poszA"].asInt());
    if(isNull(ctrlA)){
        map["VengeanceCandleA"] = false;
        map["use"] = false;
        ctrl.customData = data;
    }
    else{
        val block = ctrl.world.getBlock(map["posxA"].asInt(), map["posyA"].asInt(), map["poszA"].asInt());
        if (ctrlA.blockState.block.definition.id == "modularmachinery:ymg_vengeance_candle_controller"){
            val dataA = ctrlA.customData;
            val mapA = dataA.asMap();
            mapA["posx"] = isNull(mapA["posx"]) ? 0 as int : mapA["posx"].asInt();
            mapA["posy"] = isNull(mapA["posy"]) ? 0 as int : mapA["posy"].asInt();
            mapA["posz"] = isNull(mapA["posz"]) ? 0 as int : mapA["posz"].asInt();
            mapA["isbundled"] = isNull(mapA["isbundled"]) ? false as bool : mapA["isbundled"].asBool();
            if(mapA["isbundled"].asBool() && (mapA["posx"].asInt() != ctrl.pos.x || mapA["posy"].asInt() != ctrl.pos.y || mapA["posz"].asInt() != ctrl.pos.z)){
                map["VengeanceCandleA"] = true;
                map["use"] = false;
                ctrl.customData = data;
                event.setFailed(true, "§c该复仇之烛已被绑定");
            }
            if(mapA["isbundled"].asBool() && mapA["posx"].asInt() == ctrl.pos.x && mapA["posy"].asInt() == ctrl.pos.y && mapA["posz"].asInt() == ctrl.pos.z){
                map["VengeanceCandleA"] = true;
                map["use"] = true;
                ctrl.customData = data;
                event.setFailed(true, "§a已与复仇之烛绑定");
            }
            if(!mapA["isbundled"].asBool()){
                map["VengeanceCandleA"] = true;
                map["use"] = true;
                mapA["posx"] = ctrl.pos.x;
                mapA["posy"] = ctrl.pos.y;
                mapA["posz"] = ctrl.pos.z;
                mapA["isbundled"] = true;
                ctrl.customData = data;
            }
            ctrlA.customData = dataA;
        }
        else{
            map["VengeanceCandleA"] = false;
            map["use"] = false;
            ctrl.customData = data;
        }
    }
})
.build();

//读取坐标卡
mods.modularmachinery.RecipeBuilder.newBuilder("Spirit_Stripped_Altar_DataInput", "YMG_Spirit_Stripped_Altar", 20)
.setThreadName(Pos_String)
.addItemInput(<contenttweaker:commondatamodelpos>)
.setNBTChecker(function(ctrl as IMachineController, item as IItemStack) {
    val data = ctrl.customData;
    val map = data.asMap();
    val nbt = item.tag.asMap();
    map["Iposx"] = nbt.x;
    map["Iposy"] = nbt.y;
    map["Iposz"] = nbt.z;
    ctrl.customData = data;
    if(nbt.state == "true")
    return true;
    else
    return false;
})
.setPreViewNBT({
    ench: [
        {
            lvl: 100 as short, id: 100 as short
        }
    ],
    display: {
        Lore: [
            "§c绑定方块后方可使用",
        ],
    }
})
.addItemOutput(<contenttweaker:commondatamodelpos>.withTag({display: {Lore: ["§9x坐标：§enull", "§9y坐标：§enull", "§9z坐标：§enull"]}, state: "false"}))
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Iposx"] = isNull(map["Iposx"]) ? 0 as int : map["Iposx"].asInt();
    map["Iposy"] = isNull(map["Iposy"]) ? 0 as int : map["Iposy"].asInt();
    map["Iposz"] = isNull(map["Iposz"]) ? 0 as int : map["Iposz"].asInt();
    map["posxA"] = map["Iposx"].asInt();
    map["posyA"] = map["Iposy"].asInt();
    map["poszA"] = map["Iposz"].asInt();
    ctrl.customData = data;
})
.build();

//生物灵魂
mods.modularmachinery.RecipeBuilder.newBuilder("Spirit_1", "YMG_Spirit_Stripped_Altar", 600)
.setThreadName(Spirit_Stripped_String)
.addLifeEssenceInput(2000, true)
.addItemInput(<minecraft:spawn_egg> * 4)
.addItemOutput(<draconicevolution:mob_soul>)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["use"] = isNull(map["use"]) ? false as bool : map["use"].asBool();
    if(!map["use"].asBool())
    event.setFailed("§c未与复仇之烛绑定！");
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["use"] = isNull(map["use"]) ? false as bool : map["use"].asBool();
    if(!map["use"].asBool())
    event.preventProgressing("§c未与复仇之烛绑定！");
})
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Spirit_2", "YMG_Spirit_Stripped_Altar", 1200)
.setThreadName(Spirit_Stripped_String)
.addLifeEssenceInput(2000, true)
.addItemInputs([
    <ore:compressed1xSoulsand> * 64
])
.addItemOutput(<draconicevolution:mob_soul>)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["use"] = isNull(map["use"]) ? false as bool : map["use"].asBool();
    if(!map["use"].asBool())
    event.setFailed("§c未与复仇之烛绑定！");
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["use"] = isNull(map["use"]) ? false as bool : map["use"].asBool();
    if(!map["use"].asBool())
    event.preventProgressing("§c未与复仇之烛绑定！");
})
.build();

//GUI
MMEvents.onControllerGUIRender("YMG_Spirit_Stripped_Altar", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var info as string[] = [];
    map["VengeanceCandleA"] = isNull(map["VengeanceCandleA"]) ? false as bool : map["VengeanceCandleA"].asBool();
    info += "§c>>";
    if(map["VengeanceCandleA"].asBool()){
        info += "§a已找到复仇之烛控制器！";
        info += "§9(X: §b" + map["posxA"].asInt() + " §9Y: §b" + map["posyA"].asInt() + " §9Z: §b" + map["poszA"].asInt() + "§9)";
    }
    if(!map["VengeanceCandleA"].asBool()){
        info += "§c未找到复仇之烛控制器！";
    }
    info += "§c>>";
    // info += data;
    ctrl.customData = data;
    event.extraInfo = info;
});
