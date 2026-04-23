/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable


for item in loadedMods["modularmachinery"].items {
    val id = item.definition.id;
    if (id.endsWith("_controller")) {
        item.addTooltip("§b---------------- §9云 梦 阁 §b----------------§r");
    }
}

<modularmachinery:ymg_sluice_factory_controller>.addTooltip("§6机械等级: §5LV_1.0 §6能量等级: §5LV_1§r");
<modularmachinery:ymg_sluice_factory_controller>.addTooltip("§6机械类型: §5加工机 | 筛矿机§r");
<modularmachinery:ymg_hydraulic_sluice_factory_controller>.addTooltip("§6机械等级: §5LV_2.0 §6能量等级: §5LV_2§r");
<modularmachinery:ymg_hydraulic_sluice_factory_controller>.addTooltip("§6机械类型: §5加工机 | 筛矿机§r");
<modularmachinery:ymg_grinder_factory_controller>.addTooltip("§6机械等级: §5LV_1.0 §6能量等级: §5LV_2§r");
<modularmachinery:ymg_grinder_factory_controller>.addTooltip("§6机械类型: §5加工机 | 磨粉机§r");
<modularmachinery:ymg_blast_furnace_factory_controller>.addTooltip("§6机械等级: §5LV_0.0 §6能量等级: §5LV_0§r");
<modularmachinery:ymg_blast_furnace_factory_controller>.addTooltip("§6机械类型: §5加工机 | 熔炉§r");
<modularmachinery:ymg_ym_capacitor_bank_factory_controller>.addTooltip("§6机械等级: §5LV_4.0 §6能量等级: §cMAX§r");
<modularmachinery:ymg_ym_capacitor_bank_factory_controller>.addTooltip("§6机械类型: §5存储器 | 蓄电池§r");
<modularmachinery:ymg_thermal_power_plant_factory_controller>.addTooltip("§6机械等级: §5LV_1.0 §6能量等级: §5LV_2§r");
<modularmachinery:ymg_thermal_power_plant_factory_controller>.addTooltip("§6机械类型: §5发电机 | 火力发电机§r");

for mod in loadedMods {
    val ModName = mod.id;
    if(ModName == "modularmachinery") {
        for item in mod.items {
            val id = item.definition.id;
            if(id.endsWith("_controller")) {
                item.addTooltip("§a在JEI中可查看具体结构，并行与线程于结构预览右上角标签所示。§r");
                item.addTooltip("§a使用 §e§o[木棍] §r§a可自动搭建多方块结构。§r");
                if(!id.endsWith("_factory_controller")) {
                    item.addTooltip("§6该控制器为普通控制器，仅支持单线程工作。§r");
                }
                if(id.endsWith("_factory_controller")) {
                    item.addTooltip("§6该控制器为工厂控制器，支持多线程工作。§r");
                }
                item.addTooltip("§b↓↓↓↓↓ §d使 §b↓↓↓↓↓ §d用 §b↓↓↓↓↓ §d说 §b↓↓↓↓↓ §d明 §b↓↓↓↓↓§r");
                if(id.contains("ymg_builder")) {
                    item.addTooltip("§f结构成型后控制器将自动转换为对应结构的工作方块。§r");
                }
            }
        }
    }
    if(ModName == "threng") {
        for item in mod.items {
            val id = item.definition.id;
            if(id.contains("big_assembler")) {
                item.addTooltip("§b§o[大型分子装配室] §r§c已被禁用，请使用 §e§o[可扩展合成子系统主机] §r§c代替。§r");
            }
        }
    }
    if(ModName == "deepmoblearning") {
        for item in mod.items {
            val id = item.definition.id;
            if(id.contains("data_model_") && !id.contains("data_model_blank")) {
                item.addTooltip("§f数据模型可在 §e§o[模拟室] §r§f中直接使用。§r");
            }
        }
    }
    if(ModName == "contenttweaker") {
        for item in mod.items {
            item.addTooltip("§b---------------- §9云 梦 阁 §b----------------§r");
            val id = item.definition.id;
            if(id.contains("_b1"))
                item.addTooltip("§6材料等级: §5LV_1.0§r");
            if(id.contains("_b2"))
                item.addTooltip("§6材料等级: §5LV_2.0§r");
            if(id.contains("_b3"))
                item.addTooltip("§6材料等级: §5LV_3.0§r");
            if(id.contains("_b4"))
                item.addTooltip("§6材料等级: §5LV_4.0§r");
            if(id.contains("_b5"))
                item.addTooltip("§6材料等级: §5LV_5.0§r");
            if(id.contains("_b6"))
                item.addTooltip("§6材料等级: §5LV_6.0§r");
            if(id.contains("_b7"))
                item.addTooltip("§6材料等级: §5LV_7.0§r");
        }
    }
}


<modularmachinery:ymg_sluice_factory_controller>.addTooltip("§f请使用JEI查看具体可运行配方，无特殊配方。§r");
// <modularmachinery:ymg_sluice_factory_controller>.addTooltip("§6该机械支持各种类 §e§o[并行控制器] §r§6调整并行数量。§r");
<modularmachinery:ymg_sluice_factory_controller>.addTooltip("§c该机械开启了溢出销毁！若使用低于产出容量的物品输出仓则会销毁多余产出！§r");
<modularmachinery:ymg_hydraulic_sluice_factory_controller>.addTooltip("§f请使用JEI查看具体可运行配方，无特殊配方。§r");
<modularmachinery:ymg_hydraulic_sluice_factory_controller>.addTooltip("§c该机械开启了溢出销毁！若使用低于产出容量的物品输出仓则会销毁多余产出！§r");
<modularmachinery:ymg_ym_capacitor_bank_factory_controller>.addTooltip("§f电容库容量无上限。§r");
<modularmachinery:ymg_ym_capacitor_bank_factory_controller>.addTooltip("§f通过数据接口可调整该电容库的输入/输出倍率。§r");
<modularmachinery:ymg_ym_capacitor_bank_factory_controller>.addTooltip("§f最高支持 20.0T 的能源输入/输出。（最低100.0K）§r");
<modularmachinery:ymg_thermal_power_plant_factory_controller>.addTooltip("§f请使用JEI查看具体可运行配方，无特殊配方。§r");
<modularmachinery:ymg_thermal_power_plant_factory_controller>.addTooltip("§f输入物品 / 流体的燃烧时间决定配方持续时间，配方持续时间产出能量恒定。§r");
<modularmachinery:ymg_thermal_power_plant_factory_controller>.addTooltip("§c使用 §e§o[岩浆桶] §r§c作为燃料将不会返还 §e§o[桶]§r");


for item in loadedMods["modularmachinery"].items {
    val id = item.definition.id;
    if (id.endsWith("_controller")) {
        item.addTooltip("§b↑↑↑↑↑ §d使 §b↑↑↑↑↑ §d用 §b↑↑↑↑↑ §d说 §b↑↑↑↑↑ §d明 §b↑↑↑↑↑§r");
    }
}

// <cookingforblockheads:sink>.addTooltip("§f无限水源，可以用水井代替。§r");
// <harvestcraft:well>.addTooltip("§f比水槽难用......无法连接管道。§r");

<modularmachinery:blocklifeessenceproviderinput>.addTooltip("§f放入宝珠会消耗该等级储量上限 20% 的LP。§r");
<modularmachinery:blocklifeessenceprovideroutput>.addTooltip("§f输出到网络的仅为机械输出的 50%。§r");

<thermalexpansion:satchel>.addTooltip("§c请不要将此背包放置在副手，否则会消失！§r");
<thermalexpansion:satchel>.addTooltip("§c若造成损失请自行承担损失！§r");
<thermalexpansion:satchel:1>.addTooltip("§c请不要将此背包放置在副手，否则会消失！§r");
<thermalexpansion:satchel:1>.addTooltip("§c若造成损失请自行承担损失！§r");
<thermalexpansion:satchel:2>.addTooltip("§c请不要将此背包放置在副手，否则会消失！§r");
<thermalexpansion:satchel:2>.addTooltip("§c若造成损失请自行承担损失！§r");
<thermalexpansion:satchel:3>.addTooltip("§c请不要将此背包放置在副手，否则会消失！§r");
<thermalexpansion:satchel:3>.addTooltip("§c若造成损失请自行承担损失！§r§r");
<thermalexpansion:satchel:4>.addTooltip("§c请不要将此背包放置在副手，否则会消失！§r");
<thermalexpansion:satchel:4>.addTooltip("§c若造成损失请自行承担损失！§r");
<thermalexpansion:satchel:100>.addTooltip("§c请不要将此背包放置在副手，否则会消失！§r");
<thermalexpansion:satchel:100>.addTooltip("§c若造成损失请自行承担损失！§r");
<thermalexpansion:satchel:32000>.addTooltip("§c请不要将此背包放置在副手，否则会消失！§r");
<thermalexpansion:satchel:32000>.addTooltip("§c若造成损失请自行承担损失！§r");

<mekanismmultiblockmachine:multiblockgenerator>.addTooltip("§d两台大型风力发电机之间请间隔50格，否则无法放置！§r");

<appliedenergistics2:controller>.addTooltip("§f控制器的最大长度从 7 格调整为 16 格§r");
