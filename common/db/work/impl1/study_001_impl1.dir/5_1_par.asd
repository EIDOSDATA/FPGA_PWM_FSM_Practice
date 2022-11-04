[ActiveSupport PAR]
; Global primary clocks
GLOBAL_PRIMARY_USED = 1;
; Global primary clock #0
GLOBAL_PRIMARY_0_SIGNALNAME = w_div4_clk;
GLOBAL_PRIMARY_0_DRIVERTYPE = SLICE;
GLOBAL_PRIMARY_0_LOADNUM = 30;
; # of global secondary clocks
GLOBAL_SECONDARY_USED = 3;
; Global secondary clock #0
GLOBAL_SECONDARY_0_SIGNALNAME = sw1_az;
GLOBAL_SECONDARY_0_DRIVERTYPE = CLK_PIN;
GLOBAL_SECONDARY_0_LOADNUM = 7;
GLOBAL_SECONDARY_0_SIGTYPE = CLK;
; Global secondary clock #1
GLOBAL_SECONDARY_1_SIGNALNAME = u_cg_fsm.c_cathod_phase_en_0_sqmuxa;
GLOBAL_SECONDARY_1_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_1_LOADNUM = 16;
GLOBAL_SECONDARY_1_SIGTYPE = CE;
; Global secondary clock #2
GLOBAL_SECONDARY_2_SIGNALNAME = u_cg_fsm/un1_i_polarity_1;
GLOBAL_SECONDARY_2_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_2_LOADNUM = 16;
GLOBAL_SECONDARY_2_SIGTYPE = CE;
; I/O Bank 0 Usage
BANK_0_USED = 13;
BANK_0_AVAIL = 19;
BANK_0_VCCIO = 3.3V;
BANK_0_VREF1 = NA;
; I/O Bank 1 Usage
BANK_1_USED = 17;
BANK_1_AVAIL = 21;
BANK_1_VCCIO = 3.3V;
BANK_1_VREF1 = NA;
; I/O Bank 2 Usage
BANK_2_USED = 20;
BANK_2_AVAIL = 20;
BANK_2_VCCIO = 3.3V;
BANK_2_VREF1 = NA;
; I/O Bank 3 Usage
BANK_3_USED = 3;
BANK_3_AVAIL = 6;
BANK_3_VCCIO = 3.3V;
BANK_3_VREF1 = NA;
; I/O Bank 4 Usage
BANK_4_USED = 6;
BANK_4_AVAIL = 6;
BANK_4_VCCIO = 3.3V;
BANK_4_VREF1 = NA;
; I/O Bank 5 Usage
BANK_5_USED = 6;
BANK_5_AVAIL = 8;
BANK_5_VCCIO = 3.3V;
BANK_5_VREF1 = NA;