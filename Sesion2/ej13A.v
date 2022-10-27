module ejer13;

reg [15:0] reg16;

initial
	begin

	reg16=2323;

	$display("El valor del registro en binario es %b\n", reg16);
	$display("El valor del registro en hexadecimal es %h", reg16);


	end
endmodule