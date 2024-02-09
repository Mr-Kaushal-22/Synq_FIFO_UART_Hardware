module control_logic(
    input i_Clock,
    input [7:0] i_Byte,
    input i_DV,
    output o_wr_en,
    output o_rd_en,
    output [7:0] o_wr_Byte
    );
    
    reg [7:0] r_i_Byte;
    reg r_wr_en;
    reg r_rd_en;
    reg [7:0] r_wr_Byte;
    
    always @(posedge i_Clock)
    begin
        r_i_Byte[7:0] <= i_Byte[7:0];
        if(!i_DV)
        begin
            r_wr_en = 0;
            r_rd_en = 0;
            r_wr_Byte = 0;
        end
        else begin
            if (r_i_Byte[7:0] == 8'h5C)
            begin
                r_rd_en <= 1;
            end
            else begin
                r_wr_en = 1;
                r_wr_Byte <= i_Byte;
            end
        end
     end
    
    assign o_wr_en = r_wr_en;
    assign o_rd_en = r_rd_en;
    assign o_wr_Byte = r_wr_Byte;
endmodule