

module tt_um_4_LUT_Baungarten(
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);
	
wire [3:0] i_addr_load_data;
wire i_Data;
wire [3:0] i_LUT;
wire i_config_enable;
reg o_Data;
	
assign i_addr_load_data = ui_in[3:0];
assign i_Data = ui_in[4];
assign i_config_enable = ui_in[5];
assign uio_oe[3:0] = 3'b000;
assign i_LUT = uio_in[3:0]; 	
	assign uo_out[0] = o_Data;
reg [15:0] r_data;
always@*
begin
	if(i_config_enable)
	begin
		case(i_addr_load_data)
		4'd0:r_data[0] = i_Data;
		4'd1:r_data[1] = i_Data;
		4'd2:r_data[2] = i_Data;
		4'd3:r_data[3] = i_Data;
		4'd4:r_data[4] = i_Data;
		4'd5:r_data[5] = i_Data;
		4'd6:r_data[6] = i_Data;
		4'd7:r_data[7] = i_Data;
		4'd8:r_data[8] = i_Data;
		4'd9:r_data[9] = i_Data;
		4'd10:r_data[10] = i_Data;
		4'd11:r_data[11] = i_Data;
		4'd12:r_data[12] = i_Data;
		4'd13:r_data[13] = i_Data;
		4'd14:r_data[14] = i_Data;
		4'd15:r_data[15] = i_Data;
		endcase
	end
	else
	begin
		case(i_LUT)
		4'd0:o_Data=r_data[0];
		4'd1:o_Data=r_data[1];
		4'd2:o_Data=r_data[2];
		4'd3:o_Data=r_data[3];
		4'd4:o_Data=r_data[4];
		4'd5:o_Data=r_data[5];
		4'd6:o_Data=r_data[6];
		4'd7:o_Data=r_data[7];
		4'd8:o_Data=r_data[8];
		4'd9:o_Data=r_data[9];
		4'd10:o_Data=r_data[10];
		4'd11:o_Data=r_data[11];
		4'd12:o_Data=r_data[12];
		4'd13:o_Data=r_data[13];
		4'd14:o_Data=r_data[14];
		4'd15:o_Data=r_data[15];
		endcase
	end
end



endmodule 
