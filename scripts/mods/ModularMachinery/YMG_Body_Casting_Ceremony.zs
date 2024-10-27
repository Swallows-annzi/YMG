/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineModifier;


//启用并行
// MachineModifier.setParallelizable("YMG_Body_Casting_Ceremony", true);
MachineModifier.setMaxParallelism("YMG_Body_Casting_Ceremony", 8);
MachineModifier.setInternalParallelism("YMG_Body_Casting_Ceremony", 8);

//灵魂瓶-末影人
mods.modularmachinery.RecipeBuilder.newBuilder("Body_Casting_Ceremony_Minecraft_Enderman", "YMG_Body_Casting_Ceremony", 400)
.addLifeEssenceInput(60, true)
.addGasInput(<gas:nutrientsolution> * 400)
.addFluidInputs([
    <liquid:resin> * 160,
    <liquid:ic2biomass> * 8000,
    <liquid:nutrient_distillation> * 1500
])
.addItemInputs([
    <enderio:item_soul_vial>,
    <deepmoblearning:pristine_matter_enderman> * 2
])
.addItemOutput(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:enderman"}))
.build();

//灵魂瓶-潜影贝
mods.modularmachinery.RecipeBuilder.newBuilder("Body_Casting_Ceremony_Minecraft_Shulker", "YMG_Body_Casting_Ceremony", 400)
.addLifeEssenceInput(60, true)
.addGasInput(<gas:nutrientsolution> * 400)
.addFluidInputs([
    <liquid:resin> * 160,
    <liquid:ic2biomass> * 8000,
    <liquid:nutrient_distillation> * 1500
])
.addItemInputs([
    <enderio:item_soul_vial>,
    <deepmoblearning:pristine_matter_shulker> * 2
])
.addItemOutput(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:shulker"}))
.build();

