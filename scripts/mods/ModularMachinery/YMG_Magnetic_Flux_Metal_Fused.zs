/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.RecipeModifierBuilder;


//产出每个锭能量消耗
val setEnergy = 2000000;
//产出每个锭配方时间
val setTime = 6;

//线程设置
MachineModifier.setMaxThreads("YMG_Magnetic_Flux_Metal_Fused", 10);

//继承电磁炼化合金工厂配方
RecipeAdapterBuilder.create("YMG_Magnetic_Flux_Metal_Fused", "modularmachinery:YMG_Electromagnetic_Refining_Factory")
.addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input",  0.1F,  1, false).build())
.addModifier(RecipeModifierBuilder.create("modularmachinery:energy", "input", 50.0F, 1, false).build())
.build();

//奥利哈康合金
mods.modularmachinery.RecipeBuilder.newBuilder("Magnetic_Flux_Metal_Fused_olihacon", "YMG_Magnetic_Flux_Metal_Fused", 2400)
.addEnergyPerTickInput(20000000)
.addItemInputs([
    <taiga:adamant_ingot> * 16,
    <avaritia:resource:1> * 2,
    <mets:nano_living_metal> * 4,
    <extrabotany:material:3>,
    <environmentaltech:erodium_crystal> * 16,
    <enderio:item_material:34> * 16
])
.addItemOutput(<contenttweaker:olihacon>)
.build();

//黑陨铁
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_1", "YMG_Magnetic_Flux_Metal_Fused", setTime * 2)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:obsidian>,
    <taiga:meteorite_ingot> * 2
])
.addItemOutput(<taiga:obsidiorite_ingot> * 2)
.build();

//离金锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_2", "YMG_Magnetic_Flux_Metal_Fused", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:eezo_ingot> * 2,
    <taiga:abyssum_ingot> * 2,
    <taiga:osram_ingot> * 2,
    <taiga:obsidiorite_ingot> * 9
])
.addItemOutput(<taiga:iox_ingot>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_3", "YMG_Magnetic_Flux_Metal_Fused", setTime * 2)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:eezo_ingot> * 4,
    <taiga:abyssum_ingot> * 4,
    <taiga:osram_ingot> * 4,
    <ore:obsidian> * 9,
    <taiga:meteorite_ingot> * 18
])
.addItemOutput(<taiga:iox_ingot> * 2)
.build();

//曜金锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_4", "YMG_Magnetic_Flux_Metal_Fused", setTime * 2)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:terrax_ingot> * 3,
    <taiga:aurorium_ingot> * 2
])
.addItemOutput(<taiga:astrium_ingot> * 2)
.build();

//辐光合金锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_5", "YMG_Magnetic_Flux_Metal_Fused", setTime * 3)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:proxii_ingot> * 3,
    <taiga:abyssum_ingot>,
    <taiga:osram_ingot>
])
.addItemOutput(<taiga:nucleum_ingot> * 3)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_6", "YMG_Magnetic_Flux_Metal_Fused", setTime * 3)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:imperomite_ingot> * 3,
    <taiga:osram_ingot>,
    <taiga:eezo_ingot>
])
.addItemOutput(<taiga:nucleum_ingot> * 3)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_7", "YMG_Magnetic_Flux_Metal_Fused", setTime * 3)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:niob_ingot> * 3,
    <taiga:eezo_ingot>,
    <taiga:abyssum_ingot>
])
.addItemOutput(<taiga:nucleum_ingot> * 3)
.build();

//泰伯利安
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_8", "YMG_Magnetic_Flux_Metal_Fused", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:tiberium_ingot> * 5,
    <taiga:basalt_ingot>
])
.addItemOutput(<taiga:triberium_ingot>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_9", "YMG_Magnetic_Flux_Metal_Fused", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:tiberium_ingot> * 5,
    <taiga:dilithium_ingot> * 2
])
.addItemOutput(<taiga:triberium_ingot>)
.build();

//焰晶锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_10", "YMG_Magnetic_Flux_Metal_Fused", setTime * 2)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <tconstruct:ingots:1> * 2,
    <taiga:terrax_ingot> * 2,
    <taiga:osram_ingot>
])
.addItemOutput(<taiga:ignitz_ingot> * 2)
.build();

//地母锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_11", "YMG_Magnetic_Flux_Metal_Fused", setTime * 2)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:karmesine_ingot>,
    <taiga:ovium_ingot>,
    <taiga:jauxum_ingot>
])
.addItemOutput(<taiga:terrax_ingot> * 2)
.build();

//普罗克希锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_12", "YMG_Magnetic_Flux_Metal_Fused", setTime * 3)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:prometheum_ingot> * 3,
    <taiga:palladium_ingot> * 3,
    <taiga:eezo_ingot>
])
.addItemOutput(<taiga:proxii_ingot> * 3)
.build();

//帝金锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_13", "YMG_Magnetic_Flux_Metal_Fused", setTime * 2)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:duranite_ingot> * 3,
    <taiga:prometheum_ingot>,
    <taiga:abyssum_ingot>
])
.addItemOutput(<taiga:imperomite_ingot> * 2)
.build();

//铿金锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_14", "YMG_Magnetic_Flux_Metal_Fused", setTime * 3)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:iox_ingot> * 3,
    <taiga:solarium_ingot>,
    <taiga:vibranium_ingot>
])
.addItemOutput(<taiga:adamant_ingot> * 3)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_15", "YMG_Magnetic_Flux_Metal_Fused", setTime * 3)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:iox_ingot> * 3,
    <taiga:nihilite_ingot> * 2
])
.addItemOutput(<taiga:adamant_ingot> * 3)
.build();

//流光合金锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_16", "YMG_Magnetic_Flux_Metal_Fused", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:palladium_ingot>,
    <taiga:terrax_ingot>
])
.addItemOutput(<taiga:lumix_ingot>)
.build();

//铌锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_17", "YMG_Magnetic_Flux_Metal_Fused", setTime * 3)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:palladium_ingot> * 3,
    <taiga:duranite_ingot>,
    <taiga:osram_ingot>
])
.addItemOutput(<taiga:niob_ingot> * 3)
.build();

//碎金锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_18", "YMG_Magnetic_Flux_Metal_Fused", setTime * 4)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:triberium_ingot> * 6,
    <ore:obsidian> * 3,
    <taiga:abyssum_ingot> * 2
])
.addItemOutput(<taiga:fractum_ingot> * 4)
.build();

//阳光合金锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_19", "YMG_Magnetic_Flux_Metal_Fused", setTime * 2)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:valyrium_ingot> * 2,
    <taiga:uru_ingot> * 2,
    <taiga:nucleum_ingot> * 1
])
.addItemOutput(<taiga:solarium_ingot> * 2)
.build();

//漩金锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_20", "YMG_Magnetic_Flux_Metal_Fused", setTime * 2)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <tconstruct:ingots> * 3,
    <taiga:terrax_ingot> * 2
])
.addItemOutput(<taiga:tritonite_ingot> * 2)
.build();

//烈金锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_21", "YMG_Magnetic_Flux_Metal_Fused", setTime * 3)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:triberium_ingot> * 3,
    <taiga:fractum_ingot>,
    <taiga:seismum_ingot>,
    <taiga:osram_ingot>
])
.addItemOutput(<taiga:dyonite_ingot> * 3)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_22", "YMG_Magnetic_Flux_Metal_Fused", setTime * 3)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:tiberium_ingot> * 12,
    <taiga:fractum_ingot>,
    <taiga:seismum_ingot>,
    <taiga:osram_ingot>
])
.addItemOutput(<taiga:dyonite_ingot> * 3)
.build();

//地动合金锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_23", "YMG_Magnetic_Flux_Metal_Fused", setTime * 4)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:obsidian> * 2,
    <taiga:triberium_ingot> * 2,
    <taiga:eezo_ingot>
])
.addItemOutput(<taiga:seismum_ingot> * 4)
.build();

//原金锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_24", "YMG_Magnetic_Flux_Metal_Fused", setTime * 3)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:uru_ingot> * 3,
    <taiga:valyrium_ingot> * 3,
    <taiga:osram_ingot>
])
.addItemOutput(<taiga:yrdeen_ingot> * 3)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_25", "YMG_Magnetic_Flux_Metal_Fused", setTime * 3)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:uru_ingot> * 3,
    <taiga:valyrium_ingot> * 3,
    <taiga:eezo_ingot>
])
.addItemOutput(<taiga:yrdeen_ingot> * 3)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_26", "YMG_Magnetic_Flux_Metal_Fused", setTime * 3)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:uru_ingot> * 3,
    <taiga:valyrium_ingot> * 3,
    <taiga:abyssum_ingot>
])
.addItemOutput(<taiga:yrdeen_ingot> * 3)
.build();

//瑟蓝锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_27", "YMG_Magnetic_Flux_Metal_Fused", setTime * 2)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:aurorium_ingot> * 3,
    <tconstruct:ingots:1> * 2
])
.addItemOutput(<taiga:violium_ingot> * 2)
.build();

//虚金
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_28", "YMG_Magnetic_Flux_Metal_Fused", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <taiga:vibranium_ingot>,
    <taiga:solarium_ingot>
])
.addItemOutput(<taiga:nihilite_ingot>)
.build();

//蕴魔结晶锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_29", "YMG_Magnetic_Flux_Metal_Fused", setTime * 4)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <botania:manaresource:4>,
    <botania:manaresource>,
    <botania:manaresource:7>,
    <tconstruct:ingots>,
    <botania:managlass>
])
.addItemOutput(<plustic:mirioningot> * 4)
.build();

//UU金属锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_30", "YMG_Magnetic_Flux_Metal_Fused", setTime)
.addEnergyPerTickInput(setEnergy)
.addFluidInput(<liquid:ic2uu_matter> * 72)
.addItemInputs([
    <tconevo:material>
])
.addItemOutput(<tconevo:metal:40>)
.build();

//能量锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_31", "YMG_Magnetic_Flux_Metal_Fused", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <tconevo:material>,
    <ic2:dust:6> * 3
])
.addItemOutput(<tconevo:metal:35>)
.build();

//感知锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_32", "YMG_Magnetic_Flux_Metal_Fused", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <tconevo:material>,
    <bloodmagic:soul_gem>
])
.addItemOutput(<tconevo:metal:30>)
.build();

//骑士史莱姆锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_33", "YMG_Magnetic_Flux_Metal_Fused", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <minecraft:iron_ingot>,
    <tconstruct:edible:2>,
    <tconstruct:materials> * 2
])
.addItemOutput(<tconstruct:ingots:3>)
.build();

//生铁锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_34", "YMG_Magnetic_Flux_Metal_Fused", setTime * 2)
.addEnergyPerTickInput(setEnergy)
.addFluidInput(<liquid:blood> * 80)
.addItemInputs([
    <minecraft:iron_ingot> * 2,
    <minecraft:clay_ball>
])
.addItemOutput(<tconstruct:ingots:4> * 2)
.build();

//铱锇合金锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_35", "YMG_Magnetic_Flux_Metal_Fused", setTime * 2)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotOsmium>,
    <ore:ingotIridium>,
])
.addItemOutput(<plustic:osmiridiumingot> * 2)
.build();

//锇荧黑曜合金锭
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_36", "YMG_Magnetic_Flux_Metal_Fused", setTime)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotOsmium>,
    <ore:ingotRefinedObsidian>,
    <mekanism:ingot:3>
])
.addItemOutput(<plustic:osgloglasingot>)
.build();

//耐酸铝
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_37", "YMG_Magnetic_Flux_Metal_Fused", setTime * 3)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotAluminium> * 5,
    <minecraft:iron_ingot> * 2,
    <minecraft:obsidian>
])
.addItemOutput(<plustic:alumiteingot> * 3)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Tinkers_37", "YMG_Magnetic_Flux_Metal_Fused", setTime * 3)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <ore:ingotAluminum> * 5,
    <minecraft:iron_ingot> * 2,
    <minecraft:obsidian>
])
.addItemOutput(<plustic:alumiteingot> * 3)
.build();

//三相合金
mods.modularmachinery.RecipeBuilder.newBuilder("triphasic_alloy", "YMG_Magnetic_Flux_Metal_Fused", setTime * 240)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <thermalfoundation:material:167> * 16,
    <thermalfoundation:material:166> * 16,
    <thermalfoundation:material:165> * 16,
    <avaritia:resource:1>,
    <contenttweaker:superenergymatter>
])
.addItemOutput(<avaritiaitem:triphasic_alloy>)
.build();

//钨锭
mods.modularmachinery.RecipeBuilder.newBuilder("Magnetic_Flux_Metal_Fused_tungsteningot", "YMG_Magnetic_Flux_Metal_Fused", setTime * 200)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <contenttweaker:tungstendust> * 8,
    <thermalfoundation:material:866>
])
.addItemOutput(<contenttweaker:tungsteningot> * 8)
.build();

//铌钛合金锭
mods.modularmachinery.RecipeBuilder.newBuilder("Magnetic_Flux_Metal_Fused_niobium_titanium_ingot", "YMG_Magnetic_Flux_Metal_Fused", setTime * 300)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <mets:niobium_titanium_dust> * 8,
    <thermalfoundation:material:866>
])
.addItemOutput(<mets:niobium_titanium_ingot> * 8)
.build();

//钛锭
mods.modularmachinery.RecipeBuilder.newBuilder("Magnetic_Flux_Metal_Fused_titanium_ingot", "YMG_Magnetic_Flux_Metal_Fused", setTime * 300)
.addEnergyPerTickInput(setEnergy)
.addItemInputs([
    <mets:titanium_dust> * 8,
    <thermalfoundation:material:866>
])
.addItemOutput(<mets:titanium_ingot> * 8)
.build();