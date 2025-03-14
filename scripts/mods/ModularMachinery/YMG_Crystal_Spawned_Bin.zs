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
// MachineModifier.setParallelizable("YMG_Crystal_Spawned_Bin", false);
MachineModifier.setMaxParallelism("YMG_Crystal_Spawned_Bin", 8);
MachineModifier.setInternalParallelism("YMG_Crystal_Spawned_Bin", 8);

//制冰
mods.modularmachinery.RecipeBuilder.newBuilder("ice_1", "YMG_Crystal_Spawned_Bin", 80)
.addEnergyPerTickInput(5000)
.addFluidInput(<liquid:water> * 250)
.addItemOutput(<minecraft:ice>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("ice_2", "YMG_Crystal_Spawned_Bin", 70)
.addEnergyPerTickInput(5000)
.addFluidInput(<liquid:ic2distilled_water> * 200)
.addItemOutput(<minecraft:ice>)
.build();

//异冰
mods.modularmachinery.RecipeBuilder.newBuilder("anomalousice_1", "YMG_Crystal_Spawned_Bin", 400)
.addEnergyPerTickInput(50000)
.addFluidInputs([
    <liquid:cryotheum> * 100,
    <liquid:pyrotheum> * 40
])
.addItemInput(<ore:ice>)
.addItemOutput(<contenttweaker:anomalousice>).setChance(0.05)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("anomalousice_2", "YMG_Crystal_Spawned_Bin", 380)
.addEnergyPerTickInput(45000)
.addFluidInputs([
    <liquid:cryotheum> * 100,
    <liquid:pyrotheum> * 30
])
.addItemInput(<minecraft:packed_ice>)
.addItemOutput(<contenttweaker:anomalousice>).setChance(0.07)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("anomalousice_3", "YMG_Crystal_Spawned_Bin", 600)
.addEnergyPerTickInput(50000)
.addFluidInputs([
    <liquid:cryotheum> * 100
])
.addItemInput(<contenttweaker:anomalousice>)
.addItemOutput(<contenttweaker:anomalousice>)
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val world = ctrl.world;
    val random = world.random;
    val numbers = random.nextInt(1,100);
    if(numbers <= 15){
        return <contenttweaker:anomalousice> * 2;
    }
    return <contenttweaker:anomalousice>;
})
.addRecipeTooltip(
    "15% 的概率多产生一个异冰。"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("anomalousice_4", "YMG_Crystal_Spawned_Bin", 600)
.addEnergyPerTickInput(50000)
.addFluidInputs([
    <liquid:astralsorcery.liquidstarlight> * 2000
])
.addItemInput(<contenttweaker:anomalousice>)
.addItemOutput(<contenttweaker:anomalousice>)
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val world = ctrl.world;
    val random = world.random;
    val numbers = random.nextInt(1,100);
    if(numbers <= 12){
        return <contenttweaker:anomalousice> * 2;
    }
    return <contenttweaker:anomalousice>;
})
.addRecipeTooltip(
    "12% 的概率多产生一个异冰。"
)
.build();

//水晶簇
mods.modularmachinery.RecipeBuilder.newBuilder("block_crystal_cluster_1", "YMG_Crystal_Spawned_Bin", 600)
.addEnergyPerTickInput(100000)
.addFluidInputs([
    <liquid:astralsorcery.liquidstarlight> * 5000
])
.addItemInputs([
    <botania:quartz:5> * 12,
    <ore:dustAstralStarmetal>
])
.addItemOutput(<ore:cluster>)
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val world = ctrl.world;
    val random = world.random;
    val numbers = random.nextInt(1,6);
    if(numbers == 1){
        return <actuallyadditions:block_crystal_cluster_redstone>;
    }
    if(numbers == 2){
        return <actuallyadditions:block_crystal_cluster_lapis>;
    }
    if(numbers == 3){
        return <actuallyadditions:block_crystal_cluster_diamond>;
    }
    if(numbers == 4){
        return <actuallyadditions:block_crystal_cluster_coal>;
    }
    if(numbers == 5){
        return <actuallyadditions:block_crystal_cluster_iron>;
    }
    return <actuallyadditions:block_crystal_cluster_emerald>;
})
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("block_crystal_cluster_2", "YMG_Crystal_Spawned_Bin", 480)
.addEnergyPerTickInput(100000)
.addFluidInputs([
    <liquid:astralsorcery.liquidstarlight> * 4500
])
.addItemInputs([
    <botania:manaresource:8>,
    <ore:dustAstralStarmetal>
])
.addItemOutput(<ore:cluster>)
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val world = ctrl.world;
    val random = world.random;
    val numbers = random.nextInt(1,6);
    if(numbers == 1){
        return <actuallyadditions:block_crystal_cluster_redstone>;
    }
    if(numbers == 2){
        return <actuallyadditions:block_crystal_cluster_lapis>;
    }
    if(numbers == 3){
        return <actuallyadditions:block_crystal_cluster_diamond>;
    }
    if(numbers == 4){
        return <actuallyadditions:block_crystal_cluster_coal>;
    }
    if(numbers == 5){
        return <actuallyadditions:block_crystal_cluster_iron>;
    }
    return <actuallyadditions:block_crystal_cluster_emerald>;
})
.build();

//琉璃玄冰
mods.modularmachinery.RecipeBuilder.newBuilder("colorfulice_1", "YMG_Crystal_Spawned_Bin", 1200)
.addEnergyPerTickInput(50000000)
.addFluidInput(<liquid:mana>* 100)
.addItemInput(<contenttweaker:anomalousice>)
.addItemInput(<botania:bifrostperm>)
.addItemOutput(<contenttweaker:colorfulice>).setChance(0.01)
.build();

//高纯水晶-赛特斯石英
mods.modularmachinery.RecipeBuilder.newBuilder("material_10_1_1", "YMG_Crystal_Spawned_Bin", 10)
.addEnergyPerTickInput(10000)
.addFluidInput(<liquid:water> * 1000).setChance(0.0)
.addItemInput(<appliedenergistics2:crystal_seed>)
.addItemOutput(<appliedenergistics2:material:10>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("material_10_1_2", "YMG_Crystal_Spawned_Bin", 9)
.addEnergyPerTickInput(10000)
.addFluidInput(<liquid:ic2distilled_water> * 1000).setChance(0.0)
.addItemInput(<appliedenergistics2:crystal_seed>)
.addItemOutput(<appliedenergistics2:material:10>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("material_10_1_3", "YMG_Crystal_Spawned_Bin", 600)
.addEnergyPerTickInput(2500000)
.addFluidInput(<liquid:mana> * 60)
.addItemInput(<appliedenergistics2:crystal_seed>)
.addItemOutput(<appliedenergistics2:material:10> * 256)
.build();

//高纯水晶-下界石英
mods.modularmachinery.RecipeBuilder.newBuilder("material_11_1", "YMG_Crystal_Spawned_Bin", 10)
.addEnergyPerTickInput(10000)
.addFluidInput(<liquid:water> * 1000).setChance(0.0)
.addItemInput(<appliedenergistics2:crystal_seed:600>)
.addItemOutput(<appliedenergistics2:material:11>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("material_11_2", "YMG_Crystal_Spawned_Bin", 9)
.addEnergyPerTickInput(10000)
.addFluidInput(<liquid:ic2distilled_water> * 1000).setChance(0.0)
.addItemInput(<appliedenergistics2:crystal_seed:600>)
.addItemOutput(<appliedenergistics2:material:11>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("material_11_3", "YMG_Crystal_Spawned_Bin", 600)
.addEnergyPerTickInput(2500000)
.addFluidInput(<liquid:mana> * 60)
.addItemInput(<appliedenergistics2:crystal_seed:600>)
.addItemOutput(<appliedenergistics2:material:11> * 256)
.build();

//高纯水晶-福禄伊克斯
mods.modularmachinery.RecipeBuilder.newBuilder("material_12_1", "YMG_Crystal_Spawned_Bin", 10)
.addEnergyPerTickInput(10000)
.addFluidInput(<liquid:water> * 1000).setChance(0.0)
.addItemInput(<appliedenergistics2:crystal_seed:1200>)
.addItemOutput(<appliedenergistics2:material:12>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("material_12_2", "YMG_Crystal_Spawned_Bin", 9)
.addEnergyPerTickInput(10000)
.addFluidInput(<liquid:ic2distilled_water> * 1000).setChance(0.0)
.addItemInput(<appliedenergistics2:crystal_seed:1200>)
.addItemOutput(<appliedenergistics2:material:12>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("material_12_3", "YMG_Crystal_Spawned_Bin", 600)
.addEnergyPerTickInput(2500000)
.addFluidInput(<liquid:mana> * 60)
.addItemInput(<appliedenergistics2:crystal_seed:1200>)
.addItemOutput(<appliedenergistics2:material:12> * 256)
.build();

//钨结晶
mods.modularmachinery.RecipeBuilder.newBuilder("tungstencrystal", "YMG_Crystal_Spawned_Bin", 1200)
.addEnergyPerTickInput(300000)
.addFluidInput(<liquid:fluidedmana> * 1000)
.addItemInputs([
    <mekanism:crystal:5>,
    <contenttweaker:tungstendust> * 16
])
.addItemOutput(<contenttweaker:tungstencrystal>).setChance(0.1)
.build();

//晶球催生
mods.modularmachinery.RecipeBuilder.newBuilder("Boule_0", "YMG_Crystal_Spawned_Bin", 1200)
.addEnergyPerTickInput(5000000)
.addFluidInputs([
    <liquid:cryotheum> * 200,
    <liquid:pyrotheum> * 100
])
.addItemInput(<contenttweaker:litherite_powder>)
.addItemOutput(<contenttweaker:litherite_boule>).setChance(0.01)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Boule_1", "YMG_Crystal_Spawned_Bin", 1200)
.addEnergyPerTickInput(5000000)
.addFluidInputs([
    <liquid:cryotheum> * 200,
    <liquid:pyrotheum> * 100
])
.addItemInput(<contenttweaker:erodium_powder>)
.addItemOutput(<contenttweaker:erodium_boule>).setChance(0.01)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Boule_2", "YMG_Crystal_Spawned_Bin", 1200)
.addEnergyPerTickInput(5000000)
.addFluidInputs([
    <liquid:cryotheum> * 200,
    <liquid:pyrotheum> * 100
])
.addItemInput(<contenttweaker:kyronite_powder>)
.addItemOutput(<contenttweaker:kyronite_boule>).setChance(0.01)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Boule_3", "YMG_Crystal_Spawned_Bin", 1200)
.addEnergyPerTickInput(5000000)
.addFluidInputs([
    <liquid:cryotheum> * 200,
    <liquid:pyrotheum> * 100
])
.addItemInput(<contenttweaker:pladium_powder>)
.addItemOutput(<contenttweaker:pladium_boule>).setChance(0.01)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Boule_4", "YMG_Crystal_Spawned_Bin", 1200)
.addEnergyPerTickInput(5000000)
.addFluidInputs([
    <liquid:cryotheum> * 200,
    <liquid:pyrotheum> * 100
])
.addItemInput(<contenttweaker:ionite_powder>)
.addItemOutput(<contenttweaker:ionite_boule>).setChance(0.01)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Boule_5", "YMG_Crystal_Spawned_Bin", 1200)
.addEnergyPerTickInput(5000000)
.addFluidInputs([
    <liquid:cryotheum> * 200,
    <liquid:pyrotheum> * 100
])
.addItemInput(<contenttweaker:aethium_powder>)
.addItemOutput(<contenttweaker:aethium_boule>).setChance(0.01)
.build();

