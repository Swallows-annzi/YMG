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
        Sun             :   {isFound    :   false, Sputnik    :   {key:1}},
        Mercury         :   {isFound    :   false, Sputnik    :   {key:2}},
        Venus           :   {isFound    :   false, Sputnik    :   {key:3}},
        EarthSystem     :   {
            Earth           :   {isFound    :    true, Sputnik    :   {key:4}},
            Moon            :   {isFound    :   false, Sputnik    :   {key:5}}
        },
        MarsSystem      :   {
            Mars            :   {isFound    :   false, Sputnik    :   {key:6}},
            Phobos          :   {isFound    :   false, Sputnik    :   {key:7}},
            Deimos          :   {isFound    :   false, Sputnik    :   {key:8}}
        },
        JupiterSystem   :   {
            Jupiter         :   {isFound    :   false, Sputnik    :   {key:9}},
            Io              :   {isFound    :   false, Sputnik    :   {key:10}},
            Europa          :   {isFound    :   false, Sputnik    :   {key:11}},
            Ganymede        :   {isFound    :   false, Sputnik    :   {key:12}},
            Callisto        :   {isFound    :   false, Sputnik    :   {key:13}},
            Amalthea        :   {isFound    :   false, Sputnik    :   {key:14}},
            Himalia         :   {isFound    :   false, Sputnik    :   {key:15}}
        },
        SaturnSystem    :   {
            Saturn          :   {isFound    :   false, Sputnik    :   {key:16}},
            Mimas           :   {isFound    :   false, Sputnik    :   {key:17}},
            Enceladus       :   {isFound    :   false, Sputnik    :   {key:18}},
            Tethys          :   {isFound    :   false, Sputnik    :   {key:19}},
            Dione           :   {isFound    :   false, Sputnik    :   {key:20}},
            Rhea            :   {isFound    :   false, Sputnik    :   {key:21}},
            Titan           :   {isFound    :   false, Sputnik    :   {key:22}},
            Hyperion        :   {isFound    :   false, Sputnik    :   {key:23}},
            Iapetus         :   {isFound    :   false, Sputnik    :   {key:24}},
            Phoebe          :   {isFound    :   false, Sputnik    :   {key:25}},
            Janus           :   {isFound    :   false, Sputnik    :   {key:26}}
        },
        UranusSystem    :   {
            Uranus          :   {isFound    :   false, Sputnik    :   {key:27}},
            Ariel           :   {isFound    :   false, Sputnik    :   {key:28}},
            Umbriel         :   {isFound    :   false, Sputnik    :   {key:29}},
            Tatania         :   {isFound    :   false, Sputnik    :   {key:30}},
            Oberon          :   {isFound    :   false, Sputnik    :   {key:31}},
            Miranda         :   {isFound    :   false, Sputnik    :   {key:32}}
        },
        NeptuneSystem   :   {
            Neptune         :   {isFound    :   false, Sputnik    :   {key:33}},
            Triton          :   {isFound    :   false, Sputnik    :   {key:34}},
            Nereid          :   {isFound    :   false, Sputnik    :   {key:35}},
            Naiad           :   {isFound    :   false, Sputnik    :   {key:36}},
            Thalassa        :   {isFound    :   false, Sputnik    :   {key:37}},
            Despina         :   {isFound    :   false, Sputnik    :   {key:38}}
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
