

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

wire [1:0] Lut_mux;

//LUT1	
reg [3:0] i_addr_load_data_L1;
reg i_Data_L1;
wire [3:0] i_LUT_L1;
wire o_Data_L1;

//LUT2	
reg [3:0] i_addr_load_data_L2;
reg i_Data_L2;
wire [3:0] i_LUT_L2;
wire o_Data_L2;

//LUT3
reg [3:0] i_addr_load_data_L3;
reg i_Data_L3;
wire [3:0] i_LUT_L3;
wire o_Data_L3;

//LUT4
reg [3:0] i_addr_load_data_L4;
reg i_Data_L4;
wire [3:0] i_LUT_L4;
wire o_Data_L4;

//LUT5
reg [3:0] i_addr_load_data_L5;
reg i_Data_L5;
wire [3:0] i_LUT_L5;
wire o_Data_L5;

//LUT6
reg [3:0] i_addr_load_data_L6;
reg i_Data_L6;
wire [3:0] i_LUT_L6;
wire o_Data_L6;

//LUT7
reg [3:0] i_addr_load_data_L7;
reg i_Data_L7;
wire [3:0] i_LUT_L7;
wire o_Data_L7;

//LUT8
reg [3:0] i_addr_load_data_L8;
reg i_Data_L8;
wire [3:0] i_LUT_L8;
wire o_Data_L8;

wire i_Data_Mux1;
wire i_Data_Mux2;
wire i_config_enable_L;


assign i_config_enable_L = uio_in[0];
assign uio_oe[0] = 1'b0;
assign uio_out[0] = 1'b1;

assign i_Data_Mux1 = uio_in[1];
assign uio_oe[1] = 1'b0;
assign uio_out[1] = 1'b1;

assign i_Data_Mux2 = uio_in[2];
assign uio_oe[2] = 1'b0;
assign uio_out[2] = 1'b1;

assign Lut_mux = uio_in[4:3];
assign uio_oe[4:3] = 2'b00;
assign uio_out[4:3] = 2'b11;

assign Data_mux = uio_in[5];
assign uio_oe[5] = 1'b0;
assign uio_out[5] = 1'b1;

//To avoid errors
assign uio_oe[7:6] = 2'b00;
assign uio_out[7:6] = 2'b11;

/// Top module conexion
/*
	uio_in[0] --> i_config_enable_L  // 1 write data, 0 read data
	uio_oe[0] <-- 0
	uio_out[0] = 1 //To avoid errors
	
	uio_in[1] --> i_Data_Mux1
	uio_oe[1] <-- 0
	uio_out[1] = 1 //To avoid errors
	
	uio_in[2] --> i_Data_Mux2
	uio_oe[2] <-- 0
	uio_out[2] = 1 //To avoid errors
	
	uio_in[4:3] --> Lut_mux
	uio_oe[4:3] <-- 2'd0
	uio_out[4:3] = 2d'3 //To avoid errors
	
	uio_oe[7:6] <-- 3b'111
	uio_out[7:6] = 3b'111 //To avoid errors
	
		LUT 1
	//Lut_mux = 0 & Data_mux = 0 
	ui_in[3:0] --> i_addr_load_data_L1
	ui_in[7:4] --> i_LUT_L1
	uo_out[0] <-- o_Data_L1
	i_Data_L1 <-- i_Data_Mux1
		LUT 2
	//Lut_mux = 0 & Data_mux = 1 
	ui_in[3:0] --> i_addr_load_data_L2
	ui_in[7:4] --> i_LUT_L2
	uo_out[1] <-- o_Data_L2
	i_Data_L2 <-- i_Data_Mux2
	
		LUT 3
	//Lut_mux = 1 & Data_mux = 0
	ui_in[3:0] --> i_addr_load_data_L3
	ui_in[7:4] --> i_LUT_L3
	uo_out[2] <-- o_Data_L3
	i_Data_L3 <-- i_Data_Mux1
	
		LUT 4
	//Lut_mux = 1 & Data_mux = 1 
	ui_in[3:0] --> i_addr_load_data_L4
	ui_in[7:4] --> i_LUT_L4
	uo_out[3] <-- o_Data_L4
	i_Data_L4 <-- i_Data_Mux2
	
		LUT 5
	//Lut_mux = 10 & Data_mux = 0
	ui_in[3:0] --> i_addr_load_data_L5
	ui_in[7:4] --> i_LUT_L5
	uo_out[4] <-- o_Data_L5
	i_Data_L5 <-- i_Data_Mux1
	
		LUT 6
	//Lut_mux = 10 & Data_mux = 1 
	ui_in[3:0] --> i_addr_load_data_L6
	ui_in[7:4] --> i_LUT_L6
	uo_out[5] <-- o_Data_L6
	i_Data_L6 <-- i_Data_Mux2
	
		LUT 7
	//Lut_mux = 11 & Data_mux = 0
	ui_in[3:0] --> i_addr_load_data_L7
	ui_in[7:4] --> i_LUT_L7
	uo_out[6] <-- o_Data_L7
	i_Data_L7 <-- i_Data_Mux1
	
		LUT 8
	//Lut_mux = 11 & Data_mux = 1 
	ui_in[3:0] --> i_addr_load_data_L8
	ui_in[7:4] --> i_LUT_L8
	uo_out[7] <-- o_Data_L8
	i_Data_L8 <-- i_Data_Mux2
		

*/

assign uo_out = {o_Data_L8,o_Data_L7,o_Data_L6,o_Data_L5,o_Data_L4,o_Data_L3,o_Data_L2,o_Data_L1};
assign i_LUT_L1 = ui_in[7:4]; //Data Lut
assign i_LUT_L2 = ui_in[7:4]; //Data Lut
assign i_LUT_L3 = ui_in[7:4]; //Data Lut
assign i_LUT_L4 = ui_in[7:4]; //Data Lut
assign i_LUT_L5 = ui_in[7:4]; //Data Lut
assign i_LUT_L6 = ui_in[7:4]; //Data Lut
assign i_LUT_L7 = ui_in[7:4]; //Data Lut
assign i_LUT_L8 = ui_in[7:4]; //Data Lut
//Mux Lut_mux

always@*
begin
	case({Lut_mux,Data_mux})
	3'b000:
	begin
		i_addr_load_data_L1= ui_in[3:0]; //Addr Lut
		//i_LUT_L1 = ui_in[7:4]; //Data Lut
		i_Data_L1 = i_Data_Mux1;
	end
	3'b001:
	begin
		i_addr_load_data_L2= ui_in[3:0]; //Addr Lut
		//i_LUT_L2 = ui_in[7:4]; //Data Lut
		i_Data_L2 = i_Data_Mux2;
	end
	3'b010:
	begin
		i_addr_load_data_L3= ui_in[3:0]; //Addr Lut
		//i_LUT_L3 = ui_in[7:4]; //Data Lut
		i_Data_L3 = i_Data_Mux1;
	end
	3'b011:
	begin
		i_addr_load_data_L4= ui_in[3:0]; //Addr Lut
		//i_LUT_L4 = ui_in[7:4]; //Data Lut
		i_Data_L4 = i_Data_Mux2;
	end
	3'b100:
	begin
		i_addr_load_data_L5= ui_in[3:0]; //Addr Lut
		//i_LUT_L5 = ui_in[7:4]; //Data Lut
		i_Data_L5 = i_Data_Mux1;
	end
	3'b101:
	begin
		i_addr_load_data_L6= ui_in[3:0]; //Addr Lut
		//i_LUT_L6 = ui_in[7:4]; //Data Lut
		i_Data_L6 = i_Data_Mux2;
	end
	3'b110:
	begin
		i_addr_load_data_L7= ui_in[3:0]; //Addr Lut
		//i_LUT_L7 = ui_in[7:4]; //Data Lut
		i_Data_L7 = i_Data_Mux1;
	end
	3'b111:
	begin
		i_addr_load_data_L8= ui_in[3:0]; //Addr Lut
		//i_LUT_L8 = ui_in[7:4]; //Data Lut
		i_Data_L8 = i_Data_Mux2;
	end
	endcase
end

	

Single_4LUT LUT_1(
.i_addr_load_data (i_addr_load_data_L1),
.i_Data (i_Data_L1),
.i_LUT (i_LUT_L1),
.i_config_enable (i_config_enable_L),
.o_Data (o_Data_L1)
);

Single_4LUT LUT_2(
.i_addr_load_data (i_addr_load_data_L2),
.i_Data (i_Data_L2),
.i_LUT (i_LUT_L2),
.i_config_enable (i_config_enable_L),
.o_Data (o_Data_L2)
);

Single_4LUT LUT_3(
.i_addr_load_data (i_addr_load_data_L3),
.i_Data (i_Data_L3),
.i_LUT (i_LUT_L3),
.i_config_enable (i_config_enable_L),
.o_Data (o_Data_L3)
);

Single_4LUT LUT_4(
.i_addr_load_data (i_addr_load_data_L4),
.i_Data (i_Data_L4),
.i_LUT (i_LUT_L4),
.i_config_enable (i_config_enable_L),
.o_Data (o_Data_L4)
);

Single_4LUT LUT_5(
.i_addr_load_data (i_addr_load_data_L5),
.i_Data (i_Data_L5),
.i_LUT (i_LUT_L5),
.i_config_enable (i_config_enable_L),
.o_Data (o_Data_L5)
);

Single_4LUT LUT_6(
.i_addr_load_data (i_addr_load_data_L6),
.i_Data (i_Data_L6),
.i_LUT (i_LUT_L6),
.i_config_enable (i_config_enable_L),
.o_Data (o_Data_L6)
);

Single_4LUT LUT_7(
.i_addr_load_data (i_addr_load_data_L7),
.i_Data (i_Data_L7),
.i_LUT (i_LUT_L7),
.i_config_enable (i_config_enable_L),
.o_Data (o_Data_L7)
);

Single_4LUT LUT_8(
.i_addr_load_data (i_addr_load_data_L8),
.i_Data (i_Data_L8),
.i_LUT (i_LUT_L8),
.i_config_enable (i_config_enable_L),
.o_Data (o_Data_L8)
);




endmodule 
