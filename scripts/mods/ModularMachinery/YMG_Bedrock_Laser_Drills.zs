/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;

import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.SmartInterfaceType;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.FactoryRecipeTickEvent;
import mods.modularmachinery.IMachineController;
import mods.modularmachinery.RecipeModifierBuilder;


//线程设置
MachineModifier.setMaxThreads("YMG_Bedrock_Laser_Drills", 0);

//产物
val output as int[IItemStack] = {
    <enderio:item_material:20>              :   800,
    <contenttweaker:tungstendust>  :   60,
    <taiga:basalt_dust>                     :   20,
    <taiga:tiberium_dust>                   :   20,
    <taiga:aurorium_dust>                   :   20,
    <taiga:prometheum_dust>                 :   20,
    <taiga:duranite_dust>                   :   20,
    <taiga:valyrium_dust>                   :   20,
    <taiga:vibranium_dust>                  :   20,
    <taiga:karmesine_dust>                  :   20,
    <taiga:ovium_dust>                      :   20,
    <taiga:jauxum_dust>                     :   20,
    <taiga:palladium_dust>                  :   20,
    <taiga:uru_dust>                        :   20,
    <taiga:osram_dust>                      :   20,
    <taiga:eezo_dust>                       :   10,
    <taiga:abyssum_dust>                    :   20,
    <taiga:dilithium_dust>                  :   20,
    <taiga:meteorite_dust>                  :   20,
    <mets:niobium_dust>                     :   20,
    <mets:thorium_dust>                     :   20,
    <mets:titanium_dust>                    :   40,
    <contenttweaker:stellajewel>   :   1,
};

//运行核心
val Functioning_String = "§e§l运行核心";
MachineModifier.addCoreThread("YMG_Bedrock_Laser_Drills", FactoryRecipeThread.createCoreThread(Functioning_String));

//激光核心
val Laser_Core_String = "§c§l激光核心";
MachineModifier.addCoreThread("YMG_Bedrock_Laser_Drills", FactoryRecipeThread.createCoreThread(Laser_Core_String));

//流体散热
val Air_Cooling_String = "§b§l空气冷却核心";
MachineModifier.addCoreThread("YMG_Bedrock_Laser_Drills", FactoryRecipeThread.createCoreThread(Air_Cooling_String));

//流体散热
val Fluid_Cooling_String = "§b§l流体冷却核心";
MachineModifier.addCoreThread("YMG_Bedrock_Laser_Drills", FactoryRecipeThread.createCoreThread(Fluid_Cooling_String));

//数据端口
MachineModifier.addSmartInterfaceType("YMG_Bedrock_Laser_Drills",
    SmartInterfaceType.create("power", 3000)
    .setHeaderInfo("§e激光能量控制器")
    .setValueInfo("§c当前激光功率：%.0f")
    .setFooterInfo("§d数据范围：§b3000W—60000W")
    .setNotEqualMessage("§c数据异常！")
);

//数据接口数据写入控制器
MMEvents.onMachinePostTick("YMG_Bedrock_Laser_Drills", function(event as MachineTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val nullable = ctrl.getSmartInterfaceData("power");
    var power = isNull(nullable) ? 3000 as int : nullable.value;
    if (power < 3000 || power > 60000) {
        nullable.value = 3000;
    }
    map["power"] = power;
    ctrl.customData = data;
});

//总权重
val WeighetSum = Weight_sum(output);
//产出表
val oreoutput = Ore_output(output);

//运行核心
mods.modularmachinery.RecipeBuilder.newBuilder("Bedrock_Laser_Drills_functioning_core", "YMG_Bedrock_Laser_Drills", 1200)
.setThreadName(Functioning_String)
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    map["power"] = isNull(map["power"]) ? 0 as int : map["power"].asInt();
    if(!(ctrl.hasMachineUpgrade("laserdiodes_I") || ctrl.hasMachineUpgrade("laserdiodes_II") || ctrl.hasMachineUpgrade("laserdiodes_III"))){
        map["level"] = 0;
    }
    if(ctrl.hasMachineUpgrade("laserdiodes_I")){
        map["level"] = 1;
        if(map["power"].asInt() > 15000){
            map["power"] = 12000;
        val nullable = ctrl.getSmartInterfaceData("power");
        nullable.value = 12000;
        }
    }
    if(ctrl.hasMachineUpgrade("laserdiodes_II")){
        map["level"] = 2;
        if(map["power"].asInt() > 30000){
            map["power"] = 24000;
        val nullable = ctrl.getSmartInterfaceData("power");
        nullable.value = 24000;
        }
    }
    if(ctrl.hasMachineUpgrade("laserdiodes_III")){
        map["level"] = 3;
        if(map["power"].asInt() > 60000){
            map["power"] = 48000;
        val nullable = ctrl.getSmartInterfaceData("power");
        nullable.value = 48000;
        }
    }
    ctrl.customData = data;
})
.addRecipeTooltip(
    "基础事件运行核心"
)
.build();

//激光核心
mods.modularmachinery.RecipeBuilder.newBuilder("laser_core", "YMG_Bedrock_Laser_Drills", 400)
.setThreadName(Laser_Core_String)
.addEnergyPerTickInput(1000)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    map["level"] = isNull(map["level"]) ? 0 as int : map["level"].asInt();
    if(map["level"].asInt() == 0){
        event.setFailed("§d激光核心异常或缺失!");
    }
    if(map["thermal"].asDouble() > 100000){
        event.setFailed("§4过热！过热！过热！");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    map["level"] = isNull(map["level"]) ? 0 as int : map["level"].asInt();
    ctrl.customData = data;
    if(map["level"].asInt() == 0){
        event.setFailed(true, "§d激光核心异常或缺失!");
    }
    if(map["thermal"].asDouble() > 100000){
        event.setFailed(true, "§4过热！过热！过热！");
    }
    if(map["thermal"].asDouble() > 50000){
        ctrl.addModifier("svelocity_3", RecipeModifierBuilder.create("modularmachinery:duration", "input", ((map["thermal"].asDouble() - 50000.0) * (map["thermal"].asDouble() - 50000.0) / 400000000.0) + 1.0, 1, false).build());
    }
    map["thermal"] = map["thermal"].asDouble() + Thermal_Magnification(map["power"].asInt(), map["level"].asInt());
    ctrl.addModifier("svelocity_1", RecipeModifierBuilder.create("modularmachinery:energy", "input", Thermal_Magnification(map["power"].asInt(), map["level"].asInt()) * 100.0 / 27.0, 1, false).build());
    ctrl.addModifier("svelocity_2", RecipeModifierBuilder.create("modularmachinery:duration", "input", 3000 as double / map["power"].asInt(), 1, false).build());
    ctrl.customData = data;
})
.addItemOutput(<ore:ore_1>)
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val world = ctrl.world;
    val random = world.random;
    val numbers = random.nextInt(0,WeighetSum - 1);
    return oreoutput[numbers];
})
.addRecipeTooltip(
    "在升级总线中放入激光核心运行此配方。",
    "当功率越高，速度越快，但发热同时也越高，耗电越高！",
    "若热量大于100000K，则会停止工作！"
)
.build();

//空气冷却核心
mods.modularmachinery.RecipeBuilder.newBuilder("air_cooling_core", "YMG_Bedrock_Laser_Drills", 1)
.setThreadName(Air_Cooling_String)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    if (map["thermal"].asDouble() <= 300.15){
        event.setFailed("§3冷却完毕");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    map["thermal"] = map["thermal"].asDouble() - 0.2;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "每Tick为核心降温0.2k"
)
.build();

//流体冷却核心-水
mods.modularmachinery.RecipeBuilder.newBuilder("fluid_cooling_core_1", "YMG_Bedrock_Laser_Drills", 1)
.setThreadName(Fluid_Cooling_String)
.addFluidInput(<liquid:water>)
.addFluidOutput(<liquid:steam>)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    if (map["thermal"].asDouble() <= 373.15){
        event.setFailed("§3冷却完毕");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    map["thermal"] = map["thermal"].asDouble() - 1.0;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "当核心温度高于373.15k时为核心降温",
    "每Tick为核心降温1.0k"
)
.build();

//流体冷却核心-蒸馏水
mods.modularmachinery.RecipeBuilder.newBuilder("fluid_cooling_core_2", "YMG_Bedrock_Laser_Drills", 1)
.setThreadName(Fluid_Cooling_String)
.addFluidInput(<liquid:ic2distilled_water>)
.addFluidOutput(<liquid:steam>)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    if (map["thermal"].asDouble() <= 373.15){
        event.setFailed("§3冷却完毕");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    map["thermal"] = map["thermal"].asDouble() - 1.05;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "当核心温度高于373.15k时为核心降温",
    "每Tick为核心降温1.05k"
)
.build();

//流体冷却核心-ic冷却液
mods.modularmachinery.RecipeBuilder.newBuilder("fluid_cooling_core_3", "YMG_Bedrock_Laser_Drills", 1)
.setThreadName(Fluid_Cooling_String)
.addFluidInput(<liquid:ic2coolant>)
.addFluidOutput(<liquid:ic2hot_coolant>)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    if (map["thermal"].asDouble() <= 273.15){
        event.setFailed("§3冷却完毕");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    map["thermal"] = map["thermal"].asDouble() - 10.0;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "当核心温度高于273.15k时为核心降温",
    "每Tick为核心降温10.0k"
)
.build();

//流体冷却核心-极寒之凛冰
mods.modularmachinery.RecipeBuilder.newBuilder("fluid_cooling_core_4", "YMG_Bedrock_Laser_Drills", 1)
.setThreadName(Fluid_Cooling_String)
.addFluidInput(<liquid:cryotheum>)
.addFluidOutput(<liquid:ic2distilled_water>)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    if (map["thermal"].asDouble() <= 133.15){
        event.setFailed("§3冷却完毕");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    map["thermal"] = map["thermal"].asDouble() - 20.0;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "当核心温度高于133.15k时为核心降温",
    "每Tick为核心降温20.0k"
)
.build();

//流体冷却核心-极寒末影
mods.modularmachinery.RecipeBuilder.newBuilder("fluid_cooling_core_5", "YMG_Bedrock_Laser_Drills", 1)
.setThreadName(Fluid_Cooling_String)
.addFluidInput(<liquid:gelid_enderium>)
.addFluidOutput(<liquid:ender>)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    if (map["thermal"].asDouble() <= 50.15){
        event.setFailed("§3冷却完毕");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    map["thermal"] = map["thermal"].asDouble() - 50.0;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "当核心温度高于50.15k时为核心降温",
    "每Tick为核心降温50.0k"
)
.build();

//流体冷却核心-不稳定红石
mods.modularmachinery.RecipeBuilder.newBuilder("fluid_cooling_core_6", "YMG_Bedrock_Laser_Drills", 1)
.setThreadName(Fluid_Cooling_String)
.addFluidInput(<liquid:redstone>)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    if (map["thermal"].asDouble() <= 263.15){
        event.setFailed("§3冷却完毕");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    map["thermal"] = map["thermal"].asDouble() - 12.0;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "当核心温度高于263.15k时为核心降温",
    "每Tick为核心降温12.0k"
)
.build();

//流体冷却核心-谐振魔影珍珠
mods.modularmachinery.RecipeBuilder.newBuilder("fluid_cooling_core_7", "YMG_Bedrock_Laser_Drills", 1)
.setThreadName(Fluid_Cooling_String)
.addFluidInput(<liquid:ender>)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    if (map["thermal"].asDouble() <= 183.15){
        event.setFailed("§3冷却完毕");
    }
})
.addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    map["thermal"] = map["thermal"].asDouble() - 17.5;
    ctrl.customData = data;
})
.addRecipeTooltip(
    "当核心温度高于183.15k时为核心降温",
    "每Tick为核心降温17.5k"
)
.build();

//GUI
MMEvents.onControllerGUIRender("YMG_Bedrock_Laser_Drills", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var info as string[] = [];
    map["thermal"] = isNull(map["thermal"]) ? 300.15 as double : map["thermal"].asDouble();
    map["level"] = isNull(map["level"]) ? 0 as int : map["level"].asInt();
    info += "§c>>";
    info += "§9核心等级：" + Level(map["level"].asInt());
    info += "§9激光功率：§e" + map["power"].asInt() + " §6W";
    info += "§9核心热量：§e" + Percentage(map["thermal"].asDouble()) + " §6K";
    //测试项
    // info += "§4测试数据输出";
    // info += "§9每Tick产生热量：§e" + Percentage(Thermal_Magnification(map["power"].asInt(), map["level"].asInt())) + " §6K";
    // info += "§9每Tick耗电量：§e" + Percentage(Thermal_Magnification(map["power"].asInt(), map["level"].asInt()) * 100.0 / 27.0) + " §6K.RF";
    // if(map["thermal"].asDouble() <= 50000)
    // info += "§9热量影响值：§e1.0 §6x";
    // if(map["thermal"].asDouble() > 50000)
    // info += "§9热量影响值：§e" + Percentage(((map["thermal"].asDouble() - 50000.0) * (map["thermal"].asDouble() - 50000.0) / 400000000.0) + 1.0) + " §6x";
    info += "§c>>";
    ctrl.customData = data;
    event.extraInfo = info;
});


//计算权重总值
function Weight_sum(ore as int[IItemStack]) as int {
    var sum = 0;
    for uselessData,number in ore {
        sum = sum + number;
    }
    return sum as int;
}

//产出表计算
function Ore_output(ore as int[IItemStack]) as IItemStack[] {
    var output_table as IItemStack[] = [];
    for input, number in ore{
        for i in 0 to number
        output_table += input;
    }
    return output_table;
}

//小数点后三位
function Percentage(A as double) as double {
    return ((A * 1000.0) as int) as double / 1000.0;
}

//等级显示
function Level(level as int) as string {
    if(level == 0)
    return "§4激光核心缺失！";
    if(level == 1)
    return "§bLv 1";
    if(level == 2)
    return "§dLv 2";
    return "§cLv 3";
}

//热量倍率
function Thermal_Magnification(power as int,level as int) as double {
    var number = 0 as double;
    if(level == 1){
        if(power <= 14000){
            number = 0.00000003 * power * power;
        }
        if(power > 14000){
            number = 0.00000004 * power * power;
        }
    }
    if(level == 2){
        if(power <= 28000){
            number = 0.00000003 * power * power;
        }
        if(power > 28000){
            number = 0.00000004 * power * power;
        }
    }
    if(level == 3){
        if(power <= 57000){
            number = 0.00000003 * power * power;
        }
        if(power > 57000){
            number = 0.00000004 * power * power;
        }
    }
    return number;
}
