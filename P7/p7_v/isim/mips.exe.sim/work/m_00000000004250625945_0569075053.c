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
static int ng0[] = {1, 0};
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {4U, 0U};
static unsigned int ng3[] = {5U, 0U};
static int ng4[] = {0, 0};
static int ng5[] = {5, 0};
static unsigned int ng6[] = {1U, 0U};
static unsigned int ng7[] = {2U, 0U};
static int ng8[] = {10, 0};
static unsigned int ng9[] = {3U, 0U};



static void Always_37_0(char *t0)
{
    char t6[8];
    char t30[8];
    char t41[8];
    char t50[8];
    char t58[8];
    char t98[16];
    char t99[16];
    char t100[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
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
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    int t82;
    int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    char *t97;

LAB0:    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 4448);
    *((int *)t2) = 1;
    t3 = (t0 + 4160);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng0)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
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
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB17;

LAB14:    if (t18 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t6) = 1;

LAB17:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB18;

LAB19:    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB25;

LAB22:    if (t18 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t6) = 1;

LAB25:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB26;

LAB27:
LAB30:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
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
        goto LAB34;

LAB31:    if (t18 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t6) = 1;

LAB34:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB35;

LAB36:    t2 = (t0 + 2888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng0)));
    memset(t6, 0, 8);
    t8 = (t5 + 4);
    t21 = (t7 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t8);
    t13 = *((unsigned int *)t21);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t8);
    t17 = *((unsigned int *)t21);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB82;

LAB79:    if (t18 != 0)
        goto LAB81;

LAB80:    *((unsigned int *)t6) = 1;

LAB82:    t28 = (t6 + 4);
    t23 = *((unsigned int *)t28);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB83;

LAB84:
LAB87:    t2 = (t0 + 2888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng0)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_minus(t6, 32, t5, 4, t7, 32);
    t8 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t8, t6, 0, 0, 4, 0LL);

LAB85:
LAB37:
LAB28:
LAB20:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:
LAB13:    t28 = ((char*)((ng1)));
    t29 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB12;

LAB16:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB17;

LAB18:
LAB21:    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    t21 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t21, t22, 0, 0, 32, 0LL);
    goto LAB20;

LAB24:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB25;

LAB26:
LAB29:    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    t21 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t21, t22, 0, 0, 32, 0LL);
    goto LAB28;

LAB33:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB34;

LAB35:
LAB38:    t28 = (t0 + 1528U);
    t29 = *((char **)t28);
    memset(t30, 0, 8);
    t28 = (t29 + 4);
    t31 = *((unsigned int *)t28);
    t32 = (~(t31));
    t33 = *((unsigned int *)t29);
    t34 = (t33 & t32);
    t35 = (t34 & 1U);
    if (t35 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t28) != 0)
        goto LAB41;

LAB42:    t37 = (t30 + 4);
    t38 = *((unsigned int *)t30);
    t39 = *((unsigned int *)t37);
    t40 = (t38 || t39);
    if (t40 > 0)
        goto LAB43;

LAB44:    memcpy(t58, t30, 8);

LAB45:    t90 = (t58 + 4);
    t91 = *((unsigned int *)t90);
    t92 = (~(t91));
    t93 = *((unsigned int *)t58);
    t94 = (t93 & t92);
    t95 = (t94 != 0);
    if (t95 > 0)
        goto LAB57;

LAB58:
LAB78:    t2 = ((char*)((ng4)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);

LAB59:    goto LAB37;

LAB39:    *((unsigned int *)t30) = 1;
    goto LAB42;

LAB41:    t36 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t36) = 1;
    goto LAB42;

LAB43:    t42 = (t0 + 2008U);
    t43 = *((char **)t42);
    memset(t41, 0, 8);
    t42 = (t43 + 4);
    t44 = *((unsigned int *)t42);
    t45 = (~(t44));
    t46 = *((unsigned int *)t43);
    t47 = (t46 & t45);
    t48 = (t47 & 1U);
    if (t48 != 0)
        goto LAB49;

LAB47:    if (*((unsigned int *)t42) == 0)
        goto LAB46;

LAB48:    t49 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t49) = 1;

LAB49:    memset(t50, 0, 8);
    t51 = (t41 + 4);
    t52 = *((unsigned int *)t51);
    t53 = (~(t52));
    t54 = *((unsigned int *)t41);
    t55 = (t54 & t53);
    t56 = (t55 & 1U);
    if (t56 != 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t51) != 0)
        goto LAB52;

LAB53:    t59 = *((unsigned int *)t30);
    t60 = *((unsigned int *)t50);
    t61 = (t59 & t60);
    *((unsigned int *)t58) = t61;
    t62 = (t30 + 4);
    t63 = (t50 + 4);
    t64 = (t58 + 4);
    t65 = *((unsigned int *)t62);
    t66 = *((unsigned int *)t63);
    t67 = (t65 | t66);
    *((unsigned int *)t64) = t67;
    t68 = *((unsigned int *)t64);
    t69 = (t68 != 0);
    if (t69 == 1)
        goto LAB54;

LAB55:
LAB56:    goto LAB45;

LAB46:    *((unsigned int *)t41) = 1;
    goto LAB49;

LAB50:    *((unsigned int *)t50) = 1;
    goto LAB53;

LAB52:    t57 = (t50 + 4);
    *((unsigned int *)t50) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB53;

LAB54:    t70 = *((unsigned int *)t58);
    t71 = *((unsigned int *)t64);
    *((unsigned int *)t58) = (t70 | t71);
    t72 = (t30 + 4);
    t73 = (t50 + 4);
    t74 = *((unsigned int *)t30);
    t75 = (~(t74));
    t76 = *((unsigned int *)t72);
    t77 = (~(t76));
    t78 = *((unsigned int *)t50);
    t79 = (~(t78));
    t80 = *((unsigned int *)t73);
    t81 = (~(t80));
    t82 = (t75 & t77);
    t83 = (t79 & t81);
    t84 = (~(t82));
    t85 = (~(t83));
    t86 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t86 & t84);
    t87 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t87 & t85);
    t88 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t88 & t84);
    t89 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t89 & t85);
    goto LAB56;

LAB57:
LAB60:    t96 = ((char*)((ng0)));
    t97 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t97, t96, 0, 0, 1, 0LL);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);

LAB61:    t2 = ((char*)((ng1)));
    t82 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t82 == 1)
        goto LAB62;

LAB63:    t2 = ((char*)((ng6)));
    t82 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t82 == 1)
        goto LAB64;

LAB65:    t2 = ((char*)((ng7)));
    t82 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t82 == 1)
        goto LAB66;

LAB67:    t2 = ((char*)((ng9)));
    t82 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t82 == 1)
        goto LAB68;

LAB69:
LAB71:
LAB70:
LAB77:    t2 = ((char*)((ng1)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);

LAB72:    goto LAB59;

LAB62:
LAB73:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    xsi_vlogtype_sign_extend(t98, 64, t5, 32);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    xsi_vlogtype_sign_extend(t99, 64, t7, 32);
    xsi_vlog_signed_multiply(t100, 64, t98, 64, t99, 64);
    t4 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t4, t100, 0, 0, 32, 0LL);
    t8 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t8, t100, 32, 0, 32, 0LL);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB72;

LAB64:
LAB74:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    xsi_vlog_unsigned_multiply(t98, 64, t5, 32, t7, 32);
    t4 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t4, t98, 0, 0, 32, 0LL);
    t8 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t8, t98, 32, 0, 32, 0LL);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB72;

LAB66:
LAB75:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t41, 0, 8);
    xsi_vlog_signed_mod(t41, 32, t5, 32, t7, 32);
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t41, 0, 0, 32, 0LL);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    memset(t41, 0, 8);
    xsi_vlog_signed_divide(t41, 32, t4, 32, t5, 32);
    t2 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t2, t41, 0, 0, 32, 0LL);
    t2 = ((char*)((ng8)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB72;

LAB68:
LAB76:    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_mod(t6, 32, t5, 32, t7, 32);
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t6, 0, 0, 32, 0LL);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_divide(t6, 32, t4, 32, t5, 32);
    t2 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t2, t6, 0, 0, 32, 0LL);
    t2 = ((char*)((ng8)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB72;

LAB81:    t22 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB82;

LAB83:
LAB86:    t29 = ((char*)((ng4)));
    t36 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t36, t29, 0, 0, 4, 0LL);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    t2 = (t0 + 3048);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t7, t5, 0, 0, 32, 0LL);
    t2 = (t0 + 3208);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t7, t5, 0, 0, 32, 0LL);
    goto LAB85;

}


extern void work_m_00000000004250625945_0569075053_init()
{
	static char *pe[] = {(void *)Always_37_0};
	xsi_register_didat("work_m_00000000004250625945_0569075053", "isim/mips.exe.sim/work/m_00000000004250625945_0569075053.didat");
	xsi_register_executes(pe);
}
