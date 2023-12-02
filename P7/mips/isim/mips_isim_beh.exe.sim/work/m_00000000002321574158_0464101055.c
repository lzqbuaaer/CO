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
static const char *ng0 = "D:/lzq123/co/P7/mips/de_reg.v";
static unsigned int ng1[] = {16768U, 0U};
static unsigned int ng2[] = {0U, 0U};



static void Always_44_0(char *t0)
{
    char t7[8];
    char t36[8];
    char t69[8];
    char t70[8];
    char t88[8];
    char t89[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t90;
    char *t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    char *t108;

LAB0:    t1 = (t0 + 5248U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5568);
    *((int *)t2) = 1;
    t3 = (t0 + 5280);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(44, ng0);

LAB5:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1368U);
    t6 = *((char **)t4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t6);
    t10 = (t8 | t9);
    *((unsigned int *)t7) = t10;
    t4 = (t5 + 4);
    t11 = (t6 + 4);
    t12 = (t7 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t11);
    t15 = (t13 | t14);
    *((unsigned int *)t12) = t15;
    t16 = *((unsigned int *)t12);
    t17 = (t16 != 0);
    if (t17 == 1)
        goto LAB6;

LAB7:
LAB8:    t34 = (t0 + 1528U);
    t35 = *((char **)t34);
    t37 = *((unsigned int *)t7);
    t38 = *((unsigned int *)t35);
    t39 = (t37 | t38);
    *((unsigned int *)t36) = t39;
    t34 = (t7 + 4);
    t40 = (t35 + 4);
    t41 = (t36 + 4);
    t42 = *((unsigned int *)t34);
    t43 = *((unsigned int *)t40);
    t44 = (t42 | t43);
    *((unsigned int *)t41) = t44;
    t45 = *((unsigned int *)t41);
    t46 = (t45 != 0);
    if (t46 == 1)
        goto LAB9;

LAB10:
LAB11:    t63 = (t36 + 4);
    t64 = *((unsigned int *)t63);
    t65 = (~(t64));
    t66 = *((unsigned int *)t36);
    t67 = (t66 & t65);
    t68 = (t67 != 0);
    if (t68 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(55, ng0);

LAB55:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2648U);
    t3 = *((char **)t2);
    t2 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2808U);
    t3 = *((char **)t2);
    t2 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);

LAB14:    goto LAB2;

LAB6:    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t12);
    *((unsigned int *)t7) = (t18 | t19);
    t20 = (t5 + 4);
    t21 = (t6 + 4);
    t22 = *((unsigned int *)t20);
    t23 = (~(t22));
    t24 = *((unsigned int *)t5);
    t25 = (t24 & t23);
    t26 = *((unsigned int *)t21);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (~(t25));
    t31 = (~(t29));
    t32 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t32 & t30);
    t33 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t33 & t31);
    goto LAB8;

LAB9:    t47 = *((unsigned int *)t36);
    t48 = *((unsigned int *)t41);
    *((unsigned int *)t36) = (t47 | t48);
    t49 = (t7 + 4);
    t50 = (t35 + 4);
    t51 = *((unsigned int *)t49);
    t52 = (~(t51));
    t53 = *((unsigned int *)t7);
    t54 = (t53 & t52);
    t55 = *((unsigned int *)t50);
    t56 = (~(t55));
    t57 = *((unsigned int *)t35);
    t58 = (t57 & t56);
    t59 = (~(t54));
    t60 = (~(t58));
    t61 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t61 & t59);
    t62 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t62 & t60);
    goto LAB11;

LAB12:    xsi_set_current_line(45, ng0);

LAB15:    xsi_set_current_line(46, ng0);
    t71 = (t0 + 1368U);
    t72 = *((char **)t71);
    memset(t70, 0, 8);
    t71 = (t72 + 4);
    t73 = *((unsigned int *)t71);
    t74 = (~(t73));
    t75 = *((unsigned int *)t72);
    t76 = (t75 & t74);
    t77 = (t76 & 1U);
    if (t77 != 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t71) != 0)
        goto LAB18;

LAB19:    t79 = (t70 + 4);
    t80 = *((unsigned int *)t70);
    t81 = *((unsigned int *)t79);
    t82 = (t80 || t81);
    if (t82 > 0)
        goto LAB20;

LAB21:    t84 = *((unsigned int *)t70);
    t85 = (~(t84));
    t86 = *((unsigned int *)t79);
    t87 = (t85 || t86);
    if (t87 > 0)
        goto LAB22;

LAB23:    if (*((unsigned int *)t79) > 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t70) > 0)
        goto LAB26;

LAB27:    memcpy(t69, t88, 8);

LAB28:    t108 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t108, t69, 0, 0, 32, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t36, 0, 8);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t13 = (t10 & t9);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t2) != 0)
        goto LAB44;

LAB45:    t5 = (t36 + 4);
    t15 = *((unsigned int *)t36);
    t16 = *((unsigned int *)t5);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB46;

LAB47:    t18 = *((unsigned int *)t36);
    t19 = (~(t18));
    t22 = *((unsigned int *)t5);
    t23 = (t19 || t22);
    if (t23 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t5) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t36) > 0)
        goto LAB52;

LAB53:    memcpy(t7, t6, 8);

LAB54:    t12 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t12, t7, 0, 0, 1, 0LL);
    goto LAB14;

LAB16:    *((unsigned int *)t70) = 1;
    goto LAB19;

LAB18:    t78 = (t70 + 4);
    *((unsigned int *)t70) = 1;
    *((unsigned int *)t78) = 1;
    goto LAB19;

LAB20:    t83 = ((char*)((ng1)));
    goto LAB21;

LAB22:    t90 = (t0 + 1528U);
    t91 = *((char **)t90);
    memset(t89, 0, 8);
    t90 = (t91 + 4);
    t92 = *((unsigned int *)t90);
    t93 = (~(t92));
    t94 = *((unsigned int *)t91);
    t95 = (t94 & t93);
    t96 = (t95 & 1U);
    if (t96 != 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t90) != 0)
        goto LAB31;

LAB32:    t98 = (t89 + 4);
    t99 = *((unsigned int *)t89);
    t100 = *((unsigned int *)t98);
    t101 = (t99 || t100);
    if (t101 > 0)
        goto LAB33;

LAB34:    t104 = *((unsigned int *)t89);
    t105 = (~(t104));
    t106 = *((unsigned int *)t98);
    t107 = (t105 || t106);
    if (t107 > 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t98) > 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t89) > 0)
        goto LAB39;

LAB40:    memcpy(t88, t102, 8);

LAB41:    goto LAB23;

LAB24:    xsi_vlog_unsigned_bit_combine(t69, 32, t83, 32, t88, 32);
    goto LAB28;

LAB26:    memcpy(t69, t83, 8);
    goto LAB28;

LAB29:    *((unsigned int *)t89) = 1;
    goto LAB32;

LAB31:    t97 = (t89 + 4);
    *((unsigned int *)t89) = 1;
    *((unsigned int *)t97) = 1;
    goto LAB32;

LAB33:    t102 = (t0 + 1688U);
    t103 = *((char **)t102);
    goto LAB34;

LAB35:    t102 = ((char*)((ng2)));
    goto LAB36;

LAB37:    xsi_vlog_unsigned_bit_combine(t88, 32, t103, 32, t102, 32);
    goto LAB41;

LAB39:    memcpy(t88, t103, 8);
    goto LAB41;

LAB42:    *((unsigned int *)t36) = 1;
    goto LAB45;

LAB44:    t4 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB45;

LAB46:    t6 = (t0 + 2808U);
    t11 = *((char **)t6);
    goto LAB47;

LAB48:    t6 = ((char*)((ng2)));
    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t7, 1, t11, 1, t6, 1);
    goto LAB54;

LAB52:    memcpy(t7, t11, 8);
    goto LAB54;

}


extern void work_m_00000000002321574158_0464101055_init()
{
	static char *pe[] = {(void *)Always_44_0};
	xsi_register_didat("work_m_00000000002321574158_0464101055", "isim/mips_isim_beh.exe.sim/work/m_00000000002321574158_0464101055.didat");
	xsi_register_executes(pe);
}
