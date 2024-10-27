/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//基础发电量(RF/T)
val Generation = 35000;

var num = 0;
for mod in loadedMods {
    for item in mod.items {
        if(!item.isFood)
        continue;
        mods.modularmachinery.RecipeBuilder.newBuilder("Kitchen_Generator_" + num, "YMG_Kitchen_Generator", TineTick(item.saturation, item.healAmount))
        .addItemInput(item)
        .addEnergyPerTickOutput(item.saturation * Generation)
        .build();
        num += 1;
    }
}

//判断时间
function TineTick(Saturation as float, HealAmount as float) as float {
    val Time = (Saturation / HealAmount) as float;
    if(Time <= 1)
    return 1.0F;
    return Time;
}