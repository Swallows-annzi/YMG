/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.data.IData;

import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.SmartInterfaceType;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.FactoryRecipeTickEvent;
import mods.modularmachinery.Sync;

import mods.additionalapi.WorldData;
import mods.additionalapi.BigInteger;


//能量上限位数(10进制
val setEnergyMax = false;
val setEnergyMaxNumberOfDigit = 20;
//最小传输速度
val SpeedMin = 1 as long;
//最大传输速度
val SpeedMax = 200000000 as long;
//基础速率
val Base_RateNumber = 100000;



//线程设置
MachineModifier.setMaxThreads("YMG_YM_Capacitor_Bank", 0);

//输入姬
val Energy_input_string = "§l§b电容库§r§6 输入姬";
MachineModifier.addCoreThread("YMG_YM_Capacitor_Bank", FactoryRecipeThread.createCoreThread(Energy_input_string));
//输出姬
val Energy_output_string = "§l§b电容库§r§6 输出姬";
MachineModifier.addCoreThread("YMG_YM_Capacitor_Bank", FactoryRecipeThread.createCoreThread(Energy_output_string)); 
// //同步姬
// val Energy_sync_string = "§l§b电容库§r§6 同步姬";
// MachineModifier.addCoreThread("YMG_YM_Capacitor_Bank", FactoryRecipeThread.createCoreThread(Energy_sync_string)); 

//能量输入
mods.modularmachinery.RecipeBuilder.newBuilder("YM_Capacitor_Bank_input", "YMG_YM_Capacitor_Bank", 1)
.setThreadName(Energy_input_string)
.addEnergyPerTickInput(Base_RateNumber)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["speed"] = isNull(map["speed"]) ? 1 as long : map["speed"].asLong();
    map["EnergyString"] = isNull(map["EnergyString"]) ? "0" as string : map["EnergyString"].asString();
    if(setEnergyMax){
        val A = BigInteger.Add(map["EnergyString"].asString(), BigInteger.Multiply(BigInteger.toString(map["speed"].asLong()), Base_RateNumber));
        if (BigInteger.CompareTo(A, BigInteger.Pow("10", setEnergyMaxNumberOfDigit)) == 1) {
            event.setFailed("容量不足！");
        }
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["speed"] = isNull(map["speed"]) ? 1 as long : map["speed"].asLong();
    ctrl.addModifier("YMG_YM_Capacitor_Bank_Energyinput_up", RecipeModifierBuilder.create("modularmachinery:energy", "input", map["speed"].asLong(), 1, false).build());
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["speed"] = isNull(map["speed"]) ? 1 as long : map["speed"].asLong();
    map["EnergyString"] = isNull(map["EnergyString"]) ? "0" as string : map["EnergyString"].asString();
    map["EnergyString"] = BigInteger.Add(map["EnergyString"].asString(), BigInteger.Multiply(BigInteger.toString(map["speed"].asLong()), Base_RateNumber));
    ctrl.customData = data;
})
.build();

// 能量输出
mods.modularmachinery.RecipeBuilder.newBuilder("YM_Capacitor_Bank_output", "YMG_YM_Capacitor_Bank", 1)
.setThreadName(Energy_output_string)
.addEnergyPerTickOutput(Base_RateNumber)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["speed"] = isNull(map["speed"]) ? 1 as long : map["speed"].asLong();
    map["EnergyString"] = isNull(map["EnergyString"]) ? "0" as string : map["EnergyString"].asString();
    val A = BigInteger.Subtract(map["EnergyString"].asString(), BigInteger.Multiply(BigInteger.toString(map["speed"].asLong()), Base_RateNumber));
    if (BigInteger.CompareTo(A, "0") == -1) {
        event.setFailed("电量不足！");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["speed"] = isNull(map["speed"]) ? 1 as long : map["speed"].asLong();
    ctrl.addModifier("YMG_YM_Capacitor_Bank_Energyoutput_up", RecipeModifierBuilder.create("modularmachinery:energy", "output", map["speed"].asLong(), 1, false).build());
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["speed"] = isNull(map["speed"]) ? 1 as long : map["speed"].asLong();
    map["EnergyString"] = isNull(map["EnergyString"]) ? "0" as string : map["EnergyString"].asString();
    map["EnergyString"] = BigInteger.Subtract(map["EnergyString"].asString(), BigInteger.Multiply(BigInteger.toString(map["speed"].asLong()), Base_RateNumber));
    ctrl.customData = data;
})
.build();

//能源同步
// mods.modularmachinery.RecipeBuilder.newBuilder("YM_Capacitor_Bank_sync", "YMG_YM_Capacitor_Bank", 1200)
// .setThreadName(Energy_sync_string)
// .addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    // Sync.addSyncTask(function(){
    //     val ctrl = event.controller;
    //     val data = ctrl.customData;
    //     val map = data.asMap();
    //     val EnergyData as IData = WorldData.getArchiveData("EnergyData", ctrl.ownerUUID);
    //     val EnergyMap = EnergyData.asMap();
    //     val Deduct as string = EnergyMap["Deduct"].asString();
    //     map["EnergyString"] = isNull(map["EnergyString"]) ? "0" as string : map["EnergyString"].asString();
    //     if(BigInteger.CompareTo(map["EnergyString"].asString(), Deduct) != -1){
    //         map["EnergyString"] = BigInteger.Subtract(map["EnergyString"].asString(), Deduct);
    //         ctrl.customData = data;
    //     }
    //     WorldData.upArchiveData("EnergyData", ctrl.ownerUUID, {Energy:map["EnergyString"].asString()});
    // });
// })
// .build();

//数据端口
MachineModifier.addSmartInterfaceType("YMG_YM_Capacitor_Bank",
    SmartInterfaceType.create("speed", 1)
    .setHeaderInfo("能源传输速率设置")
    .setValueInfo("速度：%l 倍")
    .setFooterInfo("可调节的数据范围：" + SpeedMin + " ~ " + SpeedMax)
    .setNotEqualMessage("数据异常！")
);

//数据接口数据写入控制器
MMEvents.onMachinePostTick("YMG_YM_Capacitor_Bank", function(event as MachineTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val nullable = ctrl.getSmartInterfaceData("speed");
    var speed = isNull(nullable) ? 1 as long : nullable.value;
    if (speed < SpeedMin || speed > SpeedMax) {
        nullable.value = 1;
    }
    map["speed"] = speed;
    ctrl.customData = data;
});

//GUI
MMEvents.onControllerGUIRender("YMG_YM_Capacitor_Bank", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["speed"] = isNull(map["speed"]) ? 1 as long : map["speed"].asLong();
    map["EnergyString"] = isNull(map["EnergyString"]) ? "0000" as string : map["EnergyString"].asString();
    var info as string[] = [];
    info += "§b>>";
    // info += "§9RF存量：§e" + map["EnergyString"].asString();
    if(setEnergyMax)
        info += "§9RF存量：§b(§e" + FormatNumber(map["EnergyString"].asString()) + " §6RF / §b" + FormatNumber(BigInteger.Pow("10" , setEnergyMaxNumberOfDigit)) + " §6 RF§b)";
        // info += "§9RF存量：§b(§e" + map["EnergyString"].asString()[0] + "." + map["EnergyString"].asString()[1] + map["EnergyString"].asString()[2] + map["EnergyString"].asString()[3] + " §6 * §b10^" + (map["EnergyString"].asString().length() - 1) + " §6RF / §b10^" + setEnergyMaxNumberOfDigit + " - 1 §6 RF§b)";
    
    if(!setEnergyMax)
        info += "§9RF存量：§b(§e" + FormatNumber(map["EnergyString"].asString()) + " §6RF / §c无限 §6 RF§b)";
    info += "§9传输倍率：§e" + map["speed"].asLong() + ".0§cx";
    val Speed = BigInteger.Multiply(BigInteger.toString(map["speed"].asLong()), Base_RateNumber);
    // info += "§9传输速度：§e" + Speed[0] + "." + Speed[1] + Speed[2] + Speed[3] + " §6 * §b10^" + (Speed.length() - 1);
    info += "§9传输速度：§e" + FormatNumber(Speed);
    info += "§b>>";
    // info += data;
    event.extraInfo = info;
});


//单位转换
function FormatNumber(String as string) as string {
    val Number = String.length();
    var OutputString = "";
    if(3 >= Number)
    OutputString = String;
    if(4 == Number)
    OutputString = OutputString + String[0] + "." + String[1] + String[2] + String[3] + " §6K";
    if(5 == Number)
    OutputString = OutputString + String[0] + String[1] + "." + String[2] + String[3] + String[4] + " §6K";
    if(6 == Number)
    OutputString = OutputString + String[0] + String[1] + String[2] + "." + String[3] + String[4] + String[5] + " §6K";
    if(7 == Number)
    OutputString = OutputString + String[0] + "." + String[1] + String[2] + String[3] + " §6M";
    if(8 == Number)
    OutputString = OutputString + String[0] + String[1] + "." + String[2] + String[3] + String[4] + " §6M";
    if(9 == Number)
    OutputString = OutputString + String[0] + String[1] + String[2] + "." + String[3] + String[4] + String[5] + " §6M";
    if(10 == Number)
    OutputString = OutputString + String[0] + "." + String[1] + String[2] + String[3] + " §6G";
    if(11 == Number)
    OutputString = OutputString + String[0] + String[1] + "." + String[2] + String[3] + String[4] + " §6G";
    if(12 == Number)
    OutputString = OutputString + String[0] + String[1] + String[2] + "." + String[3] + String[4] + String[5] + " §6G";
    if(13 == Number)
    OutputString = OutputString + String[0] + "." + String[1] + String[2] + String[3] + " §6T";
    if(14 == Number)
    OutputString = OutputString + String[0] + String[1] + "." + String[2] + String[3] + String[4] + " §6T";
    if(15 == Number)
    OutputString = OutputString + String[0] + String[1] + String[2] + "." + String[3] + String[4] + String[5] + " §6T";
    if(16 == Number)
    OutputString = OutputString + String[0] + "." + String[1] + String[2] + String[3] + " §6P";
    if(17 == Number)
    OutputString = OutputString + String[0] + String[1] + "." + String[2] + String[3] + String[4] + " §6P";
    if(18 == Number)
    OutputString = OutputString + String[0] + String[1] + String[2] + "." + String[3] + String[4] + String[5] + " §6P";
    if(19 == Number)
    OutputString = OutputString + String[0] + "." + String[1] + String[2] + String[3] + " §6E";
    if(20 == Number)
    OutputString = OutputString + String[0] + String[1] + "." + String[2] + String[3] + String[4] + " §6E";
    if(21 == Number)
    OutputString = OutputString + String[0] + String[1] + String[2] + "." + String[3] + String[4] + String[5] + " §6E";
    if(Number > 21){
        OutputString = OutputString + String[0] + "." + String[1] + String[2] + String[3] + " §6 * §b10^" + (Number - 1);
    }
    return OutputString;
}