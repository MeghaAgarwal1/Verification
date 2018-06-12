`timescale 1ps/1ps

module tb_top ;

reg a;

reg b;

wire o;



initial

begin 

  {a,b} = "00";

  #10 {a,b} = 2'b01;

  #10 {a,b} = 2'b10;

  #10 {a,b} = 2'b11;

  #10 {a,b} = 2'b00;

end



and_ex dut(.a (a),

           .b (b),

           .o (o) 

           );

initial

begin

$dumpvars(0,tb_top);

$dumpfile("test.vcd");

end 

endmodule
