/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/lzq123/co/P4/mips/NPC.v";
static int ng1[] = {4, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {0, 0};
static int ng5[] = {1, 0};
static int ng6[] = {14, 0};
static unsigned int ng7[] = {2U, 0U};
static unsigned int ng8[] = {3U, 0U};



static void Cont_34_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t3, 32, t2, 32);
    t5 = (t0 + 3832);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 3736);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_35_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t22[8];
    char t37[8];
    char t53[8];
    char t67[8];
    char t83[8];
    char t91[8];
    char t123[8];
    char t131[8];
    char t176[8];
    char t177[8];
    char t179[8];
    char t195[8];
    char t209[8];
    char t225[8];
    char t233[8];
    char t276[8];
    char t278[8];
    char t288[8];
    char t292[8];
    char t302[8];
    char t307[8];
    char t308[8];
    char t310[8];
    char t337[8];
    char t341[8];
    char t354[8];
    char t355[8];
    char t358[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    char *t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    int t115;
    int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    char *t130;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    char *t135;
    char *t136;
    char *t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    char *t145;
    char *t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    char *t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    char *t165;
    char *t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    char *t170;
    char *t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    char *t178;
    char *t180;
    char *t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    unsigned int t193;
    char *t194;
    char *t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    unsigned int t201;
    char *t202;
    char *t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    char *t207;
    char *t208;
    char *t210;
    char *t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    unsigned int t215;
    unsigned int t216;
    unsigned int t217;
    unsigned int t218;
    unsigned int t219;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    unsigned int t223;
    char *t224;
    char *t226;
    unsigned int t227;
    unsigned int t228;
    unsigned int t229;
    unsigned int t230;
    unsigned int t231;
    char *t232;
    unsigned int t234;
    unsigned int t235;
    unsigned int t236;
    char *t237;
    char *t238;
    char *t239;
    unsigned int t240;
    unsigned int t241;
    unsigned int t242;
    unsigned int t243;
    unsigned int t244;
    unsigned int t245;
    unsigned int t246;
    char *t247;
    char *t248;
    unsigned int t249;
    unsigned int t250;
    unsigned int t251;
    unsigned int t252;
    unsigned int t253;
    unsigned int t254;
    unsigned int t255;
    unsigned int t256;
    int t257;
    int t258;
    unsigned int t259;
    unsigned int t260;
    unsigned int t261;
    unsigned int t262;
    unsigned int t263;
    unsigned int t264;
    char *t265;
    unsigned int t266;
    unsigned int t267;
    unsigned int t268;
    unsigned int t269;
    unsigned int t270;
    char *t271;
    char *t272;
    unsigned int t273;
    unsigned int t274;
    unsigned int t275;
    char *t277;
    char *t279;
    char *t280;
    char *t281;
    unsigned int t282;
    unsigned int t283;
    unsigned int t284;
    unsigned int t285;
    unsigned int t286;
    unsigned int t287;
    char *t289;
    char *t290;
    char *t291;
    char *t293;
    unsigned int t294;
    unsigned int t295;
    unsigned int t296;
    unsigned int t297;
    unsigned int t298;
    unsigned int t299;
    char *t300;
    char *t301;
    unsigned int t303;
    unsigned int t304;
    unsigned int t305;
    unsigned int t306;
    char *t309;
    char *t311;
    char *t312;
    unsigned int t313;
    unsigned int t314;
    unsigned int t315;
    unsigned int t316;
    unsigned int t317;
    unsigned int t318;
    unsigned int t319;
    unsigned int t320;
    unsigned int t321;
    unsigned int t322;
    unsigned int t323;
    unsigned int t324;
    char *t325;
    char *t326;
    unsigned int t327;
    unsigned int t328;
    unsigned int t329;
    unsigned int t330;
    unsigned int t331;
    char *t332;
    char *t333;
    unsigned int t334;
    unsigned int t335;
    unsigned int t336;
    char *t338;
    char *t339;
    char *t340;
    char *t342;
    char *t343;
    unsigned int t344;
    unsigned int t345;
    unsigned int t346;
    unsigned int t347;
    unsigned int t348;
    unsigned int t349;
    unsigned int t350;
    unsigned int t351;
    unsigned int t352;
    unsigned int t353;
    char *t356;
    char *t357;
    char *t359;
    char *t360;
    unsigned int t361;
    unsigned int t362;
    unsigned int t363;
    unsigned int t364;
    unsigned int t365;
    unsigned int t366;
    unsigned int t367;
    unsigned int t368;
    unsigned int t369;
    unsigned int t370;
    unsigned int t371;
    unsigned int t372;
    char *t373;
    char *t374;
    unsigned int t375;
    unsigned int t376;
    unsigned int t377;
    unsigned int t378;
    unsigned int t379;
    char *t380;
    char *t381;
    unsigned int t382;
    unsigned int t383;
    unsigned int t384;
    char *t385;
    char *t386;
    unsigned int t387;
    unsigned int t388;
    unsigned int t389;
    unsigned int t390;
    char *t391;
    char *t392;
    char *t393;
    char *t394;
    char *t395;
    char *t396;

LAB0:    t1 = (t0 + 3416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1688U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t23) != 0)
        goto LAB10;

LAB11:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = (!(t31));
    t33 = *((unsigned int *)t30);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB12;

LAB13:    memcpy(t131, t22, 8);

LAB14:    memset(t4, 0, 8);
    t159 = (t131 + 4);
    t160 = *((unsigned int *)t159);
    t161 = (~(t160));
    t162 = *((unsigned int *)t131);
    t163 = (t162 & t161);
    t164 = (t163 & 1U);
    if (t164 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t159) != 0)
        goto LAB46;

LAB47:    t166 = (t4 + 4);
    t167 = *((unsigned int *)t4);
    t168 = *((unsigned int *)t166);
    t169 = (t167 || t168);
    if (t169 > 0)
        goto LAB48;

LAB49:    t172 = *((unsigned int *)t4);
    t173 = (~(t172));
    t174 = *((unsigned int *)t166);
    t175 = (t173 || t174);
    if (t175 > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t166) > 0)
        goto LAB52;

LAB53:    if (*((unsigned int *)t4) > 0)
        goto LAB54;

LAB55:    memcpy(t3, t176, 8);

LAB56:    t385 = (t0 + 3896);
    t392 = (t385 + 56U);
    t393 = *((char **)t392);
    t394 = (t393 + 56U);
    t395 = *((char **)t394);
    memcpy(t395, t3, 8);
    xsi_driver_vfirst_trans(t385, 0, 31);
    t396 = (t0 + 3752);
    *((int *)t396) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t22) = 1;
    goto LAB11;

LAB10:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB11;

LAB12:    t35 = (t0 + 1688U);
    t36 = *((char **)t35);
    t35 = ((char*)((ng3)));
    memset(t37, 0, 8);
    t38 = (t36 + 4);
    t39 = (t35 + 4);
    t40 = *((unsigned int *)t36);
    t41 = *((unsigned int *)t35);
    t42 = (t40 ^ t41);
    t43 = *((unsigned int *)t38);
    t44 = *((unsigned int *)t39);
    t45 = (t43 ^ t44);
    t46 = (t42 | t45);
    t47 = *((unsigned int *)t38);
    t48 = *((unsigned int *)t39);
    t49 = (t47 | t48);
    t50 = (~(t49));
    t51 = (t46 & t50);
    if (t51 != 0)
        goto LAB18;

LAB15:    if (t49 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t37) = 1;

LAB18:    memset(t53, 0, 8);
    t54 = (t37 + 4);
    t55 = *((unsigned int *)t54);
    t56 = (~(t55));
    t57 = *((unsigned int *)t37);
    t58 = (t57 & t56);
    t59 = (t58 & 1U);
    if (t59 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t54) != 0)
        goto LAB21;

LAB22:    t61 = (t53 + 4);
    t62 = *((unsigned int *)t53);
    t63 = *((unsigned int *)t61);
    t64 = (t62 || t63);
    if (t64 > 0)
        goto LAB23;

LAB24:    memcpy(t91, t53, 8);

LAB25:    memset(t123, 0, 8);
    t124 = (t91 + 4);
    t125 = *((unsigned int *)t124);
    t126 = (~(t125));
    t127 = *((unsigned int *)t91);
    t128 = (t127 & t126);
    t129 = (t128 & 1U);
    if (t129 != 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t124) != 0)
        goto LAB39;

LAB40:    t132 = *((unsigned int *)t22);
    t133 = *((unsigned int *)t123);
    t134 = (t132 | t133);
    *((unsigned int *)t131) = t134;
    t135 = (t22 + 4);
    t136 = (t123 + 4);
    t137 = (t131 + 4);
    t138 = *((unsigned int *)t135);
    t139 = *((unsigned int *)t136);
    t140 = (t138 | t139);
    *((unsigned int *)t137) = t140;
    t141 = *((unsigned int *)t137);
    t142 = (t141 != 0);
    if (t142 == 1)
        goto LAB41;

LAB42:
LAB43:    goto LAB14;

LAB17:    t52 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB18;

LAB19:    *((unsigned int *)t53) = 1;
    goto LAB22;

LAB21:    t60 = (t53 + 4);
    *((unsigned int *)t53) = 1;
    *((unsigned int *)t60) = 1;
    goto LAB22;

LAB23:    t65 = (t0 + 1528U);
    t66 = *((char **)t65);
    t65 = ((char*)((ng4)));
    memset(t67, 0, 8);
    t68 = (t66 + 4);
    t69 = (t65 + 4);
    t70 = *((unsigned int *)t66);
    t71 = *((unsigned int *)t65);
    t72 = (t70 ^ t71);
    t73 = *((unsigned int *)t68);
    t74 = *((unsigned int *)t69);
    t75 = (t73 ^ t74);
    t76 = (t72 | t75);
    t77 = *((unsigned int *)t68);
    t78 = *((unsigned int *)t69);
    t79 = (t77 | t78);
    t80 = (~(t79));
    t81 = (t76 & t80);
    if (t81 != 0)
        goto LAB29;

LAB26:    if (t79 != 0)
        goto LAB28;

LAB27:    *((unsigned int *)t67) = 1;

LAB29:    memset(t83, 0, 8);
    t84 = (t67 + 4);
    t85 = *((unsigned int *)t84);
    t86 = (~(t85));
    t87 = *((unsigned int *)t67);
    t88 = (t87 & t86);
    t89 = (t88 & 1U);
    if (t89 != 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t84) != 0)
        goto LAB32;

LAB33:    t92 = *((unsigned int *)t53);
    t93 = *((unsigned int *)t83);
    t94 = (t92 & t93);
    *((unsigned int *)t91) = t94;
    t95 = (t53 + 4);
    t96 = (t83 + 4);
    t97 = (t91 + 4);
    t98 = *((unsigned int *)t95);
    t99 = *((unsigned int *)t96);
    t100 = (t98 | t99);
    *((unsigned int *)t97) = t100;
    t101 = *((unsigned int *)t97);
    t102 = (t101 != 0);
    if (t102 == 1)
        goto LAB34;

LAB35:
LAB36:    goto LAB25;

LAB28:    t82 = (t67 + 4);
    *((unsigned int *)t67) = 1;
    *((unsigned int *)t82) = 1;
    goto LAB29;

LAB30:    *((unsigned int *)t83) = 1;
    goto LAB33;

LAB32:    t90 = (t83 + 4);
    *((unsigned int *)t83) = 1;
    *((unsigned int *)t90) = 1;
    goto LAB33;

LAB34:    t103 = *((unsigned int *)t91);
    t104 = *((unsigned int *)t97);
    *((unsigned int *)t91) = (t103 | t104);
    t105 = (t53 + 4);
    t106 = (t83 + 4);
    t107 = *((unsigned int *)t53);
    t108 = (~(t107));
    t109 = *((unsigned int *)t105);
    t110 = (~(t109));
    t111 = *((unsigned int *)t83);
    t112 = (~(t111));
    t113 = *((unsigned int *)t106);
    t114 = (~(t113));
    t115 = (t108 & t110);
    t116 = (t112 & t114);
    t117 = (~(t115));
    t118 = (~(t116));
    t119 = *((unsigned int *)t97);
    *((unsigned int *)t97) = (t119 & t117);
    t120 = *((unsigned int *)t97);
    *((unsigned int *)t97) = (t120 & t118);
    t121 = *((unsigned int *)t91);
    *((unsigned int *)t91) = (t121 & t117);
    t122 = *((unsigned int *)t91);
    *((unsigned int *)t91) = (t122 & t118);
    goto LAB36;

LAB37:    *((unsigned int *)t123) = 1;
    goto LAB40;

LAB39:    t130 = (t123 + 4);
    *((unsigned int *)t123) = 1;
    *((unsigned int *)t130) = 1;
    goto LAB40;

LAB41:    t143 = *((unsigned int *)t131);
    t144 = *((unsigned int *)t137);
    *((unsigned int *)t131) = (t143 | t144);
    t145 = (t22 + 4);
    t146 = (t123 + 4);
    t147 = *((unsigned int *)t145);
    t148 = (~(t147));
    t149 = *((unsigned int *)t22);
    t150 = (t149 & t148);
    t151 = *((unsigned int *)t146);
    t152 = (~(t151));
    t153 = *((unsigned int *)t123);
    t154 = (t153 & t152);
    t155 = (~(t150));
    t156 = (~(t154));
    t157 = *((unsigned int *)t137);
    *((unsigned int *)t137) = (t157 & t155);
    t158 = *((unsigned int *)t137);
    *((unsigned int *)t137) = (t158 & t156);
    goto LAB43;

LAB44:    *((unsigned int *)t4) = 1;
    goto LAB47;

LAB46:    t165 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t165) = 1;
    goto LAB47;

LAB48:    t170 = (t0 + 1848U);
    t171 = *((char **)t170);
    goto LAB49;

LAB50:    t170 = (t0 + 1688U);
    t178 = *((char **)t170);
    t170 = ((char*)((ng3)));
    memset(t179, 0, 8);
    t180 = (t178 + 4);
    t181 = (t170 + 4);
    t182 = *((unsigned int *)t178);
    t183 = *((unsigned int *)t170);
    t184 = (t182 ^ t183);
    t185 = *((unsigned int *)t180);
    t186 = *((unsigned int *)t181);
    t187 = (t185 ^ t186);
    t188 = (t184 | t187);
    t189 = *((unsigned int *)t180);
    t190 = *((unsigned int *)t181);
    t191 = (t189 | t190);
    t192 = (~(t191));
    t193 = (t188 & t192);
    if (t193 != 0)
        goto LAB60;

LAB57:    if (t191 != 0)
        goto LAB59;

LAB58:    *((unsigned int *)t179) = 1;

LAB60:    memset(t195, 0, 8);
    t196 = (t179 + 4);
    t197 = *((unsigned int *)t196);
    t198 = (~(t197));
    t199 = *((unsigned int *)t179);
    t200 = (t199 & t198);
    t201 = (t200 & 1U);
    if (t201 != 0)
        goto LAB61;

LAB62:    if (*((unsigned int *)t196) != 0)
        goto LAB63;

LAB64:    t203 = (t195 + 4);
    t204 = *((unsigned int *)t195);
    t205 = *((unsigned int *)t203);
    t206 = (t204 || t205);
    if (t206 > 0)
        goto LAB65;

LAB66:    memcpy(t233, t195, 8);

LAB67:    memset(t177, 0, 8);
    t265 = (t233 + 4);
    t266 = *((unsigned int *)t265);
    t267 = (~(t266));
    t268 = *((unsigned int *)t233);
    t269 = (t268 & t267);
    t270 = (t269 & 1U);
    if (t270 != 0)
        goto LAB79;

LAB80:    if (*((unsigned int *)t265) != 0)
        goto LAB81;

LAB82:    t272 = (t177 + 4);
    t273 = *((unsigned int *)t177);
    t274 = *((unsigned int *)t272);
    t275 = (t273 || t274);
    if (t275 > 0)
        goto LAB83;

LAB84:    t303 = *((unsigned int *)t177);
    t304 = (~(t303));
    t305 = *((unsigned int *)t272);
    t306 = (t304 || t305);
    if (t306 > 0)
        goto LAB85;

LAB86:    if (*((unsigned int *)t272) > 0)
        goto LAB87;

LAB88:    if (*((unsigned int *)t177) > 0)
        goto LAB89;

LAB90:    memcpy(t176, t307, 8);

LAB91:    goto LAB51;

LAB52:    xsi_vlog_unsigned_bit_combine(t3, 32, t171, 32, t176, 32);
    goto LAB56;

LAB54:    memcpy(t3, t171, 8);
    goto LAB56;

LAB59:    t194 = (t179 + 4);
    *((unsigned int *)t179) = 1;
    *((unsigned int *)t194) = 1;
    goto LAB60;

LAB61:    *((unsigned int *)t195) = 1;
    goto LAB64;

LAB63:    t202 = (t195 + 4);
    *((unsigned int *)t195) = 1;
    *((unsigned int *)t202) = 1;
    goto LAB64;

LAB65:    t207 = (t0 + 1528U);
    t208 = *((char **)t207);
    t207 = ((char*)((ng5)));
    memset(t209, 0, 8);
    t210 = (t208 + 4);
    t211 = (t207 + 4);
    t212 = *((unsigned int *)t208);
    t213 = *((unsigned int *)t207);
    t214 = (t212 ^ t213);
    t215 = *((unsigned int *)t210);
    t216 = *((unsigned int *)t211);
    t217 = (t215 ^ t216);
    t218 = (t214 | t217);
    t219 = *((unsigned int *)t210);
    t220 = *((unsigned int *)t211);
    t221 = (t219 | t220);
    t222 = (~(t221));
    t223 = (t218 & t222);
    if (t223 != 0)
        goto LAB71;

LAB68:    if (t221 != 0)
        goto LAB70;

LAB69:    *((unsigned int *)t209) = 1;

LAB71:    memset(t225, 0, 8);
    t226 = (t209 + 4);
    t227 = *((unsigned int *)t226);
    t228 = (~(t227));
    t229 = *((unsigned int *)t209);
    t230 = (t229 & t228);
    t231 = (t230 & 1U);
    if (t231 != 0)
        goto LAB72;

LAB73:    if (*((unsigned int *)t226) != 0)
        goto LAB74;

LAB75:    t234 = *((unsigned int *)t195);
    t235 = *((unsigned int *)t225);
    t236 = (t234 & t235);
    *((unsigned int *)t233) = t236;
    t237 = (t195 + 4);
    t238 = (t225 + 4);
    t239 = (t233 + 4);
    t240 = *((unsigned int *)t237);
    t241 = *((unsigned int *)t238);
    t242 = (t240 | t241);
    *((unsigned int *)t239) = t242;
    t243 = *((unsigned int *)t239);
    t244 = (t243 != 0);
    if (t244 == 1)
        goto LAB76;

LAB77:
LAB78:    goto LAB67;

LAB70:    t224 = (t209 + 4);
    *((unsigned int *)t209) = 1;
    *((unsigned int *)t224) = 1;
    goto LAB71;

LAB72:    *((unsigned int *)t225) = 1;
    goto LAB75;

LAB74:    t232 = (t225 + 4);
    *((unsigned int *)t225) = 1;
    *((unsigned int *)t232) = 1;
    goto LAB75;

LAB76:    t245 = *((unsigned int *)t233);
    t246 = *((unsigned int *)t239);
    *((unsigned int *)t233) = (t245 | t246);
    t247 = (t195 + 4);
    t248 = (t225 + 4);
    t249 = *((unsigned int *)t195);
    t250 = (~(t249));
    t251 = *((unsigned int *)t247);
    t252 = (~(t251));
    t253 = *((unsigned int *)t225);
    t254 = (~(t253));
    t255 = *((unsigned int *)t248);
    t256 = (~(t255));
    t257 = (t250 & t252);
    t258 = (t254 & t256);
    t259 = (~(t257));
    t260 = (~(t258));
    t261 = *((unsigned int *)t239);
    *((unsigned int *)t239) = (t261 & t259);
    t262 = *((unsigned int *)t239);
    *((unsigned int *)t239) = (t262 & t260);
    t263 = *((unsigned int *)t233);
    *((unsigned int *)t233) = (t263 & t259);
    t264 = *((unsigned int *)t233);
    *((unsigned int *)t233) = (t264 & t260);
    goto LAB78;

LAB79:    *((unsigned int *)t177) = 1;
    goto LAB82;

LAB81:    t271 = (t177 + 4);
    *((unsigned int *)t177) = 1;
    *((unsigned int *)t271) = 1;
    goto LAB82;

LAB83:    t277 = ((char*)((ng2)));
    t279 = (t0 + 1208U);
    t280 = *((char **)t279);
    memset(t278, 0, 8);
    t279 = (t278 + 4);
    t281 = (t280 + 4);
    t282 = *((unsigned int *)t280);
    t283 = (t282 >> 0);
    *((unsigned int *)t278) = t283;
    t284 = *((unsigned int *)t281);
    t285 = (t284 >> 0);
    *((unsigned int *)t279) = t285;
    t286 = *((unsigned int *)t278);
    *((unsigned int *)t278) = (t286 & 65535U);
    t287 = *((unsigned int *)t279);
    *((unsigned int *)t279) = (t287 & 65535U);
    t289 = ((char*)((ng6)));
    t290 = (t0 + 1208U);
    t291 = *((char **)t290);
    memset(t292, 0, 8);
    t290 = (t292 + 4);
    t293 = (t291 + 4);
    t294 = *((unsigned int *)t291);
    t295 = (t294 >> 15);
    t296 = (t295 & 1);
    *((unsigned int *)t292) = t296;
    t297 = *((unsigned int *)t293);
    t298 = (t297 >> 15);
    t299 = (t298 & 1);
    *((unsigned int *)t290) = t299;
    xsi_vlog_mul_concat(t288, 14, 1, t289, 1U, t292, 1);
    xsi_vlogtype_concat(t276, 32, 32, 3U, t288, 14, t278, 16, t277, 2);
    t300 = (t0 + 1848U);
    t301 = *((char **)t300);
    memset(t302, 0, 8);
    xsi_vlog_unsigned_add(t302, 32, t276, 32, t301, 32);
    goto LAB84;

LAB85:    t300 = (t0 + 1688U);
    t309 = *((char **)t300);
    t300 = ((char*)((ng7)));
    memset(t310, 0, 8);
    t311 = (t309 + 4);
    t312 = (t300 + 4);
    t313 = *((unsigned int *)t309);
    t314 = *((unsigned int *)t300);
    t315 = (t313 ^ t314);
    t316 = *((unsigned int *)t311);
    t317 = *((unsigned int *)t312);
    t318 = (t316 ^ t317);
    t319 = (t315 | t318);
    t320 = *((unsigned int *)t311);
    t321 = *((unsigned int *)t312);
    t322 = (t320 | t321);
    t323 = (~(t322));
    t324 = (t319 & t323);
    if (t324 != 0)
        goto LAB95;

LAB92:    if (t322 != 0)
        goto LAB94;

LAB93:    *((unsigned int *)t310) = 1;

LAB95:    memset(t308, 0, 8);
    t326 = (t310 + 4);
    t327 = *((unsigned int *)t326);
    t328 = (~(t327));
    t329 = *((unsigned int *)t310);
    t330 = (t329 & t328);
    t331 = (t330 & 1U);
    if (t331 != 0)
        goto LAB96;

LAB97:    if (*((unsigned int *)t326) != 0)
        goto LAB98;

LAB99:    t333 = (t308 + 4);
    t334 = *((unsigned int *)t308);
    t335 = *((unsigned int *)t333);
    t336 = (t334 || t335);
    if (t336 > 0)
        goto LAB100;

LAB101:    t350 = *((unsigned int *)t308);
    t351 = (~(t350));
    t352 = *((unsigned int *)t333);
    t353 = (t351 || t352);
    if (t353 > 0)
        goto LAB102;

LAB103:    if (*((unsigned int *)t333) > 0)
        goto LAB104;

LAB105:    if (*((unsigned int *)t308) > 0)
        goto LAB106;

LAB107:    memcpy(t307, t354, 8);

LAB108:    goto LAB86;

LAB87:    xsi_vlog_unsigned_bit_combine(t176, 32, t302, 32, t307, 32);
    goto LAB91;

LAB89:    memcpy(t176, t302, 8);
    goto LAB91;

LAB94:    t325 = (t310 + 4);
    *((unsigned int *)t310) = 1;
    *((unsigned int *)t325) = 1;
    goto LAB95;

LAB96:    *((unsigned int *)t308) = 1;
    goto LAB99;

LAB98:    t332 = (t308 + 4);
    *((unsigned int *)t308) = 1;
    *((unsigned int *)t332) = 1;
    goto LAB99;

LAB100:    t338 = ((char*)((ng2)));
    t339 = (t0 + 1208U);
    t340 = *((char **)t339);
    t339 = (t0 + 1048U);
    t342 = *((char **)t339);
    memset(t341, 0, 8);
    t339 = (t341 + 4);
    t343 = (t342 + 4);
    t344 = *((unsigned int *)t342);
    t345 = (t344 >> 28);
    *((unsigned int *)t341) = t345;
    t346 = *((unsigned int *)t343);
    t347 = (t346 >> 28);
    *((unsigned int *)t339) = t347;
    t348 = *((unsigned int *)t341);
    *((unsigned int *)t341) = (t348 & 15U);
    t349 = *((unsigned int *)t339);
    *((unsigned int *)t339) = (t349 & 15U);
    xsi_vlogtype_concat(t337, 32, 32, 3U, t341, 4, t340, 26, t338, 2);
    goto LAB101;

LAB102:    t356 = (t0 + 1688U);
    t357 = *((char **)t356);
    t356 = ((char*)((ng8)));
    memset(t358, 0, 8);
    t359 = (t357 + 4);
    t360 = (t356 + 4);
    t361 = *((unsigned int *)t357);
    t362 = *((unsigned int *)t356);
    t363 = (t361 ^ t362);
    t364 = *((unsigned int *)t359);
    t365 = *((unsigned int *)t360);
    t366 = (t364 ^ t365);
    t367 = (t363 | t366);
    t368 = *((unsigned int *)t359);
    t369 = *((unsigned int *)t360);
    t370 = (t368 | t369);
    t371 = (~(t370));
    t372 = (t367 & t371);
    if (t372 != 0)
        goto LAB112;

LAB109:    if (t370 != 0)
        goto LAB111;

LAB110:    *((unsigned int *)t358) = 1;

LAB112:    memset(t355, 0, 8);
    t374 = (t358 + 4);
    t375 = *((unsigned int *)t374);
    t376 = (~(t375));
    t377 = *((unsigned int *)t358);
    t378 = (t377 & t376);
    t379 = (t378 & 1U);
    if (t379 != 0)
        goto LAB113;

LAB114:    if (*((unsigned int *)t374) != 0)
        goto LAB115;

LAB116:    t381 = (t355 + 4);
    t382 = *((unsigned int *)t355);
    t383 = *((unsigned int *)t381);
    t384 = (t382 || t383);
    if (t384 > 0)
        goto LAB117;

LAB118:    t387 = *((unsigned int *)t355);
    t388 = (~(t387));
    t389 = *((unsigned int *)t381);
    t390 = (t388 || t389);
    if (t390 > 0)
        goto LAB119;

LAB120:    if (*((unsigned int *)t381) > 0)
        goto LAB121;

LAB122:    if (*((unsigned int *)t355) > 0)
        goto LAB123;

LAB124:    memcpy(t354, t391, 8);

LAB125:    goto LAB103;

LAB104:    xsi_vlog_unsigned_bit_combine(t307, 32, t337, 32, t354, 32);
    goto LAB108;

LAB106:    memcpy(t307, t337, 8);
    goto LAB108;

LAB111:    t373 = (t358 + 4);
    *((unsigned int *)t358) = 1;
    *((unsigned int *)t373) = 1;
    goto LAB112;

LAB113:    *((unsigned int *)t355) = 1;
    goto LAB116;

LAB115:    t380 = (t355 + 4);
    *((unsigned int *)t355) = 1;
    *((unsigned int *)t380) = 1;
    goto LAB116;

LAB117:    t385 = (t0 + 1368U);
    t386 = *((char **)t385);
    goto LAB118;

LAB119:    t385 = (t0 + 1848U);
    t391 = *((char **)t385);
    goto LAB120;

LAB121:    xsi_vlog_unsigned_bit_combine(t354, 32, t386, 32, t391, 32);
    goto LAB125;

LAB123:    memcpy(t354, t386, 8);
    goto LAB125;

}


extern void work_m_00000000001101034471_0757879789_init()
{
	static char *pe[] = {(void *)Cont_34_0,(void *)Cont_35_1};
	xsi_register_didat("work_m_00000000001101034471_0757879789", "isim/tb_isim_beh.exe.sim/work/m_00000000001101034471_0757879789.didat");
	xsi_register_executes(pe);
}
