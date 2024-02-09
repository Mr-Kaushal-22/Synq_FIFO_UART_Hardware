`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 08.02.2024 15:18:40
// Design Name: 
// Module Name: SYNQ_FIFO
//////////////////////////////////////////////////////////////////////////////////


module synq_fifo #(parameter data_width = 8, depth = 32)
    (clk, wr_en, wr_data, rd_en, rd_data, f_empty, f_full);
    input clk;
    input wr_en;
    input [data_width-1:0] wr_data;
    input rd_en;
    output [data_width-1:0] rd_data; 
    output f_empty;
    output f_full;
    
    reg [data_width-1:0] r_rd_data=0;
    reg [$clog2(depth)-1:0] wr_ptr=0, rd_ptr=0;
    reg [data_width-1:0] fifo [depth-1:0];
    integer count = 0;
    
    
    always @(posedge clk)
    begin
        // for write data to FIFO
        if(wr_en && !f_full)
        begin
            fifo[wr_ptr] <= wr_data;
            wr_ptr <= wr_ptr+1;
            count <= count + 1'b1;
        end
    
        // for read data from FIFO
        if(rd_en && !f_empty)
        begin
            r_rd_data <= fifo[rd_ptr];
            rd_ptr <= rd_ptr+1;
            count <= count - 1'b1;
            fifo[rd_ptr] <= 0;
        end
        
        if(f_empty)
        begin
            r_rd_data <= 0;
        end
    end
    
    assign rd_data =(rd_en)? r_rd_data:0;
    
    // assigning flags
    assign f_full = (count == depth);
    assign f_empty = (count ==0);
    
endmodule