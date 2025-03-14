/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//金属成型机-挤压
//mods.ic2.MetalFormer.addExtrudingRecipe(IItemStack output, IIngredient input);

//铱导线
mods.ic2.MetalFormer.addExtrudingRecipe(<contenttweaker:iridiumwire>, <ore:stickIridium>);

//钨导线
mods.ic2.MetalFormer.addExtrudingRecipe(<contenttweaker:tungstenwire>, <contenttweaker:tungstenrod>);

//金属成型机-板材剪
//mods.ic2.MetalFormer.addCuttingRecipe(IItemStack output, IIngredient input);

//玄冰合金导线
mods.ic2.MetalFormer.addCuttingRecipe(<contenttweaker:mysteriousicewire> * 2, <contenttweaker:mysteriousiceplate>);

//板材切割机
//mods.ic2.BlockCutter.addRecipe(IItemStack output, IIngredient input, @Optional int hardness default 0);

//玻璃透镜  
mods.ic2.BlockCutter.addRecipe(<mets:lens>, <ic2:glass>);

//晶圆切割
mods.ic2.BlockCutter.addRecipe(<contenttweaker:litherite_wafers>,<contenttweaker:litherite_boule>,9);
mods.ic2.BlockCutter.addRecipe(<contenttweaker:erodium_wafers>,<contenttweaker:erodium_boule>,9);
mods.ic2.BlockCutter.addRecipe(<contenttweaker:kyronite_wafers>,<contenttweaker:kyronite_boule>,9);
mods.ic2.BlockCutter.addRecipe(<contenttweaker:pladium_wafers>,<contenttweaker:pladium_boule>,9);
mods.ic2.BlockCutter.addRecipe(<contenttweaker:ionite_wafers>,<contenttweaker:ionite_boule>,9);
mods.ic2.BlockCutter.addRecipe(<contenttweaker:aethium_wafers>,<contenttweaker:aethium_boule>,9);

//压缩机
//mods.ic2.Compressor.addRecipe(IItemStack output, IIngredient input);

//压缩高级铱板
mods.ic2.Compressor.addRecipe(<super_solar_panels:crafting:43>, <jaopca:item_platedenseiridium> * 9);