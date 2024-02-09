// This is top module to connect the UART and FIFO modules with control logic.

module top(
    input Clock,
    input Rx_Serial,
    output f_full,
    output f_empty,
    output Tx_Active,
    output Tx_Serial,
    output Tx_Done
    );

    wire DV,rd,wr;
    wire [7:0] Byte,rd_dt,wr_dt;
uart_rx uart_rx_inst(
   .i_Clock(Clock),
   .i_Rx_Serial(Rx_Serial), 
   .o_Rx_DV(DV), 
   .o_Rx_Byte(Byte) 
   );

uart_tx uart_tx_inst(
   .i_Clock(Clock),
   .i_Tx_DV(rd),
   .i_Tx_Byte(rd_dt), 
   .o_Tx_Active(Tx_Active),
   .o_Tx_Serial(Tx_Serial),
   .o_Tx_Done(Tx_Done)
   );

synq_fifo synq_fifo_inst(
    .clk(Clock), 
    .wr_en(wr), 
    .wr_data(wr_dt), 
    .rd_en(rd), 
    .rd_data(rd_dt), 
    .f_empty(f_empty), 
    .f_full(f_full)
    );
 
control_logic control_logic_inst(
    .i_Clock(Clock),
    .i_Byte(Byte),
    .i_DV(DV),
    .o_wr_en(wr),
    .o_rd_en(rd),
    .o_wr_Byte(wr_dt)
    ); 
    
endmodule