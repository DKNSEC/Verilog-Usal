module puertaanidada;

		reg [2:0] r;
		wire s1,s2;
		and puertand (s1,r[1],r[2]);
		or puertaor (s2,r[1],r[0]);

	initial
		begin

		$monitor($time, "a=%b | b=%b | a&b=%b | c=%b | a&b|c=%b", r[1],r[2],s1,r[0],s2);
		
		r=0;
		while(r!='b111) #5 r++;

		end
	endmodule
