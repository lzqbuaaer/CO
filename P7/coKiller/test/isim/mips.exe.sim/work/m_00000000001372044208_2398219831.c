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
static int ng0[] = {4, 0};
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {14, 0};
static unsigned int ng3[] = {16768U, 0U};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {3U, 0U};
static int ng7[] = {0, 0};



static void NetDecl_34_0(char *t0)
{
    char t4[8];
    char t5[8];
    char t7[8];
    char t17[8];
    char t21[8];
    char t29[8];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng0)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t3, 32, t2, 32);
    t6 = ((char*)((ng1)));
    t8 = (t0 + 1528U);
    t9 = *((char **)t8);
    memset(t7, 0, 8);
    t8 = (t7 + 4);
    t10 = (t9 + 4);
    t11 = *((unsigned int *)t9);
    t12 = (t11 >> 0);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t10);
    t14 = (t13 >> 0);
    *((unsigned int *)t8) = t14;
    t15 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t15 & 65535U);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 & 65535U);
    t18 = ((char*)((ng2)));
    t19 = (t0 + 1528U);
    t20 = *((char **)t19);
    memset(t21, 0, 8);
    t19 = (t21 + 4);
    t22 = (t20 + 4);
    t23 = *((unsigned int *)t20);
    t24 = (t23 >> 15);
    t25 = (t24 & 1);
    *((unsigned int *)t21) = t25;
    t26 = *((unsigned int *)t22);
    t27 = (t26 >> 15);
    t28 = (t27 & 1);
    *((unsigned int *)t19) = t28;
    xsi_vlog_mul_concat(t17, 14, 1, t18, 1U, t21, 1);
    xsi_vlogtype_concat(t5, 32, 32, 3U, t17, 14, t7, 16, t6, 2);
    memset(t29, 0, 8);
    xsi_vlog_unsigned_add(t29, 32, t4, 32, t5, 32);
    t30 = (t0 + 4736);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t29, 8);
    xsi_driver_vfirst_trans(t30, 0, 31U);
    t35 = (t0 + 4624);
    *((int *)t35) = 1;

LAB1:    return;
}

static void NetDecl_35_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t14[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 4056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t5 = (t0 + 1528U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 67108863U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 67108863U);
    t15 = (t0 + 1208U);
    t16 = *((char **)t15);
    memset(t14, 0, 8);
    t15 = (t14 + 4);
    t17 = (t16 + 4);
    t18 = *((unsigned int *)t16);
    t19 = (t18 >> 28);
    *((unsigned int *)t14) = t19;
    t20 = *((unsigned int *)t17);
    t21 = (t20 >> 28);
    *((unsigned int *)t15) = t21;
    t22 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t22 & 15U);
    t23 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t23 & 15U);
    xsi_vlogtype_concat(t3, 32, 32, 3U, t14, 4, t4, 26, t2, 2);
    t24 = (t0 + 4800);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t3, 8);
    xsi_driver_vfirst_trans(t24, 0, 31U);
    t29 = (t0 + 4640);
    *((int *)t29) = 1;

LAB1:    return;
}

static void Cont_37_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t21[8];
    char t22[8];
    char t37[8];
    char t42[8];
    char t43[8];
    char t46[8];
    char t75[8];
    char t80[8];
    char t81[8];
    char t84[8];
    char t117[8];
    char t118[8];
    char t120[8];
    char t153[8];
    char t154[8];
    char t156[8];
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
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t44;
    char *t45;
    char *t47;
    char *t48;
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
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    char *t74;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    char *t82;
    char *t83;
    char *t85;
    char *t86;
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
    unsigned int t97;
    unsigned int t98;
    char *t99;
    char *t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    char *t106;
    char *t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    char *t111;
    char *t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t119;
    char *t121;
    char *t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    char *t135;
    char *t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    char *t142;
    char *t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    char *t147;
    char *t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    char *t155;
    char *t157;
    char *t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
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
    unsigned int t176;
    unsigned int t177;
    char *t178;
    char *t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    char *t183;
    char *t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    char *t189;
    char *t190;
    char *t191;
    char *t192;
    char *t193;
    char *t194;

LAB0:    t1 = (t0 + 4304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2008U);
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

LAB16:    t189 = (t0 + 4864);
    t190 = (t189 + 56U);
    t191 = *((char **)t190);
    t192 = (t191 + 56U);
    t193 = *((char **)t192);
    memcpy(t193, t3, 8);
    xsi_driver_vfirst_trans(t189, 0, 31);
    t194 = (t0 + 4656);
    *((int *)t194) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = ((char*)((ng3)));
    goto LAB9;

LAB10:    t23 = (t0 + 2168U);
    t24 = *((char **)t23);
    memset(t22, 0, 8);
    t23 = (t24 + 4);
    t25 = *((unsigned int *)t23);
    t26 = (~(t25));
    t27 = *((unsigned int *)t24);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t23) != 0)
        goto LAB19;

LAB20:    t31 = (t22 + 4);
    t32 = *((unsigned int *)t22);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB21;

LAB22:    t38 = *((unsigned int *)t22);
    t39 = (~(t38));
    t40 = *((unsigned int *)t31);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t31) > 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t22) > 0)
        goto LAB27;

LAB28:    memcpy(t21, t42, 8);

LAB29:    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t16, 32, t21, 32);
    goto LAB16;

LAB14:    memcpy(t3, t16, 8);
    goto LAB16;

LAB17:    *((unsigned int *)t22) = 1;
    goto LAB20;

LAB19:    t30 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB20;

LAB21:    t35 = (t0 + 2328U);
    t36 = *((char **)t35);
    t35 = ((char*)((ng0)));
    memset(t37, 0, 8);
    xsi_vlog_unsigned_add(t37, 32, t36, 32, t35, 32);
    goto LAB22;

LAB23:    t44 = (t0 + 1368U);
    t45 = *((char **)t44);
    t44 = ((char*)((ng1)));
    memset(t46, 0, 8);
    t47 = (t45 + 4);
    t48 = (t44 + 4);
    t49 = *((unsigned int *)t45);
    t50 = *((unsigned int *)t44);
    t51 = (t49 ^ t50);
    t52 = *((unsigned int *)t47);
    t53 = *((unsigned int *)t48);
    t54 = (t52 ^ t53);
    t55 = (t51 | t54);
    t56 = *((unsigned int *)t47);
    t57 = *((unsigned int *)t48);
    t58 = (t56 | t57);
    t59 = (~(t58));
    t60 = (t55 & t59);
    if (t60 != 0)
        goto LAB33;

LAB30:    if (t58 != 0)
        goto LAB32;

LAB31:    *((unsigned int *)t46) = 1;

LAB33:    memset(t43, 0, 8);
    t62 = (t46 + 4);
    t63 = *((unsigned int *)t62);
    t64 = (~(t63));
    t65 = *((unsigned int *)t46);
    t66 = (t65 & t64);
    t67 = (t66 & 1U);
    if (t67 != 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t62) != 0)
        goto LAB36;

LAB37:    t69 = (t43 + 4);
    t70 = *((unsigned int *)t43);
    t71 = *((unsigned int *)t69);
    t72 = (t70 || t71);
    if (t72 > 0)
        goto LAB38;

LAB39:    t76 = *((unsigned int *)t43);
    t77 = (~(t76));
    t78 = *((unsigned int *)t69);
    t79 = (t77 || t78);
    if (t79 > 0)
        goto LAB40;

LAB41:    if (*((unsigned int *)t69) > 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t43) > 0)
        goto LAB44;

LAB45:    memcpy(t42, t80, 8);

LAB46:    goto LAB24;

LAB25:    xsi_vlog_unsigned_bit_combine(t21, 32, t37, 32, t42, 32);
    goto LAB29;

LAB27:    memcpy(t21, t37, 8);
    goto LAB29;

LAB32:    t61 = (t46 + 4);
    *((unsigned int *)t46) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB33;

LAB34:    *((unsigned int *)t43) = 1;
    goto LAB37;

LAB36:    t68 = (t43 + 4);
    *((unsigned int *)t43) = 1;
    *((unsigned int *)t68) = 1;
    goto LAB37;

LAB38:    t73 = (t0 + 1048U);
    t74 = *((char **)t73);
    t73 = ((char*)((ng0)));
    memset(t75, 0, 8);
    xsi_vlog_unsigned_add(t75, 32, t74, 32, t73, 32);
    goto LAB39;

LAB40:    t82 = (t0 + 1368U);
    t83 = *((char **)t82);
    t82 = ((char*)((ng4)));
    memset(t84, 0, 8);
    t85 = (t83 + 4);
    t86 = (t82 + 4);
    t87 = *((unsigned int *)t83);
    t88 = *((unsigned int *)t82);
    t89 = (t87 ^ t88);
    t90 = *((unsigned int *)t85);
    t91 = *((unsigned int *)t86);
    t92 = (t90 ^ t91);
    t93 = (t89 | t92);
    t94 = *((unsigned int *)t85);
    t95 = *((unsigned int *)t86);
    t96 = (t94 | t95);
    t97 = (~(t96));
    t98 = (t93 & t97);
    if (t98 != 0)
        goto LAB50;

LAB47:    if (t96 != 0)
        goto LAB49;

LAB48:    *((unsigned int *)t84) = 1;

LAB50:    memset(t81, 0, 8);
    t100 = (t84 + 4);
    t101 = *((unsigned int *)t100);
    t102 = (~(t101));
    t103 = *((unsigned int *)t84);
    t104 = (t103 & t102);
    t105 = (t104 & 1U);
    if (t105 != 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t100) != 0)
        goto LAB53;

LAB54:    t107 = (t81 + 4);
    t108 = *((unsigned int *)t81);
    t109 = *((unsigned int *)t107);
    t110 = (t108 || t109);
    if (t110 > 0)
        goto LAB55;

LAB56:    t113 = *((unsigned int *)t81);
    t114 = (~(t113));
    t115 = *((unsigned int *)t107);
    t116 = (t114 || t115);
    if (t116 > 0)
        goto LAB57;

LAB58:    if (*((unsigned int *)t107) > 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t81) > 0)
        goto LAB61;

LAB62:    memcpy(t80, t117, 8);

LAB63:    goto LAB41;

LAB42:    xsi_vlog_unsigned_bit_combine(t42, 32, t75, 32, t80, 32);
    goto LAB46;

LAB44:    memcpy(t42, t75, 8);
    goto LAB46;

LAB49:    t99 = (t84 + 4);
    *((unsigned int *)t84) = 1;
    *((unsigned int *)t99) = 1;
    goto LAB50;

LAB51:    *((unsigned int *)t81) = 1;
    goto LAB54;

LAB53:    t106 = (t81 + 4);
    *((unsigned int *)t81) = 1;
    *((unsigned int *)t106) = 1;
    goto LAB54;

LAB55:    t111 = (t0 + 2488U);
    t112 = *((char **)t111);
    goto LAB56;

LAB57:    t111 = (t0 + 1368U);
    t119 = *((char **)t111);
    t111 = ((char*)((ng5)));
    memset(t120, 0, 8);
    t121 = (t119 + 4);
    t122 = (t111 + 4);
    t123 = *((unsigned int *)t119);
    t124 = *((unsigned int *)t111);
    t125 = (t123 ^ t124);
    t126 = *((unsigned int *)t121);
    t127 = *((unsigned int *)t122);
    t128 = (t126 ^ t127);
    t129 = (t125 | t128);
    t130 = *((unsigned int *)t121);
    t131 = *((unsigned int *)t122);
    t132 = (t130 | t131);
    t133 = (~(t132));
    t134 = (t129 & t133);
    if (t134 != 0)
        goto LAB67;

LAB64:    if (t132 != 0)
        goto LAB66;

LAB65:    *((unsigned int *)t120) = 1;

LAB67:    memset(t118, 0, 8);
    t136 = (t120 + 4);
    t137 = *((unsigned int *)t136);
    t138 = (~(t137));
    t139 = *((unsigned int *)t120);
    t140 = (t139 & t138);
    t141 = (t140 & 1U);
    if (t141 != 0)
        goto LAB68;

LAB69:    if (*((unsigned int *)t136) != 0)
        goto LAB70;

LAB71:    t143 = (t118 + 4);
    t144 = *((unsigned int *)t118);
    t145 = *((unsigned int *)t143);
    t146 = (t144 || t145);
    if (t146 > 0)
        goto LAB72;

LAB73:    t149 = *((unsigned int *)t118);
    t150 = (~(t149));
    t151 = *((unsigned int *)t143);
    t152 = (t150 || t151);
    if (t152 > 0)
        goto LAB74;

LAB75:    if (*((unsigned int *)t143) > 0)
        goto LAB76;

LAB77:    if (*((unsigned int *)t118) > 0)
        goto LAB78;

LAB79:    memcpy(t117, t153, 8);

LAB80:    goto LAB58;

LAB59:    xsi_vlog_unsigned_bit_combine(t80, 32, t112, 32, t117, 32);
    goto LAB63;

LAB61:    memcpy(t80, t112, 8);
    goto LAB63;

LAB66:    t135 = (t120 + 4);
    *((unsigned int *)t120) = 1;
    *((unsigned int *)t135) = 1;
    goto LAB67;

LAB68:    *((unsigned int *)t118) = 1;
    goto LAB71;

LAB70:    t142 = (t118 + 4);
    *((unsigned int *)t118) = 1;
    *((unsigned int *)t142) = 1;
    goto LAB71;

LAB72:    t147 = (t0 + 2648U);
    t148 = *((char **)t147);
    goto LAB73;

LAB74:    t147 = (t0 + 1368U);
    t155 = *((char **)t147);
    t147 = ((char*)((ng6)));
    memset(t156, 0, 8);
    t157 = (t155 + 4);
    t158 = (t147 + 4);
    t159 = *((unsigned int *)t155);
    t160 = *((unsigned int *)t147);
    t161 = (t159 ^ t160);
    t162 = *((unsigned int *)t157);
    t163 = *((unsigned int *)t158);
    t164 = (t162 ^ t163);
    t165 = (t161 | t164);
    t166 = *((unsigned int *)t157);
    t167 = *((unsigned int *)t158);
    t168 = (t166 | t167);
    t169 = (~(t168));
    t170 = (t165 & t169);
    if (t170 != 0)
        goto LAB84;

LAB81:    if (t168 != 0)
        goto LAB83;

LAB82:    *((unsigned int *)t156) = 1;

LAB84:    memset(t154, 0, 8);
    t172 = (t156 + 4);
    t173 = *((unsigned int *)t172);
    t174 = (~(t173));
    t175 = *((unsigned int *)t156);
    t176 = (t175 & t174);
    t177 = (t176 & 1U);
    if (t177 != 0)
        goto LAB85;

LAB86:    if (*((unsigned int *)t172) != 0)
        goto LAB87;

LAB88:    t179 = (t154 + 4);
    t180 = *((unsigned int *)t154);
    t181 = *((unsigned int *)t179);
    t182 = (t180 || t181);
    if (t182 > 0)
        goto LAB89;

LAB90:    t185 = *((unsigned int *)t154);
    t186 = (~(t185));
    t187 = *((unsigned int *)t179);
    t188 = (t186 || t187);
    if (t188 > 0)
        goto LAB91;

LAB92:    if (*((unsigned int *)t179) > 0)
        goto LAB93;

LAB94:    if (*((unsigned int *)t154) > 0)
        goto LAB95;

LAB96:    memcpy(t153, t183, 8);

LAB97:    goto LAB75;

LAB76:    xsi_vlog_unsigned_bit_combine(t117, 32, t148, 32, t153, 32);
    goto LAB80;

LAB78:    memcpy(t117, t148, 8);
    goto LAB80;

LAB83:    t171 = (t156 + 4);
    *((unsigned int *)t156) = 1;
    *((unsigned int *)t171) = 1;
    goto LAB84;

LAB85:    *((unsigned int *)t154) = 1;
    goto LAB88;

LAB87:    t178 = (t154 + 4);
    *((unsigned int *)t154) = 1;
    *((unsigned int *)t178) = 1;
    goto LAB88;

LAB89:    t183 = (t0 + 1688U);
    t184 = *((char **)t183);
    goto LAB90;

LAB91:    t183 = ((char*)((ng7)));
    goto LAB92;

LAB93:    xsi_vlog_unsigned_bit_combine(t153, 32, t184, 32, t183, 32);
    goto LAB97;

LAB95:    memcpy(t153, t184, 8);
    goto LAB97;

}


extern void work_m_00000000001372044208_2398219831_init()
{
	static char *pe[] = {(void *)NetDecl_34_0,(void *)NetDecl_35_1,(void *)Cont_37_2};
	xsi_register_didat("work_m_00000000001372044208_2398219831", "isim/mips.exe.sim/work/m_00000000001372044208_2398219831.didat");
	xsi_register_executes(pe);
}
