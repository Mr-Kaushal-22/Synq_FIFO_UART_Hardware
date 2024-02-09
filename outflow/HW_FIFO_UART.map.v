
//
// Verific Verilog Description of module top
//

module top (Clock, Rx_Serial, f_full, f_empty, Tx_Active, Tx_Serial, 
            Tx_Done);
    input Clock /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input Rx_Serial /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output f_full /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output f_empty /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output Tx_Active /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output Tx_Serial /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output Tx_Done /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    
    
    wire \uart_rx_inst/r_Rx_Data , \uart_rx_inst/r_SM_Main[2] , \uart_rx_inst/r_Clock_Count[0] , 
        DV, \Byte[0] , \uart_rx_inst/r_Bit_Index[0] , \uart_rx_inst/r_SM_Main[1] , 
        \uart_rx_inst/r_SM_Main[0] , \uart_rx_inst/r_Clock_Count[1] , \uart_rx_inst/r_Clock_Count[2] , 
        \uart_rx_inst/r_Clock_Count[3] , \uart_rx_inst/r_Clock_Count[4] , 
        \uart_rx_inst/r_Clock_Count[5] , \uart_rx_inst/r_Clock_Count[6] , 
        \uart_rx_inst/r_Clock_Count[7] , \Byte[1] , \Byte[2] , \Byte[3] , 
        \Byte[4] , \Byte[5] , \Byte[6] , \Byte[7] , \uart_rx_inst/r_Bit_Index[1] , 
        \uart_rx_inst/r_Bit_Index[2] , \uart_tx_inst/r_Clock_Count[0] , 
        \uart_tx_inst/r_Bit_Index[0] , \uart_tx_inst/r_Tx_Data[0] , \uart_tx_inst/r_SM_Main[0] , 
        n37, n38, \uart_tx_inst/r_Clock_Count[1] , \uart_tx_inst/r_Clock_Count[2] , 
        \uart_tx_inst/r_Clock_Count[3] , \uart_tx_inst/r_Clock_Count[4] , 
        \uart_tx_inst/r_Clock_Count[5] , \uart_tx_inst/r_Clock_Count[6] , 
        \uart_tx_inst/r_Bit_Index[1] , \uart_tx_inst/r_Bit_Index[2] , \uart_tx_inst/r_Tx_Data[1] , 
        \uart_tx_inst/r_Tx_Data[2] , \uart_tx_inst/r_Tx_Data[3] , \uart_tx_inst/r_Tx_Data[4] , 
        \uart_tx_inst/r_Tx_Data[5] , \uart_tx_inst/r_Tx_Data[6] , \uart_tx_inst/r_Tx_Data[7] , 
        n56, \synq_fifo_inst/count[0] , \synq_fifo_inst/rd_ptr[0] , \synq_fifo_inst/wr_ptr[0] , 
        \synq_fifo_inst/n99 , \synq_fifo_inst/n98 , \synq_fifo_inst/n97 , 
        \synq_fifo_inst/n96 , \synq_fifo_inst/n95 , \synq_fifo_inst/n94 , 
        \synq_fifo_inst/n93 , \synq_fifo_inst/n92 , \synq_fifo_inst/count[1] , 
        \synq_fifo_inst/count[2] , \synq_fifo_inst/count[3] , \synq_fifo_inst/count[4] , 
        \synq_fifo_inst/count[5] , \synq_fifo_inst/count[6] , \synq_fifo_inst/count[7] , 
        \synq_fifo_inst/count[8] , \synq_fifo_inst/count[9] , \synq_fifo_inst/count[10] , 
        \synq_fifo_inst/count[11] , \synq_fifo_inst/count[12] , \synq_fifo_inst/count[13] , 
        \synq_fifo_inst/count[14] , \synq_fifo_inst/count[15] , \synq_fifo_inst/count[16] , 
        \synq_fifo_inst/count[17] , \synq_fifo_inst/count[18] , \synq_fifo_inst/count[19] , 
        \synq_fifo_inst/count[20] , \synq_fifo_inst/count[21] , \synq_fifo_inst/count[22] , 
        \synq_fifo_inst/count[23] , \synq_fifo_inst/count[24] , \synq_fifo_inst/count[25] , 
        \synq_fifo_inst/count[26] , \synq_fifo_inst/count[27] , \synq_fifo_inst/count[28] , 
        \synq_fifo_inst/count[29] , \synq_fifo_inst/count[30] , \synq_fifo_inst/count[31] , 
        \synq_fifo_inst/rd_ptr[1] , \synq_fifo_inst/rd_ptr[2] , \synq_fifo_inst/rd_ptr[3] , 
        \synq_fifo_inst/rd_ptr[4] , \synq_fifo_inst/n409 , \synq_fifo_inst/wr_ptr[1] , 
        \synq_fifo_inst/wr_ptr[2] , \synq_fifo_inst/wr_ptr[3] , \synq_fifo_inst/wr_ptr[4] , 
        \wr_dt[0] , wr, rd, \control_logic_inst/r_i_Byte[2] , \control_logic_inst/r_i_Byte[1] , 
        \control_logic_inst/r_i_Byte[0] , n114, n115, \wr_dt[1] , \wr_dt[2] , 
        \wr_dt[3] , \wr_dt[4] , \wr_dt[5] , \wr_dt[6] , \wr_dt[7] , 
        \control_logic_inst/r_i_Byte[3] , \control_logic_inst/r_i_Byte[4] , 
        \control_logic_inst/r_i_Byte[5] , \control_logic_inst/r_i_Byte[6] , 
        \control_logic_inst/r_i_Byte[7] , n128, n129, n130, n131, 
        n132, n133, n134, n135, n136, n137, n138, n139, n140, 
        n141, n142, n143, n144, n145, n146, n147, n148, n149, 
        n150, n151, n152, n153, n154, n155, n156, n157, n158, 
        n159, n160, n161, n162, n163, n164, n165, n166, n167, 
        n168, n169, n170, n171, n172, n173, n174, n175, n176, 
        n177, n178, n179, n180, n181, n182, n183, n184, n185, 
        n186, n187, n188, n189, n190, n191, n192, n193, n194, 
        n195, n196, n197, n198, n199, n200, n201, n202, n203, 
        n204, n205, n206, n207, n208, n209, n210, n211, n212, 
        n213, n214, n215, n216, n217, n218, n219, n220, n221, 
        n222, n223, n224, n225, n226, n227, n228, n229, n230, 
        n231, n232, n233, n234, n235, n236, n237, n238, n239, 
        n240, n241, n242, n243, n244, n245, \uart_rx_inst/r_Rx_Data_R , 
        \uart_rx_inst/n46 , \uart_rx_inst/n390 , \uart_rx_inst/n381 , 
        ceg_net48, \uart_rx_inst/n404 , ceg_net193, \uart_rx_inst/n449 , 
        \uart_rx_inst/n388 , ceg_net180, \uart_rx_inst/n374 , \uart_rx_inst/n378 , 
        \uart_rx_inst/n315 , \uart_rx_inst/n318 , \uart_rx_inst/n321 , 
        \uart_rx_inst/n324 , \uart_rx_inst/n327 , \uart_rx_inst/n330 , 
        \uart_rx_inst/n333 , \uart_rx_inst/n434 , \uart_rx_inst/n436 , 
        \uart_rx_inst/n438 , \uart_rx_inst/n440 , \uart_rx_inst/n442 , 
        \uart_rx_inst/n444 , \uart_rx_inst/n446 , \uart_rx_inst/n358 , 
        \uart_rx_inst/n362 , \uart_tx_inst/n371 , \uart_tx_inst/r_SM_Main[2] , 
        \uart_tx_inst/n347 , ceg_net195, \uart_tx_inst/n266 , \uart_tx_inst/n375 , 
        ceg_net191, \uart_tx_inst/r_SM_Main[1] , ceg_net189, \rd_dt[0] , 
        \uart_tx_inst/n426 , \uart_tx_inst/n367 , \uart_tx_inst/n298 , 
        \uart_tx_inst/n301 , \uart_tx_inst/n304 , \uart_tx_inst/n307 , 
        \uart_tx_inst/n310 , \uart_tx_inst/n313 , \uart_tx_inst/n320 , 
        \uart_tx_inst/n324 , \rd_dt[1] , \rd_dt[2] , \rd_dt[3] , \rd_dt[4] , 
        \rd_dt[5] , \rd_dt[6] , \rd_dt[7] , \uart_tx_inst/n291 , \uart_tx_inst/LessThan_8/n14 , 
        \uart_tx_inst/n408 , ceg_net125, \synq_fifo_inst/n90 , \synq_fifo_inst/n6 , 
        \synq_fifo_inst/n187 , \synq_fifo_inst/n186 , \synq_fifo_inst/n185 , 
        \synq_fifo_inst/n184 , \synq_fifo_inst/n183 , \synq_fifo_inst/n182 , 
        \synq_fifo_inst/n181 , \synq_fifo_inst/n180 , \synq_fifo_inst/n179 , 
        \synq_fifo_inst/n178 , \synq_fifo_inst/n177 , \synq_fifo_inst/n176 , 
        \synq_fifo_inst/n175 , \synq_fifo_inst/n174 , \synq_fifo_inst/n173 , 
        \synq_fifo_inst/n172 , \synq_fifo_inst/n171 , \synq_fifo_inst/n170 , 
        \synq_fifo_inst/n169 , \synq_fifo_inst/n168 , \synq_fifo_inst/n167 , 
        \synq_fifo_inst/n166 , \synq_fifo_inst/n165 , \synq_fifo_inst/n164 , 
        \synq_fifo_inst/n163 , \synq_fifo_inst/n162 , \synq_fifo_inst/n161 , 
        \synq_fifo_inst/n160 , \synq_fifo_inst/n159 , \synq_fifo_inst/n158 , 
        \synq_fifo_inst/n157 , \synq_fifo_inst/n349 , \synq_fifo_inst/n356 , 
        \synq_fifo_inst/n361 , \synq_fifo_inst/n366 , \synq_fifo_inst/n324 , 
        \synq_fifo_inst/n331 , \synq_fifo_inst/n336 , \synq_fifo_inst/n341 , 
        \control_logic_inst/equal_5/n15 , \Clock~O , n522, n478, n479, 
        n480, n481, n482, n483, n484, n485, n486, n487, n488, 
        n489, n490, n491, n492, n493, n494, n495, n496, n497, 
        n498, n499, n500, n501, n502, n503, n504, n505, n506, 
        n507, n508, n509, n510, n511, n512, n513, n514, n515, 
        n516, n517, n518, n519, n520, n521;
    
    EFX_FF \uart_rx_inst/r_Rx_Data~FF  (.D(\uart_rx_inst/r_Rx_Data_R ), .CE(1'b1), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Rx_Data )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(44)
    defparam \uart_rx_inst/r_Rx_Data~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Rx_Data~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_SM_Main[2]~FF  (.D(\uart_rx_inst/n46 ), .CE(1'b1), 
           .CLK(\Clock~O ), .SR(\uart_rx_inst/n390 ), .Q(\uart_rx_inst/r_SM_Main[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \uart_rx_inst/r_SM_Main[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .D_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[0]~FF  (.D(\uart_rx_inst/n381 ), .CE(ceg_net48), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \DV~FF  (.D(\uart_rx_inst/n404 ), .CE(ceg_net193), .CLK(\Clock~O ), 
           .SR(1'b0), .Q(DV)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \DV~FF .CLK_POLARITY = 1'b1;
    defparam \DV~FF .CE_POLARITY = 1'b0;
    defparam \DV~FF .SR_POLARITY = 1'b1;
    defparam \DV~FF .D_POLARITY = 1'b1;
    defparam \DV~FF .SR_SYNC = 1'b1;
    defparam \DV~FF .SR_VALUE = 1'b0;
    defparam \DV~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Byte[0]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n449 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\Byte[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \Byte[0]~FF .CLK_POLARITY = 1'b1;
    defparam \Byte[0]~FF .CE_POLARITY = 1'b1;
    defparam \Byte[0]~FF .SR_POLARITY = 1'b1;
    defparam \Byte[0]~FF .D_POLARITY = 1'b0;
    defparam \Byte[0]~FF .SR_SYNC = 1'b1;
    defparam \Byte[0]~FF .SR_VALUE = 1'b0;
    defparam \Byte[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Bit_Index[0]~FF  (.D(\uart_rx_inst/n388 ), .CE(ceg_net180), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Bit_Index[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_SM_Main[1]~FF  (.D(\uart_rx_inst/n374 ), .CE(1'b1), 
           .CLK(\Clock~O ), .SR(\uart_rx_inst/r_SM_Main[2] ), .Q(\uart_rx_inst/r_SM_Main[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \uart_rx_inst/r_SM_Main[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_SM_Main[0]~FF  (.D(\uart_rx_inst/n378 ), .CE(1'b1), 
           .CLK(\Clock~O ), .SR(\uart_rx_inst/r_SM_Main[2] ), .Q(\uart_rx_inst/r_SM_Main[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \uart_rx_inst/r_SM_Main[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Rx_Data_R~FF  (.D(Rx_Serial), .CE(1'b1), .CLK(\Clock~O ), 
           .SR(1'b0), .Q(\uart_rx_inst/r_Rx_Data_R )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(44)
    defparam \uart_rx_inst/r_Rx_Data_R~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .D_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[1]~FF  (.D(\uart_rx_inst/n315 ), .CE(ceg_net48), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[2]~FF  (.D(\uart_rx_inst/n318 ), .CE(ceg_net48), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[3]~FF  (.D(\uart_rx_inst/n321 ), .CE(ceg_net48), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[4]~FF  (.D(\uart_rx_inst/n324 ), .CE(ceg_net48), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[5]~FF  (.D(\uart_rx_inst/n327 ), .CE(ceg_net48), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[6]~FF  (.D(\uart_rx_inst/n330 ), .CE(ceg_net48), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[7]~FF  (.D(\uart_rx_inst/n333 ), .CE(ceg_net48), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Byte[1]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n434 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\Byte[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \Byte[1]~FF .CLK_POLARITY = 1'b1;
    defparam \Byte[1]~FF .CE_POLARITY = 1'b1;
    defparam \Byte[1]~FF .SR_POLARITY = 1'b1;
    defparam \Byte[1]~FF .D_POLARITY = 1'b0;
    defparam \Byte[1]~FF .SR_SYNC = 1'b1;
    defparam \Byte[1]~FF .SR_VALUE = 1'b0;
    defparam \Byte[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Byte[2]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n436 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\Byte[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \Byte[2]~FF .CLK_POLARITY = 1'b1;
    defparam \Byte[2]~FF .CE_POLARITY = 1'b1;
    defparam \Byte[2]~FF .SR_POLARITY = 1'b1;
    defparam \Byte[2]~FF .D_POLARITY = 1'b0;
    defparam \Byte[2]~FF .SR_SYNC = 1'b1;
    defparam \Byte[2]~FF .SR_VALUE = 1'b0;
    defparam \Byte[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Byte[3]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n438 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\Byte[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \Byte[3]~FF .CLK_POLARITY = 1'b1;
    defparam \Byte[3]~FF .CE_POLARITY = 1'b1;
    defparam \Byte[3]~FF .SR_POLARITY = 1'b1;
    defparam \Byte[3]~FF .D_POLARITY = 1'b0;
    defparam \Byte[3]~FF .SR_SYNC = 1'b1;
    defparam \Byte[3]~FF .SR_VALUE = 1'b0;
    defparam \Byte[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Byte[4]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n440 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\Byte[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \Byte[4]~FF .CLK_POLARITY = 1'b1;
    defparam \Byte[4]~FF .CE_POLARITY = 1'b1;
    defparam \Byte[4]~FF .SR_POLARITY = 1'b1;
    defparam \Byte[4]~FF .D_POLARITY = 1'b0;
    defparam \Byte[4]~FF .SR_SYNC = 1'b1;
    defparam \Byte[4]~FF .SR_VALUE = 1'b0;
    defparam \Byte[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Byte[5]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n442 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\Byte[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \Byte[5]~FF .CLK_POLARITY = 1'b1;
    defparam \Byte[5]~FF .CE_POLARITY = 1'b1;
    defparam \Byte[5]~FF .SR_POLARITY = 1'b1;
    defparam \Byte[5]~FF .D_POLARITY = 1'b0;
    defparam \Byte[5]~FF .SR_SYNC = 1'b1;
    defparam \Byte[5]~FF .SR_VALUE = 1'b0;
    defparam \Byte[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Byte[6]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n444 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\Byte[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \Byte[6]~FF .CLK_POLARITY = 1'b1;
    defparam \Byte[6]~FF .CE_POLARITY = 1'b1;
    defparam \Byte[6]~FF .SR_POLARITY = 1'b1;
    defparam \Byte[6]~FF .D_POLARITY = 1'b0;
    defparam \Byte[6]~FF .SR_SYNC = 1'b1;
    defparam \Byte[6]~FF .SR_VALUE = 1'b0;
    defparam \Byte[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Byte[7]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n446 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\Byte[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \Byte[7]~FF .CLK_POLARITY = 1'b1;
    defparam \Byte[7]~FF .CE_POLARITY = 1'b1;
    defparam \Byte[7]~FF .SR_POLARITY = 1'b1;
    defparam \Byte[7]~FF .D_POLARITY = 1'b0;
    defparam \Byte[7]~FF .SR_SYNC = 1'b1;
    defparam \Byte[7]~FF .SR_VALUE = 1'b0;
    defparam \Byte[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Bit_Index[1]~FF  (.D(\uart_rx_inst/n358 ), .CE(ceg_net180), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Bit_Index[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Bit_Index[2]~FF  (.D(\uart_rx_inst/n362 ), .CE(ceg_net180), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Bit_Index[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_rx.v(143)
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[0]~FF  (.D(\uart_tx_inst/n371 ), .CE(\uart_tx_inst/r_SM_Main[2] ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Tx_Done~FF  (.D(\uart_tx_inst/n347 ), .CE(ceg_net195), .CLK(\Clock~O ), 
           .SR(1'b0), .Q(Tx_Done)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \Tx_Done~FF .CLK_POLARITY = 1'b1;
    defparam \Tx_Done~FF .CE_POLARITY = 1'b0;
    defparam \Tx_Done~FF .SR_POLARITY = 1'b1;
    defparam \Tx_Done~FF .D_POLARITY = 1'b1;
    defparam \Tx_Done~FF .SR_SYNC = 1'b1;
    defparam \Tx_Done~FF .SR_VALUE = 1'b0;
    defparam \Tx_Done~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Tx_Serial~FF  (.D(\uart_tx_inst/n266 ), .CE(\uart_tx_inst/r_SM_Main[2] ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(Tx_Serial)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \Tx_Serial~FF .CLK_POLARITY = 1'b1;
    defparam \Tx_Serial~FF .CE_POLARITY = 1'b0;
    defparam \Tx_Serial~FF .SR_POLARITY = 1'b1;
    defparam \Tx_Serial~FF .D_POLARITY = 1'b1;
    defparam \Tx_Serial~FF .SR_SYNC = 1'b1;
    defparam \Tx_Serial~FF .SR_VALUE = 1'b0;
    defparam \Tx_Serial~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Bit_Index[0]~FF  (.D(\uart_tx_inst/n375 ), .CE(ceg_net191), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Bit_Index[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \Tx_Active~FF  (.D(\uart_tx_inst/r_SM_Main[1] ), .CE(ceg_net189), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(Tx_Active)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \Tx_Active~FF .CLK_POLARITY = 1'b1;
    defparam \Tx_Active~FF .CE_POLARITY = 1'b0;
    defparam \Tx_Active~FF .SR_POLARITY = 1'b1;
    defparam \Tx_Active~FF .D_POLARITY = 1'b0;
    defparam \Tx_Active~FF .SR_SYNC = 1'b1;
    defparam \Tx_Active~FF .SR_VALUE = 1'b0;
    defparam \Tx_Active~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Tx_Data[0]~FF  (.D(\rd_dt[0] ), .CE(\uart_tx_inst/n426 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Tx_Data[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Tx_Data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Tx_Data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_SM_Main[0]~FF  (.D(\uart_tx_inst/n367 ), .CE(1'b1), 
           .CLK(\Clock~O ), .SR(\uart_tx_inst/r_SM_Main[2] ), .Q(\uart_tx_inst/r_SM_Main[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_SM_Main[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[1]~FF  (.D(\uart_tx_inst/n298 ), .CE(\uart_tx_inst/r_SM_Main[2] ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[2]~FF  (.D(\uart_tx_inst/n301 ), .CE(\uart_tx_inst/r_SM_Main[2] ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[3]~FF  (.D(\uart_tx_inst/n304 ), .CE(\uart_tx_inst/r_SM_Main[2] ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[4]~FF  (.D(\uart_tx_inst/n307 ), .CE(\uart_tx_inst/r_SM_Main[2] ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[5]~FF  (.D(\uart_tx_inst/n310 ), .CE(\uart_tx_inst/r_SM_Main[2] ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[6]~FF  (.D(\uart_tx_inst/n313 ), .CE(\uart_tx_inst/r_SM_Main[2] ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Bit_Index[1]~FF  (.D(\uart_tx_inst/n320 ), .CE(ceg_net191), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Bit_Index[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Bit_Index[2]~FF  (.D(\uart_tx_inst/n324 ), .CE(ceg_net191), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Bit_Index[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Tx_Data[1]~FF  (.D(\rd_dt[1] ), .CE(\uart_tx_inst/n426 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Tx_Data[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Tx_Data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Tx_Data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Tx_Data[2]~FF  (.D(\rd_dt[2] ), .CE(\uart_tx_inst/n426 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Tx_Data[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Tx_Data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Tx_Data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Tx_Data[3]~FF  (.D(\rd_dt[3] ), .CE(\uart_tx_inst/n426 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Tx_Data[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Tx_Data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[3]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[3]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[3]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Tx_Data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Tx_Data[4]~FF  (.D(\rd_dt[4] ), .CE(\uart_tx_inst/n426 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Tx_Data[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Tx_Data[5]~FF  (.D(\rd_dt[5] ), .CE(\uart_tx_inst/n426 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Tx_Data[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Tx_Data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[5]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[5]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[5]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Tx_Data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Tx_Data[6]~FF  (.D(\rd_dt[6] ), .CE(\uart_tx_inst/n426 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Tx_Data[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Tx_Data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[6]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[6]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[6]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Tx_Data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Tx_Data[7]~FF  (.D(\rd_dt[7] ), .CE(\uart_tx_inst/n426 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Tx_Data[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_Tx_Data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[7]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[7]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[7]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Tx_Data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_SM_Main[1]~FF  (.D(\uart_tx_inst/n291 ), .CE(1'b1), 
           .CLK(\Clock~O ), .SR(\uart_tx_inst/r_SM_Main[2] ), .Q(\uart_tx_inst/r_SM_Main[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_SM_Main[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_SM_Main[2]~FF  (.D(\uart_tx_inst/LessThan_8/n14 ), 
           .CE(1'b1), .CLK(\Clock~O ), .SR(\uart_tx_inst/n408 ), .Q(\uart_tx_inst/r_SM_Main[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/uart_tx.v(138)
    defparam \uart_tx_inst/r_SM_Main[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .D_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[0]~FF  (.D(\synq_fifo_inst/count[0] ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[0]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[0]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[0]~FF .D_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[0]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[0]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/rd_ptr[0]~FF  (.D(\synq_fifo_inst/rd_ptr[0] ), 
           .CE(\synq_fifo_inst/n90 ), .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/rd_ptr[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/rd_ptr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[0]~FF .CE_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[0]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[0]~FF .D_POLARITY = 1'b0;
    defparam \synq_fifo_inst/rd_ptr[0]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[0]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/rd_ptr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/wr_ptr[0]~FF  (.D(\synq_fifo_inst/wr_ptr[0] ), 
           .CE(\synq_fifo_inst/n6 ), .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/wr_ptr[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/wr_ptr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[0]~FF .CE_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[0]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[0]~FF .D_POLARITY = 1'b0;
    defparam \synq_fifo_inst/wr_ptr[0]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[0]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/wr_ptr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[1]~FF  (.D(\synq_fifo_inst/n187 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[1]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[1]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[1]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[1]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[1]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[2]~FF  (.D(\synq_fifo_inst/n186 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[2]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[2]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[2]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[2]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[2]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[3]~FF  (.D(\synq_fifo_inst/n185 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[3]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[3]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[3]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[3]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[3]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[4]~FF  (.D(\synq_fifo_inst/n184 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[4]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[4]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[4]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[4]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[4]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[5]~FF  (.D(\synq_fifo_inst/n183 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[5]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[5]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[5]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[5]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[5]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[6]~FF  (.D(\synq_fifo_inst/n182 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[6]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[6]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[6]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[6]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[6]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[7]~FF  (.D(\synq_fifo_inst/n181 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[7]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[7]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[7]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[7]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[7]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[8]~FF  (.D(\synq_fifo_inst/n180 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[8]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[8]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[8]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[8]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[8]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[8]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[9]~FF  (.D(\synq_fifo_inst/n179 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[9]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[9]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[9]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[9]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[9]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[9]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[10]~FF  (.D(\synq_fifo_inst/n178 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[10]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[10]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[10]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[10]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[10]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[10]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[11]~FF  (.D(\synq_fifo_inst/n177 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[11]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[11]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[11]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[11]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[11]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[11]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[12]~FF  (.D(\synq_fifo_inst/n176 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[12]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[12]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[12]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[12]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[12]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[12]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[13]~FF  (.D(\synq_fifo_inst/n175 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[13]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[13]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[13]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[13]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[13]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[13]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[14]~FF  (.D(\synq_fifo_inst/n174 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[14]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[14]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[14]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[14]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[14]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[14]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[15]~FF  (.D(\synq_fifo_inst/n173 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[15]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[15]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[15]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[15]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[15]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[15]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[16]~FF  (.D(\synq_fifo_inst/n172 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[16]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[16]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[16]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[16]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[16]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[16]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[17]~FF  (.D(\synq_fifo_inst/n171 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[17] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[17]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[17]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[17]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[17]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[17]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[17]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[18]~FF  (.D(\synq_fifo_inst/n170 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[18] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[18]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[18]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[18]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[18]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[18]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[18]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[19]~FF  (.D(\synq_fifo_inst/n169 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[19] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[19]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[19]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[19]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[19]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[19]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[19]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[20]~FF  (.D(\synq_fifo_inst/n168 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[20] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[20]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[20]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[20]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[20]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[20]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[20]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[21]~FF  (.D(\synq_fifo_inst/n167 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[21] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[21]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[21]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[21]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[21]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[21]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[21]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[22]~FF  (.D(\synq_fifo_inst/n166 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[22] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[22]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[22]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[22]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[22]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[22]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[22]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[23]~FF  (.D(\synq_fifo_inst/n165 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[23] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[23]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[23]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[23]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[23]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[23]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[23]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[24]~FF  (.D(\synq_fifo_inst/n164 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[24] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[24]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[24]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[24]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[24]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[24]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[24]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[25]~FF  (.D(\synq_fifo_inst/n163 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[25] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[25]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[25]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[25]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[25]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[25]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[25]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[26]~FF  (.D(\synq_fifo_inst/n162 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[26] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[26]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[26]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[26]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[26]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[26]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[26]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[27]~FF  (.D(\synq_fifo_inst/n161 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[27] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[27]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[27]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[27]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[27]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[27]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[27]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[28]~FF  (.D(\synq_fifo_inst/n160 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[28] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[28]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[28]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[28]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[28]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[28]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[28]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[29]~FF  (.D(\synq_fifo_inst/n159 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[29] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[29]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[29]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[29]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[29]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[29]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[29]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[30]~FF  (.D(\synq_fifo_inst/n158 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[30] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[30]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[30]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[30]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[30]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[30]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[30]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/count[31]~FF  (.D(\synq_fifo_inst/n157 ), .CE(ceg_net125), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/count[31] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/count[31]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[31]~FF .CE_POLARITY = 1'b0;
    defparam \synq_fifo_inst/count[31]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[31]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/count[31]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/count[31]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/count[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/rd_ptr[1]~FF  (.D(\synq_fifo_inst/n349 ), .CE(\synq_fifo_inst/n90 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/rd_ptr[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/rd_ptr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[1]~FF .CE_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[1]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[1]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[1]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[1]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/rd_ptr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/rd_ptr[2]~FF  (.D(\synq_fifo_inst/n356 ), .CE(\synq_fifo_inst/n90 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/rd_ptr[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/rd_ptr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[2]~FF .CE_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[2]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[2]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[2]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[2]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/rd_ptr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/rd_ptr[3]~FF  (.D(\synq_fifo_inst/n361 ), .CE(\synq_fifo_inst/n90 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/rd_ptr[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/rd_ptr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[3]~FF .CE_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[3]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[3]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[3]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[3]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/rd_ptr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/rd_ptr[4]~FF  (.D(\synq_fifo_inst/n366 ), .CE(\synq_fifo_inst/n90 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/rd_ptr[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/rd_ptr[4]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[4]~FF .CE_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[4]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[4]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[4]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/rd_ptr[4]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/rd_ptr[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/n409~FF  (.D(1'b0), .CE(\synq_fifo_inst/n90 ), 
           .CLK(\Clock~O ), .SR(f_empty), .Q(\synq_fifo_inst/n409 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(38)
    defparam \synq_fifo_inst/n409~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/n409~FF .CE_POLARITY = 1'b1;
    defparam \synq_fifo_inst/n409~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/n409~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/n409~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/n409~FF .SR_VALUE = 1'b1;
    defparam \synq_fifo_inst/n409~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/wr_ptr[1]~FF  (.D(\synq_fifo_inst/n324 ), .CE(\synq_fifo_inst/n6 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/wr_ptr[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/wr_ptr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[1]~FF .CE_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[1]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[1]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[1]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[1]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/wr_ptr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/wr_ptr[2]~FF  (.D(\synq_fifo_inst/n331 ), .CE(\synq_fifo_inst/n6 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/wr_ptr[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/wr_ptr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[2]~FF .CE_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[2]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[2]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[2]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[2]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/wr_ptr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/wr_ptr[3]~FF  (.D(\synq_fifo_inst/n336 ), .CE(\synq_fifo_inst/n6 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/wr_ptr[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/wr_ptr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[3]~FF .CE_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[3]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[3]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[3]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[3]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/wr_ptr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \synq_fifo_inst/wr_ptr[4]~FF  (.D(\synq_fifo_inst/n341 ), .CE(\synq_fifo_inst/n6 ), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\synq_fifo_inst/wr_ptr[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(48)
    defparam \synq_fifo_inst/wr_ptr[4]~FF .CLK_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[4]~FF .CE_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[4]~FF .SR_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[4]~FF .D_POLARITY = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[4]~FF .SR_SYNC = 1'b1;
    defparam \synq_fifo_inst/wr_ptr[4]~FF .SR_VALUE = 1'b0;
    defparam \synq_fifo_inst/wr_ptr[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \wr_dt[0]~FF  (.D(\Byte[0] ), .CE(\control_logic_inst/equal_5/n15 ), 
           .CLK(\Clock~O ), .SR(DV), .Q(\wr_dt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \wr_dt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \wr_dt[0]~FF .CE_POLARITY = 1'b1;
    defparam \wr_dt[0]~FF .SR_POLARITY = 1'b0;
    defparam \wr_dt[0]~FF .D_POLARITY = 1'b1;
    defparam \wr_dt[0]~FF .SR_SYNC = 1'b1;
    defparam \wr_dt[0]~FF .SR_VALUE = 1'b0;
    defparam \wr_dt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \wr~FF  (.D(1'b1), .CE(\control_logic_inst/equal_5/n15 ), .CLK(\Clock~O ), 
           .SR(DV), .Q(wr)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \wr~FF .CLK_POLARITY = 1'b1;
    defparam \wr~FF .CE_POLARITY = 1'b1;
    defparam \wr~FF .SR_POLARITY = 1'b0;
    defparam \wr~FF .D_POLARITY = 1'b1;
    defparam \wr~FF .SR_SYNC = 1'b1;
    defparam \wr~FF .SR_VALUE = 1'b0;
    defparam \wr~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rd~FF  (.D(1'b1), .CE(\control_logic_inst/equal_5/n15 ), .CLK(\Clock~O ), 
           .SR(DV), .Q(rd)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \rd~FF .CLK_POLARITY = 1'b1;
    defparam \rd~FF .CE_POLARITY = 1'b0;
    defparam \rd~FF .SR_POLARITY = 1'b0;
    defparam \rd~FF .D_POLARITY = 1'b1;
    defparam \rd~FF .SR_SYNC = 1'b1;
    defparam \rd~FF .SR_VALUE = 1'b0;
    defparam \rd~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \control_logic_inst/r_i_Byte[2]~FF  (.D(\Byte[2] ), .CE(1'b1), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\control_logic_inst/r_i_Byte[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \control_logic_inst/r_i_Byte[2]~FF .CLK_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[2]~FF .CE_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[2]~FF .SR_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[2]~FF .D_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[2]~FF .SR_SYNC = 1'b1;
    defparam \control_logic_inst/r_i_Byte[2]~FF .SR_VALUE = 1'b0;
    defparam \control_logic_inst/r_i_Byte[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \control_logic_inst/r_i_Byte[1]~FF  (.D(\Byte[1] ), .CE(1'b1), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\control_logic_inst/r_i_Byte[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \control_logic_inst/r_i_Byte[1]~FF .CLK_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[1]~FF .CE_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[1]~FF .SR_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[1]~FF .D_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[1]~FF .SR_SYNC = 1'b1;
    defparam \control_logic_inst/r_i_Byte[1]~FF .SR_VALUE = 1'b0;
    defparam \control_logic_inst/r_i_Byte[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \control_logic_inst/r_i_Byte[0]~FF  (.D(\Byte[0] ), .CE(1'b1), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\control_logic_inst/r_i_Byte[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \control_logic_inst/r_i_Byte[0]~FF .CLK_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[0]~FF .CE_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[0]~FF .SR_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[0]~FF .D_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[0]~FF .SR_SYNC = 1'b1;
    defparam \control_logic_inst/r_i_Byte[0]~FF .SR_VALUE = 1'b0;
    defparam \control_logic_inst/r_i_Byte[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \wr_dt[1]~FF  (.D(\Byte[1] ), .CE(\control_logic_inst/equal_5/n15 ), 
           .CLK(\Clock~O ), .SR(DV), .Q(\wr_dt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \wr_dt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \wr_dt[1]~FF .CE_POLARITY = 1'b1;
    defparam \wr_dt[1]~FF .SR_POLARITY = 1'b0;
    defparam \wr_dt[1]~FF .D_POLARITY = 1'b1;
    defparam \wr_dt[1]~FF .SR_SYNC = 1'b1;
    defparam \wr_dt[1]~FF .SR_VALUE = 1'b0;
    defparam \wr_dt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \wr_dt[2]~FF  (.D(\Byte[2] ), .CE(\control_logic_inst/equal_5/n15 ), 
           .CLK(\Clock~O ), .SR(DV), .Q(\wr_dt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \wr_dt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \wr_dt[2]~FF .CE_POLARITY = 1'b1;
    defparam \wr_dt[2]~FF .SR_POLARITY = 1'b0;
    defparam \wr_dt[2]~FF .D_POLARITY = 1'b1;
    defparam \wr_dt[2]~FF .SR_SYNC = 1'b1;
    defparam \wr_dt[2]~FF .SR_VALUE = 1'b0;
    defparam \wr_dt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \wr_dt[3]~FF  (.D(\Byte[3] ), .CE(\control_logic_inst/equal_5/n15 ), 
           .CLK(\Clock~O ), .SR(DV), .Q(\wr_dt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \wr_dt[3]~FF .CLK_POLARITY = 1'b1;
    defparam \wr_dt[3]~FF .CE_POLARITY = 1'b1;
    defparam \wr_dt[3]~FF .SR_POLARITY = 1'b0;
    defparam \wr_dt[3]~FF .D_POLARITY = 1'b1;
    defparam \wr_dt[3]~FF .SR_SYNC = 1'b1;
    defparam \wr_dt[3]~FF .SR_VALUE = 1'b0;
    defparam \wr_dt[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \wr_dt[4]~FF  (.D(\Byte[4] ), .CE(\control_logic_inst/equal_5/n15 ), 
           .CLK(\Clock~O ), .SR(DV), .Q(\wr_dt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \wr_dt[4]~FF .CLK_POLARITY = 1'b1;
    defparam \wr_dt[4]~FF .CE_POLARITY = 1'b1;
    defparam \wr_dt[4]~FF .SR_POLARITY = 1'b0;
    defparam \wr_dt[4]~FF .D_POLARITY = 1'b1;
    defparam \wr_dt[4]~FF .SR_SYNC = 1'b1;
    defparam \wr_dt[4]~FF .SR_VALUE = 1'b0;
    defparam \wr_dt[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \wr_dt[5]~FF  (.D(\Byte[5] ), .CE(\control_logic_inst/equal_5/n15 ), 
           .CLK(\Clock~O ), .SR(DV), .Q(\wr_dt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \wr_dt[5]~FF .CLK_POLARITY = 1'b1;
    defparam \wr_dt[5]~FF .CE_POLARITY = 1'b1;
    defparam \wr_dt[5]~FF .SR_POLARITY = 1'b0;
    defparam \wr_dt[5]~FF .D_POLARITY = 1'b1;
    defparam \wr_dt[5]~FF .SR_SYNC = 1'b1;
    defparam \wr_dt[5]~FF .SR_VALUE = 1'b0;
    defparam \wr_dt[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \wr_dt[6]~FF  (.D(\Byte[6] ), .CE(\control_logic_inst/equal_5/n15 ), 
           .CLK(\Clock~O ), .SR(DV), .Q(\wr_dt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \wr_dt[6]~FF .CLK_POLARITY = 1'b1;
    defparam \wr_dt[6]~FF .CE_POLARITY = 1'b1;
    defparam \wr_dt[6]~FF .SR_POLARITY = 1'b0;
    defparam \wr_dt[6]~FF .D_POLARITY = 1'b1;
    defparam \wr_dt[6]~FF .SR_SYNC = 1'b1;
    defparam \wr_dt[6]~FF .SR_VALUE = 1'b0;
    defparam \wr_dt[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \wr_dt[7]~FF  (.D(\Byte[7] ), .CE(\control_logic_inst/equal_5/n15 ), 
           .CLK(\Clock~O ), .SR(DV), .Q(\wr_dt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \wr_dt[7]~FF .CLK_POLARITY = 1'b1;
    defparam \wr_dt[7]~FF .CE_POLARITY = 1'b1;
    defparam \wr_dt[7]~FF .SR_POLARITY = 1'b0;
    defparam \wr_dt[7]~FF .D_POLARITY = 1'b1;
    defparam \wr_dt[7]~FF .SR_SYNC = 1'b1;
    defparam \wr_dt[7]~FF .SR_VALUE = 1'b0;
    defparam \wr_dt[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \control_logic_inst/r_i_Byte[3]~FF  (.D(\Byte[3] ), .CE(1'b1), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\control_logic_inst/r_i_Byte[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \control_logic_inst/r_i_Byte[3]~FF .CLK_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[3]~FF .CE_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[3]~FF .SR_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[3]~FF .D_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[3]~FF .SR_SYNC = 1'b1;
    defparam \control_logic_inst/r_i_Byte[3]~FF .SR_VALUE = 1'b0;
    defparam \control_logic_inst/r_i_Byte[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \control_logic_inst/r_i_Byte[4]~FF  (.D(\Byte[4] ), .CE(1'b1), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\control_logic_inst/r_i_Byte[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \control_logic_inst/r_i_Byte[4]~FF .CLK_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[4]~FF .CE_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[4]~FF .SR_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[4]~FF .D_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[4]~FF .SR_SYNC = 1'b1;
    defparam \control_logic_inst/r_i_Byte[4]~FF .SR_VALUE = 1'b0;
    defparam \control_logic_inst/r_i_Byte[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \control_logic_inst/r_i_Byte[5]~FF  (.D(\Byte[5] ), .CE(1'b1), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\control_logic_inst/r_i_Byte[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \control_logic_inst/r_i_Byte[5]~FF .CLK_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[5]~FF .CE_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[5]~FF .SR_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[5]~FF .D_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[5]~FF .SR_SYNC = 1'b1;
    defparam \control_logic_inst/r_i_Byte[5]~FF .SR_VALUE = 1'b0;
    defparam \control_logic_inst/r_i_Byte[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \control_logic_inst/r_i_Byte[6]~FF  (.D(\Byte[6] ), .CE(1'b1), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\control_logic_inst/r_i_Byte[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \control_logic_inst/r_i_Byte[6]~FF .CLK_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[6]~FF .CE_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[6]~FF .SR_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[6]~FF .D_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[6]~FF .SR_SYNC = 1'b1;
    defparam \control_logic_inst/r_i_Byte[6]~FF .SR_VALUE = 1'b0;
    defparam \control_logic_inst/r_i_Byte[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \control_logic_inst/r_i_Byte[7]~FF  (.D(\Byte[7] ), .CE(1'b1), 
           .CLK(\Clock~O ), .SR(1'b0), .Q(\control_logic_inst/r_i_Byte[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/control_logic.v(34)
    defparam \control_logic_inst/r_i_Byte[7]~FF .CLK_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[7]~FF .CE_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[7]~FF .SR_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[7]~FF .D_POLARITY = 1'b1;
    defparam \control_logic_inst/r_i_Byte[7]~FF .SR_SYNC = 1'b1;
    defparam \control_logic_inst/r_i_Byte[7]~FF .SR_VALUE = 1'b0;
    defparam \control_logic_inst/r_i_Byte[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i2  (.I0(\synq_fifo_inst/count[2] ), .I1(1'b0), 
            .CI(n115), .O(n37), .CO(n38)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i2 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i1  (.I0(\synq_fifo_inst/count[0] ), 
            .I1(1'b0), .CI(n522), .CO(n56)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i1  (.I0(\synq_fifo_inst/count[1] ), .I1(\synq_fifo_inst/count[0] ), 
            .CI(1'b0), .O(n114), .CO(n115)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i1 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i32  (.I0(\synq_fifo_inst/count[31] ), 
            .I1(1'b1), .CI(n130), .O(n128)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i32 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i31  (.I0(\synq_fifo_inst/count[30] ), 
            .I1(1'b1), .CI(n132), .O(n129), .CO(n130)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i31 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i30  (.I0(\synq_fifo_inst/count[29] ), 
            .I1(1'b1), .CI(n134), .O(n131), .CO(n132)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i30 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i29  (.I0(\synq_fifo_inst/count[28] ), 
            .I1(1'b1), .CI(n136), .O(n133), .CO(n134)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i29 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i28  (.I0(\synq_fifo_inst/count[27] ), 
            .I1(1'b1), .CI(n138), .O(n135), .CO(n136)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i28 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i27  (.I0(\synq_fifo_inst/count[26] ), 
            .I1(1'b1), .CI(n140), .O(n137), .CO(n138)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i27 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i26  (.I0(\synq_fifo_inst/count[25] ), 
            .I1(1'b1), .CI(n142), .O(n139), .CO(n140)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i26 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i25  (.I0(\synq_fifo_inst/count[24] ), 
            .I1(1'b1), .CI(n144), .O(n141), .CO(n142)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i25 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i24  (.I0(\synq_fifo_inst/count[23] ), 
            .I1(1'b1), .CI(n146), .O(n143), .CO(n144)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i24 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i23  (.I0(\synq_fifo_inst/count[22] ), 
            .I1(1'b1), .CI(n148), .O(n145), .CO(n146)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i23 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i22  (.I0(\synq_fifo_inst/count[21] ), 
            .I1(1'b1), .CI(n150), .O(n147), .CO(n148)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i22 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i21  (.I0(\synq_fifo_inst/count[20] ), 
            .I1(1'b1), .CI(n152), .O(n149), .CO(n150)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i21 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i20  (.I0(\synq_fifo_inst/count[19] ), 
            .I1(1'b1), .CI(n154), .O(n151), .CO(n152)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i20 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i19  (.I0(\synq_fifo_inst/count[18] ), 
            .I1(1'b1), .CI(n156), .O(n153), .CO(n154)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i19 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i18  (.I0(\synq_fifo_inst/count[17] ), 
            .I1(1'b1), .CI(n158), .O(n155), .CO(n156)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i18 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i17  (.I0(\synq_fifo_inst/count[16] ), 
            .I1(1'b1), .CI(n160), .O(n157), .CO(n158)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i17 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i16  (.I0(\synq_fifo_inst/count[15] ), 
            .I1(1'b1), .CI(n162), .O(n159), .CO(n160)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i16 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i15  (.I0(\synq_fifo_inst/count[14] ), 
            .I1(1'b1), .CI(n164), .O(n161), .CO(n162)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i15 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i14  (.I0(\synq_fifo_inst/count[13] ), 
            .I1(1'b1), .CI(n166), .O(n163), .CO(n164)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i14 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i13  (.I0(\synq_fifo_inst/count[12] ), 
            .I1(1'b1), .CI(n168), .O(n165), .CO(n166)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i13 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i12  (.I0(\synq_fifo_inst/count[11] ), 
            .I1(1'b1), .CI(n170), .O(n167), .CO(n168)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i12 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i11  (.I0(\synq_fifo_inst/count[10] ), 
            .I1(1'b1), .CI(n172), .O(n169), .CO(n170)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i11 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i10  (.I0(\synq_fifo_inst/count[9] ), 
            .I1(1'b1), .CI(n174), .O(n171), .CO(n172)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i10 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i9  (.I0(\synq_fifo_inst/count[8] ), 
            .I1(1'b1), .CI(n176), .O(n173), .CO(n174)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i9 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i8  (.I0(\synq_fifo_inst/count[7] ), 
            .I1(1'b1), .CI(n178), .O(n175), .CO(n176)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i8 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i7  (.I0(\synq_fifo_inst/count[6] ), 
            .I1(1'b1), .CI(n180), .O(n177), .CO(n178)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i7 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i6  (.I0(\synq_fifo_inst/count[5] ), 
            .I1(1'b1), .CI(n182), .O(n179), .CO(n180)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i6 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i5  (.I0(\synq_fifo_inst/count[4] ), 
            .I1(1'b1), .CI(n184), .O(n181), .CO(n182)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i5 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i4  (.I0(\synq_fifo_inst/count[3] ), 
            .I1(1'b1), .CI(n186), .O(n183), .CO(n184)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i4 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i3  (.I0(\synq_fifo_inst/count[2] ), 
            .I1(1'b1), .CI(n188), .O(n185), .CO(n186)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i3 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/sub_16/add_2/i2  (.I0(\synq_fifo_inst/count[1] ), 
            .I1(1'b1), .CI(n56), .O(n187), .CO(n188)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \synq_fifo_inst/sub_16/add_2/i2 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/sub_16/add_2/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i31  (.I0(\synq_fifo_inst/count[31] ), 
            .I1(1'b0), .CI(n191), .O(n189)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i31 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i30  (.I0(\synq_fifo_inst/count[30] ), 
            .I1(1'b0), .CI(n193), .O(n190), .CO(n191)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i30 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i29  (.I0(\synq_fifo_inst/count[29] ), 
            .I1(1'b0), .CI(n195), .O(n192), .CO(n193)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i29 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i28  (.I0(\synq_fifo_inst/count[28] ), 
            .I1(1'b0), .CI(n197), .O(n194), .CO(n195)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i28 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i27  (.I0(\synq_fifo_inst/count[27] ), 
            .I1(1'b0), .CI(n199), .O(n196), .CO(n197)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i27 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i26  (.I0(\synq_fifo_inst/count[26] ), 
            .I1(1'b0), .CI(n201), .O(n198), .CO(n199)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i26 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i25  (.I0(\synq_fifo_inst/count[25] ), 
            .I1(1'b0), .CI(n203), .O(n200), .CO(n201)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i25 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i24  (.I0(\synq_fifo_inst/count[24] ), 
            .I1(1'b0), .CI(n205), .O(n202), .CO(n203)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i24 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i23  (.I0(\synq_fifo_inst/count[23] ), 
            .I1(1'b0), .CI(n207), .O(n204), .CO(n205)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i23 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i22  (.I0(\synq_fifo_inst/count[22] ), 
            .I1(1'b0), .CI(n209), .O(n206), .CO(n207)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i22 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i21  (.I0(\synq_fifo_inst/count[21] ), 
            .I1(1'b0), .CI(n211), .O(n208), .CO(n209)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i21 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i20  (.I0(\synq_fifo_inst/count[20] ), 
            .I1(1'b0), .CI(n213), .O(n210), .CO(n211)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i20 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i19  (.I0(\synq_fifo_inst/count[19] ), 
            .I1(1'b0), .CI(n215), .O(n212), .CO(n213)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i19 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i18  (.I0(\synq_fifo_inst/count[18] ), 
            .I1(1'b0), .CI(n217), .O(n214), .CO(n215)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i18 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i17  (.I0(\synq_fifo_inst/count[17] ), 
            .I1(1'b0), .CI(n219), .O(n216), .CO(n217)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i17 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i16  (.I0(\synq_fifo_inst/count[16] ), 
            .I1(1'b0), .CI(n221), .O(n218), .CO(n219)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i16 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i15  (.I0(\synq_fifo_inst/count[15] ), 
            .I1(1'b0), .CI(n223), .O(n220), .CO(n221)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i15 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i14  (.I0(\synq_fifo_inst/count[14] ), 
            .I1(1'b0), .CI(n225), .O(n222), .CO(n223)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i14 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i13  (.I0(\synq_fifo_inst/count[13] ), 
            .I1(1'b0), .CI(n227), .O(n224), .CO(n225)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i13 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i12  (.I0(\synq_fifo_inst/count[12] ), 
            .I1(1'b0), .CI(n229), .O(n226), .CO(n227)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i12 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i11  (.I0(\synq_fifo_inst/count[11] ), 
            .I1(1'b0), .CI(n231), .O(n228), .CO(n229)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i11 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i10  (.I0(\synq_fifo_inst/count[10] ), 
            .I1(1'b0), .CI(n233), .O(n230), .CO(n231)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i10 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i9  (.I0(\synq_fifo_inst/count[9] ), .I1(1'b0), 
            .CI(n235), .O(n232), .CO(n233)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i9 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i8  (.I0(\synq_fifo_inst/count[8] ), .I1(1'b0), 
            .CI(n237), .O(n234), .CO(n235)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i8 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i7  (.I0(\synq_fifo_inst/count[7] ), .I1(1'b0), 
            .CI(n239), .O(n236), .CO(n237)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i7 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i6  (.I0(\synq_fifo_inst/count[6] ), .I1(1'b0), 
            .CI(n241), .O(n238), .CO(n239)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i6 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i5  (.I0(\synq_fifo_inst/count[5] ), .I1(1'b0), 
            .CI(n243), .O(n240), .CO(n241)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i5 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i4  (.I0(\synq_fifo_inst/count[4] ), .I1(1'b0), 
            .CI(n245), .O(n242), .CO(n243)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i4 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \synq_fifo_inst/add_36/i3  (.I0(\synq_fifo_inst/count[3] ), .I1(1'b0), 
            .CI(n38), .O(n244), .CO(n245)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(32)
    defparam \synq_fifo_inst/add_36/i3 .I0_POLARITY = 1'b1;
    defparam \synq_fifo_inst/add_36/i3 .I1_POLARITY = 1'b1;
    EFX_DPRAM_5K \synq_fifo_inst/fifo  (.CLKA(\Clock~O ), .CLKB(\Clock~O ), 
            .WEA(\synq_fifo_inst/n90 ), .WEB(\synq_fifo_inst/n6 ), .CLKEA(\synq_fifo_inst/n90 ), 
            .CLKEB(1'b1), .WDATAA({8'b00000000}), .WDATAB({\wr_dt[7] , 
            \wr_dt[6] , \wr_dt[5] , \wr_dt[4] , \wr_dt[3] , \wr_dt[2] , 
            \wr_dt[1] , \wr_dt[0] }), .ADDRA({4'b0000, \synq_fifo_inst/rd_ptr[4] , 
            \synq_fifo_inst/rd_ptr[3] , \synq_fifo_inst/rd_ptr[2] , \synq_fifo_inst/rd_ptr[1] , 
            \synq_fifo_inst/rd_ptr[0] }), .ADDRB({4'b0000, \synq_fifo_inst/wr_ptr[4] , 
            \synq_fifo_inst/wr_ptr[3] , \synq_fifo_inst/wr_ptr[2] , \synq_fifo_inst/wr_ptr[1] , 
            \synq_fifo_inst/wr_ptr[0] }), .RDATAA({\synq_fifo_inst/n92 , 
            \synq_fifo_inst/n93 , \synq_fifo_inst/n94 , \synq_fifo_inst/n95 , 
            \synq_fifo_inst/n96 , \synq_fifo_inst/n97 , \synq_fifo_inst/n98 , 
            \synq_fifo_inst/n99 })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=8, READ_WIDTH_B=8, WRITE_WIDTH_A=8, WRITE_WIDTH_B=8, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b0, OUTPUT_REG_B=1'b0, WRITE_MODE_A="READ_FIRST", WRITE_MODE_B="READ_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(21)
    defparam \synq_fifo_inst/fifo .READ_WIDTH_A = 8;
    defparam \synq_fifo_inst/fifo .READ_WIDTH_B = 8;
    defparam \synq_fifo_inst/fifo .WRITE_WIDTH_A = 8;
    defparam \synq_fifo_inst/fifo .WRITE_WIDTH_B = 8;
    defparam \synq_fifo_inst/fifo .WRITE_MODE_A = "READ_FIRST";
    defparam \synq_fifo_inst/fifo .WRITE_MODE_B = "READ_FIRST";
    defparam \synq_fifo_inst/fifo .CLKA_POLARITY = 1'b1;
    defparam \synq_fifo_inst/fifo .CLKB_POLARITY = 1'b1;
    defparam \synq_fifo_inst/fifo .CLKEA_POLARITY = 1'b1;
    defparam \synq_fifo_inst/fifo .CLKEB_POLARITY = 1'b1;
    defparam \synq_fifo_inst/fifo .WEA_POLARITY = 1'b1;
    defparam \synq_fifo_inst/fifo .WEB_POLARITY = 1'b1;
    defparam \synq_fifo_inst/fifo .INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \synq_fifo_inst/fifo .OUTPUT_REG_A = 1'b0;
    defparam \synq_fifo_inst/fifo .OUTPUT_REG_B = 1'b0;
    EFX_LUT4 LUT__723 (.I0(\synq_fifo_inst/count[28] ), .I1(\synq_fifo_inst/count[29] ), 
            .I2(\synq_fifo_inst/count[30] ), .I3(\synq_fifo_inst/count[31] ), 
            .O(n480)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__723.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__724 (.I0(\synq_fifo_inst/count[24] ), .I1(\synq_fifo_inst/count[25] ), 
            .I2(\synq_fifo_inst/count[26] ), .I3(\synq_fifo_inst/count[27] ), 
            .O(n481)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__724.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__725 (.I0(n478), .I1(n479), .I2(n480), .I3(n481), .O(n482)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__725.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__726 (.I0(\synq_fifo_inst/count[12] ), .I1(\synq_fifo_inst/count[13] ), 
            .I2(\synq_fifo_inst/count[14] ), .I3(\synq_fifo_inst/count[15] ), 
            .O(n483)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__726.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__727 (.I0(\synq_fifo_inst/count[8] ), .I1(\synq_fifo_inst/count[9] ), 
            .I2(\synq_fifo_inst/count[10] ), .I3(\synq_fifo_inst/count[11] ), 
            .O(n484)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__727.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__728 (.I0(n483), .I1(n484), .O(n485)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__728.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__729 (.I0(\synq_fifo_inst/count[2] ), .I1(\synq_fifo_inst/count[3] ), 
            .O(n486)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__729.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__730 (.I0(\synq_fifo_inst/count[0] ), .I1(\synq_fifo_inst/count[1] ), 
            .I2(\synq_fifo_inst/count[4] ), .I3(\synq_fifo_inst/count[6] ), 
            .O(n487)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__730.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__731 (.I0(\synq_fifo_inst/count[7] ), .I1(n486), .I2(n487), 
            .O(n488)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__731.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__732 (.I0(n482), .I1(n485), .I2(n488), .I3(\synq_fifo_inst/count[5] ), 
            .O(f_full)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__732.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__733 (.I0(\synq_fifo_inst/count[2] ), .I1(\synq_fifo_inst/count[3] ), 
            .I2(\synq_fifo_inst/count[5] ), .I3(\synq_fifo_inst/count[7] ), 
            .O(n489)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__733.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__734 (.I0(n487), .I1(n489), .O(n490)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__734.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__735 (.I0(n482), .I1(n485), .I2(n490), .O(f_empty)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__735.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__736 (.I0(\uart_rx_inst/r_Clock_Count[2] ), .I1(\uart_rx_inst/r_Clock_Count[1] ), 
            .I2(\uart_rx_inst/r_Clock_Count[3] ), .I3(\uart_rx_inst/r_Clock_Count[4] ), 
            .O(n491)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__736.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__737 (.I0(\uart_rx_inst/r_Clock_Count[5] ), .I1(n491), 
            .I2(\uart_rx_inst/r_Clock_Count[6] ), .I3(\uart_rx_inst/r_Clock_Count[7] ), 
            .O(\uart_rx_inst/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__737.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__738 (.I0(\uart_rx_inst/r_SM_Main[1] ), .I1(\uart_rx_inst/r_SM_Main[0] ), 
            .O(\uart_rx_inst/n390 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__738.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__739 (.I0(\uart_rx_inst/r_Clock_Count[2] ), .I1(\uart_rx_inst/r_Clock_Count[4] ), 
            .I2(\uart_rx_inst/r_Clock_Count[3] ), .I3(\uart_rx_inst/r_Clock_Count[5] ), 
            .O(n492)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__739.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__740 (.I0(\uart_rx_inst/r_Clock_Count[0] ), .I1(\uart_rx_inst/r_Clock_Count[1] ), 
            .O(n493)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__740.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__741 (.I0(\uart_rx_inst/r_Clock_Count[6] ), .I1(\uart_rx_inst/r_Clock_Count[7] ), 
            .I2(n492), .I3(n493), .O(n494)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__741.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__742 (.I0(n494), .I1(\uart_rx_inst/r_SM_Main[0] ), .I2(\uart_rx_inst/n46 ), 
            .I3(\uart_rx_inst/r_SM_Main[1] ), .O(n495)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fbb */ ;
    defparam LUT__742.LUTMASK = 16'h0fbb;
    EFX_LUT4 LUT__743 (.I0(n495), .I1(\uart_rx_inst/r_Clock_Count[0] ), 
            .O(\uart_rx_inst/n381 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__743.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__744 (.I0(\uart_rx_inst/r_SM_Main[0] ), .I1(\uart_rx_inst/r_Rx_Data ), 
            .I2(n494), .I3(\uart_rx_inst/r_SM_Main[1] ), .O(n496)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__744.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__745 (.I0(\uart_rx_inst/r_SM_Main[0] ), .I1(n494), .I2(n496), 
            .I3(\uart_rx_inst/r_SM_Main[2] ), .O(ceg_net48)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff80 */ ;
    defparam LUT__745.LUTMASK = 16'hff80;
    EFX_LUT4 LUT__746 (.I0(\uart_rx_inst/r_SM_Main[2] ), .I1(\uart_rx_inst/r_SM_Main[1] ), 
            .O(\uart_rx_inst/n404 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__746.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__747 (.I0(\uart_rx_inst/n46 ), .I1(\uart_rx_inst/r_SM_Main[2] ), 
            .I2(\uart_rx_inst/r_SM_Main[1] ), .I3(\uart_rx_inst/r_SM_Main[0] ), 
            .O(ceg_net193)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heff0 */ ;
    defparam LUT__747.LUTMASK = 16'heff0;
    EFX_LUT4 LUT__748 (.I0(\uart_rx_inst/n46 ), .I1(\uart_rx_inst/r_SM_Main[0] ), 
            .O(n497)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__748.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__749 (.I0(\uart_rx_inst/r_Bit_Index[0] ), .I1(\uart_rx_inst/r_SM_Main[1] ), 
            .O(\uart_rx_inst/n388 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__749.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__750 (.I0(\uart_rx_inst/r_Bit_Index[1] ), .I1(\uart_rx_inst/r_Bit_Index[2] ), 
            .I2(n497), .I3(\uart_rx_inst/n388 ), .O(\uart_rx_inst/n449 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__750.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__751 (.I0(\uart_rx_inst/r_SM_Main[1] ), .I1(\uart_rx_inst/n46 ), 
            .I2(\uart_rx_inst/r_SM_Main[2] ), .I3(\uart_rx_inst/r_SM_Main[0] ), 
            .O(ceg_net180)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;
    defparam LUT__751.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__752 (.I0(\uart_rx_inst/n390 ), .I1(\uart_rx_inst/n46 ), 
            .I2(n496), .O(\uart_rx_inst/n374 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__752.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__753 (.I0(\uart_rx_inst/r_Bit_Index[1] ), .I1(\uart_rx_inst/r_Bit_Index[2] ), 
            .O(n498)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__753.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__754 (.I0(n498), .I1(\uart_rx_inst/r_Bit_Index[0] ), .I2(\uart_rx_inst/n46 ), 
            .I3(\uart_rx_inst/r_SM_Main[0] ), .O(n499)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ff7 */ ;
    defparam LUT__754.LUTMASK = 16'h0ff7;
    EFX_LUT4 LUT__755 (.I0(\uart_rx_inst/r_Rx_Data ), .I1(n494), .I2(\uart_rx_inst/r_SM_Main[0] ), 
            .O(n500)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__755.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__756 (.I0(n500), .I1(n499), .I2(\uart_rx_inst/r_SM_Main[1] ), 
            .O(\uart_rx_inst/n378 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__756.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__757 (.I0(n495), .I1(\uart_rx_inst/r_Clock_Count[0] ), 
            .I2(\uart_rx_inst/r_Clock_Count[1] ), .O(\uart_rx_inst/n315 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__757.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__758 (.I0(n495), .I1(n493), .I2(\uart_rx_inst/r_Clock_Count[2] ), 
            .O(\uart_rx_inst/n318 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__758.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__759 (.I0(n493), .I1(\uart_rx_inst/r_Clock_Count[2] ), 
            .I2(n495), .I3(\uart_rx_inst/r_Clock_Count[3] ), .O(\uart_rx_inst/n321 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;
    defparam LUT__759.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__760 (.I0(n493), .I1(\uart_rx_inst/r_Clock_Count[2] ), 
            .I2(\uart_rx_inst/r_Clock_Count[3] ), .O(n501)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__760.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__761 (.I0(n495), .I1(n501), .I2(\uart_rx_inst/r_Clock_Count[4] ), 
            .O(\uart_rx_inst/n324 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__761.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__762 (.I0(n493), .I1(\uart_rx_inst/r_Clock_Count[2] ), 
            .I2(\uart_rx_inst/r_Clock_Count[3] ), .I3(\uart_rx_inst/r_Clock_Count[4] ), 
            .O(n502)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__762.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__763 (.I0(n495), .I1(n502), .I2(\uart_rx_inst/r_Clock_Count[5] ), 
            .O(\uart_rx_inst/n327 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__763.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__764 (.I0(n502), .I1(\uart_rx_inst/r_Clock_Count[5] ), 
            .I2(n495), .I3(\uart_rx_inst/r_Clock_Count[6] ), .O(\uart_rx_inst/n330 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;
    defparam LUT__764.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__765 (.I0(n502), .I1(\uart_rx_inst/r_Clock_Count[5] ), 
            .I2(\uart_rx_inst/r_Clock_Count[6] ), .I3(\uart_rx_inst/r_Clock_Count[7] ), 
            .O(n503)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;
    defparam LUT__765.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__766 (.I0(\uart_rx_inst/r_SM_Main[1] ), .I1(n503), .I2(\uart_rx_inst/r_SM_Main[0] ), 
            .O(\uart_rx_inst/n333 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__766.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__767 (.I0(\uart_rx_inst/n404 ), .I1(\uart_rx_inst/r_Bit_Index[0] ), 
            .O(n504)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__767.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__768 (.I0(\uart_rx_inst/r_Bit_Index[1] ), .I1(\uart_rx_inst/r_Bit_Index[2] ), 
            .I2(n497), .I3(n504), .O(\uart_rx_inst/n434 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__768.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__769 (.I0(\uart_rx_inst/r_Bit_Index[0] ), .I1(\uart_rx_inst/r_SM_Main[0] ), 
            .I2(\uart_rx_inst/n404 ), .O(n505)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__769.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__770 (.I0(\uart_rx_inst/n46 ), .I1(\uart_rx_inst/r_Bit_Index[2] ), 
            .I2(\uart_rx_inst/r_Bit_Index[1] ), .I3(n505), .O(\uart_rx_inst/n436 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__770.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__771 (.I0(\uart_rx_inst/r_Bit_Index[2] ), .I1(n504), .I2(\uart_rx_inst/r_Bit_Index[1] ), 
            .I3(n497), .O(\uart_rx_inst/n438 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__771.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__772 (.I0(\uart_rx_inst/n46 ), .I1(\uart_rx_inst/r_Bit_Index[1] ), 
            .I2(n505), .I3(\uart_rx_inst/r_Bit_Index[2] ), .O(\uart_rx_inst/n440 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__772.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__773 (.I0(\uart_rx_inst/r_Bit_Index[1] ), .I1(n504), .I2(n497), 
            .I3(\uart_rx_inst/r_Bit_Index[2] ), .O(\uart_rx_inst/n442 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__773.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__774 (.I0(\uart_rx_inst/n46 ), .I1(n505), .I2(n498), 
            .O(\uart_rx_inst/n444 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__774.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__775 (.I0(n497), .I1(n504), .I2(n498), .O(\uart_rx_inst/n446 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__775.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__776 (.I0(\uart_rx_inst/r_Bit_Index[0] ), .I1(\uart_rx_inst/r_Bit_Index[1] ), 
            .I2(\uart_rx_inst/r_SM_Main[1] ), .O(\uart_rx_inst/n358 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__776.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__777 (.I0(\uart_rx_inst/r_Bit_Index[0] ), .I1(\uart_rx_inst/r_Bit_Index[1] ), 
            .I2(\uart_rx_inst/r_Bit_Index[2] ), .I3(\uart_rx_inst/r_SM_Main[1] ), 
            .O(\uart_rx_inst/n362 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__777.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__778 (.I0(\uart_tx_inst/r_Clock_Count[2] ), .I1(\uart_tx_inst/r_Clock_Count[1] ), 
            .I2(\uart_tx_inst/r_Clock_Count[3] ), .I3(\uart_tx_inst/r_Clock_Count[4] ), 
            .O(n506)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__778.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__779 (.I0(\uart_tx_inst/r_Clock_Count[5] ), .I1(n506), 
            .I2(\uart_tx_inst/r_Clock_Count[6] ), .O(\uart_tx_inst/LessThan_8/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f1f */ ;
    defparam LUT__779.LUTMASK = 16'h1f1f;
    EFX_LUT4 LUT__780 (.I0(\uart_tx_inst/r_SM_Main[1] ), .I1(\uart_tx_inst/r_SM_Main[0] ), 
            .I2(\uart_tx_inst/LessThan_8/n14 ), .O(n507)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__780.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__781 (.I0(\uart_tx_inst/r_Clock_Count[0] ), .I1(n507), 
            .O(\uart_tx_inst/n371 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__781.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__782 (.I0(\uart_tx_inst/r_SM_Main[1] ), .I1(\uart_tx_inst/r_SM_Main[2] ), 
            .O(\uart_tx_inst/n347 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__782.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__783 (.I0(\uart_tx_inst/LessThan_8/n14 ), .I1(\uart_tx_inst/r_SM_Main[2] ), 
            .I2(\uart_tx_inst/r_SM_Main[1] ), .I3(\uart_tx_inst/r_SM_Main[0] ), 
            .O(ceg_net195)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heff0 */ ;
    defparam LUT__783.LUTMASK = 16'heff0;
    EFX_LUT4 LUT__784 (.I0(\uart_tx_inst/r_Tx_Data[2] ), .I1(\uart_tx_inst/r_Tx_Data[3] ), 
            .I2(\uart_tx_inst/r_Bit_Index[0] ), .I3(\uart_tx_inst/r_Bit_Index[1] ), 
            .O(n508)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__784.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__785 (.I0(\uart_tx_inst/r_Tx_Data[0] ), .I1(\uart_tx_inst/r_Tx_Data[1] ), 
            .I2(\uart_tx_inst/r_Bit_Index[1] ), .I3(\uart_tx_inst/r_Bit_Index[0] ), 
            .O(n509)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__785.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__786 (.I0(\uart_tx_inst/r_Tx_Data[7] ), .I1(\uart_tx_inst/r_Tx_Data[5] ), 
            .I2(\uart_tx_inst/r_Bit_Index[0] ), .I3(\uart_tx_inst/r_Bit_Index[1] ), 
            .O(n510)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__786.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__787 (.I0(\uart_tx_inst/r_Tx_Data[6] ), .I1(\uart_tx_inst/r_Tx_Data[4] ), 
            .I2(\uart_tx_inst/r_Bit_Index[0] ), .I3(n510), .O(n511)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__787.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__788 (.I0(n509), .I1(n508), .I2(n511), .I3(\uart_tx_inst/r_Bit_Index[2] ), 
            .O(n512)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0ee */ ;
    defparam LUT__788.LUTMASK = 16'hf0ee;
    EFX_LUT4 LUT__789 (.I0(n512), .I1(\uart_tx_inst/r_SM_Main[0] ), .I2(\uart_tx_inst/r_SM_Main[1] ), 
            .O(\uart_tx_inst/n266 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd3d3 */ ;
    defparam LUT__789.LUTMASK = 16'hd3d3;
    EFX_LUT4 LUT__790 (.I0(\uart_tx_inst/r_Bit_Index[0] ), .I1(\uart_tx_inst/r_SM_Main[1] ), 
            .O(\uart_tx_inst/n375 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__790.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__791 (.I0(\uart_tx_inst/r_SM_Main[1] ), .I1(\uart_tx_inst/LessThan_8/n14 ), 
            .I2(\uart_tx_inst/r_SM_Main[0] ), .I3(\uart_tx_inst/r_SM_Main[2] ), 
            .O(ceg_net191)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;
    defparam LUT__791.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__792 (.I0(\uart_tx_inst/r_SM_Main[2] ), .I1(\uart_tx_inst/r_SM_Main[1] ), 
            .I2(\uart_tx_inst/r_SM_Main[0] ), .O(\uart_tx_inst/n408 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__792.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__793 (.I0(\uart_tx_inst/r_SM_Main[1] ), .I1(rd), .O(n513)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__793.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__794 (.I0(\uart_tx_inst/r_SM_Main[0] ), .I1(\uart_tx_inst/r_SM_Main[2] ), 
            .I2(n513), .O(\uart_tx_inst/n426 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__794.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__795 (.I0(\uart_tx_inst/n408 ), .I1(\uart_tx_inst/LessThan_8/n14 ), 
            .I2(\uart_tx_inst/n426 ), .O(ceg_net189)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__795.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__796 (.I0(\synq_fifo_inst/n409 ), .I1(\synq_fifo_inst/n99 ), 
            .I2(rd), .O(\rd_dt[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__796.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__797 (.I0(\uart_tx_inst/r_Bit_Index[0] ), .I1(\uart_tx_inst/r_Bit_Index[1] ), 
            .I2(\uart_tx_inst/r_Bit_Index[2] ), .I3(\uart_tx_inst/r_SM_Main[1] ), 
            .O(n514)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__797.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__798 (.I0(n514), .I1(n513), .I2(\uart_tx_inst/LessThan_8/n14 ), 
            .I3(\uart_tx_inst/r_SM_Main[0] ), .O(\uart_tx_inst/n367 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0ce */ ;
    defparam LUT__798.LUTMASK = 16'hf0ce;
    EFX_LUT4 LUT__799 (.I0(\uart_tx_inst/r_Clock_Count[0] ), .I1(\uart_tx_inst/r_Clock_Count[1] ), 
            .I2(n507), .O(\uart_tx_inst/n298 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__799.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__800 (.I0(\uart_tx_inst/r_Clock_Count[0] ), .I1(\uart_tx_inst/r_Clock_Count[1] ), 
            .I2(\uart_tx_inst/r_Clock_Count[2] ), .I3(n507), .O(\uart_tx_inst/n301 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__800.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__801 (.I0(\uart_tx_inst/r_Clock_Count[0] ), .I1(\uart_tx_inst/r_Clock_Count[1] ), 
            .I2(\uart_tx_inst/r_Clock_Count[2] ), .I3(\uart_tx_inst/r_Clock_Count[3] ), 
            .O(n515)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;
    defparam LUT__801.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__802 (.I0(n515), .I1(n507), .O(\uart_tx_inst/n304 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__802.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__803 (.I0(\uart_tx_inst/r_Clock_Count[0] ), .I1(\uart_tx_inst/r_Clock_Count[1] ), 
            .I2(\uart_tx_inst/r_Clock_Count[2] ), .I3(\uart_tx_inst/r_Clock_Count[3] ), 
            .O(n516)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__803.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__804 (.I0(n516), .I1(\uart_tx_inst/r_Clock_Count[4] ), 
            .I2(n507), .O(\uart_tx_inst/n307 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__804.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__805 (.I0(n516), .I1(\uart_tx_inst/r_Clock_Count[4] ), 
            .I2(\uart_tx_inst/r_Clock_Count[5] ), .I3(n507), .O(\uart_tx_inst/n310 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__805.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__806 (.I0(n516), .I1(\uart_tx_inst/r_Clock_Count[4] ), 
            .I2(\uart_tx_inst/r_Clock_Count[5] ), .I3(\uart_tx_inst/r_Clock_Count[6] ), 
            .O(n517)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__806.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__807 (.I0(n517), .I1(n507), .O(\uart_tx_inst/n313 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__807.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__808 (.I0(\uart_tx_inst/r_Bit_Index[0] ), .I1(\uart_tx_inst/r_Bit_Index[1] ), 
            .I2(\uart_tx_inst/r_SM_Main[1] ), .O(\uart_tx_inst/n320 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__808.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__809 (.I0(\uart_tx_inst/r_Bit_Index[0] ), .I1(\uart_tx_inst/r_Bit_Index[1] ), 
            .I2(\uart_tx_inst/r_Bit_Index[2] ), .I3(\uart_tx_inst/r_SM_Main[1] ), 
            .O(\uart_tx_inst/n324 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__809.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__810 (.I0(\synq_fifo_inst/n409 ), .I1(\synq_fifo_inst/n98 ), 
            .I2(rd), .O(\rd_dt[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__810.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__811 (.I0(\synq_fifo_inst/n409 ), .I1(\synq_fifo_inst/n97 ), 
            .I2(rd), .O(\rd_dt[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__811.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__812 (.I0(\synq_fifo_inst/n409 ), .I1(\synq_fifo_inst/n96 ), 
            .I2(rd), .O(\rd_dt[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__812.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__813 (.I0(\synq_fifo_inst/n409 ), .I1(\synq_fifo_inst/n95 ), 
            .I2(rd), .O(\rd_dt[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__813.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__814 (.I0(\synq_fifo_inst/n409 ), .I1(\synq_fifo_inst/n94 ), 
            .I2(rd), .O(\rd_dt[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__814.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__815 (.I0(\synq_fifo_inst/n409 ), .I1(\synq_fifo_inst/n93 ), 
            .I2(rd), .O(\rd_dt[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__815.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__816 (.I0(\synq_fifo_inst/n409 ), .I1(\synq_fifo_inst/n92 ), 
            .I2(rd), .O(\rd_dt[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__816.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__817 (.I0(\uart_tx_inst/LessThan_8/n14 ), .I1(\uart_tx_inst/r_SM_Main[0] ), 
            .I2(\uart_tx_inst/r_SM_Main[1] ), .O(\uart_tx_inst/n291 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__817.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__818 (.I0(n482), .I1(n485), .I2(n490), .I3(rd), .O(\synq_fifo_inst/n90 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__818.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__819 (.I0(wr), .I1(f_full), .I2(\synq_fifo_inst/n90 ), 
            .O(ceg_net125)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__819.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__820 (.I0(f_full), .I1(wr), .O(\synq_fifo_inst/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__820.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__821 (.I0(n114), .I1(n187), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n187 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__821.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__822 (.I0(n37), .I1(n185), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n186 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__822.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__823 (.I0(n244), .I1(n183), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n185 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__823.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__824 (.I0(n242), .I1(n181), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n184 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__824.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__825 (.I0(n240), .I1(n179), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n183 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__825.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__826 (.I0(n238), .I1(n177), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n182 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__826.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__827 (.I0(n236), .I1(n175), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n181 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__827.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__828 (.I0(n234), .I1(n173), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n180 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__828.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__829 (.I0(n232), .I1(n171), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n179 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__829.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__830 (.I0(n230), .I1(n169), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n178 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__830.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__831 (.I0(n228), .I1(n167), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n177 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__831.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__832 (.I0(n226), .I1(n165), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n176 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__832.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__833 (.I0(n224), .I1(n163), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n175 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__833.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__834 (.I0(n222), .I1(n161), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n174 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__834.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__835 (.I0(n220), .I1(n159), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n173 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__835.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__836 (.I0(n218), .I1(n157), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n172 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__836.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__837 (.I0(n216), .I1(n155), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n171 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__837.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__838 (.I0(n214), .I1(n153), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n170 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__838.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__839 (.I0(n212), .I1(n151), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n169 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__839.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__840 (.I0(n210), .I1(n149), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n168 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__840.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__841 (.I0(n208), .I1(n147), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n167 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__841.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__842 (.I0(n206), .I1(n145), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n166 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__842.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__843 (.I0(n204), .I1(n143), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n165 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__843.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__844 (.I0(n202), .I1(n141), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n164 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__844.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__845 (.I0(n200), .I1(n139), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n163 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__845.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__846 (.I0(n198), .I1(n137), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n162 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__846.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__847 (.I0(n196), .I1(n135), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n161 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__847.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__848 (.I0(n194), .I1(n133), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n160 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__848.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__849 (.I0(n192), .I1(n131), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n159 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__849.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__850 (.I0(n190), .I1(n129), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n158 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__850.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__851 (.I0(n189), .I1(n128), .I2(\synq_fifo_inst/n90 ), 
            .O(\synq_fifo_inst/n157 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__851.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__852 (.I0(\synq_fifo_inst/rd_ptr[0] ), .I1(\synq_fifo_inst/rd_ptr[1] ), 
            .O(\synq_fifo_inst/n349 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__852.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__853 (.I0(\synq_fifo_inst/rd_ptr[0] ), .I1(\synq_fifo_inst/rd_ptr[1] ), 
            .I2(\synq_fifo_inst/rd_ptr[2] ), .O(\synq_fifo_inst/n356 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__853.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__854 (.I0(\synq_fifo_inst/rd_ptr[0] ), .I1(\synq_fifo_inst/rd_ptr[1] ), 
            .I2(\synq_fifo_inst/rd_ptr[2] ), .I3(\synq_fifo_inst/rd_ptr[3] ), 
            .O(\synq_fifo_inst/n361 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__854.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__855 (.I0(\synq_fifo_inst/rd_ptr[0] ), .I1(\synq_fifo_inst/rd_ptr[1] ), 
            .I2(\synq_fifo_inst/rd_ptr[2] ), .I3(\synq_fifo_inst/rd_ptr[3] ), 
            .O(n518)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__855.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__856 (.I0(n518), .I1(\synq_fifo_inst/rd_ptr[4] ), .O(\synq_fifo_inst/n366 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__856.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__857 (.I0(\synq_fifo_inst/wr_ptr[0] ), .I1(\synq_fifo_inst/wr_ptr[1] ), 
            .O(\synq_fifo_inst/n324 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__857.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__858 (.I0(\synq_fifo_inst/wr_ptr[0] ), .I1(\synq_fifo_inst/wr_ptr[1] ), 
            .I2(\synq_fifo_inst/wr_ptr[2] ), .O(\synq_fifo_inst/n331 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__858.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__859 (.I0(\synq_fifo_inst/wr_ptr[0] ), .I1(\synq_fifo_inst/wr_ptr[1] ), 
            .I2(\synq_fifo_inst/wr_ptr[2] ), .I3(\synq_fifo_inst/wr_ptr[3] ), 
            .O(\synq_fifo_inst/n336 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__859.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__860 (.I0(\synq_fifo_inst/wr_ptr[0] ), .I1(\synq_fifo_inst/wr_ptr[1] ), 
            .I2(\synq_fifo_inst/wr_ptr[2] ), .I3(\synq_fifo_inst/wr_ptr[3] ), 
            .O(n519)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__860.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__861 (.I0(n519), .I1(\synq_fifo_inst/wr_ptr[4] ), .O(\synq_fifo_inst/n341 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__861.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__862 (.I0(\control_logic_inst/r_i_Byte[5] ), .I1(\control_logic_inst/r_i_Byte[7] ), 
            .I2(\control_logic_inst/r_i_Byte[6] ), .I3(\control_logic_inst/r_i_Byte[4] ), 
            .O(n520)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__862.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__863 (.I0(\control_logic_inst/r_i_Byte[1] ), .I1(\control_logic_inst/r_i_Byte[0] ), 
            .I2(\control_logic_inst/r_i_Byte[2] ), .I3(\control_logic_inst/r_i_Byte[3] ), 
            .O(n521)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__863.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__864 (.I0(n520), .I1(n521), .O(\control_logic_inst/equal_5/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;
    defparam LUT__864.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__721 (.I0(\synq_fifo_inst/count[20] ), .I1(\synq_fifo_inst/count[21] ), 
            .I2(\synq_fifo_inst/count[22] ), .I3(\synq_fifo_inst/count[23] ), 
            .O(n478)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__721.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__722 (.I0(\synq_fifo_inst/count[16] ), .I1(\synq_fifo_inst/count[17] ), 
            .I2(\synq_fifo_inst/count[18] ), .I3(\synq_fifo_inst/count[19] ), 
            .O(n479)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__722.LUTMASK = 16'h0001;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(Clock), .O(\Clock~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_ADD \AUX_ADD_CI__synq_fifo_inst/sub_16/add_2/i1  (.I0(1'b1), .I1(1'b1), 
            .CI(1'b0), .CO(n522)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/kaushal/Vicharak/Sample_Projects/HW_FIFO_UART/synq_fifo.v(40)
    defparam \AUX_ADD_CI__synq_fifo_inst/sub_16/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CI__synq_fifo_inst/sub_16/add_2/i1 .I1_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_FF_4eb4d65f_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_4eb4d65f_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_4eb4d65f_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_4eb4d65f_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_4eb4d65f_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_4eb4d65f_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_4eb4d65f_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_4eb4d65f_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_4eb4d65f_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_4eb4d65f__8_8_8_8_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_4eb4d65f_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_4eb4d65f_0
// module not written out since it is a black box. 
//

