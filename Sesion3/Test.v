module TestLogica;
	
	reg a,b;
	wire salida;
	and puertAND (salida,a,b);


	initial
		begin	

			$monitor($time, "a=%b, b=%b, a.b=%b",a,b,salida);
			a=0; b=0;
			#5 a=0; b=1;
			#5 a=1; b=0;
			#5 a=1; b=1;
		
		end
	endmodule