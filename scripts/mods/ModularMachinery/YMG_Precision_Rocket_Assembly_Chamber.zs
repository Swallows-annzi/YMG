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


//卫星运载火箭
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Precision_Rocket_Assembly_Chamber_Assemble", "YMG_Precision_Rocket_Assembly_Chamber", 12000)
.addEnergyPerTickInput(200000000)
.addItemInputs([
    <contenttweaker:nanometre> * 64,
    <extendedcrafting:material:36> * 64,
    <tconevo:metal:3> * 16,
    <contenttweaker:vacuum_vessels> * 16,
    <contenttweaker:commondatamodel>,
    <contenttweaker:jump_stand>
])
.addItemInput(<contenttweaker:sputnik>)
.setNBTChecker(function(ctrl as IMachineController, item as IItemStack) {
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mode"] = isNull(map["Mode"]) ? "null" as string : map["Mode"].asString();
    val nbt = item.tag.asMap();
    if(isNull(nbt.Mode)){
        return false;
    }
    else {
        map["Mode"] = nbt.Mode as string;
        ctrl.customData = data;
        return true;
    }
})
.addItemOutput(<contenttweaker:dsqmaterial95>)
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mode"] = isNull(map["Mode"]) ? "null" as string : map["Mode"].asString();
    var str = "null";
    if(map["Mode"].asString() == "ORE")
        str = "采矿卫星";
    if(map["Mode"].asString() == "PV")
        str = "光伏卫星";
    if(map["Mode"].asString() == "GAS")
        str = "微尘收集卫星";
    if(map["Mode"].asString() == "ASSEMBLY")
        str = "装配卫星";
    return <contenttweaker:dsqmaterial95>.withTag({display: {Lore: ["§9卫星类型：§e" + str + "§r"]}, Mode: map["Mode"].asString()});
})
.build();

//GUI
// MMEvents.onControllerGUIRender("YMG_Precision_Rocket_Assembly_Chamber", function(event as ControllerGUIRenderEvent) {
//     val ctrl = event.controller;
//     val data = ctrl.customData;
//     val map = data.asMap();
//     map["Mode"] = isNull(map["Mode"]) ? "null" as string : map["Mode"].asString();
//     var info as string[] = [];
//     info += "§c>>";
//     info += data;
//     info += "§c>>";
//     event.extraInfo = info;
// });
