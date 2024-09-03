// Code your testbench here
// or browse Examples
module test_bench();
  reg a,b,cin;
  wire sum,carry;
  
  full_adder FA(sum,carry,a,b,cin);
  
  initial
    begin
      a=0; b=0; cin=0;
    end
  
  initial
    begin
      #10 a = 1 ; b =0; cin =0;
      #10 a = 1 ; b =1; cin =0;
      #10 a = 0 ; b =1; cin =1;
      #10 a = 1 ; b =1; cin =1;
    end
  
  initial
    begin
      $monitor($time, "a = %b, b = %b, cin = %b, sum = %b, carry = %b", a,b,cin,sum,carry);
      
    $dumpfile("dump.vcd");
    $dumpvars(0); // Dump all levels from top
      
     #60 $finish;
    end
  
//   initial
//     begin
//       $dumpfile("dump.vcd");
//     $dumpvars(0); // Dump all levels from top
//     end
  
endmodule
