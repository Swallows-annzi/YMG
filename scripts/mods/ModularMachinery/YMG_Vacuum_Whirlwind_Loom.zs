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
// MachineModifier.setParallelizable("YMG_Vacuum_Whirlwind_Loom", false);
MachineModifier.setMaxParallelism("YMG_Vacuum_Whirlwind_Loom", 16);
MachineModifier.setInternalParallelism("YMG_Vacuum_Whirlwind_Loom", 16);

//铱导线
mods.modularmachinery.RecipeBuilder.newBuilder("Vacuum_Whirlwind_Loom_iridiumwire", "YMG_Vacuum_Whirlwind_Loom", 2)
.addEnergyPerTickInput(10000000)
.addFluidInput(<liquid:iridium> * 144)
.addItemOutput(<contenttweaker:iridiumwire> * 6)
.build();

//钨导线
mods.modularmachinery.RecipeBuilder.newBuilder("Vacuum_Whirlwind_Loom_tungstenwire", "YMG_Vacuum_Whirlwind_Loom", 2)
.addEnergyPerTickInput(10000000)
.addFluidInput(<liquid:tungstenfluid> * 144)
.addItemOutput(<contenttweaker:tungstenwire> * 4)
.build();

//玄冰合金导线
mods.modularmachinery.RecipeBuilder.newBuilder("Vacuum_Whirlwind_Loom_mysteriousicewire", "YMG_Vacuum_Whirlwind_Loom", 2)
.addEnergyPerTickInput(10000000)
.addFluidInput(<liquid:mysteriousicefluid> * 144)
.addItemOutput(<contenttweaker:mysteriousicewire> * 4)
.build();

//碳纤维线轮
mods.modularmachinery.RecipeBuilder.newBuilder("Vacuum_Whirlwind_Loom_carbonfiber", "YMG_Vacuum_Whirlwind_Loom", 400)
.addEnergyPerTickInput(75000000)
.addFluidInput(<liquid:carbonfiberfluid> * 250)
.addItemOutput(<contenttweaker:carbonfiber>)
.build();

//玻璃纤维导线
mods.modularmachinery.RecipeBuilder.newBuilder("Vacuum_Whirlwind_Loom_cable_1_1_0_1", "YMG_Vacuum_Whirlwind_Loom", 10)
.addEnergyPerTickInput(10000000)
.addFluidInput(<liquid:glass> * 4000)
.addItemInputs([
    <ic2:dust:6>,
    <ore:dustSilver>
])
.addItemOutput(<ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte}) * 6)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Vacuum_Whirlwind_Loom_cable_1_1_0_2", "YMG_Vacuum_Whirlwind_Loom", 10)
.addEnergyPerTickInput(10000000)
.addFluidInput(<liquid:glass> * 4000)
.addItemInputs([
    <ic2:dust:6>,
    <ore:dustMithril>
])
.addItemOutput(<ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte}) * 8)
.build();

//锡质导线
mods.modularmachinery.RecipeBuilder.newBuilder("Vacuum_Whirlwind_Loom_cable_4_4_0", "YMG_Vacuum_Whirlwind_Loom", 1)
.addEnergyPerTickInput(1000000)
.addFluidInput(<liquid:tin> * 144)
.addItemOutput(<ic2:cable:4>.withTag({type: 4 as byte, insulation: 0 as byte}) * 6)
.build();

//铜质导线
mods.modularmachinery.RecipeBuilder.newBuilder("Vacuum_Whirlwind_Loom_cable_0_0_0", "YMG_Vacuum_Whirlwind_Loom", 1)
.addEnergyPerTickInput(1000000)
.addFluidInput(<liquid:copper> * 144)
.addItemOutput(<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}) * 6)
.build();

//金质导线
mods.modularmachinery.RecipeBuilder.newBuilder("Vacuum_Whirlwind_Loom_cable_2_2_0", "YMG_Vacuum_Whirlwind_Loom", 1)
.addEnergyPerTickInput(1000000)
.addFluidInput(<liquid:gold> * 144)
.addItemOutput(<ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte}) * 8)
.build();

//高压导线
mods.modularmachinery.RecipeBuilder.newBuilder("Vacuum_Whirlwind_Loom_cable_3_3_0", "YMG_Vacuum_Whirlwind_Loom", 1)
.addEnergyPerTickInput(1000000)
.addFluidInput(<liquid:iron> * 144)
.addItemOutput(<ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}) * 8)
.build();