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


RegItem("metal_a1_b1", 64, false);
RegItem("metal_a1_b2", 64, false);
RegItem("metal_a1_b3", 64, false);
RegItem("metal_a1_b4", 64, false);
RegItem("metal_a1_b5", 64, false);
RegItem("metal_a1_b6", 64, false);
RegItem("metal_a1_b7", 64, false);
RegItem("metal_a2_b1", 64, false);
RegItem("metal_a2_b2", 64, false);
RegItem("metal_a2_b3", 64, false);
RegItem("metal_a2_b4", 64, false);
RegItem("metal_a2_b5", 64, false);
RegItem("metal_a2_b6", 64, false);
RegItem("metal_a2_b7", 64, false);
RegItem("metal_a3_b1", 64, false);
RegItem("metal_a3_b2", 64, false);
RegItem("metal_a3_b3", 64, false);
RegItem("metal_a3_b4", 64, false);
RegItem("metal_a3_b5", 64, false);
RegItem("metal_a3_b6", 64, false);
RegItem("metal_a3_b7", 64, false);
RegItem("metal_a4_b1", 64, false);
RegItem("metal_a4_b2", 64, false);
RegItem("metal_a4_b3", 64, false);
RegItem("metal_a4_b4", 64, false);
RegItem("metal_a4_b5", 64, false);
RegItem("metal_a4_b6", 64, false);
RegItem("metal_a4_b7", 64, false);
RegItem("metal_a5_b1", 64, false);
RegItem("metal_a5_b2", 64, false);
RegItem("metal_a5_b3", 64, false);
RegItem("metal_a5_b4", 64, false);
RegItem("metal_a5_b5", 64, false);
RegItem("metal_a5_b6", 64, false);
RegItem("metal_a5_b7", 64, false);
RegItem("metal_a6_b1", 64, false);
RegItem("metal_a6_b2", 64, false);
RegItem("metal_a6_b3", 64, false);
RegItem("metal_a6_b4", 64, false);
RegItem("metal_a6_b5", 64, false);
RegItem("metal_a6_b6", 64, false);
RegItem("metal_a6_b7", 64, false);
RegItem("metal_a7_b1", 64, false);
RegItem("metal_a7_b2", 64, false);
RegItem("metal_a7_b3", 64, false);
RegItem("metal_a7_b4", 64, false);
RegItem("metal_a7_b5", 64, false);
RegItem("metal_a7_b6", 64, false);
RegItem("metal_a7_b7", 64, false);
RegItem("metal_a8_b1", 64, false);
RegItem("metal_a8_b2", 64, false);
RegItem("metal_a8_b3", 64, false);
RegItem("metal_a8_b4", 64, false);
RegItem("metal_a8_b5", 64, false);
RegItem("metal_a8_b6", 64, false);
RegItem("metal_a8_b7", 64, false);
RegItem("metal_a9_b1", 64, false);
RegItem("metal_a9_b2", 64, false);
RegItem("metal_a9_b3", 64, false);
RegItem("metal_a9_b4", 64, false);
RegItem("metal_a9_b5", 64, false);
RegItem("metal_a9_b6", 64, false);
RegItem("metal_a9_b7", 64, false);
RegItem("metal_a10_b1", 64, false);
RegItem("metal_a10_b2", 64, false);
RegItem("metal_a10_b3", 64, false);
RegItem("metal_a10_b4", 64, false);
RegItem("metal_a10_b5", 64, false);
RegItem("metal_a10_b6", 64, false);
RegItem("metal_a10_b7", 64, false);
RegItem("metal_a11_b1", 64, false);
RegItem("metal_a11_b2", 64, false);
RegItem("metal_a11_b3", 64, false);
RegItem("metal_a11_b4", 64, false);
RegItem("metal_a11_b5", 64, false);
RegItem("metal_a11_b6", 64, false);
RegItem("metal_a11_b7", 64, false);
RegItem("metal_a12_b1", 64, false);
RegItem("metal_a12_b2", 64, false);
RegItem("metal_a12_b3", 64, false);
RegItem("metal_a12_b4", 64, false);
RegItem("metal_a12_b5", 64, false);
RegItem("metal_a12_b6", 64, false);
RegItem("metal_a12_b7", 64, false);
RegItem("metal_a13_b1", 64, false);
RegItem("metal_a13_b2", 64, false);
RegItem("metal_a13_b3", 64, false);
RegItem("metal_a13_b4", 64, false);
RegItem("metal_a13_b5", 64, false);
RegItem("metal_a13_b6", 64, false);
RegItem("metal_a13_b7", 64, false);
RegItem("metal_a14_b1", 64, false);
RegItem("metal_a14_b2", 64, false);
RegItem("metal_a14_b3", 64, false);
RegItem("metal_a14_b4", 64, false);
RegItem("metal_a14_b5", 64, false);
RegItem("metal_a14_b6", 64, false);
RegItem("metal_a14_b7", 64, false);
RegItem("metal_a15_b1", 64, false);
RegItem("metal_a15_b2", 64, false);
RegItem("metal_a15_b3", 64, false);
RegItem("metal_a15_b4", 64, false);
RegItem("metal_a15_b5", 64, false);
RegItem("metal_a15_b6", 64, false);
RegItem("metal_a15_b7", 64, false);


function RegItem(name as string,maxn as int,glow as bool){
    var items as Item = VanillaFactory.createItem(name);
    items.maxStackSize = maxn;
    items.glowing = glow;
    items.creativeTab = <creativetab:itemcustomize>;
    items.register();
}
