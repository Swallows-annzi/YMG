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

//压缩机
//mods.ic2.Compressor.addRecipe(IItemStack output, IIngredient input);

//压缩高级铱板
mods.ic2.Compressor.addRecipe(<super_solar_panels:crafting:43>, <jaopca:item_platedenseiridium> * 9);