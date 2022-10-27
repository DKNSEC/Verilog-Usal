module TestLogica;
	
	reg a,b,c;
	wire salida, salida2;
	and puertAND (salida,a,b);
	not negar (salida2,salida);
	nand puertaNAND (salida3,a,b);


	initial
		begin	

			$monitor($time, "a=%b | b=%b | a.b=%b | a.bN=%b | NAND=%b",a,b,salida,salida2,salida3);
			
			a=0; b=0;
			#5 a=0; b=1;
			#5 a=1; b=0;
			#5 a=1; b=1;

		end
	endmodule