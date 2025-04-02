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
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.RecipeModifierBuilder;


//光伏发电
mods.modularmachinery.RecipeBuilder.newBuilder("Photovoltaic_core", "YMG_Aggregate_Solar_Energy", 1200)
.addEnergyPerTickOutput(24000)
.setAltitude(254, 254)
.addPreTickHandler(function(event as RecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var weighted = 1.0 as double;
    map["generation"] = isNull(map["generation"]) ? 20000 as long : Weighted_Weather(ctrl.world.isRaining(), (ctrl.world.provider.worldTime + 6000) % 24000) * 20000;
    ctrl.addModifier("Aggregate_Solar_Energy_Energy_Output", RecipeModifierBuilder.create("modularmachinery:energy", "output",  Weighted_Weather(ctrl.world.isRaining(), (ctrl.world.provider.worldTime + 6000) % 24000), 1, false).build());
    ctrl.customData = data;
})
.build();

//GUI
MMEvents.onControllerGUIRender("YMG_Aggregate_Solar_Energy", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var info as string[] = [];
    map["generation"] = isNull(map["generation"]) ? 20000 as long : map["generation"].asLong();
    info += "§a>>";
    info += "§d时间：" + TimeString(ctrl.world.provider.worldTime % 24000) + Weather(ctrl.world.isRaining());
    info += "§9基础发电功率：§e" + FormatNumber(map["generation"].asLong()) + " §6RF/T";
    info += "§a>>";
    //测试项
    // info += "X: " + ctrl.pos.x + " Y: " + ctrl.pos.y + " Z: " + ctrl.pos.z;
    // info += ctrl.world.getBlock( ctrl.pos.x, ctrl.pos.y, ctrl.pos.z).data;
    // info += "§4测试数据输出";
    // info += "§9存档时间：§e" + ctrl.world.provider.worldTime;
    // info += "§9世界时间：§e" + ctrl.world.provider.worldTime % 24000;
    // info += "§9时间影响：§e" + Percentage(Weighted_Weather(ctrl.world.isRaining(), (ctrl.world.provider.worldTime + 6000) % 24000));
    ctrl.customData = data;
    event.extraInfo = info;
});

//MC时
function TimeString(A as int) as string {
    val B = A;
    var str as string = "§6§l";
    str += " §6§l";
    if(B >= 0 && B < 450){
        str += "日出";
    }
    if(B >= 450 && B < 11616){
        str += "白天";
    }
    if(B >= 11616 && B < 13800){
        str += "黄昏";
    }
    if(B >= 13800 && B < 22200){
        str += "夜晚";
    }
    if(B >= 22200 && B <= 24000){
        str += "日出";
    }
    return str;
}

//天气
function Weather(A as bool) as string {
    var str = "  §d§l天气：§6§l";
    if(A)
    str += "雨天";
    if(!A)
    str += "晴天";
    return str;
}

//时间影响
function Weighted_Time(time as int) as double {
    if(time <= 12000)
    return time as double / 17000 + 0.72;
    return (24000 - time) as double / 17000 + 0.72;
}

//天气影响
function Weighted_Weather(weather as bool, time as int) as double {
    if(weather)
    return 8 as double / 11;
    return Weighted_Time(time);
}

//单位转换
function FormatNumber(value as long) as string {
    if (value < 1000) {
        return "" + value;
    } else if (value < 1000000) {
        return "" + (value as float / 1000) + "K";
    } else if (value < 1000000000) {
        return "" + ((value / 1000) as float / 1000) + "M";
    } else if (value < 1000000000000) {
        return "" + ((value / 1000000) as float / 1000) + "G";
    } else if (value < 1000000000000000) {
        return "" + ((value / 1000000000) as float / 1000) + "T";
    } else if (value < 1000000000000000000) {
        return "" + ((value / 1000000000000) as float / 1000) + "P";
    } else {
        return "" + ((value / 1000000000000000) as float / 1000) + "E";
    }
}

//小数点后三位
function Percentage(A as double) as double {
    return ((A * 1000.0) as int) as double / 1000.0;
}

