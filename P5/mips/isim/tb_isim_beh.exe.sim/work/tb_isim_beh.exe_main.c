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
    work_m_00000000003018877305_3037777339_init();
    work_m_00000000000003306283_1119861224_init();
    work_m_00000000002458764097_4223490419_init();
    work_m_00000000001905097937_3383896982_init();
    work_m_00000000002438954357_3037376393_init();
    work_m_00000000002492731855_1795233284_init();
    work_m_00000000002176616210_3146453351_init();
    work_m_00000000002838135823_4127636709_init();
    work_m_00000000002463011589_4241813833_init();
    work_m_00000000004014100077_3363942390_init();
    work_m_00000000000866995479_0464101055_init();
    work_m_00000000000437495223_2725559894_init();
    work_m_00000000003890740205_3766814427_init();
    work_m_00000000003632555253_0010801604_init();
    work_m_00000000000536701289_0646318997_init();
    work_m_00000000002510505358_3877310806_init();
    work_m_00000000002047498008_3671711236_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002047498008_3671711236");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
