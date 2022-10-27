module ejer7;

	reg [15:0] reg16;
	integer mascara, mascara2, mascara3, res, num;

	initial
		begin
		
		num ='b1001_1111_0111_0000;
		mascara = 'b0000_0000_0001_0000;
		mascara2 = 'b1111_1000_1111_1111;
		mascara3 = 'b1º000_0000_0000_0000;

		$display("%b", num);
		res=num|mascara;
		$display("%b", res);
		res=res&mascara2;
		$display("%b", res);
		res=res^mascara3;
		$display("%b", res);



		end
	endmodule