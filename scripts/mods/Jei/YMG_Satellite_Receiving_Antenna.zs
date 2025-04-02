/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.jei.JEI;
import mods.randomtweaker.jei.IJeiPanel;
import mods.randomtweaker.jei.IJeiUtils;
import mods.randomtweaker.jei.IJeiRecipe;


val SRA_1 = JEI.createJei("YMG_Satellite_Receiving_Antenna", "卫星接收天线");
SRA_1.setModid("Modular Machinery: Community Edition");
SRA_1.setIcon(<modularmachinery:ymg_satellite_receiving_antenna_factory_controller>);
SRA_1.addRecipeCatalyst(<modularmachinery:ymg_satellite_receiving_antenna_factory_controller>);
SRA_1.addRecipeCatalyst(<contenttweaker:sputnikcoordinatecard>.withTag({display: {Lore: ["§e将此卡放入物品输入仓§r", "§c此卡并不会被消耗§r", "§c请确保此卡的所有者与控制器所有者一致！§r"]}}));
SRA_1.setBackground(IJeiUtils.createBackground(184, 220));
for x in 0 to 6 {
    SRA_1.addSlot(IJeiUtils.createItemSlot(16 * x + 81, 62, true, false));
}
for x in 0 to 4 {
    for y in 2 to 10 {
        SRA_1.addSlot(IJeiUtils.createItemSlot(18 * y + 2, 18 * x + 98, true));
        SRA_1.addSlot(IJeiUtils.createItemSlot(18 * y + 2 , 18 * x + 98, false, false));
    }
}
for x in 0 to 2 {
    for y in 0 to 10 {
        SRA_1.addSlot(IJeiUtils.createLiquidSlot(18 * y + 3, 18 * x + 182, 16, 16, 1, true, false));
    }
}
SRA_1.addElement(IJeiUtils.createImageElement(2, 2, 180, 84, 0, 0, "contenttweaker:textures/jeis/frame_1.png", 180, 84));
SRA_1.addElement(IJeiUtils.createImageElement(78, 10, 1, 68, 0, 0, "contenttweaker:textures/jeis/line_1.png", 2, 2));
SRA_1.addElement(IJeiUtils.createImageElement(83, 60, 94, 1, 0, 0, "contenttweaker:textures/jeis/line_1.png", 2, 2));
SRA_1.addElement(IJeiUtils.createImageElement(10, 7, 60, 75, 0, 0, "contenttweaker:textures/jeis/antenna.png", 60, 75));
SRA_1.addElement(IJeiUtils.createImageElement(20, 98, 18, 72, 18, 0, "contenttweaker:textures/jeis/energy_1.png", 36, 72));
SRA_1.addElement(IJeiUtils.createImageElement(2, 98, 18, 72, 18, 0, "contenttweaker:textures/jeis/energy_1.png", 36, 72));
SRA_1.addElement(IJeiUtils.createFontInfoElement("消耗/产出", 4, 88, 0x000000));
SRA_1.addElement(IJeiUtils.createFontInfoElement("物品产出", 40, 88, 0x000000));
SRA_1.addElement(IJeiUtils.createFontInfoElement("流体产出", 2, 172, 0x000000));
SRA_1.addElement(IJeiUtils.createFontInfoElement("RF/T", 150, 30, 0x000000));
SRA_1.addElement(IJeiUtils.createFontInfoElement("RF/T", 150, 40, 0x000000));
SRA_1.register();

// val SRA_2 = JEI.createJei("YMG_Satellite_Receiving_Antenna_Assemble", "卫星接收天线:组装");
// SRA_2.setModid("Modular Machinery: Community Edition");
// SRA_2.setBackground(IJeiUtils.createBackground(184, 220));
// SRA_2.setIcon(<modularmachinery:ymg_satellite_receiving_antenna_factory_controller>);
// SRA_2.addRecipeCatalyst(<modularmachinery:ymg_satellite_receiving_antenna_factory_controller>);
// SRA_2.addRecipeCatalyst(<contenttweaker:sputnikcoordinatecard>.withTag({display: {Lore: ["§e将此卡放入物品输入仓§r", "§c此卡并不会被消耗§r", "§c请确保此卡的所有者与控制器所有者一致！§r"]}}));
// SRA_2.addElement(IJeiUtils.createFontInfoElement("消耗/产出", 4, 88, 0x000000));
// SRA_2.addElement(IJeiUtils.createFontInfoElement("物品产出", 38, 88, 0x000000));
// SRA_2.addElement(IJeiUtils.createFontInfoElement("流体产出", 2, 172, 0x000000));
// SRA_2.addElement(IJeiUtils.createImageElement(2, 2, 180, 84, 0, 0, "contenttweaker:textures/jeis/Frame_1.png", 180, 84));
// SRA_2.addElement(IJeiUtils.createImageElement(78, 10, 1, 68, 0, 0, "contenttweaker:textures/jeis/Line_1.png", 2, 2));
// SRA_2.addElement(IJeiUtils.createImageElement(83, 60, 94, 1, 0, 0, "contenttweaker:textures/jeis/Line_1.png", 2, 2));
// SRA_2.addElement(IJeiUtils.createImageElement(10, 7, 60, 75, 0, 0, "contenttweaker:textures/jeis/Antenna.png", 60, 75));
// SRA_2.addElement(IJeiUtils.createImageElement(20, 98, 18, 72, 18, 0, "contenttweaker:textures/jeis/Energy_1.png", 36, 72));
// SRA_2.addElement(IJeiUtils.createImageElement(2, 98, 18, 72, 18, 0, "contenttweaker:textures/jeis/Energy_1.png", 36, 72));
// SRA_2.addElement(IJeiUtils.createFontInfoElement("RF/T", 150, 30, 0x000000));
// SRA_2.addElement(IJeiUtils.createFontInfoElement("RF/T", 150, 40, 0x000000));
// for x in 0 to 6 {
//     SRA_2.addSlot(IJeiUtils.createItemSlot(16 * x + 81, 62, true, false));
// }
// for x in 0 to 4 {
//     for y in 2 to 10 {
//         SRA_2.addSlot(IJeiUtils.createItemSlot(18 * y + 2, 18 * x + 98, true));
//         SRA_2.addSlot(IJeiUtils.createItemSlot(18 * y + 2 , 18 * x + 98, false, false));
//     }
// }
// for x in 0 to 2 {
//     for y in 0 to 10 {
//         SRA_2.addSlot(IJeiUtils.createLiquidSlot(18 * y + 3, 18 * x + 182, 16, 16, 1, true, false));
//     }
// }
// SRA_2.register();


//----------------------------------------------------//
//                       组装
//----------------------------------------------------//

JEI.createJeiRecipe("YMG_Satellite_Receiving_Antenna_Assemble")
.addElement(IJeiUtils.createFontInfoElement("卫星类型：组装", 83, 10, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("目标行星：地球", 83, 20, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("能量消耗：80.0M", 83, 30, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("能量产出：", 83, 40, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("配方时长：1200T ( 1min )", 83, 50, 0x000000))
.addElement(IJeiUtils.createImageElement(20, 98, 18, 72, 0, 0, "contenttweaker:textures/jeis/Energy_1.png", 36, 72))
.build();

//----------------------------------------------------//
//                       采矿
//----------------------------------------------------//

//地球
JEI.createJeiRecipe("YMG_Satellite_Receiving_Antenna")
.addInput(<contenttweaker:star_signal_amplification_card_1>.withTag({display: {Lore: ["§c需要升级或更高级才可运行§r"]}}))
.addOutput(<minecraft:iron_ore>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<minecraft:gold_ore>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<minecraft:coal_ore>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<minecraft:lapis_ore>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<minecraft:diamond_ore>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<minecraft:redstone_ore>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<minecraft:emerald_ore>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<minecraft:quartz_ore>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<thermalfoundation:ore>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<mekanism:oreblock>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<super_solar_panels:platium_ore>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<astralsorcery:blockcustomore:1>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<draconicevolution:draconium_ore>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<astralsorcery:blockcustomore>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<actuallyadditions:block_misc:3>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<appliedenergistics2:charged_quartz_ore>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<appliedenergistics2:quartz_ore>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<mekanism:oreblock:3>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<mekanism:oreblock:5>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<thermalfoundation:ore_fluid:2>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<thermalfoundation:ore:8>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<thermalfoundation:ore:4>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<thermalfoundation:ore:5>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<thermalfoundation:ore:3>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<thermalfoundation:ore:2>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<thermalfoundation:ore:1>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<thermalfoundation:ore_fluid>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<tconstruct:ore:1>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<tconstruct:ore>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<thermalfoundation:ore_fluid:3>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<thermalfoundation:ore_fluid:4>.withTag({display: {Lore: ["§9产出概率：§e3.23%§r", "§9产出数量：§e1024~2048§r"]}}))
.addElement(IJeiUtils.createFontInfoElement("卫星类型：采矿", 83, 10, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("目标行星：地球", 83, 20, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("能量消耗：80.0M", 83, 30, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("能量产出：", 83, 40, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("配方时长：1200T ( 1min )", 83, 50, 0x000000))
.addElement(IJeiUtils.createImageElement(20, 98, 18, 72, 0, 0, "contenttweaker:textures/jeis/Energy_1.png", 36, 72))
.build();

//----------------------------------------------------//
//                     气体收集
//----------------------------------------------------//

//地球
JEI.createJeiRecipe("YMG_Satellite_Receiving_Antenna")
.addInput(<contenttweaker:star_signal_amplification_card_1>.withTag({display: {Lore: ["§c需要升级或更高级才可运行§r"]}}))
.addOutput(<taiga:meteorite_dust>.withTag({display: {Lore: ["§9产出概率：§e70.00%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<avaritia:resource:2>.withTag({display: {Lore: ["§9产出概率：§e30.00%§r", "§9产出数量：§e1~128§r"]}}))
.addElement(IJeiUtils.createFontInfoElement("卫星类型：气体收集器", 83, 10, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("目标行星：地球", 83, 20, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("能量消耗：80.0M", 83, 30, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("能量产出：", 83, 40, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("配方时长：1200T ( 1min )", 83, 50, 0x000000))
.addElement(IJeiUtils.createImageElement(20, 98, 18, 72, 0, 0, "contenttweaker:textures/jeis/Energy_1.png", 36, 72))
.build();
//月球
JEI.createJeiRecipe("YMG_Satellite_Receiving_Antenna")
.addInput(<contenttweaker:star_signal_amplification_card_1>.withTag({display: {Lore: ["§c需要升级或更高级才可运行§r"]}}))
.addOutput(<taiga:meteorite_dust>.withTag({display: {Lore: ["§9产出概率：§e70.00%§r", "§9产出数量：§e1024~2048§r"]}}))
.addOutput(<avaritia:resource:2>.withTag({display: {Lore: ["§9产出概率：§e28.00%§r", "§9产出数量：§e1~128§r"]}}))
.addOutput(<contenttweaker:rare_earth>.withTag({display: {Lore: ["§9产出概率：§e2.00%§r", "§9产出数量：§e128~512§r"]}}))
.addElement(IJeiUtils.createFontInfoElement("卫星类型：气体收集器", 83, 10, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("目标行星：月球", 83, 20, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("能量消耗：85.0M", 83, 30, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("能量产出：", 83, 40, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("配方时长：1200T ( 1min )", 83, 50, 0x000000))
.addElement(IJeiUtils.createImageElement(20, 98, 18, 72, 0, 0, "contenttweaker:textures/jeis/Energy_1.png", 36, 72))
.build();

//----------------------------------------------------//
//                        光伏
//----------------------------------------------------//

//太阳
JEI.createJeiRecipe("YMG_Satellite_Receiving_Antenna")
.addInput(<contenttweaker:star_signal_amplification_card_4>.withTag({display: {Lore: ["§c需要升级或更高级才可运行§r"]}}))
.addElement(IJeiUtils.createFontInfoElement("卫星类型：光伏", 83, 10, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("目标行星：太阳", 83, 20, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("能量消耗：", 83, 30, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("能量产出：150.0G", 83, 40, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("配方时长：", 83, 50, 0x000000))
.addElement(IJeiUtils.createImageElement(2, 98, 18, 72, 0, 0, "contenttweaker:textures/jeis/Energy_1.png", 36, 72))
.build();
//地球
JEI.createJeiRecipe("YMG_Satellite_Receiving_Antenna")
.addInput(<contenttweaker:star_signal_amplification_card_1>.withTag({display: {Lore: ["§c需要升级或更高级才可运行§r"]}}))
.addElement(IJeiUtils.createFontInfoElement("卫星类型：光伏", 83, 10, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("目标行星：地球", 83, 20, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("能量消耗：", 83, 30, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("能量产出：4.0G", 83, 40, 0x000000))
.addElement(IJeiUtils.createFontInfoElement("配方时长：", 83, 50, 0x000000))
.addElement(IJeiUtils.createImageElement(2, 98, 18, 72, 0, 0, "contenttweaker:textures/jeis/Energy_1.png", 36, 72))
.build();
