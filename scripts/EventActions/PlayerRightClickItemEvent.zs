/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#reloadable

import crafttweaker.event.PlayerRightClickItemEvent;

events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent){
    val player = event.player;
    if(!event.world.remote && !isNull(event.item) && event.item.definition.id == "contenttweaker:mooncakes_box"){
        player.currentItem.mutable().withAmount(player.currentItem.amount - 1);
        player.sendStatusMessage("#FF712A§l中秋快乐！！", false);
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
