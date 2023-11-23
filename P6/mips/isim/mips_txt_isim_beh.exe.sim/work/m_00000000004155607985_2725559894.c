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
static unsigned int ng3[] = {7U, 0U};
static unsigned int ng4[] = {9U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {8U, 0U};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {5U, 0U};
static unsigned int ng10[] = {6U, 0U};



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
    char t24[8];
    char t40[8];
    char t82[8];
    char t87[8];
    char t88[8];
    char t90[8];
    char t120[8];
    char t125[8];
    char t126[8];
    char t128[8];
    char t146[8];
    char t162[8];
    char t204[8];
    char t235[8];
    char t236[8];
    char t239[8];
    char t257[8];
    char t273[8];
    char t315[8];
    char t350[8];
    char t351[8];
    char t354[8];
    char t383[8];
    char t388[8];
    char t389[8];
    char t391[8];
    char t420[8];
    char t425[8];
    char t426[8];
    char t428[8];
    char t455[8];
    char t457[8];
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
    char *t23;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    char *t80;
    char *t81;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t89;
    char *t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
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
    char *t112;
    char *t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    char *t118;
    char *t119;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    char *t127;
    char *t129;
    char *t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    char *t143;
    char *t144;
    char *t145;
    char *t147;
    char *t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    char *t161;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    char *t166;
    char *t167;
    char *t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    char *t176;
    char *t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    int t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    char *t190;
    unsigned int t191;
    unsigned int t192;
    unsigned int t193;
    unsigned int t194;
    unsigned int t195;
    char *t196;
    char *t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    char *t201;
    char *t202;
    char *t203;
    unsigned int t205;
    unsigned int t206;
    unsigned int t207;
    char *t208;
    char *t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    unsigned int t215;
    unsigned int t216;
    char *t217;
    char *t218;
    unsigned int t219;
    unsigned int t220;
    unsigned int t221;
    int t222;
    unsigned int t223;
    unsigned int t224;
    unsigned int t225;
    int t226;
    unsigned int t227;
    unsigned int t228;
    unsigned int t229;
    unsigned int t230;
    unsigned int t231;
    unsigned int t232;
    unsigned int t233;
    unsigned int t234;
    char *t237;
    char *t238;
    char *t240;
    char *t241;
    unsigned int t242;
    unsigned int t243;
    unsigned int t244;
    unsigned int t245;
    unsigned int t246;
    unsigned int t247;
    unsigned int t248;
    unsigned int t249;
    unsigned int t250;
    unsigned int t251;
    unsigned int t252;
    unsigned int t253;
    char *t254;
    char *t255;
    char *t256;
    char *t258;
    char *t259;
    unsigned int t260;
    unsigned int t261;
    unsigned int t262;
    unsigned int t263;
    unsigned int t264;
    unsigned int t265;
    unsigned int t266;
    unsigned int t267;
    unsigned int t268;
    unsigned int t269;
    unsigned int t270;
    unsigned int t271;
    char *t272;
    unsigned int t274;
    unsigned int t275;
    unsigned int t276;
    char *t277;
    char *t278;
    char *t279;
    unsigned int t280;
    unsigned int t281;
    unsigned int t282;
    unsigned int t283;
    unsigned int t284;
    unsigned int t285;
    unsigned int t286;
    char *t287;
    char *t288;
    unsigned int t289;
    unsigned int t290;
    unsigned int t291;
    int t292;
    unsigned int t293;
    unsigned int t294;
    unsigned int t295;
    int t296;
    unsigned int t297;
    unsigned int t298;
    unsigned int t299;
    unsigned int t300;
    char *t301;
    unsigned int t302;
    unsigned int t303;
    unsigned int t304;
    unsigned int t305;
    unsigned int t306;
    char *t307;
    char *t308;
    unsigned int t309;
    unsigned int t310;
    unsigned int t311;
    char *t312;
    char *t313;
    char *t314;
    unsigned int t316;
    unsigned int t317;
    unsigned int t318;
    char *t319;
    char *t320;
    unsigned int t321;
    unsigned int t322;
    unsigned int t323;
    unsigned int t324;
    unsigned int t325;
    unsigned int t326;
    unsigned int t327;
    char *t328;
    char *t329;
    unsigned int t330;
    unsigned int t331;
    unsigned int t332;
    unsigned int t333;
    unsigned int t334;
    unsigned int t335;
    unsigned int t336;
    unsigned int t337;
    int t338;
    int t339;
    unsigned int t340;
    unsigned int t341;
    unsigned int t342;
    unsigned int t343;
    unsigned int t344;
    unsigned int t345;
    unsigned int t346;
    unsigned int t347;
    unsigned int t348;
    unsigned int t349;
    char *t352;
    char *t353;
    char *t355;
    char *t356;
    unsigned int t357;
    unsigned int t358;
    unsigned int t359;
    unsigned int t360;
    unsigned int t361;
    unsigned int t362;
    unsigned int t363;
    unsigned int t364;
    unsigned int t365;
    unsigned int t366;
    unsigned int t367;
    unsigned int t368;
    char *t369;
    char *t370;
    unsigned int t371;
    unsigned int t372;
    unsigned int t373;
    unsigned int t374;
    unsigned int t375;
    char *t376;
    char *t377;
    unsigned int t378;
    unsigned int t379;
    unsigned int t380;
    char *t381;
    char *t382;
    unsigned int t384;
    unsigned int t385;
    unsigned int t386;
    unsigned int t387;
    char *t390;
    char *t392;
    char *t393;
    unsigned int t394;
    unsigned int t395;
    unsigned int t396;
    unsigned int t397;
    unsigned int t398;
    unsigned int t399;
    unsigned int t400;
    unsigned int t401;
    unsigned int t402;
    unsigned int t403;
    unsigned int t404;
    unsigned int t405;
    char *t406;
    char *t407;
    unsigned int t408;
    unsigned int t409;
    unsigned int t410;
    unsigned int t411;
    unsigned int t412;
    char *t413;
    char *t414;
    unsigned int t415;
    unsigned int t416;
    unsigned int t417;
    char *t418;
    char *t419;
    unsigned int t421;
    unsigned int t422;
    unsigned int t423;
    unsigned int t424;
    char *t427;
    char *t429;
    char *t430;
    unsigned int t431;
    unsigned int t432;
    unsigned int t433;
    unsigned int t434;
    unsigned int t435;
    unsigned int t436;
    unsigned int t437;
    unsigned int t438;
    unsigned int t439;
    unsigned int t440;
    unsigned int t441;
    unsigned int t442;
    char *t443;
    char *t444;
    unsigned int t445;
    unsigned int t446;
    unsigned int t447;
    unsigned int t448;
    unsigned int t449;
    char *t450;
    char *t451;
    unsigned int t452;
    unsigned int t453;
    unsigned int t454;
    char *t456;
    char *t458;
    char *t459;
    char *t460;
    unsigned int t461;
    unsigned int t462;
    unsigned int t463;
    unsigned int t464;
    unsigned int t465;
    unsigned int t466;
    unsigned int t467;
    unsigned int t468;
    unsigned int t469;
    unsigned int t470;
    char *t471;
    char *t472;
    char *t473;
    char *t474;
    char *t475;
    char *t476;
    char *t477;

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

LAB7:    t22 = (t0 + 1528U);
    t23 = *((char **)t22);
    t22 = ((char*)((ng3)));
    memset(t24, 0, 8);
    t25 = (t23 + 4);
    t26 = (t22 + 4);
    t27 = *((unsigned int *)t23);
    t28 = *((unsigned int *)t22);
    t29 = (t27 ^ t28);
    t30 = *((unsigned int *)t25);
    t31 = *((unsigned int *)t26);
    t32 = (t30 ^ t31);
    t33 = (t29 | t32);
    t34 = *((unsigned int *)t25);
    t35 = *((unsigned int *)t26);
    t36 = (t34 | t35);
    t37 = (~(t36));
    t38 = (t33 & t37);
    if (t38 != 0)
        goto LAB11;

LAB8:    if (t36 != 0)
        goto LAB10;

LAB9:    *((unsigned int *)t24) = 1;

LAB11:    t41 = *((unsigned int *)t6);
    t42 = *((unsigned int *)t24);
    t43 = (t41 | t42);
    *((unsigned int *)t40) = t43;
    t44 = (t6 + 4);
    t45 = (t24 + 4);
    t46 = (t40 + 4);
    t47 = *((unsigned int *)t44);
    t48 = *((unsigned int *)t45);
    t49 = (t47 | t48);
    *((unsigned int *)t46) = t49;
    t50 = *((unsigned int *)t46);
    t51 = (t50 != 0);
    if (t51 == 1)
        goto LAB12;

LAB13:
LAB14:    memset(t4, 0, 8);
    t68 = (t40 + 4);
    t69 = *((unsigned int *)t68);
    t70 = (~(t69));
    t71 = *((unsigned int *)t40);
    t72 = (t71 & t70);
    t73 = (t72 & 1U);
    if (t73 != 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t68) != 0)
        goto LAB17;

LAB18:    t75 = (t4 + 4);
    t76 = *((unsigned int *)t4);
    t77 = *((unsigned int *)t75);
    t78 = (t76 || t77);
    if (t78 > 0)
        goto LAB19;

LAB20:    t83 = *((unsigned int *)t4);
    t84 = (~(t83));
    t85 = *((unsigned int *)t75);
    t86 = (t84 || t85);
    if (t86 > 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t75) > 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t4) > 0)
        goto LAB25;

LAB26:    memcpy(t3, t87, 8);

LAB27:    t472 = (t0 + 4552);
    t473 = (t472 + 56U);
    t474 = *((char **)t473);
    t475 = (t474 + 56U);
    t476 = *((char **)t475);
    memcpy(t476, t3, 8);
    xsi_driver_vfirst_trans(t472, 0, 31);
    t477 = (t0 + 4280);
    *((int *)t477) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB10:    t39 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB11;

LAB12:    t52 = *((unsigned int *)t40);
    t53 = *((unsigned int *)t46);
    *((unsigned int *)t40) = (t52 | t53);
    t54 = (t6 + 4);
    t55 = (t24 + 4);
    t56 = *((unsigned int *)t54);
    t57 = (~(t56));
    t58 = *((unsigned int *)t6);
    t59 = (t58 & t57);
    t60 = *((unsigned int *)t55);
    t61 = (~(t60));
    t62 = *((unsigned int *)t24);
    t63 = (t62 & t61);
    t64 = (~(t59));
    t65 = (~(t63));
    t66 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t66 & t64);
    t67 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t67 & t65);
    goto LAB14;

LAB15:    *((unsigned int *)t4) = 1;
    goto LAB18;

LAB17:    t74 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t74) = 1;
    goto LAB18;

LAB19:    t79 = (t0 + 1048U);
    t80 = *((char **)t79);
    t79 = (t0 + 1208U);
    t81 = *((char **)t79);
    memset(t82, 0, 8);
    xsi_vlog_unsigned_add(t82, 32, t80, 32, t81, 32);
    goto LAB20;

LAB21:    t79 = (t0 + 1528U);
    t89 = *((char **)t79);
    t79 = ((char*)((ng1)));
    memset(t90, 0, 8);
    t91 = (t89 + 4);
    t92 = (t79 + 4);
    t93 = *((unsigned int *)t89);
    t94 = *((unsigned int *)t79);
    t95 = (t93 ^ t94);
    t96 = *((unsigned int *)t91);
    t97 = *((unsigned int *)t92);
    t98 = (t96 ^ t97);
    t99 = (t95 | t98);
    t100 = *((unsigned int *)t91);
    t101 = *((unsigned int *)t92);
    t102 = (t100 | t101);
    t103 = (~(t102));
    t104 = (t99 & t103);
    if (t104 != 0)
        goto LAB31;

LAB28:    if (t102 != 0)
        goto LAB30;

LAB29:    *((unsigned int *)t90) = 1;

LAB31:    memset(t88, 0, 8);
    t106 = (t90 + 4);
    t107 = *((unsigned int *)t106);
    t108 = (~(t107));
    t109 = *((unsigned int *)t90);
    t110 = (t109 & t108);
    t111 = (t110 & 1U);
    if (t111 != 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t106) != 0)
        goto LAB34;

LAB35:    t113 = (t88 + 4);
    t114 = *((unsigned int *)t88);
    t115 = *((unsigned int *)t113);
    t116 = (t114 || t115);
    if (t116 > 0)
        goto LAB36;

LAB37:    t121 = *((unsigned int *)t88);
    t122 = (~(t121));
    t123 = *((unsigned int *)t113);
    t124 = (t122 || t123);
    if (t124 > 0)
        goto LAB38;

LAB39:    if (*((unsigned int *)t113) > 0)
        goto LAB40;

LAB41:    if (*((unsigned int *)t88) > 0)
        goto LAB42;

LAB43:    memcpy(t87, t125, 8);

LAB44:    goto LAB22;

LAB23:    xsi_vlog_unsigned_bit_combine(t3, 32, t82, 32, t87, 32);
    goto LAB27;

LAB25:    memcpy(t3, t82, 8);
    goto LAB27;

LAB30:    t105 = (t90 + 4);
    *((unsigned int *)t90) = 1;
    *((unsigned int *)t105) = 1;
    goto LAB31;

LAB32:    *((unsigned int *)t88) = 1;
    goto LAB35;

LAB34:    t112 = (t88 + 4);
    *((unsigned int *)t88) = 1;
    *((unsigned int *)t112) = 1;
    goto LAB35;

LAB36:    t117 = (t0 + 1048U);
    t118 = *((char **)t117);
    t117 = (t0 + 1208U);
    t119 = *((char **)t117);
    memset(t120, 0, 8);
    xsi_vlog_unsigned_minus(t120, 32, t118, 32, t119, 32);
    goto LAB37;

LAB38:    t117 = (t0 + 1528U);
    t127 = *((char **)t117);
    t117 = ((char*)((ng4)));
    memset(t128, 0, 8);
    t129 = (t127 + 4);
    t130 = (t117 + 4);
    t131 = *((unsigned int *)t127);
    t132 = *((unsigned int *)t117);
    t133 = (t131 ^ t132);
    t134 = *((unsigned int *)t129);
    t135 = *((unsigned int *)t130);
    t136 = (t134 ^ t135);
    t137 = (t133 | t136);
    t138 = *((unsigned int *)t129);
    t139 = *((unsigned int *)t130);
    t140 = (t138 | t139);
    t141 = (~(t140));
    t142 = (t137 & t141);
    if (t142 != 0)
        goto LAB48;

LAB45:    if (t140 != 0)
        goto LAB47;

LAB46:    *((unsigned int *)t128) = 1;

LAB48:    t144 = (t0 + 1528U);
    t145 = *((char **)t144);
    t144 = ((char*)((ng5)));
    memset(t146, 0, 8);
    t147 = (t145 + 4);
    t148 = (t144 + 4);
    t149 = *((unsigned int *)t145);
    t150 = *((unsigned int *)t144);
    t151 = (t149 ^ t150);
    t152 = *((unsigned int *)t147);
    t153 = *((unsigned int *)t148);
    t154 = (t152 ^ t153);
    t155 = (t151 | t154);
    t156 = *((unsigned int *)t147);
    t157 = *((unsigned int *)t148);
    t158 = (t156 | t157);
    t159 = (~(t158));
    t160 = (t155 & t159);
    if (t160 != 0)
        goto LAB52;

LAB49:    if (t158 != 0)
        goto LAB51;

LAB50:    *((unsigned int *)t146) = 1;

LAB52:    t163 = *((unsigned int *)t128);
    t164 = *((unsigned int *)t146);
    t165 = (t163 | t164);
    *((unsigned int *)t162) = t165;
    t166 = (t128 + 4);
    t167 = (t146 + 4);
    t168 = (t162 + 4);
    t169 = *((unsigned int *)t166);
    t170 = *((unsigned int *)t167);
    t171 = (t169 | t170);
    *((unsigned int *)t168) = t171;
    t172 = *((unsigned int *)t168);
    t173 = (t172 != 0);
    if (t173 == 1)
        goto LAB53;

LAB54:
LAB55:    memset(t126, 0, 8);
    t190 = (t162 + 4);
    t191 = *((unsigned int *)t190);
    t192 = (~(t191));
    t193 = *((unsigned int *)t162);
    t194 = (t193 & t192);
    t195 = (t194 & 1U);
    if (t195 != 0)
        goto LAB56;

LAB57:    if (*((unsigned int *)t190) != 0)
        goto LAB58;

LAB59:    t197 = (t126 + 4);
    t198 = *((unsigned int *)t126);
    t199 = *((unsigned int *)t197);
    t200 = (t198 || t199);
    if (t200 > 0)
        goto LAB60;

LAB61:    t231 = *((unsigned int *)t126);
    t232 = (~(t231));
    t233 = *((unsigned int *)t197);
    t234 = (t232 || t233);
    if (t234 > 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t197) > 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t126) > 0)
        goto LAB66;

LAB67:    memcpy(t125, t235, 8);

LAB68:    goto LAB39;

LAB40:    xsi_vlog_unsigned_bit_combine(t87, 32, t120, 32, t125, 32);
    goto LAB44;

LAB42:    memcpy(t87, t120, 8);
    goto LAB44;

LAB47:    t143 = (t128 + 4);
    *((unsigned int *)t128) = 1;
    *((unsigned int *)t143) = 1;
    goto LAB48;

LAB51:    t161 = (t146 + 4);
    *((unsigned int *)t146) = 1;
    *((unsigned int *)t161) = 1;
    goto LAB52;

LAB53:    t174 = *((unsigned int *)t162);
    t175 = *((unsigned int *)t168);
    *((unsigned int *)t162) = (t174 | t175);
    t176 = (t128 + 4);
    t177 = (t146 + 4);
    t178 = *((unsigned int *)t176);
    t179 = (~(t178));
    t180 = *((unsigned int *)t128);
    t181 = (t180 & t179);
    t182 = *((unsigned int *)t177);
    t183 = (~(t182));
    t184 = *((unsigned int *)t146);
    t185 = (t184 & t183);
    t186 = (~(t181));
    t187 = (~(t185));
    t188 = *((unsigned int *)t168);
    *((unsigned int *)t168) = (t188 & t186);
    t189 = *((unsigned int *)t168);
    *((unsigned int *)t168) = (t189 & t187);
    goto LAB55;

LAB56:    *((unsigned int *)t126) = 1;
    goto LAB59;

LAB58:    t196 = (t126 + 4);
    *((unsigned int *)t126) = 1;
    *((unsigned int *)t196) = 1;
    goto LAB59;

LAB60:    t201 = (t0 + 1048U);
    t202 = *((char **)t201);
    t201 = (t0 + 1208U);
    t203 = *((char **)t201);
    t205 = *((unsigned int *)t202);
    t206 = *((unsigned int *)t203);
    t207 = (t205 | t206);
    *((unsigned int *)t204) = t207;
    t201 = (t202 + 4);
    t208 = (t203 + 4);
    t209 = (t204 + 4);
    t210 = *((unsigned int *)t201);
    t211 = *((unsigned int *)t208);
    t212 = (t210 | t211);
    *((unsigned int *)t209) = t212;
    t213 = *((unsigned int *)t209);
    t214 = (t213 != 0);
    if (t214 == 1)
        goto LAB69;

LAB70:
LAB71:    goto LAB61;

LAB62:    t237 = (t0 + 1528U);
    t238 = *((char **)t237);
    t237 = ((char*)((ng6)));
    memset(t239, 0, 8);
    t240 = (t238 + 4);
    t241 = (t237 + 4);
    t242 = *((unsigned int *)t238);
    t243 = *((unsigned int *)t237);
    t244 = (t242 ^ t243);
    t245 = *((unsigned int *)t240);
    t246 = *((unsigned int *)t241);
    t247 = (t245 ^ t246);
    t248 = (t244 | t247);
    t249 = *((unsigned int *)t240);
    t250 = *((unsigned int *)t241);
    t251 = (t249 | t250);
    t252 = (~(t251));
    t253 = (t248 & t252);
    if (t253 != 0)
        goto LAB75;

LAB72:    if (t251 != 0)
        goto LAB74;

LAB73:    *((unsigned int *)t239) = 1;

LAB75:    t255 = (t0 + 1528U);
    t256 = *((char **)t255);
    t255 = ((char*)((ng7)));
    memset(t257, 0, 8);
    t258 = (t256 + 4);
    t259 = (t255 + 4);
    t260 = *((unsigned int *)t256);
    t261 = *((unsigned int *)t255);
    t262 = (t260 ^ t261);
    t263 = *((unsigned int *)t258);
    t264 = *((unsigned int *)t259);
    t265 = (t263 ^ t264);
    t266 = (t262 | t265);
    t267 = *((unsigned int *)t258);
    t268 = *((unsigned int *)t259);
    t269 = (t267 | t268);
    t270 = (~(t269));
    t271 = (t266 & t270);
    if (t271 != 0)
        goto LAB79;

LAB76:    if (t269 != 0)
        goto LAB78;

LAB77:    *((unsigned int *)t257) = 1;

LAB79:    t274 = *((unsigned int *)t239);
    t275 = *((unsigned int *)t257);
    t276 = (t274 | t275);
    *((unsigned int *)t273) = t276;
    t277 = (t239 + 4);
    t278 = (t257 + 4);
    t279 = (t273 + 4);
    t280 = *((unsigned int *)t277);
    t281 = *((unsigned int *)t278);
    t282 = (t280 | t281);
    *((unsigned int *)t279) = t282;
    t283 = *((unsigned int *)t279);
    t284 = (t283 != 0);
    if (t284 == 1)
        goto LAB80;

LAB81:
LAB82:    memset(t236, 0, 8);
    t301 = (t273 + 4);
    t302 = *((unsigned int *)t301);
    t303 = (~(t302));
    t304 = *((unsigned int *)t273);
    t305 = (t304 & t303);
    t306 = (t305 & 1U);
    if (t306 != 0)
        goto LAB83;

LAB84:    if (*((unsigned int *)t301) != 0)
        goto LAB85;

LAB86:    t308 = (t236 + 4);
    t309 = *((unsigned int *)t236);
    t310 = *((unsigned int *)t308);
    t311 = (t309 || t310);
    if (t311 > 0)
        goto LAB87;

LAB88:    t346 = *((unsigned int *)t236);
    t347 = (~(t346));
    t348 = *((unsigned int *)t308);
    t349 = (t347 || t348);
    if (t349 > 0)
        goto LAB89;

LAB90:    if (*((unsigned int *)t308) > 0)
        goto LAB91;

LAB92:    if (*((unsigned int *)t236) > 0)
        goto LAB93;

LAB94:    memcpy(t235, t350, 8);

LAB95:    goto LAB63;

LAB64:    xsi_vlog_unsigned_bit_combine(t125, 32, t204, 32, t235, 32);
    goto LAB68;

LAB66:    memcpy(t125, t204, 8);
    goto LAB68;

LAB69:    t215 = *((unsigned int *)t204);
    t216 = *((unsigned int *)t209);
    *((unsigned int *)t204) = (t215 | t216);
    t217 = (t202 + 4);
    t218 = (t203 + 4);
    t219 = *((unsigned int *)t217);
    t220 = (~(t219));
    t221 = *((unsigned int *)t202);
    t222 = (t221 & t220);
    t223 = *((unsigned int *)t218);
    t224 = (~(t223));
    t225 = *((unsigned int *)t203);
    t226 = (t225 & t224);
    t227 = (~(t222));
    t228 = (~(t226));
    t229 = *((unsigned int *)t209);
    *((unsigned int *)t209) = (t229 & t227);
    t230 = *((unsigned int *)t209);
    *((unsigned int *)t209) = (t230 & t228);
    goto LAB71;

LAB74:    t254 = (t239 + 4);
    *((unsigned int *)t239) = 1;
    *((unsigned int *)t254) = 1;
    goto LAB75;

LAB78:    t272 = (t257 + 4);
    *((unsigned int *)t257) = 1;
    *((unsigned int *)t272) = 1;
    goto LAB79;

LAB80:    t285 = *((unsigned int *)t273);
    t286 = *((unsigned int *)t279);
    *((unsigned int *)t273) = (t285 | t286);
    t287 = (t239 + 4);
    t288 = (t257 + 4);
    t289 = *((unsigned int *)t287);
    t290 = (~(t289));
    t291 = *((unsigned int *)t239);
    t292 = (t291 & t290);
    t293 = *((unsigned int *)t288);
    t294 = (~(t293));
    t295 = *((unsigned int *)t257);
    t296 = (t295 & t294);
    t297 = (~(t292));
    t298 = (~(t296));
    t299 = *((unsigned int *)t279);
    *((unsigned int *)t279) = (t299 & t297);
    t300 = *((unsigned int *)t279);
    *((unsigned int *)t279) = (t300 & t298);
    goto LAB82;

LAB83:    *((unsigned int *)t236) = 1;
    goto LAB86;

LAB85:    t307 = (t236 + 4);
    *((unsigned int *)t236) = 1;
    *((unsigned int *)t307) = 1;
    goto LAB86;

LAB87:    t312 = (t0 + 1048U);
    t313 = *((char **)t312);
    t312 = (t0 + 1208U);
    t314 = *((char **)t312);
    t316 = *((unsigned int *)t313);
    t317 = *((unsigned int *)t314);
    t318 = (t316 & t317);
    *((unsigned int *)t315) = t318;
    t312 = (t313 + 4);
    t319 = (t314 + 4);
    t320 = (t315 + 4);
    t321 = *((unsigned int *)t312);
    t322 = *((unsigned int *)t319);
    t323 = (t321 | t322);
    *((unsigned int *)t320) = t323;
    t324 = *((unsigned int *)t320);
    t325 = (t324 != 0);
    if (t325 == 1)
        goto LAB96;

LAB97:
LAB98:    goto LAB88;

LAB89:    t352 = (t0 + 1528U);
    t353 = *((char **)t352);
    t352 = ((char*)((ng8)));
    memset(t354, 0, 8);
    t355 = (t353 + 4);
    t356 = (t352 + 4);
    t357 = *((unsigned int *)t353);
    t358 = *((unsigned int *)t352);
    t359 = (t357 ^ t358);
    t360 = *((unsigned int *)t355);
    t361 = *((unsigned int *)t356);
    t362 = (t360 ^ t361);
    t363 = (t359 | t362);
    t364 = *((unsigned int *)t355);
    t365 = *((unsigned int *)t356);
    t366 = (t364 | t365);
    t367 = (~(t366));
    t368 = (t363 & t367);
    if (t368 != 0)
        goto LAB102;

LAB99:    if (t366 != 0)
        goto LAB101;

LAB100:    *((unsigned int *)t354) = 1;

LAB102:    memset(t351, 0, 8);
    t370 = (t354 + 4);
    t371 = *((unsigned int *)t370);
    t372 = (~(t371));
    t373 = *((unsigned int *)t354);
    t374 = (t373 & t372);
    t375 = (t374 & 1U);
    if (t375 != 0)
        goto LAB103;

LAB104:    if (*((unsigned int *)t370) != 0)
        goto LAB105;

LAB106:    t377 = (t351 + 4);
    t378 = *((unsigned int *)t351);
    t379 = *((unsigned int *)t377);
    t380 = (t378 || t379);
    if (t380 > 0)
        goto LAB107;

LAB108:    t384 = *((unsigned int *)t351);
    t385 = (~(t384));
    t386 = *((unsigned int *)t377);
    t387 = (t385 || t386);
    if (t387 > 0)
        goto LAB109;

LAB110:    if (*((unsigned int *)t377) > 0)
        goto LAB111;

LAB112:    if (*((unsigned int *)t351) > 0)
        goto LAB113;

LAB114:    memcpy(t350, t388, 8);

LAB115:    goto LAB90;

LAB91:    xsi_vlog_unsigned_bit_combine(t235, 32, t315, 32, t350, 32);
    goto LAB95;

LAB93:    memcpy(t235, t315, 8);
    goto LAB95;

LAB96:    t326 = *((unsigned int *)t315);
    t327 = *((unsigned int *)t320);
    *((unsigned int *)t315) = (t326 | t327);
    t328 = (t313 + 4);
    t329 = (t314 + 4);
    t330 = *((unsigned int *)t313);
    t331 = (~(t330));
    t332 = *((unsigned int *)t328);
    t333 = (~(t332));
    t334 = *((unsigned int *)t314);
    t335 = (~(t334));
    t336 = *((unsigned int *)t329);
    t337 = (~(t336));
    t338 = (t331 & t333);
    t339 = (t335 & t337);
    t340 = (~(t338));
    t341 = (~(t339));
    t342 = *((unsigned int *)t320);
    *((unsigned int *)t320) = (t342 & t340);
    t343 = *((unsigned int *)t320);
    *((unsigned int *)t320) = (t343 & t341);
    t344 = *((unsigned int *)t315);
    *((unsigned int *)t315) = (t344 & t340);
    t345 = *((unsigned int *)t315);
    *((unsigned int *)t315) = (t345 & t341);
    goto LAB98;

LAB101:    t369 = (t354 + 4);
    *((unsigned int *)t354) = 1;
    *((unsigned int *)t369) = 1;
    goto LAB102;

LAB103:    *((unsigned int *)t351) = 1;
    goto LAB106;

LAB105:    t376 = (t351 + 4);
    *((unsigned int *)t351) = 1;
    *((unsigned int *)t376) = 1;
    goto LAB106;

LAB107:    t381 = (t0 + 2008U);
    t382 = *((char **)t381);
    memcpy(t383, t382, 8);
    goto LAB108;

LAB109:    t381 = (t0 + 1528U);
    t390 = *((char **)t381);
    t381 = ((char*)((ng9)));
    memset(t391, 0, 8);
    t392 = (t390 + 4);
    t393 = (t381 + 4);
    t394 = *((unsigned int *)t390);
    t395 = *((unsigned int *)t381);
    t396 = (t394 ^ t395);
    t397 = *((unsigned int *)t392);
    t398 = *((unsigned int *)t393);
    t399 = (t397 ^ t398);
    t400 = (t396 | t399);
    t401 = *((unsigned int *)t392);
    t402 = *((unsigned int *)t393);
    t403 = (t401 | t402);
    t404 = (~(t403));
    t405 = (t400 & t404);
    if (t405 != 0)
        goto LAB119;

LAB116:    if (t403 != 0)
        goto LAB118;

LAB117:    *((unsigned int *)t391) = 1;

LAB119:    memset(t389, 0, 8);
    t407 = (t391 + 4);
    t408 = *((unsigned int *)t407);
    t409 = (~(t408));
    t410 = *((unsigned int *)t391);
    t411 = (t410 & t409);
    t412 = (t411 & 1U);
    if (t412 != 0)
        goto LAB120;

LAB121:    if (*((unsigned int *)t407) != 0)
        goto LAB122;

LAB123:    t414 = (t389 + 4);
    t415 = *((unsigned int *)t389);
    t416 = *((unsigned int *)t414);
    t417 = (t415 || t416);
    if (t417 > 0)
        goto LAB124;

LAB125:    t421 = *((unsigned int *)t389);
    t422 = (~(t421));
    t423 = *((unsigned int *)t414);
    t424 = (t422 || t423);
    if (t424 > 0)
        goto LAB126;

LAB127:    if (*((unsigned int *)t414) > 0)
        goto LAB128;

LAB129:    if (*((unsigned int *)t389) > 0)
        goto LAB130;

LAB131:    memcpy(t388, t425, 8);

LAB132:    goto LAB110;

LAB111:    xsi_vlog_unsigned_bit_combine(t350, 32, t383, 32, t388, 32);
    goto LAB115;

LAB113:    memcpy(t350, t383, 8);
    goto LAB115;

LAB118:    t406 = (t391 + 4);
    *((unsigned int *)t391) = 1;
    *((unsigned int *)t406) = 1;
    goto LAB119;

LAB120:    *((unsigned int *)t389) = 1;
    goto LAB123;

LAB122:    t413 = (t389 + 4);
    *((unsigned int *)t389) = 1;
    *((unsigned int *)t413) = 1;
    goto LAB123;

LAB124:    t418 = (t0 + 1688U);
    t419 = *((char **)t418);
    memcpy(t420, t419, 8);
    goto LAB125;

LAB126:    t418 = (t0 + 1528U);
    t427 = *((char **)t418);
    t418 = ((char*)((ng10)));
    memset(t428, 0, 8);
    t429 = (t427 + 4);
    t430 = (t418 + 4);
    t431 = *((unsigned int *)t427);
    t432 = *((unsigned int *)t418);
    t433 = (t431 ^ t432);
    t434 = *((unsigned int *)t429);
    t435 = *((unsigned int *)t430);
    t436 = (t434 ^ t435);
    t437 = (t433 | t436);
    t438 = *((unsigned int *)t429);
    t439 = *((unsigned int *)t430);
    t440 = (t438 | t439);
    t441 = (~(t440));
    t442 = (t437 & t441);
    if (t442 != 0)
        goto LAB136;

LAB133:    if (t440 != 0)
        goto LAB135;

LAB134:    *((unsigned int *)t428) = 1;

LAB136:    memset(t426, 0, 8);
    t444 = (t428 + 4);
    t445 = *((unsigned int *)t444);
    t446 = (~(t445));
    t447 = *((unsigned int *)t428);
    t448 = (t447 & t446);
    t449 = (t448 & 1U);
    if (t449 != 0)
        goto LAB137;

LAB138:    if (*((unsigned int *)t444) != 0)
        goto LAB139;

LAB140:    t451 = (t426 + 4);
    t452 = *((unsigned int *)t426);
    t453 = *((unsigned int *)t451);
    t454 = (t452 || t453);
    if (t454 > 0)
        goto LAB141;

LAB142:    t467 = *((unsigned int *)t426);
    t468 = (~(t467));
    t469 = *((unsigned int *)t451);
    t470 = (t468 || t469);
    if (t470 > 0)
        goto LAB143;

LAB144:    if (*((unsigned int *)t451) > 0)
        goto LAB145;

LAB146:    if (*((unsigned int *)t426) > 0)
        goto LAB147;

LAB148:    memcpy(t425, t471, 8);

LAB149:    goto LAB127;

LAB128:    xsi_vlog_unsigned_bit_combine(t388, 32, t420, 32, t425, 32);
    goto LAB132;

LAB130:    memcpy(t388, t420, 8);
    goto LAB132;

LAB135:    t443 = (t428 + 4);
    *((unsigned int *)t428) = 1;
    *((unsigned int *)t443) = 1;
    goto LAB136;

LAB137:    *((unsigned int *)t426) = 1;
    goto LAB140;

LAB139:    t450 = (t426 + 4);
    *((unsigned int *)t426) = 1;
    *((unsigned int *)t450) = 1;
    goto LAB140;

LAB141:    t456 = ((char*)((ng2)));
    t458 = (t0 + 1208U);
    t459 = *((char **)t458);
    memset(t457, 0, 8);
    t458 = (t457 + 4);
    t460 = (t459 + 4);
    t461 = *((unsigned int *)t459);
    t462 = (t461 >> 0);
    *((unsigned int *)t457) = t462;
    t463 = *((unsigned int *)t460);
    t464 = (t463 >> 0);
    *((unsigned int *)t458) = t464;
    t465 = *((unsigned int *)t457);
    *((unsigned int *)t457) = (t465 & 65535U);
    t466 = *((unsigned int *)t458);
    *((unsigned int *)t458) = (t466 & 65535U);
    xsi_vlogtype_concat(t455, 32, 32, 2U, t457, 16, t456, 16);
    goto LAB142;

LAB143:    t471 = ((char*)((ng2)));
    goto LAB144;

LAB145:    xsi_vlog_unsigned_bit_combine(t425, 32, t455, 32, t471, 32);
    goto LAB149;

LAB147:    memcpy(t425, t455, 8);
    goto LAB149;

}


extern void work_m_00000000004155607985_2725559894_init()
{
	static char *pe[] = {(void *)NetDecl_28_0,(void *)NetDecl_29_1,(void *)NetDecl_30_2,(void *)Cont_31_3};
	xsi_register_didat("work_m_00000000004155607985_2725559894", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000004155607985_2725559894.didat");
	xsi_register_executes(pe);
}
