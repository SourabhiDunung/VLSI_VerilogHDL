module test1(d0, d1, d2, d3, d4, d5, d6, d7, y, s);
    input d0;
    input d1;
    input d2;
    input d3;
    input d4;
    input d5;
    input d6;
    input d7;
    output y;
reg y;
    input [2:0] s;

always @ (s or d0 or d1 or d2 or d3 or d4 or d5 or d6 or d7)

begin

    if(s==000)
   y=d0;
else if(s==001)
       y=d1;
else if(s==001)
       y=d2;
else if(s==010)
       y=d3;
else if(s==011)
       y=d4;
else if(s==100)
       y=d5;
else if(s==101)
       y=d6;
else if(s==110)
       y=d6;
else if(s==111)
       y=d7;
else
 y=0;
end
endmodule
