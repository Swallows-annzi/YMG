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
import mods.modularmachinery.MachineModifier;


//启用并行
// MachineModifier.setParallelizable("YMG_Nether_Abyss", false);
MachineModifier.setMaxParallelism("YMG_Nether_Abyss", 8);
MachineModifier.setInternalParallelism("YMG_Nether_Abyss", 8);

//产物
val output as int[IItemStack] = {
    <minecraft:netherrack>              :   500,
    <minecraft:soul_sand>               :   100,
    <minecraft:magma>                   :   50,
    <minecraft:quartz_ore>              :   30,
    <taiga:tiberium_ore>                :   27,
    <minecraft:glowstone_dust>          :   25,
    <minecraft:rotten_flesh>            :   24,
    <minecraft:gold_nugget>             :   20,
    <tconstruct:ore:1>                  :   15,
    <tconstruct:ore>                    :   15,
    <thermalfoundation:ore_fluid:3>     :   12,
    <minecraft:blaze_rod>               :   12,
    <tconstruct:materials:17>           :   8,
    <taiga:valyrium_ore>                :   8,
    <thermalfoundation:material:771>    :   7,
    <draconicevolution:draconium_ore:1> :   5,
    <minecraft:magma_cream>             :   5,
    <minecraft:gunpowder>               :   5,
    <minecraft:ghast_tear>              :   4,
    <minecraft:skull:1>                 :   3,
    <taiga:prometheum_ore>              :   3,
    <futuremc:ancient_debris>           :   10
};

//总权重
val WeighetSum = Weight_sum(output);
//产出表
val oreoutput = Ore_output(output);

mods.modularmachinery.RecipeBuilder.newBuilder("Nether_Abyss_Output", "YMG_Nether_Abyss", 400)
.addEnergyPerTickInput(80000)
.addFluidInput(<liquid:lava> * 100)
.addItemInput(<deepmoblearning:living_matter_hellish> * 4)
.addItemOutput(<ore:Nether_Abyss_Output>)
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