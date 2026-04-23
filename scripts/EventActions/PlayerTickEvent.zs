/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#reloadable

#priority 50
#loader crafttweaker reloadable

import crafttweaker.event.PlayerTickEvent;
import crafttweaker.item.IItemStack;

import scripts.RemoveItem;


events.onPlayerTick(function(event as PlayerTickEvent){
    val player = event.player;
    if(player.creative || player.spectator){
        return;
    }
    val heldItem1 = player.currentItem;
    val heldItem2 = player.offHandHeldItem;
    if(isNull(heldItem1) && isNull(heldItem2)){
        return;
    }
    for Item in RemoveItem.getRemoveItems_BAN() as IItemStack[] {
        if(!isNull(heldItem1) && heldItem1.definition.id == Item.definition.id && heldItem1.damage == Item.damage){
            player.currentItem.mutable().withAmount(0);
            player.sendStatusMessage("§c该物品在生存 / 冒险模式下禁用", false);
            break;
        }
        if(!isNull(heldItem2) && heldItem2.definition.id == Item.definition.id && heldItem2.damage == Item.damage){
            player.offHandHeldItem.mutable().withAmount(0);
            player.sendStatusMessage("§c该物品在生存 / 冒险模式下禁用", false);
            break;
        }
    }
});