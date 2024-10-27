/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.MachineModifier;


//启用并行
// MachineModifier.setParallelizable("YMG_Advanced_Centrifuge", true);
MachineModifier.setMaxParallelism("YMG_Advanced_Centrifuge", 8);
MachineModifier.setInternalParallelism("YMG_Advanced_Centrifuge", 8);

//离心枯竭质子
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_1", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<super_solar_panels:crafting:37>)
.addItemOutputs([
    <super_solar_panels:crafting:27>,
    <super_solar_panels:crafting:26>
])
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_2", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<super_solar_panels:crafting:38>)
.addItemOutputs([
    <super_solar_panels:crafting:27> * 2,
    <super_solar_panels:crafting:26> * 2
])
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_3", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<super_solar_panels:crafting:39>)
.addItemOutputs([
    <super_solar_panels:crafting:27> * 4,
    <super_solar_panels:crafting:26> * 4
])
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_4", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<super_solar_panels:crafting:40>)
.addItemOutputs([
    <super_solar_panels:crafting:27> * 8,
    <super_solar_panels:crafting:26> * 8
])
.build();

//离心石英
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_5", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<ore:gemQuartz> * 2)
.addItemOutputs([
    <ic2:dust:24>
])
.build();

//离心圆石
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_6", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<ore:cobblestone>)
.addItemOutputs([
    <ic2:dust:15>
])
.build();

//离心粉碎铀矿
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_7", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<ic2:crushed:6>)
.addItemOutputs([
    <ic2:nuclear:5>,
    <ic2:nuclear:2> * 4,
    <ic2:dust:15>
])
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_8", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<ic2:purified:6>)
.addItemOutputs([
    <ic2:nuclear:5>,
    <ic2:nuclear:2> * 6
])
.build();

//离心粉碎远古残骸
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_9", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<jaopca:item_crushedancientdebris>)
.addItemOutputs([
    <jaopca:item_dustancientdebris>,
    <jaopca:item_dusttinyancientdebris> * 2,
    <ic2:dust:15>
])
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_10", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<jaopca:item_crushedpurifiedancientdebris>)
.addItemOutputs([
    <jaopca:item_dustancientdebris>,
    <jaopca:item_dusttinyancientdebris>,
])
.build();

//离心放射性同位素燃料靶丸
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_11", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<ic2:nuclear:10>)
.addItemOutputs([
    <ic2:nuclear:3> * 3,
    <thermalfoundation:material> * 54
])
.build();

//离心炉渣
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_12", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<ore:itemSlag>)
.addItemOutputs([
    <thermalfoundation:material:768> * 5,
    <ic2:dust:20>
])
.build();

//离心浓缩铀核燃料
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_13", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<ic2:nuclear> * 20)
.addItemOutputs([
    <ic2:nuclear:2> * 112,
    <ic2:nuclear:1> * 7
])
.build();

//离心枯竭铀
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_14", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<ic2:nuclear:11>)
.addItemOutputs([
    <ic2:nuclear:7>,
    <ic2:nuclear:2> * 4,
    <thermalfoundation:material>
])
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_15", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<ic2:nuclear:12>)
.addItemOutputs([
    <ic2:nuclear:7> * 2,
    <ic2:nuclear:2> * 8,
    <thermalfoundation:material> * 3
])
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_16", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<ic2:nuclear:13>)
.addItemOutputs([
    <ic2:nuclear:7> * 4,
    <ic2:nuclear:2> * 16,
    <thermalfoundation:material> * 7
])
.build();

//离心枯竭MOX
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_17", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<ic2:nuclear:14>)
.addItemOutputs([
    <ic2:nuclear:7>,
    <ic2:nuclear:3> * 3,
    <thermalfoundation:material>
])
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_18", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<ic2:nuclear:15>)
.addItemOutputs([
    <ic2:nuclear:7> * 2,
    <ic2:nuclear:3> * 6,
    <thermalfoundation:material> * 3
])
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_19", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<ic2:nuclear:16>)
.addItemOutputs([
    <ic2:nuclear:7> * 4,
    <ic2:nuclear:3> * 12,
    <thermalfoundation:material> * 7
])
.build();

//二氧化硅
mods.modularmachinery.RecipeBuilder.newBuilder("Advanced_Centrifuge_20", "YMG_Advanced_Centrifuge", 120)
.addEnergyPerTickInput(20000)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addCatalystInput(<ic2:upgrade>, [
    "运行时间为原先的 §a70§b%§f",
    "能量消耗为原先的 §c160§b%§f",
    "并且为相乘叠加"
], [
    RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.7F, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:energy", "input", 1.6F, 1, false).build()
]).setChance(0.0)
.addItemInput(<ic2:dust:1> * 4)
.addItemOutputs([
    <ic2:dust:13>
])
.build();