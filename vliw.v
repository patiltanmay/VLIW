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
				4'b0001: outBus=outR0[31:15];
				4'b0010: outBus=outR0[47:31];
				4'b0011: outBus=outR0[63:47];
				4'b0100: outBus=outR0[79:63];
				4'b0101: outBus=outR0[95:79];
				4'b0110: outBus=outR0[111:95];
				4'b0111: outBus=outR0[127:111];
				4'b1000: outBus=outR0[143:127];
				4'b1001: outBus=outR0[159:143];
				4'b1010: outBus=outR0[175:159];
				4'b1011: outBus=outR0[191:175];
				4'b1100: outBus=outR0[207:191];
				4'b1101: outBus=outR0[223:207];
				4'b1110: outBus=outR0[239:223];
				4'b1111: outBus=outR0[255:239];
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

module tb();
             
  reg clk,reset,Write_p,Read_p;
  reg [31:0]addr_p;
  reg [15:0]Data_in_p;
  reg [255:0]M_mem_data_in;
  
  wire [31:0]Data_out_p,M_mem_write_addr,M_mem_read_addr;
  wire M_mem_data_write,miss_wait;
  wire [255:0]M_mem_data_out;
  
  cache cache1(clk, reset,Write_p,Read_p, addr_p, Data_in_p, Data_out_p,
             M_mem_write_addr,M_mem_read_addr, M_mem_data_in, M_mem_data_write,
             M_mem_data_out, miss_wait);
  always
  begin
    #5 clk = ~clk;
  end
  
  initial
  begin
    reset=1;
    clk=1;
    Write_p=0;
    Read_p=0;
    addr_p=00+4;
    Data_in_p=0;
    M_mem_data_in=0;
    M_mem_data_in=25;
    #14
    reset = 0;
    Write_p=1;
    #171//0
    M_mem_data_in=225;
    addr_p=32+4;
    #170//1
    M_mem_data_in=25;
    addr_p=32*2+4;
    #170//2
    addr_p=32*3+4;
    #170//3
    addr_p=32*4+4;
    #170//4
    addr_p=32*5+4;
    #170//5
    addr_p=32*6+4;
    #170//6
    addr_p=32*7+4;
    #170//7
    addr_p=32*8+4;
    #170//8
    addr_p=32*9+4;
    #170//9
    addr_p=32*10+4;
    #170//10
    addr_p=32*11+4;
    #170//11
    addr_p=32*12+4;
    #170//12
    addr_p=32*13+4;
    #170//13
    addr_p=32*14+4;
    #170//14
    addr_p=32*15+4;
    #170//15
    addr_p=32*16+4;
    #170//16
    addr_p=32*17+4;
    #170//17
    addr_p=32*18+4;
    #170//18
    addr_p=32*19+4;
    #170//19
    addr_p=32*20+4;
    #170//20
    addr_p=32*21+4;
    #170//21
    addr_p=32*22+4;
    #170//22
    addr_p=32*23+4;
    #170//23
    addr_p=32*24+4;
    #170//24
    addr_p=32*25+4;
    #170//25
    addr_p=32*26+4;
    #170//26
    addr_p=32*27+4;
    #170//27
    addr_p=32*28+4;
    #170//28
    addr_p=32*29+4;
    #170//29
    addr_p=32*30+4;
    #170//30
    addr_p=32*31+4;
    #170//31
    Write_p=0;
    Read_p=1;
    addr_p=32*0;
    #20
    Read_p=0;
    Write_p=1;
    M_mem_data_in=325;
    addr_p=32*33;
    #170;
  end
endmodule


//////////////////////////////////////////////////
//////////////////////////////////////////////////
/////////////////////memory for testing///////////
//////////////////////////////////////////////////
//////////////////////////////////////////////////

module cache_dummy cache1(input clk,input reset, input Write_p, input Read_p,input [31:0] addr_p,input [15:0] Data_in_p,output reg [31:0] Data_out_p,/*
             M_mem_write_addr,M_mem_read_addr, M_mem_data_in, M_mem_data_write,
             M_mem_data_out,*/output reg miss_wait);
  reg [31:0] instr0,instr1,instr3,instr4,instr5,instr6,instr7,instr8,instr9,instr10,instr11,instr12,instr13,instr14,instr15;
            initial
            begin
              miss_wait = 1'b0;
              instr0  = 32'b00000000_00000000__00000001_001_00100; // G2 nop G1 add r1,1
              instr1  = 32'b00000000_00000000__00000001_010_00101; // G2 nop G1 sub r2,1
              instr2  = 32'b00000000_00000000__010_011_01000_00001;// G2 nop G1 shift r3,r2,8
              instr3  = 32'b00000000_00000000__010_100_00000_01000;// G2 nop G1 MVN r4,r2
              instr4  = 32'b000_101_00010_01111__00000000_000_00000; // G2 load r5,r0(4)  G1 nop
              instr5  = 32'b000_001_00010_01110__00000000_000_00000; // G2 store r1,r0(4) G1 nop
              instr6  = 32'b00000010_000_11011__00000000_000_00000; // G2 b +4            G1 nop
              instr7  = 32'b00000000010_11100__00000000_000_00000;  // G2 jump +4         G1 nop
              instr8  = 32'b00000000_00000000__00000001_001_00100; // G2 nop G1 add r1,1
              instr9  = 32'b00000000_00000000__00000001_001_00100; // G2 nop G1 add r1,1
              instr10 = 32'b00000000_00000000__00000001_001_00100; // G2 nop G1 add r1,1
              instr11 = 32'b00000000_00000000__00000001_001_00100; // G2 nop G1 add r1,1
              instr12 = 32'b00000000_00000000__00000001_001_00100; // G2 nop G1 add r1,1
              instr13 = 32'b00000000_00000000__00000001_001_00100; // G2 nop G1 add r1,1
              instr14 = 32'b00000000_00000000__00000001_001_00100; // G2 nop G1 add r1,1
              instr15 = 32'b00000000_00000000__00000001_001_00100; // G2 nop G1 add r1,1
            end
            always@(addr_p)
            begin
              case(addr_p[3:0])
                0: Data_out_p =instr0;
                1: Data_out_p =instr1;
                2: Data_out_p =instr2;
                3: Data_out_p =instr3;
                4: Data_out_p =instr4;
                5: Data_out_p =instr5;
                6: Data_out_p =instr6;
                7: Data_out_p =instr7;
                8: Data_out_p =instr8;
                9: Data_out_p =instr9;
                10:Data_out_p =instr10;
                11:Data_out_p =instr11;
                12:Data_out_p =instr12;
                13:Data_out_p =instr13;
                14:Data_out_p =instr14;
                15:Data_out_p =instr15;
              endcase
            end
endmodule