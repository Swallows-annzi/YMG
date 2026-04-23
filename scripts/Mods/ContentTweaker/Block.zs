/** 
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
import mods.contenttweaker.Block;


RegBlock("metal_block_b1");
RegBlock("metal_block_b2");
RegBlock("metal_block_b3");
RegBlock("metal_block_b4");
RegBlock("metal_block_b5");
RegBlock("metal_block_b6");
RegBlock("metal_block_b7");
RegBlock("casing_b1");
RegBlock("casing_b2");
RegBlock("casing_b3");
RegBlock("casing_b4");
RegBlock("casing_b5");
RegBlock("casing_b6");
RegBlock("casing_b7");
RegGlassBlock("metal_glass_b1");
RegGlassBlock("metal_glass_b2");
RegGlassBlock("metal_glass_b3");
RegGlassBlock("metal_glass_b4");
RegGlassBlock("metal_glass_b5");
RegGlassBlock("metal_glass_b6");
RegGlassBlock("metal_glass_b7");
RegBlock("solar_block_b1");
RegBlock("solar_block_b2");
RegBlock("solar_block_b3");
RegBlock("solar_block_b4");
RegBlock("solar_block_b5");
RegBlock("solar_block_b6");
RegBlock("solar_block_b7");
RegBlock("teslacoil");
RegBlock("teslashell");


function RegBlock(regName as string) {
    var block as Block = VanillaFactory.createBlock(regName, <blockmaterial:iron>);
    block.blockHardness = 3.0;
    block.blockResistance = 5.0;
    block.blockSoundType = <soundtype:metal>;
    block.creativeTab = <creativetab:blockcustomize>;
    block.toolClass = "pickaxe";
    block.toolLevel = 2;
    block.register();
}

function RegGlassBlock(regName as string) {
    var block as Block = VanillaFactory.createBlock(regName, <blockmaterial:glass>);
    block.blockLayer = "CUTOUT";
    block.lightOpacity = 0;
    block.fullBlock = false;
    block.blockHardness = 3.0;
    block.blockResistance = 5.0;
    block.blockSoundType = <soundtype:glass>;
    block.creativeTab = <creativetab:blockcustomize>;
    block.toolClass = "pickaxe";
    block.toolLevel = 2;
    block.register();
}