/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.MachineModifier;


//启用并行
// MachineModifier.setParallelizable("YMG_Quenching_shrine", false);
MachineModifier.setMaxParallelism("YMG_Quenching_shrine", 5);
MachineModifier.setInternalParallelism("YMG_Quenching_shrine", 5);

//玻璃透镜
mods.modularmachinery.RecipeBuilder.newBuilder("itemcraftingcomponent_3", "YMG_Quenching_shrine", 100)
.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 500)
.addStarlightInput(200,"")
.addItemInput(<botania:elfglasspane> * 2)
.addItemOutput(<astralsorcery:itemcraftingcomponent:3>)
.build();

//共振宝石
mods.modularmachinery.RecipeBuilder.newBuilder("itemcraftingcomponent_4", "YMG_Quenching_shrine", 100)
.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 1500)
.addStarlightInput(500,"")
.addItemInput(<ore:gemAquamarine> * 4)
.addItemOutput(<astralsorcery:itemcraftingcomponent:4>)
.build();

//水晶石
mods.modularmachinery.RecipeBuilder.newBuilder("itemrockcrystalsimple", "YMG_Quenching_shrine", 3600)
.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 64000)
.addStarlightInput(2000,"")
.addItemInput(<astralsorcery:itemrockcrystalsimple>)
.addItemOutput(<astralsorcery:itemrockcrystalsimple>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 100, size: 400, fract: 0, purity: 100, sizeOverride: -1}}}))
.build();

//天辉水晶石
mods.modularmachinery.RecipeBuilder.newBuilder("itemcelestialcrystal", "YMG_Quenching_shrine", 12000)
.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 256000)
.addStarlightInput(4000,"")
.addItemInput(<astralsorcery:itemcelestialcrystal>)
.addItemOutput(<astralsorcery:itemcelestialcrystal>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 100, size: 900, fract: 0, purity: 100, sizeOverride: -1}}}))
.build();

//天辉水晶石制作
mods.modularmachinery.RecipeBuilder.newBuilder("itemcelestialcrystal_output", "YMG_Quenching_shrine", 12000)
.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 16000)
.addStarlightInput(2000,"astralsorcery.constellation.aevitas")
.addItemInput(<astralsorcery:itemrockcrystalsimple>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 100, size: 400, fract: 0, purity: 100, sizeOverride: -1}}}))
.setPreViewNBT({
    display: {
        Lore: [
            "§r尺寸:§e400§r",
            "§r纯度:§e100%§r",
            "§r抛光:§e100%§r"
        ],
    }
})
.addItemInput(<astralsorcery:itemcraftingcomponent:2> * 16)
.addItemOutput(<astralsorcery:itemcelestialcrystal>)
.build();


