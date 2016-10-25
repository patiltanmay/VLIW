//====================CACHE=======================

//==================MEM======================

module D_ff_Mem(input clk, input reset, input regWrite,input init, input d, output reg q);
	always @ (negedge clk)
	begin
	if(reset==1)
		q=init;
	else
		if(regWrite == 1) begin q=d; end
	end
endmodule

module register16bits(input clk,input reset,input Write,input [15:0]init, input [15:0] d_in, output [15:0] q_out);
  D_ff_Mem dMem0 (clk,reset,Write,init[0],d_in[0],q_out[0]);
	D_ff_Mem dMem1 (clk,reset,Write,init[1],d_in[1],q_out[1]);
	D_ff_Mem dMem2 (clk,reset,Write,init[2],d_in[2],q_out[2]);
	D_ff_Mem dMem3 (clk,reset,Write,init[3],d_in[3],q_out[3]);
	
	D_ff_Mem dMem4 (clk,reset,Write,init[4],d_in[4],q_out[4]);
	D_ff_Mem dMem5 (clk,reset,Write,init[5],d_in[5],q_out[5]);
	D_ff_Mem dMem6 (clk,reset,Write,init[6],d_in[6],q_out[6]);
	D_ff_Mem dMem7 (clk,reset,Write,init[7],d_in[7],q_out[7]);
	
	D_ff_Mem dMem8 (clk,reset,Write,init[8],d_in[8],q_out[8]);
	D_ff_Mem dMem9 (clk,reset,Write,init[9],d_in[9],q_out[9]);
	D_ff_Mem dMem10 (clk,reset,Write,init[10],d_in[10],q_out[10]);
	D_ff_Mem dMem11 (clk,reset,Write,init[11],d_in[11],q_out[11]);
	
	D_ff_Mem dMem12 (clk,reset,Write,init[12],d_in[12],q_out[12]);
	D_ff_Mem dMem13 (clk,reset,Write,init[13],d_in[13],q_out[13]);
	D_ff_Mem dMem14 (clk,reset,Write,init[14],d_in[14],q_out[14]);
	D_ff_Mem dMem15 (clk,reset,Write,init[15],d_in[15],q_out[15]);
endmodule

module register27bits(input clk,input reset,input Write,input [26:0]init, input [26:0] d_in, output [26:0] q_out);
  D_ff_Mem dMem0 (clk,reset,Write,init[0],d_in[0],q_out[0]);
	D_ff_Mem dMem1 (clk,reset,Write,init[1],d_in[1],q_out[1]);
	D_ff_Mem dMem2 (clk,reset,Write,init[2],d_in[2],q_out[2]);
	D_ff_Mem dMem3 (clk,reset,Write,init[3],d_in[3],q_out[3]);
	
	D_ff_Mem dMem4 (clk,reset,Write,init[4],d_in[4],q_out[4]);
	D_ff_Mem dMem5 (clk,reset,Write,init[5],d_in[5],q_out[5]);
	D_ff_Mem dMem6 (clk,reset,Write,init[6],d_in[6],q_out[6]);
	D_ff_Mem dMem7 (clk,reset,Write,init[7],d_in[7],q_out[7]);
	
	D_ff_Mem dMem8 (clk,reset,Write,init[8],d_in[8],q_out[8]);
	D_ff_Mem dMem9 (clk,reset,Write,init[9],d_in[9],q_out[9]);
	D_ff_Mem dMem10 (clk,reset,Write,init[10],d_in[10],q_out[10]);
	D_ff_Mem dMem11 (clk,reset,Write,init[11],d_in[11],q_out[11]);
	
	D_ff_Mem dMem12 (clk,reset,Write,init[12],d_in[12],q_out[12]);
	D_ff_Mem dMem13 (clk,reset,Write,init[13],d_in[13],q_out[13]);
	D_ff_Mem dMem14 (clk,reset,Write,init[14],d_in[14],q_out[14]);
	D_ff_Mem dMem15 (clk,reset,Write,init[15],d_in[15],q_out[15]);
	
	D_ff_Mem dMem16 (clk,reset,Write,init[16],d_in[16],q_out[16]);
	D_ff_Mem dMem17 (clk,reset,Write,init[17],d_in[17],q_out[17]);
	D_ff_Mem dMem18 (clk,reset,Write,init[18],d_in[18],q_out[18]);
	D_ff_Mem dMem19 (clk,reset,Write,init[19],d_in[19],q_out[19]);
	
	D_ff_Mem dMem20 (clk,reset,Write,init[20],d_in[20],q_out[20]);
	D_ff_Mem dMem21 (clk,reset,Write,init[21],d_in[21],q_out[21]);
	D_ff_Mem dMem22 (clk,reset,Write,init[22],d_in[22],q_out[22]);
	D_ff_Mem dMem23 (clk,reset,Write,init[23],d_in[23],q_out[23]);
	
	D_ff_Mem dMem24 (clk,reset,Write,init[24],d_in[24],q_out[24]);
	D_ff_Mem dMem25 (clk,reset,Write,init[25],d_in[25],q_out[25]);
	D_ff_Mem dMem26 (clk,reset,Write,init[26],d_in[26],q_out[26]);
endmodule

module sp0_mux16to1( input [15:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15, input [3:0] Sel, output reg [31:0] outBus );
	always@(outR0 or outR1 or outR2 or outR3 or outR4 or outR5 or outR6 or outR7 or outR8 or outR9 or outR10 or outR11 or outR12 or outR13 or outR14 or outR15 or Sel)
	case (Sel)
				4'b0000: outBus={{outR1},{outR0}};
				4'b0001: outBus={{outR2},{outR1}};
				4'b0010: outBus={{outR3},{outR2}};
				4'b0011: outBus={{outR4},{outR3}};
				4'b0100: outBus={{outR5},{outR4}};
				4'b0101: outBus={{outR6},{outR5}};
				4'b0110: outBus={{outR7},{outR6}};
				4'b0111: outBus={{outR8},{outR7}};
				4'b1000: outBus={{outR9},{outR8}};
				4'b1001: outBus={{outR10},{outR9}};
				4'b1010: outBus={{outR11},{outR10}};
				4'b1011: outBus={{outR12},{outR11}};
				4'b1100: outBus={{outR13},{outR12}};
				4'b1101: outBus={{outR14},{outR13}};
				4'b1110: outBus={{outR15},{outR14}};
				4'b1111: outBus={{16{1'b0}},{outR15}};
	endcase
endmodule

module sp0_decoder4to16(input Write, input [3:0] destReg, output reg [15:0] decOut);
	always@(destReg or Write)
	case(destReg)
			4'b0000: decOut=16'b0000000000000001 & {16{Write}}; 
			4'b0001: decOut=16'b0000000000000010 & {16{Write}};
			4'b0010: decOut=16'b0000000000000100 & {16{Write}};
			4'b0011: decOut=16'b0000000000001000 & {16{Write}};
			4'b0100: decOut=16'b0000000000010000 & {16{Write}};
			4'b0101: decOut=16'b0000000000100000 & {16{Write}};
			4'b0110: decOut=16'b0000000001000000 & {16{Write}};
			4'b0111: decOut=16'b0000000010000000 & {16{Write}};
			4'b1000: decOut=16'b0000000100000000 & {16{Write}}; 
			4'b1001: decOut=16'b0000001000000000 & {16{Write}};
			4'b1010: decOut=16'b0000010000000000 & {16{Write}};
			4'b1011: decOut=16'b0000100000000000 & {16{Write}};
			4'b1100: decOut=16'b0001000000000000 & {16{Write}};
			4'b1101: decOut=16'b0010000000000000 & {16{Write}};
			4'b1110: decOut=16'b0100000000000000 & {16{Write}};
			4'b1111: decOut=16'b1000000000000000 & {16{Write}};
	endcase
endmodule

module cache_data(input clk,input reset,input Write, input [3:0]addr, input [15:0] d_in, output [31:0] d_out);
  wire [15:0] Qout0, Qout1, Qout2, Qout3, Qout4, Qout5, Qout6, Qout7,
					Qout8, Qout9, Qout10, Qout11, Qout12, Qout13, Qout14, Qout15,offset_Write;
	
	sp0_decoder4to16 dmem (Write, addr, offset_Write);
	
  register16bits register16bits0  (clk, reset, offset_Write[0] , {16{1'b0}}, d_in, Qout0);
  register16bits register16bits1  (clk, reset, offset_Write[1] , {16{1'b0}}, d_in, Qout1);
  register16bits register16bits2  (clk, reset, offset_Write[2] , {16{1'b0}}, d_in, Qout2);
  register16bits register16bits3  (clk, reset, offset_Write[3] , {16{1'b0}}, d_in, Qout3);
  register16bits register16bits4  (clk, reset, offset_Write[4] , {16{1'b0}}, d_in, Qout4);
  register16bits register16bits5  (clk, reset, offset_Write[5] , {16{1'b0}}, d_in, Qout5);
  register16bits register16bits6  (clk, reset, offset_Write[6] , {16{1'b0}}, d_in, Qout6);
  register16bits register16bits7  (clk, reset, offset_Write[7] , {16{1'b0}}, d_in, Qout7);
  register16bits register16bits8  (clk, reset, offset_Write[8] , {16{1'b0}}, d_in, Qout8);
  register16bits register16bits9  (clk, reset, offset_Write[9] , {16{1'b0}}, d_in, Qout9);
  register16bits register16bits10 (clk, reset, offset_Write[10] , {16{1'b0}}, d_in, Qout10);
  register16bits register16bits11 (clk, reset, offset_Write[11] , {16{1'b0}}, d_in, Qout11);
  register16bits register16bits12 (clk, reset, offset_Write[12] , {16{1'b0}}, d_in, Qout12);
  register16bits register16bits13 (clk, reset, offset_Write[13] , {16{1'b0}}, d_in, Qout13);
  register16bits register16bits14 (clk, reset, offset_Write[14] , {16{1'b0}}, d_in, Qout14);
  register16bits register16bits15 (clk, reset, offset_Write[15] , {16{1'b0}}, d_in, Qout15);
  
  sp0_mux16to1 mMem (Qout0,Qout1,Qout2,Qout3,Qout4,Qout5,Qout6,Qout7,Qout8,Qout9,Qout10,Qout11,Qout12,Qout13,Qout14,Qout15,addr,d_out);
endmodule

module cache_flags(input clk, input reset, input regWrite_v, input regWrite_d, input d_v, output q_v, input d_d, output q_d);
  D_ff_Mem validity(clk, reset, regWrite_v, 1'b0, d_v, q_v);
  D_ff_Mem dirty(clk, reset, regWrite_d, 1'b0, d_d, q_d);
endmodule

module cache_overhead(input clk,input reset,input Write, input d_v, input d_d, input v_Write, input d_Write, input [26:0] addr, output reg compare, output q_d,output [26:0] tag_out);
  register27bits TAG (clk, reset, Write, {27{1'b0}}, addr, tag_out);
  cache_flags c_flags(clk, reset, v_Write, d_Write, d_v, q_v, d_d, q_d);
  
  always@(tag_out or addr or q_v)
  begin
    if(tag_out == addr && q_v == 1'b1)
      compare = 1'b1;
    else
      compare = 1'b0;
  end
endmodule

module cache_line(input clk,input reset, input d_v, input d_d, input data_Write, input tag_Write, input v_Write, input d_Write, input [31:0]addr, input [15:0] d_in, output [31:0] d_out,output compare, output q_d,output [26:0]tag_out);
  cache_data cache_data0(clk, reset, data_Write, addr[4:1], d_in, d_out);
  cache_overhead cache_overhead0(clk, reset, tag_Write,  d_v,  d_d,  v_Write,  d_Write, addr[31:5], compare, q_d, tag_out);
endmodule

module decoder5to32(input [4:0] destReg, output reg [31:0] decOut);
  always@(destReg)
  begin
    decOut = 1<<destReg;
  end
endmodule

module sp0_mux32to1(input [1023:0]in, input [4:0]sel, output reg [31:0]out);
  always@(in or sel)
  begin
    case(sel)
      0: out = in[(31+(32*0)):(32*0)];
      1: out = in[(31+(32*1)):(32*1)];
      2: out = in[(31+(32*2)):(32*2)];
      3: out = in[(31+(32*3)):(32*3)];
      4: out = in[(31+(32*4)):(32*4)];
      5: out = in[(31+(32*5)):(32*5)];
      6: out = in[(31+(32*6)):(32*6)];
      7: out = in[(31+(32*7)):(32*7)];
      8: out = in[(31+(32*8)):(32*8)];
      9: out = in[(31+(32*9)):(32*9)];
      10: out = in[(31+(32*10)):(32*10)];
      11: out = in[(31+(32*11)):(32*11)];
      12: out = in[(31+(32*12)):(32*12)];
      13: out = in[(31+(32*13)):(32*13)];
      14: out = in[(31+(32*14)):(32*14)];
      15: out = in[(31+(32*15)):(32*15)];
      16: out = in[(31+(32*16)):(32*16)];
      17: out = in[(31+(32*17)):(32*17)];
      18: out = in[(31+(32*18)):(32*18)];
      19: out = in[(31+(32*19)):(32*19)];
      20: out = in[(31+(32*20)):(32*20)];
      21: out = in[(31+(32*21)):(32*21)];
      22: out = in[(31+(32*22)):(32*22)];
      23: out = in[(31+(32*23)):(32*23)];
      24: out = in[(31+(32*24)):(32*24)];
      25: out = in[(31+(32*25)):(32*25)];
      26: out = in[(31+(32*26)):(32*26)];
      27: out = in[(31+(32*27)):(32*27)];
      28: out = in[(31+(32*28)):(32*28)];
      29: out = in[(31+(32*29)):(32*29)];
      30: out = in[(31+(32*30)):(32*30)];
      31: out = in[(31+(32*31)):(32*31)];
    endcase
  end
endmodule

module sp0_mux32to1_5bits(input [159:0]in, input [4:0]sel, output reg [4:0]out);
  always@(in or sel)
  begin
    case(sel)
      0: out = in[(4+(5*0)):(5*0)];
      1: out = in[(4+(5*1)):(5*1)];
      2: out = in[(4+(5*2)):(5*2)];
      3: out = in[(4+(5*3)):(5*3)];
      4: out = in[(4+(5*4)):(5*4)];
      5: out = in[(4+(5*5)):(5*5)];
      6: out = in[(4+(5*6)):(5*6)];
      7: out = in[(4+(5*7)):(5*7)];
      8: out = in[(4+(5*8)):(5*8)];
      9: out = in[(4+(5*9)):(5*9)];
      10: out = in[(4+(5*10)):(5*10)];
      11: out = in[(4+(5*11)):(5*11)];
      12: out = in[(4+(5*12)):(5*12)];
      13: out = in[(4+(5*13)):(5*13)];
      14: out = in[(4+(5*14)):(5*14)];
      15: out = in[(4+(5*15)):(5*15)];
      16: out = in[(4+(5*16)):(5*16)];
      17: out = in[(4+(5*17)):(5*17)];
      18: out = in[(4+(5*18)):(5*18)];
      19: out = in[(4+(5*19)):(5*19)];
      20: out = in[(4+(5*20)):(5*20)];
      21: out = in[(4+(5*21)):(5*21)];
      22: out = in[(4+(5*22)):(5*22)];
      23: out = in[(4+(5*23)):(5*23)];
      24: out = in[(4+(5*24)):(5*24)];
      25: out = in[(4+(5*25)):(5*25)];
      26: out = in[(4+(5*26)):(5*26)];
      27: out = in[(4+(5*27)):(5*27)];
      28: out = in[(4+(5*28)):(5*28)];
      29: out = in[(4+(5*29)):(5*29)];
      30: out = in[(4+(5*30)):(5*30)];
      31: out = in[(4+(5*31)):(5*31)];
    endcase
  end
endmodule

module sp1_mux32to1(input [31:0]in, input [4:0]sel, output reg out);
  always@(in or sel)
  begin
    out = in[sel];
  end
endmodule

module sp2_mux32to1(input [863:0]in, input [4:0]sel, output reg [26:0]out);
  always@(in or sel)
  begin
    case(sel)
      0: out = in[(26+(27*0)):(27*0)];
      1: out = in[(26+(27*1)):(27*1)];
      2: out = in[(26+(27*2)):(27*2)];
      3: out = in[(26+(27*3)):(27*3)];
      4: out = in[(26+(27*4)):(27*4)];
      5: out = in[(26+(27*5)):(27*5)];
      6: out = in[(26+(27*6)):(27*6)];
      7: out = in[(26+(27*7)):(27*7)];
      8: out = in[(26+(27*8)):(27*8)];
      9: out = in[(26+(27*9)):(27*9)];
      10: out = in[(26+(27*10)):(27*10)];
      11: out = in[(26+(27*11)):(27*11)];
      12: out = in[(26+(27*12)):(27*12)];
      13: out = in[(26+(27*13)):(27*13)];
      14: out = in[(26+(27*14)):(27*14)];
      15: out = in[(26+(27*15)):(27*15)];
      16: out = in[(26+(27*16)):(27*16)];
      17: out = in[(26+(27*17)):(27*17)];
      18: out = in[(26+(27*18)):(27*18)];
      19: out = in[(26+(27*19)):(27*19)];
      20: out = in[(26+(27*20)):(27*20)];
      21: out = in[(26+(27*21)):(27*21)];
      22: out = in[(26+(27*22)):(27*22)];
      23: out = in[(26+(27*23)):(27*23)];
      24: out = in[(26+(27*24)):(27*24)];
      25: out = in[(26+(27*25)):(27*25)];
      26: out = in[(26+(27*26)):(27*26)];
      27: out = in[(26+(27*27)):(27*27)];
      28: out = in[(26+(27*28)):(27*28)];
      29: out = in[(26+(27*29)):(27*29)];
      30: out = in[(26+(27*30)):(27*30)];
      31: out = in[(26+(27*31)):(27*31)];
    endcase
  end
endmodule

module cache_mem(input clk,input reset, input d_v, input d_d, input data_Write, input tag_Write, input v_Write, input d_Write, input [31:0]addr, input [4:0]line_sel, input [15:0] d_in, output [31:0] data_out,output [31:0]compare, output q_d,output [26:0]tag_out);
  wire [31:0] d_line_sel,d_d_v,d_d_d,d_data_Write,d_tag_Write,d_v_Write,d_d_Write;
  wire [1023:0] D_out;
  wire [31:0] Q_d0;
  wire [863:0]tag_out_i;
  decoder5to32 decoder5to320(line_sel,d_line_sel);
  sp0_mux32to1 mux32to10(D_out, line_sel, data_out);
  sp1_mux32to1 mux32to11(Q_d0, line_sel,  q_d);
  sp2_mux32to1 sp2_mux32to12(tag_out_i, line_sel, tag_out);
  assign d_d_v = d_line_sel & {32{d_v}};
  assign d_d_d = d_line_sel & {32{d_d}};
  assign d_data_Write = d_line_sel & {32{data_Write}};
  assign d_tag_Write = d_line_sel & {32{tag_Write}};
  assign d_v_Write = d_line_sel & {32{v_Write}};
  assign d_d_Write = d_line_sel & {32{d_Write}};
  cache_line cache_line[31:0] (clk,reset,d_d_v,d_d_d,d_data_Write,d_tag_Write,d_v_Write,d_d_Write,addr, d_in,D_out,compare,Q_d0,tag_out_i);
endmodule

//=================LRU=================
//=================LRU=================
//=================LRU=================
//=================LRU=================

// replacement ckt using matrix implementation
module LRU_D_FF(input clk,input set,input reset,output reg Q);
  always@(negedge clk)
  begin
    if(reset==1'b1)
      Q=0;
    else
    begin
      if(set)
        Q=1;
    end
  end
endmodule

module LRU_32bitOR(input [31:0]in, output or_out);
  or u1(or_out,in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7],in[8],in[9],in[10],in[11],in[12],in[13],in[14],in[15],in[16],in[17],in[18],in[19],in[20],in[21],in[22],in[23],in[24],in[25],in[26],in[27],in[28],in[29],in[30],in[31]);
endmodule

module LRU_register16bits(input clk,input set,input [31:0]reset,output [31:0]Q,output NxNout_row);
  LRU_D_FF LRU_D_FF0[31:0](clk,set,reset,Q);
  LRU_32bitOR LRU_32bitOR0(Q, NxNout_row);
endmodule

module LRU_decoder5to32(input [4:0] muxOut,output reg[31:0] decOut);
  always@(muxOut)
  decOut = 1<< muxOut;
endmodule

module LRU_mux(input [4:0] LineIndex,input[4:0] LRUWay,input Hit,output reg [4:0] muxOut);
  always@(Hit or LineIndex or LRUWay)
  case(Hit)
    1'b0:
    begin
      muxOut = LRUWay;
    end
    1'b1:
    begin
      muxOut = LineIndex;
    end
  endcase    
endmodule

module LRU_NxN_DFFs(input clk,input reset,input[31:0] decOut,output [31:0] NxNOut);
  wire [1023:0]Q;
  wire [31:0]new_reset;
  assign new_reset = {32{reset}} | decOut;
  LRU_register16bits LRU_register16bits0[31:0](clk,decOut,new_reset,Q,NxNOut);//row 0 to row 31
endmodule

module LRU_prio_Enc_32(input reset, input [31:0]NxNOut,output reg [4:0] LRUWay);
  integer i;
  reg [4:0]temp;
  always@(reset or NxNOut)
  begin
    if(reset == 1'b1)
      LRUWay = 5'b00000;
    else
      begin
        temp = 5'b11111;
        for(i=32;i>=0;i=i-1)
        begin
          if(NxNOut[i] == 1'b0)
            temp=i;
        end
        LRUWay = temp;
      end
  end
endmodule

module LRU_matrix_implementation(input [4:0] LineIndex,input clk, input LRU_pause, input reset, input Hit , output [4:0] LRUWay);
  wire [4:0] mOut;
  wire [31:0]dOut, nOut;
  LRU_decoder5to32 decoder5to320(mOut,dOut);
  LRU_mux mux0(LineIndex,LRUWay,Hit,mOut);
  LRU_NxN_DFFs NxN_DFFs0((~LRU_pause) & clk,reset,dOut,nOut);
  LRU_prio_Enc_32 prio_Enc_320(reset,nOut,LRUWay);
endmodule
// replacement ckt using matrix implementation ends

// replacement ckt using counter implementation
module LRU_counter_5bits(input clk, input reset,input dec_out, input [4:0]decrement,input pause,output reg [4:0]count, output LRUway_dec);
  always@(negedge clk)
  begin
    if(reset == 1)
      count =0;
    else if (pause == 0)
    begin
      if(dec_out == 1)
        count = 5'b11111;
      else if (count > decrement)
        count = count - 1;
    end
  end
  or u1(LRUway_dec,count[0],count[1],count[2],count[3],count[4]);
endmodule

module LRU_counter_set(input clk, input reset,input [4:0]mout,input [31:0]dec_out,input pause, output [31:0]LRUway_dec);
  wire [4:0]decrement;
  wire [159:0]counter_out;
  sp0_mux32to1_5bits sp0_mux32to1_5bits0(counter_out, mout,decrement);
  LRU_counter_5bits LRU_counter_5bits0[31:0](clk, reset, dec_out, decrement, pause,counter_out,LRUway_dec);
endmodule

module LRU_counter_implementation(input [4:0] LineIndex,input clk, input LRU_pause, input reset, input Hit , output [4:0] LRUWay);
  wire [4:0] mOut;
  wire [31:0]dOut, nOut;
  LRU_mux mux0(LineIndex,LRUWay,Hit,mOut);
  LRU_decoder5to32 decoder5to320(mOut,dOut);
  LRU_prio_Enc_32 prio_Enc_320(reset,nOut,LRUWay);
  LRU_counter_set LRU_counter_set0(clk,reset,mOut,dOut,LRU_pause,nOut);
endmodule
// replacement ckt using counter implementation ends


module cache_prio_Enc_32(input reset, input [31:0]compare,output reg [4:0] LineIndex);
  integer i;
  reg [4:0]temp;
  always@(reset or compare)
  begin
    if(reset == 1'b1)
      LineIndex = 5'b00000;
    else
      begin
        temp = 5'b11111;
        for(i=32;i>=0;i=i-1)
        begin
          if(compare[i] == 1'b1)
            temp=i;
        end
        LineIndex = temp;
      end
  end
endmodule
module counter_5_bits(input clk,input reset, input hit_miss,input Write_p,input Read_p, output reg [3:0]count, output tag_Write);
  always@(negedge clk)
  begin
    if (reset == 1 | hit_miss == 0 | ((~Write_p) & (~Read_p)))
      count = 0;
    else
      count = count +1;
  end
  assign tag_Write = count[0] & count[1] & count[2] & count[3];
endmodule
module mux2to1_5bits(input [4:0]in0, input [4:0]in1, input sel, output reg [4:0]out);
  always@(in0 or in1 or sel)
  begin
    case(sel)
      1'b0:out=in0;
      1'b1:out=in1;
      endcase
  end
endmodule
module mux2to1_16bits(input [15:0]in0, input [15:0]in1, input sel, output reg [15:0]out);
  always@(in0 or in1 or sel)
  begin
    case(sel)
      1'b0:out=in0;
      1'b1:out=in1;
      endcase
  end
endmodule
module mux16to1_16bits_c( input [255:0] outR0, input [3:0] Sel, output reg [15:0] outBus );
	always@(outR0  or Sel)
	case (Sel)
				4'b0000: outBus=outR0[15:0];
				4'b0001: outBus=outR0[31:16];
				4'b0010: outBus=outR0[47:32];
				4'b0011: outBus=outR0[63:48];
				4'b0100: outBus=outR0[79:64];
				4'b0101: outBus=outR0[95:80];
				4'b0110: outBus=outR0[111:96];
				4'b0111: outBus=outR0[127:112];
				4'b1000: outBus=outR0[143:128];
				4'b1001: outBus=outR0[159:144];
				4'b1010: outBus=outR0[175:160];
				4'b1011: outBus=outR0[191:176];
				4'b1100: outBus=outR0[207:192];
				4'b1101: outBus=outR0[223:208];
				4'b1110: outBus=outR0[239:224];
				4'b1111: outBus=outR0[255:240];
	endcase
endmodule
//incomplete


module cache(input clk,input reset,
             //to proc
             input Write_p,input Read_p, input [31:0]addr_p, input [15:0]Data_in_p, output [31:0]Data_out_p,
             //to main mem
             output [31:0]M_mem_write_addr,output [31:0]M_mem_read_addr, input [255:0]M_mem_data_in, output M_mem_data_write,
             output reg [255:0]M_mem_data_out, output miss_wait);

  wire [31:0]compare,addr_to_cache,data_out;
  wire [4:0]LineIndex,LRUWay,line_sel;
  wire hit_miss,tag_Write,q_d,hit_miss_u;
  wire [15:0]data_in,data_in_mem;
  wire [3:0]count;
  wire [26:0]tag_out;
  
  assign miss_wait = ~hit_miss_u & (Write_p | Read_p);
  assign addr_to_cache[31:5] = addr_p[31:5];
  assign M_mem_write_addr = {{tag_out},{count},{1'b0}};
  assign M_mem_read_addr = addr_to_cache;
  assign M_mem_data_write = miss_wait & q_d;
  assign hit_miss = hit_miss_u & (Write_p | Read_p);
  assign Data_out_p = data_out;
  
  always@(M_mem_data_write or M_mem_write_addr or data_out)
  begin
    if (M_mem_data_write == 1)
    begin
      M_mem_data_out[(M_mem_write_addr[4:1]*16)+0] = data_out[0];
      M_mem_data_out[(M_mem_write_addr[4:1]*16)+1] = data_out[1];
      M_mem_data_out[(M_mem_write_addr[4:1]*16)+2] = data_out[2];
      M_mem_data_out[(M_mem_write_addr[4:1]*16)+3] = data_out[3];
      M_mem_data_out[(M_mem_write_addr[4:1]*16)+4] = data_out[4];
      M_mem_data_out[(M_mem_write_addr[4:1]*16)+5] = data_out[5];
      M_mem_data_out[(M_mem_write_addr[4:1]*16)+6] = data_out[6];
      M_mem_data_out[(M_mem_write_addr[4:1]*16)+7] = data_out[7];
      M_mem_data_out[(M_mem_write_addr[4:1]*16)+8] = data_out[8];
      M_mem_data_out[(M_mem_write_addr[4:1]*16)+9] = data_out[9];
      M_mem_data_out[(M_mem_write_addr[4:1]*16)+10] = data_out[10];
      M_mem_data_out[(M_mem_write_addr[4:1]*16)+11] = data_out[11];
      M_mem_data_out[(M_mem_write_addr[4:1]*16)+12] = data_out[12];
      M_mem_data_out[(M_mem_write_addr[4:1]*16)+13] = data_out[13];
      M_mem_data_out[(M_mem_write_addr[4:1]*16)+14] = data_out[14];
      M_mem_data_out[(M_mem_write_addr[4:1]*16)+15] = data_out[15];
    end
  end
  
  mux2to1_16bits mux2to1_16bits0(data_in_mem, Data_in_p, hit_miss, data_in);
  counter_5_bits counter_5_bits0( clk, reset, miss_wait,Write_p,Read_p, count, tag_Write);
  mux2to1_5bits mux2to1_5bits0({{count},{1'b0}}, addr_p[4:0], hit_miss, addr_to_cache[4:0]);
  mux16to1_16bits_c mux16to1_16bits_c0( M_mem_data_in, count, data_in_mem );
  LRU_32bitOR LRU_32bitOR1(compare, hit_miss_u);
  mux2to1_5bits mux2to1_5bits1( LRUWay,LineIndex, hit_miss_u, line_sel);
  cache_prio_Enc_32 cache_prio_Enc_320(reset, compare, LineIndex);
  //cache_mem(input clk,input reset, input d_v, input d_d, input data_Write, input tag_Write, input v_Write, input d_Write, input [31:0]addr, input [4:0]line_sel, input [15:0] d_in, output [31:0] data_out,output [31:0]compare, output q_d,output [26:0]tag_out);
  cache_mem cache_mem0(clk,reset, 1'b1, (hit_miss & Write_p & (~tag_Write)), ((~hit_miss) | Write_p), tag_Write, tag_Write/*((~hit_miss)&(Write_p | Read_p))*/, ((hit_miss & Write_p) | tag_Write), addr_to_cache, line_sel, data_in, data_out,compare, q_d,tag_out);
  //LRU_matrix_implementation LRU0(LineIndex, clk, (~hit_miss), reset,  hit_miss , LRUWay);
  LRU_counter_implementation LRU0_new( LineIndex, clk, (~hit_miss), reset, hit_miss , LRUWay);
endmodule



module cache_1 (input clk,input reset, input Write_p, input Read_p,input [31:0] addr_p,input [15:0] Data_in_p,output reg [31:0] Data_out_p,/*
             M_mem_write_addr,M_mem_read_addr, M_mem_data_in, M_mem_data_write,
             M_mem_data_out,*/output reg miss_wait);
  reg [31:0] instr0,instr1,instr2,instr3,instr4,instr5,instr6,instr7,instr8,instr9,instr10,instr11,instr12,instr13,instr14,instr15;
            initial
            begin
              miss_wait = 1'b0;
              instr0  = 32'b00000000_00000000__10000100_100_00100; // G2 nop G1 add r4,4
              instr1  = 32'b00000000_00000000__00000001_101_00101; // G2 nop G1 sub r5,1
              instr2  = 32'b00000000_00000000__100_011_00001_00001;// G2 nop G1 shift r3,r4,1
              instr3  = 32'b00000000_00000000__100_011_00000_01000;// G2 nop G1 MVN r3,r4
              instr4  = 32'b101_110_00100_01111__00000000_000_00000; // G2 load r6,r5(8)  G1 nop
              instr5  = 32'b000_100_01000_01110__00000000_000_00000; // G2 store r4,r0(16) G1 nop
              instr6  = 32'b11101100_000_11011__00000000_000_00000; // G2 b -20            G1 nop
              instr7  = 32'b0000_0000_100_11100__00000000_000_00000;  // G2 jump 6         G1 nop
              instr8  = 32'b00000000_00000000__00000001_001_00100; // G2 nop G1 add r1,1
              instr9  = 32'b00000000_00000000__00000001_001_00100; // G2 nop G1 add r1,1
              instr10 = 32'b00000000_00000000__00000001_001_00100; // G2 nop G1 add r1,1
              instr11 = 32'b00000000_00000000__00000001_001_00100; // G2 nop G1 add r1,1
              instr12 = 32'b00000000_00000000__00000001_001_00100; // G2 nop G1 add r1,1
              instr13 = 32'b00000000_00000000__00000001_001_00100; // G2 nop G1 add r1,1
              instr14 = 32'b00000011_00000000__00000001_001_00100; // G2 nop G1 add r1,1
              instr15 = {2{16'b11111111_11111111}}; // G2 nop G1 add r1,1
            end
            always@(addr_p)
            begin
              case(addr_p[5:2])
                0: Data_out_p =instr0 | instr4;//0
                1: Data_out_p =instr5;//4
                2: Data_out_p =instr0;//8
                3: Data_out_p =instr1;//12
                4: Data_out_p =instr2;//16
                5: Data_out_p =instr7;//20
                6: Data_out_p =instr14;//24
                7: Data_out_p =instr14;//28
                8: Data_out_p =instr3;//32
                9: Data_out_p =instr6;//36 b
                10:Data_out_p =instr15;
                11:Data_out_p =instr15;
                12:Data_out_p =instr15;
                13:Data_out_p =instr15;
                14:Data_out_p =instr15;
                15:Data_out_p =instr15;
              endcase
            end
endmodule


/////////////////////////////////////////////
/////////////////////////////////////////////
/////////////////////////////////////////////
////////////////proc-design//////////////////
/////////////////////////////////////////////
/////////////////////////////////////////////
/////////////////////////////////////////////



//mux
module mux2to1_2bits(input [1:0]in0, input [1:0]in1, input sel, output reg [1:0]out);
  always@(in0 or in1 or sel)
  begin
    case(sel)
      1'b0:out=in0;
      1'b1:out=in1;
      endcase
  end
endmodule
module mux2to1_1bit(input in0, input in1, input sel, output reg out);
  always@(in0 or in1 or sel)
  begin
    case(sel)
      1'b0:out=in0;
      1'b1:out=in1;
      endcase
  end
endmodule

module mux4to1_32bits(input [31:0] outR0,outR1,outR2,outR3, input [2:0] Sel, output reg [31:0] out );
	always@(outR0 or outR1 or outR2 or outR3 or Sel)
	case (Sel)
				2'b00: out=outR0;
				2'b01: out=outR1;
				2'b10: out=outR2;
				2'b11: out=outR3;
	endcase
endmodule
module mux8to1_32bits(input [31:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7, input [2:0] Sel, output reg [31:0] out );
	always@(outR0 or outR1 or outR2 or outR3 or outR4 or outR5 or outR6 or outR7 or Sel)
	case (Sel)
				3'b000: out=outR0;
				3'b001: out=outR1;
				3'b010: out=outR2;
				3'b011: out=outR3;
				3'b100: out=outR4;
				3'b101: out=outR5;
				3'b110: out=outR6;
				3'b111: out=outR7;
	endcase
endmodule
module mux16to1_16bits( input [15:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15, input [3:0] Sel, output reg [15:0] outBus );
	always@(outR0 or outR1 or outR2 or outR3 or outR4 or outR5 or outR6 or outR7 or outR8 or outR9 or outR10 or outR11 or outR12 or outR13 or outR14 or outR15 or Sel)
	case (Sel)
				4'b0000: outBus=outR0;
				4'b0001: outBus=outR1;
				4'b0010: outBus=outR2;
				4'b0011: outBus=outR3;
				4'b0100: outBus=outR4;
				4'b0101: outBus=outR5;
				4'b0110: outBus=outR6;
				4'b0111: outBus=outR7;
				4'b1000: outBus=outR8;
				4'b1001: outBus=outR9;
				4'b1010: outBus=outR10;
				4'b1011: outBus=outR11;
				4'b1100: outBus=outR12;
				4'b1101: outBus=outR13;
				4'b1110: outBus=outR14;
				4'b1111: outBus=outR15;
	endcase
endmodule
//mux end

//decoder
module decoder3to8( input [2:0] destReg, output reg [7:0] decOut);
	always@(destReg)
	case(destReg)
			3'b000: decOut=8'b00000001; 
			3'b001: decOut=8'b00000010;
			3'b010: decOut=8'b00000100;
			3'b011: decOut=8'b00001000;
			3'b100: decOut=8'b00010000;
			3'b101: decOut=8'b00100000;
			3'b110: decOut=8'b01000000;
			3'b111: decOut=8'b10000000;
	endcase
endmodule
module decoder4to16( input [3:0] destReg, output reg [15:0] decOut);
	always@(destReg)
	case(destReg)
			4'b0000: decOut=16'b0000000000000001; 
			4'b0001: decOut=16'b0000000000000010;
			4'b0010: decOut=16'b0000000000000100;
			4'b0011: decOut=16'b0000000000001000;
			4'b0100: decOut=16'b0000000000010000;
			4'b0101: decOut=16'b0000000000100000;
			4'b0110: decOut=16'b0000000001000000;
			4'b0111: decOut=16'b0000000010000000;
			4'b1000: decOut=16'b0000000100000000; 
			4'b1001: decOut=16'b0000001000000000;
			4'b1010: decOut=16'b0000010000000000;
			4'b1011: decOut=16'b0000100000000000;
			4'b1100: decOut=16'b0001000000000000;
			4'b1101: decOut=16'b0010000000000000;
			4'b1110: decOut=16'b0100000000000000;
			4'b1111: decOut=16'b1000000000000000;
	endcase
endmodule
//decoder end

//demux
module demux1to8_32bits(input [31:0]in, input [2:0]sel, output reg [31:0]out0,out1,out2,out3,out4,out5,out6,out7);
  always@(in or sel)
  begin
    out0 = 0;
    out1 = 0;
    out2 = 0;
    out3 = 0;
    out4 = 0;
    out5 = 0;
    out6 = 0;
    out7 = 0;
   	case(sel)
			3'b000: out0=in;
			3'b001: out1=in;
			3'b010: out2=in;
			3'b011: out3=in;
			3'b100: out4=in;
			3'b101: out5=in;
			3'b110: out6=in;
			3'b111: out7=in;
	  endcase
  end
endmodule
//demux end

//adder
module adder32bits(input [31:0]in1,in2,output reg [31:0]out);
  always@(in1 or in2)
  begin
    out = in1 + in2;
  end
endmodule
//adder end

//D flipflop
module D_ff (input clk, input reset, input regWrite, input decOut1b, input d, output reg q);
	always @ (negedge clk)
	begin
	if(reset==1'b1)
		q=0;
	else
		if(regWrite == 1'b1 && decOut1b==1'b1) begin q=d; end
	end
endmodule
module D_ff_register_file (input clk, input reset, input regWrite, input decOut1b, input d, output reg q);
	always @ (posedge clk)
	begin
	if(reset==1'b1)
		q=0;
	else
		if(regWrite == 1'b1 && decOut1b==1'b1) begin q=d; end
	end
endmodule
//D flipflop end

//registers
module register8bit( input clk, input reset, input regWrite, input decOut1b, input [7:0] writeData, output  [7:0] outR );
	D_ff d0[7:0] (clk, reset, regWrite, decOut1b, writeData, outR);
endmodule
module register5bit( input clk, input reset, input regWrite, input decOut1b, input [4:0] writeData, output  [4:0] outR );
	D_ff d0[4:0] (clk, reset, regWrite, decOut1b, writeData, outR);
endmodule
module register4bit( input clk, input reset, input regWrite, input decOut1b, input [3:0] writeData, output	[3:0] outR);
	D_ff d0[3:0] (clk, reset, regWrite, decOut1b, writeData, outR);
endmodule
module register3bit( input clk, input reset, input regWrite, input decOut1b, input [2:0] writeData, output  [2:0] outR );
	D_ff d0[2:0] (clk, reset, regWrite, decOut1b, writeData, outR);
endmodule
module register2bit( input clk, input reset, input regWrite, input decOut1b, input [1:0] writeData, output  [1:0] outR );
	D_ff d0[1:0] (clk, reset, regWrite, decOut1b, writeData, outR);
endmodule
module register1bit( input clk, input reset, input regWrite, input decOut1b, input writeData, output outR );
	D_ff d0      (clk, reset, regWrite, decOut1b, writeData, outR);
endmodule
module register32bit( input clk, input reset, input regWrite, input decOut1b, input [31:0] writeData, output  [31:0] outR );
	D_ff d0[31:0] (clk, reset, regWrite, decOut1b, writeData, outR);
endmodule
module register16bit( input clk, input reset, input regWrite, input decOut1b, input [15:0] writeData, output  [15:0] outR );
	D_ff d0[15:0] (clk, reset, regWrite, decOut1b, writeData, outR);
endmodule
module register32bit_register_file( input clk, input reset, input regWrite, input decOut1b, input [31:0] writeData, output  [31:0] outR );
	D_ff_register_file d0[31:0] (clk, reset, regWrite, decOut1b, writeData, outR);
endmodule
//registers end

//register file == completed and tested 
module registerSet( input clk, input reset, input regWrite, input [7:0] decOut, input [31:0] writeData0,writeData1,writeData2,writeData3,writeData4,writeData5,writeData6,writeData7,
output [31:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7 );
		register32bit_register_file r0 (clk, reset, 1'b0, decOut[0] , writeData0 , outR0 );//hard coded Zero
		register32bit_register_file r1 (clk, reset, regWrite, decOut[1] , writeData1 , outR1 );
		register32bit_register_file r2 (clk, reset, regWrite, decOut[2] , writeData2 , outR2 );
		register32bit_register_file r3 (clk, reset, regWrite, decOut[3] , writeData3 , outR3 );
		register32bit_register_file r4 (clk, reset, regWrite, decOut[4] , writeData4 , outR4 );
		register32bit_register_file r5 (clk, reset, regWrite, decOut[5] , writeData5 , outR5 );
		register32bit_register_file r6 (clk, reset, regWrite, decOut[6] , writeData6 , outR6 );
		register32bit_register_file r7 (clk, reset, regWrite, decOut[7] , writeData7 , outR7 );
endmodule
module registerFile(input clk, input reset, input regWriteG1, input regWriteG2, input [2:0] G1Rd, input [2:0] G1Rm, input [2:0] G2Rd, input [2:0] G2Rn, input [2:0] destRegG1,
input [2:0] destRegG2,  input [31:0] writeDataG1,  input [31:0] writeDataG2, output [31:0] outBusG1Rd, output [31:0] outBusG1Rm, output [31:0] outBusG2Rd, output [31:0] outBusG2Rn );
	wire [7:0] decOutG1,decOutG2,decOut;
	wire [31:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7;
	wire [31:0]writeData0,writeData1,writeData2,writeData3,writeData4,writeData5,writeData6,writeData7;
	wire [31:0]writeDataG10,writeDataG11,writeDataG12,writeDataG13,writeDataG14,writeDataG15,writeDataG16,writeDataG17;
	wire [31:0]writeDataG20,writeDataG21,writeDataG22,writeDataG23,writeDataG24,writeDataG25,writeDataG26,writeDataG27;
	decoder3to8 d0 (destRegG1,decOutG1);
	decoder3to8 d1 (destRegG2,decOutG2);
	demux1to8_32bits dm1(writeDataG1, destRegG1, writeDataG10,writeDataG11,writeDataG12,writeDataG13,writeDataG14,writeDataG15,writeDataG16,writeDataG17);
	demux1to8_32bits dm2(writeDataG2, destRegG2, writeDataG20,writeDataG21,writeDataG22,writeDataG23,writeDataG24,writeDataG25,writeDataG26,writeDataG27);
	assign decOut = (decOutG1 & {8{regWriteG1}}) | (decOutG2 & {8{regWriteG2}});
	assign writeData0 = writeDataG10 | writeDataG20;
	assign writeData1 = writeDataG11 | writeDataG21;
	assign writeData2 = writeDataG12 | writeDataG22;
	assign writeData3 = writeDataG13 | writeDataG23;
	assign writeData4 = writeDataG14 | writeDataG24;
	assign writeData5 = writeDataG15 | writeDataG25;
	assign writeData6 = writeDataG16 | writeDataG26;
	assign writeData7 = writeDataG17 | writeDataG27;
	registerSet rSet0(clk, reset, regWriteG1 | regWriteG2, decOut, writeData0,writeData1,writeData2,writeData3,writeData4,writeData5,writeData6,writeData7, outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7);
	mux8to1_32bits m1(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,G1Rd,outBusG1Rd);
	mux8to1_32bits m2(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,G1Rm,outBusG1Rm);
	mux8to1_32bits m3(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,G2Rd,outBusG2Rd);
	mux8to1_32bits m4(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,G2Rn,outBusG2Rn);
endmodule
module tb_register_file();
  reg clk,reset,regWriteG1,regWriteG2;
  reg [2:0] G1Rd,G1Rm,G2Rd,G2Rn,destRegG1,destRegG2;
  reg [31:0]writeDataG1,writeDataG2;
  wire [31:0]outBusG1Rd,outBusG1Rm,outBusG2Rd,outBusG2Rn;
  registerFile uut( clk,  reset,  regWriteG1,  regWriteG2, G1Rd, G1Rm, G2Rd, G2Rn, destRegG1,
  destRegG2, writeDataG1, writeDataG2,  outBusG1Rd, outBusG1Rm, outBusG2Rd, outBusG2Rn );
  always
  begin
    #5 clk = ~clk;
  end
  initial
  begin
    clk=0;reset=1;regWriteG1=0;regWriteG2=0;G1Rd=0;G1Rm=0;G2Rd=0;G2Rn=0;
    destRegG1=0;destRegG2=0;writeDataG1=0;writeDataG2=0;
    #10
    reset=0;regWriteG1=1;regWriteG2=1;destRegG1=2;destRegG2=3;
    G1Rd=0;G1Rm=1;G2Rd=2;G2Rn=3;writeDataG2=30;writeDataG1 = 20;
    #100;
  end
endmodule
////////////////////////////////////////////////////////////////////REG FILE COMPLETE////////////////////////////////////////////////////////
/////////////////////////////////////////IF STAGE MODULES//////////////////////////////////////////////////////////////
module hazard_detection_instr_cache(input miss_wait, output reg hazard_PC_Write, output reg P1_Flush_Reset);
	always@(miss_wait)
		begin
			if(miss_wait==1'b1)
				begin
					hazard_PC_Write=1'b0;
					P1_Flush_Reset=1'b1;
				end
			else if(miss_wait==1'b0)
				begin
					hazard_PC_Write=1'b1;
					P1_Flush_Reset=1'b0;
				end
		end
endmodule
//////////////////////////////////////IF STAGE ENDS/////////////////////////////////////
///////////////////////////////////////ID MODULES//////////////////////////////////////////////////////////////
module load_use_hazard(input P2_MemRead,
				 input [2:0]P2_G2_Rd,
				 input [2:0]P1_G1_Rd, // 7:5 one.	For lw $t1. ---   then add $t1, $t1,  ----
				 input [2:0]P1_G1_Rm,	//For lw , then shift or MVN
				 input [2:0]P1_G2_Rn,	// For lw $t1,----  then sw $t1, ----
				 // input p1_G2_Rd,
				 output reg PC_Write,
				 output reg P1_Write,
				 output reg zero_control_signals);

//always @(p2_MemRead, p2_G2_Rd, p1_G1_Rd, p1_G1_Rm, p1_G2_Rn, p1_G2_Rd) begin
always @(P2_MemRead, P2_G2_Rd, P1_G1_Rd, P1_G1_Rm, P1_G2_Rn) 
	begin
		if (P2_MemRead == 1'b1 && P2_G2_Rd!=0 && ((P2_G2_Rd == P1_G1_Rd)||(P2_G2_Rd == P1_G1_Rm)||(P2_G2_Rd == P1_G2_Rn)) ) 
		begin
			//Stall for one cycle
			PC_Write = 1'b0;
			P1_Write = 1'b0;
			zero_control_signals = 1'b1;	//This is control of a mux, which zeroes all control signals of p2.
		end
		else
		begin
		  PC_Write = 1'b1;
			P1_Write = 1'b1;
			zero_control_signals = 1'b0;	//This is control of a mux, which zeroes all control signals of p2.
		end
	end
endmodule

module control_ckt(input [15:0] p1_G1, input [15:0] p1_G2,
					input N_reg_out,

					input N_Alu, input V_Alu,
					input p2_N_Wr, input p2_V_Wr,
					input p3_N,
					input p3_N_Wr,
					input p4_N,
					input p4_N_Wr,
					
					output reg JorB,
					output reg [1:0] pCSrc,
					output reg G1_Rd_or_Rm,
					output reg add_or_shift_imm,
					output reg [1:0] aluOp,
					output reg addsub_or_shiftMVN_Rd,
					output reg N_Wr, output reg V_Wr, output reg C_Wr,  output reg Z_Wr,
					output reg memRead, output reg memWrite,
					output reg G1_regWrite, output reg G2_regWrite,
					output reg EpCWrite, output reg CauseWrite, output reg Cause,
					output reg IFID_Flush_reset, output reg IDEX_Flush_reset, output reg EXMEM_Flush_reset);
reg undefined_instr_G1,undefined_instr_G2;
always @(p1_G1, p1_G2, N_reg_out, N_Alu, V_Alu, p2_N_Wr, p2_V_Wr, p3_N, p3_N_Wr, p4_N, p4_N_Wr) 
begin
  //overflow exception handeling
  temp=0;
  if(V_Alu == 1'b1 && p2_V_Wr == 1'b1)
    begin
      	pCSrc = 2'b00;
	     IFID_Flush_reset = 1'b1;
	     IDEX_Flush_reset = 1'b1;
	     EXMEM_Flush_reset = 1'b1;
	     EpCWrite = 1'b1;
	     CauseWrite = 1'b1;
	     Cause = 1'b1;
       G1_Rd_or_Rm	=0;
       add_or_shift_imm =0;	
       aluOp =0;
       addsub_or_shiftMVN_Rd	=0;
       memRead	=0;
       memWrite	=0;
       G1_regWrite	=0;
       G2_regWrite	=0;
		   N_Wr = 1'b0;
		   V_Wr = 1'b0;
		   C_Wr = 1'b0;
		   Z_Wr = 1'b0;
    end
  else
    begin
      undefined_instr_G1=0;
      undefined_instr_G2=0;
      IFID_Flush_reset = 0;
	    IDEX_Flush_reset = 0;
	    EXMEM_Flush_reset = 0;
	    EpCWrite = 0;
	    CauseWrite = 0;
	    Cause = 0;
      	case (p1_G1[4:0])//G1
      	  5'b00000:   //nop
	         begin
	           pCSrc = 2'b10;//pc+4
             G1_Rd_or_Rm	=0;
             add_or_shift_imm =0;	
             aluOp =0;
             addsub_or_shiftMVN_Rd	=0;
             G1_regWrite	=0;
		         N_Wr = 1'b0;
		         V_Wr = 1'b0;
		         C_Wr = 1'b0;
		         Z_Wr = 1'b0;
	         end
	       5'b00100:	//Add
	         begin
		          pCSrc = 2'b10;
		          G1_Rd_or_Rm = 1'b0;
		          add_or_shift_imm = 1'b0;
		          aluOp = 2'b00;
		          addsub_or_shiftMVN_Rd = 1'b1;
		          G1_regWrite = 1'b1;
		          N_Wr = 1'b1;
		          V_Wr = 1'b1;
		          C_Wr = 1'b1;
		          Z_Wr = 1'b1;
	         end
	       5'b00101:	//Sub
	         begin
		          pCSrc = 2'b10;
		          G1_Rd_or_Rm = 1'b0;
		          add_or_shift_imm = 1'b0;
		          aluOp = 2'b01;
		          addsub_or_shiftMVN_Rd = 1'b1;
		          G1_regWrite = 1'b1;
		          N_Wr = 1'b1;
		          V_Wr = 1'b1;
		          C_Wr = 1'b1;
		          Z_Wr = 1'b1;
	         end
	       5'b00001:	//Shift
	         begin
		          pCSrc = 2'b10;
		          G1_Rd_or_Rm = 1'b1;
		          add_or_shift_imm = 1'b1;
		          aluOp = 2'b10;
		          addsub_or_shiftMVN_Rd = 1'b0;
		          G1_regWrite = 1'b1;
		          N_Wr = 1'b1;
		          V_Wr = 1'b0;
		          C_Wr = 1'b1;
		          Z_Wr = 1'b1;
	         end
	       5'b01000:	//MVN 
	         begin
		        if (p1_G1[9:5] == 5'b00000)
		        begin
		          pCSrc = 2'b10;
		          G1_Rd_or_Rm = 1'b1;
		          add_or_shift_imm = 1'b0;	//Dont care value; This value shouldnt be taken in ALU module
		          aluOp = 2'b11;
		          addsub_or_shiftMVN_Rd = 1'b0;	
		          G1_regWrite = 1'b1;
		          N_Wr = 1'b1;
		          V_Wr = 1'b0;
		          C_Wr = 1'b0;
		          Z_Wr = 1'b1;
		        end
		        else
		        begin
		          undefined_instr_G1 = 1;
		        end
		       end
		     default:
	         begin
		          //Undefined Instruction     Flushing IF/ID, ID/EX
		          undefined_instr_G1 = 1;
		       end
	    endcase
	    case(p1_G2[4:0])//for G2
	       5'b00000:			//nop
	         begin
			       pCSrc = 2'b10;
		         memRead = 1'b0;
		         memWrite = 1'b0;
		         G2_regWrite = 1'b0;
		         JorB = 1'b0;
	         end
	       5'b01111:	//Load
	         begin
			       pCSrc = 2'b10;
		         memRead = 1'b1;
		         memWrite = 1'b0;
		         G2_regWrite = 1'b1;
		         JorB = 1'b0;
	         end
	       5'b01110:	//Store
	         begin
			       pCSrc = 2'b10;
		         memRead = 1'b0;
		         memWrite = 1'b1;
		         G2_regWrite = 1'b0;
		         JorB = 1'b0;
	         end
	      	5'b11100:	//Jump
	         begin
			       pCSrc = 2'b01;
		         memRead = 1'b0;
		         memWrite = 1'b0;
		         G2_regWrite = 1'b0;
		         JorB = 1'b0;
		         IFID_Flush_reset = 1'b1;
	         end
	       5'b11011:	//B
	         begin
		         if (p1_G2[7:5] == 3'b000) 
		         begin
					     pCSrc = 2'b01;
					     memRead = 1'b0;
					     memWrite = 1'b0;
					     G2_regWrite = 1'b0;
					     JorB = 1'b1;
					     IFID_Flush_reset = 1'b1;
				         if (p2_N_Wr == 1'b1)
				           begin
				             if(N_Alu == 1'b0)
				               begin
				               pCSrc = 2'b10;
				               IFID_Flush_reset = 1'b0;
				               end
				           end
                 else if( p3_N_Wr == 1'b1)
				           begin
				             if(p3_N == 1'b0)
				               begin
				               pCSrc = 2'b10;
				               IFID_Flush_reset = 1'b0;
				               end
				           end
                 else if( p4_N_Wr == 1'b1)
				           begin
				             if(p4_N == 1'b0)
				               begin
				               pCSrc = 2'b10;
				               IFID_Flush_reset = 1'b0;
				               end
				           end
                 else if( N_reg_out == 1'b0)
                    begin
				            pCSrc = 2'b10;
				            IFID_Flush_reset = 1'b0;  
				            end 
				      end
				      else
				      begin
				        undefined_instr_G2 = 1;
				      end
				   end
				 default:
	         begin
	           undefined_instr_G2 = 1;
	         end
	    endcase
	    if(undefined_instr_G1 ==1 || undefined_instr_G2 == 1)
	      begin
	        pCSrc = 2'b00;
	        IFID_Flush_reset = 1;
	        IDEX_Flush_reset = 1;
	        EXMEM_Flush_reset = 1;
	        EpCWrite = 1;
	        CauseWrite = 1;
	        Cause = 0;
	      end
    end
end
endmodule


///////////////////////////////////////////////////////////ID ENDS////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////EX BEGINS/////////////////////////////////////////////////////////////////////////////////
module ALU(input [31:0] aluIn1, input [31:0] aluIn2, input [1:0] aluOp, output reg [31:0] aluOut, output reg [3:0] aluFlagOut);
  reg [32:0] outtemp;
  always@(aluIn1,aluIn2,aluOp)
  begin
    //in1temp[16:0]={aluIn1[15],aluIn1[15:0]};
    //in2temp[16:0]={aluIn2[15],aluIn2[15:0]};
    if(aluOp[1:0]==2'b00)                                             //Addition
      begin
        outtemp[32:0]=aluIn1[31:0]+aluIn2[31:0];
        aluOut[31:0]=aluIn1[31:0]+aluIn2[31:0];
        if(aluOut[31]==1'b1)                                                                                                         //Check if Negative (Flag)
          begin
            aluFlagOut[3]=1'b1;
          end
        else
          begin
            aluFlagOut[3]=1'b0;
          end
                   
        if((aluIn1[31]==1'b0 && aluIn2[31]==1'b0 && aluOut[31]==1'b1)||(aluIn1[31]==1'b1 && aluIn2[31]==1'b1 && aluOut[31]==1'b0))  // Check if overflow (Flag)
          begin
            aluFlagOut[2]=1'b1;
          end
        else
          begin
            aluFlagOut[2]=1'b0;
          end
                  
        if(outtemp[32]==1'b1)                                                                                                       // Check if carry flag
          begin
            aluFlagOut[1]=1'b1;
          end
        else
          begin
            aluFlagOut[1]=1'b0;
          end
          
        if(aluOut[31:0]==32'b00000000000000000000000000000000)                                                                                      // Check if zero flag
          begin
            aluFlagOut[0]=1'b1;
          end
        else
          begin
            aluFlagOut[0]=1'b0;
          end
      end
      
      
      
    else if(aluOp[1:0]==2'b01)                                        //Subtraction
      begin
        outtemp[32:0]=aluIn1[31:0]-aluIn2[31:0];
        aluOut[31:0]=aluIn1[31:0]-aluIn2[31:0];
        if(aluOut[31]==1'b1)                                                                                                         //Check if Negative (Flag)
          begin
            aluFlagOut[3]=1'b1;
          end
        else
          begin
            aluFlagOut[3]=1'b0;
          end
                   
        if((aluIn1[31]==1'b0 && aluIn2[31]==1'b1 && aluOut[31]==1'b1)||(aluIn1[31]==1'b1 && aluIn2[31]==1'b0 && aluOut[31]==1'b0))  // Check if overflow (Flag)
          begin
            aluFlagOut[2]=1'b1;
          end
        else
          begin
            aluFlagOut[2]=1'b0;
          end
                  
        if(outtemp[32]==1'b1)                                                                                                       // Check if carry flag
          begin
            aluFlagOut[1]=1'b1;
          end
        else
          begin
            aluFlagOut[1]=1'b0;
          end
          
        if(aluOut[31:0]==32'b00000000000000000000000000000000)                                                                                      // Check if zero flag
          begin
            aluFlagOut[0]=1'b1;
          end
        else
          begin
            aluFlagOut[0]=1'b0;
          end
      end
      
      
      
    else if(aluOp[1:0]==2'b10)                                         //Shift right by immediate value
      begin
          outtemp[32:0]={aluIn1[31:0],1'b0};
          outtemp[32:0]=outtemp[32:0] >> aluIn2[31:0];
          aluOut[31:0]=aluIn1[31:0] >> aluIn2[31:0];
          
          if(aluOut[31]==1'b1)                                                                                                         //Check if Negative (Flag)
            begin
              aluFlagOut[3]=1'b1;
            end
          else
            begin
              aluFlagOut[3]=1'b0;
            end
            
          if(aluIn2[31:0]!=32'b00000000000000000000000000000000)
            begin
              aluFlagOut[1]=outtemp[0];
            end                                                                                                    // Check if carry flag
     
          if(aluOut[31:0]==32'b00000000000000000000000000000000)                                                                                      // Check if zero flag
             begin
               aluFlagOut[0]=1'b1;
             end
          else
            begin
             aluFlagOut[0]=1'b0;
            end  
      end
    else if(aluOp[1:0]==2'b11)                                          //MVN (Move not)
      begin
        aluOut[31:0]=~aluIn1[31:0];
        if(aluOut[31]==1'b1)                                                                                                         //Check if Negative (Flag)
          begin
            aluFlagOut[3]=1'b1;
          end
        else
          begin
            aluFlagOut[3]=1'b0;
          end
        if(aluOut[31:0]==32'b00000000000000000000000000000000)                                                                                      // Check if zero flag
             begin
               aluFlagOut[0]=1'b1;
             end
          else
            begin
             aluFlagOut[0]=1'b0;
            end  
      end
  end
endmodule


//Zero extender from 8 bits to 32 bits.
module zero_ext_8_to_32_bits(input [7:0] in1, output reg [31:0] out1);                                      
  always@(in1)
  begin
    out1[31:0]={24'b000000000000000000000000,in1[7:0]};
  end
endmodule

//sign extend 8 to 32 bits
module sign_ext_8_to_32_bits(input [7:0] in1, output reg [31:0] out1);                                      
  always@(in1)
  begin
    out1[31:0]={{24{in1[7]}},in1[7:0]};
  end
endmodule


//sign extend 11 to 32 bits
module sign_ext_11_to_32_bits(input [10:0] in1, output reg [31:0] out1);                                      
  always@(in1)
  begin
    out1[31:0]={{21{in1[10]}},in1[10:0]};
  end
endmodule

//Zero extender from 5 bits to 32 bits.  
module zero_ext_5_to_32_bits(input [4:0] in1, output reg [31:0] out1);
  always@(in1)
  begin
    out1[31:0]={27'b000000000000000000000000000,in1[4:0]};
  end
endmodule


//32-bit 2 to 1 mux
module mux2to1_32bits(input [31:0] in1, input [31:0] in2,input control, output reg [31:0] muxOut);
  always@(in1 or in2 or control)
  begin
    if(control==1'b0)
      muxOut[31:0]=in1[31:0];
    else if(control==1'b1)
      muxOut[31:0]=in2[31:0];
  end
endmodule
  
module mux_3_to_1_32bits(input [31:0] in1,in2,in3, input [1:0] mux_select, output reg [31:0] mux_out);
  always@(in1,in2,in3,mux_select)
  begin
    if(mux_select[1:0]==2'b00)
      begin
       mux_out[31:0]=in1[31:0];
      end
    else if(mux_select[1:0]==2'b01)
      begin
        mux_out[31:0]=in2[31:0];
      end
    else if(mux_select[1:0]==2'b10)
      begin
        mux_out[31:0]=in3[31:0];
      end
      
  end
endmodule

module mux_2_to_1_16bits(input [15:0] in1,in2, input select, output reg [15:0] muxOut);
  always@(in1,in2,select)
  begin
    if(select==1'b0)
      begin
        muxOut[15:0]=in1[15:0];
      end
    else if(select==1'b1)
      begin
        muxOut[15:0]=in2[15:0];
      end
  end
endmodule
  
module mux_2_to_1_3bits(input [2:0] in1,in2, input select, output reg [2:0] muxOut);
  always@(in1,in2,select)
  begin
    if(select==1'b0)
      begin
        muxOut[2:0]=in1[2:0];
      end
    else if(select==1'b1)
      begin
        muxOut[2:0]=in2[2:0];
      end
  end
endmodule
//Sign extender from 5 bits to 16 bits.
module sign_ext_5_to_32_bits(input [4:0] in1, output reg [31:0] out1);
  always@(in1)
  begin
    out1[31]=in1[4];
    out1[30]=in1[4];
    out1[29]=in1[4];
    out1[28]=in1[4];
    out1[27]=in1[4];
    out1[26]=in1[4];
    out1[25]=in1[4];
    out1[24]=in1[4];
    out1[23]=in1[4];
    out1[22]=in1[4];
    out1[21]=in1[4];
    out1[20]=in1[4];
    out1[19]=in1[4];
    out1[18]=in1[4];
    out1[17]=in1[4];
    out1[16]=in1[4];
    
    out1[15]=in1[4];
    out1[14]=in1[4];
    out1[13]=in1[4];
    out1[12]=in1[4];
    out1[11]=in1[4];
    out1[10]=in1[4];
    out1[9]=in1[4];
    out1[8]=in1[4];
    out1[7]=in1[4];
    out1[6]=in1[4];
    out1[5]=in1[4];
    out1[4:0]=in1[4:0];
  end
endmodule
  
module left_shift_2(input [31:0] in1, output reg [31:0] out1);
  always@(in1)
  begin
    out1[31:0]={in1[30:0],1'b0};
  end
endmodule

module adder(input [31:0] in1, input [31:0] in2, output reg [31:0] out1);
  always@(in1,in2)
  begin
    out1[31:0]=in1[31:0]+in2[31:0];
  end
endmodule

module forwarding_unit(input p3_g1_reg_write, input p4_g1_reg_write,input p3_g2_reg_write, input p4_g2_reg_write, input [2:0] p3_g1_rd, p4_g1_rd, p3_g2_rd, p4_g2_rd, 
                              input [2:0] p2_g2_rd, p2_g2_rn, g1_rd_or_rm_muxout, output reg aluIn1_mux_select, output reg [1:0] m1_select, output reg [1:0] m2_select, 
                              output reg [1:0] m3_select, output reg adderIn1_mux_select, /*output reg p3_flush_reset, output reg p2_write, output reg p1_write, output reg pc_write,*/
                              output reg m3OutputMux_select);
always@(p3_g1_reg_write, p4_g1_reg_write, p4_g2_reg_write, p3_g1_rd, p4_g1_rd, p4_g2_rd, p2_g2_rd, p2_g2_rn, g1_rd_or_rm_muxout)
  begin
    if(p3_g1_reg_write==1'b1 && p3_g1_rd!=3'b000 && (p3_g1_rd==g1_rd_or_rm_muxout))                                                                               //M1
      begin
        aluIn1_mux_select=1'b0;
        m1_select [1:0]  =2'b00;
      end
    else if((p4_g1_reg_write==1'b1 && p4_g1_rd!=3'b000 && (p4_g1_rd==g1_rd_or_rm_muxout)) && !(p3_g1_reg_write==1'b1 && p3_g1_rd!=3'b000 && (p3_g1_rd==g1_rd_or_rm_muxout)))
      begin
        aluIn1_mux_select=1'b0;
        m1_select [1:0]  =2'b01;
      end
    else if((p4_g2_reg_write==1'b1 && p4_g2_rd!=3'b000 && (p4_g2_rd==g1_rd_or_rm_muxout)) && !(p3_g2_reg_write==1'b1 && p3_g2_rd!=3'b000 && (p3_g2_rd==g1_rd_or_rm_muxout)))
      begin
        aluIn1_mux_select=1'b0;
        m1_select [1:0]  =2'b10;
      end
    else
		begin
			aluIn1_mux_select=1'b1;
			m1_select [1:0]  =2'b00;
		end

      
    if(p3_g1_reg_write==1'b1 && p3_g1_rd!=3'b000 && (p3_g1_rd==p2_g2_rn))                                                                               //M2
      begin
        adderIn1_mux_select=1'b0;
        m2_select [1:0]  =2'b00;
      end
    else if((p4_g1_reg_write==1'b1 && p4_g1_rd!=3'b000 && (p4_g1_rd==p2_g2_rn)) && !(p3_g1_reg_write==1'b1 && p3_g1_rd!=3'b000 && (p3_g1_rd==p2_g2_rn)))
      begin
        adderIn1_mux_select=1'b0;
        m2_select [1:0]  =2'b01;
      end
    else if((p4_g2_reg_write==1'b1 && p4_g2_rd!=3'b000 && (p4_g2_rd==p2_g2_rn)) && !(p3_g2_reg_write==1'b1 && p3_g2_rd!=3'b000 && (p3_g2_rd==p2_g2_rn)))
      begin
        adderIn1_mux_select=1'b0;
        m2_select [1:0]  =2'b10;
      end
    else
      begin
        adderIn1_mux_select=1'b1;
        m2_select [1:0]  =2'b00;
      end
      
      
    if(p3_g1_reg_write==1'b1 && p3_g1_rd!=3'b000 && (p3_g1_rd==p2_g2_rd))                                                                               //M3
      begin
        m3OutputMux_select=1'b0;
        m3_select [1:0]  =2'b00;
      end
    else if((p4_g1_reg_write==1'b1 && p4_g1_rd!=3'b000 && (p4_g1_rd==p2_g2_rd)) && !(p3_g1_reg_write==1'b1 && p3_g1_rd!=3'b000 && (p3_g1_rd==p2_g2_rd)))
      begin
        m3OutputMux_select=1'b0;
        m3_select [1:0]  =2'b01;
      end
    else if((p4_g2_reg_write==1'b1 && p4_g2_rd!=3'b000 && (p4_g2_rd==p2_g2_rd)) && !(p3_g2_reg_write==1'b1 && p3_g2_rd!=3'b000 && (p3_g2_rd==p2_g2_rd)))
      begin
        m3OutputMux_select=1'b0;
        m3_select [1:0]  =2'b10;
      end
    else
      begin
        m3OutputMux_select=1'b1;
        m3_select [1:0]  =2'b00;
      end
  end
endmodule

/////////////////////////////////////////////////////////////////////////////////////////EX STAGE ENDS//////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////MEM RISES///////////////////////////////////////////////////////////////////////////
module D_cache_miss_handle(input miss_wait, output reg P1_Write, output reg P2_Write, output reg P3_Write, output reg P4_Write, output reg PC_Write);
	always@(miss_wait)
	begin																																																																																																																																																																																																							
		if(miss_wait == 1'b1) //MISS
			begin
				P1_Write = 1'b0;
				P2_Write = 1'b0;
				P3_Write = 1'b0;
				P4_Write = 1'b0;
				PC_Write = 1'b0;
			end
		else
			begin
				P1_Write = 1'b1;
				P2_Write = 1'b1;
				P3_Write = 1'b1;
				P4_Write = 1'b1;
				PC_Write = 1'b1;
			end
		
	end
endmodule




module mem_forwarding(input [2:0] P3_G2_Rd, input [2:0] P4_G2_Rd,input P3_memWrite,input P4_G2_regWrite, output reg Rd_G2_P3_or_Rd_G2_P4);
	always@(P3_G2_Rd, P4_G2_Rd, P3_memWrite, P4_G2_regWrite)
	begin
		if((P3_G2_Rd == P4_G2_Rd) &&(P3_memWrite) && (P4_G2_regWrite))
			Rd_G2_P3_or_Rd_G2_P4 = 1'b1;
		else
			Rd_G2_P3_or_Rd_G2_P4 = 1'b0;
	end
endmodule
///////////////////////////////////////////////////////////////////////////////////////MEM ENDS///////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////WB STARTS///////////////////////////////////////////////////
module zeroExt16to32(input [15:0] imm_dat, output reg [31:0] zeroExtValue);
  always@(imm_dat)
  begin
	zeroExtValue[15:0] = imm_dat[15:0];
	zeroExtValue[31:16] = 16'b0000000000000000;
	end
endmodule
///////////////////////////////////////////////////////////////////////////////WB ENDS/////////////////////////////////////

///////////////////////////////////////////////////////////////Top MODULES/////////////////////////////////////////////////////////////////////////////
module top_module_IF_stage(input clk, input reset, input decOut1b,
		/*input 32'h80000180,*/ input [31:0] branch_or_jump_address, input [1:0] PC_Source, input PC_Write,
		output [31:0] MuxIn3, output [15:0] G1_instr, output [15:0] G2_instr, output P1_Flush_Reset,
		output [31:0]I_M_mem_write_addr,output [31:0]I_M_mem_read_addr, input [255:0]I_M_mem_data_in, output I_M_mem_data_write,
		output [255:0]I_M_mem_data_out
		);
		wire [31:0] PC_Out,  Data_out_p, muxout;
		wire hazard_PC_Write, miss_wait;
		
		
		register32bit	PC_r					( clk, reset, (hazard_PC_Write & PC_Write), decOut1b, muxout [31:0], PC_Out [31:0]);
		adder			a1					(32'b00000000000000000000000000000100, PC_Out [31:0], MuxIn3 [31:0]);
		cache			instruction_cache	( clk, reset,
											//to proc
											1'b0,1'b1, PC_Out [31:0], 16'b0000111100001111, {{G2_instr},{G1_instr}},
											//to main mem
											I_M_mem_write_addr, I_M_mem_read_addr, I_M_mem_data_in, I_M_mem_data_write,
											I_M_mem_data_out, miss_wait);
	
		mux_3_to_1_32bits	m1				(32'b11110000111100001111000011110000, branch_or_jump_address [31:0], MuxIn3 [31:0] , PC_Source [1:0], muxout [31:0]);
		hazard_detection_instr_cache hdic1	(miss_wait, hazard_PC_Write, P1_Flush_Reset);
endmodule


module top_module_ID_stage( input clk, input reset,

							//START Inputs from p1
							input [31:0] p1_PC,
							input [15:0] p1_G1,
							input [15:0] p1_G2,
							//END Inputs from p1

							//START Inputs from p2 for load use hazard
							input [2:0] p2_G2_Rd,
							//END Inputs from p2 for load use hazard


							//START Inputs for Control Circuit
							
							input N_Alu, input V_Alu,
							input p2_N_Wr, input p2_V_Wr,

							input p3_N, input p3_V,
							input p3_N_Wr, input p3_V_Wr,

							input p4_N, input p4_V,
							input p4_N_Wr, input p4_V_Wr,
							//END Inputs for Control Circuit

							//START Input for Flag register
							input p4_C_Wr, input p4_Z_Wr,
							input p4_C, input p4_Z,
							//END Input for Flag register


							input [31:0] p2_PC,		//For Exception

							//START Inputs for RegFile
							input [2:0] p4_G1_destreg,
							input [2:0] p4_G2_destreg,
							input p4_G1_regWrite,
							input p4_G2_regWrite,
							input [31:0] G1_write_data,
							input [31:0] G2_write_data,
							//END Inputs for RegFile


							//START outputs of Control Circuit (Excluding those used in the ID stage itself)
							output [1:0] PCSrc,
							output G1_Rd_or_Rm,
							output add_or_shift_imm,
							output [1:0] aluOp,
							output addsub_or_shiftMVN_Rd,
							output memRead, output memWrite,
							output G1_regWrite, output G2_regWrite,
							output N_Wr, output V_Wr, output C_Wr, output Z_Wr,
							//END outputs of Control Circuit

							//START Branch address calculation
							output [31:0] branch_or_jump_address,
							//END Branch address calculation

							//START Outputs of RegFile
							output [31:0] regOf_G1_Rd,
							output [31:0] regOf_G1_Rm,
							output [31:0] regOf_G2_Rn,
							output [31:0] regOf_G2_Rd,
							//END Outputs of RegFile

							//START Outputs - Immediate & Offset
							output [7:0] G1_imd_add_sub,
							output [4:0] G1_imd_sh_not,
							output [4:0] G2_offset_lw_sw,
							//END Outputs- Immediate & Offset

							//START Outputs  - Register Numbers
							output [2:0] G1_destreg_add_sub,
							output [2:0] G1_destreg_sh_not,
							output [2:0] G1_Rm,
							output [2:0] G2_Rd,
							output [2:0] G2_Rn,
							//END Outputs - Register Numbers

							//START Outputs of Flag registers
							output N_reg_out, V_reg_out,
							output C_reg_out, Z_reg_out,
							//END Outputs of Flag registers

							// START Signals of exceptions to be added to flush
							output IFID_Flush_reset,
							output IDEX_Flush_reset,
							output EXMEM_Flush_reset,
							// END Signals of exceptions to be added to flush

							//START Output signals for load use hazard ckt
							output PCWrite,
							output IFIDWrite,input P2_memread
							//END Output signals for load use hazard ckt
							);
		
		wire [31:0] JorBmuxOut;
		wire [31:0] sextBOut, sextJOut;
		wire [31:0] shiftedJ, shiftedB;
		wire JorB;
		wire EPCWrite;
		wire [31:0] EPCOut;
		wire CauseOut;
		wire CauseWrite;
		wire Cause_muxOut;
		wire Cause;
		wire zero_control_signals;
		wire G1_Rd_or_Rm_int, add_or_shift_imm_int, addsub_or_shiftMVN_Rd_int, N_Wr_int, V_Wr_int, C_Wr_int, Z_Wr_int, memRead_int, memWrite_int, G1_regWrite_int, G2_regWrite_int;
		wire [1:0] aluOp_int;
		wire [31:0] undefined_or_overflow_muxOut;
    
    assign G1_imd_add_sub = p1_G1[15:8];
    assign G1_imd_sh_not = p1_G1[9:5];
    assign G2_offset_lw_sw = p1_G2[9:5];
    assign G1_destreg_add_sub = p1_G1[7:5];
    assign G1_destreg_sh_not=p1_G1[12:10];
    assign G1_Rm = p1_G1[15:13];
    assign G2_Rd = p1_G2[12:10];
    assign G2_Rn = p1_G2[15:13];
		
		control_ckt ckt(p1_G1, p1_G2,N_reg_out,N_Alu, V_Alu,p2_N_Wr, p2_V_Wr,p3_N,p3_N_Wr,p4_N,p4_N_Wr,JorB,PCSrc,G1_Rd_or_Rm_int,
			add_or_shift_imm_int,
			aluOp_int,
			addsub_or_shiftMVN_Rd_int,
			N_Wr_int, V_Wr_int, C_Wr_int, Z_Wr_int,
			memRead_int, memWrite_int,
			G1_regWrite_int, G2_regWrite_int,
			EPCWrite, CauseWrite, Cause,
			IFID_Flush_reset, IDEX_Flush_reset, EXMEM_Flush_reset
			);
		mux2to1_1bit g1rdorrm0(G1_Rd_or_Rm_int, 1'b0, zero_control_signals, G1_Rd_or_Rm);
		mux2to1_1bit add_or_shift_imm_mux(add_or_shift_imm_int, 1'b0, zero_control_signals, add_or_shift_imm);
		mux2to1_1bit addsub_or_shiftMVN_Rd_mux(addsub_or_shiftMVN_Rd_int, 1'b0, zero_control_signals, addsub_or_shiftMVN_Rd);
		mux2to1_1bit N_Wr_mux(N_Wr_int, 1'b0, zero_control_signals, N_Wr);
		mux2to1_1bit V_Wr_mux(V_Wr_int, 1'b0, zero_control_signals, V_Wr);
		mux2to1_1bit C_Wr_mux(C_Wr_int, 1'b0, zero_control_signals, C_Wr);
		mux2to1_1bit Z_Wr_mux(Z_Wr_int, 1'b0, zero_control_signals, Z_Wr);
		mux2to1_1bit memRead_mux(memRead_int, 1'b0, zero_control_signals, memRead);
		mux2to1_1bit memWrite_mux(memWrite_int, 1'b0, zero_control_signals, memWrite);
		mux2to1_1bit G1_regWrite_mux(G1_regWrite_int, 1'b0, zero_control_signals, G1_regWrite);
		mux2to1_1bit G2_regWrite_mux(G2_regWrite_int, 1'b0, zero_control_signals, G2_regWrite);
		mux2to1_2bits aluopmux(aluOp_int, 2'b00, zero_control_signals, aluOp);
		adder add(p1_PC, JorBmuxOut, branch_or_jump_address);
		mux2to1_32bits muxadder(shiftedJ,shiftedB, JorB, JorBmuxOut);
		sign_ext_8_to_32_bits sext8to32(p1_G2[15:8], sextBOut);
		sign_ext_11_to_32_bits sext11to32(p1_G2[15:5], sextJOut);
		left_shift_2 jleft(sextJOut, shiftedJ);
		left_shift_2 bleft(sextBOut, shiftedB);
		register32bit epc(clk, reset, EPCWrite, 1'b1, undefined_or_overflow_muxOut, EPCOut);
		register1bit causereg(clk, reset, CauseWrite, 1'b1, Cause_muxOut, CauseOut);
		mux2to1_32bits muxepc(p1_PC, p2_PC, Cause, undefined_or_overflow_muxOut);
		mux2to1_1bit causemux(1'b0, 1'b1, Cause, Cause_muxOut);
		registerFile regFile(clk, reset, p4_G1_regWrite, p4_G2_regWrite, p1_G1[7:5], p1_G1[15:13], p1_G2[12:10], p1_G2[15:13], p4_G1_destreg,
			p4_G2_destreg, G1_write_data, G2_write_data, regOf_G1_Rd, regOf_G1_Rm, regOf_G2_Rd, regOf_G2_Rn);
		register1bit n1(clk, reset, p4_N_Wr, 1'b1, p4_N, N_reg_out);
		register1bit v1(clk, reset, p4_V_Wr, 1'b1, p4_V, V_reg_out);
		register1bit c1(clk, reset, p4_C_Wr, 1'b1, p4_C, C_reg_out);
		register1bit z1(clk, reset, p4_Z_Wr, 1'b1, p4_Z, Z_reg_out);
		load_use_hazard loadhazard(P2_memread,
				p2_G2_Rd,
				p1_G1[7:5], p1_G1[15:13],
				p1_G2[15:13],
				PCWrite,
				IFIDWrite,
				zero_control_signals
				);
endmodule

module top_module_ex_stage(input [2:0]P2_G1_Rm,
input [31:0]P2_regOf_G1_Rd,P2_regOf_G1_Rm,					output [31:0] aluOut, 
input [7:0]P2_G1_imd_add_sub,								output [3:0] aluFlagOut,
input [4:0]P2_G1_imd_sh_not,								output [31:0] adderOut,
input[2:0]P2_G1_destreg_add_sub,							/*output P3_Flush_Reset, P2_Write, P1_Write, PC_Write,*/
input [2:0]P2_G1_destreg_sh_not,							output [15:0] G2_regOf_Rd,
input [2:0]P2_G2_Rd,P2_G2_Rn,								output [2:0] P2_equal_G1_Rd,
input [31:0]P2_regOf_G2_Rd,P2_regOf_G2_Rn,					output [2:0] P2_equal_G2_Rd,
input [4:0]P2_G2_offset_lw_sw,
input P2_G1_Rd_or_Rm,
input P2_add_or_shift_imm,
input [1:0]P2_aluOp,
input P2_addsub_or_shiftMVN_Rd,
input P2_G1_regWrite,							output P2_equal_G1_regWrite,
input P2_memRead,								output P2_equal_memRead,
input P2_memWrite,								output P2_equal_memWrite,
input P2_G2_regWrite,							output P2_equal_G2_regWrite,
input P2_N_Wr,									output P2_equal_N_Wr,
input P2_V_Wr,									output P2_equal_V_Wr,
input P2_C_Wr,									output P2_equal_C_Wr,
input P2_Z_Wr,									output P2_equal_Z_Wr,

input [31:0] P3_regOf_G1_Rd, input [31:0] P3_regOf_G2_Rd, input [31:0] P4_regOf_G1_Rd, input [31:0] P4_regOf_G2_Rd,
input P3_G1_regWrite, P4_G1_regWrite, P3_G2_regWrite, P4_G2_regWrite,
input [2:0] P3_G1_Rd, P4_G1_Rd, P3_G2_Rd, P4_G2_Rd);
	
	wire [31:0] muxout1, zeroOut1, zeroOut2, muxout2, m1_muxout, muxout3, m2_muxout, muxout4, signOut1, left_shift_out1,  m3_muxout;
	wire [1:0] m1_select, m2_select, m3_select;
	wire aluIn1_mux_select, adderIn1_mux_select, m3OutputMux_select;
	wire [2:0]muxout5;
	
	
	assign P2_equal_G2_Rd=P2_G2_Rd;
	assign P2_equal_N_Wr=P2_N_Wr;
	assign P2_equal_V_Wr=P2_V_Wr;
	assign P2_equal_C_Wr=P2_C_Wr;
	assign P2_equal_Z_Wr=P2_Z_Wr;
	assign P2_equal_memRead=P2_memRead;
	assign P2_equal_memWrite=P2_memWrite;
	assign P2_equal_G1_regWrite=P2_G1_regWrite;
	assign P2_equal_G2_regWrite=P2_G2_regWrite;
	
  mux2to1_32bits        m2to1_32_1  (P2_regOf_G1_Rd [31:0], P2_regOf_G1_Rm [31:0], P2_G1_Rd_or_Rm, muxout1 [31:0]);
  zero_ext_8_to_32_bits ze8to32_1   (P2_G1_imd_add_sub [7:0], zeroOut1 [31:0]); 
  zero_ext_5_to_32_bits ze5to32_1   (P2_G1_imd_sh_not [4:0], zeroOut2 [31:0]);
  mux2to1_32bits        m2to1_32_2  (zeroOut1 [31:0], zeroOut2 [31:0], P2_add_or_shift_imm, muxout2 [31:0]);
  mux_3_to_1_32bits     m3to1_32_1  (P3_regOf_G1_Rd[31:0], P4_regOf_G1_Rd[31:0], P4_regOf_G2_Rd[31:0], m1_select[1:0], m1_muxout[31:0]);
  mux2to1_32bits        m2to1_32_3  (m1_muxout[31:0], muxout1[31:0], aluIn1_mux_select, muxout3[31:0]);
  ALU                   alu_1       (muxout3[31:0], muxout2[31:0], P2_aluOp[1:0], aluOut[31:0], aluFlagOut[3:0]);                     												//output
  
  mux_3_to_1_32bits     m3to1_32_2  (P3_regOf_G1_Rd[31:0], P4_regOf_G1_Rd[31:0], P4_regOf_G2_Rd[31:0], m2_select[1:0], m2_muxout[31:0]);
  mux2to1_32bits        m2to1_32_4  (m2_muxout[31:0], P2_regOf_G2_Rn[31:0], adderIn1_mux_select, muxout4[31:0]);
  sign_ext_5_to_32_bits se5to32_1   (P2_G2_offset_lw_sw[4:0], signOut1[31:0]);
  left_shift_2          ls2_1       (signOut1[31:0], left_shift_out1[31:0]);
  adder                 a1          (muxout4[31:0], left_shift_out1[31:0], adderOut[31:0]);                                         												//output
  
  mux_2_to_1_3bits      m2to1_3_1   (P2_G1_destreg_add_sub[2:0],P2_G1_Rm[2:0], P2_G1_Rd_or_Rm, muxout5[2:0]);
  forwarding_unit       fu1         (P3_G1_regWrite, P4_G1_regWrite, P3_G2_regWrite, P4_G2_regWrite, P3_G1_Rd[2:0], P4_G1_Rd[2:0], P3_G2_Rd[2:0], P4_G2_Rd[2:0], 
                                     P2_G2_Rd[2:0], P2_G2_Rn[2:0], muxout5[2:0], aluIn1_mux_select, m1_select[1:0], m2_select[1:0], m3_select[1:0], adderIn1_mux_select, 
                                     /*P3_Flush_Reset, P2_Write, P1_Write, PC_Write,*/ m3OutputMux_select);
  
  mux_3_to_1_32bits     m3to1_32_3  (P3_regOf_G1_Rd[31:0], P4_regOf_G1_Rd[31:0], P4_regOf_G2_Rd[31:0], m3_select[1:0], m3_muxout[31:0]);
  mux_2_to_1_16bits     m2to1_16_1  (m3_muxout[15:0], P2_regOf_G2_Rd[15:0], m3OutputMux_select, G2_regOf_Rd[15:0]);                         										//output
                                  
  mux_2_to_1_3bits      m2to1_3_2   (P2_G1_destreg_sh_not[2:0],P2_G1_destreg_add_sub[2:0], P2_addsub_or_shiftMVN_Rd, P2_equal_G1_Rd[2:0]);                                          //output
  
  //direct  
endmodule

module top_module_MEM_stage(input clk, input reset, 
				input [15:0] Zero_Ext_Value,
				input P3_memRead , input P3_memWrite, //in cache
				input P3_G1_regWrite, input P3_G2_regWrite, input P3_N_Wr, input P3_Z_Wr, input P3_C_Wr, input P3_V_Wr,input [3:0] P3_flagOut,
				input [31:0] P3_aluOut, input [2:0] P3_G1_Rd, input [2:0] P3_G2_Rd,
				input [31:0] P3_adderOut, input [15:0] P3_G2_regOf_Rd, input [2:0] P4_G2_Rd,
				
				
				output [15:0] G2_dataOut,
				output P3_equal_G1_regWrite, output P3_equal_G2_regWrite, output P3_equal_N_Wr, output P3_equal_Z_Wr, output P3_equal_C_Wr, output P3_equal_V_Wr,output [3:0] P3_equal_flagOut,
				output [31:0] P3_equal_aluOut, output [2:0] P3_equal_G1_Rd ,output [2:0] P3_equal_G2_Rd,
				output P1_Write, output P2_Write, output P3_Write, output P4_Write,
				output PC_Write,input P4_G2_regWrite,
				output [31:0]D_M_mem_write_addr,output [31:0]D_M_mem_read_addr, input [255:0]D_M_mem_data_in, output D_M_mem_data_write,
        output  [255:0]D_M_mem_data_out);

	wire Rd_G2_P3_or_Rd_G2_P4;
	wire miss_wait;
	wire [15:0] data_in,b;
	
	assign P3_equal_G1_regWrite = P3_G1_regWrite;
	assign P3_equal_G2_regWrite = P3_G2_regWrite;
	assign P3_equal_C_Wr = P3_C_Wr;
	assign P3_equal_N_Wr = P3_N_Wr;
	assign P3_equal_Z_Wr = P3_Z_Wr;
	assign P3_equal_V_Wr = P3_V_Wr;
	assign P3_equal_flagOut = P3_flagOut;
	assign P3_equal_aluOut = P3_aluOut;
	assign P3_equal_G1_Rd = P3_G1_Rd;
	assign P3_equal_G2_Rd = P3_G2_Rd;
	
	
	mux2to1_16bits memMux(P3_G2_regOf_Rd,Zero_Ext_Value,Rd_G2_P3_or_Rd_G2_P4,data_in);
	cache data_cache(clk,reset,
             //to proc
              P3_memWrite, P3_memRead, P3_adderOut, data_in, {{b},{G2_dataOut}},
             //to main mem
             D_M_mem_write_addr,D_M_mem_read_addr,  D_M_mem_data_in,  D_M_mem_data_write,
             D_M_mem_data_out, miss_wait);
	
	D_cache_miss_handle misshandle(miss_wait,P1_Write,P2_Write,P3_Write,P4_Write,PC_Write);
	
	mem_forwarding forward(P3_G2_Rd, P4_G2_Rd, P3_memWrite, P4_G2_regWrite,Rd_G2_P3_or_Rd_G2_P4);
endmodule

/////////////////////////////////////////////////////////////////////////////TOP MODULES END/////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////PIPELINES//////////////////////////////////////////////////////////////

module P1_IF_ID( input clk, input reset, input P1_Write, input P1_decOut1b, input [31:0] PC, input [15:0] G1_instr, input [15:0] G2_instr, output [31:0] P1_PC,output [15:0] P1_G1_instr,output [15:0] P1_G2_instr );
  register32bit P1_pc( clk, reset, P1_Write, P1_decOut1b, PC, P1_PC );
  register16bit P1_G1( clk, reset, P1_Write, P1_decOut1b, G1_instr, P1_G1_instr );
  register16bit P1_G2( clk, reset, P1_Write, P1_decOut1b, G2_instr, P1_G2_instr );
endmodule
module P2_ID_EX( input clk, input reset, input P2_Write, input P2_decOut1b,input [31:0] P1_PC,output [31:0] P2_PC,
                 //G1
                 input [2:0]G1_Rm, output [2:0]P2_G1_Rm,
                 input [31:0]regOf_G1_Rd,regOf_G1_Rm, output [31:0]P2_regOf_G1_Rd,P2_regOf_G1_Rm,
                 input [7:0]G1_imd_add_sub, output [7:0]P2_G1_imd_add_sub,
                 input [4:0]G1_imd_sh_not, output [4:0]P2_G1_imd_sh_not,
                 input [2:0]G1_destreg_add_sub, output [2:0]P2_G1_destreg_add_sub,
                 input [2:0]G1_destreg_sh_not, output [2:0]P2_G1_destreg_sh_not,
                 //G2
                 input [2:0]G2_Rd,G2_Rn, output [2:0]P2_G2_Rd,P2_G2_Rn,
                 input [31:0]regOf_G2_Rd,regOf_G2_Rn, output [31:0]P2_regOf_G2_Rd,P2_regOf_G2_Rn,
                 input [4:0]G2_offset_lw_sw, output [4:0]P2_G2_offset_lw_sw,
				 //control signals
				 input G1_Rd_or_Rm, output P2_G1_Rd_or_Rm,
				 input add_or_shift_imm, output P2_add_or_shift_imm,
				 input [1:0]aluOp, output [1:0]P2_aluOp,
				 input addsub_or_shiftMVN_Rd, output P2_addsub_or_shiftMVN_Rd,
				 input G1_regWrite, output P2_G1_regWrite,
				 input memRead, output P2_memRead,
				 input memWrite, output P2_memWrite,
				 input G2_regWrite, output P2_G2_regWrite,
				 input N_Wr, output P2_N_Wr,
				 input V_Wr, output P2_V_Wr,
				 input C_Wr, output P2_C_Wr,
				 input Z_Wr, output P2_Z_Wr
				 
                 );
  //PC
  register32bit xP2_PC( clk, reset, P2_Write, P2_decOut1b, P1_PC, P2_PC );
  //G1
  // register3bit  P2_G1_Rd( clk, reset, P2_Write, P2_decOut1b, G1_Rd, P2_G1_Rd );
  register3bit  xP2_G1_Rm( clk, reset, P2_Write, P2_decOut1b, G1_Rm, P2_G1_Rm );
  register32bit xP2_regOf_G1_Rd( clk, reset, P2_Write, P2_decOut1b, regOf_G1_Rd, P2_regOf_G1_Rd);
  register32bit xP2_regOf_G1_Rm( clk, reset, P2_Write, P2_decOut1b, regOf_G1_Rm, P2_regOf_G1_Rm);
  register8bit  xP2_G1_imd_add_sub( clk, reset, P2_Write, P2_decOut1b, G1_imd_add_sub, P2_G1_imd_add_sub);
  register5bit  xP2_G1_imd_sh_not( clk, reset, P2_Write, P2_decOut1b, G1_imd_sh_not, P2_G1_imd_sh_not);
  register3bit  xP2_G1_destreg_add_sub( clk, reset, P2_Write, P2_decOut1b, G1_destreg_add_sub, P2_G1_destreg_add_sub);
  register3bit  xP2_G1_destreg_sh_not( clk, reset, P2_Write, P2_decOut1b, G1_destreg_sh_not, P2_G1_destreg_sh_not);
  //control signals of G1
  register1bit	xP2_G1_Rd_or_Rm( clk, reset, P2_Write, P2_decOut1b, G1_Rd_or_Rm, P2_G1_Rd_or_Rm);
  register1bit	xP2_add_or_shift_imm( clk, reset, P2_Write, P2_decOut1b, add_or_shift_imm, P2_add_or_shift_imm);
  register2bit	xP2_aluOp( clk, reset, P2_Write, P2_decOut1b, aluOp[1:0], P2_aluOp[1:0]);
  register1bit	xP2_addsub_or_shiftMVN_Rd( clk, reset, P2_Write, P2_decOut1b, addsub_or_shiftMVN_Rd, P2_addsub_or_shiftMVN_Rd);
  register1bit	xP2_G1_regWrite( clk, reset, P2_Write, P2_decOut1b, G1_regWrite, P2_G1_regWrite);
  
  //G2
  register3bit  xP2_G2_Rd( clk, reset, P2_Write, P2_decOut1b, G2_Rd, P2_G2_Rd );
  register3bit  xP2_G2_Rn( clk, reset, P2_Write, P2_decOut1b, G2_Rn, P2_G2_Rn );
  register32bit xP2_regOf_G2_Rd( clk, reset, P2_Write, P2_decOut1b, regOf_G2_Rd, P2_regOf_G2_Rd);
  register32bit xP2_regOf_G2_Rn( clk, reset, P2_Write, P2_decOut1b, regOf_G2_Rn, P2_regOf_G2_Rn);
  register5bit  xP2_G2_lw_sw( clk, reset, P2_Write, P2_decOut1b, G2_offset_lw_sw, P2_G2_offset_lw_sw);
  //control signals of G2
  register1bit	xP2_memRead( clk, reset, P2_Write, P2_decOut1b, memRead, P2_memRead);
  register1bit	xP2_memWrite( clk, reset, P2_Write, P2_decOut1b, memWrite, P2_memWrite);
  register1bit	xP2_G2_regWrite( clk, reset, P2_Write, P2_decOut1b, G2_regWrite, P2_G2_regWrite);
  
  //Flags
  register1bit	xP2_N_Wr(clk, reset, P2_Write, P2_decOut1b, N_Wr, P2_N_Wr);
  register1bit	xP2_V_Wr(clk, reset, P2_Write, P2_decOut1b, V_Wr, P2_V_Wr);
  register1bit	xP2_C_Wr(clk, reset, P2_Write, P2_decOut1b, C_Wr, P2_C_Wr);
  register1bit	xP2_Z_Wr(clk, reset, P2_Write, P2_decOut1b, Z_Wr, P2_Z_Wr);
endmodule
module P3_EX_MEM(input clk, input reset, input P3_Write, input P3_decOut1b,
				//control signals
				input P2_equal_memRead, output P3_memRead,
				input P2_equal_memWrite, output P3_memWrite,
				input P2_equal_G1_regWrite, output P3_G1_regWrite,
				input P2_equal_G2_regWrite, output P3_G2_regWrite,
				//flags
				input P2_equal_N_Wr, output P3_N_Wr,
				input P2_equal_V_Wr, output P3_V_Wr,
				input P2_equal_C_Wr, output P3_C_Wr,
				input P2_equal_Z_Wr, output P3_Z_Wr,
				//alu
				input [3:0] aluFlagOut, output [3:0] P3_aluFlagOut,
				input [31:0] aluOut, output [31:0] P3_aluOut,
				//ADDER
				input [31:0] adderOut, output [31:0] P3_adderOut,
				//registers
				input [15:0] G2_regOf_Rd, output [15:0] P3_G2_regOf_Rd,
				input [2:0] P2_equal_G1_Rd, output [2:0] P3_G1_Rd,
				input [2:0] P2_equal_G2_Rd, output [2:0] P3_G2_Rd
				);
	//control signals
	register1bit	xP3_memRead( clk, reset, P3_Write, P3_decOut1b, P2_equal_memRead, P3_memRead);
	register1bit	xP3_memWrite( clk, reset, P3_Write, P3_decOut1b, P2_equal_memWrite, P3_memWrite);
	register1bit	xP3_G1_regWrite( clk, reset, P3_Write, P3_decOut1b, P2_equal_G1_regWrite, P3_G1_regWrite);
	register1bit 	xP3_G2_regWrite( clk, reset, P3_Write, P3_decOut1b, P2_equal_G2_regWrite, P3_G2_regWrite);
	
	//flags
	register1bit	xP3_N_Wr(clk, reset, P3_Write, P3_decOut1b, P2_equal_N_Wr, P3_N_Wr);
	register1bit	xP3_V_Wr(clk, reset, P3_Write, P3_decOut1b, P2_equal_V_Wr, P3_V_Wr);
	register1bit	xP3_C_Wr(clk, reset, P3_Write, P3_decOut1b, P2_equal_C_Wr, P3_C_Wr);
	register1bit	xP3_Z_Wr(clk, reset, P3_Write, P3_decOut1b, P2_equal_Z_Wr, P3_Z_Wr);
	
	
	
	//ALU
	register4bit	xP3_flagOut(clk, reset, P3_Write, P3_decOut1b, aluFlagOut, P3_aluFlagOut);
	register32bit	xP3_aluOut(clk, reset, P3_Write, P3_decOut1b, aluOut, P3_aluOut);
	
	//adder
	register32bit	xP3_adderOut(clk, reset, P3_Write, P3_decOut1b, adderOut, P3_adderOut);
	
	//registers
	register16bit	xP3_G2_regOf_Rd(clk, reset, P3_Write, P3_decOut1b, G2_regOf_Rd, P3_G2_regOf_Rd);
	register3bit	xP3_G1_Rd(clk, reset, P3_Write, P3_decOut1b, P2_equal_G1_Rd, P3_G1_Rd);
	register3bit	xP3_G2_Rd(clk, reset, P3_Write, P3_decOut1b, P2_equal_G2_Rd, P3_G2_Rd);
	
endmodule



module P4_MEM_WB(input clk, input reset, input P4_write, input P4_decout1b,        //IS P4_WRITE INPUT FROM HAZARD UNIT? 
				input P3_equal_G1_regWrite, output P4_G1_regWrite, 
				input P3_equal_G2_regWrite, output P4_G2_regWrite,
				input P3_equal_N_Wr, output P4_N_Wr,
				input P3_equal_Z_Wr, output P4_Z_Wr,
				input P3_equal_C_Wr, output P4_C_Wr,
				input P3_equal_V_Wr, output P4_V_Wr,
				input [3:0] P3_equal_flagOut, output [3:0] P4_flagOut,
				input [31:0] P3_equal_aluOut, output [31:0] P4_aluOut,
				input [15:0] G2_dataOut, output [15:0] P4_G2_dataOut,
				input [2:0] P3_equal_G1_Rd, output [2:0] P4_G1_Rd,
				input [2:0] P3_equal_G2_Rd, output [2:0] P4_G2_Rd
				//input [31:0] p3_g1_regofRd, output [31:0] p4_g1_regofRd, 
				//input [31:0] p3_g2_regofRd, output [31:0] p4_g2_regofRd
				);
  
	//regwrite signals
	register1bit regwrg1(clk,reset,P4_write,P4_decout1b, P3_equal_G1_regWrite, P4_G1_regWrite);
	register1bit regwrg2(clk,reset,P4_write,P4_decout1b, P3_equal_G2_regWrite, P4_G2_regWrite);
	//flag bits
	register1bit N_flag(clk,reset,P4_write,P4_decout1b, P3_equal_N_Wr, P4_N_Wr);
	register1bit Z_flag(clk,reset,P4_write,P4_decout1b, P3_equal_Z_Wr, P4_Z_Wr);
	register1bit C_flag(clk,reset,P4_write,P4_decout1b, P3_equal_C_Wr, P4_C_Wr);
	register1bit V_flag(clk,reset,P4_write,P4_decout1b, P3_equal_V_Wr, P4_V_Wr);
	register4bit flags(clk,reset,P4_write,P4_decout1b, P3_equal_flagOut, P4_flagOut);
	//output of alu,adder
	register32bit aluOut(clk,reset,P4_write,P4_decout1b, P3_equal_aluOut, P4_aluOut);
	register16bit G2out(clk,reset,P4_write,P4_decout1b, G2_dataOut, P4_G2_dataOut);
	/*RegofRd of G1,G2
	register32bit g1_regrd(clk,reset,p4_write,p4_decout1b, p3_g1_regofRd, p4_g1_regofRd);
	register32bit g2_regrd(clk,reset,p4_write,p4_decout1b, p3_g2_regofRd, p4_g2_regofRd);
	
	*/
	//Rd of G1,G2
	register3bit Rd_G1(clk,reset,P4_write,P4_decout1b, P3_equal_G1_Rd, P4_G1_Rd);
	register3bit Rd_G2(clk,reset,P4_write,P4_decout1b, P3_equal_G2_Rd, P4_G2_Rd);
	
	
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////PIPELINES END//////////////////////////////////////////////////////////////

module TOP_FINAL_MODULE (input clk, input reset, output [31:0] Result1, output [31:0] Result2,output [31:0]I_M_mem_write_addr,output [31:0]I_M_mem_read_addr, input [255:0]I_M_mem_data_in, output I_M_mem_data_write,
		                            output [255:0]I_M_mem_data_out,
		                            output [31:0]D_M_mem_write_addr,output [31:0]D_M_mem_read_addr, input [255:0]D_M_mem_data_in, output D_M_mem_data_write,
                                output  [255:0]D_M_mem_data_out);
		wire [31:0] branch_or_jump_address, PC, P1_PC, P2_PC,  G2_write_data, regOf_G1_Rd, regOf_G1_Rm, regOf_G2_Rd, regOf_G2_Rn, P2_regOf_G1_Rd, P2_regOf_G1_Rm, P2_regOf_G2_Rd,P2_regOf_G2_Rn,aluOut,
					adderOut, G2_regOf_Rd, P4_regOf_G1_Rd, P4_regOf_G2_Rd, P3_aluOut, P3_adderOut, G2_dataOut, P3_equal_aluOut, P4_aluOut, zeroExtValue;
		
		
		wire [1:0] PC_Source, aluOp, P2_aluOp;
		
		
		wire [15:0] G1_instr,G2_instr, P1_G1_instr, P1_G2_instr, P3_G2_regOf_Rd, P4_G2_dataOut;
		
		
		wire P1_Flush_Reset_0,P1_Flush_Reset_1, N_Alu, V_Alu, P2_N_Wr, P2_V_Wr, P3_N, P3_V, P3_N_Wr, P3_V_Wr, P4_N, P4_V, P4_N_Wr, P4_V_Wr, P4_C_Wr, P4_Z_Wr, P4_C, P4_Z, P4_G1_regWrite, P4_G2_regWrite,G1_Rd_or_Rm, add_or_shift_imm,
			addsub_or_shiftMVN_Rd, memRead, memWrite, G1_regWrite, G2_regWrite, N_Wr, V_Wr, C_Wr, Z_Wr, P2_Flush_Reset, P3_Flush_Reset, P2_G1_Rd_or_Rm, P2_add_or_shift_imm,P2_addsub_or_shiftMVN_Rd, P2_G1_regWrite,P2_memRead,
			P2_memWrite, P2_G2_regWrite, P2_C_Wr, P2_Z_Wr, P2_equal_G1_regWrite, P2_equal_memRead, P2_equal_memWrite, P2_equal_G2_regWrite, P2_equal_N_Wr, P2_equal_V_Wr, P2_equal_C_Wr, P2_equal_Z_Wr, P3_G1_regWrite
			,P3_G2_regWrite, P3_Write, P3_memRead, P3_memWrite, P3_C_Wr, P3_Z_Wr, P3_equal_G1_regWrite, P3_equal_G2_regWrite, P3_equal_N_Wr, P3_equal_Z_Wr, P3_equal_C_Wr, P3_equal_V_Wr, P1_Write_0, P1_Write_1,
			P2_Write, P4_Write, PC_Write_1, PC_Write_0;
			
			
		wire [2:0] P4_G1_Rd, P4_G2_Rd, G1_destreg_add_sub, G1_destreg_sh_not, G1_Rm, G2_Rd, G2_Rn, P2_G1_Rm, P2_G1_destreg_add_sub,P2_G1_destreg_sh_not, P2_G2_Rd, P2_G2_Rn, P2_equal_G1_Rd, P2_equal_G2_Rd,
					P3_G1_Rd, P3_G2_Rd, P3_equal_G1_Rd, P3_equal_G2_Rd;
		
		
		wire [7:0] G1_imd_add_sub, P2_G1_imd_add_sub;
		wire [3:0] aluFlagOut, P3_aluFlagOut, P3_equal_flagOut, P4_alu_FlagOut ;
		
		wire [4:0] G1_imd_sh_not, G2_offset_lw_sw, P2_G1_imd_sh_not, P2_G2_offset_lw_sw;
		top_module_IF_stage	TMIFS	( clk, reset, 1'b1, branch_or_jump_address [31:0], PC_Source [1:0], (PC_Write_0 & PC_Write_1),  PC[31:0],  G1_instr [15:0], G2_instr [15:0], P1_Flush_Reset_0,
		                            I_M_mem_write_addr,I_M_mem_read_addr, I_M_mem_data_in,  I_M_mem_data_write,
		                            I_M_mem_data_out
		                            );
		

		
		P1_IF_ID			P1		( clk, (reset | P1_Flush_Reset_0 | P1_Flush_Reset_1), P1_Write_0 & P1_Write_1, 1'b1, PC [31:0], G1_instr [15:0], G2_instr [15:0], P1_PC [31:0], P1_G1_instr [15:0] , P1_G2_instr[15:0] );

		top_module_ID_stage	TMIDS	( clk, reset, P1_PC [31:0],P1_G1_instr [15:0], P1_G2_instr [15:0], P2_G2_Rd [2:0], aluFlagOut[3], aluFlagOut[2], P2_N_Wr,  P2_V_Wr, P3_aluFlagOut[3], P3_aluFlagOut[2],  P3_N_Wr,  P3_V_Wr,
									P4_alu_FlagOut[3], P4_alu_FlagOut[2],	 P4_N_Wr,  P4_V_Wr,  P4_C_Wr,  P4_Z_Wr,P4_alu_FlagOut[1], P4_alu_FlagOut[0],	P2_PC [31:0],	P4_G1_Rd[2:0] , P4_G2_Rd[2:0], P4_G1_regWrite,
									 P4_G2_regWrite, P4_aluOut[31:0], zeroExtValue[31:0],
									PC_Source [1:0],G1_Rd_or_Rm,add_or_shift_imm,aluOp[1:0],  addsub_or_shiftMVN_Rd, memRead, memWrite,  G1_regWrite, G2_regWrite,
									 N_Wr,  V_Wr, C_Wr,  Z_Wr,	 branch_or_jump_address[31:0], regOf_G1_Rd[31:0], regOf_G1_Rm[31:0], regOf_G2_Rn[31:0], regOf_G2_Rd[31:0],
									G1_imd_add_sub[7:0], G1_imd_sh_not[4:0],G2_offset_lw_sw[4:0], G1_destreg_add_sub[2:0],	G1_destreg_sh_not[2:0], G1_Rm[2:0], G2_Rd[2:0],
									G2_Rn[2:0],	 N_reg_out,  V_reg_out,  C_reg_out,  Z_reg_out,  P1_Flush_Reset_1,  P2_Flush_Reset, P3_Flush_Reset, PC_Write_0, P1_Write_0,P2_memRead);


		P2_ID_EX			P2		( clk, (reset|P2_Flush_Reset), P2_Write, 1'b1, P1_PC [31:0] , P2_PC[31:0], G1_Rm[2:0], P2_G1_Rm[2:0], regOf_G1_Rd[31:0],regOf_G1_Rm[31:0], P2_regOf_G1_Rd[31:0], P2_regOf_G1_Rm[31:0],
									G1_imd_add_sub[7:0], P2_G1_imd_add_sub[7:0], G1_imd_sh_not[4:0], P2_G1_imd_sh_not[4:0], G1_destreg_add_sub[2:0], P2_G1_destreg_add_sub[2:0],
									G1_destreg_sh_not[2:0], P2_G1_destreg_sh_not[2:0], G2_Rd[2:0],G2_Rn[2:0], P2_G2_Rd[2:0],P2_G2_Rn[2:0], regOf_G2_Rd[31:0],regOf_G2_Rn[31:0], 
									P2_regOf_G2_Rd[31:0], P2_regOf_G2_Rn[31:0], G2_offset_lw_sw, P2_G2_offset_lw_sw[4:0], G1_Rd_or_Rm,  P2_G1_Rd_or_Rm, add_or_shift_imm,  P2_add_or_shift_imm,
									aluOp[1:0], P2_aluOp[1:0],  addsub_or_shiftMVN_Rd, P2_addsub_or_shiftMVN_Rd,  G1_regWrite, P2_G1_regWrite,  memRead, P2_memRead, memWrite,  P2_memWrite,
									G2_regWrite,  P2_G2_regWrite,  N_Wr, P2_N_Wr,  V_Wr, P2_V_Wr,  C_Wr, P2_C_Wr,  Z_Wr, P2_Z_Wr);
									
		top_module_ex_stage	TMEXS	(P2_G1_Rm[2:0],P2_regOf_G1_Rd[31:0],P2_regOf_G1_Rm[31:0], aluOut[31:0], P2_G1_imd_add_sub[7:0],	aluFlagOut[3:0], P2_G1_imd_sh_not[4:0],	adderOut[31:0],
									P2_G1_destreg_add_sub[2:0], P2_G1_destreg_sh_not[2:0], G2_regOf_Rd[15:0], P2_G2_Rd[2:0],P2_G2_Rn[2:0], P2_equal_G1_Rd[2:0], P2_regOf_G2_Rd[31:0],P2_regOf_G2_Rn[31:0],
									P2_equal_G2_Rd[2:0] ,  P2_G2_offset_lw_sw[4:0],  P2_G1_Rd_or_Rm,  P2_add_or_shift_imm,  P2_aluOp[1:0], P2_addsub_or_shiftMVN_Rd, P2_G1_regWrite,	 P2_equal_G1_regWrite,
									P2_memRead,  P2_equal_memRead,  P2_memWrite,	 P2_equal_memWrite, P2_G2_regWrite, P2_equal_G2_regWrite, P2_N_Wr, P2_equal_N_Wr, P2_V_Wr,  P2_equal_V_Wr,
									P2_C_Wr, P2_equal_C_Wr, P2_Z_Wr, P2_equal_Z_Wr,  P3_aluOut[31:0],  P3_adderOut[31:0], P4_aluOut[31:0], zeroExtValue[31:0],
									P3_G1_regWrite,  P4_G1_regWrite, P3_G2_regWrite,  P4_G2_regWrite,  P3_G1_Rd[2:0], P4_G1_Rd[2:0] , P3_G2_Rd[2:0], P4_G2_Rd[2:0]);
									
		P3_EX_MEM			P3		(clk, (reset|P3_Flush_Reset),  P3_Write, 1'b1,  P2_equal_memRead,  P3_memRead, P2_equal_memWrite, P3_memWrite,	 P2_equal_G1_regWrite, P3_G1_regWrite, P2_equal_G2_regWrite, 
									P3_G2_regWrite, P2_equal_N_Wr,  P3_N_Wr, P2_equal_V_Wr, P3_V_Wr, P2_equal_C_Wr, P3_C_Wr, P2_equal_Z_Wr,  P3_Z_Wr,
									aluFlagOut[3:0], P3_aluFlagOut[3:0], aluOut[31:0],   P3_aluOut[31:0],	adderOut[31:0], P3_adderOut[31:0], G2_regOf_Rd[15:0], P3_G2_regOf_Rd[15:0],
									P2_equal_G1_Rd[2:0], P3_G1_Rd[2:0],	P2_equal_G2_Rd[2:0] , P3_G2_Rd[2:0]);
									
		top_module_MEM_stage TMMES	(clk, reset, zeroExtValue[15:0], P3_memRead , P3_memWrite, P3_G1_regWrite, P3_G2_regWrite, P3_N_Wr,P3_Z_Wr, P3_C_Wr, P3_V_Wr, P3_aluFlagOut[3:0],
									P3_aluOut[31:0], P3_G1_Rd[2:0], P3_G2_Rd[2:0], P3_adderOut[31:0], P3_G2_regOf_Rd[15:0], P4_G2_Rd[2:0], G2_dataOut[15:0],  P3_equal_G1_regWrite,  P3_equal_G2_regWrite, 
									 P3_equal_N_Wr,  P3_equal_Z_Wr, P3_equal_C_Wr,  P3_equal_V_Wr,P3_equal_flagOut[3:0], P3_equal_aluOut[31:0], P3_equal_G1_Rd[2:0]  
									,P3_equal_G2_Rd [2:0] , P1_Write_1, P2_Write, P3_Write, P4_Write, PC_Write_1,P4_G2_regWrite, D_M_mem_write_addr,D_M_mem_read_addr, D_M_mem_data_in,  D_M_mem_data_write,
                  D_M_mem_data_out);


		P4_MEM_WB			P4		(clk, reset, P4_Write, 1'b1, P3_equal_G1_regWrite, P4_G1_regWrite,  P3_equal_G2_regWrite,  P4_G2_regWrite,  P3_equal_N_Wr,  P4_N_Wr,  P3_equal_Z_Wr,  P4_Z_Wr,
									 P3_equal_C_Wr,  P4_C_Wr, P3_equal_V_Wr,  P4_V_Wr,  P3_equal_flagOut [3:0], P4_alu_FlagOut[3:0],  P3_equal_aluOut[31:0], P4_aluOut[31:0],
									 G2_dataOut[15:0], P4_G2_dataOut[15:0], P3_equal_G1_Rd[2:0] , P4_G1_Rd[2:0] , P3_equal_G2_Rd[2:0] , P4_G2_Rd[2:0]);
				

		zeroExt16to32 		zeroExt ( P4_G2_dataOut[15:0], zeroExtValue[31:0]);	

		assign Result1 =  P4_aluOut;
		assign Result2 =  zeroExtValue;
endmodule

module aaaaa_tb();
  reg clk,reset;
  wire [31:0] Result1, Result2;
  wire [31:0] I_M_mem_write_addr,I_M_mem_read_addr,D_M_mem_write_addr,D_M_mem_read_addr;
  wire D_M_mem_data_write,I_M_mem_data_write;
  wire [255:0]I_M_mem_data_out,D_M_mem_data_out;
  
  reg [255:0] I_M_mem_data_in,D_M_mem_data_in;
  reg [31:0] instr0,instr1,instr2,instr3,instr4,instr5,instr6,instr7,instr8,instr9,instr10,instr11,instr12,instr13,instr14,instr15;
  
  TOP_FINAL_MODULE t0(clk, reset, Result1, Result2,
                                I_M_mem_write_addr,I_M_mem_read_addr, I_M_mem_data_in, I_M_mem_data_write,
		                            I_M_mem_data_out,
		                            D_M_mem_write_addr,D_M_mem_read_addr, D_M_mem_data_in, D_M_mem_data_write,
                                D_M_mem_data_out);
                                
  always
  begin
    # 5 clk = ~clk;
  end

  initial
  begin
    clk=0;
    reset=1;
    I_M_mem_data_in=0;
              instr0  = 32'b00000000_00000000__10000100_100_00100; // G2 nop G1 add r4,4
              instr1  = 32'b00000000_00000000__00000001_101_00101; // G2 nop G1 sub r5,1
              instr2  = 32'b00000000_00000000__100_011_00001_00001;// G2 nop G1 shift r3,r4,1
              instr3  = 32'b00000000_00000000__100_011_00000_01000;// G2 nop G1 MVN r3,r4
              instr4  = 32'b101_110_00001_01111__00000000_000_00000; // G2 load r6,r5(2)  G1 nop
              instr5  = 32'b000_100_00001_01110__00000000_000_00000; // G2 store r4,r0(2) G1 nop
              instr6  = 32'b11101100_000_11011__00000000_000_00000; // G2 b -20            G1 nop
              instr7  = 32'b0000_0000_010_11100__00000000_000_00000;  // G2 jump 4         G1 nop
              instr8  = 32'b00000000_000_00000__00000000_000_00000; // G2 nop G1 nop
              instr9  = 32'b00000110_000_11011__00000000_000_00000; // G2 b 12 G1 nop
              instr10 = 32'b101_110_00001_01111__00000000_000_00000; // G2 load r6,r5(2) G1 nop
              instr11 = 32'b00000000_00000000__00000100_110_00100; // G2 nop G1 add r6,4
              instr12 = 32'b000_110_00001_01110__00000000_000_00000; // G2 store r6,r0(2) G1 nop
              instr13 = 32'b110_100_00001_01110__00000000_000_00000; // G2 store r4,r6(2) G1 nop
              instr14 = 32'b0000_0001_110_11100__00000000_000_00000;  // G2 jump 28        G1 nop
              instr15 = {2{16'b11111111_11111111}}; // G2 nop G1 add r1,1
              
    I_M_mem_data_in={{instr4},{instr4},{instr4},{instr4},{instr4},{instr4},{instr5},{instr0}};
    
    D_M_mem_data_in={265{1'b0}};
    D_M_mem_data_in[31:16]= 20;
    
    #10
    reset=0;
    
  end
  
  always@(I_M_mem_read_addr, D_M_mem_read_addr)
  begin
    case(I_M_mem_read_addr[7:5])
      0:
      begin
        //I_M_mem_data_in = {{instr1}, {instr1},{instr1},{instr1}, {instr3}, {instr2},{instr1},{instr0}};
        I_M_mem_data_in = {{instr8}, {instr3},{instr8},{instr2}, {instr8}, {instr1},{instr8},{instr0}};
      end
      1:begin
        I_M_mem_data_in = {{instr8}, {instr3},{instr8},{instr7}, {instr8}, {instr4},{instr8},{instr5}};
      end
      2:
      begin
      I_M_mem_data_in = {{instr11},{instr11},{instr11},{instr8},{instr11},{instr10},{instr9},{instr0}};      //add,then b not taken, load use hazard, double data hazard
      end
      3:
      begin
      I_M_mem_data_in = {{instr13},{instr13},{instr13},{instr10},{instr12},{instr10},{instr0},{instr7}};    //j, add(flushed), load store dest forwarding
      end
      4:
      begin
      I_M_mem_data_in = {{instr0},{instr2},{instr8},{instr8},{instr0|instr7},{instr8},{instr2|instr12},{instr0|instr4}}; //add|Load, 
      end
      5:
      begin
      I_M_mem_data_in = {{instr8},{instr8},{instr8},{instr8},{instr8},{instr8},{instr8},{instr14}};
      end
      6:
      begin
      I_M_mem_data_in = {{instr8},{instr8},{instr8},{instr8},{instr8},{instr8},{instr8},{instr14}};
      end
      7:
      begin
      I_M_mem_data_in = {{instr8},{instr15},{instr0},{instr0},{instr13},{instr7},{instr0},{instr2}};
      end
      
    endcase
    
    case(D_M_mem_read_addr[7:5])
      0:
      begin
        D_M_mem_data_in = {{32'd40},{32'd400},{32'd20},{32'd260},{32'd200},{32'd134},{32'd2012},{32'd999}};
      end
      1:begin
        D_M_mem_data_in = {{32'd40},{32'd400},{32'd20},{32'd260},{32'd200},{32'd134},{32'd2012},{32'd999}};
      end
    
      2:
      begin
      D_M_mem_data_in = {{32'd40},{32'd400},{32'd20},{32'd260},{32'd200},{32'd134},{32'd2012},{32'd999}};
      end
      3:
      begin
      D_M_mem_data_in = {{32'd40},{32'd400},{32'd20},{32'd260},{32'd200},{32'd134},{32'd2012},{32'd999}};
      end
      4:
      begin
      D_M_mem_data_in = {{32'd40},{32'd400},{32'd20},{32'd260},{32'd200},{32'd134},{32'd2012},{32'd999}};
      end
      5:
      begin
      D_M_mem_data_in = {{32'd40},{32'd400},{32'd20},{32'd260},{32'd200},{32'd134},{32'd2012},{32'd999}};
      end
      6:
      begin
      D_M_mem_data_in = {{32'd40},{32'd400},{32'd20},{32'd260},{32'd200},{32'd134},{32'd2012},{32'd999}};
      end
      7:
      begin
      D_M_mem_data_in = {{32'd40},{32'd400},{32'd20},{32'd260},{32'd200},{32'd134},{32'd2012},{32'd999}};
      end
      
    endcase
  end
endmodule

