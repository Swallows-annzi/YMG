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
import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.SmartInterfaceType;
import mods.modularmachinery.SmartInterfaceUpdateEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.FactoryRecipeStartEvent;
import mods.modularmachinery.FactoryRecipeTickEvent;
import mods.modularmachinery.RecipeCheckEvent;


//线程设置
MachineModifier.setMaxThreads("Asterism_Gotoh_Hitori", 0);

//事件转变概率（0~100）实际概率会小于设定值！
val EventProbability = 10 as int;

//事件映射
val EventNumber_String as string[int] = {
    0   :   "§b§l无聊ing....",
    1   :   "§b§l开心！✧٩(ˊωˋ*)و✧",
    2   :   "§b§l难过｡ﾟ(ﾟ∩´﹏`∩ﾟ)ﾟ｡呜ww",
    100 :   "§b§l期待回答ing....",
    101 :   "§b§l不耐烦的等待回答ing....",
    102 :   "§b§l快回答！！！生气！！",
    103 :   "§b§l你走吧，我不想看到你了.....快走！",
    200 :   "去死！"
};

//对话表
val Dialogue as string[int] = {
    1   :  
    "§d§l后藤独：\n§b§l你....你好...(害怕)，我是后藤独...初次见面，请多关照(缩到墙角)。",
    2   :
    "§d§l后藤独：\n§b§B你....你好...(害怕)，我是后藤独...初次见面，请多关照(缩到墙角)。\n§r§6§l3：§r§2§l好可爱！！！！让我吃一口！！！\n§r§6§l4：§r§2§l你好，波奇酱？~..(害羞)\n§c§l请在数据接口中输入您所选择的编号!",
    3   :
    "§d§l后藤独：\n§b§l你是谁！！！请不要这个样子！！！(瑟瑟发抖...)",
    4   :
    "§d§l后藤独：\n§b§l你....你好...(缩到墙角)。"
};

//时间
val Tick_String = "§d§l波奇的维生装置";
MachineModifier.addCoreThread("Asterism_Gotoh_Hitori", FactoryRecipeThread.createCoreThread(Tick_String));

//对话
val Dialogue_String = "§d§l波奇的交流核心";
MachineModifier.addCoreThread("Asterism_Gotoh_Hitori", FactoryRecipeThread.createCoreThread(Dialogue_String));

//数据端口
MachineModifier.addSmartInterfaceType("Asterism_Gotoh_Hitori",
    SmartInterfaceType.create("choose", 0)
    .setHeaderInfo("§c§l对话选择器")
    .setValueInfo("§e§l请输入您选择的编码：")
    .setFooterInfo("§d§l数据范围：§a§l1-1000")
    .setNotEqualMessage("数据异常！")
);

//数据接口数据写入控制器
MMEvents.onSmartInterfaceUpdate("Asterism_Gotoh_Hitori", function(event as SmartInterfaceUpdateEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val nullable = ctrl.getSmartInterfaceData("choose");
    var choose = isNull(nullable) ? 0 as int : nullable.value;
    if (choose < 0 || choose > 1000) {
        nullable.value = 0;
    }
    map["choose"] = choose;
    ctrl.customData = data;
});

//事件运行
mods.modularmachinery.RecipeBuilder.newBuilder("Timeline", "Asterism_Gotoh_Hitori", 1200, 1, false)
//每次配方开始触发事件改变
.addFactoryStartHandler(function(event as FactoryRecipeStartEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val random = ctrl.world.random;
    val numbers_event = random.nextInt(0,100);
    map["random"] = numbers_event;
    val ifdialogue = isNull(map["ifdialogue"]) ? 0 as int : map["ifdialogue"].asInt();
    map["ifdialogue"] = ifdialogue;
    if(numbers_event > 0 && numbers_event <= EventProbability && map["ifdialogue"].asInt() == 0) {
        val numbers_types = random.nextInt(0,3);
        if (numbers_types == 0) {
            map["eventnumber"] = 0;
        }
        if (numbers_types == 1) {
            map["eventnumber"] = 1;
        }
        if (numbers_types == 2) {
            map["eventnumber"] = 2;
        }
        //对话机制-启动项
        if (numbers_types == 3) {
            map["eventnumber"] = 100;
            map["ifdialogue"] = 1;
            map["dialogueencode"] = 2;
        }
        ctrl.customData = data;
    }
    ctrl.customData = data;
})
//配方运行Tick事件
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    //世界时间
    map["time"] = ctrl.world.provider.worldTime % 24000;
    //世界天气
    map["weather"] = ctrl.world.isRaining();
    ctrl.customData = data;
})
//完成事件
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    //计时
    val age = isNull(map["age"]) ? 1 as long : map["age"].asLong() + 1;
    map["age"] = age;
    //对话-不耐烦度
    if(map["ifdialogue"].asInt() != 0){
        map["ifdialogue"] = map["ifdialogue"].asInt() + 1;
    }
    ctrl.customData = data;
})
.setThreadName(Tick_String)
.addRecipeTooltip(
    "维系波奇的基础事件配方"
)
.build();

//对话配方
mods.modularmachinery.RecipeBuilder.newBuilder("Dialogue", "Asterism_Gotoh_Hitori", 1200)
//检查事件
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val ifdialogue = isNull(map["ifdialogue"]) ? 0 as int : map["ifdialogue"].asInt();
    map["ifdialogue"] = ifdialogue;
    if (map["ifdialogue"].asInt() == 0) {
        event.setFailed("当前并无对话！");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val Progress = isNull(map["Progress"]) ? false as bool : map["Progress"].asBool();
    val choose = isNull(map["choose"]) ? 0 as int : map["choose"].asInt();
    if(choose == 0 && Progress == false){
        event.preventProgressing("请在数据接口中回答！");
    }
    //对话线
    if(choose == 3 && map["dialogueencode"].asInt() == 2){
        map["dialogueencode"] = 3;
        map["choose"] = 0;
        map["Progress"] = true;
        map["feelings"] = 1;
    }
    if(choose == 4 && map["dialogueencode"].asInt() == 2){
        map["dialogueencode"] = 4;
        map["choose"] = 0;
        //非结局
        map["Progress"] = true;
        map["feelings"] = 1;
    }
    ctrl.customData = data;
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    //对话次数
    val dialoguenum = isNull(map["dialoguenum"]) ? 1 as int : map["dialoguenum"].asInt() + 1;
    map["dialoguenum"] = dialoguenum;
    map["dialogueencode"] = 1;
    map["Progress"] = false;
    map["ifdialogue"] = 0;
    map["eventnumber"] = 0;
    map["feelings"] = 0;
    ctrl.customData = data;
})
.setThreadName(Dialogue_String)
.build();

//GUI
MMEvents.onControllerGUIRender("Asterism_Gotoh_Hitori", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var info as string[] = [];
    val age = isNull(map["age"]) ? 0 as long : map["age"].asLong();
    val eventnumber = isNull(map["eventnumber"]) ? 0 as int : map["eventnumber"].asInt();
    val time = isNull(map["time"]) ? 0 as int : map["time"].asInt();
    val weather = isNull(map["weather"]) ? false as bool : map["weather"].asBool();
    val feelings = isNull(map["feelings"]) ? 0 as int : map["feelings"].asInt();
    info += "§d§l世界时间：" + TimeString(time) + Weather(weather);
    info += "§d§l年龄：" + AgeString(age);
    info += "§d§l心情：" + EventNumber_String[Feelings(eventnumber, map["ifdialogue"].asInt(), feelings)];
    //对话项
    val dialogueencode = isNull(map["dialogueencode"]) ? 1 as int : map["dialogueencode"].asInt();
    info += "" + Dialogue[dialogueencode];
    //测试项
    // val choose = isNull(map["choose"]) ? 0 as int : map["choose"].asInt();
    // info += "§c§l输入测试choose：" + choose;
    // info += "§c§l随机测试random：" + map["random"].asInt();
    // info += "§c§l对话测试ifdialogue：" + map["ifdialogue"].asInt();
    // val dialoguenum = isNull(map["dialoguenum"]) ? 0 as int : map["dialoguenum"].asInt();
    // info += "§c§l对话次数测试dialoguenum：" + dialoguenum;
    // info += "§c§l对话编码测试dialogueencode：" + dialogueencode;
    // val Progress = isNull(map["Progress"]) ? false as bool : map["Progress"].asBool();
    // info += "§c§l进度测试Progress：" + Progress;
    // info += "§c§l心情码测试eventnumber：" + eventnumber;
    // info += "§c§l对话心情码测试feelings：" + feelings;
    event.extraInfo = info;
});


//百分比
function percentage(A as int, B as int, C as int) as double {
    return (((A as double / B as double) * pow(10, C + 2)) as int) as double / pow(10, C);
}

//B次方
function pow(A as int, B as int) as long {
    var sum = 1 as long;
    for i in 0 to B {
        sum = sum * A;
    }
    return sum;
}

//年龄
function AgeString(A as long) as string {
    val hrs = (A % 24) as int;
    val day = ((A / 24) % 30) as int;
    val month = ((A / (24 * 30)) % 12) as int;
    val year = (A / (24 * 30 * 12)) as int;
    return "§b " + year + "§e§l年§b " + month + "§e§l月§b " + day + "§e§l日§b " + hrs + "§e§l时";
}

//MC时
function TimeString(A as int) as string {
    val B = (A + 6000) % 24000;
    var M = B % 1000;
    M = M / 60;
    val H = B / 1000;
    var str as string = "§a§l";
    if(H == 0) {
        str += "00";
    }
    if(H > 0 && H < 10) {
        str += "0" + H;
    }
    if(H > 9) {
        str += H;
    }
    str += "§c§l：§a§l";
    if(M == 0) {
        str += "00";
    }
    if(M > 0 && M < 10) {
        str += "0" + M;
    }
    if(M > 9) {
        str += M;
    }
    str += " §6§l";
    if(A >= 0 && A < 450){
        str += "日出";
    }
    if(A >= 450 && A < 11616){
        str += "白天";
    }
    if(A >= 11616 && A < 13800){
        str += "黄昏";
    }
    if(A >= 13800 && A < 22200){
        str += "夜晚";
    }
    if(A >= 22200 && A <= 24000){
        str += "日出";
    }
    return str;
}

//天气
function Weather(A as bool) as string {
    var str = " §d§l天气：§6§l";
    if(A == true){
        str += "雨天";
    }
    if(A == false){
        str += "晴天";
    }
    return str;
}

//心情
function Feelings(A as int, B as int, C as int) as int {
    if(C == 1){
        return 200;
    }
    if(B == 0){
        return A;
    }
    if(B == 1){
        return 100;
    }
    if(B == 2){
        return 100;
    }
    if(B == 3){
        return 101;
    }
    if(B == 4){
        return 101;
    }
    if(B == 5){
        return 102;
    }
    if(B == 6){
        return 102;
    }
    if(B >= 7){
        return 103;
    }
}