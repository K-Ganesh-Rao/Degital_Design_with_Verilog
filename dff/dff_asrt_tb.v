module dff_tb;
	reg clk,rst_n;
	reg d;
	wire q;
	
	dff_asrt dff(clk,rst_n,d,q);
	
	always #2 clk =~clk;
	initial begin
		clk = 0;
		rst_n = 0;
		d = 0;
		
		#3 rst_n = 1 ;
		
		repeat(6)begin
			//d = $unrandom_range(0,1);
			#10 d = 0;
			#10 d = 1;
			#3;
			end
		rst_n = 0; #3;
		rst_n = 1;
		
		repeat(6) begin
			//d= $unrandom_range(0,1);
			#10 d = 1;
			#10 d = 0;
			#3;
		end
		$finish;
		
		end
		
	initial begin 
		$dumpfile("dump.vcd");
		$dumpvars(1);
		
		end
	endmodule
	
