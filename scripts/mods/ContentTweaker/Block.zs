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


RegBlock("mysteriousicecasing");
RegBlock("quantumcasing");
RegBlock("stellajewelblock");
RegBlock("tungstencasing");
RegBlock("tungstenblock");
RegBlock("iridiumcasing");
RegBlock("teslacoil");
RegBlock("teslashell");
RegBlock("playerblock1");
RegBlock("pressure_casing");
RegGlassBlock("quantumglass");


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