module registro 

 	reg [6:0] MiRegistro;

	initial
		begin 

		MiRegistro [6:0] = 'h17F;
		MiRegistro1 [6:0] = 'b1011001;

		$display ("El valor del registro es &h", MiRegistro);
		$display ("El valor del registro es &b", MiRegistro1);

		end
	endmodule