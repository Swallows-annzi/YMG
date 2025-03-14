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


//星空信号增幅卡
MachineUpgradeHelper.registerSupportedItem(<contenttweaker:star_signal_amplification_card_1>);
MachineUpgradeHelper.registerSupportedItem(<contenttweaker:star_signal_amplification_card_2>);
MachineUpgradeHelper.registerSupportedItem(<contenttweaker:star_signal_amplification_card_3>);
MachineUpgradeHelper.registerSupportedItem(<contenttweaker:star_signal_amplification_card_4>);
MachineUpgradeHelper.registerSupportedItem(<contenttweaker:star_signal_amplification_card_5>);

MachineUpgradeBuilder.newBuilder("star_signal_amplification_card_1", "§e信号增幅卡Lv 1§r", 1, 1)
.addCompatibleMachines("YMG_Satellite_Receiving_Antenna")
.buildAndRegister();

MachineUpgradeBuilder.newBuilder("star_signal_amplification_card_2", "§e信号增幅卡Lv 2§r", 1, 1)
.addCompatibleMachines("YMG_Satellite_Receiving_Antenna")
.buildAndRegister();

MachineUpgradeBuilder.newBuilder("star_signal_amplification_card_3", "§e信号增幅卡Lv 3§r", 1, 1)
.addCompatibleMachines("YMG_Satellite_Receiving_Antenna")
.buildAndRegister();

MachineUpgradeBuilder.newBuilder("star_signal_amplification_card_4", "§e信号增幅卡Lv 4§r", 1, 1)
.addCompatibleMachines("YMG_Satellite_Receiving_Antenna")
.buildAndRegister();

MachineUpgradeBuilder.newBuilder("star_signal_amplification_card_5", "§e信号增幅卡Lv 5§r", 1, 1)
.addCompatibleMachines("YMG_Satellite_Receiving_Antenna")
.buildAndRegister();

MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:star_signal_amplification_card_1>, "star_signal_amplification_card_1");
MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:star_signal_amplification_card_2>, "star_signal_amplification_card_2");
MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:star_signal_amplification_card_3>, "star_signal_amplification_card_3");
MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:star_signal_amplification_card_4>, "star_signal_amplification_card_4");
MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:star_signal_amplification_card_5>, "star_signal_amplification_card_5");