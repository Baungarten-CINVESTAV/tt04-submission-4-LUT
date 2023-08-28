module TB_4_LUT_Baungarten();

reg [3:0] i_addr_load_data;
reg i_Data;
reg [3:0] i_LUT;
reg i_config_enable;
wire o_Data;

_4_LUT_Baungarten DUT(
.i_addr_load_data (i_addr_load_data),
.i_Data (i_Data),
.i_LUT (i_LUT),
.i_config_enable (i_config_enable),
.o_Data (o_Data)
);

initial
begin
i_addr_load_data = 0;
i_Data = 0;
i_LUT = 0;
i_config_enable = 1;
#50;
i_Data=1;
#50;
i_addr_load_data = i_addr_load_data + 1; // 1
#50;
i_addr_load_data = i_addr_load_data + 1; //2 
#50;
i_addr_load_data = i_addr_load_data + 1;//3
#50;
i_addr_load_data = i_addr_load_data + 1;//4
#50;
i_addr_load_data = i_addr_load_data + 1;//5
#50;
i_addr_load_data = i_addr_load_data + 1;//6
#50;
i_addr_load_data = i_addr_load_data + 1;//7
#50;
i_addr_load_data = i_addr_load_data + 1;//8
#50;
i_addr_load_data = i_addr_load_data + 1;//9
i_Data=0;
#50;
i_addr_load_data = i_addr_load_data + 1;//10
#50;
i_addr_load_data = i_addr_load_data + 1;//11
#50;
i_addr_load_data = i_addr_load_data + 1;//12
#50;
i_addr_load_data = i_addr_load_data + 1;//13
#50;
i_addr_load_data = i_addr_load_data + 1;//14
#50;
i_addr_load_data = i_addr_load_data + 1;//15
#100;
i_config_enable = 0;
#50;
i_LUT = i_LUT + 1; //1
#50;
i_LUT = i_LUT + 1;
#50;
i_LUT = i_LUT + 1;
#50;
i_LUT = i_LUT + 1;
#50;
i_LUT = i_LUT + 1;
#50;
i_LUT = i_LUT + 1;
#50;
i_LUT = i_LUT + 1;
#50;
i_LUT = i_LUT + 1;
#50;
i_LUT = i_LUT + 1;
#50;
i_LUT = i_LUT + 1;
#50;
i_LUT = i_LUT + 1;
#50;
i_LUT = i_LUT + 1;
#50;
i_LUT = i_LUT + 1;
#50;
i_LUT = i_LUT + 1;
#50;
i_LUT = i_LUT + 1;
#50;
i_LUT = i_LUT + 1;
#100
i_LUT = 0;
#50;
end

  initial
  begin
  $dumpfile("TB_4_LUT_Baungarten.vcd");
  $dumpvars;
  end
endmodule 
