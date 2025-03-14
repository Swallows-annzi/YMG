/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;


//燃烧倍速
val BurningRate = 5;
//基础发电量(RF/T)
val Generation = 10000;

var num = 0;
for mod in loadedMods {
    for item in mod.items {
        if(item.burnTime == 0)
        continue;
        mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Power_Plant_" + num, "YMG_Thermal_Power_Plant", item.burnTime / BurningRate)
        .addItemInput(item)
        .addEnergyPerTickOutput(Generation * BurningRate)
        .build();
        num += 1;
    }
}

mods.modularmachinery.RecipeBuilder.newBuilder("Thermal_Power_Plant_lavabucket", "YMG_Thermal_Power_Plant", <minecraft:lava_bucket>.burnTime / BurningRate)
.addEnergyPerTickOutput(Generation * BurningRate)
.addFluidInput(<liquid:lava> * 1000)
.build();