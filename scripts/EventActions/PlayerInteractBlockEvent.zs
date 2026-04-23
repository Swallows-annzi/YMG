/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#reloadable

#priority 50
#loader crafttweaker reloadable

import crafttweaker.event.PlayerInteractBlockEvent;


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
