module Comp0(output wire M, output wire igual, output wire m,
             input wire a, input wire b);

  wire wArriba, wAbajo;

  not notArriba(wArriba,a);
  not notAbajo(wAbajo,b);
  and andArriba(mayor,a,wAbajo);
  and andAbajo(menor,b,wArriba);
  nor norx(igual,M,m);

endmodule

module Comp1(output wire M1, output wire igual1, output wire m1,
             input wire a1, input wire b1);

  wire wArriba1, wAbajo1;

  not notArriba1(wArriba1,a1);
  not notAbajo1(wAbajo1,b1);
  and andArriba1(M1,a1,wAbajo1);
  and andAbajo1(m1,b1,wArriba1);
  nor nor1(igual1,M1,m1);

endmodule

module Compf;
	
	Comp0 c0 (M,m,igual,a,b);
	Comp1 c2 (M1,m1,igual1,a1,b1);

	wire Andarriba, Andabajo, mayorf, menorf, igualf;

  and andM(Andarriba,igual1,Mf);
  and andm(Andabajo,igual1,mf);
  and andi(igual,igual1,igualf);
  or orM(Andarriba,M1,Mf);
  or orm(Andabajo,m1,mf);

endmodule

module comparadortest; 

initial
	begin

	$monitor($time, "a=%b, b=%b, a1=%b, b1=%b, M=%b, m=%b, igual=%b", a,b,a1,b1,Mf,mf,igualf);
	 
	a=0; b=0;
      #5 a=0; b=1;
      #5 a=1; b=0;
      #5 a=1; b=1;
    a1=0; b1=0;
      #5 a1=0; b1=1;
      #5 a1=1; b1=0;
      #5 a1=1; b1=1;

      end
endmodule


