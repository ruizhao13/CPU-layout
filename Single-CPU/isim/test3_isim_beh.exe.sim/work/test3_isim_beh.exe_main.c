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
    work_m_00000000000340648383_1733832700_init();
    work_m_00000000000136622347_2058220583_init();
    work_m_00000000000595725220_2138213552_init();
    work_m_00000000000175601434_3783644070_init();
    work_m_00000000002341936182_0091458257_init();
    work_m_00000000002341936182_1379683966_init();
    work_m_00000000003895378700_0886308060_init();
    work_m_00000000003493214355_0830747386_init();
    work_m_00000000002974164545_2461264495_init();
    work_m_00000000001318477185_0967961054_init();
    work_m_00000000000332219021_1711025897_init();
    work_m_00000000001829437244_1786693027_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001829437244_1786693027");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
