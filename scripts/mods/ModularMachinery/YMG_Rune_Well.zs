/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.FactoryRecipeThread;


//线程设置
MachineModifier.setMaxThreads("YMG_Rune_Well", 0);

//启用并行
// MachineModifier.setParallelizable("YMG_Rune_Well", false);
MachineModifier.setMaxParallelism("YMG_Rune_Well", 16);
MachineModifier.setInternalParallelism("YMG_Rune_Well", 16);

//白雏菊
val Puredaisy_String = "§f§l白雏菊";
MachineModifier.addCoreThread("YMG_Rune_Well", FactoryRecipeThread.createCoreThread(Puredaisy_String));

//符文祭坛
val Runealtar_String = "§b§l符文祭坛";
MachineModifier.addCoreThread("YMG_Rune_Well", FactoryRecipeThread.createCoreThread(Runealtar_String));


//水之符文
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_1_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(6000)
.addItemInputs([
    <ore:powderMana>,
    <ore:ingotManasteel>,
    <minecraft:fishing_rod>,
    <minecraft:dye:15>,
    <ore:sugarcane> 
])
.addItemOutput(<botania:rune> * 2)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_1_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 6)
.addItemInputs([
    <ore:powderMana>,
    <ore:ingotManasteel>,
    <minecraft:fishing_rod>,
    <minecraft:dye:15>,
    <ore:sugarcane> 
])
.addItemOutput(<botania:rune> * 2)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//火之符文
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_2_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(6000)
.addItemInputs([
    <ore:powderMana>,
    <ore:ingotManasteel>,
    <minecraft:netherbrick>,
    <minecraft:gunpowder>,
    <minecraft:nether_wart>
])
.addItemOutput(<botania:rune:1> * 2)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_2_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 6)
.addItemInputs([
    <ore:powderMana>,
    <ore:ingotManasteel>,
    <minecraft:netherbrick>,
    <minecraft:gunpowder>,
    <minecraft:nether_wart>
])
.addItemOutput(<botania:rune:1> * 2)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//地之符文
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_3_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(6000)
.addItemInputs([
    <ore:powderMana>,
    <ore:ingotManasteel>,
    <ore:stone>,
    <ore:blockCoal>
])
.addIngredientArrayInput(
    IngredientArrayBuilder
    .newBuilder()
    .addIngredients([
        <minecraft:brown_mushroom>,
        <minecraft:red_mushroom>
    ])
)
.addItemOutput(<botania:rune:2> * 2)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_3_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 6)
.addItemInputs([
    <ore:powderMana>,
    <ore:ingotManasteel>,
    <ore:stone>,
    <ore:blockCoal>
])
.addIngredientArrayInput(
    IngredientArrayBuilder
    .newBuilder()
    .addIngredients([
        <minecraft:brown_mushroom>,
        <minecraft:red_mushroom>
    ])
)
.addItemOutput(<botania:rune:2> * 2)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//风之符文
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_4_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(6000)
.addItemInputs([
    <ore:powderMana>,
    <ore:ingotManasteel>
])
.addIngredientArrayInput(
    IngredientArrayBuilder
    .newBuilder()
    .addIngredients([
        <minecraft:carpet>,
        <minecraft:carpet:1>,
        <minecraft:carpet:2>,
        <minecraft:carpet:3>,
        <minecraft:carpet:4>,
        <minecraft:carpet:5>,
        <minecraft:carpet:6>,
        <minecraft:carpet:7>,
        <minecraft:carpet:8>,
        <minecraft:carpet:9>,
        <minecraft:carpet:10>,
        <minecraft:carpet:11>,
        <minecraft:carpet:12>,
        <minecraft:carpet:13>,
        <minecraft:carpet:14>,
        <minecraft:carpet:15>,
    ])
)
.addItemInputs([
    <minecraft:feather>,
    <minecraft:string>
])
.addItemOutput(<botania:rune:3> * 2)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_4_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 6)
.addItemInputs([
    <ore:powderMana>,
    <ore:ingotManasteel>
])
.addIngredientArrayInput(
    IngredientArrayBuilder
    .newBuilder()
    .addIngredients([
        <minecraft:carpet>,
        <minecraft:carpet:1>,
        <minecraft:carpet:2>,
        <minecraft:carpet:3>,
        <minecraft:carpet:4>,
        <minecraft:carpet:5>,
        <minecraft:carpet:6>,
        <minecraft:carpet:7>,
        <minecraft:carpet:8>,
        <minecraft:carpet:9>,
        <minecraft:carpet:10>,
        <minecraft:carpet:11>,
        <minecraft:carpet:12>,
        <minecraft:carpet:13>,
        <minecraft:carpet:14>,
        <minecraft:carpet:15>,
    ])
)
.addItemInputs([
    <minecraft:feather>,
    <minecraft:string>
])
.addItemOutput(<botania:rune:3>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//春之符文
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_5_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(9000)
.addItemInput(<botania:rune>)
.addItemInput(<botania:rune:1>)
.addItemInputs([
    <ore:treeSapling> * 3,
    <minecraft:wheat>
])
.addItemOutput(<botania:rune:4>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_5_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 9)
.addItemInput(<botania:rune>)
.addItemInput(<botania:rune:1>)
.addItemInputs([
    <ore:treeSapling> * 3,
    <minecraft:wheat>
])
.addItemOutput(<botania:rune:4>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//夏之符文
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_6_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(9000)
.addItemInput(<botania:rune:2>)
.addItemInput(<botania:rune:3>)
.addItemInputs([
    <ore:sand> * 2,
    <ore:slimeball>,
    <minecraft:melon>
])
.addItemOutput(<botania:rune:5>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_6_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 9)
.addItemInput(<botania:rune:2>)
.addItemInput(<botania:rune:3>)
.addItemInputs([
    <ore:sand> * 2,
    <ore:slimeball>,
    <minecraft:melon>
])
.addItemOutput(<botania:rune:5>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//秋之符文
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_7_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(9000)
.addItemInput(<botania:rune:1>)
.addItemInput(<botania:rune:3>)
.addItemInputs([
    <ore:treeLeaves> * 3,
    <minecraft:spider_eye>
])
.addItemOutput(<botania:rune:6>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_7_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 9)
.addItemInput(<botania:rune:1>)
.addItemInput(<botania:rune:3>)
.addItemInputs([
    <ore:treeLeaves> * 3,
    <minecraft:spider_eye>
])
.addItemOutput(<botania:rune:6>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//冬之符文
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_8_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(9000)
.addItemInput(<botania:rune>)
.addItemInput(<botania:rune:2>)
.addItemInputs([
    <minecraft:snow> * 2,
    <ore:wool>,
    <minecraft:cake>
])
.addItemOutput(<botania:rune:7>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_8_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 9)
.addItemInput(<botania:rune>)
.addItemInput(<botania:rune:2>)
.addItemInputs([
    <minecraft:snow> * 2,
    <ore:wool>,
    <minecraft:cake>
])
.addItemOutput(<botania:rune:7>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//魔力符文
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_9_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(9000)
.addItemInputs([
    <botania:manaresource> * 5,
    <botania:manaresource:1>
])
.addItemOutput(<botania:rune:8>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_9_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 9)
.addItemInputs([
    <botania:manaresource> * 5,
    <botania:manaresource:1>
])
.addItemOutput(<botania:rune:8>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//欲望符文
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_10_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(14000)
.addItemInputs([
    <botania:manaresource:2> * 2
])
.addItemInput(<botania:rune:5>)
.addItemInput(<botania:rune:3>)
.addItemOutput(<botania:rune:9>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_10_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 14)
.addItemInputs([
    <botania:manaresource:2> * 2
])
.addItemInput(<botania:rune:5>)
.addItemInput(<botania:rune:3>)
.addItemOutput(<botania:rune:9>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//暴食符文
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_11_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(14000)
.addItemInputs([
    <botania:manaresource:2> * 2
])
.addItemInput(<botania:rune:7>)
.addItemInput(<botania:rune:1>)
.addItemOutput(<botania:rune:10>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_11_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 14)
.addItemInputs([
    <botania:manaresource:2> * 2
])
.addItemInput(<botania:rune:7>)
.addItemInput(<botania:rune:1>)
.addItemOutput(<botania:rune:10>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//贪婪符文
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_12_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(14000)
.addItemInputs([
    <botania:manaresource:2> * 2
])
.addItemInput(<botania:rune:4>)
.addItemInput(<botania:rune>)
.addItemOutput(<botania:rune:11>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_12_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 14)
.addItemInputs([
    <botania:manaresource:2> * 2
])
.addItemInput(<botania:rune:4>)
.addItemInput(<botania:rune>)
.addItemOutput(<botania:rune:11>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//懒惰符文
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_13_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(14000)
.addItemInputs([
    <botania:manaresource:2> * 2
])
.addItemInput(<botania:rune:6>)
.addItemInput(<botania:rune:3>)
.addItemOutput(<botania:rune:12>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_13_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 14)
.addItemInputs([
    <botania:manaresource:2> * 2
])
.addItemInput(<botania:rune:6>)
.addItemInput(<botania:rune:3>)
.addItemOutput(<botania:rune:12>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//暴怒符文
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_14_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(14000)
.addItemInputs([
    <botania:manaresource:2> * 2
])
.addItemInput(<botania:rune:7>)
.addItemInput(<botania:rune:2>)
.addItemOutput(<botania:rune:13>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_14_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 14)
.addItemInputs([
    <botania:manaresource:2> * 2
])
.addItemInput(<botania:rune:7>)
.addItemInput(<botania:rune:2>)
.addItemOutput(<botania:rune:13>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//嫉妒符文
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_15_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(14000)
.addItemInputs([
    <botania:manaresource:2> * 2
])
.addItemInput(<botania:rune:7>)
.addItemInput(<botania:rune>)
.addItemOutput(<botania:rune:14>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_15_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 14)
.addItemInputs([
    <botania:manaresource:2> * 2
])
.addItemInput(<botania:rune:7>)
.addItemInput(<botania:rune>)
.addItemOutput(<botania:rune:14>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//傲慢符文
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_16_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(14000)
.addItemInputs([
    <botania:manaresource:2> * 2
])
.addItemInput(<botania:rune:5>)
.addItemInput(<botania:rune:1>)
.addItemOutput(<botania:rune:15>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_rune_16_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 14)
.addItemInputs([
    <botania:manaresource:2> * 2
])
.addItemInput(<botania:rune:5>)
.addItemInput(<botania:rune:1>)
.addItemOutput(<botania:rune:15>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//镀金服务器
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_material_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(1000)
.addItemInputs([
    <minecraft:potato>,
    <minecraft:gold_nugget>
])
.addItemOutput(<extrabotany:material:2>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_material_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 1)
.addItemInputs([
    <minecraft:potato>,
    <minecraft:gold_nugget>
])
.addItemOutput(<extrabotany:material:2>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//镀金土豆泥
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_gildedmashedpotato", "YMG_Rune_Well", 5)
.setThreadName(Runealtar_String)
.addIngredientArrayInput(
    IngredientArrayBuilder
    .newBuilder()
    .addIngredients([
        <extrabotany:manasteelhammer>,
        <extrabotany:elementiumhammer>,
        <extrabotany:terrasteelhammer>,
        <extrabotany:ultimatehammer>
    ])
).setParallelizeUnaffected(true)
.addItemInputs([
    <extrabotany:material:2>
])
.addItemOutput(<extrabotany:gildedmashedpotato>)
.build();

//精神碎片
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_material", "YMG_Rune_Well", 5)
.setThreadName(Runealtar_String)
.addIngredientArrayInput(
    IngredientArrayBuilder
    .newBuilder()
    .addIngredients([
        <extrabotany:manasteelhammer>,
        <extrabotany:elementiumhammer>,
        <extrabotany:terrasteelhammer>,
        <extrabotany:ultimatehammer>
    ])
).setParallelizeUnaffected(true)
.addItemInputs([
    <extrabotany:spiritfuel>
])
.addItemOutput(<extrabotany:material>)
.build();

mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_spiritfuel", "YMG_Rune_Well", 5)
.setThreadName(Runealtar_String)
.addIngredientArrayInput(
    IngredientArrayBuilder
    .newBuilder()
    .addIngredients([
        <extrabotany:manasteelhammer>,
        <extrabotany:elementiumhammer>,
        <extrabotany:terrasteelhammer>,
        <extrabotany:ultimatehammer>
    ])
).setParallelizeUnaffected(true)
.addItemInputs([
    <extrabotany:nightmarefuel>
])
.addItemOutput(<extrabotany:spiritfuel>)
.build();

//奥利哈刚
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_material_1_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(1000000)
.addItemInputs([
    <botania:manaresource:14> * 2,
    <extrabotany:material:3>,
    <extrabotany:gildedmashedpotato>,
    <botania:manaresource:5> * 4
])
.addItemOutput(<extrabotany:material:1>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_material_1_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 1000)
.addItemInputs([
    <botania:manaresource:14> * 2,
    <extrabotany:material:3>,
    <extrabotany:gildedmashedpotato>,
    <botania:manaresource:5> * 4
])
.addItemOutput(<extrabotany:material:1>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//光子锭
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_material_8_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(6000)
.addItemInputs([
    <botania:manaresource:7>,
    <extrabotany:material> * 3,
    <extrabotany:gildedmashedpotato>
])
.addItemOutput(<extrabotany:material:8>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_material_8_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 6)
.addItemInputs([
    <botania:manaresource:7>,
    <extrabotany:material> * 3,
    <extrabotany:gildedmashedpotato>
])
.addItemOutput(<extrabotany:material:8>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//暗影锭
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_material_5_1", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addManaInput(6000)
.addItemInputs([
    <botania:manaresource:7>,
    <extrabotany:nightmarefuel> * 3,
    <extrabotany:gildedmashedpotato>
])
.addItemOutput(<extrabotany:material:5>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_material_5_2", "YMG_Rune_Well", 20)
.setThreadName(Runealtar_String)
.setParallelized(false)
.addFluidInput(<liquid:fluidedmana> * 6)
.addItemInputs([
    <botania:manaresource:7>,
    <extrabotany:nightmarefuel> * 3,
    <extrabotany:gildedmashedpotato>
])
.addItemOutput(<extrabotany:material:5>)
.addRecipeTooltip(
    "§c不受并行影响"
)
.build();

//活石
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_livingrock_1", "YMG_Rune_Well", 200)
.setThreadName(Puredaisy_String)
.addManaInput(1000)
.addItemInput(<botania:specialflower>.withTag({type: "puredaisy"})).setParallelizeUnaffected(true)
.addItemInput(<ore:stone>)
.addItemOutput(<botania:livingrock>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_livingrock_2", "YMG_Rune_Well", 200)
.setThreadName(Puredaisy_String)
.addFluidInput(<liquid:fluidedmana> * 1)
.addItemInput(<botania:specialflower>.withTag({type: "puredaisy"})).setParallelizeUnaffected(true)
.addItemInput(<ore:stone>)
.addItemOutput(<botania:livingrock>)
.build();

//活木
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_livingwood_1", "YMG_Rune_Well", 200)
.setThreadName(Puredaisy_String)
.addManaInput(1000)
.addItemInput(<botania:specialflower>.withTag({type: "puredaisy"})).setParallelizeUnaffected(true)
.addItemInput(<ore:logWood>)
.addItemOutput(<botania:livingwood>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_livingwood_2", "YMG_Rune_Well", 200)
.setThreadName(Puredaisy_String)
.addFluidInput(<liquid:fluidedmana> * 1)
.addItemInput(<botania:specialflower>.withTag({type: "puredaisy"})).setParallelizeUnaffected(true)
.addItemInput(<ore:logWood>)
.addItemOutput(<botania:livingwood>)
.build();

//活木
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_blockcustomore_1", "YMG_Rune_Well", 300)
.setThreadName(Puredaisy_String)
.addManaInput(2000)
.addItemInput(<botania:specialflower>.withTag({type: "puredaisy"})).setParallelizeUnaffected(true)
.addItemInput(<ore:oreAquamarine>)
.addItemOutput(<astralsorcery:blockcustomore>)
.build();
mods.modularmachinery.RecipeBuilder.newBuilder("Rune_Well_blockcustomore_2", "YMG_Rune_Well", 300)
.setThreadName(Puredaisy_String)
.addFluidInput(<liquid:fluidedmana> * 2)
.addItemInput(<botania:specialflower>.withTag({type: "puredaisy"})).setParallelizeUnaffected(true)
.addItemInput(<ore:oreAquamarine>)
.addItemOutput(<astralsorcery:blockcustomore>)
.build();

