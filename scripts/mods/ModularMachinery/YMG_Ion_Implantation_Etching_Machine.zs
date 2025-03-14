/** 
 * QQ:1598773037 1261922740
 * copyright(c) 2023 Swallows_ Ephemeral_12
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */
#priority 50
#loader crafttweaker reloadable

//晶核刻蚀
mods.modularmachinery.RecipeBuilder.newBuilder("crystal_core0", "YMG_Ion_Implantation_Etching_Machine", 1200)
.addEnergyPerTickInput(50000000)
.addFluidInputs([
    <liquid:advanced_coolant> * 2000,
    <liquid:pyrotheum> * 2000,
    <liquid:tiberium_fluid>*1296
])
.addItemInput(<contenttweaker:litherite_wafers>)
.addItemOutput(<contenttweaker:litherite_crystal_core>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("crystal_core1", "YMG_Ion_Implantation_Etching_Machine", 1200)
.addEnergyPerTickInput(50000000)
.addFluidInputs([
    <liquid:advanced_coolant> * 4000,
    <liquid:pyrotheum> * 4000,
    <liquid:nihilite_fluid>*1296
])
.addItemInput(<contenttweaker:erodium_wafers>)
.addItemOutput(<contenttweaker:erodium_crystal_core>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("crystal_core2", "YMG_Ion_Implantation_Etching_Machine", 1200)
.addEnergyPerTickInput(50000000)
.addFluidInputs([
    <liquid:advanced_coolant> * 16000,
    <liquid:pyrotheum> * 16000,
    <liquid:yrdeen_fluid>*1296
])
.addItemInput(<contenttweaker:kyronite_wafers>)
.addItemOutput(<contenttweaker:kyronite_crystal_core>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("crystal_core3", "YMG_Ion_Implantation_Etching_Machine", 1200)
.addEnergyPerTickInput(50000000)
.addFluidInputs([
    <liquid:advanced_coolant> * 64000,
    <liquid:pyrotheum> * 64000,
    <liquid:wyvern_metal>*1296
])
.addItemInput(<contenttweaker:pladium_wafers>)
.addItemOutput(<contenttweaker:pladium_crystal_core>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("crystal_core4", "YMG_Ion_Implantation_Etching_Machine", 1200)
.addEnergyPerTickInput(50000000)
.addFluidInputs([
    <liquid:advanced_coolant> * 256000,
    <liquid:pyrotheum> * 256000,
    <liquid:draconic_metal>*144
])
.addItemInput(<contenttweaker:ionite_wafers>)
.addItemOutput(<contenttweaker:ionite_crystal_core>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("crystal_core5", "YMG_Ion_Implantation_Etching_Machine", 1200)
.addEnergyPerTickInput(50000000)
.addFluidInputs([
    <liquid:advanced_coolant> * 1024000,
    <liquid:pyrotheum> * 1024000,
    <liquid:chaotic_metal>*144

])
.addItemInput(<contenttweaker:aethium_wafers>)
.addItemOutput(<contenttweaker:aethium_crystal_core>)
.build();

//星空透镜
mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Ion_Implantation_Etching_Machine_lens", "YMG_Ion_Implantation_Etching_Machine", 600)
.addEnergyPerTickInput(10000000)
.addFluidInputs([
    <liquid:astralsorcery.liquidstarlight> * 16000
])
.addItemInput(<contenttweaker:crystal_lens>)
.addItemOutput(<contenttweaker:lens>)
.build();