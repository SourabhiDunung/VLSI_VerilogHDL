module test(clk, rst, ud, count);
    input clk;
    input rst;
    input ud;
    output [3:0] count;
reg count;                                           // write your bus outputs ar reg

always @ (posedge clk or posedge rst)          //write inputs priority wise
begin
if (rst==1'b1)                                  //checking reset condition
count<=4'b0000;
else
if (ud==1'b1)                            //checking input pulse
if (count == 4'b1111)                  //if count is max force it to minimum
count <= 4'b0000;
else
count <= count + 4'b0001;       //incrementing the count by 1;
else
if (count == 4'b0000)              //if count is min force it to maximum
 count <= 4'b1111;
else
 count <=count - 4'b0001;    ////decrementing the count by 1;

end
endmodule
