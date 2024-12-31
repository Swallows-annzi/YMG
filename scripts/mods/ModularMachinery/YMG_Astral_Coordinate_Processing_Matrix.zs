/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;

import mods.zenutils.UUID;

import mods.modularmachinery.IMachineController;
import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;

import mods.additionalapi.WorldData;


//线程设置
MachineModifier.setMaxThreads("YMG_Astral_Coordinate_Processing_Matrix", 0);

val Energy_Core_String = "§d§l数据处理中枢§r";
MachineModifier.addCoreThread("YMG_Astral_Coordinate_Processing_Matrix", FactoryRecipeThread.createCoreThread(Energy_Core_String));
//输出姬
val Processing_Core_String = "§d§l坐标输入中枢§r";
MachineModifier.addCoreThread("YMG_Astral_Coordinate_Processing_Matrix", FactoryRecipeThread.createCoreThread(Processing_Core_String));

//数据处理
mods.modularmachinery.RecipeBuilder.newBuilder("processing_core", "YMG_Astral_Coordinate_Processing_Matrix", 1200)
.setThreadName(Energy_Core_String)
.addEnergyPerTickInput(80000000)
.addPreCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Key"] = isNull(map["Key"]) ? "null" as string : map["Key"].asString();
    if(map["Key"].asString() == "null")
    event.setFailed("§a§l待机");
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val PlayerData = WorldData.getArchiveData("PlanetsProgressData", ctrl.ownerUUID);
    map["Key"] = isNull(map["Key"]) ? "null" as string : map["Key"].asString();
    if(map["Key"].asString() == "Mercury")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{Mercury:{isFound:true}}} as IData);
    if(map["Key"].asString() == "Venus")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{Venus:{isFound:true}}} as IData);
    if(map["Key"].asString() == "Moon")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{EarthSystem:{Moon:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Mars")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{MarsSystem:{Mars:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Phobos")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{MarsSystem:{Phobos:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Deimos")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{MarsSystem:{Deimos:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Jupiter")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{JupiterSystem:{Jupiter:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Io")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{JupiterSystem:{Io:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Europa")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{JupiterSystem:{Europa:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Ganymede")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{JupiterSystem:{Ganymede:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Callisto")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{JupiterSystem:{Callisto:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Amalthea")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{JupiterSystem:{Amalthea:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Himalia")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{JupiterSystem:{Himalia:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Saturn")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{SaturnSystem:{Saturn:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Mimas")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{SaturnSystem:{Mimas:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Enceladus")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{SaturnSystem:{Enceladus:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Tethys")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{SaturnSystem:{Tethys:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Dione")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{SaturnSystem:{Dione:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Rhea")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{SaturnSystem:{Rhea:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Titan")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{SaturnSystem:{Titan:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Hyperion")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{SaturnSystem:{Hyperion:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Iapetus")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{SaturnSystem:{Iapetus:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Phoebe")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{SaturnSystem:{Phoebe:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Janus")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{SaturnSystem:{Janus:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Uranus")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{UranusSystem:{Uranus:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Ariel")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{UranusSystem:{Ariel:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Umbriel")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{UranusSystem:{Umbriel:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Tatania")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{UranusSystem:{Tatania:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Oberon")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{UranusSystem:{Oberon:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Miranda")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{UranusSystem:{Miranda:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Neptune")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{NeptuneSystem:{Neptune:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Triton")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{NeptuneSystem:{Triton:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Nereid")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{NeptuneSystem:{Nereid:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Naiad")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{NeptuneSystem:{Naiad:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Thalassa")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{NeptuneSystem:{Thalassa:{isFound:true}}}} as IData);
    if(map["Key"].asString() == "Despina")
        WorldData.setArchiveData("PlanetsProgressData", ctrl.ownerUUID, PlayerData + {SolarSystem:{NeptuneSystem:{Despina:{isFound:true}}}} as IData);
    map["Key"] = "null";
    ctrl.customData = data;
})
.build();

//星系卡读取
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Astral_Coordinate_Processing_Matrix_Input", "YMG_Astral_Coordinate_Processing_Matrix", 60)
.setThreadName(Processing_Core_String)
.addItemInput(<contenttweaker:galaxycoordinatecard>)
.setNBTChecker(function(ctrl as IMachineController, item as IItemStack) {
    val nbt = item.tag.asMap();
    if(nbt.state == "false")
        return false;
    if(nbt.playeruuid != ctrl.ownerUUID)
        return false;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Key"] = isNull(map["Key"]) ? "null" as string : map["Key"].asString();
    map["Key"] = nbt.name;
    ctrl.customData = data;
    return true;
})
.addItemOutput(<contenttweaker:commondatamodel>)
.build();


//GUI
MMEvents.onControllerGUIRender("YMG_Astral_Coordinate_Processing_Matrix", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var info as string[] = [];
    info += "§c>>";
    info += "§9拥有玩家：§e" + ctrl.world.getPlayerByUUID(UUID.fromString(ctrl.ownerUUID)).name;
    info += "§c>>";
    // info += data;
    // info += WorldData.getArchiveData("PlanetsProgressData", ctrl.ownerUUID);
    event.extraInfo = info;
});