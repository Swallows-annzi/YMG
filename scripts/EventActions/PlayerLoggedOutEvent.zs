/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#reloadable

import crafttweaker.event.PlayerLoggedOutEvent;

import mods.additionalapi.WorldData;


// 服务器跨区-登出保存
events.onPlayerLoggedOut(function(event as PlayerLoggedOutEvent){
    val Player = event.player;
    val PlayerData = WorldData.getArchiveData("PlanetsProgressData", Player.uuid);
    Player.update(PlayerData);
});