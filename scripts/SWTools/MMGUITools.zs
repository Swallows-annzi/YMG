/** 
 * QQ:1598773037
 * copyright(c) 2023 Swallows_
 * 未经允许禁止使用于任何地方
 * Prohibit use anywhere without permission
 */

#priority 1000
#loader crafttweaker reloadable

import mods.modularmachinery.ControllerGUIRenderEvent;


function ItemOutputMonitoring(event as ControllerGUIRenderEvent) as string {
    var info = "喵喵喵";
    val RecipeList = event.controller.activeRecipeList;
    if(!isNull(RecipeList)) {
        for recipe in RecipeList {
            info += recipe.data;
        }
        return info;
    }
    return info;
}