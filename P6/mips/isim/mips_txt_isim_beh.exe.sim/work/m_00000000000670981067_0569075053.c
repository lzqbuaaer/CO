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
static const char *ng0 = "D:/lzq123/co/P6/mips/mudi.v";
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



static void Always_36_0(char *t0)
{
    char t6[8];
    char t30[8];
    char t55[16];
    char t56[16];
    char t57[16];
    char t58[8];
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
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t53;
    int t54;

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 4288);
    *((int *)t2) = 1;
    t3 = (t0 + 4000);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
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

LAB11:    xsi_set_current_line(42, ng0);
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

LAB17:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(45, ng0);
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

LAB27:    xsi_set_current_line(48, ng0);

LAB30:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2728);
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

LAB36:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2728);
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
        goto LAB68;

LAB65:    if (t18 != 0)
        goto LAB67;

LAB66:    *((unsigned int *)t6) = 1;

LAB68:    t28 = (t6 + 4);
    t23 = *((unsigned int *)t28);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB69;

LAB70:    xsi_set_current_line(88, ng0);

LAB73:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2728);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_minus(t6, 32, t5, 4, t7, 32);
    t8 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t8, t6, 0, 0, 4, 0LL);

LAB71:
LAB37:
LAB28:
LAB20:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(37, ng0);

LAB13:    xsi_set_current_line(38, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 32, 0LL);
    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB12;

LAB16:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(42, ng0);

LAB21:    xsi_set_current_line(43, ng0);
    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    t21 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t21, t22, 0, 0, 32, 0LL);
    goto LAB20;

LAB24:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB25;

LAB26:    xsi_set_current_line(45, ng0);

LAB29:    xsi_set_current_line(46, ng0);
    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    t21 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t21, t22, 0, 0, 32, 0LL);
    goto LAB28;

LAB33:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB34;

LAB35:    xsi_set_current_line(49, ng0);

LAB38:    xsi_set_current_line(50, ng0);
    t28 = (t0 + 1528U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng1)));
    memset(t30, 0, 8);
    t31 = (t29 + 4);
    t32 = (t28 + 4);
    t33 = *((unsigned int *)t29);
    t34 = *((unsigned int *)t28);
    t35 = (t33 ^ t34);
    t36 = *((unsigned int *)t31);
    t37 = *((unsigned int *)t32);
    t38 = (t36 ^ t37);
    t39 = (t35 | t38);
    t40 = *((unsigned int *)t31);
    t41 = *((unsigned int *)t32);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB42;

LAB39:    if (t42 != 0)
        goto LAB41;

LAB40:    *((unsigned int *)t30) = 1;

LAB42:    t46 = (t30 + 4);
    t47 = *((unsigned int *)t46);
    t48 = (~(t47));
    t49 = *((unsigned int *)t30);
    t50 = (t49 & t48);
    t51 = (t50 != 0);
    if (t51 > 0)
        goto LAB43;

LAB44:    xsi_set_current_line(78, ng0);

LAB64:    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);

LAB45:    goto LAB37;

LAB41:    t45 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t45) = 1;
    goto LAB42;

LAB43:    xsi_set_current_line(50, ng0);

LAB46:    xsi_set_current_line(51, ng0);
    t52 = ((char*)((ng1)));
    t53 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t53, t52, 0, 0, 1, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);

LAB47:    t2 = ((char*)((ng2)));
    t54 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t54 == 1)
        goto LAB48;

LAB49:    t2 = ((char*)((ng7)));
    t54 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t54 == 1)
        goto LAB50;

LAB51:    t2 = ((char*)((ng8)));
    t54 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t54 == 1)
        goto LAB52;

LAB53:    t2 = ((char*)((ng10)));
    t54 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t54 == 1)
        goto LAB54;

LAB55:
LAB57:
LAB56:    xsi_set_current_line(71, ng0);

LAB63:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);

LAB58:    goto LAB45;

LAB48:    xsi_set_current_line(53, ng0);

LAB59:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    xsi_vlogtype_sign_extend(t55, 64, t5, 32);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    xsi_vlogtype_sign_extend(t56, 64, t7, 32);
    xsi_vlog_signed_multiply(t57, 64, t55, 64, t56, 64);
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t57, 0, 0, 32, 0LL);
    t8 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t8, t57, 32, 0, 32, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng6)));
    t4 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB58;

LAB50:    xsi_set_current_line(57, ng0);

LAB60:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    xsi_vlog_unsigned_multiply(t55, 64, t5, 32, t7, 32);
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t55, 0, 0, 32, 0LL);
    t8 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t8, t55, 32, 0, 32, 0LL);
    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng6)));
    t4 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB58;

LAB52:    xsi_set_current_line(61, ng0);

LAB61:    xsi_set_current_line(62, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t58, 0, 8);
    xsi_vlog_signed_mod(t58, 32, t5, 32, t7, 32);
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t58, 0, 0, 32, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    memset(t58, 0, 8);
    xsi_vlog_signed_divide(t58, 32, t4, 32, t5, 32);
    t2 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t2, t58, 0, 0, 32, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng9)));
    t4 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB58;

LAB54:    xsi_set_current_line(66, ng0);

LAB62:    xsi_set_current_line(67, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_mod(t6, 32, t5, 32, t7, 32);
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t6, 0, 0, 32, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_divide(t6, 32, t4, 32, t5, 32);
    t2 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t2, t6, 0, 0, 32, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng9)));
    t4 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB58;

LAB67:    t22 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB68;

LAB69:    xsi_set_current_line(82, ng0);

LAB72:    xsi_set_current_line(83, ng0);
    t29 = ((char*)((ng5)));
    t31 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t31, t29, 0, 0, 4, 0LL);
    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t7, t5, 0, 0, 32, 0LL);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 3048);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t7, t5, 0, 0, 32, 0LL);
    goto LAB71;

}


extern void work_m_00000000000670981067_0569075053_init()
{
	static char *pe[] = {(void *)Always_36_0};
	xsi_register_didat("work_m_00000000000670981067_0569075053", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000000670981067_0569075053.didat");
	xsi_register_executes(pe);
}
