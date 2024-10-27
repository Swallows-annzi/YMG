/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//重氢
mods.modularmachinery.RecipeBuilder.newBuilder("dsqmaterial112", "YMG_Atomic_Collider_MK_I", 1)
.addEnergyPerTickInput(10000000)
.addItemInputs([
    <contenttweaker:dsqmaterial70> * 2
])
.addItemOutput(<contenttweaker:dsqmaterial112>)
.build();

//重水
mods.modularmachinery.RecipeBuilder.newBuilder("Atomic_Collider_MK_I_heavywater", "YMG_Atomic_Collider_MK_I", 1)
.addEnergyPerTickInput(10000000)
.addFluidInput(<liquid:ic2distilled_water> * 500)
.addFluidInput(<liquid:ic2distilled_water> * 500)
.addFluidOutput(<liquid:heavywater> * 500)
.build();

//牛顿流体
mods.modularmachinery.RecipeBuilder.newBuilder("isaac_newton_1", "YMG_Atomic_Collider_MK_I", 1)
.addEnergyPerTickInput(5000000)
.addFluidInputs([
    <liquid:non_newtonian> * 100,
    <liquid:experience> * 1000
])
.addFluidOutput(<liquid:isaac_newton> * 100)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("isaac_newton_2", "YMG_Atomic_Collider_MK_I", 1)
.addEnergyPerTickInput(5000000)
.addFluidInputs([
    <liquid:non_newtonian> * 100,
    <liquid:xpjuice> * 1000
])
.addFluidOutput(<liquid:isaac_newton> * 100)
.build();

//熔融铱
mods.modularmachinery.RecipeBuilder.newBuilder("Atomic_Collider_MK_I_iridium", "YMG_Atomic_Collider_MK_I", 10)
.addEnergyPerTickInput(5000000)
.addFluidInputs([
    <liquid:iron> * 144
])
.addFluidOutput(<liquid:iridium> * 144)
.build();