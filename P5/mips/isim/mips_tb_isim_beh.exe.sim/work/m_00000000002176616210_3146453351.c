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
static const char *ng0 = "D:/lzq123/co/P5/mips/npc.v";
static unsigned int ng1[] = {3U, 0U};
static unsigned int ng2[] = {2U, 0U};
static unsigned int ng3[] = {0U, 0U};
static unsigned int ng4[] = {1U, 0U};
static int ng5[] = {14, 0};
static int ng6[] = {4, 0};
static int ng7[] = {8, 0};



static void Cont_33_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t39[8];
    char t40[8];
    char t42[8];
    char t69[8];
    char t73[8];
    char t86[8];
    char t87[8];
    char t90[8];
    char t106[8];
    char t120[8];
    char t127[8];
    char t170[8];
    char t172[8];
    char t182[8];
    char t186[8];
    char t200[8];
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
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t41;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
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
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t70;
    char *t71;
    char *t72;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t88;
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
    char *t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    char *t113;
    char *t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    char *t118;
    char *t119;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    char *t126;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    char *t131;
    char *t132;
    char *t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    char *t141;
    char *t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    int t151;
    int t152;
    unsigned int t153;
    unsigned int t154;
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
    char *t171;
    char *t173;
    char *t174;
    char *t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    char *t183;
    char *t184;
    char *t185;
    char *t187;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    unsigned int t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    char *t198;
    char *t199;
    char *t201;
    char *t202;
    char *t203;
    char *t204;
    char *t205;
    char *t206;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1528U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
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

LAB13:    t35 = *((unsigned int *)t4);
    t36 = (~(t35));
    t37 = *((unsigned int *)t29);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t39, 8);

LAB20:    t201 = (t0 + 3992);
    t202 = (t201 + 56U);
    t203 = *((char **)t202);
    t204 = (t203 + 56U);
    t205 = *((char **)t204);
    memcpy(t205, t3, 8);
    xsi_driver_vfirst_trans(t201, 0, 31);
    t206 = (t0 + 3896);
    *((int *)t206) = 1;

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

LAB12:    t33 = (t0 + 1688U);
    t34 = *((char **)t33);
    goto LAB13;

LAB14:    t33 = (t0 + 1528U);
    t41 = *((char **)t33);
    t33 = ((char*)((ng2)));
    memset(t42, 0, 8);
    t43 = (t41 + 4);
    t44 = (t33 + 4);
    t45 = *((unsigned int *)t41);
    t46 = *((unsigned int *)t33);
    t47 = (t45 ^ t46);
    t48 = *((unsigned int *)t43);
    t49 = *((unsigned int *)t44);
    t50 = (t48 ^ t49);
    t51 = (t47 | t50);
    t52 = *((unsigned int *)t43);
    t53 = *((unsigned int *)t44);
    t54 = (t52 | t53);
    t55 = (~(t54));
    t56 = (t51 & t55);
    if (t56 != 0)
        goto LAB24;

LAB21:    if (t54 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t42) = 1;

LAB24:    memset(t40, 0, 8);
    t58 = (t42 + 4);
    t59 = *((unsigned int *)t58);
    t60 = (~(t59));
    t61 = *((unsigned int *)t42);
    t62 = (t61 & t60);
    t63 = (t62 & 1U);
    if (t63 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t58) != 0)
        goto LAB27;

LAB28:    t65 = (t40 + 4);
    t66 = *((unsigned int *)t40);
    t67 = *((unsigned int *)t65);
    t68 = (t66 || t67);
    if (t68 > 0)
        goto LAB29;

LAB30:    t82 = *((unsigned int *)t40);
    t83 = (~(t82));
    t84 = *((unsigned int *)t65);
    t85 = (t83 || t84);
    if (t85 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t65) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t40) > 0)
        goto LAB35;

LAB36:    memcpy(t39, t86, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t34, 32, t39, 32);
    goto LAB20;

LAB18:    memcpy(t3, t34, 8);
    goto LAB20;

LAB23:    t57 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t40) = 1;
    goto LAB28;

LAB27:    t64 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t64) = 1;
    goto LAB28;

LAB29:    t70 = ((char*)((ng3)));
    t71 = (t0 + 1848U);
    t72 = *((char **)t71);
    t71 = (t0 + 1208U);
    t74 = *((char **)t71);
    memset(t73, 0, 8);
    t71 = (t73 + 4);
    t75 = (t74 + 4);
    t76 = *((unsigned int *)t74);
    t77 = (t76 >> 28);
    *((unsigned int *)t73) = t77;
    t78 = *((unsigned int *)t75);
    t79 = (t78 >> 28);
    *((unsigned int *)t71) = t79;
    t80 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t80 & 15U);
    t81 = *((unsigned int *)t71);
    *((unsigned int *)t71) = (t81 & 15U);
    xsi_vlogtype_concat(t69, 32, 32, 3U, t73, 4, t72, 26, t70, 2);
    goto LAB30;

LAB31:    t88 = (t0 + 1528U);
    t89 = *((char **)t88);
    t88 = ((char*)((ng4)));
    memset(t90, 0, 8);
    t91 = (t89 + 4);
    t92 = (t88 + 4);
    t93 = *((unsigned int *)t89);
    t94 = *((unsigned int *)t88);
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
        goto LAB41;

LAB38:    if (t102 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t90) = 1;

LAB41:    memset(t106, 0, 8);
    t107 = (t90 + 4);
    t108 = *((unsigned int *)t107);
    t109 = (~(t108));
    t110 = *((unsigned int *)t90);
    t111 = (t110 & t109);
    t112 = (t111 & 1U);
    if (t112 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t107) != 0)
        goto LAB44;

LAB45:    t114 = (t106 + 4);
    t115 = *((unsigned int *)t106);
    t116 = *((unsigned int *)t114);
    t117 = (t115 || t116);
    if (t117 > 0)
        goto LAB46;

LAB47:    memcpy(t127, t106, 8);

LAB48:    memset(t87, 0, 8);
    t159 = (t127 + 4);
    t160 = *((unsigned int *)t159);
    t161 = (~(t160));
    t162 = *((unsigned int *)t127);
    t163 = (t162 & t161);
    t164 = (t163 & 1U);
    if (t164 != 0)
        goto LAB56;

LAB57:    if (*((unsigned int *)t159) != 0)
        goto LAB58;

LAB59:    t166 = (t87 + 4);
    t167 = *((unsigned int *)t87);
    t168 = *((unsigned int *)t166);
    t169 = (t167 || t168);
    if (t169 > 0)
        goto LAB60;

LAB61:    t194 = *((unsigned int *)t87);
    t195 = (~(t194));
    t196 = *((unsigned int *)t166);
    t197 = (t195 || t196);
    if (t197 > 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t166) > 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t87) > 0)
        goto LAB66;

LAB67:    memcpy(t86, t200, 8);

LAB68:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t39, 32, t69, 32, t86, 32);
    goto LAB37;

LAB35:    memcpy(t39, t69, 8);
    goto LAB37;

LAB40:    t105 = (t90 + 4);
    *((unsigned int *)t90) = 1;
    *((unsigned int *)t105) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t106) = 1;
    goto LAB45;

LAB44:    t113 = (t106 + 4);
    *((unsigned int *)t106) = 1;
    *((unsigned int *)t113) = 1;
    goto LAB45;

LAB46:    t118 = (t0 + 1368U);
    t119 = *((char **)t118);
    memset(t120, 0, 8);
    t118 = (t119 + 4);
    t121 = *((unsigned int *)t118);
    t122 = (~(t121));
    t123 = *((unsigned int *)t119);
    t124 = (t123 & t122);
    t125 = (t124 & 1U);
    if (t125 != 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t118) != 0)
        goto LAB51;

LAB52:    t128 = *((unsigned int *)t106);
    t129 = *((unsigned int *)t120);
    t130 = (t128 & t129);
    *((unsigned int *)t127) = t130;
    t131 = (t106 + 4);
    t132 = (t120 + 4);
    t133 = (t127 + 4);
    t134 = *((unsigned int *)t131);
    t135 = *((unsigned int *)t132);
    t136 = (t134 | t135);
    *((unsigned int *)t133) = t136;
    t137 = *((unsigned int *)t133);
    t138 = (t137 != 0);
    if (t138 == 1)
        goto LAB53;

LAB54:
LAB55:    goto LAB48;

LAB49:    *((unsigned int *)t120) = 1;
    goto LAB52;

LAB51:    t126 = (t120 + 4);
    *((unsigned int *)t120) = 1;
    *((unsigned int *)t126) = 1;
    goto LAB52;

LAB53:    t139 = *((unsigned int *)t127);
    t140 = *((unsigned int *)t133);
    *((unsigned int *)t127) = (t139 | t140);
    t141 = (t106 + 4);
    t142 = (t120 + 4);
    t143 = *((unsigned int *)t106);
    t144 = (~(t143));
    t145 = *((unsigned int *)t141);
    t146 = (~(t145));
    t147 = *((unsigned int *)t120);
    t148 = (~(t147));
    t149 = *((unsigned int *)t142);
    t150 = (~(t149));
    t151 = (t144 & t146);
    t152 = (t148 & t150);
    t153 = (~(t151));
    t154 = (~(t152));
    t155 = *((unsigned int *)t133);
    *((unsigned int *)t133) = (t155 & t153);
    t156 = *((unsigned int *)t133);
    *((unsigned int *)t133) = (t156 & t154);
    t157 = *((unsigned int *)t127);
    *((unsigned int *)t127) = (t157 & t153);
    t158 = *((unsigned int *)t127);
    *((unsigned int *)t127) = (t158 & t154);
    goto LAB55;

LAB56:    *((unsigned int *)t87) = 1;
    goto LAB59;

LAB58:    t165 = (t87 + 4);
    *((unsigned int *)t87) = 1;
    *((unsigned int *)t165) = 1;
    goto LAB59;

LAB60:    t171 = ((char*)((ng3)));
    t173 = (t0 + 1848U);
    t174 = *((char **)t173);
    memset(t172, 0, 8);
    t173 = (t172 + 4);
    t175 = (t174 + 4);
    t176 = *((unsigned int *)t174);
    t177 = (t176 >> 0);
    *((unsigned int *)t172) = t177;
    t178 = *((unsigned int *)t175);
    t179 = (t178 >> 0);
    *((unsigned int *)t173) = t179;
    t180 = *((unsigned int *)t172);
    *((unsigned int *)t172) = (t180 & 65535U);
    t181 = *((unsigned int *)t173);
    *((unsigned int *)t173) = (t181 & 65535U);
    t183 = ((char*)((ng5)));
    t184 = (t0 + 1848U);
    t185 = *((char **)t184);
    memset(t186, 0, 8);
    t184 = (t186 + 4);
    t187 = (t185 + 4);
    t188 = *((unsigned int *)t185);
    t189 = (t188 >> 15);
    t190 = (t189 & 1);
    *((unsigned int *)t186) = t190;
    t191 = *((unsigned int *)t187);
    t192 = (t191 >> 15);
    t193 = (t192 & 1);
    *((unsigned int *)t184) = t193;
    xsi_vlog_mul_concat(t182, 14, 1, t183, 1U, t186, 1);
    xsi_vlogtype_concat(t170, 32, 32, 3U, t182, 14, t172, 16, t171, 2);
    goto LAB61;

LAB62:    t198 = (t0 + 1048U);
    t199 = *((char **)t198);
    t198 = ((char*)((ng6)));
    memset(t200, 0, 8);
    xsi_vlog_unsigned_add(t200, 32, t199, 32, t198, 32);
    goto LAB63;

LAB64:    xsi_vlog_unsigned_bit_combine(t86, 32, t170, 32, t200, 32);
    goto LAB68;

LAB66:    memcpy(t86, t170, 8);
    goto LAB68;

}

static void Cont_36_1(char *t0)
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

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t3, 32, t2, 32);
    t5 = (t0 + 4056);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 3912);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void work_m_00000000002176616210_3146453351_init()
{
	static char *pe[] = {(void *)Cont_33_0,(void *)Cont_36_1};
	xsi_register_didat("work_m_00000000002176616210_3146453351", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000002176616210_3146453351.didat");
	xsi_register_executes(pe);
}
