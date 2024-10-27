/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineUpgradeHelper;
import mods.modularmachinery.MachineUpgradeBuilder;
import mods.modularmachinery.SimpleMachineUpgrade;
import mods.modularmachinery.RecipeStartEvent;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.RecipeModifierBuilder;


//加热线圈升级
MachineUpgradeHelper.registerSupportedItem(<contenttweaker:iridiumringcoil>);
MachineUpgradeHelper.registerSupportedItem(<contenttweaker:tungstenringcoil>);

MachineUpgradeBuilder.newBuilder("iridiumringcoil", "§e铱制热量传导线圈", 1, 1)
.addDescriptions(
    "§a///////////// §3加热线圈 §a/////////////",
    "§d为机械提供加热线圈。",
    "§d并且可使用电力进行加工。",
    "§9线圈等级 §bLv 1",
    "§9加工时长 §ex1.2 §9消耗能量 §ex5.0",
    "§9加热功率 §e5.0 §6K/T",
    "§6单位热量所需得能量：§e1000 §bRf",
    "§a//////////////////////////////////"
)
.addCompatibleMachines("YMG_Blazing_Furnace")
.buildAndRegister();

MachineUpgradeBuilder.newBuilder("tungstenringcoil", "§e钨制热量传导线圈", 1, 1)
.addDescriptions(
    "§a///////////// §3加热线圈 §a/////////////",
    "§d为机械提供加热线圈。",
    "§d并且可使用电力进行加工。",
    "§9线圈等级 §dLv 2",
    "§9加工时长 §ex0.9 §9消耗能量 §ex4.5",
    "§9加热功率 §e15.0 §6K/T",
    "§6单位热量所需得能量：§e1000 §bRf",
    "§a//////////////////////////////////"
)
.addCompatibleMachines("YMG_Blazing_Furnace")
.buildAndRegister();

MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:iridiumringcoil>, "iridiumringcoil");
MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:tungstenringcoil>, "tungstenringcoil");
