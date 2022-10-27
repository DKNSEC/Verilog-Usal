module hello;

	integer num;

	initial
		begin

			num = 'd1234;

    		$display("El valor de la variable en decimal es: %d\n",num); //Imprime texto en pantalla
    		$display("El valor de la variable en hexadecimal es: %h\n",num);
    		$display("El valor de la variable en octal es: %o\n",num);
    		$display("El valor de la variable en binario es: %b\n",num);

    	end
	endmodule