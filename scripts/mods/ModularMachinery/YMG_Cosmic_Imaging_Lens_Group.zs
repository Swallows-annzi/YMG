/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.FactoryRecipeThread;


//线程设置
MachineModifier.setMaxThreads("YMG_Cosmic_Imaging_Lens_Group", 0);

//运行核心
val Imaging_String = "§l成像系统";
MachineModifier.addCoreThread("YMG_Cosmic_Imaging_Lens_Group", FactoryRecipeThread.createCoreThread(Imaging_String));

//激光核心
val Pos_String = "§b§l定位单元";
MachineModifier.addCoreThread("YMG_Cosmic_Imaging_Lens_Group", FactoryRecipeThread.createCoreThread(Pos_String));