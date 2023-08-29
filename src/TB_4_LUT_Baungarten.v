module TB_4_LUT_Baungarten();

reg [7:0] ui_in;    // Dedicated inputs - connected to the input switches
wire [7:0] uo_out;   // Dedicated outputs - connected to the 7 segment display
reg [7:0] uio_in;  // IOs: Bidirectional Input path
wire [7:0] uio_out;  // IOs: Bidirectional Output path
wire [7:0] uio_oe;   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
reg       ena;      // will go high when the design is enabled
reg       clk;      // clock
reg       rst_n;     // reset_n - low to reset

tt_um_4_LUT_Baungarten DUT(
    .ui_in(ui_in),    // Dedicated inputs - connected to the input switches
    .uo_out(uo_out),   // Dedicated outputs - connected to the 7 segment display
    .uio_in(uio_in),   // IOs: Bidirectional Input path
    .uio_out(uio_out),  // IOs: Bidirectional Output path
    .uio_oe(uio_oe),   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    .ena(ena),      // will go high when the design is enabled
    .clk(clk),      // clock
    .rst_n(rst_n)     // reset_n - low to reset
);




initial
begin
rst_n = 0;
clk = 0; 
ena = 1;
ui_in[3:0] = 0; //addrs
ui_in[7:4] = 0; //data
uio_in[0] = 1;//enable write
uio_in[1] = 0;//data_mux1
uio_in[2] = 0;//data_mux2
uio_in[4:3] = 0;//Lut_mux 1&2, 3&4,5&6, 7&8
uio_in[5]=0;
#50;
//a segment
uio_in[4:3] = 0;
uio_in[5]=0;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 0;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 1;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 2;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 3;

#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 4;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 5;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 6;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 7;

#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 8;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 9;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 10;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 11;

#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 12;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 13;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 14;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 15;



//////////////////b segment///////////////////
uio_in[5]=1;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 0;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 1;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 2;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 3;

#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 4;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 5;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 6;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 7;

#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 8;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 9;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 10;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 11;

#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 12;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 13;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 14;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 15;

//////////////////c segment///////////////////
uio_in[5]=0;
uio_in[4:3] = 1;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 0;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 1;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 2;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 3;

#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 4;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 5;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 6;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 7;

#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 8;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 9;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 10;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 11;

#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 12;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 13;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 14;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 15;

//////////////////d segment///////////////////
uio_in[5]=1;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 0;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 1;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 2;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 3;

#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 4;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 5;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 6;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 7;

#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 8;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 9;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 10;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 11;

#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 12;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 13;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 14;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 15;

/////////////////e segment///////////////////
uio_in[5]=0;
uio_in[4:3] = 2;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 0;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 1;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 2;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 3;

#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 4;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 5;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 6;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 7;

#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 8;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 9;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 10;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 11;

#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 12;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 13;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 14;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 15;

//////////////////d segment///////////////////
uio_in[5]=1;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 0;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 1;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 2;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 3;

#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 4;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 5;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 6;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 7;

#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 8;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 9;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 10;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 11;

#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 12;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 13;
#50;
uio_in[2] = 1;//data_mux1
ui_in[3:0] = 14;
#50;
uio_in[2] = 0;//data_mux1
ui_in[3:0] = 15;

/////////////////e segment///////////////////
uio_in[5]=0;
uio_in[4:3] = 3;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 0;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 1;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 2;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 3;

#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 4;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 5;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 6;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 7;

#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 8;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 9;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 10;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 11;

#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 12;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 13;
#50;
uio_in[1] = 1;//data_mux1
ui_in[3:0] = 14;
#50;
uio_in[1] = 0;//data_mux1
ui_in[3:0] = 15;
#200;
uio_in[0] = 0;//enable read
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
ui_in[7:4] = ui_in[7:4] +1;
#50;
end

  initial
  begin
  $dumpfile("TB_4_LUT_Baungarten.vcd");
  $dumpvars;
  end
endmodule 
