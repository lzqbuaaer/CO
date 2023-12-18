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
static const char *ng0 = "D:/lzq123/co/P7/mips/mudi.v";
static int ng1[] = {1, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {4U, 0U};
static unsigned int ng4[] = {5U, 0U};
static int ng5[] = {0, 0};
static int ng6[] = {5, 0};
static unsigned int ng7[] = {1U, 0U};
static unsigned int ng8[] = {2U, 0U};
static int ng9[] = {10, 0};
static unsigned int ng10[] = {3U, 0U};



static void Always_37_0(char *t0)
{
    char t6[8];
    char t30[8];
    char t34[8];
    char t41[8];
    char t49[8];
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
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    int t73;
    int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t87;
    char *t88;
    char *t89;
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

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 4448);
    *((int *)t2) = 1;
    t3 = (t0 + 4160);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
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

LAB11:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1368U);
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
        goto LAB17;

LAB14:    if (t18 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t6) = 1;

LAB17:    memset(t30, 0, 8);
    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t8) != 0)
        goto LAB20;

LAB21:    t22 = (t30 + 4);
    t31 = *((unsigned int *)t30);
    t32 = *((unsigned int *)t22);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB22;

LAB23:    memcpy(t49, t30, 8);

LAB24:    t81 = (t49 + 4);
    t82 = *((unsigned int *)t81);
    t83 = (~(t82));
    t84 = *((unsigned int *)t49);
    t85 = (t84 & t83);
    t86 = (t85 != 0);
    if (t86 > 0)
        goto LAB36;

LAB37:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
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
        goto LAB43;

LAB40:    if (t18 != 0)
        goto LAB42;

LAB41:    *((unsigned int *)t6) = 1;

LAB43:    memset(t30, 0, 8);
    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t8) != 0)
        goto LAB46;

LAB47:    t22 = (t30 + 4);
    t31 = *((unsigned int *)t30);
    t32 = *((unsigned int *)t22);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB48;

LAB49:    memcpy(t49, t30, 8);

LAB50:    t81 = (t49 + 4);
    t82 = *((unsigned int *)t81);
    t83 = (~(t82));
    t84 = *((unsigned int *)t49);
    t85 = (t84 & t83);
    t86 = (t85 != 0);
    if (t86 > 0)
        goto LAB62;

LAB63:    xsi_set_current_line(49, ng0);

LAB66:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
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
        goto LAB70;

LAB67:    if (t18 != 0)
        goto LAB69;

LAB68:    *((unsigned int *)t6) = 1;

LAB70:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB71;

LAB72:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng1)));
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
        goto LAB118;

LAB115:    if (t18 != 0)
        goto LAB117;

LAB116:    *((unsigned int *)t6) = 1;

LAB118:    t28 = (t6 + 4);
    t23 = *((unsigned int *)t28);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB119;

LAB120:    xsi_set_current_line(89, ng0);

LAB123:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_minus(t6, 32, t5, 4, t7, 32);
    t8 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t8, t6, 0, 0, 4, 0LL);

LAB121:
LAB73:
LAB64:
LAB38:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(38, ng0);

LAB13:    xsi_set_current_line(39, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 32, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB12;

LAB16:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB17;

LAB18:    *((unsigned int *)t30) = 1;
    goto LAB21;

LAB20:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB21;

LAB22:    t28 = (t0 + 2008U);
    t29 = *((char **)t28);
    memset(t34, 0, 8);
    t28 = (t29 + 4);
    t35 = *((unsigned int *)t28);
    t36 = (~(t35));
    t37 = *((unsigned int *)t29);
    t38 = (t37 & t36);
    t39 = (t38 & 1U);
    if (t39 != 0)
        goto LAB28;

LAB26:    if (*((unsigned int *)t28) == 0)
        goto LAB25;

LAB27:    t40 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t40) = 1;

LAB28:    memset(t41, 0, 8);
    t42 = (t34 + 4);
    t43 = *((unsigned int *)t42);
    t44 = (~(t43));
    t45 = *((unsigned int *)t34);
    t46 = (t45 & t44);
    t47 = (t46 & 1U);
    if (t47 != 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t42) != 0)
        goto LAB31;

LAB32:    t50 = *((unsigned int *)t30);
    t51 = *((unsigned int *)t41);
    t52 = (t50 & t51);
    *((unsigned int *)t49) = t52;
    t53 = (t30 + 4);
    t54 = (t41 + 4);
    t55 = (t49 + 4);
    t56 = *((unsigned int *)t53);
    t57 = *((unsigned int *)t54);
    t58 = (t56 | t57);
    *((unsigned int *)t55) = t58;
    t59 = *((unsigned int *)t55);
    t60 = (t59 != 0);
    if (t60 == 1)
        goto LAB33;

LAB34:
LAB35:    goto LAB24;

LAB25:    *((unsigned int *)t34) = 1;
    goto LAB28;

LAB29:    *((unsigned int *)t41) = 1;
    goto LAB32;

LAB31:    t48 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t48) = 1;
    goto LAB32;

LAB33:    t61 = *((unsigned int *)t49);
    t62 = *((unsigned int *)t55);
    *((unsigned int *)t49) = (t61 | t62);
    t63 = (t30 + 4);
    t64 = (t41 + 4);
    t65 = *((unsigned int *)t30);
    t66 = (~(t65));
    t67 = *((unsigned int *)t63);
    t68 = (~(t67));
    t69 = *((unsigned int *)t41);
    t70 = (~(t69));
    t71 = *((unsigned int *)t64);
    t72 = (~(t71));
    t73 = (t66 & t68);
    t74 = (t70 & t72);
    t75 = (~(t73));
    t76 = (~(t74));
    t77 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t77 & t75);
    t78 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t78 & t76);
    t79 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t79 & t75);
    t80 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t80 & t76);
    goto LAB35;

LAB36:    xsi_set_current_line(43, ng0);

LAB39:    xsi_set_current_line(44, ng0);
    t87 = (t0 + 1048U);
    t88 = *((char **)t87);
    t87 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t87, t88, 0, 0, 32, 0LL);
    goto LAB38;

LAB42:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB43;

LAB44:    *((unsigned int *)t30) = 1;
    goto LAB47;

LAB46:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB47;

LAB48:    t28 = (t0 + 2008U);
    t29 = *((char **)t28);
    memset(t34, 0, 8);
    t28 = (t29 + 4);
    t35 = *((unsigned int *)t28);
    t36 = (~(t35));
    t37 = *((unsigned int *)t29);
    t38 = (t37 & t36);
    t39 = (t38 & 1U);
    if (t39 != 0)
        goto LAB54;

LAB52:    if (*((unsigned int *)t28) == 0)
        goto LAB51;

LAB53:    t40 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t40) = 1;

LAB54:    memset(t41, 0, 8);
    t42 = (t34 + 4);
    t43 = *((unsigned int *)t42);
    t44 = (~(t43));
    t45 = *((unsigned int *)t34);
    t46 = (t45 & t44);
    t47 = (t46 & 1U);
    if (t47 != 0)
        goto LAB55;

LAB56:    if (*((unsigned int *)t42) != 0)
        goto LAB57;

LAB58:    t50 = *((unsigned int *)t30);
    t51 = *((unsigned int *)t41);
    t52 = (t50 & t51);
    *((unsigned int *)t49) = t52;
    t53 = (t30 + 4);
    t54 = (t41 + 4);
    t55 = (t49 + 4);
    t56 = *((unsigned int *)t53);
    t57 = *((unsigned int *)t54);
    t58 = (t56 | t57);
    *((unsigned int *)t55) = t58;
    t59 = *((unsigned int *)t55);
    t60 = (t59 != 0);
    if (t60 == 1)
        goto LAB59;

LAB60:
LAB61:    goto LAB50;

LAB51:    *((unsigned int *)t34) = 1;
    goto LAB54;

LAB55:    *((unsigned int *)t41) = 1;
    goto LAB58;

LAB57:    t48 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t48) = 1;
    goto LAB58;

LAB59:    t61 = *((unsigned int *)t49);
    t62 = *((unsigned int *)t55);
    *((unsigned int *)t49) = (t61 | t62);
    t63 = (t30 + 4);
    t64 = (t41 + 4);
    t65 = *((unsigned int *)t30);
    t66 = (~(t65));
    t67 = *((unsigned int *)t63);
    t68 = (~(t67));
    t69 = *((unsigned int *)t41);
    t70 = (~(t69));
    t71 = *((unsigned int *)t64);
    t72 = (~(t71));
    t73 = (t66 & t68);
    t74 = (t70 & t72);
    t75 = (~(t73));
    t76 = (~(t74));
    t77 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t77 & t75);
    t78 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t78 & t76);
    t79 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t79 & t75);
    t80 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t80 & t76);
    goto LAB61;

LAB62:    xsi_set_current_line(46, ng0);

LAB65:    xsi_set_current_line(47, ng0);
    t87 = (t0 + 1048U);
    t88 = *((char **)t87);
    t87 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t87, t88, 0, 0, 32, 0LL);
    goto LAB64;

LAB69:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB70;

LAB71:    xsi_set_current_line(50, ng0);

LAB74:    xsi_set_current_line(51, ng0);
    t28 = (t0 + 1528U);
    t29 = *((char **)t28);
    memset(t30, 0, 8);
    t28 = (t29 + 4);
    t31 = *((unsigned int *)t28);
    t32 = (~(t31));
    t33 = *((unsigned int *)t29);
    t35 = (t33 & t32);
    t36 = (t35 & 1U);
    if (t36 != 0)
        goto LAB75;

LAB76:    if (*((unsigned int *)t28) != 0)
        goto LAB77;

LAB78:    t42 = (t30 + 4);
    t37 = *((unsigned int *)t30);
    t38 = *((unsigned int *)t42);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB79;

LAB80:    memcpy(t49, t30, 8);

LAB81:    t90 = (t49 + 4);
    t91 = *((unsigned int *)t90);
    t92 = (~(t91));
    t93 = *((unsigned int *)t49);
    t94 = (t93 & t92);
    t95 = (t94 != 0);
    if (t95 > 0)
        goto LAB93;

LAB94:    xsi_set_current_line(79, ng0);

LAB114:    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);

LAB95:    goto LAB73;

LAB75:    *((unsigned int *)t30) = 1;
    goto LAB78;

LAB77:    t40 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB78;

LAB79:    t48 = (t0 + 2008U);
    t53 = *((char **)t48);
    memset(t34, 0, 8);
    t48 = (t53 + 4);
    t43 = *((unsigned int *)t48);
    t44 = (~(t43));
    t45 = *((unsigned int *)t53);
    t46 = (t45 & t44);
    t47 = (t46 & 1U);
    if (t47 != 0)
        goto LAB85;

LAB83:    if (*((unsigned int *)t48) == 0)
        goto LAB82;

LAB84:    t54 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t54) = 1;

LAB85:    memset(t41, 0, 8);
    t55 = (t34 + 4);
    t50 = *((unsigned int *)t55);
    t51 = (~(t50));
    t52 = *((unsigned int *)t34);
    t56 = (t52 & t51);
    t57 = (t56 & 1U);
    if (t57 != 0)
        goto LAB86;

LAB87:    if (*((unsigned int *)t55) != 0)
        goto LAB88;

LAB89:    t58 = *((unsigned int *)t30);
    t59 = *((unsigned int *)t41);
    t60 = (t58 & t59);
    *((unsigned int *)t49) = t60;
    t64 = (t30 + 4);
    t81 = (t41 + 4);
    t87 = (t49 + 4);
    t61 = *((unsigned int *)t64);
    t62 = *((unsigned int *)t81);
    t65 = (t61 | t62);
    *((unsigned int *)t87) = t65;
    t66 = *((unsigned int *)t87);
    t67 = (t66 != 0);
    if (t67 == 1)
        goto LAB90;

LAB91:
LAB92:    goto LAB81;

LAB82:    *((unsigned int *)t34) = 1;
    goto LAB85;

LAB86:    *((unsigned int *)t41) = 1;
    goto LAB89;

LAB88:    t63 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t63) = 1;
    goto LAB89;

LAB90:    t68 = *((unsigned int *)t49);
    t69 = *((unsigned int *)t87);
    *((unsigned int *)t49) = (t68 | t69);
    t88 = (t30 + 4);
    t89 = (t41 + 4);
    t70 = *((unsigned int *)t30);
    t71 = (~(t70));
    t72 = *((unsigned int *)t88);
    t75 = (~(t72));
    t76 = *((unsigned int *)t41);
    t77 = (~(t76));
    t78 = *((unsigned int *)t89);
    t79 = (~(t78));
    t73 = (t71 & t75);
    t74 = (t77 & t79);
    t80 = (~(t73));
    t82 = (~(t74));
    t83 = *((unsigned int *)t87);
    *((unsigned int *)t87) = (t83 & t80);
    t84 = *((unsigned int *)t87);
    *((unsigned int *)t87) = (t84 & t82);
    t85 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t85 & t80);
    t86 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t86 & t82);
    goto LAB92;

LAB93:    xsi_set_current_line(51, ng0);

LAB96:    xsi_set_current_line(52, ng0);
    t96 = ((char*)((ng1)));
    t97 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t97, t96, 0, 0, 1, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);

LAB97:    t2 = ((char*)((ng2)));
    t73 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t73 == 1)
        goto LAB98;

LAB99:    t2 = ((char*)((ng7)));
    t73 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t73 == 1)
        goto LAB100;

LAB101:    t2 = ((char*)((ng8)));
    t73 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t73 == 1)
        goto LAB102;

LAB103:    t2 = ((char*)((ng10)));
    t73 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t73 == 1)
        goto LAB104;

LAB105:
LAB107:
LAB106:    xsi_set_current_line(72, ng0);

LAB113:    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);

LAB108:    goto LAB95;

LAB98:    xsi_set_current_line(54, ng0);

LAB109:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 1048U);
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
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng6)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB108;

LAB100:    xsi_set_current_line(58, ng0);

LAB110:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    xsi_vlog_unsigned_multiply(t98, 64, t5, 32, t7, 32);
    t4 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t4, t98, 0, 0, 32, 0LL);
    t8 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t8, t98, 32, 0, 32, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng6)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB108;

LAB102:    xsi_set_current_line(62, ng0);

LAB111:    xsi_set_current_line(63, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t34, 0, 8);
    xsi_vlog_signed_mod(t34, 32, t5, 32, t7, 32);
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t34, 0, 0, 32, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    memset(t34, 0, 8);
    xsi_vlog_signed_divide(t34, 32, t4, 32, t5, 32);
    t2 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t2, t34, 0, 0, 32, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng9)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB108;

LAB104:    xsi_set_current_line(67, ng0);

LAB112:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_mod(t6, 32, t5, 32, t7, 32);
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t6, 0, 0, 32, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_divide(t6, 32, t4, 32, t5, 32);
    t2 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t2, t6, 0, 0, 32, 0LL);
    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng9)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB108;

LAB117:    t22 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB118;

LAB119:    xsi_set_current_line(83, ng0);

LAB122:    xsi_set_current_line(84, ng0);
    t29 = ((char*)((ng5)));
    t40 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t40, t29, 0, 0, 4, 0LL);
    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 3048);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t7, t5, 0, 0, 32, 0LL);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3208);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t7, t5, 0, 0, 32, 0LL);
    goto LAB121;

}


extern void work_m_00000000004250625945_0569075053_init()
{
	static char *pe[] = {(void *)Always_37_0};
	xsi_register_didat("work_m_00000000004250625945_0569075053", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000004250625945_0569075053.didat");
	xsi_register_executes(pe);
}
