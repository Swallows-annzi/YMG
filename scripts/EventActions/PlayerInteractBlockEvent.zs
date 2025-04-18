/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#reloadable

import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.data.IData;

import mods.zenutils.UUID;

import mods.additionalapi.WorldData;


//坐标卡绑定
events.onPlayerRightClickBlock(function(event as PlayerInteractBlockEvent){
    val PosX  = event.position.x;
    val PosY  = event.position.y;
    val PosZ  = event.position.z;
    val item = event.item;
    if(!event.world.remote && !isNull(item) && item.definition.id == "contenttweaker:commondatamodelpos"){
        item.mutable().updateTag({ench: [{lvl: 100 as short, id: 100 as short}], display: {Lore: ["§9x坐标：§e" + PosX, "§9y坐标：§e" + PosY, "§9z坐标：§e" + PosZ]}, x: PosX, y: PosY, z: PosZ, state: "true"});
        event.cancel();
    } 
});

//辉光粉限制
events.onPlayerRightClickBlock(function(event as PlayerInteractBlockEvent){
    val item = event.item;
    if(!event.world.remote && <astralsorcery:itemusabledust>.matches(item)){
        if(event.player.isSneaking || event.block.definition.id != "astralsorcery:blockattunementrelay"){
            event.player.sendStatusMessage("§c§l辉光粉只能放于星辉转继器中！", false);
            event.cancel();
        }
    } 
});

//11号唱片限制
// events.onPlayerRightClickBlock(function(event as PlayerInteractBlockEvent){
//     val item = event.item;
//     if(!event.world.remote && <minecraft:record_11>.matches(item)){
//         if(event.block.definition.id == "actuallyadditions:block_atomic_reconstructor"){
//             event.player.sendStatusMessage("§c§l这样做是駄目ですよ！", false);
//             event.cancel();
//         }
//     } 
// });

//获取自己的UUID对应的星系Data
events.onPlayerRightClickBlock(function(event as PlayerInteractBlockEvent){
    val item = event.item;
    if(!event.world.remote && !isNull(item) && item.definition.id == "contenttweaker:admintool_1"){
        val data as IData = WorldData.getArchiveData("PlanetsProgressData", event.player.uuid);
        val map = data.asMap();
        val SolarSystem = map["SolarSystem"].asMap();
        val Sun = SolarSystem["Sun"].asMap();
        val Mercury = SolarSystem["Mercury"].asMap();
        val Venus = SolarSystem["Venus"].asMap();
        val EarthSystem = SolarSystem["EarthSystem"].asMap();
        val Earth = EarthSystem["Earth"].asMap();
        val Moon = EarthSystem["Moon"].asMap();
        val MarsSystem = SolarSystem["MarsSystem"].asMap();
        val Mars = MarsSystem["Mars"].asMap();
        val Phobos = MarsSystem["Phobos"].asMap();
        val Deimos = MarsSystem["Deimos"].asMap();
        val JupiterSystem = SolarSystem["JupiterSystem"].asMap();
        val Jupiter = JupiterSystem["Jupiter"].asMap();
        val Io = JupiterSystem["Io"].asMap();
        val Europa = JupiterSystem["Europa"].asMap();
        val Ganymede = JupiterSystem["Ganymede"].asMap();
        val Callisto = JupiterSystem["Callisto"].asMap();
        val Amalthea = JupiterSystem["Amalthea"].asMap();
        val Himalia = JupiterSystem["Himalia"].asMap();
        val SaturnSystem = SolarSystem["SaturnSystem"].asMap();
        val Saturn = SaturnSystem["Saturn"].asMap();
        val Mimas = SaturnSystem["Mimas"].asMap();
        val Enceladus = SaturnSystem["Enceladus"].asMap();
        val Tethys = SaturnSystem["Tethys"].asMap();
        val Dione = SaturnSystem["Dione"].asMap();
        val Rhea = SaturnSystem["Rhea"].asMap();
        val Titan = SaturnSystem["Titan"].asMap();
        val Hyperion = SaturnSystem["Hyperion"].asMap();
        val Iapetus = SaturnSystem["Iapetus"].asMap();
        val Phoebe = SaturnSystem["Phoebe"].asMap();
        val Janus = SaturnSystem["Janus"].asMap();
        val UranusSystem = SolarSystem["UranusSystem"].asMap();
        val Uranus = UranusSystem["Uranus"].asMap();
        val Ariel = UranusSystem["Ariel"].asMap();
        val Umbriel = UranusSystem["Umbriel"].asMap();
        val Tatania = UranusSystem["Tatania"].asMap();
        val Oberon = UranusSystem["Oberon"].asMap();
        val Miranda = UranusSystem["Miranda"].asMap();
        val NeptuneSystem = SolarSystem["NeptuneSystem"].asMap();
        val Neptune = NeptuneSystem["Neptune"].asMap();
        val Triton = NeptuneSystem["Triton"].asMap();
        val Nereid = NeptuneSystem["Nereid"].asMap();
        val Naiad = NeptuneSystem["Naiad"].asMap();
        val Thalassa = NeptuneSystem["Thalassa"].asMap();
        val Despina = NeptuneSystem["Despina"].asMap();
        val AsteroidBelt = SolarSystem["AsteroidBelt"].asMap();
        val KuiperBelt = SolarSystem["KuiperBelt"].asMap();
        event.player.sendStatusMessage("§9" + event.player.name + "§5 的 §6星系进度§b：", false);
        event.player.sendStatusMessage(
            "§6太阳系：" +
            "§e----§d太阳§e----§d：" + isFound(Sun["isFound"].asBool()) +
            "§e----§d水星§e----§d：" + isFound(Mercury["isFound"].asBool()) +
            "§e----§d金星§e----§d：" + isFound(Venus["isFound"].asBool()) +
            "\n§6太阳系-地月系：" +
            "§e----§d地球§e----§d：" + isFound(Earth["isFound"].asBool()) +
            "§e----§d月球§e----§d：" + isFound(Moon["isFound"].asBool()) +
            "\n§6太阳系-火星系：" +
            "§e----§d火星§e----§d：" + isFound(Mars["isFound"].asBool()) +
            "§e----§d火卫一§e----§d：" + isFound(Phobos["isFound"].asBool()) +
            "§e----§d火卫二§e----§d：" + isFound(Deimos["isFound"].asBool()) +
            "\n§6太阳系-木星系：" +
            "§e----§d木星§e----§d：" + isFound(Jupiter["isFound"].asBool()) +
            "§e----§d木卫一§e----§d：" + isFound(Io["isFound"].asBool()) +
            "§e----§d木卫二§e----§d：" + isFound(Europa["isFound"].asBool()) +
            "\n§e----§d木卫三§e----§d：" + isFound(Ganymede["isFound"].asBool()) +
            "§e----§d木卫四§e----§d：" + isFound(Callisto["isFound"].asBool()) +
            "§e----§d木卫五§e----§d：" + isFound(Amalthea["isFound"].asBool()) +
            "§e----§d木卫六§e----§d：" + isFound(Himalia["isFound"].asBool()) +
            "\n§6太阳系-土星系：" +
            "§e----§d土星§e----§d：" + isFound(Saturn["isFound"].asBool()) +
            "§e----§d土卫一§e----§d：" + isFound(Mimas["isFound"].asBool()) +
            "§e----§d土卫二§e----§d：" + isFound(Enceladus["isFound"].asBool()) +
            "\n§e----§d土卫三§e----§d：" + isFound(Tethys["isFound"].asBool()) +
            "§e----§d土卫四§e----§d：" + isFound(Dione["isFound"].asBool()) +
            "§e----§d土卫五§e----§d：" + isFound(Rhea["isFound"].asBool()) +
            "§e----§d土卫六§e----§d：" + isFound(Titan["isFound"].asBool()) +
            "\n§e----§d土卫七§e----§d：" + isFound(Hyperion["isFound"].asBool()) +
            "§e----§d土卫八§e----§d：" + isFound(Iapetus["isFound"].asBool()) +
            "§e----§d土卫九§e----§d：" + isFound(Phoebe["isFound"].asBool()) +
            "§e----§d土卫十§e----§d：" + isFound(Janus["isFound"].asBool()) +
            "\n§6太阳系-天王星系：" +
            "§e----§d天王星§e----§d：" + isFound(Uranus["isFound"].asBool()) +
            "§e----§d天卫一§e----§d：" + isFound(Ariel["isFound"].asBool()) +
            "§e----§d天卫二§e----§d：" + isFound(Umbriel["isFound"].asBool()) +
            "\n§e----§d天卫三§e----§d：" + isFound(Tatania["isFound"].asBool()) +
            "§e----§d天卫四§e----§d：" + isFound(Oberon["isFound"].asBool()) + 
            "§e----§d天卫五§e----§d：" + isFound(Miranda["isFound"].asBool()) +
            "\n§6太阳系-海王星系：" +
            "§e----§d海王星§e----§d：" + isFound(Neptune["isFound"].asBool()) +
            "§e----§d海卫一§e----§d：" + isFound(Triton["isFound"].asBool()) +
            "§e----§d海卫二§e----§d：" + isFound(Nereid["isFound"].asBool()) +
            "\n§e----§d海卫三§e----§d：" + isFound(Naiad["isFound"].asBool()) +
            "§e----§d海卫四§e----§d：" + isFound(Thalassa["isFound"].asBool()) +
            "§e----§d海卫五§e----§d：" + isFound(Despina["isFound"].asBool()) +
            "\n§e----§d小行星带§e----§d：" + isFound(AsteroidBelt["isFound"].asBool()) +
            "\n§e----§d柯伊伯带§e----§d：" + isFound(KuiperBelt["isFound"].asBool())
            , false
        );
        // event.player.sendStatusMessage(
        //     "§e----§d太阳§e----§b人造卫星：§f" + Sun["Sputnik"].asString() + " " +
        //     "§e----§d水星§e----§b人造卫星：§f" + Mercury["Sputnik"].asString() + " " +
        //     "§e----§d金星§e----§b人造卫星：§f" + Venus["Sputnik"].asString() + " " +
        //     "§e----§d地球§e----§b人造卫星：§f" + Earth["Sputnik"].asString() + " " +
        //     "§e----§d月球§e----§b人造卫星：§f" + Moon["Sputnik"].asString() + " " +
        //     "§e----§d火星§e----§b人造卫星：§f" + Mars["Sputnik"].asString() + " " +
        //     "§e----§d火卫一§e----§b人造卫星：§f" + Phobos["Sputnik"].asString() + " " +
        //     "§e----§d火卫二§e----§b人造卫星：§f" + Deimos["Sputnik"].asString() + " " +
        //     "§e----§d木星§e----§b人造卫星：§f" + Jupiter["Sputnik"].asString() + " " +
        //     "§e----§d木卫一§e----§b人造卫星：§f" + Io["Sputnik"].asString() + " " +
        //     "§e----§d木卫二§e----§b人造卫星：§f" + Europa["Sputnik"].asString() + " " +
        //     "§e----§d木卫三§e----§b人造卫星：§f" + Ganymede["Sputnik"].asString() + " " +
        //     "§e----§d木卫四§e----§b人造卫星：§f" + Callisto["Sputnik"].asString() + " " +
        //     "§e----§d木卫五§e----§b人造卫星：§f" + Amalthea["Sputnik"].asString() + " " +
        //     "§e----§d木卫六§e----§b人造卫星：§f" + Himalia["Sputnik"].asString() + " " +
        //     "§e----§d土星§e----§b人造卫星：§f" + Saturn["Sputnik"].asString() + " " +
        //     "§e----§d土卫一§e----§b人造卫星：§f" + Mimas["Sputnik"].asString() + " " +
        //     "§e----§d土卫二§e----§b人造卫星：§f" + Enceladus["Sputnik"].asString() + " " +
        //     "§e----§d土卫三§e----§b人造卫星：§f" + Tethys["Sputnik"].asString() + " " +
        //     "§e----§d土卫四§e----§b人造卫星：§f" + Dione["Sputnik"].asString() + " " +
        //     "§e----§d土卫五§e----§b人造卫星：§f" + Rhea["Sputnik"].asString() + " " +
        //     "§e----§d土卫六§e----§b人造卫星：§f" + Titan["Sputnik"].asString() + " " +
        //     "§e----§d土卫七§e----§b人造卫星：§f" + Hyperion["Sputnik"].asString() + " " +
        //     "§e----§d土卫八§e----§b人造卫星：§f" + Iapetus["Sputnik"].asString() + " " +
        //     "§e----§d土卫九§e----§b人造卫星：§f" + Phoebe["Sputnik"].asString() + " " +
        //     "§e----§d土卫十§e----§b人造卫星：§f" + Janus["Sputnik"].asString() + " " +
        //     "§e----§d天王星§e----§b人造卫星：§f" + Uranus["Sputnik"].asString() + " " +
        //     "§e----§d天卫一§e----§b人造卫星：§f" + Ariel["Sputnik"].asString() + " " +
        //     "§e----§d天卫二§e----§b人造卫星：§f" + Umbriel["Sputnik"].asString() + " " +
        //     "§e----§d天卫三§e----§b人造卫星：§f" + Tatania["Sputnik"].asString() + " " +
        //     "§e----§d天卫四§e----§b人造卫星：§f" + Oberon["Sputnik"].asString() + " " +
        //     "§e----§d天卫五§e----§b人造卫星：§f" + Miranda["Sputnik"].asString() + " " +
        //     "§e----§d海王星§e----§b人造卫星：§f" + Neptune["Sputnik"].asString() + " " +
        //     "§e----§d海卫一§e----§b人造卫星：§f" + Triton["Sputnik"].asString() + " " +
        //     "§e----§d海卫二§e----§b人造卫星：§f" + Nereid["Sputnik"].asString() + " " +
        //     "§e----§d海卫三§e----§b人造卫星：§f" + Naiad["Sputnik"].asString() + " " +
        //     "§e----§d海卫四§e----§b人造卫星：§f" + Thalassa["Sputnik"].asString() + " " +
        //     "§e----§d海卫五§e----§b人造卫星：§f" + Despina["Sputnik"].asString()
        //     , false
        // );
        event.cancel();
    }
});


//获取自己的UUID对应的无线电量
events.onPlayerRightClickBlock(function(event as PlayerInteractBlockEvent){
    val item = event.item;
    if(!event.world.remote && !isNull(item) && item.definition.id == "contenttweaker:admintool_2"){
        val data as IData = WorldData.getArchiveData("EnergyData", event.player.uuid);
        val map = data.asMap();
            event.player.sendStatusMessage("§9" + event.player.name + "§5 的 §6无线网能量§b：§d§l" + map["Energy"].asString(), false);
            event.player.sendStatusMessage("§9" + event.player.name + "§5 的 §6未扣除能量§b：§d§l" + map["Deduct"].asString(), false);
            event.player.sendStatusMessage("§6是否私人网络§b：§d§l" + map["isPrivate"].asString(), false);
            event.player.sendStatusMessage("§6主网络玩家UUID§b：§d§l" + map["TargetUUID"].asString(), false);
            // val TargetData as IData = WorldData.getArchiveData("EnergyData", map["TargetUUID"].asString());
            // val TargetMap = TargetData.asMap();
            // event.player.sendStatusMessage("§9" + event.world.getPlayerByUUID(UUID.fromString(map["TargetUUID"].asString())).name + "§5 的 §6无线网能量§b：§d§l" + TargetMap["Energy"].asString(), false);
        event.cancel();
    } 
});


//发现判断
function isFound(Found as bool) as string {
    if(Found)
        return "§a已发现 ";
    return "§c未发现 ";
}