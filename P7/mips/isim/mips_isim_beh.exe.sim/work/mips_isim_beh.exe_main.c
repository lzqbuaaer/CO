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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002275449909_3037777339_init();
    work_m_00000000003493904452_1119861224_init();
    work_m_00000000002445753696_4223490419_init();
    work_m_00000000002593538079_3383896982_init();
    work_m_00000000001478563682_1795233284_init();
    work_m_00000000002516181344_3146453351_init();
    work_m_00000000002838135823_4127636709_init();
    work_m_00000000002463011589_4241813833_init();
    work_m_00000000000993309812_3363942390_init();
    work_m_00000000002321574158_0464101055_init();
    work_m_00000000000385458527_2725559894_init();
    work_m_00000000004250625945_0569075053_init();
    work_m_00000000002320733707_3766814427_init();
    work_m_00000000000112994174_1367926016_init();
    work_m_00000000003472784993_3383327949_init();
    work_m_00000000000948009584_2475441715_init();
    work_m_00000000003506054740_1093763706_init();
    work_m_00000000003194784231_0646318997_init();
    work_m_00000000002378335131_1200043877_init();
    work_m_00000000000308397918_0249777441_init();
    work_m_00000000000056312757_0053799672_init();
    work_m_00000000001142458865_3877310806_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001142458865_3877310806");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
