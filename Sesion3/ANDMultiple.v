module TestLogica;
	
	reg a,b,c,d;
	wire salida;
	and puertAND (salida,a,b,c,d);


	initial
		begin	

			$monitor($time, "a=%b | b=%b | c=%b | d=%b | a.b.c.d=%b",a,b,c,d,salida);
			a=0; b=0; c=0; d=0;
			#5 a=0; b=0; c=0; d=1;
			#5 a=0; b=1; c=1; d=0;
			#5 a=0; b=1; c=1; d=1;
			#5 a=0; b=1; c=0; d=0;
			#5 a=0; b=1; c=0; d=1;
			#5 a=0; b=1; c=1; d=0;
			#5 a=0; b=1; c=1; d=1;
			#5 a=1; b=0; c=0; d=0;
			#5 a=1; b=0; c=0; d=1;
			#5 a=1; b=0; c=1; d=0;
			#5 a=1; b=0; c=1; d=1;
			#5 a=1; b=1; c=0; d=0;
			#5 a=1; b=1; c=0; d=1;
			#5 a=1; b=1; c=1; d=0;
			#5 a=1; b=1; c=1; d=1;

			#5 a=1; //linea ignorada por no haber cambios

		end
	endmodule