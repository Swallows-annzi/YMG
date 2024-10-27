/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable

import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipeStartEvent;


//中子素尘埃
mods.modularmachinery.RecipeBuilder.newBuilder("Atmospheric_Free_Neutron_Extraction_Device", "YMG_Atmospheric_Free_Neutron_Extraction_Device", 20)
.addItemOutput(<avaritia:resource:2>).setChance(0.12F).setMinMaxAmount(1,4)
// .addStartHandler(function(event as RecipeStartEvent) {
//     event.controller.addModifier("Atmospheric_Free_Neutron_Extraction_Device_Tick", RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.01F * event.controller.pos.y, 1, false).build());
// })
.build();