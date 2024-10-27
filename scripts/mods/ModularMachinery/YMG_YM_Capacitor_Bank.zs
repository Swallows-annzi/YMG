/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

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


//能量上限位数(10进制
val setEnergyMax = false;
val setEnergyMaxNumberOfDigit = 20;
//最小传输速度
val SpeedMin = 1 as long;
//最大传输速度
val SpeedMax = 200000000 as long;
//基础速率(请大于等于LongNumberOfDigit,最小为2 5 == pow(10, 5)
val Base_RateNumberOfDigit = 5;

val IntString as string[int] = {
    1   : "1",
    2   : "2",
    3   : "3",
    4   : "4",
    5   : "5",
    6   : "6",
    7   : "7",
    8   : "8",
    9   : "9",
    0   : "0"
};
val StringInt as int[string] = {
    "1" :   1,
    "2" :   2,
    "3" :   3,
    "4" :   4,
    "5" :   5,
    "6" :   6,
    "7" :   7,  
    "8" :   8,
    "9" :   9,
    "0" :   0
};

//线程设置
MachineModifier.setMaxThreads("YMG_YM_Capacitor_Bank", 0);

//输入姬
val Energy_input_string = "§l§b电容库§r§6 输入姬";
MachineModifier.addCoreThread("YMG_YM_Capacitor_Bank", FactoryRecipeThread.createCoreThread(Energy_input_string));
//输出姬
val Energy_output_string = "§l§b电容库§r§6 输出姬";
MachineModifier.addCoreThread("YMG_YM_Capacitor_Bank", FactoryRecipeThread.createCoreThread(Energy_output_string));

//能量输入
mods.modularmachinery.RecipeBuilder.newBuilder("YM_Capacitor_Bank_input", "YMG_YM_Capacitor_Bank", 1)
.setThreadName(Energy_input_string)
.addEnergyPerTickInput(pow(10, Base_RateNumberOfDigit))
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["speed"] = isNull(map["speed"]) ? 1 as long : map["speed"].asLong();
    map["EnergyString"] = isNull(map["EnergyString"]) ? "0000" as string : map["EnergyString"].asString();
    if(setEnergyMax){
        val A = String_Add(map["EnergyString"].asString(),String_Multiply(Base_RateNumberOfDigit, LongToString(map["speed"].asLong(), IntString)), IntString, StringInt);
        if (A.length() >= setEnergyMaxNumberOfDigit + 1) {
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
    map["EnergyString"] = isNull(map["EnergyString"]) ? "0000" as string : map["EnergyString"].asString();
    map["EnergyString"] = String_Add(map["EnergyString"].asString(),String_Multiply(Base_RateNumberOfDigit, LongToString(map["speed"].asLong(), IntString)), IntString, StringInt);
    ctrl.customData = data;
})
.build();

//能量输入
mods.modularmachinery.RecipeBuilder.newBuilder("YM_Capacitor_Bank_output", "YMG_YM_Capacitor_Bank", 1)
.setThreadName(Energy_output_string)
.addEnergyPerTickOutput(pow(10, Base_RateNumberOfDigit))
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["speed"] = isNull(map["speed"]) ? 1 as long : map["speed"].asLong();
    map["EnergyString"] = isNull(map["EnergyString"]) ? "0000" as string : map["EnergyString"].asString();
    if (!AllowedString_Sub(map["EnergyString"].asString(), String_Multiply(Base_RateNumberOfDigit, LongToString(map["speed"].asLong(), IntString)))) {
        event.setFailed("电量不足！");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["speed"] = isNull(map["speed"]) ? 1 as long : map["speed"].asLong();
    ctrl.addModifier("YMG_YM_Capacitor_Bank_Energyinput_up", RecipeModifierBuilder.create("modularmachinery:energy", "output", map["speed"].asLong(), 1, false).build());
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["speed"] = isNull(map["speed"]) ? 1 as long : map["speed"].asLong();
    map["EnergyString"] = isNull(map["EnergyString"]) ? "0000" as string : map["EnergyString"].asString();
    map["EnergyString"] = String_Sub(map["EnergyString"].asString(),String_Multiply(Base_RateNumberOfDigit, LongToString(map["speed"].asLong(), IntString)), IntString, StringInt);
    ctrl.customData = data;
})
.build();

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
    info += "§b//////////////////////////////////////////////";
    if(setEnergyMax){
        info += "§9RF存量：§b(§e" + FormatNumber(map["EnergyString"].asString()) + " §6RF / §b10^" + setEnergyMaxNumberOfDigit +" - 1 §6 RF§b)";
        if(map["EnergyString"].asString().length() <= 21)
        info += "§9RF存量：§b(§e" + map["EnergyString"].asString()[0] + "." + map["EnergyString"].asString()[1] + map["EnergyString"].asString()[2] + map["EnergyString"].asString()[3] + " §6 * §b10^" + (map["EnergyString"].asString().length() - 1) + " §6RF / §b10^" + setEnergyMaxNumberOfDigit +" - 1 §6 RF§b)";
    }
    
    if(!setEnergyMax){
        info += "§9RF存量：§b(§e" + FormatNumber(map["EnergyString"].asString()) + " §6RF / §c无限 §6 RF§b)";
        if(map["EnergyString"].asString().length() <= 21)
        info += "§9RF存量：§b(§e" + map["EnergyString"].asString()[0] + "." + map["EnergyString"].asString()[1] + map["EnergyString"].asString()[2] + map["EnergyString"].asString()[3] + " §6 * §b10^" + (map["EnergyString"].asString().length() - 1) + " §6RF / §c无限 §6 RF§b)";
    }
    info += "§9传输倍率：§e" + FormatNumber(LongToString(map["speed"].asLong(), IntString)) + "§6.x  §b(§9默认倍率：§e1.0§6x§b)";
    info += "§9传输速度：§e" + FormatNumber(String_Multiply(Base_RateNumberOfDigit, LongToString(map["speed"].asLong(), IntString))) + " §6RF/t";
    info += "§b//////////////////////////////////////////////";
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

//B次方
function pow(A as int, B as int) as long {
    var sum = 1 as long;
    for i in 0 to B {
        sum = sum * A;
    }
    return sum;
}

//大数和
function String_Add(StringA as string, StringB as string, IntString as string[int], StringInt as int[string]) as string {
    val LenA = StringA.length;
    val LenB = StringB.length;
    var ReverseStringA = ReverseString(StringA);
    var ReverseStringB = ReverseString(StringB);
    var Carry = 0;
    var OutputString = "";
    if(LenA != LenB){
        if(LenA < LenB){
            for i in 0 to (max(LenA,LenB) - min(LenA,LenB)){
                ReverseStringA = ReverseStringA + "0";
            }
        }
        if(LenA > LenB){
            for i in 0 to (max(LenA,LenB) - min(LenA,LenB)){
                ReverseStringB = ReverseStringB + "0";
            }
        }
    }
    for i in 0 to max(LenA, LenB) {
        var sum = StringInt[ReverseStringA[i]] + StringInt[ReverseStringB[i]] + Carry;
        Carry = sum / 10;
        OutputString = OutputString + IntString[sum % 10];
    }
    if (Carry > 0) {
        OutputString = OutputString + IntString[Carry];
    }
    var  ReverseStringOutputString = ReverseString(OutputString);
    while (ReverseStringOutputString.length > 1 && ReverseStringOutputString[0] == "0") {
        ReverseStringOutputString = ReverseStringOutputString.substring(1);
    }
    return ReverseStringOutputString;
}

//大数减
function String_Sub(StringA as string, StringB as string, IntString as string[int], StringInt as int[string]) as string {
    val LenA = StringA.length;
    val LenB = StringB.length;
    var ReverseStringA = ReverseString(StringA);
    var ReverseStringB = ReverseString(StringB);
    var Borrow = 0;
    var OutputString = "";
    if(LenA != LenB){
        if(LenA < LenB){
            for i in 0 to (max(LenA,LenB) - min(LenA,LenB)){
                ReverseStringA = ReverseStringA + "0";
            }
        }
        if(LenA > LenB){
            for i in 0 to (max(LenA,LenB) - min(LenA,LenB)){
                ReverseStringB = ReverseStringB + "0";
            }
        }
    }
    for i in 0 to max(LenA,LenB) {
        var difference = StringInt[ReverseStringA[i]] - StringInt[ReverseStringB[i]] - Borrow;
        if (difference < 0) {
            difference += 10;
            Borrow = 1;
        } 
        else {
            Borrow = 0;
        }
        OutputString = OutputString + IntString[difference];
    }
    var  ReverseStringOutputString = ReverseString(OutputString);
    while (ReverseStringOutputString.length > 1 && ReverseStringOutputString[0] == "0") {
        ReverseStringOutputString = ReverseStringOutputString.substring(1);
    }
    return ReverseStringOutputString;
}

//加"0"器
function String_Multiply(Base_RateNumberOfDigit as int, Speed as string) as string {
    var OutputString = Speed;
    for i in 0 to Base_RateNumberOfDigit{
        OutputString = OutputString + "0";
    }
    return OutputString;
}

//Long转字符串
function LongToString(value as long, IntString as string[int]) as string {
    var IntValue = value;
    var String = "";
    while (IntValue != 0) {
        String = String + IntString[IntValue % 10];
        IntValue = IntValue / 10;
    }
    return ReverseString(String);
}

//是否能减并且输出不为负数
function AllowedString_Sub(StringA as string, StringB as string) as bool {
    val LenA = StringA.length;
    val LenB = StringB.length;
    if (LenA < LenB){
        return false;
    }
    if (LenA > LenB){
        return true;
    }
    if (LenA == LenB){
        var ReverseStringA = ReverseString(StringA);
        var ReverseStringB = ReverseString(StringB);
        val ReverseReverseStringA = ReverseString(ReverseStringA);
        val ReverseReverseStringB = ReverseString(ReverseStringB);
        for i in 0 to max(LenA,LenB){
            if(ReverseReverseStringA[i] == ReverseReverseStringB[i])
            continue;
            if(ReverseReverseStringA[i] > ReverseReverseStringB[i])
            return true;
            if(ReverseReverseStringA[i] < ReverseReverseStringB[i])
            return false;
        }
        return true;
    }
}

//翻转字符串
function ReverseString(InputString as string) as string{
    val Len = InputString.length;
    var OutputString = "";
    for i in 0 to Len {
        OutputString = OutputString + InputString[Len - i - 1];
    }
    return OutputString;
}

