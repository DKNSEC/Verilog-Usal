module Transceiver(inout tri a, inout tri b, input wire dir, input wire g);

	wire sg,sdir,sa1,sa2;

	not (sg,g);
	not (sdir, dir);
	and (sa1, dir,sg);
	and (sa2,sg,sdir);
	bufif1 (a, sa2,b);
	bufif1 (b,sa1,a);
endmodule

module TestTransciever;
	
  	tri a,b;
  	reg g,dir;
  	reg ta,tb;
  	Transceiver t(a,b,g,dir);
 	assign a=ta; assign b=tb;

	initial
		begin
			$monitor($time, "\tg=%b | dir=%b | a=%b | b=%b | ta=%b | tb=%b", g,dir,a,b,ta,tb);

				ta=0; tb=1; g=1; dir=0;
	      	#5 ta='bz; tb='bz; g=1; dir=0;
      		#5 tb=1; g=0; dir=0;
      		#5 ta='bz; tb='bz; g=1; dir=1;
      		#5 ta=0; g=0; dir=1;
      		#5 ta=0; tb=1; g=0; dir=1;




		end
endmodule

