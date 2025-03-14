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
import mods.modularmachinery.FactoryRecipeTickEvent;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipeCheckEvent;


//汉化
val Satellite_String as string[string] = {
    "null"              :   "§c未绑定卫星链接卡",
    "ORE"               :   "采矿卫星",
    "PV"                :   "光伏卫星",
    "GAS"               :   "微尘收集卫星",
    "ASSEMBLY"          :   "装配卫星"
};
val TargetName_String as string[string] = {
    "null"              :   "§c未绑定卫星链接卡",
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

//产物
val ORE_Earth_Output as int[IItemStack] = {
    <minecraft:iron_ore>:    1,
    <minecraft:gold_ore>:    1,
    <minecraft:coal_ore>:    1,
    <minecraft:lapis_ore>:    1,
    <minecraft:diamond_ore>:    1,
    <minecraft:redstone_ore>:    1,
    <minecraft:emerald_ore>:    1,
    <minecraft:quartz_ore>:    1,
    <thermalfoundation:ore>:    1,
    <mekanism:oreblock>:    1,
    <super_solar_panels:platium_ore>:    1,
    <astralsorcery:blockcustomore:1>:    1,
    <draconicevolution:draconium_ore>:    1,
    <astralsorcery:blockcustomore>:    1,
    <actuallyadditions:block_misc:3>:    1,
    <appliedenergistics2:charged_quartz_ore>:    1,
    <appliedenergistics2:quartz_ore>:    1,
    <mekanism:oreblock:3>:    1,
    <mekanism:oreblock:5>:    1,
    <thermalfoundation:ore_fluid:2>:    1,
    <thermalfoundation:ore:8>:    1,
    <thermalfoundation:ore:4>:    1,
    <thermalfoundation:ore:5>:    1,
    <thermalfoundation:ore:3>:    1,
    <thermalfoundation:ore:2>:    1,
    <thermalfoundation:ore:1>:    1,
    <thermalfoundation:ore_fluid>:    1,
    <tconstruct:ore:1>:    1,
    <tconstruct:ore>:    1,
    <thermalfoundation:ore_fluid:4>:    1,
    <thermalfoundation:ore_fluid:3>:    1
};

val GAS_Earth_Output as int[IItemStack] = {
    <avaritia:resource:2>:    3,
    <taiga:meteorite_dust>:    7
};

val GAS_Moon_Output as int[IItemStack] = {
    <avaritia:resource:2>:    14,
    <taiga:meteorite_dust>:    35,
    <contenttweaker:rare_earth>:    1
};


//总权重
val ORE_Earth_Weighet_Sun = Weight_sun(ORE_Earth_Output);
val GAS_Earth_Weighet_Sun = Weight_sun(GAS_Earth_Output);
val GAS_Moon_Weighet_Sun = Weight_sun(GAS_Moon_Output);
//产出表
val ORE_Earth_Output_List = Ore_output(ORE_Earth_Output);
val GAS_Earth_Output_List = Ore_output(GAS_Earth_Output);
val GAS_Moon_Output_List = Ore_output(GAS_Moon_Output);

//线程设置
MachineModifier.setMaxThreads("YMG_Satellite_Receiving_Antenna", 16);

//信号接收器
val Signal_Receiver_String = "§e§l信号接收器";
MachineModifier.addCoreThread("YMG_Satellite_Receiving_Antenna", FactoryRecipeThread.createCoreThread(Signal_Receiver_String));

//链接卡读取
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Satellite_Receiving_Antenna_sputnikcoordinatecard_Input", "YMG_Satellite_Receiving_Antenna", 1)
.setThreadName(Signal_Receiver_String)
.addEnergyPerTickInput(0)
.addItemInput(<contenttweaker:sputnikcoordinatecard>)
.setNBTChecker(function(ctrl as IMachineController, item as IItemStack) {
    val data = ctrl.customData;
    val map = data.asMap();
    map["PlayerName"] = isNull(map["PlayerName"]) ? "§c未绑定卫星链接卡" as string : map["PlayerName"].asString();
    map["Satellite"] = isNull(map["Satellite"]) ? "null" as string : map["Satellite"].asString();
    map["TargetName"] = isNull(map["TargetName"]) ? "null" as string : map["TargetName"].asString();
    val nbt = item.tag.asMap();
    if(ctrl.ownerUUID != nbt.playeruuid as string){
        return false;
    }
    else {
        map["PlayerName"] = ctrl.world.getPlayerByUUID(UUID.fromString(ctrl.ownerUUID)).name;
        map["Satellite"] = nbt.Mode as string;
        map["TargetName"] = nbt.name as string;
        ctrl.customData = data;
        return true;
    }
}).setChance(0.0F)
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Satellite"] = isNull(map["Satellite"]) ? "null" as string : map["Satellite"].asString();
    map["TargetName"] = isNull(map["TargetName"]) ? "null" as string : map["TargetName"].asString();
    map["EnergyInput"] = isNull(map["EnergyInput"]) ? 0 as long : map["EnergyInput"].asLong();
    map["Amplification"] = isNull(map["Amplification"]) ? 0 as int : map["Amplification"].asInt();
    if(!ctrl.hasMachineUpgrade("star_signal_amplification_card_1") && !ctrl.hasMachineUpgrade("star_signal_amplification_card_2") && !ctrl.hasMachineUpgrade("star_signal_amplification_card_3") && !ctrl.hasMachineUpgrade("star_signal_amplification_card_4") && !ctrl.hasMachineUpgrade("star_signal_amplification_card_5")) {
        map["Amplification"] = 0;
    }
    if(ctrl.hasMachineUpgrade("star_signal_amplification_card_1") && !ctrl.hasMachineUpgrade("star_signal_amplification_card_2") && !ctrl.hasMachineUpgrade("star_signal_amplification_card_3") && !ctrl.hasMachineUpgrade("star_signal_amplification_card_4") && !ctrl.hasMachineUpgrade("star_signal_amplification_card_5")) {
        map["Amplification"] = 1;
    }
    if(ctrl.hasMachineUpgrade("star_signal_amplification_card_2") && !ctrl.hasMachineUpgrade("star_signal_amplification_card_3") && !ctrl.hasMachineUpgrade("star_signal_amplification_card_4") && !ctrl.hasMachineUpgrade("star_signal_amplification_card_5")) {
        map["Amplification"] = 2;
    }
    if(ctrl.hasMachineUpgrade("star_signal_amplification_card_3") && !ctrl.hasMachineUpgrade("star_signal_amplification_card_4") && !ctrl.hasMachineUpgrade("star_signal_amplification_card_5")) {
        map["Amplification"] = 3;
    }
    if(ctrl.hasMachineUpgrade("star_signal_amplification_card_4") && !ctrl.hasMachineUpgrade("star_signal_amplification_card_5")) {
        map["Amplification"] = 4;
    }
    if(ctrl.hasMachineUpgrade("star_signal_amplification_card_5")) {
        map["Amplification"] = 5;
    }
    if(map["Satellite"].asString() == "ORE") {
        if(map["TargetName"].asString() == "Earth") {
            map["EnergyInput"] = 100000000;
        }
    }
    if(map["Satellite"].asString() == "GAS") {
        if(map["TargetName"].asString() == "Earth") {
            map["EnergyInput"] = 80000000;
        }
    }
    if(map["Satellite"].asString() == "GAS") {
        if(map["TargetName"].asString() == "Moon") {
            map["EnergyInput"] = 85000000;
        }
    }
    if(map["Satellite"].asString() == "PV") {
        map["EnergyInput"] = 0;
    }
    ctrl.customData = data;
    ctrl.addModifier("YMG_Satellite_Receiving_Antenna_Energy_Input", RecipeModifierBuilder.create("modularmachinery:energy", "input", map["EnergyInput"].asLong(), 0, false).build());
})
.build();

//物品产出
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Satellite_Receiving_Antenna_Item_Outout", "YMG_Satellite_Receiving_Antenna", 1200)
.setMaxThreads(1)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val RecipeList = ctrl.activeRecipeList;
    if(!isNull(RecipeList))
        if(RecipeList[0].registryName != "ymg_satellite_receiving_antenna_sputnikcoordinatecard_input")
            event.setFailed("§c未绑定卫星链接卡！§r");
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val RecipeList = ctrl.activeRecipeList;
    if(!isNull(RecipeList))
        if(RecipeList[0].registryName != "ymg_satellite_receiving_antenna_sputnikcoordinatecard_input")
            event.setFailed(true, "§c未绑定卫星链接卡！§r");
    if((map["Satellite"].asString() == "PV" || map["Satellite"].asString() == "ASSEMBLY"))
        ctrl.addModifier("YMG_Satellite_Receiving_Antenna_Item_Output", RecipeModifierBuilder.create("modularmachinery:item", "output", 0, 1, false).build());
})
.addItemOutput(<minecraft:stone>)
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val data = ctrl.customData;
    val random = ctrl.world.random;
    val map = data.asMap();
    map["Satellite"] = isNull(map["Satellite"]) ? "null" as string : map["Satellite"].asString();
    map["TargetName"] = isNull(map["TargetName"]) ? "null" as string : map["TargetName"].asString();
    map["Amplification"] = isNull(map["Amplification"]) ? 0 as int : map["Amplification"].asInt();
    if(map["TargetName"].asString() == "Earth" && map["Amplification"].asInt() >= 1) {
        if(map["Satellite"].asString() == "ORE") {
            return ORE_Earth_Output_List[random.nextInt(0, ORE_Earth_Weighet_Sun - 1)] * random.nextInt(1024, 2048);
        }
        if(map["Satellite"].asString() == "GAS") {
            val RandomInt = random.nextInt(0, GAS_Earth_Weighet_Sun - 1);
            if(IItemStackCompare(GAS_Earth_Output_List[RandomInt], <avaritia:resource:2>)){
                return GAS_Earth_Output_List[RandomInt] * random.nextInt(1, 128);
            }
            else {
                return GAS_Earth_Output_List[RandomInt] * random.nextInt(1024, 2048);
            }
        }
        else {
            return <minecraft:stone>;
        }
    }
    if(map["TargetName"].asString() == "Moon" && map["Amplification"].asInt() >= 1) {
        if(map["Satellite"].asString() == "GAS") {
            val RandomInt = random.nextInt(0, GAS_Moon_Weighet_Sun - 1);
            if(IItemStackCompare(GAS_Moon_Output_List[RandomInt], <avaritia:resource:2>)){
                return GAS_Moon_Output_List[RandomInt] * random.nextInt(1, 128);
            }
            if(IItemStackCompare(GAS_Moon_Output_List[RandomInt], <contenttweaker:rare_earth>)){
                return GAS_Moon_Output_List[RandomInt] * random.nextInt(128, 512);
            }
            else {
                return GAS_Moon_Output_List[RandomInt] * random.nextInt(1024, 2048);
            }
        }
        else {
            return <minecraft:stone>;
        }
    }
    else {
        ctrl.addModifier("YMG_Satellite_Receiving_Antenna_Item_Output", RecipeModifierBuilder.create("modularmachinery:item", "output", 0, 1, false).build());
        return <minecraft:stone>;
    }
})
.build();

//能量产出
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Satellite_Receiving_Antenna_Energy_Outout", "YMG_Satellite_Receiving_Antenna", 1200)
.setMaxThreads(1)
.addEnergyPerTickOutput(0)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val RecipeList = ctrl.activeRecipeList;
    if(!isNull(RecipeList))
        if(RecipeList[0].registryName != "ymg_satellite_receiving_antenna_sputnikcoordinatecard_input")
            event.setFailed("§c未绑定卫星链接卡！§r");
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val RecipeList = ctrl.activeRecipeList;
    if(!isNull(RecipeList))
        if(RecipeList[0].registryName != "ymg_satellite_receiving_antenna_sputnikcoordinatecard_input")
            event.setFailed(true, "§c未绑定卫星链接卡！§r");
    val data = ctrl.customData;
    val map = data.asMap();
    map["Satellite"] = isNull(map["Satellite"]) ? "null" as string : map["Satellite"].asString();
    map["EnergyOutput"] = isNull(map["EnergyOutput"]) ? 0 as long : map["EnergyOutput"].asLong();
    map["TargetName"] = isNull(map["TargetName"]) ? "null" as string : map["TargetName"].asString();
    map["Amplification"] = isNull(map["Amplification"]) ? 0 as int : map["Amplification"].asInt();
    if (map["Satellite"].asString() == "PV") {
        if(map["TargetName"].asString() == "Sun" && map["Amplification"].asInt() >= 4) {
            map["EnergyOutput"] = 150000000000;
        }
        if(map["TargetName"].asString() == "Earth" && map["Amplification"].asInt() >= 1) {
            map["EnergyOutput"] = 4000000000;
        }
        else {
            map["EnergyOutput"] = 0;
        }
    }
    else {
        map["EnergyOutput"] = 0;
    }
    ctrl.addModifier("YMG_Satellite_Receiving_Antenna_Energy_Output", RecipeModifierBuilder.create("modularmachinery:energy", "output", map["EnergyOutput"].asLong(), 0, false).build());
    ctrl.customData = data;
})
.build();

//GUI
MMEvents.onControllerGUIRender("YMG_Satellite_Receiving_Antenna", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["EnergyInput"] = isNull(map["EnergyInput"]) ? 0 as long : map["EnergyInput"].asLong();
    map["Amplification"] = isNull(map["Amplification"]) ? 0 as int : map["Amplification"].asInt();
    map["EnergyOutput"] = isNull(map["EnergyOutput"]) ? 0 as long : map["EnergyOutput"].asLong();
    map["PlayerName"] = isNull(map["PlayerName"]) ? "§c未绑定卫星链接卡" as string : map["PlayerName"].asString();
    map["Satellite"] = isNull(map["Satellite"]) ? "null" as string : map["Satellite"].asString();
    map["TargetName"] = isNull(map["TargetName"]) ? "null" as string : map["TargetName"].asString();
    var info as string[] = [];
    info += "§c>>";
    if(ctrl.isWorking) {
        info += "§9所有者：§b" + map["PlayerName"].asString() + "§r";
        info += "§9能量消耗：§e" + FormatNumber(map["EnergyInput"].asLong()) + " §bRF/T§r";
        info += "§9能量产出：§e" + FormatNumber(map["EnergyOutput"].asLong()) + " §bRF/T§r";
        info += "§9卫星功能：§e" + Satellite_String[map["Satellite"].asString()] + "§r";
        info += "§9目标星球：§e" + TargetName_String[map["TargetName"].asString()] + "§r";
        info += "§9信号等级：§bLv " + map["Amplification"].asInt() + "§r";
    }
    else {
        info += "§c未绑定卫星链接卡§r";
    }
    info += "§c>>";
    // val RecipeList = ctrl.activeRecipeList;
    // info += "§c" + RecipeList[0].registryName;
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

//计算权重总值
function Weight_sun(ore as int[IItemStack]) as int {
    var sum = 0;
    for uselessData,number in ore {
        sum = sum + number;
    }
    return sum as int;
}

// 产出表计算
function Ore_output(ore as int[IItemStack]) as IItemStack[] {
    var output_table as IItemStack[] = [];
    for input, number in ore {
        for i in 0 to number {
                output_table += input;
        }
    }
    return output_table;
}

function IItemStackCompare(a as IItemStack, b as IItemStack) as bool {
    if(a.definition.id == b.definition.id && a.metadata == b.metadata){
        return true;
    }
    return false;
}