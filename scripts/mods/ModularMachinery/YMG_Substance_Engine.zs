/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.SmartInterfaceType;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.RecipeModifierBuilder;


val CatalyticRateMin  = 0.0F;
val CatalyticRateMax  = 100.0F;
val EnergyInput = 40000000;
val Tick = 1;

//数据端口
MachineModifier.addSmartInterfaceType("YMG_Substance_Engine",
    SmartInterfaceType.create("CatalyticRate", 1.0F)
    .setPriority(1)
    .setHeaderInfo("催化剂倍率设置")
    .setValueInfo("倍率：%l 倍")
    .setFooterInfo("可调节的数据范围：" + CatalyticRateMin + " ~ " + CatalyticRateMax + " 只精确到一位小数")
    .setNotEqualMessage("数据异常！")
);
MachineModifier.addSmartInterfaceType("YMG_Substance_Engine",
    SmartInterfaceType.create("ModeID", 1)
    .setPriority(2)
    .setHeaderInfo("配方模式")
    .setValueInfo("模式ID：%.0f")
    .setFooterInfo("1：常规  2：催化  3：超限")
    .setNotEqualMessage("该模式不可运行此配方！")
);

//数据接口数据写入控制器
MMEvents.onMachinePostTick("YMG_Substance_Engine", function(event as MachineTickEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val nullable_1 = ctrl.getSmartInterfaceData("CatalyticRate");
    val nullable_2 = ctrl.getSmartInterfaceData("ModeID");
    val CatalyticRate = isNull(nullable_1) ? 1.0F as float : nullable_1.value;
    val ModeID = isNull(nullable_2) ? 1.0F as float : nullable_2.value;
    if (CatalyticRate < CatalyticRateMin || CatalyticRate > CatalyticRateMax) {
        nullable_2.value = 1.0F;
        map["CatalyticRate"] = 1.0F;
    }
    else {
        map["CatalyticRate"] = CatalyticRate;
    }
    map["ModeID"] = ModeID as int;
    ctrl.customData = data;
});

//UU
SubstanceEngineRecipe("UU_litherite_crystal_core", <contenttweaker:litherite_crystal_core>, <liquid:ic2uu_matter> * 10, EnergyInput, Tick, 1.0F, 0.0003F, 0.3F, 30.0F);
SubstanceEngineRecipe("UU_erodium_crystal_core", <contenttweaker:erodium_crystal_core>, <liquid:ic2uu_matter> * 10, EnergyInput, Tick, 1.0F, 0.0003F, 0.3F, 30.0F);
SubstanceEngineRecipe("UU_kyronite_crystal_core", <contenttweaker:kyronite_crystal_core>, <liquid:ic2uu_matter> * 10, EnergyInput, Tick, 1.0F, 0.0003F, 0.3F, 30.0F);
SubstanceEngineRecipe("UU_pladium_crystal_core", <contenttweaker:pladium_crystal_core>, <liquid:ic2uu_matter> * 10, EnergyInput, Tick, 1.0F, 0.0003F, 0.3F, 30.0F);
SubstanceEngineRecipe("UU_ionite_crystal_core", <contenttweaker:ionite_crystal_core>, <liquid:ic2uu_matter> * 10, EnergyInput, Tick, 1.0F, 0.0003F, 0.3F, 30.0F);
SubstanceEngineRecipe("UU_aethium_crystal_core", <contenttweaker:aethium_crystal_core>, <liquid:ic2uu_matter> * 10, EnergyInput, Tick, 1.0F, 0.0003F, 0.3F, 30.0F);
SubstanceEngineRecipe("UU_lonsdaleite_crystal_core", <contenttweaker:lonsdaleite_crystal_core>, <liquid:ic2uu_matter> * 10, EnergyInput, Tick, 1.0F, 0.0003F, 0.3F, 30.0F);


//物质生成机配方
//配方名-物品输入-流体输出-能量消耗-配方时间-催化能源消耗倍率-超限物品输入消耗概率-催化催化剂消耗概率-流体产出倍率
function SubstanceEngineRecipe(RecipeName as string, Input as  IItemStack, Output as ILiquidStack, EnergyInput as int, Tick as int, EnergyInputMagnification as float, InputItemUltimateChance as float, InputCatalystChance as float, OutputFluidUltimate as float) as void {
    //常规
    mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Substance_Engine_" + RecipeName + "_1", "YMG_Substance_Engine", Tick)
    .addSmartInterfaceDataInput("ModeID", 1, 1)
    .addEnergyPerTickInput(EnergyInput * EnergyInputMagnification)
    .addItemInput(Input).setChance(0.0F)
    .addFluidOutput(Output)
    .build();

    //催化
    mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Substance_Engine_" + RecipeName + "_2", "YMG_Substance_Engine", Tick)
    .addSmartInterfaceDataInput("ModeID", 2, 2)
    .addEnergyPerTickInput(0.25F * EnergyInput * EnergyInputMagnification)
    .addItemInput(Input).setChance(0.0F)
    .addFluidInput(<liquid:quantum_catalyst>).setChance(InputCatalystChance)
    .addFluidOutput(Output)
    .addPreTickHandler(function(event as RecipeTickEvent) {
        val ctrl = event.controller;
        val data = ctrl.customData;
        val map = data.asMap();
        map["CatalyticRate"] = isNull(map["CatalyticRate"]) ? 1.0F as float : map["CatalyticRate"].asFloat();
        ctrl.addModifier("YMG_Substance_Engine_UU_Energy_Input", RecipeModifierBuilder.create("modularmachinery:energy", "input", map["CatalyticRate"].asFloat(), 1, false).build());
        ctrl.addModifier("YMG_Substance_Engine_UU_Item_Output", RecipeModifierBuilder.create("modularmachinery:fluid", "output", 1 + map["CatalyticRate"].asFloat() * 0.1F, 1, false).build());
        ctrl.addModifier("YMG_Substance_Engine_UU_Item_Input", RecipeModifierBuilder.create("modularmachinery:fluid", "input", 1 + map["CatalyticRate"].asFloat() * 0.1F, 1, false).build());
        ctrl.addModifier("YMG_Substance_Engine_UU_Item_Input_Chance", RecipeModifierBuilder.create("modularmachinery:fluid", "input", map["CatalyticRate"].asFloat() * 0.01F, 0, true).build());
    })
    .addRecipeTooltip(
        "可通过智能数据接口调整催化剂的输入量。",
        "相应的输入与输出会根据输入的数值而倍数增加。",
        "而催化剂的消耗概率会随着数值增加而增加。"
        )
    .build();

    //超限
    mods.modularmachinery.RecipeBuilder.newBuilder("YMG_Substance_Engine_" + RecipeName + "_3", "YMG_Substance_Engine", Tick)
    .addSmartInterfaceDataInput("ModeID", 3, 3)
    .addEnergyPerTickInput(EnergyInput * EnergyInputMagnification)
    .addItemInput(Input).setChance(InputItemUltimateChance)
    .addItemInput(<contenttweaker:compressed_electrostatics>).setChance(0.001F)
    .addFluidInput(<liquid:quantum_catalyst> * 20)
    .addFluidOutput(Output * OutputFluidUltimate)
    .build();
}

//GUI
MMEvents.onControllerGUIRender("YMG_Substance_Engine", function(event as ControllerGUIRenderEvent) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    map["CatalyticRate"] = isNull(map["CatalyticRate"]) ? 1.0F as float : map["CatalyticRate"].asFloat();
    map["ModeID"] = isNull(map["ModeID"]) ? 0 as int : map["ModeID"].asInt();
    var info as string[] = [];
    info += "§c>>";
    info += "§9催化效率：§e" + map["CatalyticRate"].asFloat() * 100 + "%";
    if(map["ModeID"].asInt() == 1)
        info += "§9工作模式：§e常规";
    if(map["ModeID"].asInt() == 2)
        info += "§9工作模式：§e催化";
    if(map["ModeID"].asInt() == 3)
        info += "§9工作模式：§e超限";
    info += "§c>>";
    // info += data;
    event.extraInfo = info;
});