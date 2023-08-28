module _4_LUT_Baungarten(
input [3:0] i_addr_load_data,
input i_Data,
input [3:0] i_LUT,
input i_config_enable,
output reg o_Data
);

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
