/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 50
#loader crafttweaker reloadable


import crafttweaker.item.IItemStack;

//Jei添加黑名单
//mods.jei.JEI.hide(IItemStack);

HideJei(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:extendable_digital_storage_subsystem_l4"}));
HideJei(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:extendable_digital_storage_subsystem_l6"}));
HideJei(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:extendable_digital_storage_subsystem_l9"}));
HideJei(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:extendable_calculator_subsystem_l4"}));
HideJei(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:extendable_calculator_subsystem_l6"}));
HideJei(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:extendable_calculator_subsystem_l9"}));
HideJei(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:extendable_fabricator_subsystem_l4"}));
HideJei(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:extendable_fabricator_subsystem_l6"}));
HideJei(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:extendable_fabricator_subsystem_l9"}));
HideJei(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:ymg_builder_altar_1"}));
HideJei(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:ymg_builder_altar_2"}));
HideJei(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:ymg_builder_altar_3"}));
HideJei(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:ymg_builder_attunement_relay"}));
HideJei(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:ymg_builder_attunement_altar"}));
HideJei(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:ymg_builder_ritual_pedestal"}));
HideJei(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:ymg_builder_star_light_infuser"}));
HideJei(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:ymg_builder_collector_crystal"}));


function HideJei(item as IItemStack){
    mods.jei.JEI.hide(item);
}