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


//晶体升级
MachineUpgradeHelper.registerSupportedItem(<contenttweaker:tungstencrystal>);

MachineUpgradeBuilder.newBuilder("tungstencrystal", "§e钨结晶簇核", 1, 1)
.addDescriptions(
    "§a///////////// §3结晶簇核 §a/////////////",
    "§bYMG§e—§6炽焰熔炼炉§d专业升级",
    "§e提供钨结晶核，同时可使其开启电力加热。",
    "§e若存在线圈升级，加工时长倍率不生效。",
    "§9加工时长 §ex1.5 §9流体减免 §ex0.5",
    "§a//////////////////////////////////"
)
.setBusGUIDescriptionHandler(function(u as SimpleMachineUpgrade) {
    var str as string[] = [];
    val upgrade = MachineUpgradeHelper.castToSimpleMachineUpgrade(u);
    val data = upgrade.customData;
    val map = data.asMap();
    str += "§9加工时长 §ex1.5";
    str += "§9流体减免 §ex0.5";
    return str;
})
.addCompatibleMachines("YMG_Blazing_Furnace")
.buildAndRegister();

MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:tungstencrystal>, "tungstencrystal");