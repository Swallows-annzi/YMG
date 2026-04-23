import crafttweaker.data.IData;
import crafttweaker.event.PlayerInteractBlockEvent;

events.onPlayerRightClickBlock(function(event as PlayerInteractBlockEvent){
        if (!event.world.remote)return;
        val block = event.block;
        if (<thermalfoundation:upgrade:*>.matches(event.item) && block.definition.id.startsWith("thermalexpansion")){
            if (!isNull(block.data)) {
                val item = event.item;
                var level = isNull(block.data.Level) ? 0 as byte : block.data.Level.asByte();
                if (level == item.metadata){
                    event.world.setBlockState(event.blockState,block.data + {Level:(level + 1)} as IData,event.position);
                } else {
                    if (level < 2 && item.metadata == 33){
                        event.world.setBlockState(event.blockState,block.data + {Level:2} as IData,event.position);
                    }
                    if (level < 3 && item.metadata == 34){
                        event.world.setBlockState(event.blockState,block.data + {Level:3} as IData,event.position);
                    }
                    if (level < 4 && item.metadata == 35){
                        event.world.setBlockState(event.blockState,block.data + {Level:4} as IData,event.position);
                    }
                }
            }
        }
    });