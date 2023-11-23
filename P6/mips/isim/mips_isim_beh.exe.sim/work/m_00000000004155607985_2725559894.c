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
static const char *ng0 = "D:/lzq123/co/P6/mips/alu.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {9U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {8U, 0U};
static unsigned int ng7[] = {4U, 0U};
static unsigned int ng8[] = {5U, 0U};
static unsigned int ng9[] = {6U, 0U};



static void NetDecl_28_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t7[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;

LAB0:    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    t2 = (t0 + 1208U);
    t6 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t5 + 4);
    if (*((unsigned int *)t2) != 0)
        goto LAB5;

LAB4:    t8 = (t6 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB5;

LAB8:    if (*((unsigned int *)t5) < *((unsigned int *)t6))
        goto LAB6;

LAB7:    memset(t4, 0, 8);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t7);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB9;

LAB10:    if (*((unsigned int *)t10) != 0)
        goto LAB11;

LAB12:    t17 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t17);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB13;

LAB14:    t22 = *((unsigned int *)t4);
    t23 = (~(t22));
    t24 = *((unsigned int *)t17);
    t25 = (t23 || t24);
    if (t25 > 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t17) > 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t4) > 0)
        goto LAB19;

LAB20:    memcpy(t3, t26, 8);

LAB21:    t27 = (t0 + 4360);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memset(t31, 0, 8);
    t32 = 1U;
    t33 = t32;
    t34 = (t3 + 4);
    t35 = *((unsigned int *)t3);
    t32 = (t32 & t35);
    t36 = *((unsigned int *)t34);
    t33 = (t33 & t36);
    t37 = (t31 + 4);
    t38 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t38 | t32);
    t39 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t39 | t33);
    xsi_driver_vfirst_trans(t27, 0, 0U);
    t40 = (t0 + 4232);
    *((int *)t40) = 1;

LAB1:    return;
LAB5:    t9 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB7;

LAB6:    *((unsigned int *)t7) = 1;
    goto LAB7;

LAB9:    *((unsigned int *)t4) = 1;
    goto LAB12;

LAB11:    t16 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB12;

LAB13:    t21 = ((char*)((ng1)));
    goto LAB14;

LAB15:    t26 = ((char*)((ng2)));
    goto LAB16;

LAB17:    xsi_vlog_unsigned_bit_combine(t3, 32, t21, 32, t26, 32);
    goto LAB21;

LAB19:    memcpy(t3, t21, 8);
    goto LAB21;

}

static void NetDecl_29_1(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;

LAB0:    t1 = (t0 + 3416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 1208U);
    t6 = *((char **)t2);
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t4, 32, t6, 32);
    t2 = (t0 + 4424);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memset(t11, 0, 8);
    t12 = 1U;
    t13 = t12;
    t14 = (t7 + 4);
    t15 = *((unsigned int *)t7);
    t12 = (t12 & t15);
    t16 = *((unsigned int *)t14);
    t13 = (t13 & t16);
    t17 = (t11 + 4);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 | t12);
    t19 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t19 | t13);
    xsi_driver_vfirst_trans(t2, 0, 0U);
    t20 = (t0 + 4248);
    *((int *)t20) = 1;

LAB1:    return;
}

static void NetDecl_30_2(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;

LAB0:    t1 = (t0 + 3664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1848U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t17 = *((unsigned int *)t4);
    t18 = (~(t17));
    t19 = *((unsigned int *)t12);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t21, 8);

LAB16:    t22 = (t0 + 4488);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memset(t26, 0, 8);
    t27 = 1U;
    t28 = t27;
    t29 = (t3 + 4);
    t30 = *((unsigned int *)t3);
    t27 = (t27 & t30);
    t31 = *((unsigned int *)t29);
    t28 = (t28 & t31);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t33 | t27);
    t34 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t34 | t28);
    xsi_driver_vfirst_trans(t22, 0, 0U);
    t35 = (t0 + 4264);
    *((int *)t35) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = ((char*)((ng1)));
    goto LAB9;

LAB10:    t21 = ((char*)((ng2)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t16, 32, t21, 32);
    goto LAB16;

LAB14:    memcpy(t3, t16, 8);
    goto LAB16;

}

static void Cont_31_3(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t36[8];
    char t41[8];
    char t42[8];
    char t44[8];
    char t74[8];
    char t79[8];
    char t80[8];
    char t82[8];
    char t100[8];
    char t116[8];
    char t158[8];
    char t189[8];
    char t190[8];
    char t193[8];
    char t211[8];
    char t227[8];
    char t269[8];
    char t304[8];
    char t305[8];
    char t308[8];
    char t337[8];
    char t342[8];
    char t343[8];
    char t345[8];
    char t374[8];
    char t379[8];
    char t380[8];
    char t382[8];
    char t409[8];
    char t411[8];
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
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t43;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    char *t73;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t81;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    char *t99;
    char *t101;
    char *t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t115;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    char *t120;
    char *t121;
    char *t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    char *t130;
    char *t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    char *t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    char *t150;
    char *t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    char *t155;
    char *t156;
    char *t157;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    char *t162;
    char *t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    char *t171;
    char *t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    char *t191;
    char *t192;
    char *t194;
    char *t195;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    unsigned int t201;
    unsigned int t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    unsigned int t207;
    char *t208;
    char *t209;
    char *t210;
    char *t212;
    char *t213;
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
    unsigned int t224;
    unsigned int t225;
    char *t226;
    unsigned int t228;
    unsigned int t229;
    unsigned int t230;
    char *t231;
    char *t232;
    char *t233;
    unsigned int t234;
    unsigned int t235;
    unsigned int t236;
    unsigned int t237;
    unsigned int t238;
    unsigned int t239;
    unsigned int t240;
    char *t241;
    char *t242;
    unsigned int t243;
    unsigned int t244;
    unsigned int t245;
    int t246;
    unsigned int t247;
    unsigned int t248;
    unsigned int t249;
    int t250;
    unsigned int t251;
    unsigned int t252;
    unsigned int t253;
    unsigned int t254;
    char *t255;
    unsigned int t256;
    unsigned int t257;
    unsigned int t258;
    unsigned int t259;
    unsigned int t260;
    char *t261;
    char *t262;
    unsigned int t263;
    unsigned int t264;
    unsigned int t265;
    char *t266;
    char *t267;
    char *t268;
    unsigned int t270;
    unsigned int t271;
    unsigned int t272;
    char *t273;
    char *t274;
    unsigned int t275;
    unsigned int t276;
    unsigned int t277;
    unsigned int t278;
    unsigned int t279;
    unsigned int t280;
    unsigned int t281;
    char *t282;
    char *t283;
    unsigned int t284;
    unsigned int t285;
    unsigned int t286;
    unsigned int t287;
    unsigned int t288;
    unsigned int t289;
    unsigned int t290;
    unsigned int t291;
    int t292;
    int t293;
    unsigned int t294;
    unsigned int t295;
    unsigned int t296;
    unsigned int t297;
    unsigned int t298;
    unsigned int t299;
    unsigned int t300;
    unsigned int t301;
    unsigned int t302;
    unsigned int t303;
    char *t306;
    char *t307;
    char *t309;
    char *t310;
    unsigned int t311;
    unsigned int t312;
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
    char *t323;
    char *t324;
    unsigned int t325;
    unsigned int t326;
    unsigned int t327;
    unsigned int t328;
    unsigned int t329;
    char *t330;
    char *t331;
    unsigned int t332;
    unsigned int t333;
    unsigned int t334;
    char *t335;
    char *t336;
    unsigned int t338;
    unsigned int t339;
    unsigned int t340;
    unsigned int t341;
    char *t344;
    char *t346;
    char *t347;
    unsigned int t348;
    unsigned int t349;
    unsigned int t350;
    unsigned int t351;
    unsigned int t352;
    unsigned int t353;
    unsigned int t354;
    unsigned int t355;
    unsigned int t356;
    unsigned int t357;
    unsigned int t358;
    unsigned int t359;
    char *t360;
    char *t361;
    unsigned int t362;
    unsigned int t363;
    unsigned int t364;
    unsigned int t365;
    unsigned int t366;
    char *t367;
    char *t368;
    unsigned int t369;
    unsigned int t370;
    unsigned int t371;
    char *t372;
    char *t373;
    unsigned int t375;
    unsigned int t376;
    unsigned int t377;
    unsigned int t378;
    char *t381;
    char *t383;
    char *t384;
    unsigned int t385;
    unsigned int t386;
    unsigned int t387;
    unsigned int t388;
    unsigned int t389;
    unsigned int t390;
    unsigned int t391;
    unsigned int t392;
    unsigned int t393;
    unsigned int t394;
    unsigned int t395;
    unsigned int t396;
    char *t397;
    char *t398;
    unsigned int t399;
    unsigned int t400;
    unsigned int t401;
    unsigned int t402;
    unsigned int t403;
    char *t404;
    char *t405;
    unsigned int t406;
    unsigned int t407;
    unsigned int t408;
    char *t410;
    char *t412;
    char *t413;
    char *t414;
    unsigned int t415;
    unsigned int t416;
    unsigned int t417;
    unsigned int t418;
    unsigned int t419;
    unsigned int t420;
    unsigned int t421;
    unsigned int t422;
    unsigned int t423;
    unsigned int t424;
    char *t425;
    char *t426;
    char *t427;
    char *t428;
    char *t429;
    char *t430;
    char *t431;

LAB0:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1528U);
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

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t37 = *((unsigned int *)t4);
    t38 = (~(t37));
    t39 = *((unsigned int *)t29);
    t40 = (t38 || t39);
    if (t40 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t41, 8);

LAB20:    t426 = (t0 + 4552);
    t427 = (t426 + 56U);
    t428 = *((char **)t427);
    t429 = (t428 + 56U);
    t430 = *((char **)t429);
    memcpy(t430, t3, 8);
    xsi_driver_vfirst_trans(t426, 0, 31);
    t431 = (t0 + 4280);
    *((int *)t431) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 1048U);
    t34 = *((char **)t33);
    t33 = (t0 + 1208U);
    t35 = *((char **)t33);
    memset(t36, 0, 8);
    xsi_vlog_unsigned_add(t36, 32, t34, 32, t35, 32);
    goto LAB13;

LAB14:    t33 = (t0 + 1528U);
    t43 = *((char **)t33);
    t33 = ((char*)((ng1)));
    memset(t44, 0, 8);
    t45 = (t43 + 4);
    t46 = (t33 + 4);
    t47 = *((unsigned int *)t43);
    t48 = *((unsigned int *)t33);
    t49 = (t47 ^ t48);
    t50 = *((unsigned int *)t45);
    t51 = *((unsigned int *)t46);
    t52 = (t50 ^ t51);
    t53 = (t49 | t52);
    t54 = *((unsigned int *)t45);
    t55 = *((unsigned int *)t46);
    t56 = (t54 | t55);
    t57 = (~(t56));
    t58 = (t53 & t57);
    if (t58 != 0)
        goto LAB24;

LAB21:    if (t56 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t44) = 1;

LAB24:    memset(t42, 0, 8);
    t60 = (t44 + 4);
    t61 = *((unsigned int *)t60);
    t62 = (~(t61));
    t63 = *((unsigned int *)t44);
    t64 = (t63 & t62);
    t65 = (t64 & 1U);
    if (t65 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t60) != 0)
        goto LAB27;

LAB28:    t67 = (t42 + 4);
    t68 = *((unsigned int *)t42);
    t69 = *((unsigned int *)t67);
    t70 = (t68 || t69);
    if (t70 > 0)
        goto LAB29;

LAB30:    t75 = *((unsigned int *)t42);
    t76 = (~(t75));
    t77 = *((unsigned int *)t67);
    t78 = (t76 || t77);
    if (t78 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t67) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t42) > 0)
        goto LAB35;

LAB36:    memcpy(t41, t79, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t36, 32, t41, 32);
    goto LAB20;

LAB18:    memcpy(t3, t36, 8);
    goto LAB20;

LAB23:    t59 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t42) = 1;
    goto LAB28;

LAB27:    t66 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB28;

LAB29:    t71 = (t0 + 1048U);
    t72 = *((char **)t71);
    t71 = (t0 + 1208U);
    t73 = *((char **)t71);
    memset(t74, 0, 8);
    xsi_vlog_unsigned_minus(t74, 32, t72, 32, t73, 32);
    goto LAB30;

LAB31:    t71 = (t0 + 1528U);
    t81 = *((char **)t71);
    t71 = ((char*)((ng3)));
    memset(t82, 0, 8);
    t83 = (t81 + 4);
    t84 = (t71 + 4);
    t85 = *((unsigned int *)t81);
    t86 = *((unsigned int *)t71);
    t87 = (t85 ^ t86);
    t88 = *((unsigned int *)t83);
    t89 = *((unsigned int *)t84);
    t90 = (t88 ^ t89);
    t91 = (t87 | t90);
    t92 = *((unsigned int *)t83);
    t93 = *((unsigned int *)t84);
    t94 = (t92 | t93);
    t95 = (~(t94));
    t96 = (t91 & t95);
    if (t96 != 0)
        goto LAB41;

LAB38:    if (t94 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t82) = 1;

LAB41:    t98 = (t0 + 1528U);
    t99 = *((char **)t98);
    t98 = ((char*)((ng4)));
    memset(t100, 0, 8);
    t101 = (t99 + 4);
    t102 = (t98 + 4);
    t103 = *((unsigned int *)t99);
    t104 = *((unsigned int *)t98);
    t105 = (t103 ^ t104);
    t106 = *((unsigned int *)t101);
    t107 = *((unsigned int *)t102);
    t108 = (t106 ^ t107);
    t109 = (t105 | t108);
    t110 = *((unsigned int *)t101);
    t111 = *((unsigned int *)t102);
    t112 = (t110 | t111);
    t113 = (~(t112));
    t114 = (t109 & t113);
    if (t114 != 0)
        goto LAB45;

LAB42:    if (t112 != 0)
        goto LAB44;

LAB43:    *((unsigned int *)t100) = 1;

LAB45:    t117 = *((unsigned int *)t82);
    t118 = *((unsigned int *)t100);
    t119 = (t117 | t118);
    *((unsigned int *)t116) = t119;
    t120 = (t82 + 4);
    t121 = (t100 + 4);
    t122 = (t116 + 4);
    t123 = *((unsigned int *)t120);
    t124 = *((unsigned int *)t121);
    t125 = (t123 | t124);
    *((unsigned int *)t122) = t125;
    t126 = *((unsigned int *)t122);
    t127 = (t126 != 0);
    if (t127 == 1)
        goto LAB46;

LAB47:
LAB48:    memset(t80, 0, 8);
    t144 = (t116 + 4);
    t145 = *((unsigned int *)t144);
    t146 = (~(t145));
    t147 = *((unsigned int *)t116);
    t148 = (t147 & t146);
    t149 = (t148 & 1U);
    if (t149 != 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t144) != 0)
        goto LAB51;

LAB52:    t151 = (t80 + 4);
    t152 = *((unsigned int *)t80);
    t153 = *((unsigned int *)t151);
    t154 = (t152 || t153);
    if (t154 > 0)
        goto LAB53;

LAB54:    t185 = *((unsigned int *)t80);
    t186 = (~(t185));
    t187 = *((unsigned int *)t151);
    t188 = (t186 || t187);
    if (t188 > 0)
        goto LAB55;

LAB56:    if (*((unsigned int *)t151) > 0)
        goto LAB57;

LAB58:    if (*((unsigned int *)t80) > 0)
        goto LAB59;

LAB60:    memcpy(t79, t189, 8);

LAB61:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t41, 32, t74, 32, t79, 32);
    goto LAB37;

LAB35:    memcpy(t41, t74, 8);
    goto LAB37;

LAB40:    t97 = (t82 + 4);
    *((unsigned int *)t82) = 1;
    *((unsigned int *)t97) = 1;
    goto LAB41;

LAB44:    t115 = (t100 + 4);
    *((unsigned int *)t100) = 1;
    *((unsigned int *)t115) = 1;
    goto LAB45;

LAB46:    t128 = *((unsigned int *)t116);
    t129 = *((unsigned int *)t122);
    *((unsigned int *)t116) = (t128 | t129);
    t130 = (t82 + 4);
    t131 = (t100 + 4);
    t132 = *((unsigned int *)t130);
    t133 = (~(t132));
    t134 = *((unsigned int *)t82);
    t135 = (t134 & t133);
    t136 = *((unsigned int *)t131);
    t137 = (~(t136));
    t138 = *((unsigned int *)t100);
    t139 = (t138 & t137);
    t140 = (~(t135));
    t141 = (~(t139));
    t142 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t142 & t140);
    t143 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t143 & t141);
    goto LAB48;

LAB49:    *((unsigned int *)t80) = 1;
    goto LAB52;

LAB51:    t150 = (t80 + 4);
    *((unsigned int *)t80) = 1;
    *((unsigned int *)t150) = 1;
    goto LAB52;

LAB53:    t155 = (t0 + 1048U);
    t156 = *((char **)t155);
    t155 = (t0 + 1208U);
    t157 = *((char **)t155);
    t159 = *((unsigned int *)t156);
    t160 = *((unsigned int *)t157);
    t161 = (t159 | t160);
    *((unsigned int *)t158) = t161;
    t155 = (t156 + 4);
    t162 = (t157 + 4);
    t163 = (t158 + 4);
    t164 = *((unsigned int *)t155);
    t165 = *((unsigned int *)t162);
    t166 = (t164 | t165);
    *((unsigned int *)t163) = t166;
    t167 = *((unsigned int *)t163);
    t168 = (t167 != 0);
    if (t168 == 1)
        goto LAB62;

LAB63:
LAB64:    goto LAB54;

LAB55:    t191 = (t0 + 1528U);
    t192 = *((char **)t191);
    t191 = ((char*)((ng5)));
    memset(t193, 0, 8);
    t194 = (t192 + 4);
    t195 = (t191 + 4);
    t196 = *((unsigned int *)t192);
    t197 = *((unsigned int *)t191);
    t198 = (t196 ^ t197);
    t199 = *((unsigned int *)t194);
    t200 = *((unsigned int *)t195);
    t201 = (t199 ^ t200);
    t202 = (t198 | t201);
    t203 = *((unsigned int *)t194);
    t204 = *((unsigned int *)t195);
    t205 = (t203 | t204);
    t206 = (~(t205));
    t207 = (t202 & t206);
    if (t207 != 0)
        goto LAB68;

LAB65:    if (t205 != 0)
        goto LAB67;

LAB66:    *((unsigned int *)t193) = 1;

LAB68:    t209 = (t0 + 1528U);
    t210 = *((char **)t209);
    t209 = ((char*)((ng6)));
    memset(t211, 0, 8);
    t212 = (t210 + 4);
    t213 = (t209 + 4);
    t214 = *((unsigned int *)t210);
    t215 = *((unsigned int *)t209);
    t216 = (t214 ^ t215);
    t217 = *((unsigned int *)t212);
    t218 = *((unsigned int *)t213);
    t219 = (t217 ^ t218);
    t220 = (t216 | t219);
    t221 = *((unsigned int *)t212);
    t222 = *((unsigned int *)t213);
    t223 = (t221 | t222);
    t224 = (~(t223));
    t225 = (t220 & t224);
    if (t225 != 0)
        goto LAB72;

LAB69:    if (t223 != 0)
        goto LAB71;

LAB70:    *((unsigned int *)t211) = 1;

LAB72:    t228 = *((unsigned int *)t193);
    t229 = *((unsigned int *)t211);
    t230 = (t228 | t229);
    *((unsigned int *)t227) = t230;
    t231 = (t193 + 4);
    t232 = (t211 + 4);
    t233 = (t227 + 4);
    t234 = *((unsigned int *)t231);
    t235 = *((unsigned int *)t232);
    t236 = (t234 | t235);
    *((unsigned int *)t233) = t236;
    t237 = *((unsigned int *)t233);
    t238 = (t237 != 0);
    if (t238 == 1)
        goto LAB73;

LAB74:
LAB75:    memset(t190, 0, 8);
    t255 = (t227 + 4);
    t256 = *((unsigned int *)t255);
    t257 = (~(t256));
    t258 = *((unsigned int *)t227);
    t259 = (t258 & t257);
    t260 = (t259 & 1U);
    if (t260 != 0)
        goto LAB76;

LAB77:    if (*((unsigned int *)t255) != 0)
        goto LAB78;

LAB79:    t262 = (t190 + 4);
    t263 = *((unsigned int *)t190);
    t264 = *((unsigned int *)t262);
    t265 = (t263 || t264);
    if (t265 > 0)
        goto LAB80;

LAB81:    t300 = *((unsigned int *)t190);
    t301 = (~(t300));
    t302 = *((unsigned int *)t262);
    t303 = (t301 || t302);
    if (t303 > 0)
        goto LAB82;

LAB83:    if (*((unsigned int *)t262) > 0)
        goto LAB84;

LAB85:    if (*((unsigned int *)t190) > 0)
        goto LAB86;

LAB87:    memcpy(t189, t304, 8);

LAB88:    goto LAB56;

LAB57:    xsi_vlog_unsigned_bit_combine(t79, 32, t158, 32, t189, 32);
    goto LAB61;

LAB59:    memcpy(t79, t158, 8);
    goto LAB61;

LAB62:    t169 = *((unsigned int *)t158);
    t170 = *((unsigned int *)t163);
    *((unsigned int *)t158) = (t169 | t170);
    t171 = (t156 + 4);
    t172 = (t157 + 4);
    t173 = *((unsigned int *)t171);
    t174 = (~(t173));
    t175 = *((unsigned int *)t156);
    t176 = (t175 & t174);
    t177 = *((unsigned int *)t172);
    t178 = (~(t177));
    t179 = *((unsigned int *)t157);
    t180 = (t179 & t178);
    t181 = (~(t176));
    t182 = (~(t180));
    t183 = *((unsigned int *)t163);
    *((unsigned int *)t163) = (t183 & t181);
    t184 = *((unsigned int *)t163);
    *((unsigned int *)t163) = (t184 & t182);
    goto LAB64;

LAB67:    t208 = (t193 + 4);
    *((unsigned int *)t193) = 1;
    *((unsigned int *)t208) = 1;
    goto LAB68;

LAB71:    t226 = (t211 + 4);
    *((unsigned int *)t211) = 1;
    *((unsigned int *)t226) = 1;
    goto LAB72;

LAB73:    t239 = *((unsigned int *)t227);
    t240 = *((unsigned int *)t233);
    *((unsigned int *)t227) = (t239 | t240);
    t241 = (t193 + 4);
    t242 = (t211 + 4);
    t243 = *((unsigned int *)t241);
    t244 = (~(t243));
    t245 = *((unsigned int *)t193);
    t246 = (t245 & t244);
    t247 = *((unsigned int *)t242);
    t248 = (~(t247));
    t249 = *((unsigned int *)t211);
    t250 = (t249 & t248);
    t251 = (~(t246));
    t252 = (~(t250));
    t253 = *((unsigned int *)t233);
    *((unsigned int *)t233) = (t253 & t251);
    t254 = *((unsigned int *)t233);
    *((unsigned int *)t233) = (t254 & t252);
    goto LAB75;

LAB76:    *((unsigned int *)t190) = 1;
    goto LAB79;

LAB78:    t261 = (t190 + 4);
    *((unsigned int *)t190) = 1;
    *((unsigned int *)t261) = 1;
    goto LAB79;

LAB80:    t266 = (t0 + 1048U);
    t267 = *((char **)t266);
    t266 = (t0 + 1208U);
    t268 = *((char **)t266);
    t270 = *((unsigned int *)t267);
    t271 = *((unsigned int *)t268);
    t272 = (t270 & t271);
    *((unsigned int *)t269) = t272;
    t266 = (t267 + 4);
    t273 = (t268 + 4);
    t274 = (t269 + 4);
    t275 = *((unsigned int *)t266);
    t276 = *((unsigned int *)t273);
    t277 = (t275 | t276);
    *((unsigned int *)t274) = t277;
    t278 = *((unsigned int *)t274);
    t279 = (t278 != 0);
    if (t279 == 1)
        goto LAB89;

LAB90:
LAB91:    goto LAB81;

LAB82:    t306 = (t0 + 1528U);
    t307 = *((char **)t306);
    t306 = ((char*)((ng7)));
    memset(t308, 0, 8);
    t309 = (t307 + 4);
    t310 = (t306 + 4);
    t311 = *((unsigned int *)t307);
    t312 = *((unsigned int *)t306);
    t313 = (t311 ^ t312);
    t314 = *((unsigned int *)t309);
    t315 = *((unsigned int *)t310);
    t316 = (t314 ^ t315);
    t317 = (t313 | t316);
    t318 = *((unsigned int *)t309);
    t319 = *((unsigned int *)t310);
    t320 = (t318 | t319);
    t321 = (~(t320));
    t322 = (t317 & t321);
    if (t322 != 0)
        goto LAB95;

LAB92:    if (t320 != 0)
        goto LAB94;

LAB93:    *((unsigned int *)t308) = 1;

LAB95:    memset(t305, 0, 8);
    t324 = (t308 + 4);
    t325 = *((unsigned int *)t324);
    t326 = (~(t325));
    t327 = *((unsigned int *)t308);
    t328 = (t327 & t326);
    t329 = (t328 & 1U);
    if (t329 != 0)
        goto LAB96;

LAB97:    if (*((unsigned int *)t324) != 0)
        goto LAB98;

LAB99:    t331 = (t305 + 4);
    t332 = *((unsigned int *)t305);
    t333 = *((unsigned int *)t331);
    t334 = (t332 || t333);
    if (t334 > 0)
        goto LAB100;

LAB101:    t338 = *((unsigned int *)t305);
    t339 = (~(t338));
    t340 = *((unsigned int *)t331);
    t341 = (t339 || t340);
    if (t341 > 0)
        goto LAB102;

LAB103:    if (*((unsigned int *)t331) > 0)
        goto LAB104;

LAB105:    if (*((unsigned int *)t305) > 0)
        goto LAB106;

LAB107:    memcpy(t304, t342, 8);

LAB108:    goto LAB83;

LAB84:    xsi_vlog_unsigned_bit_combine(t189, 32, t269, 32, t304, 32);
    goto LAB88;

LAB86:    memcpy(t189, t269, 8);
    goto LAB88;

LAB89:    t280 = *((unsigned int *)t269);
    t281 = *((unsigned int *)t274);
    *((unsigned int *)t269) = (t280 | t281);
    t282 = (t267 + 4);
    t283 = (t268 + 4);
    t284 = *((unsigned int *)t267);
    t285 = (~(t284));
    t286 = *((unsigned int *)t282);
    t287 = (~(t286));
    t288 = *((unsigned int *)t268);
    t289 = (~(t288));
    t290 = *((unsigned int *)t283);
    t291 = (~(t290));
    t292 = (t285 & t287);
    t293 = (t289 & t291);
    t294 = (~(t292));
    t295 = (~(t293));
    t296 = *((unsigned int *)t274);
    *((unsigned int *)t274) = (t296 & t294);
    t297 = *((unsigned int *)t274);
    *((unsigned int *)t274) = (t297 & t295);
    t298 = *((unsigned int *)t269);
    *((unsigned int *)t269) = (t298 & t294);
    t299 = *((unsigned int *)t269);
    *((unsigned int *)t269) = (t299 & t295);
    goto LAB91;

LAB94:    t323 = (t308 + 4);
    *((unsigned int *)t308) = 1;
    *((unsigned int *)t323) = 1;
    goto LAB95;

LAB96:    *((unsigned int *)t305) = 1;
    goto LAB99;

LAB98:    t330 = (t305 + 4);
    *((unsigned int *)t305) = 1;
    *((unsigned int *)t330) = 1;
    goto LAB99;

LAB100:    t335 = (t0 + 2008U);
    t336 = *((char **)t335);
    memcpy(t337, t336, 8);
    goto LAB101;

LAB102:    t335 = (t0 + 1528U);
    t344 = *((char **)t335);
    t335 = ((char*)((ng8)));
    memset(t345, 0, 8);
    t346 = (t344 + 4);
    t347 = (t335 + 4);
    t348 = *((unsigned int *)t344);
    t349 = *((unsigned int *)t335);
    t350 = (t348 ^ t349);
    t351 = *((unsigned int *)t346);
    t352 = *((unsigned int *)t347);
    t353 = (t351 ^ t352);
    t354 = (t350 | t353);
    t355 = *((unsigned int *)t346);
    t356 = *((unsigned int *)t347);
    t357 = (t355 | t356);
    t358 = (~(t357));
    t359 = (t354 & t358);
    if (t359 != 0)
        goto LAB112;

LAB109:    if (t357 != 0)
        goto LAB111;

LAB110:    *((unsigned int *)t345) = 1;

LAB112:    memset(t343, 0, 8);
    t361 = (t345 + 4);
    t362 = *((unsigned int *)t361);
    t363 = (~(t362));
    t364 = *((unsigned int *)t345);
    t365 = (t364 & t363);
    t366 = (t365 & 1U);
    if (t366 != 0)
        goto LAB113;

LAB114:    if (*((unsigned int *)t361) != 0)
        goto LAB115;

LAB116:    t368 = (t343 + 4);
    t369 = *((unsigned int *)t343);
    t370 = *((unsigned int *)t368);
    t371 = (t369 || t370);
    if (t371 > 0)
        goto LAB117;

LAB118:    t375 = *((unsigned int *)t343);
    t376 = (~(t375));
    t377 = *((unsigned int *)t368);
    t378 = (t376 || t377);
    if (t378 > 0)
        goto LAB119;

LAB120:    if (*((unsigned int *)t368) > 0)
        goto LAB121;

LAB122:    if (*((unsigned int *)t343) > 0)
        goto LAB123;

LAB124:    memcpy(t342, t379, 8);

LAB125:    goto LAB103;

LAB104:    xsi_vlog_unsigned_bit_combine(t304, 32, t337, 32, t342, 32);
    goto LAB108;

LAB106:    memcpy(t304, t337, 8);
    goto LAB108;

LAB111:    t360 = (t345 + 4);
    *((unsigned int *)t345) = 1;
    *((unsigned int *)t360) = 1;
    goto LAB112;

LAB113:    *((unsigned int *)t343) = 1;
    goto LAB116;

LAB115:    t367 = (t343 + 4);
    *((unsigned int *)t343) = 1;
    *((unsigned int *)t367) = 1;
    goto LAB116;

LAB117:    t372 = (t0 + 1688U);
    t373 = *((char **)t372);
    memcpy(t374, t373, 8);
    goto LAB118;

LAB119:    t372 = (t0 + 1528U);
    t381 = *((char **)t372);
    t372 = ((char*)((ng9)));
    memset(t382, 0, 8);
    t383 = (t381 + 4);
    t384 = (t372 + 4);
    t385 = *((unsigned int *)t381);
    t386 = *((unsigned int *)t372);
    t387 = (t385 ^ t386);
    t388 = *((unsigned int *)t383);
    t389 = *((unsigned int *)t384);
    t390 = (t388 ^ t389);
    t391 = (t387 | t390);
    t392 = *((unsigned int *)t383);
    t393 = *((unsigned int *)t384);
    t394 = (t392 | t393);
    t395 = (~(t394));
    t396 = (t391 & t395);
    if (t396 != 0)
        goto LAB129;

LAB126:    if (t394 != 0)
        goto LAB128;

LAB127:    *((unsigned int *)t382) = 1;

LAB129:    memset(t380, 0, 8);
    t398 = (t382 + 4);
    t399 = *((unsigned int *)t398);
    t400 = (~(t399));
    t401 = *((unsigned int *)t382);
    t402 = (t401 & t400);
    t403 = (t402 & 1U);
    if (t403 != 0)
        goto LAB130;

LAB131:    if (*((unsigned int *)t398) != 0)
        goto LAB132;

LAB133:    t405 = (t380 + 4);
    t406 = *((unsigned int *)t380);
    t407 = *((unsigned int *)t405);
    t408 = (t406 || t407);
    if (t408 > 0)
        goto LAB134;

LAB135:    t421 = *((unsigned int *)t380);
    t422 = (~(t421));
    t423 = *((unsigned int *)t405);
    t424 = (t422 || t423);
    if (t424 > 0)
        goto LAB136;

LAB137:    if (*((unsigned int *)t405) > 0)
        goto LAB138;

LAB139:    if (*((unsigned int *)t380) > 0)
        goto LAB140;

LAB141:    memcpy(t379, t425, 8);

LAB142:    goto LAB120;

LAB121:    xsi_vlog_unsigned_bit_combine(t342, 32, t374, 32, t379, 32);
    goto LAB125;

LAB123:    memcpy(t342, t374, 8);
    goto LAB125;

LAB128:    t397 = (t382 + 4);
    *((unsigned int *)t382) = 1;
    *((unsigned int *)t397) = 1;
    goto LAB129;

LAB130:    *((unsigned int *)t380) = 1;
    goto LAB133;

LAB132:    t404 = (t380 + 4);
    *((unsigned int *)t380) = 1;
    *((unsigned int *)t404) = 1;
    goto LAB133;

LAB134:    t410 = ((char*)((ng2)));
    t412 = (t0 + 1208U);
    t413 = *((char **)t412);
    memset(t411, 0, 8);
    t412 = (t411 + 4);
    t414 = (t413 + 4);
    t415 = *((unsigned int *)t413);
    t416 = (t415 >> 0);
    *((unsigned int *)t411) = t416;
    t417 = *((unsigned int *)t414);
    t418 = (t417 >> 0);
    *((unsigned int *)t412) = t418;
    t419 = *((unsigned int *)t411);
    *((unsigned int *)t411) = (t419 & 65535U);
    t420 = *((unsigned int *)t412);
    *((unsigned int *)t412) = (t420 & 65535U);
    xsi_vlogtype_concat(t409, 32, 32, 2U, t411, 16, t410, 16);
    goto LAB135;

LAB136:    t425 = ((char*)((ng2)));
    goto LAB137;

LAB138:    xsi_vlog_unsigned_bit_combine(t379, 32, t409, 32, t425, 32);
    goto LAB142;

LAB140:    memcpy(t379, t409, 8);
    goto LAB142;

}


extern void work_m_00000000004155607985_2725559894_init()
{
	static char *pe[] = {(void *)NetDecl_28_0,(void *)NetDecl_29_1,(void *)NetDecl_30_2,(void *)Cont_31_3};
	xsi_register_didat("work_m_00000000004155607985_2725559894", "isim/mips_isim_beh.exe.sim/work/m_00000000004155607985_2725559894.didat");
	xsi_register_executes(pe);
}
