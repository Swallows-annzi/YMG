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

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;


val ItemcustomizeTab as CreativeTab = VanillaFactory.createCreativeTab("itemcustomize", <item:contenttweaker:crystal_lens>);
ItemcustomizeTab.register();

val BlockcustomizeTab as CreativeTab = VanillaFactory.createCreativeTab("blockcustomize", <item:contenttweaker:quantumcasing>);
BlockcustomizeTab.register();

val DSQcustomizeTab as CreativeTab = VanillaFactory.createCreativeTab("dsqcustomize", <item:contenttweaker:dsqlogo>);
DSQcustomizeTab.register();