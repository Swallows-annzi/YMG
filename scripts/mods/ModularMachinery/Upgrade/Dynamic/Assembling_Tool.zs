/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.DynamicMachineUpgradeBuilder;
import mods.modularmachinery.SimpleDynamicMachineUpgrade;
import mods.modularmachinery.MachineUpgradeHelper;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.RecipeModifierBuilder;

import mods.additionalapi.SecureRandom;


//----------------------------------------------------//
//       等待MM-CE修复服务端不能保存Data的问题
//----------------------------------------------------//


// MachineUpgradeHelper.registerSupportedItem(<contenttweaker:assembling_tool_1>);

// //火箭装配机械臂
// DynamicMachineUpgradeBuilder.newBuilder("Assembling_Tool_Robotic_Arm", "§d火箭组装机械臂§r", 1, 1)
// .setDescriptionHandler(function(u as SimpleDynamicMachineUpgrade) {
//     val DynamicUpgrade = MachineUpgradeHelper.castToSimpleDynamicMachineUpgrade(u);
//     val ItemMap = DynamicUpgrade.itemData.asMap();
//     var info as string[] = [];
//     ItemMap["Activation"] = isNull(ItemMap["Activation"]) ? false as bool : ItemMap["Activation"].asBool();
//     ItemMap["Efficiency"] = isNull(ItemMap["Efficiency"]) ? 0.0F as float : ItemMap["Efficiency"].asFloat();
//     ItemMap["EnergyDissipation"] = isNull(ItemMap["EnergyDissipation"]) ? 0.0F as float : ItemMap["EnergyDissipation"].asFloat();
//     ItemMap["Endurance"] = isNull(ItemMap["Endurance"]) ? 0 as long : ItemMap["Endurance"].asLong();
//     if(!ItemMap["Activation"].asBool()) {
//         info += "§c未激活！请放入升级总线激活！";
//         info += "§9工具效率：§a(0.70x-1.50x)§r";
//         info += "§9工具耗能：§a(0.85x-1.15x)§r";
//         info += "§9工具耐久：§a(200000-300000)§r";
//     }
//     else {
//         info += "§9工具效率：§6" + ItemMap["Efficiency"].asFloat() + "x§r";
//         info += "§9工具耗能：§6" + ItemMap["EnergyDissipation"].asFloat() + "x§r";
//         info += "§9工具耐久：§6" + ItemMap["Endurance"].asLong() + "§r";
//     }
//     return info;
// })
// .addRecipePreTickHandler(function(e as RecipeTickEvent, u as SimpleDynamicMachineUpgrade) {
//     val event = MMEvents.castToRecipeTickEvent(e);
//     val DynamicUpgrade = MachineUpgradeHelper.castToSimpleDynamicMachineUpgrade(u);
//     val ItemData = DynamicUpgrade.itemData;
//     val ItemMap = ItemData.asMap();
//     ItemMap["Activation"] = isNull(ItemMap["Activation"]) ? false as bool : ItemMap["Activation"].asBool();
//     if(!ItemMap["Activation"].asBool()) {
//         ItemMap["Efficiency"] = SecureRandom.nextInt(70, 151) as float / 100;
//         ItemMap["EnergyDissipation"] = SecureRandom.nextInt(85, 116) as float / 100;
//         ItemMap["Endurance"] = SecureRandom.nextInt(200000, 300001);
//         ItemMap["Activation"] = true;
//         DynamicUpgrade.itemData = ItemData;
//     }
//     else {
//         event.controller.addModifier("YMG_Precision_Rocket_Assembly_Chamber_Duration", RecipeModifierBuilder.create("modularmachinery:duration", "input", 1.0F / ItemMap["Efficiency"].asFloat(), 1, false).build());
//         event.controller.addModifier("YMG_Precision_Rocket_Assembly_Chamber_Energy", RecipeModifierBuilder.create("modularmachinery:energy", "input", ItemMap["EnergyDissipation"].asFloat(), 1, false).build());
//         if(SecureRandom.nextInt(1, 6) == 1){
//             ItemMap["Endurance"] = ItemMap["Endurance"].asLong() - 1;
//             DynamicUpgrade.itemData = ItemData;
//         }
//     }

//     val ctrl = event.controller;
//     val data = ctrl.customData;
//     val map = data.asMap();
//     map["A"] = ItemMap["Endurance"].asLong();
//     ctrl.customData = data;
// })
// .addCompatibleMachines("YMG_Precision_Rocket_Assembly_Chamber")
// .buildAndRegister();

// MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:assembling_tool_1>, "Assembling_Tool_Robotic_Arm");