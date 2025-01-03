/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

//工作台配方
//有序：recipes.addShape(IIngredient output,ItemBOX);
//无序：recipes.addShapeless(IIngredient output,ItemBOX);

//石头克星
recipes.addShaped(<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 3, Durability: 1, HarvestLevel: 0, Attack: 0.75 as float}, Unbreakable: 1 as byte, display: {LocName: "item.tinkerskyblock.pickaxe"}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 0, Durability: 1, HarvestLevel: 0, Attack: 0.0 as float}, Special: {Categories: ["harvest", "aoe", "tool"]}, TinkerData: {UsedModifiers: 6, Materials: ["skyblock2", "skyblock", "skyblock"], Modifiers: ["cobble_breaker", "reinforced", "soulbound"]}, Modifiers: [{identifier: "skyblock", color: -3652181, level: 1}, {identifier: "cobble_breaker", color: 10000536, level: 1}, {identifier: "reinforced", color: 5254787, level: 5}, {identifier: "soulbound", color: 16120748}], Traits: ["skyblock", "cobble_breaker", "reinforced"]}),[
    [<ore:logWood>,<ore:logWood>,<ore:logWood>],
    [null,<ore:plankWood>,null],
    [null,<ore:plankWood>,null]
]);

//树木克星
recipes.addShaped(<tconstruct:lumberaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 3, Durability: 2, HarvestLevel: 0, Attack: 2.75 as float}, Unbreakable: 1 as byte, display: {LocName: "item.tinkerskyblock.axe"}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 0, Durability: 1, HarvestLevel: 0, Attack: 0.0 as float}, Special: {Categories: ["harvest", "aoe", "tool"]}, TinkerData: {UsedModifiers: 6, Materials: ["skyblock2", "skyblock", "skyblock", "skyblock"], Modifiers: ["log_breaker", "reinforced", "soulbound"]}, Modifiers: [{identifier: "skyblock", color: -3652181, level: 1}, {identifier: "log_breaker", color: 9659178, level: 1}, {identifier: "reinforced", color: 5254787, level: 5}, {identifier: "soulbound", color: 16120748}], Traits: ["skyblock", "log_breaker", "reinforced"]}),[
    [<ore:logWood>,<ore:logWood>,null],
    [<ore:logWood>,<ore:plankWood>,null],
    [null,<ore:plankWood>,null]
]);

//树叶克星
recipes.addShaped(<tconstruct:scythe>.withTag({ench: [{lvl: 1 as short, id: 33 as short}], StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 3, Durability: 2, HarvestLevel: 0, Attack: 0.75 as float}, Unbreakable: 1 as byte, display: {LocName: "item.tinkerskyblock.scythe"}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 0, Durability: 1, HarvestLevel: 0, Attack: 0.0 as float}, Special: {Categories: ["weapon", "harvest", "aoe", "tool"]}, TinkerData: {UsedModifiers: 8, Materials: ["skyblock2", "skyblock", "skyblock", "skyblock2"], Modifiers: ["leaf_breaker", "reinforced", "soulbound", "harvestwidth", "harvestheight"]}, Modifiers: [{identifier: "skyblock", color: -3652181, level: 1}, {identifier: "leaf_breaker", color: 51456, level: 1}, {identifier: "reinforced", color: 5254787, level: 5}, {identifier: "soulbound", color: 16120748}, {identifier: "harvestwidth", color: 13301410}, {identifier: "harvestheight", color: 13301410}], Traits: ["skyblock", "leaf_breaker", "reinforced"]}),[
    [<ore:logWood>,<ore:logWood>,<ore:logWood>],
    [null,null,<ore:plankWood>],
    [null,null,<ore:plankWood>]
]);

//私人空间守卫锅
recipes.addShaped(<tconstruct:frypan>.withTag({ench: [{lvl: 1 as short, id: 33 as short}], StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.265 as float, FreeModifiers: 3, Durability: 788, HarvestLevel: 0, Attack: 0.0 as float}, Unbreakable: 1 as byte, display: {LocName: "item.tinkerskyblock.frypan"}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 0, Durability: 1, HarvestLevel: 0, Attack: 0.0 as float}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {UsedModifiers: 15, Materials: ["skyblock", "sponge"], Modifiers: ["knockback", "reinforced", "soulbound"]}, Modifiers: [{identifier: "skyblock", color: -3652181, level: 1}, {identifier: "squeaky", color: -3486642, level: 1}, {identifier: "knockback", current: 100, color: 10461087, level: 10, max: 100, extraInfo: "99 / 100"}, {identifier: "reinforced", color: 5254787, level: 5}, {identifier: "soulbound", color: 16120748}], Traits: ["skyblock", "squeaky", "knockback", "reinforced"]}),[
    [<ore:logWood>,<ore:logWood>,<ore:logWood>],
    [<ore:logWood>,<ore:logWood>,<ore:logWood>],
    [null,<ore:plankWood>,null]
]);

