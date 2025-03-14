/** ", 64, false);
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 * 材质均已获得授权
 * Stickers are authorized
 */

#priority 50
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Part;

//Item(物品ID,最大堆叠数,是否有附魔光芒);
//稀有度：“COMMON”, “UNCOMMON”, “RARE”, “EPIC”

//管理工具
RegItem("admintool_1", 1, false);
RegItem("admintool_2", 1, false);

//莱泽尔粉/晶圆/晶球/晶核
RegItem("litherite_powder", 64, false);
RegItem("litherite_wafers", 64, false);
RegItem("litherite_boule", 64, false);
RegItem("litherite_crystal_core", 64, false);
//艾恩尼粉/晶圆/晶球/晶核
RegItem("ionite_powder", 64, false);
RegItem("ionite_wafers", 64, false);
RegItem("ionite_boule", 64, false);
RegItem("ionite_crystal_core", 64, false);
//艾洛蒂粉/晶圆/晶球/晶核
RegItem("erodium_powder", 64, false);
RegItem("erodium_wafers", 64, false);
RegItem("erodium_boule", 64, false);
RegItem("erodium_crystal_core", 64, false);
//以太粉/晶圆/晶球/晶核
RegItem("aethium_powder", 64, false);
RegItem("aethium_wafers", 64, false);
RegItem("aethium_boule", 64, false);
RegItem("aethium_crystal_core", 64, false);
//普雷蒂粉/晶圆/晶球/晶核
RegItem("pladium_powder", 64, false);
RegItem("pladium_wafers", 64, false);
RegItem("pladium_boule", 64, false);
RegItem("pladium_crystal_core", 64, false);
//凯罗尼粉/晶圆/晶球/晶核
RegItem("kyronite_powder", 64, false);
RegItem("kyronite_wafers", 64, false);
RegItem("kyronite_boule", 64, false);
RegItem("kyronite_crystal_core", 64, false);
//纳诺莱粉/晶圆/晶球/晶核
RegItem("nanorite_powder", 64, false);
RegItem("nanorite_wafers", 64, false);
RegItem("nanorite_boule", 64, false);
RegItem("nanorite_crystal_core", 64, false);
//泽洛斯粉/晶圆/晶球/晶核
RegItem("xerothium_powder", 64, false);
RegItem("xerothium_wafers", 64, false);
RegItem("xerothium_boule", 64, false);
RegItem("xerothium_crystal_core", 64, false);
//蓝丝黛尔晶核
RegItem("lonsdaleite_crystal_core", 64, false);
//纳诺莱水晶
RegItem("nanorite_crystal", 64, false);
//泽洛斯水晶
RegItem("xerothium_crystal", 64, false);
//硅晶
RegItem("silicon_crystal", 64, false);
//硅粉
RegItem("siliconpowder", 64, false);
//水晶透镜
RegItem("crystal_lens", 64, false);
//透镜
RegItem("lens", 64, false);
//包装好的月饼
RegItem("Mooncakes_box", 64, false);
//真空容器
RegItem("vacuum_vessels", 64, false);
//压缩静电罐
RegItem("compressed_electrostatics", 16, true);
//宿质燃料罐
RegItem("hostile_fuel_1_vessels", 16, false);
RegItem("hostile_fuel_2_vessels", 16, false);
RegItem("hostile_fuel_3_vessels", 16, false);
RegItem("hostile_fuel_4_vessels", 16, true);
RegItem("hostile_fuel_5_vessels", 16, true);


//模具
RegItem("mold_0", 16, false);
RegItem("mold_1", 16, false);
RegItem("mold_2", 16, false);
RegItem("mold_3", 16, false);
RegItem("mold_4", 16, false);
RegItem("mold_5", 16, false);

RegItem("stellajewel", 64, false);
RegItem("stellajewelglow", 64, false);
RegItem("tungstendust", 64, false);
RegItem("tungstengear", 64, false);
RegItem("tungsteningot", 64, false);
RegItem("tungstennugget", 64, false);
RegItem("tungstenplate", 64, false);
RegItem("tungstencrystal", 64, false);
RegItem("tungstenmotor", 64, false);
RegItem("tungstencoil", 64, false);
RegItem("tungstenringcoil", 64, false);
RegItem("tungstenrod", 64, false);
RegItem("tungstenwire", 64, false);
RegItem("mysteriousicedust", 64, false);
RegItem("mysteriousicegear", 64, false);
RegItem("mysteriousiceingot", 64, false);
RegItem("mysteriousicenugget", 64, false);
RegItem("mysteriousiceplate", 64, false);
// RegItem("mysteriousicecrystal", 64, false);
RegItem("mysteriousicemotor", 64, false);
RegItem("mysteriousicecoil", 64, false);
RegItem("mysteriousiceringcoil", 64, false);
RegItem("mysteriousicerod", 64, false);
RegItem("mysteriousicewire", 64, false);
RegItem("iridiummotor", 64, false);
RegItem("iridiumcoil", 64, false);
RegItem("iridiumringcoil", 64, false);
RegItem("iridiumwire", 64, false);
RegItem("blankrunes", 64, false);
RegItem("commondatamodel", 64, false);
RegItem("luckdatamodel1", 64, false);
RegItem("luckdatamodel2", 64, false);
RegItem("luckdatamodel3", 64, false);
RegItem("commondatamodelpos", 64, false);
RegItem("galaxycoordinatecard", 1, false);
RegItem("sputnikcoordinatecard", 1, false);
RegItem("itemmodellitheritecrystal", 64, false);
RegItem("itemmodelerodiumcrystal", 64, false);
RegItem("itemmodelkyronitecrystal", 64, false);
RegItem("itemmodelpladiumcrystal", 64, false);
RegItem("itemmodelionitecrystal", 64, false);
RegItem("itemmodelaethiumcrystal", 64, false);
RegItem("itemmodelnanoritecrystal", 64, false);
RegItem("itemmodelxerothiumcrystal", 64, false);
RegItem("itemmodellonsdaleitecrystal", 64, false);
RegItem("itemmodelnetherite", 64, false);
RegItem("cosmopolitanprocessor", 64, false);
RegItem("superenergymatter", 64, false);
RegItem("yun", 64, false);
RegItem("laserdiodes1", 64, false);
RegItem("laserdiodes2", 64, false);
RegItem("laserdiodes3", 64, false);
RegItem("anomalousice", 64, false);
RegItem("olihacon", 64, false);
RegItem("netherultimate", 64, false);
RegItem("colorfulice", 64, false);
// RegItem("reinforcedbead1", 64, false);
// RegItem("reinforcedbeadglowing1", 64, false);
// RegItem("reinforcedbead2", 64, false);
// RegItem("reinforcedbeadglowing2", 64, false);
// RegItem("reinforcedbead3", 64, false);
// RegItem("reinforcedbeadglowing3", 64, false);
// RegItem("reinforcedbead4", 64, false);
// RegItem("reinforcedbeadglowing4", 64, false);
RegItem("ymcomputecore", 64, false);
// RegItem("informationcard", 64, false);
// RegItem("informationcardglowing", 64, false);
RegItem("insulationprintedcircuitboard", 64, false);
RegItem("industryprintedcircuitboard", 64, false);
RegItem("soulprintedcircuitboard", 64, false);
RegItem("enhancedprintedcircuitboard", 64, false);
RegItem("radiantcrystalpowder", 64, false);
RegItem("bee", 64, false);
RegItem("beeswax", 64, false);
RegItem("honey0", 64, false);
RegItem("honey1", 64, false);
RegItem("honey2", 64, false);
RegItem("honey3", 64, false);
RegItem("honey4", 64, false);
RegItem("honeycomb0", 64, false);
RegItem("honeycomb1", 64, false);
RegItem("honeycomb2", 64, false);
RegItem("honeycomb3", 64, false);
RegItem("honeycomb4", 64, false);
RegItem("honeycrystalline", 64, false);
RegItem("mutant", 64, false);
RegItem("nutrient", 64, false);
RegItem("royaljelly", 64, false);
RegItem("solarcrystals", 64, false);
RegItem("teslashellplate", 64, false);
// RegItem("strengthaerospacealloyplate", 64, false);
RegItem("dilithiumlens", 64, false);
RegItem("shapedcrystals", 64, false);
RegItem("sparklingstar", 64, false);
RegItem("bloodyprism", 64, false);
RegItem("flameprism", 64, false);
RegItem("frenulum", 64, false);
RegItem("graphene", 64, false);
RegItem("carbonfiber", 64, false);
RegItem("nanometre", 64, false);
RegItem("fabric", 64, false);
RegItem("sputnik", 1, false);
RegItem("galaxy_sync_card_1", 1, false);
RegItem("galaxy_sync_card_2", 1, false);
RegItem("Star_Signal_Amplification_Card_1", 64, true);
RegItem("Star_Signal_Amplification_Card_2", 64, true);
RegItem("Star_Signal_Amplification_Card_3", 64, true);
RegItem("Star_Signal_Amplification_Card_4", 64, true);
RegItem("Star_Signal_Amplification_Card_5", 64, true);
RegItem("nano_rose_red_metal", 64, false);
RegItem("Rare_Earth", 64, false);
RegItem("Draconic_Dust", 64, false);
RegItem("Crusaded_Crystals", 64, false);
RegItem("Jump_Stand", 64, false);
// RegItem("assembling_tool_1", 1, false);
// RegItem("assembling_tool_2", 1, false);
// RegItem("assembling_tool_3", 1, false);

// RegItem("aerospace_plate_0", 64, false);
// RegItem("aerospace_plate_1", 64, false);
// RegItem("aerospace_plate_2", 64, false);
// RegItem("aerospace_plate_3", 64, false);
// RegItem("aerospace_plate_4", 64, false);
// RegItem("aerospace_plate_5", 64, false);
// RegItem("aerospace_plate_6", 64, false);
// RegItem("aerospace_plate_7", 64, false);
// RegItem("aerospace_plate_8", 64, false);
// RegItem("aerospace_plate_9", 64, false);
// RegItem("aerospace_plate_10", 64, false);
// RegItem("aerospace_plate_11", 64, false);
// RegItem("aerospace_plate_12", 64, false);
// RegItem("aerospace_plate_13", 64, false);
// RegItem("aerospace_plate_14", 64, false);

RegAerospace("saaplate1", 0x232323);
RegAerospace("saaplate2", 0xFFFFFF);
RegAerospace("saaplate3", 0x0045FF);
RegAerospace("saaplate4", 0xFF7600);
RegAerospace("saaplate5", 0xFFA75B);
RegAerospace("saaplate6", 0xBEBEBE);
RegAerospace("saaplate7", 0x7C2916);
RegAerospace("saaplate8", 0x9EAEBA);
RegAerospace("saaplate9", 0xC1B98E);
RegAerospace("saaplate10", 0x6C6250);
RegAerospace("saaplate11", 0x1E2A31);
RegAerospace("saaplate12", 0xA1A19E);
RegAerospace("saaplate13", 0xCECECE);
RegAerospace("saaplate14", 0xC08BAA);

RegDSQItem("dsqlogo", 64, false);
RegDSQItem("dsqconstruction1", 64, false);
RegDSQItem("dsqconstruction2", 64, false);
RegDSQItem("dsqconstruction3", 64, false);
RegDSQItem("dsqconstruction4", 64, false);
RegDSQItem("dsqconstruction5", 64, false);
RegDSQItem("dsqconstruction6", 64, false);
RegDSQItem("dsqconstruction7", 64, false);
RegDSQItem("dsqconstruction8", 64, false);
RegDSQItem("dsqconstruction9", 64, false);
RegDSQItem("dsqconstruction10", 64, false);
RegDSQItem("dsqconstruction11", 64, false);
RegDSQItem("dsqconstruction12", 64, false);
RegDSQItem("dsqconstruction13", 64, false);
RegDSQItem("dsqconstruction14", 64, false);
RegDSQItem("dsqconstruction15", 64, false);
RegDSQItem("dsqconstruction16", 64, false);
RegDSQItem("dsqconstruction17", 64, false);
RegDSQItem("dsqconstruction18", 64, false);
RegDSQItem("dsqconstruction19", 64, false);
RegDSQItem("dsqconstruction20", 64, false);
RegDSQItem("dsqconstruction21", 64, false);
RegDSQItem("dsqconstruction22", 64, false);
RegDSQItem("dsqconstruction23", 64, false);
RegDSQItem("dsqconstruction24", 64, false);
RegDSQItem("dsqconstruction25", 64, false);
RegDSQItem("dsqconstruction26", 64, false);
RegDSQItem("dsqconstruction27", 64, false);
RegDSQItem("dsqconstruction28", 64, false);
RegDSQItem("dsqconstruction29", 64, false);
RegDSQItem("dsqconstruction30", 64, false);
RegDSQItem("dsqconstruction31", 64, false);
RegDSQItem("dsqconstruction32", 64, false);
RegDSQItem("dsqconstruction33", 64, false);
RegDSQItem("dsqconstruction34", 64, false);
RegDSQItem("dsqconstruction35", 64, false);
RegDSQItem("dsqconstruction36", 64, false);
RegDSQItem("dsqconstruction37", 64, false);
RegDSQItem("dsqconstruction38", 64, false);
RegDSQItem("dsqconstruction39", 64, false);
RegDSQItem("dsqconstruction40", 64, false);
RegDSQItem("dsqconstruction41", 64, false);
RegDSQItem("dsqconstruction42", 64, false);
RegDSQItem("dsqconstruction43", 64, false);
RegDSQItem("dsqconstruction44", 64, false);
RegDSQItem("dsqconstruction45", 64, false);
RegDSQItem("dsqconstruction46", 64, false);
RegDSQItem("dsqconstruction47", 64, false);
RegDSQItem("dsqconstruction48", 64, false);
RegDSQItem("dsqconstruction49", 64, false);
RegDSQItem("dsqconstruction50", 64, false);
RegDSQItem("dsqconstruction51", 64, false);
RegDSQItem("dsqconstruction52", 64, false);
RegDSQItem("dsqconstruction53", 64, false);
RegDSQItem("dsqconstruction54", 64, false);
RegDSQItem("dsqconstruction55", 64, false);
RegDSQItem("dsqconstruction56", 64, false);
RegDSQItem("dsqconstruction57", 64, false);
RegDSQItem("dsqconstruction58", 64, false);
RegDSQItem("dsqconstruction59", 64, false);
RegDSQItem("dsqconstruction60", 64, false);
RegDSQItem("dsqconstruction61", 64, false);
RegDSQItem("dsqmaterial1", 64, false);
RegDSQItem("dsqmaterial2", 64, false);
RegDSQItem("dsqmaterial3", 64, false);
RegDSQItem("dsqmaterial4", 64, false);
RegDSQItem("dsqmaterial5", 64, false);
RegDSQItem("dsqmaterial6", 64, false);
RegDSQItem("dsqmaterial7", 64, false);
RegDSQItem("dsqmaterial8", 64, false);
RegDSQItem("dsqmaterial9", 64, false);
RegDSQItem("dsqmaterial10", 64, false);
RegDSQItem("dsqmaterial11", 64, false);
RegDSQItem("dsqmaterial12", 64, false);
RegDSQItem("dsqmaterial13", 64, false);
RegDSQItem("dsqmaterial14", 64, false);
RegDSQItem("dsqmaterial15", 64, false);
RegDSQItem("dsqmaterial16", 64, false);
RegDSQItem("dsqmaterial17", 64, false);
RegDSQItem("dsqmaterial18", 64, false);
RegDSQItem("dsqmaterial19", 64, false);
RegDSQItem("dsqmaterial20", 64, false);
RegDSQItem("dsqmaterial21", 64, false);
RegDSQItem("dsqmaterial22", 64, false);
RegDSQItem("dsqmaterial23", 64, false);
RegDSQItem("dsqmaterial24", 64, false);
RegDSQItem("dsqmaterial25", 64, false);
RegDSQItem("dsqmaterial26", 64, false);
RegDSQItem("dsqmaterial27", 64, false);
RegDSQItem("dsqmaterial28", 64, false);
RegDSQItem("dsqmaterial29", 64, false);
RegDSQItem("dsqmaterial30", 64, false);
RegDSQItem("dsqmaterial31", 64, false);
RegDSQItem("dsqmaterial32", 64, false);
RegDSQItem("dsqmaterial33", 64, false);
RegDSQItem("dsqmaterial34", 64, false);
RegDSQItem("dsqmaterial35", 64, false);
RegDSQItem("dsqmaterial36", 64, false);
RegDSQItem("dsqmaterial37", 64, false);
RegDSQItem("dsqmaterial38", 64, false);
RegDSQItem("dsqmaterial39", 64, false);
RegDSQItem("dsqmaterial40", 64, false);
RegDSQItem("dsqmaterial41", 64, false);
RegDSQItem("dsqmaterial42", 64, false);
RegDSQItem("dsqmaterial43", 64, false);
RegDSQItem("dsqmaterial44", 64, false);
RegDSQItem("dsqmaterial45", 64, false);
RegDSQItem("dsqmaterial46", 64, false);
RegDSQItem("dsqmaterial47", 64, false);
RegDSQItem("dsqmaterial48", 64, false);
RegDSQItem("dsqmaterial49", 64, false);
RegDSQItem("dsqmaterial50", 64, false);
RegDSQItem("dsqmaterial51", 64, false);
RegDSQItem("dsqmaterial52", 64, false);
RegDSQItem("dsqmaterial53", 64, false);
RegDSQItem("dsqmaterial54", 64, false);
RegDSQItem("dsqmaterial55", 64, false);
RegDSQItem("dsqmaterial56", 64, false);
RegDSQItem("dsqmaterial57", 64, false);
RegDSQItem("dsqmaterial58", 64, false);
RegDSQItem("dsqmaterial59", 64, false);
RegDSQItem("dsqmaterial60", 64, false);
RegDSQItem("dsqmaterial61", 64, false);
RegDSQItem("dsqmaterial62", 64, false);
RegDSQItem("dsqmaterial63", 64, false);
RegDSQItem("dsqmaterial64", 64, false);
RegDSQItem("dsqmaterial65", 64, false);
RegDSQItem("dsqmaterial66", 64, false);
RegDSQItem("dsqmaterial67", 64, false);
RegDSQItem("dsqmaterial68", 64, false);
RegDSQItem("dsqmaterial69", 64, false);
RegDSQItem("dsqmaterial70", 64, false);
RegDSQItem("dsqmaterial71", 64, false);
RegDSQItem("dsqmaterial72", 64, false);
RegDSQItem("dsqmaterial73", 64, false);
RegDSQItem("dsqmaterial74", 64, false);
RegDSQItem("dsqmaterial75", 64, false);
RegDSQItem("dsqmaterial76", 64, false);
RegDSQItem("dsqmaterial77", 64, false);
RegDSQItem("dsqmaterial78", 64, false);
RegDSQItem("dsqmaterial79", 64, false);
RegDSQItem("dsqmaterial80", 64, false);
RegDSQItem("dsqmaterial81", 64, false);
RegDSQItem("dsqmaterial82", 64, false);
RegDSQItem("dsqmaterial83", 64, false);
RegDSQItem("dsqmaterial84", 64, false);
RegDSQItem("dsqmaterial85", 64, false);
RegDSQItem("dsqmaterial86", 64, false);
RegDSQItem("dsqmaterial87", 64, false);
RegDSQItem("dsqmaterial88", 64, false);
RegDSQItem("dsqmaterial89", 64, false);
RegDSQItem("dsqmaterial90", 64, false);
RegDSQItem("dsqmaterial91", 64, false);
RegDSQItem("dsqmaterial92", 64, false);
RegDSQItem("dsqmaterial93", 64, false);
RegDSQItem("dsqmaterial94", 64, false);
RegDSQItem("dsqmaterial95", 64, false);
RegDSQItem("dsqmaterial96", 64, false);
RegDSQItem("dsqmaterial97", 64, false);
RegDSQItem("dsqmaterial98", 64, false);
RegDSQItem("dsqmaterial99", 64, false);
RegDSQItem("dsqmaterial100", 64, false);
RegDSQItem("dsqmaterial101", 64, false);
RegDSQItem("dsqmaterial102", 64, false);
RegDSQItem("dsqmaterial103", 64, false);
RegDSQItem("dsqmaterial104", 64, false);
RegDSQItem("dsqmaterial105", 64, false);
RegDSQItem("dsqmaterial106", 64, false);
RegDSQItem("dsqmaterial107", 64, false);
RegDSQItem("dsqmaterial108", 64, false);
RegDSQItem("dsqmaterial109", 64, false);
RegDSQItem("dsqmaterial110", 64, false);
RegDSQItem("dsqmaterial111", 64, false);
RegDSQItem("dsqmaterial112", 64, false);

function RegItem(name as string,maxn as int,glow as bool){
    var items as Item = VanillaFactory.createItem(name);
    items.maxStackSize = maxn;
    items.glowing = glow;
    items.creativeTab = <creativetab:itemcustomize>;
    items.register();
}

function RegDSQItem(name as string,maxn as int,glow as bool){
    var items as Item = VanillaFactory.createItem(name);
    items.maxStackSize = maxn;
    items.glowing = glow;
    items.creativeTab = <creativetab:dsqcustomize>;
    items.register();
}

function RegAerospace(name as string , Color as string) {
    //航空板
    val Plate as Part[] = [
        MaterialSystem.getPartBuilder()
        .setName("aerospace_plate")
        .setPartType(MaterialSystem.getPartType("item"))
        .setHasOverlay(false)
        .setOreDictName("AerospacePlate")
        .build()
    ];
    MaterialSystem.getMaterialBuilder()
    .setName(name)
    .setColor(Color)
    .build()
    .registerParts(Plate);
    //扇叶
    val Blade as Part[] = [
        MaterialSystem.getPartBuilder()
        .setName("aerospace_blade")
        .setPartType(MaterialSystem.getPartType("item"))
        .setHasOverlay(false)
        .setOreDictName("AerospaceBlade")
        .build()
    ];
    MaterialSystem.getMaterialBuilder()
    .setName(name)
    .setColor(Color)
    .build()
    .registerParts(Blade);
    //块
    val Block as Part[] = [
        MaterialSystem.getPartBuilder()
        .setName("aerospace_block")
        .setPartType(MaterialSystem.getPartType("block"))
        .setHasOverlay(false)
        .setOreDictName("AerospaceBlock")
        .build()
    ];
    // MaterialSystem.getMaterialBuilder()
    // .setName(name)
    // .setColor(Color)
    // .build()
    // .registerParts(Block);
}