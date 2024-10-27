/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;

import mods.modularmachinery.MachineStructureFormedEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.IMachineController;

//马铃薯繁殖
mods.modularmachinery.RecipeBuilder.newBuilder("Sad_Potatoes_potato_1", "YMG_Sad_Potatoes", 120)
.addManaInput(1000)
.addItemOutput(<botania_tweaks:potted_tiny_potato>)
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val world = ctrl.world;
    val random = world.random;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Level"] = isNull(map["Level"]) ? 0 as long : map["Level"].asInt();
    if(map["Level"].asInt() == 1){
        val numbers = random.nextInt(1,1000);
        if(0 < numbers && numbers <= 5)
        return <botania_tweaks:compressed_tiny_potato_1>;
        if(5 < numbers && numbers <= 20)
        return <minecraft:potato>;
        if(20 < numbers && numbers <= 1000)
        return null;
    }
    if(map["Level"].asInt() == 2){
        val numbers = random.nextInt(1,1000);
        if(0 < numbers && numbers <= 5)
        return <botania_tweaks:compressed_tiny_potato_2>;
        if(5 < numbers && numbers <= 20)
        return <botania_tweaks:compressed_tiny_potato_1>;
        if(20 < numbers && numbers <= 80)
        return <minecraft:potato>;
        if(80 < numbers && numbers <= 1000)
        return null;
    }
    if(map["Level"].asInt() == 3){
        val numbers = random.nextInt(1,1000);
        if(0 < numbers && numbers <= 5)
        return <botania_tweaks:compressed_tiny_potato_3>;
        if(5 < numbers && numbers <= 20)
        return <botania_tweaks:compressed_tiny_potato_2>;
        if(20 < numbers && numbers <= 80)
        return <botania_tweaks:compressed_tiny_potato_1>;
        if(20 < numbers && numbers <= 150)
        return <minecraft:potato>;
        if(150 < numbers && numbers <= 1000)
        return null;
    }
    if(map["Level"].asInt() == 4){
        val numbers = random.nextInt(1,1000);
        if(0 < numbers && numbers <= 5)
        return <botania_tweaks:compressed_tiny_potato_4>;
        if(5 < numbers && numbers <= 20)
        return <botania_tweaks:compressed_tiny_potato_3>;
        if(20 < numbers && numbers <= 80)
        return <botania_tweaks:compressed_tiny_potato_2>;
        if(20 < numbers && numbers <= 150)
        return <botania_tweaks:compressed_tiny_potato_1>;
        if(150 < numbers && numbers <= 1000)
        return <minecraft:potato>;
    }
    if(map["Level"].asInt() == 5){
        val numbers = random.nextInt(1,1000);
        if(0 < numbers && numbers <= 5)
        return <botania_tweaks:compressed_tiny_potato_5>;
        if(5 < numbers && numbers <= 20)
        return <botania_tweaks:compressed_tiny_potato_4>;
        if(20 < numbers && numbers <= 80)
        return <botania_tweaks:compressed_tiny_potato_3>;
        if(20 < numbers && numbers <= 150)
        return <botania_tweaks:compressed_tiny_potato_2>;
        if(150 < numbers && numbers <= 1000)
        return <botania_tweaks:compressed_tiny_potato_1>;
    }
    if(map["Level"].asInt() == 6){
        val numbers = random.nextInt(1,1000);
        if(0 < numbers && numbers <= 5)
        return <botania_tweaks:compressed_tiny_potato_6>;
        if(5 < numbers && numbers <= 20)
        return <botania_tweaks:compressed_tiny_potato_5>;
        if(20 < numbers && numbers <= 80)
        return <botania_tweaks:compressed_tiny_potato_4>;
        if(20 < numbers && numbers <= 150)
        return <botania_tweaks:compressed_tiny_potato_3>;
        if(150 < numbers && numbers <= 1000)
        return <botania_tweaks:compressed_tiny_potato_2>;
    }
    if(map["Level"].asInt() == 7){
        val numbers = random.nextInt(1,1000);
        if(0 < numbers && numbers <= 5)
        return <botania_tweaks:compressed_tiny_potato_7>;
        if(5 < numbers && numbers <= 20)
        return <botania_tweaks:compressed_tiny_potato_6>;
        if(20 < numbers && numbers <= 80)
        return <botania_tweaks:compressed_tiny_potato_5>;
        if(20 < numbers && numbers <= 150)
        return <botania_tweaks:compressed_tiny_potato_4>;
        if(150 < numbers && numbers <= 1000)
        return <botania_tweaks:compressed_tiny_potato_3>;
    }
    if(map["Level"].asInt() == 8){
        val numbers = random.nextInt(1,1000);
        if(0 < numbers && numbers <= 5)
        return <botania_tweaks:compressed_tiny_potato_8>;
        if(5 < numbers && numbers <= 20)
        return <botania_tweaks:compressed_tiny_potato_7>;
        if(20 < numbers && numbers <= 80)
        return <botania_tweaks:compressed_tiny_potato_6>;
        if(20 < numbers && numbers <= 150)
        return <botania_tweaks:compressed_tiny_potato_5>;
        if(150 < numbers && numbers <= 1000)
        return <botania_tweaks:compressed_tiny_potato_4>;
    }
    return null;
})
.addRecipeTooltip(
    "根据结构中马铃薯的等级产出马铃薯。"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Sad_Potatoes_potato_2", "YMG_Sad_Potatoes", 400)
.addFluidInput(<liquid:fluidedmana>)
.addItemOutput(<botania_tweaks:potted_tiny_potato>)
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val world = ctrl.world;
    val random = world.random;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Level"] = isNull(map["Level"]) ? 0 as long : map["Level"].asInt();
    if(map["Level"].asInt() == 1){
        val numbers = random.nextInt(1,1000);
        if(0 < numbers && numbers <= 5)
        return <botania_tweaks:compressed_tiny_potato_1>;
        if(5 < numbers && numbers <= 20)
        return <minecraft:potato>;
        if(20 < numbers && numbers <= 1000)
        return null;
    }
    if(map["Level"].asInt() == 2){
        val numbers = random.nextInt(1,1000);
        if(0 < numbers && numbers <= 5)
        return <botania_tweaks:compressed_tiny_potato_2>;
        if(5 < numbers && numbers <= 20)
        return <botania_tweaks:compressed_tiny_potato_1>;
        if(20 < numbers && numbers <= 80)
        return <minecraft:potato>;
        if(80 < numbers && numbers <= 1000)
        return null;
    }
    if(map["Level"].asInt() == 3){
        val numbers = random.nextInt(1,1000);
        if(0 < numbers && numbers <= 5)
        return <botania_tweaks:compressed_tiny_potato_3>;
        if(5 < numbers && numbers <= 20)
        return <botania_tweaks:compressed_tiny_potato_2>;
        if(20 < numbers && numbers <= 80)
        return <botania_tweaks:compressed_tiny_potato_1>;
        if(20 < numbers && numbers <= 150)
        return <minecraft:potato>;
        if(150 < numbers && numbers <= 1000)
        return null;
    }
    if(map["Level"].asInt() == 4){
        val numbers = random.nextInt(1,1000);
        if(0 < numbers && numbers <= 5)
        return <botania_tweaks:compressed_tiny_potato_4>;
        if(5 < numbers && numbers <= 20)
        return <botania_tweaks:compressed_tiny_potato_3>;
        if(20 < numbers && numbers <= 80)
        return <botania_tweaks:compressed_tiny_potato_2>;
        if(20 < numbers && numbers <= 150)
        return <botania_tweaks:compressed_tiny_potato_1>;
        if(150 < numbers && numbers <= 1000)
        return <minecraft:potato>;
    }
    if(map["Level"].asInt() == 5){
        val numbers = random.nextInt(1,1000);
        if(0 < numbers && numbers <= 5)
        return <botania_tweaks:compressed_tiny_potato_5>;
        if(5 < numbers && numbers <= 20)
        return <botania_tweaks:compressed_tiny_potato_4>;
        if(20 < numbers && numbers <= 80)
        return <botania_tweaks:compressed_tiny_potato_3>;
        if(20 < numbers && numbers <= 150)
        return <botania_tweaks:compressed_tiny_potato_2>;
        if(150 < numbers && numbers <= 1000)
        return <botania_tweaks:compressed_tiny_potato_1>;
    }
    if(map["Level"].asInt() == 6){
        val numbers = random.nextInt(1,1000);
        if(0 < numbers && numbers <= 5)
        return <botania_tweaks:compressed_tiny_potato_6>;
        if(5 < numbers && numbers <= 20)
        return <botania_tweaks:compressed_tiny_potato_5>;
        if(20 < numbers && numbers <= 80)
        return <botania_tweaks:compressed_tiny_potato_4>;
        if(20 < numbers && numbers <= 150)
        return <botania_tweaks:compressed_tiny_potato_3>;
        if(150 < numbers && numbers <= 1000)
        return <botania_tweaks:compressed_tiny_potato_2>;
    }
    if(map["Level"].asInt() == 7){
        val numbers = random.nextInt(1,1000);
        if(0 < numbers && numbers <= 5)
        return <botania_tweaks:compressed_tiny_potato_7>;
        if(5 < numbers && numbers <= 20)
        return <botania_tweaks:compressed_tiny_potato_6>;
        if(20 < numbers && numbers <= 80)
        return <botania_tweaks:compressed_tiny_potato_5>;
        if(20 < numbers && numbers <= 150)
        return <botania_tweaks:compressed_tiny_potato_4>;
        if(150 < numbers && numbers <= 1000)
        return <botania_tweaks:compressed_tiny_potato_3>;
    }
    if(map["Level"].asInt() == 8){
        val numbers = random.nextInt(1,1000);
        if(0 < numbers && numbers <= 5)
        return <botania_tweaks:compressed_tiny_potato_8>;
        if(5 < numbers && numbers <= 20)
        return <botania_tweaks:compressed_tiny_potato_7>;
        if(20 < numbers && numbers <= 80)
        return <botania_tweaks:compressed_tiny_potato_6>;
        if(20 < numbers && numbers <= 150)
        return <botania_tweaks:compressed_tiny_potato_5>;
        if(150 < numbers && numbers <= 1000)
        return <botania_tweaks:compressed_tiny_potato_4>;
    }
    return null;
})
.addRecipeTooltip(
    "根据结构中马铃薯的等级产出马铃薯。"
)
.build();

//初始化
MMEvents.onStructureFormed("YMG_Sad_Potatoes", function(event as MachineStructureFormedEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Level"] = isNull(map["Level"]) ? 0 as long : map["Level"].asInt();
    if (ctrl.getBlocksInPattern("botania_tweaks:compressed_tiny_potato_1") == 1)
    map["Level"] = 1;
    if (ctrl.getBlocksInPattern("botania_tweaks:compressed_tiny_potato_2") == 1)
    map["Level"] = 2;
    if (ctrl.getBlocksInPattern("botania_tweaks:compressed_tiny_potato_3") == 1)
    map["Level"] = 3;
    if (ctrl.getBlocksInPattern("botania_tweaks:compressed_tiny_potato_4") == 1)
    map["Level"] = 4;
    if (ctrl.getBlocksInPattern("botania_tweaks:compressed_tiny_potato_5") == 1)
    map["Level"] = 5;
    if (ctrl.getBlocksInPattern("botania_tweaks:compressed_tiny_potato_6") == 1)
    map["Level"] = 6;
    if (ctrl.getBlocksInPattern("botania_tweaks:compressed_tiny_potato_7") == 1)
    map["Level"] = 7;
    if (ctrl.getBlocksInPattern("botania_tweaks:compressed_tiny_potato_8") == 1)
    map["Level"] = 8;
    ctrl.customData = data;
});

//GUI
MMEvents.onControllerGUIRender("YMG_Sad_Potatoes", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var info as string[] = [];
    map["Level"] = isNull(map["Level"]) ? 0 as long : map["Level"].asInt();
    info += "§c//////////////////////////////////////////////";
    info += "§9马铃薯等级：§e" + map["Level"].asInt();
    info += "§c//////////////////////////////////////////////";
    // info += data;
    event.extraInfo = info;
});