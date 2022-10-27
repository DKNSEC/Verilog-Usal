module ejer13;
	reg [15:0] reg16;
	reg [15:0] reg16m;


	initial
		begin

		reg16='b1111111111111111;
		reg16m='b0000000000000000;

		$display ("El valor del registro en binario es %b", reg16);
		$display ("El valor del registro en hexadecimal es %h", reg16);
		$display ("El valor del registro en decimal es %d", reg16);
		$display ("El valor del registro en octal es %o\n", reg16);

		
		$display ("El valor del registro en binario es %b", reg16m);
		$display ("El valor del registro en hexadecimal es %h", reg16m);
		$display ("El valor del registro en decimal es %d", reg16m);
		$display ("El valor del registro en octal es %o", reg16m);

		end
	endmodule