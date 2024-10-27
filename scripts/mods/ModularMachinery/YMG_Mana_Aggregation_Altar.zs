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
import mods.modularmachinery.RecipeCheckEvent;


//泰拉钢
mods.modularmachinery.RecipeBuilder.newBuilder("terrasteel_1", "YMG_Mana_Aggregation_Altar", 40)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mods"] = isNull(map["Mods"]) ? 0 as long : map["Mods"].asInt();
    if (map["Mods"].asInt() != 1) {
        event.setFailed("§c该模式不支持此配方！");
    }
})
.addManaInput(400000)
.addItemInputs([
    <botania:manaresource>,
    <botania:manaresource:1>,
    <botania:manaresource:2>
])
.addItemOutput(<botania:manaresource:4>)
.addRecipeTooltip(
    "§9模式：§e泰拉凝聚"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("terrasteel_2", "YMG_Mana_Aggregation_Altar", 40)
.addPostCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mods"] = isNull(map["Mods"]) ? 0 as long : map["Mods"].asInt();
    if (map["Mods"].asInt() != 1) {
        event.setFailed("§c该模式不支持此配方！");
    }
})
.addFluidInput(<liquid:fluidedmana> * 400)
.addItemInputs([
    <botania:manaresource>,
    <botania:manaresource:1>,
    <botania:manaresource:2>
])
.addItemOutput(<botania:manaresource:4>)
.addRecipeTooltip(
    "§9模式：§e泰拉凝聚"
)
.build();

//精灵交易
val List as IItemStack[IItemStack] = {
    <botania:livingwood>        :   <botania:dreamwood>,
    <botania:manaresource> * 2  :   <botania:manaresource:7>,
    <botania:manaresource:2>    :   <botania:manaresource:9>,
    <botania:manaresource:1>    :   <botania:manaresource:8>,
    <minecraft:quartz>          :   <botania:quartz:5>,
    <botania:storage> * 2       :   <botania:storage:2>,
    <botania:storage:3>         :   <botania:storage:4>,
    <botania:managlass>         :   <botania:elfglass>
};

for input, output in List {
    mods.modularmachinery.RecipeBuilder.newBuilder("Mana_Aggregation_Altar_" + input.name + "_" + output.name + "_1", "YMG_Mana_Aggregation_Altar", 1)
    .addPostCheckHandler(function(event as RecipeCheckEvent) {
        val ctrl = event.controller;
        val data = ctrl.customData;
        val map = data.asMap();
        map["Mods"] = isNull(map["Mods"]) ? 0 as long : map["Mods"].asInt();
        if (map["Mods"].asInt() != 2) {
            event.setFailed("§c该模式不支持此配方！");
        }
    })
    .addManaInput(1000)
    .addItemInput(input)
    .addItemOutput(output)
    .addRecipeTooltip(
        "§9模式：§e精灵交易"
    )
    .build();
    mods.modularmachinery.RecipeBuilder.newBuilder("Mana_Aggregation_Altar_" + input.name + "_" + output.name + "_2", "YMG_Mana_Aggregation_Altar", 1)
    .addPostCheckHandler(function(event as RecipeCheckEvent) {
        val ctrl = event.controller;
        val data = ctrl.customData;
        val map = data.asMap();
        map["Mods"] = isNull(map["Mods"]) ? 0 as long : map["Mods"].asInt();
        if (map["Mods"].asInt() != 2) {
            event.setFailed("§c该模式不支持此配方！");
        }
    })
    .addFluidInput(<liquid:fluidedmana> * 1)
    .addItemInput(input)
    .addItemOutput(output)
    .addRecipeTooltip(
        "§9模式：§e精灵交易"
    )
    .build();
}

//初始化
MMEvents.onStructureFormed("YMG_Mana_Aggregation_Altar", function(event as MachineStructureFormedEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Mods"] = isNull(map["Mods"]) ? 0 as long : map["Mods"].asInt();
    if (ctrl.getBlocksInPattern(<botania:terraplate>) == 1)
    map["Mods"] = 1;
    if (ctrl.getBlocksInPattern(<botania:alfheimportal>) == 1)
    map["Mods"] = 2;
    ctrl.customData = data;
});

//GUI
MMEvents.onControllerGUIRender("YMG_Mana_Aggregation_Altar", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var info as string[] = [];
    map["Mods"] = isNull(map["Mods"]) ? 0 as long : map["Mods"].asInt();
    info += "§c//////////////////////////////////////////////";
    info += "§9模式：§e" + Mods(map["Mods"].asInt());
    info += "§c//////////////////////////////////////////////";
    // info += data;
    event.extraInfo = info;
});


//模式
function Mods(A as int) as string{
    if (A == 1)
    return "泰拉凝聚";
    else
    return "精灵交易";
}

