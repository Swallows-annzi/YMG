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

import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.SmartInterfaceType;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.IMachineController;

import mods.zenutils.UUID;

import mods.additionalapi.WorldData;


//进度锁
val Progress = true;

//数据端口
MachineModifier.addSmartInterfaceType("YMG_Stars_Booth",
    SmartInterfaceType.create("StarID", 1.0F)
    .setPriority(1)
    .setHeaderInfo("星空指向")
    .setValueInfo("星ID：%.0f")
    .setFooterInfo("请输入您所需指向的ID，并且你需要解锁该进度。")
    .setNotEqualMessage("数据异常！")
);

//数据接口数据写入控制器
MMEvents.onMachinePostTick("YMG_Stars_Booth", function(event as MachineTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val nullable = ctrl.getSmartInterfaceData("StarID");
    val StarID = isNull(nullable) ? 1.0F as float : nullable.value;
    map["StarID"] = StarID as int;
    ctrl.customData = data;
});

mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Stars_Booth_galaxycoordinatecard", "YMG_Stars_Booth", 200)
.addItemInputs(<contenttweaker:commondatamodel>)
.addItemOutput(<contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§c无", "§9所有者：§c无"]}, state: "false"}))
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val world = ctrl.world;
    val PlayerUUID = ctrl.ownerUUID;
    if(!WorldData.isArchiveData("PlanetsProgressData", PlayerUUID))
        return <contenttweaker:commondatamodel>;
    else {
        val data = ctrl.customData;
        val map = data.asMap();
        map["StarID"] = isNull(map["StarID"]) ? 0 as int : map["StarID"].asInt();
        if(StarNumber(map["StarID"].asInt()) != "§c未知！") {
            val PlanetsProgressData as IData = WorldData.getArchiveData("PlanetsProgressData", PlayerUUID);
            val PlanetsProgressMap = PlanetsProgressData.asMap();
            if((!Progress || PlanetsProgressMap.SolarSystem.Sun.isFound == 1) && map["StarID"].asInt() == 1)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Sun", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.Mercury.isFound == 1) && map["StarID"].asInt() == 2)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Mercury", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.Venus.isFound == 1) && map["StarID"].asInt() == 3)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Venus", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.EarthSystem.Earth.isFound == 1) && map["StarID"].asInt() == 4)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Earth", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.EarthSystem.Moon.isFound == 1) && map["StarID"].asInt() == 5)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Moon", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.MarsSystem.Mars.isFound == 1) && map["StarID"].asInt() == 6)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Mars", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.MarsSystem.Phobos.isFound == 1) && map["StarID"].asInt() == 7)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Phobo", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.MarsSystem.Deimos.isFound == 1) && map["StarID"].asInt() == 8)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Deimos", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.AsteroidBelt.isFound == 1) && map["StarID"].asInt() == 9)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "AsteroidBelt", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.JupiterSystem.Jupiter.isFound == 1) && map["StarID"].asInt() == 10)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Jupiter", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.JupiterSystem.Io.isFound == 1) && map["StarID"].asInt() == 11)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Io", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.JupiterSystem.Europa.isFound == 1) && map["StarID"].asInt() == 12)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Europa", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.JupiterSystem.Ganymede.isFound == 1) && map["StarID"].asInt() == 13)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Ganymede", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.JupiterSystem.Callisto.isFound == 1) && map["StarID"].asInt() == 14)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Callisto", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.JupiterSystem.Amalthea.isFound == 1) && map["StarID"].asInt() == 15)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Amalthea", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.JupiterSystem.Himalia.isFound == 1) && map["StarID"].asInt() == 16)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Himalia", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.SaturnSystem.Saturn.isFound == 1) && map["StarID"].asInt() == 17)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Saturn", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.SaturnSystem.Mimas.isFound == 1) && map["StarID"].asInt() == 18)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Mimas", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.SaturnSystem.Enceladus.isFound == 1) && map["StarID"].asInt() == 19)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Enceladus", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.SaturnSystem.Tethys.isFound == 1) && map["StarID"].asInt() == 20)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Tethys", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.SaturnSystem.Dione.isFound == 1) && map["StarID"].asInt() == 21)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Dione", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.SaturnSystem.Rhea.isFound == 1) && map["StarID"].asInt() == 22)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Rhea", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.SaturnSystem.Titan.isFound == 1) && map["StarID"].asInt() == 23)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Titan", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.SaturnSystem.Hyperion.isFound == 1) && map["StarID"].asInt() == 24)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Hyperion", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.SaturnSystem.Iapetus.isFound == 1) && map["StarID"].asInt() == 25)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Iapetus", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.SaturnSystem.Phoebe.isFound == 1) && map["StarID"].asInt() == 26)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Phoebe", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.SaturnSystem.Janus.isFound == 1) && map["StarID"].asInt() == 27)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Janus", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.UranusSystem.Uranus.isFound == 1) && map["StarID"].asInt() == 28)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Uranus", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.UranusSystem.Ariel.isFound == 1) && map["StarID"].asInt() == 29)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Ariel", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.UranusSystem.Umbriel.isFound == 1) && map["StarID"].asInt() == 30)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Umbriel", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.UranusSystem.Tatania.isFound == 1) && map["StarID"].asInt() == 31)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Tatania", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.UranusSystem.Oberon.isFound == 1) && map["StarID"].asInt() == 32)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Oberon", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.UranusSystem.Miranda.isFound == 1) && map["StarID"].asInt() == 33)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Miranda", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.NeptuneSystem.Neptune.isFound == 1) && map["StarID"].asInt() == 34)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Neptune", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.NeptuneSystem.Triton.isFound == 1) && map["StarID"].asInt() == 35)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Triton", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.NeptuneSystem.Nereid.isFound == 1) && map["StarID"].asInt() == 36)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Nereid", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.NeptuneSystem.Naiad.isFound == 1) && map["StarID"].asInt() == 37)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Naiad", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.NeptuneSystem.Thalassa.isFound == 1) && map["StarID"].asInt() == 38)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Thalassa", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.NeptuneSystem.Despina.isFound == 1) && map["StarID"].asInt() == 39)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "Despina", playeruuid: PlayerUUID});
            if((!Progress || PlanetsProgressMap.SolarSystem.KuiperBelt.isFound == 1) && map["StarID"].asInt() == 40)
                return <contenttweaker:galaxycoordinatecard>.withTag({display: {Lore: ["§9星球：§e" + StarNumber(map["StarID"].asInt())]}, state: "true", name: "KuiperBelt", playeruuid: PlayerUUID});
            else
                return <contenttweaker:commondatamodel>;
        }
        else
            return <contenttweaker:commondatamodel>;
    }
})
.build();

//GUI
MMEvents.onControllerGUIRender("YMG_Stars_Booth", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["StarID"] = isNull(map["StarID"]) ? 0 as int : map["StarID"].asInt();
    var info as string[] = [];
    info += "§a>>";
    info += "§9指向：§6" + StarNumber(map["StarID"].asInt()) + "§r";
    info += "§a>>";
    // info += data;
    event.extraInfo = info;
});

//目标ID及其编码
function StarNumber(StarID as int) as string {
    val StarStr as string[] = [
        "太阳","水星","金星","地球","月球",
        "火星","火卫一","火卫二","小行星带",
        "木星","木卫一","木卫二","木卫三","木卫四","木卫五","木卫六",
        "土星","土卫一","土卫二","土卫三","土卫四","土卫五","土卫六","土卫七","土卫八","土卫九","土卫十",
        "天王星","天卫一","天卫二","天卫三","天卫四","天卫五",
        "海王星","海卫一","海卫二","海卫三","海卫四","海卫五",
        "柯伊伯带"
    ];
    if(StarID <= StarStr.length)
        return StarStr[StarID - 1];
    else
        return "§c未知！";
}
