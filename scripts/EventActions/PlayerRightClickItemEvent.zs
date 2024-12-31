/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#reloadable

import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.data.IData;

import mods.additionalapi.WorldData;


//月饼解包
events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent){
    val player = event.player;
    if(!event.world.remote && !isNull(event.item) && event.item.definition.id == "contenttweaker:mooncakes_box"){
        player.currentItem.mutable().withAmount(player.currentItem.amount - 1);
        player.sendStatusMessage("§l中秋快乐！！", false);
        val randomInt = event.world.random.nextInt(0,5);
        if(randomInt == 0)
        player.give(<contenttweaker:mooncakes_1>);
        if(randomInt == 1)
        player.give(<contenttweaker:mooncakes_2>);
        if(randomInt == 2)
        player.give(<contenttweaker:mooncakes_3>);
        if(randomInt == 3)
        player.give(<contenttweaker:mooncakes_4>);
        if(randomInt == 4)
        player.give(<contenttweaker:mooncakes_5>);
        if(randomInt == 5)
        player.give(<contenttweaker:mooncakes_6>);
        if(event.world.random.nextInt(0,399) == 0)
        player.give(<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.horologium", crystalProperties: {collectiveCapability: 200, size: 1500, fract: 0, purity: 200, sizeOverride: -1}}}));
    }
});


//星系进度同步卡
events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent){
    if(!event.world.remote && !isNull(event.item) && event.item.definition.id == "contenttweaker:galaxy_sync_card_1"){
        val Player = event.player;
        if(event.item.tag.state.asString() == "true"){
            if(event.item.tag.playeruuid == Player.uuid){
                Player.sendStatusMessage("§c接收者与提供者相同！§r", false);
                return;
            }
            Player.sendStatusMessage("§9您是进度提供者：§e" + Player.name + "§r", false);
            val data as IData = WorldData.getArchiveData("PlanetsProgressData", event.player.uuid);
            WorldData.setArchiveData("PlanetsProgressData", event.item.tag.playeruuid, data);
            Player.sendStatusMessage("§c同步成功！", false);
            Player.currentItem.mutable().withAmount(Player.currentItem.amount - 1);
            return;
        }
        if(event.item.tag.state.asString() == "false"){
            event.item.mutable().withTag({ench: [{lvl: 100 as short, id: 100 as short}], display: {Lore: ["§9进度接收者：§e" + Player.name + "§r"]}, playeruuid: Player.uuid, state: "true"});
            Player.sendStatusMessage("§9您是进度接受者：§e" + Player.name + "§r", false);
        }
        // Player.sendStatusMessage(event.item.tag, false);
    }
});

//星系进度跨区同步卡
events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent){
    if(!event.world.remote && !isNull(event.item) && event.item.definition.id == "contenttweaker:galaxy_sync_card_2"){
        val Player = event.player;
        if(event.item.tag.state.asString() == "true"){
            if(event.item.tag.playeruuid != Player.uuid){
                Player.sendStatusMessage("§c此卡不属于你！§r", false);
                return;
            }
            WorldData.setArchiveData("PlanetsProgressData", Player.uuid, event.item.tag.data);
            Player.sendStatusMessage("§c同步成功！", false);
            Player.currentItem.mutable().withAmount(Player.currentItem.amount - 1);
            return;
        }
        if(event.item.tag.state.asString() == "false"){
            event.item.mutable().withTag({ench: [{lvl: 100 as short, id: 100 as short}], display: {Lore: ["§9拥有者：§e" + Player.name + "§r"]}, playeruuid: Player.uuid, data: WorldData.getArchiveData("PlanetsProgressData", Player.uuid), state: "true"});
            Player.sendStatusMessage("§9使用者：§e" + Player.name + " §c进度保存成功！§r", false);
        }
        // Player.sendStatusMessage(event.item.tag, false);
    }
});

// events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent){
//     if(!event.world.remote && !isNull(event.item) && event.item.definition.id == "minecraft:stick"){
//         val Player = event.player;
//         // val PlayerSolarSystemData = Player.data;
//         val PlayerSolarSystemData as IData = {
//             SolarSystem : Player.data.SolarSystem
//         };
//         Player.sendStatusMessage(PlayerSolarSystemData, false);
//     }
// });

