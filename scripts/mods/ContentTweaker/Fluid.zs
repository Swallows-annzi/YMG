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
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;


//牛顿流体
var isaac_newton = VanillaFactory.createFluid("isaac_newton", Color.fromHex("000000").getIntColor());
isaac_newton.flowingLocation = "contenttweaker:fluids/isaac_newton";
isaac_newton.stillLocation = "contenttweaker:fluids/isaac_newton";
isaac_newton.luminosity = 1;
isaac_newton.colorize = false;
isaac_newton.viscosity = 3000;
isaac_newton.register();

//蓝软软流体
var lan_qin_1 = VanillaFactory.createFluid("lan_qin_1", Color.fromHex("000000").getIntColor());
lan_qin_1.flowingLocation = "contenttweaker:fluids/lan_qin_1";
lan_qin_1.stillLocation = "contenttweaker:fluids/lan_qin_1";
lan_qin_1.luminosity = 1;
lan_qin_1.colorize = false;
lan_qin_1.viscosity = 3000;
lan_qin_1.register();
var lan_qin_2 = VanillaFactory.createFluid("lan_qin_2", Color.fromHex("000000").getIntColor());
lan_qin_2.flowingLocation = "contenttweaker:fluids/lan_qin_2";
lan_qin_2.stillLocation = "contenttweaker:fluids/lan_qin_2";
lan_qin_2.luminosity = 1;
lan_qin_2.colorize = false;
lan_qin_2.viscosity = 3000;
lan_qin_2.register();

//非牛顿流体
RegFluid("non_newtonian", 0xE9E9E9, 27);
//龙血
RegFluid("dragon_blood", 0xAA0000, 10000);
//折跃晶素
RegFluid("jump_crystalline", 0xAA00DD, 10000);
//高级冷却液
RegFluid("advanced_coolant", 0x36FFFF, 27);
//肼
RegFluid("hydrazine", 0x202020, 27);
//混沌流质
RegFluid("chaos", 0x101010, 0);

function RegFluid(regName as string, color as int, temperature as int) {
    var fluid as Fluid = VanillaFactory.createFluid(regName, color);
    fluid.colorize = true;
    fluid.temperature = temperature;
    fluid.stillLocation = "base:fluids/liquid";
    fluid.flowingLocation = "base:fluids/liquid_flow";
    fluid.register();
}