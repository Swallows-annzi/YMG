/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.world.IBlockPos;
import crafttweaker.item.IItemStack;

import mods.modularmachinery.IMachineController;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.FactoryRecipeTickEvent;
import mods.modularmachinery.Sync;
import mods.modularmachinery.MachineStructureFormedEvent;
import mods.modularmachinery.RecipeCheckEvent;


//方块块轮换开关（注意服务器开销！！慎用！！
val MineralBlock = true;
//更换时间（不宜过快
val SpeedTick = 20;

//方块设置（记得修改模型文件！！！
val BlockState_1 = <blockstate:minecraft:iron_block>;
val BlockState_2 = <blockstate:minecraft:gold_block>;
val BlockState_3 = <blockstate:minecraft:diamond_block>;
val BlockState_4 = <blockstate:minecraft:emerald_block>;
val Block_1 = <minecraft:iron_block>;
val Block_2 = <minecraft:gold_block>;
val Block_3 = <minecraft:diamond_block>;
val Block_4 = <minecraft:emerald_block>;

//线程设置
MachineModifier.setMaxThreads("YMG_Lucky_Lotto", 0);

//大乐透
val Lucky_Lotto_String = "§e§l幸运大乐透§c§l(制作中)";
MachineModifier.addCoreThread("YMG_Lucky_Lotto", FactoryRecipeThread.createCoreThread(Lucky_Lotto_String));

//开袋器
val Open_Bag_String = "§e§l开袋器";
MachineModifier.addCoreThread("YMG_Lucky_Lotto", FactoryRecipeThread.createCoreThread(Open_Bag_String));


//产物
val EINS as int[IItemStack] = {
    <botania:petal> * 6 :   1,
    <botania:petal:1> * 6   :   1,
    <botania:petal:2> * 6   :   1,
    <botania:petal:3> * 6   :   1,
    <botania:petal:4> * 6   :   1,
    <botania:petal:5> * 6   :   1,
    <botania:petal:6> * 6   :   1,
    <botania:petal:7> * 6   :   1,
    <botania:petal:8> * 6   :   1,
    <botania:petal:9> * 6   :   1,
    <botania:petal:10> * 6  :   1,
    <botania:petal:11> * 6  :   1,
    <botania:petal:12> * 6  :   1,
    <botania:petal:13> * 6  :   1,
    <botania:petal:14> * 6  :   1,
    <botania:petal:15> * 6  :   1
};

val ZWEI as int[IItemStack] = {
    <botania:rune>:     1053,
    <botania:rune:1>:   1053,
    <botania:rune:2>:   1053,
    <botania:rune:3>:   1053,
    <botania:rune:4>:   658,
    <botania:rune:5>:   658,
    <botania:rune:6>:   658,
    <botania:rune:7>:   658,
    <botania:rune:8>:   395,
    <botania:rune:9>:   395,
    <botania:rune:10>:  395,
    <botania:rune:11>:  395,
    <botania:rune:12>:  395,
    <botania:rune:13>:  395,
    <botania:rune:14>:  395,
    <botania:rune:15>:  395
};

val DREI as int[IItemStack] = {
    <botania:manaresource> * 4 :1327,
    <botania:manaresource:1> * 4 :1327,
    <botania:manaresource:2> * 4 :1327,
    <botania:manaresource:4> :796,
    <botania:manaresource:23> * 8 :885,
    <botania:manaresource:14> :619,
    <botania:manaresource:5> * 3 :708,
    <botania:manaresource:7> * 3 :973,
    <botania:manaresource:8> * 3 :973,
    <botania:manaresource:9> * 3 :973,
    <extrabotany:material:3> :88
};

val VIER as int[IItemStack] = {
    <minecraft:iron_ingot> * 4 : 1905,
    <minecraft:diamond> : 952,
    <minecraft:coal> * 6 : 2116,
    <minecraft:gold_ingot> * 4 : 1270,
    <minecraft:ender_pearl> * 4 : 1058,
    <minecraft:redstone> * 8 : 1164,
    <botania:blacklotus> * 2 : 847,
    <botania:overgrowthseed> : 635,
    <extrabotany:buddhistrelics> : 53
};

val D943 as int[IItemStack] = {
    <extrabotany:rewardbag> * 16 : 1930,
    <extrabotany:rewardbag:1> * 10 : 1345,
    <extrabotany:rewardbag:2> * 6 : 760,
    <extrabotany:rewardbag:3> * 6 : 760,
    <botania:manaresource:14> : 1345,
    <botania:manaresource:4> * 5 : 1170,
    <extrabotany:material:6> : 2632,
    <extrabotany:material:3> : 58
};

//总权重
val EINS_WeighetSum = Weight_sum(EINS);
val ZWEI_WeighetSum = Weight_sum(ZWEI);
val DREI_WeighetSum = Weight_sum(DREI);
val VIER_WeighetSum = Weight_sum(VIER);
val D943_WeighetSum = Weight_sum(D943);
val EINS_Output = output(EINS);
val ZWEI_Output = output(ZWEI);
val DREI_Output = output(DREI);
val VIER_Output = output(VIER);
val D943_Output = output(D943);

//奖励袋EINS
mods.modularmachinery.RecipeBuilder.newBuilder("Lucky_Lotto_1", "YMG_Lucky_Lotto", 1)
.addItemInput(<extrabotany:rewardbag>)
.addItemOutput(<contenttweaker:dsqmaterial1>.withTag({display: {Lore: ["物品开出的概率等同于奖励袋所示"]}}))
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val world = ctrl.world;
    val random = world.random;
    val numbers = random.nextInt(0,EINS_WeighetSum - 1);
    return EINS_Output[numbers];
})
.addRecipeTooltip(
    "§e物品开出的概率等同于奖励袋所示"
)
.build();

//奖励袋ZWEI
mods.modularmachinery.RecipeBuilder.newBuilder("Lucky_Lotto_2", "YMG_Lucky_Lotto", 1)
.addItemInput(<extrabotany:rewardbag:1>)
.addItemOutput(<contenttweaker:dsqmaterial1>.withTag({display: {Lore: ["物品开出的概率等同于奖励袋所示"]}}))
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val world = ctrl.world;
    val random = world.random;
    val numbers = random.nextInt(0,ZWEI_WeighetSum - 1);
    return ZWEI_Output[numbers];
})
.addRecipeTooltip(
    "§e物品开出的概率等同于奖励袋所示"
)
.build();

//奖励袋DREI
mods.modularmachinery.RecipeBuilder.newBuilder("Lucky_Lotto_3", "YMG_Lucky_Lotto", 1)
.addItemInput(<extrabotany:rewardbag:2>)
.addItemOutput(<contenttweaker:dsqmaterial1>.withTag({display: {Lore: ["物品开出的概率等同于奖励袋所示"]}}))
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val world = ctrl.world;
    val random = world.random;
    val numbers = random.nextInt(0,DREI_WeighetSum - 1);
    return DREI_Output[numbers];
})
.addRecipeTooltip(
    "§e物品开出的概率等同于奖励袋所示"
)
.build();

//奖励袋VIER
mods.modularmachinery.RecipeBuilder.newBuilder("Lucky_Lotto_4", "YMG_Lucky_Lotto", 1)
.addItemInput(<extrabotany:rewardbag:3>)
.addItemOutput(<contenttweaker:dsqmaterial1>.withTag({display: {Lore: ["物品开出的概率等同于奖励袋所示"]}}))
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val world = ctrl.world;
    val random = world.random;
    val numbers = random.nextInt(0,VIER_WeighetSum - 1);
    return VIER_Output[numbers];
})
.addRecipeTooltip(
    "§e物品开出的概率等同于奖励袋所示"
)
.build();

//奖励袋D943
mods.modularmachinery.RecipeBuilder.newBuilder("Lucky_Lotto_5", "YMG_Lucky_Lotto", 1)
.addItemInput(<extrabotany:rewardbag943>)
.addItemOutput(<contenttweaker:dsqmaterial1>.withTag({display: {Lore: ["物品开出的概率等同于奖励袋所示"]}}))
.addItemModifier(function(ctrl as IMachineController, Item as IItemStack) {
    val world = ctrl.world;
    val random = world.random;
    val numbers = random.nextInt(0,D943_WeighetSum - 1);
    return D943_Output[numbers];
})
.addRecipeTooltip(
    "§e物品开出的概率等同于奖励袋所示"
)
.build();

//炫彩灯带
if(MineralBlock){
    val MineralBlock_String = "§e§l流光灯";
    MachineModifier.addCoreThread("YMG_Lucky_Lotto", FactoryRecipeThread.createCoreThread(MineralBlock_String));
    mods.modularmachinery.RecipeBuilder.newBuilder("Lucky_Lotto_MineralBlock", "YMG_Lucky_Lotto", 1200)
    .addPreCheckHandler(function(event as RecipeCheckEvent) {
        val ctrl = event.controller;
        val data = ctrl.customData;
        val map = data.asMap();
        map["Allow"] = isNull(map["Allow"]) ? false as bool : map["Allow"].asBool();
        if(!map["Allow"].asBool())
        event.setFailed("§c结构不正确！");
    })
    .setThreadName(MineralBlock_String)
    .addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
        val ctrl = event.controller;
        val data = ctrl.customData;
        val map = data.asMap();
        map["Allow"] = isNull(map["Allow"]) ? false as bool : map["Allow"].asBool();
        if(map["Allow"].asBool()){
                map["MineralBlock_TimeTick"] = isNull(map["MineralBlock_TimeTick"]) ? 0 as long : map["MineralBlock_TimeTick"].asLong();
                map["MineralBlock_TimeTick"] = map["MineralBlock_TimeTick"].asLong() + 1;
                Sync.addSyncTask(function(){
                        val world = event.controller.world;
                        val pos = event.controller.pos;
                        val facing = event.controller.facing.name;
                        if(facing == "EAST"){
                                val posA_1 = IBlockPos.create(pos.x - 1, pos.y + 1, pos.z);
                                val posB_1 = IBlockPos.create(pos.x - 2, pos.y + 1, pos.z - 1);
                                val posC_1 = IBlockPos.create(pos.x - 2, pos.y + 1, pos.z + 1);
                                val posD_1 = IBlockPos.create(pos.x - 3, pos.y + 1, pos.z);
                                val posA_2 = IBlockPos.create(pos.x - 1, pos.y + 2, pos.z);
                                val posB_2 = IBlockPos.create(pos.x - 2, pos.y + 2, pos.z - 1);
                                val posC_2 = IBlockPos.create(pos.x - 2, pos.y + 2, pos.z + 1);
                                val posD_2 = IBlockPos.create(pos.x - 3, pos.y + 2, pos.z);
                                val posA_3 = IBlockPos.create(pos.x - 1, pos.y + 3, pos.z);
                                val posB_3 = IBlockPos.create(pos.x - 2, pos.y + 3, pos.z - 1);
                                val posC_3 = IBlockPos.create(pos.x - 2, pos.y + 3, pos.z + 1);
                                val posD_3 = IBlockPos.create(pos.x - 3, pos.y + 3, pos.z);
                                val posA_4 = IBlockPos.create(pos.x - 1, pos.y + 4, pos.z);
                                val posB_4 = IBlockPos.create(pos.x - 2, pos.y + 4, pos.z - 1);
                                val posC_4 = IBlockPos.create(pos.x - 2, pos.y + 4, pos.z + 1);
                                val posD_4 = IBlockPos.create(pos.x - 3, pos.y + 4, pos.z);
                                if (!world.remote) {
                                        if(map["MineralBlock_TimeTick"].asLong() == SpeedTick * 1){
                                                world.setBlockState(BlockState_1, posA_4);
                                                world.setBlockState(BlockState_1, posB_4);
                                                world.setBlockState(BlockState_1, posC_4);
                                                world.setBlockState(BlockState_1, posD_4);
                                                world.setBlockState(BlockState_2, posA_3);
                                                world.setBlockState(BlockState_2, posB_3);
                                                world.setBlockState(BlockState_2, posC_3);
                                                world.setBlockState(BlockState_2, posD_3);
                                                world.setBlockState(BlockState_3, posA_2);
                                                world.setBlockState(BlockState_3, posB_2);
                                                world.setBlockState(BlockState_3, posC_2);
                                                world.setBlockState(BlockState_3, posD_2);
                                                world.setBlockState(BlockState_4, posA_1);
                                                world.setBlockState(BlockState_4, posB_1);
                                                world.setBlockState(BlockState_4, posC_1);
                                                world.setBlockState(BlockState_4, posD_1);
                                        }
                                        if(map["MineralBlock_TimeTick"].asLong() == SpeedTick * 2){
                                                world.setBlockState(BlockState_2, posA_4);
                                                world.setBlockState(BlockState_2, posB_4);
                                                world.setBlockState(BlockState_2, posC_4);
                                                world.setBlockState(BlockState_2, posD_4);
                                                world.setBlockState(BlockState_3, posA_3);
                                                world.setBlockState(BlockState_3, posB_3);
                                                world.setBlockState(BlockState_3, posC_3);
                                                world.setBlockState(BlockState_3, posD_3);
                                                world.setBlockState(BlockState_4, posA_2);
                                                world.setBlockState(BlockState_4, posB_2);
                                                world.setBlockState(BlockState_4, posC_2);
                                                world.setBlockState(BlockState_4, posD_2);
                                                world.setBlockState(BlockState_1, posA_1);
                                                world.setBlockState(BlockState_1, posB_1);
                                                world.setBlockState(BlockState_1, posC_1);
                                                world.setBlockState(BlockState_1, posD_1);
                                        }
                                        if(map["MineralBlock_TimeTick"].asLong() == SpeedTick * 3){
                                                world.setBlockState(BlockState_3, posA_4);
                                                world.setBlockState(BlockState_3, posB_4);
                                                world.setBlockState(BlockState_3, posC_4);
                                                world.setBlockState(BlockState_3, posD_4);
                                                world.setBlockState(BlockState_4, posA_3);
                                                world.setBlockState(BlockState_4, posB_3);
                                                world.setBlockState(BlockState_4, posC_3);
                                                world.setBlockState(BlockState_4, posD_3);
                                                world.setBlockState(BlockState_1, posA_2);
                                                world.setBlockState(BlockState_1, posB_2);
                                                world.setBlockState(BlockState_1, posC_2);
                                                world.setBlockState(BlockState_1, posD_2);
                                                world.setBlockState(BlockState_2, posA_1);
                                                world.setBlockState(BlockState_2, posB_1);
                                                world.setBlockState(BlockState_2, posC_1);
                                                world.setBlockState(BlockState_2, posD_1);
                                        }
                                        if(map["MineralBlock_TimeTick"].asLong() == SpeedTick * 4){
                                                world.setBlockState(BlockState_4, posA_4);
                                                world.setBlockState(BlockState_4, posB_4);
                                                world.setBlockState(BlockState_4, posC_4);
                                                world.setBlockState(BlockState_4, posD_4);
                                                world.setBlockState(BlockState_1, posA_3);
                                                world.setBlockState(BlockState_1, posB_3);
                                                world.setBlockState(BlockState_1, posC_3);
                                                world.setBlockState(BlockState_1, posD_3);
                                                world.setBlockState(BlockState_2, posA_2);
                                                world.setBlockState(BlockState_2, posB_2);
                                                world.setBlockState(BlockState_2, posC_2);
                                                world.setBlockState(BlockState_2, posD_2);
                                                world.setBlockState(BlockState_3, posA_1);
                                                world.setBlockState(BlockState_3, posB_1);
                                                world.setBlockState(BlockState_3, posC_1);
                                                world.setBlockState(BlockState_3, posD_1);
                                                map["MineralBlock_TimeTick"] = 0;
                                                ctrl.customData = data;
                                        }
                                }
                        }
                        if(facing == "WEST"){
                                val posA_1 = IBlockPos.create(pos.x + 1, pos.y + 1, pos.z);
                                val posB_1 = IBlockPos.create(pos.x + 2, pos.y + 1, pos.z - 1);
                                val posC_1 = IBlockPos.create(pos.x + 2, pos.y + 1, pos.z + 1);
                                val posD_1 = IBlockPos.create(pos.x + 3, pos.y + 1, pos.z);
                                val posA_2 = IBlockPos.create(pos.x + 1, pos.y + 2, pos.z);
                                val posB_2 = IBlockPos.create(pos.x + 2, pos.y + 2, pos.z - 1);
                                val posC_2 = IBlockPos.create(pos.x + 2, pos.y + 2, pos.z + 1);
                                val posD_2 = IBlockPos.create(pos.x + 3, pos.y + 2, pos.z);
                                val posA_3 = IBlockPos.create(pos.x + 1, pos.y + 3, pos.z);
                                val posB_3 = IBlockPos.create(pos.x + 2, pos.y + 3, pos.z - 1);
                                val posC_3 = IBlockPos.create(pos.x + 2, pos.y + 3, pos.z + 1);
                                val posD_3 = IBlockPos.create(pos.x + 3, pos.y + 3, pos.z);
                                val posA_4 = IBlockPos.create(pos.x + 1, pos.y + 4, pos.z);
                                val posB_4 = IBlockPos.create(pos.x + 2, pos.y + 4, pos.z - 1);
                                val posC_4 = IBlockPos.create(pos.x + 2, pos.y + 4, pos.z + 1);
                                val posD_4 = IBlockPos.create(pos.x + 3, pos.y + 4, pos.z);
                                if (!world.remote) {
                                        if(map["MineralBlock_TimeTick"].asLong() == SpeedTick * 1){
                                                world.setBlockState(BlockState_1, posA_4);
                                                world.setBlockState(BlockState_1, posB_4);
                                                world.setBlockState(BlockState_1, posC_4);
                                                world.setBlockState(BlockState_1, posD_4);
                                                world.setBlockState(BlockState_2, posA_3);
                                                world.setBlockState(BlockState_2, posB_3);
                                                world.setBlockState(BlockState_2, posC_3);
                                                world.setBlockState(BlockState_2, posD_3);
                                                world.setBlockState(BlockState_3, posA_2);
                                                world.setBlockState(BlockState_3, posB_2);
                                                world.setBlockState(BlockState_3, posC_2);
                                                world.setBlockState(BlockState_3, posD_2);
                                                world.setBlockState(BlockState_4, posA_1);
                                                world.setBlockState(BlockState_4, posB_1);
                                                world.setBlockState(BlockState_4, posC_1);
                                                world.setBlockState(BlockState_4, posD_1);
                                        }
                                        if(map["MineralBlock_TimeTick"].asLong() == SpeedTick * 2){
                                                world.setBlockState(BlockState_2, posA_4);
                                                world.setBlockState(BlockState_2, posB_4);
                                                world.setBlockState(BlockState_2, posC_4);
                                                world.setBlockState(BlockState_2, posD_4);
                                                world.setBlockState(BlockState_3, posA_3);
                                                world.setBlockState(BlockState_3, posB_3);
                                                world.setBlockState(BlockState_3, posC_3);
                                                world.setBlockState(BlockState_3, posD_3);
                                                world.setBlockState(BlockState_4, posA_2);
                                                world.setBlockState(BlockState_4, posB_2);
                                                world.setBlockState(BlockState_4, posC_2);
                                                world.setBlockState(BlockState_4, posD_2);
                                                world.setBlockState(BlockState_1, posA_1);
                                                world.setBlockState(BlockState_1, posB_1);
                                                world.setBlockState(BlockState_1, posC_1);
                                                world.setBlockState(BlockState_1, posD_1);
                                        }
                                        if(map["MineralBlock_TimeTick"].asLong() == SpeedTick * 3){
                                                world.setBlockState(BlockState_3, posA_4);
                                                world.setBlockState(BlockState_3, posB_4);
                                                world.setBlockState(BlockState_3, posC_4);
                                                world.setBlockState(BlockState_3, posD_4);
                                                world.setBlockState(BlockState_4, posA_3);
                                                world.setBlockState(BlockState_4, posB_3);
                                                world.setBlockState(BlockState_4, posC_3);
                                                world.setBlockState(BlockState_4, posD_3);
                                                world.setBlockState(BlockState_1, posA_2);
                                                world.setBlockState(BlockState_1, posB_2);
                                                world.setBlockState(BlockState_1, posC_2);
                                                world.setBlockState(BlockState_1, posD_2);
                                                world.setBlockState(BlockState_2, posA_1);
                                                world.setBlockState(BlockState_2, posB_1);
                                                world.setBlockState(BlockState_2, posC_1);
                                                world.setBlockState(BlockState_2, posD_1);
                                        }
                                        if(map["MineralBlock_TimeTick"].asLong() == SpeedTick * 4){
                                                world.setBlockState(BlockState_4, posA_4);
                                                world.setBlockState(BlockState_4, posB_4);
                                                world.setBlockState(BlockState_4, posC_4);
                                                world.setBlockState(BlockState_4, posD_4);
                                                world.setBlockState(BlockState_1, posA_3);
                                                world.setBlockState(BlockState_1, posB_3);
                                                world.setBlockState(BlockState_1, posC_3);
                                                world.setBlockState(BlockState_1, posD_3);
                                                world.setBlockState(BlockState_2, posA_2);
                                                world.setBlockState(BlockState_2, posB_2);
                                                world.setBlockState(BlockState_2, posC_2);
                                                world.setBlockState(BlockState_2, posD_2);
                                                world.setBlockState(BlockState_3, posA_1);
                                                world.setBlockState(BlockState_3, posB_1);
                                                world.setBlockState(BlockState_3, posC_1);
                                                world.setBlockState(BlockState_3, posD_1);
                                                map["MineralBlock_TimeTick"] = 0;
                                                ctrl.customData = data;
                                        }
                                }
                        }
                        if(facing == "SOUTH"){
                                val posA_1 = IBlockPos.create(pos.x, pos.y + 1, pos.z - 1);
                                val posB_1 = IBlockPos.create(pos.x - 1, pos.y + 1, pos.z - 2);
                                val posC_1 = IBlockPos.create(pos.x + 1, pos.y + 1, pos.z - 2);
                                val posD_1 = IBlockPos.create(pos.x, pos.y + 1, pos.z - 3);
                                val posA_2 = IBlockPos.create(pos.x, pos.y + 2, pos.z - 1);
                                val posB_2 = IBlockPos.create(pos.x - 1, pos.y + 2, pos.z - 2);
                                val posC_2 = IBlockPos.create(pos.x + 1, pos.y + 2, pos.z - 2);
                                val posD_2 = IBlockPos.create(pos.x, pos.y + 2, pos.z - 3);
                                val posA_3 = IBlockPos.create(pos.x, pos.y + 3, pos.z - 1);
                                val posB_3 = IBlockPos.create(pos.x - 1, pos.y + 3, pos.z - 2);
                                val posC_3 = IBlockPos.create(pos.x + 1, pos.y + 3, pos.z - 2);
                                val posD_3 = IBlockPos.create(pos.x, pos.y + 3, pos.z - 3);
                                val posA_4 = IBlockPos.create(pos.x, pos.y + 4, pos.z - 1);
                                val posB_4 = IBlockPos.create(pos.x - 1, pos.y + 4, pos.z - 2);
                                val posC_4 = IBlockPos.create(pos.x + 1, pos.y + 4, pos.z - 2);
                                val posD_4 = IBlockPos.create(pos.x, pos.y + 4, pos.z - 3);
                                if (!world.remote) {
                                        if(map["MineralBlock_TimeTick"].asLong() == SpeedTick * 1){
                                                world.setBlockState(BlockState_1, posA_4);
                                                world.setBlockState(BlockState_1, posB_4);
                                                world.setBlockState(BlockState_1, posC_4);
                                                world.setBlockState(BlockState_1, posD_4);
                                                world.setBlockState(BlockState_2, posA_3);
                                                world.setBlockState(BlockState_2, posB_3);
                                                world.setBlockState(BlockState_2, posC_3);
                                                world.setBlockState(BlockState_2, posD_3);
                                                world.setBlockState(BlockState_3, posA_2);
                                                world.setBlockState(BlockState_3, posB_2);
                                                world.setBlockState(BlockState_3, posC_2);
                                                world.setBlockState(BlockState_3, posD_2);
                                                world.setBlockState(BlockState_4, posA_1);
                                                world.setBlockState(BlockState_4, posB_1);
                                                world.setBlockState(BlockState_4, posC_1);
                                                world.setBlockState(BlockState_4, posD_1);
                                        }
                                        if(map["MineralBlock_TimeTick"].asLong() == SpeedTick * 2){
                                                world.setBlockState(BlockState_2, posA_4);
                                                world.setBlockState(BlockState_2, posB_4);
                                                world.setBlockState(BlockState_2, posC_4);
                                                world.setBlockState(BlockState_2, posD_4);
                                                world.setBlockState(BlockState_3, posA_3);
                                                world.setBlockState(BlockState_3, posB_3);
                                                world.setBlockState(BlockState_3, posC_3);
                                                world.setBlockState(BlockState_3, posD_3);
                                                world.setBlockState(BlockState_4, posA_2);
                                                world.setBlockState(BlockState_4, posB_2);
                                                world.setBlockState(BlockState_4, posC_2);
                                                world.setBlockState(BlockState_4, posD_2);
                                                world.setBlockState(BlockState_1, posA_1);
                                                world.setBlockState(BlockState_1, posB_1);
                                                world.setBlockState(BlockState_1, posC_1);
                                                world.setBlockState(BlockState_1, posD_1);
                                        }
                                        if(map["MineralBlock_TimeTick"].asLong() == SpeedTick * 3){
                                                world.setBlockState(BlockState_3, posA_4);
                                                world.setBlockState(BlockState_3, posB_4);
                                                world.setBlockState(BlockState_3, posC_4);
                                                world.setBlockState(BlockState_3, posD_4);
                                                world.setBlockState(BlockState_4, posA_3);
                                                world.setBlockState(BlockState_4, posB_3);
                                                world.setBlockState(BlockState_4, posC_3);
                                                world.setBlockState(BlockState_4, posD_3);
                                                world.setBlockState(BlockState_1, posA_2);
                                                world.setBlockState(BlockState_1, posB_2);
                                                world.setBlockState(BlockState_1, posC_2);
                                                world.setBlockState(BlockState_1, posD_2);
                                                world.setBlockState(BlockState_2, posA_1);
                                                world.setBlockState(BlockState_2, posB_1);
                                                world.setBlockState(BlockState_2, posC_1);
                                                world.setBlockState(BlockState_2, posD_1);
                                        }
                                        if(map["MineralBlock_TimeTick"].asLong() == SpeedTick * 4){
                                                world.setBlockState(BlockState_4, posA_4);
                                                world.setBlockState(BlockState_4, posB_4);
                                                world.setBlockState(BlockState_4, posC_4);
                                                world.setBlockState(BlockState_4, posD_4);
                                                world.setBlockState(BlockState_1, posA_3);
                                                world.setBlockState(BlockState_1, posB_3);
                                                world.setBlockState(BlockState_1, posC_3);
                                                world.setBlockState(BlockState_1, posD_3);
                                                world.setBlockState(BlockState_2, posA_2);
                                                world.setBlockState(BlockState_2, posB_2);
                                                world.setBlockState(BlockState_2, posC_2);
                                                world.setBlockState(BlockState_2, posD_2);
                                                world.setBlockState(BlockState_3, posA_1);
                                                world.setBlockState(BlockState_3, posB_1);
                                                world.setBlockState(BlockState_3, posC_1);
                                                world.setBlockState(BlockState_3, posD_1);
                                                map["MineralBlock_TimeTick"] = 0;
                                                ctrl.customData = data;
                                        }
                                }
                        }
                        if(facing == "NORTH"){
                                val posA_1 = IBlockPos.create(pos.x, pos.y + 1, pos.z + 1);
                                val posB_1 = IBlockPos.create(pos.x - 1, pos.y + 1, pos.z + 2);
                                val posC_1 = IBlockPos.create(pos.x + 1, pos.y + 1, pos.z + 2);
                                val posD_1 = IBlockPos.create(pos.x, pos.y + 1, pos.z + 3);
                                val posA_2 = IBlockPos.create(pos.x, pos.y + 2, pos.z + 1);
                                val posB_2 = IBlockPos.create(pos.x - 1, pos.y + 2, pos.z + 2);
                                val posC_2 = IBlockPos.create(pos.x + 1, pos.y + 2, pos.z + 2);
                                val posD_2 = IBlockPos.create(pos.x, pos.y + 2, pos.z + 3);
                                val posA_3 = IBlockPos.create(pos.x, pos.y + 3, pos.z + 1);
                                val posB_3 = IBlockPos.create(pos.x - 1, pos.y + 3, pos.z + 2);
                                val posC_3 = IBlockPos.create(pos.x + 1, pos.y + 3, pos.z + 2);
                                val posD_3 = IBlockPos.create(pos.x, pos.y + 3, pos.z + 3);
                                val posA_4 = IBlockPos.create(pos.x, pos.y + 4, pos.z + 1);
                                val posB_4 = IBlockPos.create(pos.x - 1, pos.y + 4, pos.z + 2);
                                val posC_4 = IBlockPos.create(pos.x + 1, pos.y + 4, pos.z + 2);
                                val posD_4 = IBlockPos.create(pos.x, pos.y + 4, pos.z + 3);
                                if (!world.remote) {
                                        if(map["MineralBlock_TimeTick"].asLong() == SpeedTick * 1){
                                                world.setBlockState(BlockState_1, posA_4);
                                                world.setBlockState(BlockState_1, posB_4);
                                                world.setBlockState(BlockState_1, posC_4);
                                                world.setBlockState(BlockState_1, posD_4);
                                                world.setBlockState(BlockState_2, posA_3);
                                                world.setBlockState(BlockState_2, posB_3);
                                                world.setBlockState(BlockState_2, posC_3);
                                                world.setBlockState(BlockState_2, posD_3);
                                                world.setBlockState(BlockState_3, posA_2);
                                                world.setBlockState(BlockState_3, posB_2);
                                                world.setBlockState(BlockState_3, posC_2);
                                                world.setBlockState(BlockState_3, posD_2);
                                                world.setBlockState(BlockState_4, posA_1);
                                                world.setBlockState(BlockState_4, posB_1);
                                                world.setBlockState(BlockState_4, posC_1);
                                                world.setBlockState(BlockState_4, posD_1);
                                        }
                                        if(map["MineralBlock_TimeTick"].asLong() == SpeedTick * 2){
                                                world.setBlockState(BlockState_2, posA_4);
                                                world.setBlockState(BlockState_2, posB_4);
                                                world.setBlockState(BlockState_2, posC_4);
                                                world.setBlockState(BlockState_2, posD_4);
                                                world.setBlockState(BlockState_3, posA_3);
                                                world.setBlockState(BlockState_3, posB_3);
                                                world.setBlockState(BlockState_3, posC_3);
                                                world.setBlockState(BlockState_3, posD_3);
                                                world.setBlockState(BlockState_4, posA_2);
                                                world.setBlockState(BlockState_4, posB_2);
                                                world.setBlockState(BlockState_4, posC_2);
                                                world.setBlockState(BlockState_4, posD_2);
                                                world.setBlockState(BlockState_1, posA_1);
                                                world.setBlockState(BlockState_1, posB_1);
                                                world.setBlockState(BlockState_1, posC_1);
                                                world.setBlockState(BlockState_1, posD_1);
                                        }
                                        if(map["MineralBlock_TimeTick"].asLong() == SpeedTick * 3){
                                                world.setBlockState(BlockState_3, posA_4);
                                                world.setBlockState(BlockState_3, posB_4);
                                                world.setBlockState(BlockState_3, posC_4);
                                                world.setBlockState(BlockState_3, posD_4);
                                                world.setBlockState(BlockState_4, posA_3);
                                                world.setBlockState(BlockState_4, posB_3);
                                                world.setBlockState(BlockState_4, posC_3);
                                                world.setBlockState(BlockState_4, posD_3);
                                                world.setBlockState(BlockState_1, posA_2);
                                                world.setBlockState(BlockState_1, posB_2);
                                                world.setBlockState(BlockState_1, posC_2);
                                                world.setBlockState(BlockState_1, posD_2);
                                                world.setBlockState(BlockState_2, posA_1);
                                                world.setBlockState(BlockState_2, posB_1);
                                                world.setBlockState(BlockState_2, posC_1);
                                                world.setBlockState(BlockState_2, posD_1);
                                        }
                                        if(map["MineralBlock_TimeTick"].asLong() == SpeedTick * 4){
                                                world.setBlockState(BlockState_4, posA_4);
                                                world.setBlockState(BlockState_4, posB_4);
                                                world.setBlockState(BlockState_4, posC_4);
                                                world.setBlockState(BlockState_4, posD_4);
                                                world.setBlockState(BlockState_1, posA_3);
                                                world.setBlockState(BlockState_1, posB_3);
                                                world.setBlockState(BlockState_1, posC_3);
                                                world.setBlockState(BlockState_1, posD_3);
                                                world.setBlockState(BlockState_2, posA_2);
                                                world.setBlockState(BlockState_2, posB_2);
                                                world.setBlockState(BlockState_2, posC_2);
                                                world.setBlockState(BlockState_2, posD_2);
                                                world.setBlockState(BlockState_3, posA_1);
                                                world.setBlockState(BlockState_3, posB_1);
                                                world.setBlockState(BlockState_3, posC_1);
                                                world.setBlockState(BlockState_3, posD_1);
                                                map["MineralBlock_TimeTick"] = 0;
                                                ctrl.customData = data;
                                        }
                                }
                        }
                });
        }
        ctrl.customData = data;
    })
    .addRecipeTooltip(
        "§d如果开启了方块轮换那么你就能看到这条配方"
    )
    .build();
}

//方块检测
MMEvents.onStructureFormed("YMG_Lucky_Lotto", function(event as MachineStructureFormedEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["Allow"] = isNull(map["Allow"]) ? false as bool : map["Allow"].asBool();
    if(ctrl.getBlocksInPattern(Block_1) == 4 && ctrl.getBlocksInPattern(Block_2) == 4 && ctrl.getBlocksInPattern(Block_3) == 4 && ctrl.getBlocksInPattern(Block_4) == 4){
        map["Allow"] = true;
    }
    else{
        map["Allow"] = false;
    }
    ctrl.customData = data;
});

//GUI
MMEvents.onControllerGUIRender("YMG_Lucky_Lotto", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    var info as string[] = [];
    // info += data;
    ctrl.customData = data;
    event.extraInfo = info;
});

//计算权重总值
function Weight_sum(ore as int[IItemStack]) as int {
    var sum = 0;
    for uselessData,number in ore {
        sum = sum + number;
    }
    return sum as int;
}

//产出表计算
function output(ore as int[IItemStack]) as IItemStack[] {
    var output_table as IItemStack[] = [];
    for input, number in ore{
        for i in 0 to number
        output_table += input;
    }
    return output_table;
}