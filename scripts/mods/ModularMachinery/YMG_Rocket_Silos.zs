/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.zenutils.UUID;

import crafttweaker.item.IItemStack;

import mods.modularmachinery.IMachineController;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.SmartInterfaceUpdateEvent;
import mods.modularmachinery.SmartInterfaceType;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.FactoryRecipeTickEvent;


//燃料上限
val MaxFuel = 100000000 as long;
//燃料值设置
val FuelHydrazine = 10000 as long;
val FuelRocketFuel = 1000 as long;

//汉化
val Satellite_String as string[string] = {
    "null"              :   "§c未执行发射程序",
    "ORE"               :   "采矿卫星",
    "PV"                :   "光伏卫星",
    "GAS"               :   "微尘收集卫星",
    "ASSEMBLY"          :   "装配卫星"
};
val TargetName_String as string[string] = {
    "null"              :   "§c未执行发射程序",
    "Sun"               :   "太阳",
    "Mercury"           :   "水星",
    "Venus"             :   "金星",
    "Earth"             :   "地球",
    "Moon"              :   "月球",
    "Mars"              :   "火星",
    "Phobos"            :   "火卫一",
    "Deimos"            :   "火卫二",
    "AsteroidBelt"      :   "小行星带",
    "Jupiter"           :   "木星",
    "Io"                :   "木卫一",
    "Europa"            :   "木卫二",
    "Ganymede"          :   "木卫三",
    "Callisto"          :   "木卫四",
    "Amalthea"          :   "木卫五",
    "Himalia"           :   "木卫六",
    "Saturn"            :   "土星",
    "Mimas"             :   "土卫一",
    "Enceladus"         :   "土卫二",
    "Tethys"            :   "土卫三",
    "Dione"             :   "土卫四",
    "Rhea"              :   "土卫五",
    "Titan"             :   "土卫六",
    "Hyperion"          :   "土卫七",
    "Iapetus"           :   "土卫八",
    "Phoebe"            :   "土卫九",
    "Janus"             :   "土卫十",
    "Uranus"            :   "天王星",
    "Ariel"             :   "天卫一",
    "Umbriel"           :   "天卫二",
    "Tatania"           :   "天卫三",
    "Oberon"            :   "天卫四",
    "Miranda"           :   "天卫五",
    "Neptune"           :   "海王星",
    "Triton"            :   "海卫一",
    "Nereid"            :   "海卫二",
    "Naiad"             :   "海卫三",
    "Thalassa"          :   "海卫四",
    "Despina"           :   "海卫五",
    "KuiperBelt"        :   "柯伊伯带"
};

val Fuel_String as long[string] = {
    "null"              :   0,
    "Sun"               :   60000000,
    "Mercury"           :   1500000,
    "Venus"             :   800000,
    "Earth"             :   50000,
    "Moon"              :   200000,
    "Mars"              :   500000,
    "Phobos"            :   510000,
    "Deimos"            :   520000,
    "AsteroidBelt"      :   800000,
    "Jupiter"           :   2000000,
    "Io"                :   2010000,
    "Europa"            :   2020000,
    "Ganymede"          :   2030000,
    "Callisto"          :   2040000,
    "Amalthea"          :   2050000,
    "Himalia"           :   2060000,
    "Saturn"            :   5000000,
    "Mimas"             :   5010000,
    "Enceladus"         :   5020000,
    "Tethys"            :   5030000,
    "Dione"             :   5040000,
    "Rhea"              :   5050000,
    "Titan"             :   5060000,
    "Hyperion"          :   5070000,
    "Iapetus"           :   5080000,
    "Phoebe"            :   5090000,
    "Janus"             :   5100000,
    "Uranus"            :   12000000,
    "Ariel"             :   12010000,
    "Umbriel"           :   12020000,
    "Tatania"           :   12030000,
    "Oberon"            :   12040000,
    "Miranda"           :   12050000,
    "Neptune"           :   18000000,
    "Triton"            :   18010000,
    "Nereid"            :   18020000,
    "Naiad"             :   18030000,
    "Thalassa"          :   18040000,
    "Despina"           :   18050000,
    "KuiperBelt"        :   30000000
};

//线程设置
MachineModifier.setMaxThreads("YMG_Rocket_Silos", 0);

//燃料输入姬
val Fuel_Input_String = "§d§l燃料输入姬";
MachineModifier.addCoreThread("YMG_Rocket_Silos", FactoryRecipeThread.createCoreThread(Fuel_Input_String));

//火箭发射控制终端
val Rocket_Launch_String = "§b§l火箭发射控制终端";
MachineModifier.addCoreThread("YMG_Rocket_Silos", FactoryRecipeThread.createCoreThread(Rocket_Launch_String));

//数据端口
MachineModifier.addSmartInterfaceType("YMG_Rocket_Silos",
    SmartInterfaceType.create("Mode", 0)
    .setHeaderInfo("§d发射控制器")
    .setValueInfo("§9模式：§e%.0f")
    .setFooterInfo("§b0：待命 1：火箭发射")
    .setNotEqualMessage("§c数据异常！")
);

//数据接口数据写入控制器
MMEvents.onMachinePostTick("YMG_Rocket_Silos", function(event as SmartInterfaceUpdateEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val nullable = ctrl.getSmartInterfaceData("Mode");
    var Mode = isNull(nullable) ? 0 as int : nullable.value;
    if (Mode != 0 && Mode != 1) {
        nullable.value = 0;
    }
    map["Mode"] = Mode;
    ctrl.customData = data;
});

//燃油输入
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Rocket_Silos_Fuel_Input_1", "YMG_Rocket_Silos", 100)
.setThreadName(Fuel_Input_String)
.addFluidInput(<liquid:rocket_fuel> * 1000)
.addEnergyPerTickInput(10000000)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Fuel"] = isNull(map["Fuel"]) ? 0 as long : map["Fuel"].asLong();
    if(map["Fuel"].asLong() + FuelRocketFuel > MaxFuel){
        event.setFailed("容量不足！");
    }
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Fuel"] = isNull(map["Fuel"]) ? 0 as long : map["Fuel"].asLong();
    map["Fuel"] = map["Fuel"].asLong() + FuelRocketFuel;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "每1000mb提供" + FuelRocketFuel + "单位的燃料。"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Rocket_Silos_Fuel_Input_2", "YMG_Rocket_Silos", 100)
.setThreadName(Fuel_Input_String)
.addFluidInput(<liquid:hydrazine> * 1000)
.addEnergyPerTickInput(10000000)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Fuel"] = isNull(map["Fuel"]) ? 0 as long : map["Fuel"].asLong();
    if(map["Fuel"].asLong() + FuelHydrazine > MaxFuel){
        event.setFailed("容量不足！");
    }
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Fuel"] = isNull(map["Fuel"]) ? 0 as long : map["Fuel"].asLong();
    map["Fuel"] = map["Fuel"].asLong() + FuelHydrazine;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "每1000mb提供" + FuelHydrazine + "单位的燃料。"
)
.build();

//火箭发射
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Rocket_Silos_Rocket_Launch", "YMG_Rocket_Silos", 6000)
.setThreadName(Rocket_Launch_String)
.addEnergyPerTickInput(200000000)
.addItemInput(<contenttweaker:galaxycoordinatecard>)
.setNBTChecker(function(ctrl as IMachineController, item as IItemStack) {
    val data = ctrl.customData;
    val map = data.asMap();
    map["FuelConsumption"] = isNull(map["FuelConsumption"]) ? 0 as long : map["FuelConsumption"].asLong();
    map["TargetName"] = isNull(map["TargetName"]) ? "null" as string : map["TargetName"].asString();
    map["UUID"] = isNull(map["UUID"]) ? "null" as string : map["UUID"].asString();
    val nbt = item.tag.asMap();
    if(nbt.state == "false" || isNull(nbt.state)){
        return false;
    }
    else {
        map["FuelConsumption"] = Fuel_String[nbt.name as string] as long;
        map["UUID"] = nbt.playeruuid as string;
        map["TargetName"] = nbt.name as string;
        ctrl.customData = data;
        return true;
    }
})
.addItemInput(<contenttweaker:dsqmaterial95>)
.setNBTChecker(function(ctrl as IMachineController, item as IItemStack) {
    val data = ctrl.customData;
    val map = data.asMap();
    map["Satellite"] = isNull(map["Satellite"]) ? "null" as string : map["Satellite"].asString();
    val nbt = item.tag.asMap();
    if(isNull(nbt.Mode)){
        return false;
    }
    else {
        map["Satellite"] = nbt.Mode as string;
        ctrl.customData = data;
        return true;
    }
})
.addItemOutput(<contenttweaker:sputnikcoordinatecard>.withTag({display: {Lore: [ "§9卫星功能：§c未绑定§r", "§9目标星球：§c无§r", "§9所有者：§c无§r"]}, state: "false"}))
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val data = ctrl.customData;
    val map = data.asMap();
    map["Satellite"] = isNull(map["Satellite"]) ? "null" as string : map["Satellite"].asString();
    map["TargetName"] = isNull(map["TargetName"]) ? "null" as string : map["TargetName"].asString();
    map["UUID"] = isNull(map["UUID"]) ? "null" as string : map["UUID"].asString();
    return <contenttweaker:sputnikcoordinatecard>.withTag({display: {Lore: ["§9卫星功能：§e" + Satellite_String[map["Satellite"].asString()] + "§r", "§9目标星球：§e" + TargetName_String[map["TargetName"].asString()] + "§r", "§9所有者：§b" + ctrl.world.getPlayerByUUID(UUID.fromString(map["UUID"].asString())).name + "§r"]}, state: "true", name: map["TargetName"].asString(), playeruuid: map["UUID"].asString(), Mode: map["Satellite"].asString(), ItemUUID: UUID.randomUUID().asString()});
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Fuel"] = isNull(map["Fuel"]) ? 0 as long : map["Fuel"].asLong();
    map["FuelConsumption"] = isNull(map["FuelConsumption"]) ? 0 as long : map["FuelConsumption"].asLong();
    if(map["Fuel"].asLong() < map["FuelConsumption"].asLong()){
        event.setFailed(false, "§d§l燃料不足！");
    }
    if(ctrl.getSmartInterfaceData("Mode").value == 0) {
        event.setFailed(false, "§a§l准备就绪，请输入发射指令！");
    }
    ctrl.customData = data;
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Fuel"] = isNull(map["Fuel"]) ? 0 as long : map["Fuel"].asLong();
    map["FuelConsumption"] = isNull(map["FuelConsumption"]) ? 0 as long : map["FuelConsumption"].asLong();
    map["Satellite"] = isNull(map["Satellite"]) ? "null" as string : map["Satellite"].asString();
    map["TargetName"] = isNull(map["TargetName"]) ? "null" as string : map["TargetName"].asString();
    map["UUID"] = isNull(map["UUID"]) ? "null" as string : map["UUID"].asString();
    map["Fuel"] = map["Fuel"].asLong() - map["FuelConsumption"].asLong();
    map["FuelConsumption"] = 0;
    map["Satellite"] = "null";
    map["TargetName"] = "null";
    map["UUID"] = "null";
    ctrl.customData = data;
    val nullable = ctrl.getSmartInterfaceData("Mode");
    nullable.value = 0;
})
.build();

//GUI
MMEvents.onControllerGUIRender("YMG_Rocket_Silos", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Fuel"] = isNull(map["Fuel"]) ? 0 as long : map["Fuel"].asLong();
    map["FuelConsumption"] = isNull(map["FuelConsumption"]) ? 0 as long : map["FuelConsumption"].asLong();
    map["Satellite"] = isNull(map["Satellite"]) ? "null" as string : map["Satellite"].asString();
    map["TargetName"] = isNull(map["TargetName"]) ? "null" as string : map["TargetName"].asString();
    var info as string[] = [];
    info += "§c>>";
    info += "§9燃料存量：§e" + FormatNumber(map["Fuel"].asLong()) + " §6单位 §b/ §e" + FormatNumber(MaxFuel) + "§6单位§r";
    if(map["FuelConsumption"].asLong() == 0){
        info += "§9预计消耗：§c未执行发射程序§r";
    }
    else {
        info += "§9预计消耗：§e" + FormatNumber(map["FuelConsumption"].asLong()) + " §6单位§r";
    }
    info += "§9卫星功能：§e" + Satellite_String[map["Satellite"].asString()];
    info += "§9目标星球：§e" + TargetName_String[map["TargetName"].asString()];
    info += "§c>>";
    // info += data;
    event.extraInfo = info;
});

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