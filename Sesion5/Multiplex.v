module Multiplex(input wire d1, input wire d2, input wire d3, input wire d0, input wire s1, input wire s2, input wire OE, output Y);

	wire sd0,sd1,sd2,sd3,sor,ns1,ns0;

	not(ns0,s0);
	not (ns1,s1);
	and a_0 (sd0,d0,ns0,ns1);
	and a_1 (sd1,d1,s0,ns1);
	and a_2 (sd2,d2,ns0,s1);
	and a_3 (sd3,d3,s0,s1);
	or o_0 (sor, sd0,sd1,sd2,sd3);
	bufif1 buf_0 (Y,sor,OE);

endmodule
module TestMultiplex;

	reg d0,d1,d2,d3,s0,s1,OE;
	reg ty;
	tri y;
	Multiplex t (d0,d1,d2,d3,s1,s0,OE,Y);

	initial 
		begin	

	$monitor($time, "\td0=%b | d1=%b | d2=%b | d3=%b | s1=%b | s0=%b | OE=%b | Y=%b", d0,d1,d2,d3,s1,s0,OE,ty);

		d0=1;d1=1;d2=1;d3=1;s0=1;s1=1;OE=1;

		end
	endmodule
