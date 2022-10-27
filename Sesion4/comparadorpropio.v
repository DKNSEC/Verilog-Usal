module comparador1(output wire mayor, output wire igual, output wire menor, input wire a, input wire b);
	wire Sarriba, Sabajo;

	not arriba (Sarriba, a);
	not abajo (Sabajo, b);
	and ANDrriba (mayor, a, Sarriba);
	and ANDbajo (menor, b, Sabajo);
	nor NORigual (igual, mayor, menor);

module pruebacomparador;

	reg a,b;
	wire mayor,menor,igual;

	comparador1 c (M,igual,m,a,b);

	initial
		begin

		$monitor($time, "a=%b, b=%b, mayor=%b, menor=%b, igual=%b", a, b, M, m, igual);

		a=0; b=0;
		#5	a=0; b=1;
		#5	a=1; b=0;
		#5	a=1; b=1;

	end
endmodule
