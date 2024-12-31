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