`timescale 1ns / 1ps

module RAM_LED();

reg clk;
wire [7:0] led;
reg [2:0] buton;
reg [7:0] swt;
    
LED_with_RAM LR1(
	.clk(clk),
	.btn(buton),
	.swtch(swt),
	.LED(led)
);

    always #5 clk = ~clk;

initial begin
    clk = 0; buton = 3'b000;
    #20
    buton = 3'b001; swt = 8'b00000001;
    #20
    buton = 3'b010; swt = 8'b11111111;
    #20
    buton = 3'b100;
    #20
    buton = 3'b000;
    
    clk = 0; buton = 3'b000;
    #20
    buton = 3'b001; swt = 8'b00001001;
    #20
    buton = 3'b010; swt = 8'b11111111;
    #20
    buton = 3'b100;
    #20
    buton = 3'b000;
end

endmodule
