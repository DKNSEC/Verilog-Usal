module TestLogica;
	
	reg a,b;
	wire salida;
	and puertAND (salida,a,b);


	initial
		begin	

			$monitor($time, "a=%b | b=%b | a.b=%b",a,b,salida);
			
			a=0; b=0;
			#5 a=0; b=1;
			#5 a=1; b=0;
			#5 a=1; b=1;
			#5 a=0; b='bz;
			#5 a=1; b='bz;
			#5 a=0; b='bx;
			#5 a=1; b='bx;
			#5 a='bz; b='bx;
			#5 a='bx; b='bz;
			#5 a='bz; b=0;
			#5 a='bz; b=1;
			#5 a='bx; b=0;
			#5 a='bx; b=1;
			#5 a='bx; b='bx;
			#5 a='bz; b='bz;

		end
	endmodule