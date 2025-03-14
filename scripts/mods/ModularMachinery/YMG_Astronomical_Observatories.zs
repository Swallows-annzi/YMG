/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

import mods.zenutils.UUID;

import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.IMachineController;
import mods.modularmachinery.RecipeTickEvent;

import mods.additionalapi.WorldData;


mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Astronomical_Observatories_Starry_Sky", "YMG_Astronomical_Observatories", 200)
.addEnergyPerTickInput(50000000)
.addItemInputs([
    <contenttweaker:commondatamodel>
])
.addFluidInput(<liquid:isaac_newton> * 16000)
.addPreTickHandler(function(event as RecipeTickEvent) {
    val ctrl = event.controller;
    val world = ctrl.world;
    val worldtime = world.provider.worldTime % 24000;
    if(worldtime <= 13800 || worldtime > 22200 || ctrl.world.isRaining()){
        event.setFailed(false, "§c§l只在晴朗的深夜工作！");
    }
    val data = ctrl.customData;
    val map = data.asMap();
    ctrl.customData = data;
})
.addItemOutput(<contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§c无", "§9所有者：§c无"]}, state: "false"}))
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val world = ctrl.world;
    val PlayerUUID = ctrl.ownerUUID;
    val PlayerName = world.getPlayerByUUID(UUID.fromString(PlayerUUID)).name;
    val numbers = world.random.nextInt(0,199);
    if(numbers == 0){
        return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e水星", "§9所有者：§b" + PlayerName + "§r"]}, state: "true", name: "Mercury", playeruuid: PlayerUUID});
    }
    if(numbers == 1){
        return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e金星", "§9所有者：§b" + PlayerName + "§r"]}, state: "true", name: "Venus", playeruuid: PlayerUUID});
    }
    if(2 <= numbers && numbers < 12){
        return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e月球", "§9所有者：§b" + PlayerName + "§r"]}, state: "true", name: "Moon", playeruuid: PlayerUUID});
    }
    if(numbers == 13){
        return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e火星", "§9所有者：§b" + PlayerName + "§r"]}, state: "true", name: "Mars", playeruuid: PlayerUUID});
    }
    if(numbers == 14){
        return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e木星", "§9所有者：§b" + PlayerName + "§r"]}, state: "true", name: "Jupiter", playeruuid: PlayerUUID});
    }
    if(numbers == 15){
        return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e土星", "§9所有者：§b" + PlayerName + "§r"]}, state: "true", name: "Saturn", playeruuid: PlayerUUID});
    }
    if(numbers == 16){
        return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e土星", "§9所有者：§b" + PlayerName + "§r"]}, state: "true", name: "AsteroidBelt", playeruuid: PlayerUUID});
    }
    else{
        // return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§c未发现", "§9所有者：§b" + PlayerName]}, state: "false", name: "null", playeruuid: PlayerUUID});
        return <contenttweaker:commondatamodel>;
    }
})
.build();

//GUI
MMEvents.onControllerGUIRender("YMG_Astronomical_Observatories", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var info as string[] = [];
    info += "§c>>";
    info += "§9§l世界时间：" + TimeString(ctrl.world.provider.worldTime % 24000) + Weather(ctrl.world.isRaining());
    // info += "§9§l世界时间：§b§l" + ctrl.world.provider.worldTime % 24000;
    // info += WorldData.getArchiveData("PlanetsProgressData", ctrl.ownerUUID).asString();
    info += "§c>>";
    ctrl.customData = data;
    event.extraInfo = info;
});

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