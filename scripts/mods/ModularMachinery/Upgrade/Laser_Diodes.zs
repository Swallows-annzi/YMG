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


//升级-激光二极管
MachineUpgradeHelper.registerSupportedItem(<contenttweaker:laserdiodes1>);
MachineUpgradeHelper.registerSupportedItem(<contenttweaker:laserdiodes2>);
MachineUpgradeHelper.registerSupportedItem(<contenttweaker:laserdiodes3>);

MachineUpgradeBuilder.newBuilder("laserdiodes_I", "§b激光二极管 I 级组件", 1, 1)
.addDescriptions(
    "§a///////////// §3组件数据 §a/////////////",
    "§9组件等级：§bLv I",
    "§9标准功率：§612000W",
    "§9极限功率：§615000W",
    "§a//////////////////////////////////"
)
.setBusGUIDescriptionHandler(function(u as SimpleMachineUpgrade) {
    val str as string[] = [
        "§9标准功率：§612000W",
        "§9极限功率：§615000W"
    ];
    return str;
})
.addCompatibleMachines("YMG_Bedrock_Laser_Drills")
.buildAndRegister();

MachineUpgradeBuilder.newBuilder("laserdiodes_II", "§d激光二极管 II 级组件", 1, 1)
.addDescriptions(
    "§a///////////// §3组件数据 §a/////////////",
    "§9组件等级：§dLv II",
    "§9标准功率：§624000W",
    "§9极限功率：§630000W",
    "§a//////////////////////////////////"
)
.setBusGUIDescriptionHandler(function(u as SimpleMachineUpgrade) {
    val str as string[] = [
        "§9标准功率：§624000W",
        "§9极限功率：§630000W"
    ];
    return str;
})
.addCompatibleMachines("YMG_Bedrock_Laser_Drills")
.buildAndRegister();

MachineUpgradeBuilder.newBuilder("laserdiodes_III", "§c激光二极管 III 级组件", 1, 1)
.addDescriptions(
    "§a///////////// §3组件数据 §a/////////////",
    "§9组件等级：§cLv III",
    "§9标准功率：§648000W",
    "§9极限功率：§660000W",
    "§a//////////////////////////////////"
)
.setBusGUIDescriptionHandler(function(u as SimpleMachineUpgrade) {
    val str as string[] = [
        "§9标准功率：§648000W",
        "§9极限功率：§660000W"
    ];
    return str;
})
.addCompatibleMachines("YMG_Bedrock_Laser_Drills")
.buildAndRegister();

MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:laserdiodes1>, "laserdiodes_I");
MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:laserdiodes2>, "laserdiodes_II");
MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:laserdiodes3>, "laserdiodes_III");