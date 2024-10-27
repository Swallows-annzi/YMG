/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */
//感谢raa提供的部分代码

#priority 50
#loader crafttweaker reloadable

import crafttweaker.event.ItemTossEvent;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.world.IBlockPos;
import crafttweaker.entity.IEntityItem;

import mods.modularmachinery.Sync;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.MachineStructureFormedEvent;


//构建器替换-共鸣祭坛
MMEvents.onStructureFormed("YMG_Builder_Attunement_Altar", function(event as MachineStructureFormedEvent) {
    Sync.addSyncTask(function(){
    val world = event.controller.world;
        if (!world.remote) {
        world.setBlockState(<blockstate:astralsorcery:blockattunementaltar>, event.controller.pos);
        }
    });
});

//构建器替换-星辉转继器
MMEvents.onStructureFormed("YMG_Builder_Attunement_Relay", function(event as MachineStructureFormedEvent) {
    Sync.addSyncTask(function(){
    val world = event.controller.world;
        if (!world.remote) {
        world.setBlockState(<blockstate:astralsorcery:blockattunementrelay>, event.controller.pos);
        }
    });
});

//构建器替换-仪式基座
MMEvents.onStructureFormed("YMG_Builder_Ritual_Pedestal", function(event as MachineStructureFormedEvent) {
    Sync.addSyncTask(function(){
    val world = event.controller.world;
        if (!world.remote) {
        world.setBlockState(<blockstate:astralsorcery:blockritualpedestal>, event.controller.pos);
        }
    });
});

//构建器替换-星辉祭坛
MMEvents.onStructureFormed("YMG_Builder_Altar_1", function(event as MachineStructureFormedEvent) {
    Sync.addSyncTask(function(){
    val world = event.controller.world;
        if (!world.remote) {
        world.setBlockState(<blockstate:astralsorcery:blockaltar:altartype=altar_2>, event.controller.pos);
        }
    });
});

//构建器替换-天辉祭坛
MMEvents.onStructureFormed("YMG_Builder_Altar_2", function(event as MachineStructureFormedEvent) {
    Sync.addSyncTask(function(){
    val world = event.controller.world;
        if (!world.remote) {
        world.setBlockState(<blockstate:astralsorcery:blockaltar:altartype=altar_3>, event.controller.pos);
        }
    });
});

//构建器替换-五彩祭坛
MMEvents.onStructureFormed("YMG_Builder_Altar_3", function(event as MachineStructureFormedEvent) {
    Sync.addSyncTask(function(){
    val world = event.controller.world;
        if (!world.remote) {
        world.setBlockState(<blockstate:astralsorcery:blockaltar:altartype=altar_4>, event.controller.pos);
        }
    });
});

//构建器替换-星能注入器
MMEvents.onStructureFormed("YMG_Builder_Star_Light_Infuser", function(event as MachineStructureFormedEvent) {
    Sync.addSyncTask(function(){
    val world = event.controller.world;
        if (!world.remote) {
        world.setBlockState(<blockstate:astralsorcery:blockstarlightinfuser>, event.controller.pos);
        }
    });
});

//构建器替换-强效聚能水晶
MMEvents.onStructureFormed("YMG_Builder_Collector_Crystal", function(event as MachineStructureFormedEvent) {
    Sync.addSyncTask(function(){
    val world = event.controller.world;
        if (!world.remote) {
        world.setBlockState(<blockstate:astralsorcery:blockmarble:marbletype=chiseled>, event.controller.pos);
        }
    });
});

events.onItemToss(function(event as ItemTossEvent){
    val i=event.item;
    val ii=i.item;
    val w=i.world;
    if(w.remote||isNull(i)||isNull(ii)||isNull(ii.definition))return;
    if(
    ii.definition.id == "modularmachinery:ymg_builder_attunement_altar_controller"||
    ii.definition.id == "modularmachinery:ymg_builder_star_light_infuser_controller"||
    ii.definition.id == "modularmachinery:ymg_builder_ritual_pedestal_controller"||
    ii.definition.id == "modularmachinery:ymg_builder_collector_crystal_controller"||
    ii.definition.id == "modularmachinery:ymg_builder_attunement_relay_controller"||
    ii.definition.id == "modularmachinery:ymg_builder_altar_1_controller"||
    ii.definition.id == "modularmachinery:ymg_builder_altar_2_controller"||
    ii.definition.id == "modularmachinery:ymg_builder_altar_3_controller"
    ){
        ii.mutable().updateTag({isPlayer:1});
    }
});

events.onEntityJoinWorld(function(event as EntityJoinWorldEvent){
    val ev=event.entity;
    val w=event.world;
    val pos=ev.position;
    if(w.remote||isNull(ev)||isNull(ev.definition))return;
    if(ev instanceof IEntityItem){
        val eI as IEntityItem=ev;
        val i=eI.item;
        if(isNull(i)||isNull(i.definition)||(!isNull(i.tag)&&!isNull(i.tag.isPlayer)))return;
        if(i.definition.id == "modularmachinery:ymg_builder_attunement_altar_controller"){
            for x in 0 to 5{
                for y in 0 to 5{
                    for z in 0 to 5{
                        val posBlock=IBlockPos.create(pos.x + x - 2,pos.y + y - 2,pos.z + z - 2);
                        if(!isNull(w.getBlock(posBlock))&&!isNull(w.getBlock(posBlock).definition)&&w.getBlock(posBlock).definition.id has "astralsorcery:blockattunementaltar"&&w.getBlock(posBlock).meta == 0){
                            event.cancel();
                        }
                    }
                }
            }
        }
        if(i.definition.id == "modularmachinery:ymg_builder_star_light_infuser_controller"){
            for x in 0 to 5{
                for y in 0 to 5{
                    for z in 0 to 5{
                        val posBlock=IBlockPos.create(pos.x + x - 2,pos.y + y - 2,pos.z + z - 2);
                        if(!isNull(w.getBlock(posBlock))&&!isNull(w.getBlock(posBlock).definition)&&w.getBlock(posBlock).definition.id has "astralsorcery:blockstarlightinfuser"&&w.getBlock(posBlock).meta == 0){
                            event.cancel();
                        }
                    }
                }
            }
        }
        if(i.definition.id == "modularmachinery:ymg_builder_ritual_pedestal_controller"){
            for x in 0 to 5{
                for y in 0 to 5{
                    for z in 0 to 5{
                        val posBlock=IBlockPos.create(pos.x + x - 2,pos.y + y - 2,pos.z + z - 2);
                        if(!isNull(w.getBlock(posBlock))&&!isNull(w.getBlock(posBlock).definition)&&w.getBlock(posBlock).definition.id has "astralsorcery:blockritualpedestal"&&w.getBlock(posBlock).meta == 0){
                            event.cancel();
                        }
                    }
                }
            }
        }
        if(i.definition.id == "modularmachinery:ymg_builder_collector_crystal_controller"){
            for x in 0 to 5{
                for y in 0 to 5{
                    for z in 0 to 5{
                        val posBlock=IBlockPos.create(pos.x + x - 2,pos.y + y - 2,pos.z + z - 2);
                        if(!isNull(w.getBlock(posBlock))&&!isNull(w.getBlock(posBlock).definition)&&w.getBlock(posBlock).definition.id has "astralsorcery:blockmarble"&&w.getBlock(posBlock).meta == 4){
                            event.cancel();
                        }
                    }
                }
            }
        }
        if(i.definition.id == "modularmachinery:ymg_builder_attunement_relay_controller"){
            for x in 0 to 5{
                for y in 0 to 5{
                    for z in 0 to 5{
                        val posBlock=IBlockPos.create(pos.x + x - 2,pos.y + y - 2,pos.z + z - 2);
                        if(!isNull(w.getBlock(posBlock))&&!isNull(w.getBlock(posBlock).definition)&&w.getBlock(posBlock).definition.id has "astralsorcery:blockattunementrelay"&&w.getBlock(posBlock).meta == 0){
                            event.cancel();
                        }
                    }
                }
            }
        }
        if(i.definition.id == "modularmachinery:ymg_builder_altar_1_controller"){
            for x in 0 to 5{
                for y in 0 to 5{
                    for z in 0 to 5{
                        val posBlock=IBlockPos.create(pos.x + x - 2,pos.y + y - 2,pos.z + z - 2);
                        if(!isNull(w.getBlock(posBlock))&&!isNull(w.getBlock(posBlock).definition)&&w.getBlock(posBlock).definition.id has "astralsorcery:blockaltar"&&w.getBlock(posBlock).meta == 1){
                            event.cancel();
                        }
                    }
                }
            }
        }
        if(i.definition.id == "modularmachinery:ymg_builder_altar_2_controller"){
            for x in 0 to 5{
                for y in 0 to 5{
                    for z in 0 to 5{
                        val posBlock=IBlockPos.create(pos.x + x - 2,pos.y + y - 2,pos.z + z - 2);
                        if(!isNull(w.getBlock(posBlock))&&!isNull(w.getBlock(posBlock).definition)&&w.getBlock(posBlock).definition.id has "astralsorcery:blockaltar"&&w.getBlock(posBlock).meta == 2){
                            event.cancel();
                        }
                    }
                }
            }
        }
        if(i.definition.id == "modularmachinery:ymg_builder_altar_3_controller"){
            for x in 0 to 5{
                for y in 0 to 5{
                    for z in 0 to 5{
                        val posBlock=IBlockPos.create(pos.x + x - 2,pos.y + y - 2,pos.z + z - 2);
                        if(!isNull(w.getBlock(posBlock))&&!isNull(w.getBlock(posBlock).definition)&&w.getBlock(posBlock).definition.id has "astralsorcery:blockaltar"&&w.getBlock(posBlock).meta == 3){
                            event.cancel();
                        }
                    }
                }
            }
        }
    }
});

