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


//产物
val output as int[IItemStack] = {
    <enderio:item_material:20>              :   20,
    <contenttweaker:tungstendust>  :   60,
    <taiga:basalt_dust>                     :   20,
    <taiga:tiberium_dust>                   :   20,
    <taiga:aurorium_dust>                   :   20,
    <taiga:prometheum_dust>                 :   20,
    <taiga:duranite_dust>                   :   20,
    <taiga:valyrium_dust>                   :   20,
    <taiga:vibranium_dust>                  :   20,
    <taiga:karmesine_dust>                  :   20,
    <taiga:ovium_dust>                      :   20,
    <taiga:jauxum_dust>                     :   20,
    <taiga:palladium_dust>                  :   20,
    <taiga:uru_dust>                        :   20,
    <taiga:osram_dust>                      :   20,
    <taiga:eezo_dust>                       :   10,
    <taiga:abyssum_dust>                    :   20,
    <taiga:dilithium_dust>                  :   20,
    <taiga:meteorite_dust>                  :   20,
    <mets:niobium_dust>                     :   20,
    <mets:thorium_dust>                     :   20,
    <mets:titanium_dust>                    :   40,
    <contenttweaker:stellajewel>   :   1,
};

//总权重
val WeighetSum = Weight_sum(output);
//产出表
val oreoutput = Ore_output(output);

mods.modularmachinery.RecipeBuilder.newBuilder("YMG_DeepCore_Driller_ore", "YMG_DeepCore_Driller", 1)
.addEnergyPerTickInput(50000000)
.addItemOutput(<ore:ore_1>).setMinMaxAmount(1, 10)
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val world = ctrl.world;
    val random = world.random;
    val numbers = random.nextInt(0,WeighetSum - 1);
    return oreoutput[numbers];
})
.build();

//计算权重总值
function Weight_sum(ore as int[IItemStack]) as int {
    var sum = 0;
    for uselessData,number in ore {
        sum = sum + number;
    }
    return sum as int;
}

//产出表计算
function Ore_output(ore as int[IItemStack]) as IItemStack[] {
    var output_table as IItemStack[] = [];
    for input, number in ore{
        for i in 0 to number
        output_table += input;
    }
    return output_table;
}