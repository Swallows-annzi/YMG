/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 * 材质均已获得授权
 * Stickers are authorized
 */

#priority 50
#loader avaritiaitem

import mods.avaritiaitem.AvaritiaItemBuilder;
import mods.avaritiaitem.ItemPrimer;

//三相合金
AvaritiaItemBuilder.registerItem("triphasic_alloy", 64, "triphasic_alloy")
.shouldDrawHalo(true)
.haloSize(6)
.haloTextures("triphasic_alloy_halo")
.create();


//星体
RegAvaritiaItem_Star("a_star");
RegAvaritiaItem_Star("b_star");
RegAvaritiaItem_Star("f_star");
RegAvaritiaItem_Star("g_star");
RegAvaritiaItem_Star("k_star");
RegAvaritiaItem_Star("m_star");
RegAvaritiaItem_Star("m_giant_star");
RegAvaritiaItem_Star("t_star");
RegAvaritiaItem_Star("black_hole");
RegAvaritiaItem_Star("neutron_star");
RegAvaritiaItem_Star("pulsar");

//星体
function RegAvaritiaItem_Star(name as string) {
    AvaritiaItemBuilder.registerItem(name, 1, name)
    .shouldDrawHalo(true)
    .haloSize(16)
    .haloTextures("halo")
    .haloColour("000000")
    .shouldDrawPulse(true)
    .colorfulName(true)
    .create();
}