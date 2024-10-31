/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#reloadable

import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.data.IData;

import mods.additionalapi.WorldData;


val SolarSystemData as IData = {
    SolarSystem     :   {
        Sun             :   {isFound    :   false},
        Mercury         :   {isFound    :   false},
        Venus           :   {isFound    :   false},
        EarthSystem     :   {
            Earth           :   {isFound    :    true},
            Moon            :   {isFound    :   false}
        },
        MarsSystem      :   {
            Mars            :   {isFound    :   false},
            Phobos          :   {isFound    :   false},
            Deimos          :   {isFound    :   false}
        },
        JupiterSystem   :   {
            Jupiter         :   {isFound    :   false},
            Io              :   {isFound    :   false},
            Europa          :   {isFound    :   false},
            Ganymede        :   {isFound    :   false},
            Callisto        :   {isFound    :   false},
            Amalthea        :   {isFound    :   false},
            Himalia         :   {isFound    :   false}
        },
        SaturnSystem    :   {
            Saturn          :   {isFound    :   false},
            Mimas           :   {isFound    :   false},
            Enceladus       :   {isFound    :   false},
            Tethys          :   {isFound    :   false},
            Dione           :   {isFound    :   false},
            Rhea            :   {isFound    :   false},
            Titan           :   {isFound    :   false},
            Hyperion        :   {isFound    :   false},
            Iapetus         :   {isFound    :   false},
            Phoebe          :   {isFound    :   false},
            Janus           :   {isFound    :   false}
        },
        UranusSystem    :   {
            Uranus          :   {isFound    :   false},
            Ariel           :   {isFound    :   false},
            Umbriel         :   {isFound    :   false},
            Tatania         :   {isFound    :   false},
            Oberon          :   {isFound    :   false},
            Miranda         :   {isFound    :   false}
        },
        NeptuneSystem   :   {
            Neptune         :   {isFound    :   false},
            Triton          :   {isFound    :   false},
            Nereid          :   {isFound    :   false},
            Naiad           :   {isFound    :   false},
            Thalassa        :   {isFound    :   false},
            Despina         :   {isFound    :   false}
        }
    }
};

val EnergyData as IData = {
    Energy          :   "0"
};

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    val player = event.player;
    if(!WorldData.isArchiveData("PlanetsProgressData", event.player.uuid)){
        WorldData.setArchiveData("PlanetsProgressData", event.player.uuid, SolarSystemData);
    }
    if(!WorldData.isArchiveData("EnergyData", event.player.uuid)){
        WorldData.setArchiveData("EnergyData", event.player.uuid, EnergyData);
    }
});
