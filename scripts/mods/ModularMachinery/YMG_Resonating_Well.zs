/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;

import mods.modularmachinery.IMachineController;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipeStartEvent;
import mods.modularmachinery.RecipeCheckEvent;


//海蓝粉末
mods.modularmachinery.RecipeBuilder.newBuilder("liquidstarlight_1", "YMG_Resonating_Well", 60)
.addItemInput(<astralsorcery:itemtunedcelestialcrystal>).setChance(0.0)
.setNBTChecker(function(ctrl as IMachineController, item as IItemStack) {
    val data = ctrl.customData;
    val map = data.asMap();
    val nbt = item.tag.asMap();
    val astralsorcery_ = nbt["astralsorcery"].asMap();
    val crystalProperties_ = astralsorcery_["crystalProperties"].asMap();
    map["size"] = crystalProperties_["size"].asInt();
    map["purity"] = crystalProperties_["purity"].asInt();
    ctrl.customData = data;
    if(crystalProperties_["collectiveCapability"].asInt() < 60){
        return false;
    }
    return true;
})
.setPreViewNBT({
    display: {
        Lore: [
            "§e水晶石的抛光度要大于60",
        ],
    }
})
.addStartHandler(function(event as RecipeStartEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["size"] = isNull(map["size"]) ? 1 as int : map["size"].asInt();
    map["purity"] = isNull(map["purity"]) ? 1 as int : map["purity"].asInt();
    if(map["size"].asInt() >= 750)
    ctrl.addModifier("Resonating_Well_Tick", RecipeModifierBuilder.create("modularmachinery:duration", "input", 750 as double / map["size"].asInt(), 1, false).build());
    ctrl.addModifier("Resonating_Well_Fluid", RecipeModifierBuilder.create("modularmachinery:fluid", "output", map["purity"].asInt() as double / 70, 1, false).build());
    ctrl.customData = data;
})
.addItemInput(<ore:dustAquamarine>)
.addFluidOutput(<liquid:astralsorcery.liquidstarlight> * 4000)
.build();

//海蓝宝石
mods.modularmachinery.RecipeBuilder.newBuilder("liquidstarlight_2", "YMG_Resonating_Well", 60)
.addItemInput(<ore:gemAquamarine>)
.addFluidOutput(<liquid:astralsorcery.liquidstarlight> * 4000)
.build();

//共振宝石
mods.modularmachinery.RecipeBuilder.newBuilder("liquidstarlight_3", "YMG_Resonating_Well", 75)
.addItemInput(<astralsorcery:itemcraftingcomponent:4>)
.addFluidOutput(<liquid:astralsorcery.liquidstarlight> * 6000)
.build();