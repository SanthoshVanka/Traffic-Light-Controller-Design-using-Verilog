`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2022 13:17:27
// Design Name: 
// Module Name: traffic_code_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module traffic_code_tb;
    reg clk,rst;
    wire [2:0]light_M1;
    wire [2:0]light_S;
    wire [2:0]light_MT;
    wire [2:0]light_M2;
    traffic_code dut(.clk(clk) , .rst(rst) , .light_M1(light_M1) , .light_S(light_S)  ,.light_M2(light_M2),.light_MT(light_MT)   );
    initial
    begin
        clk=1'b0;
        forever #(1000000000/2) clk=~clk;
    end
    //    initial
    //    $stop;//to add ps
    initial
    begin
        rst=0;
        #10;
        rst=1;
        #10;
        rst=0;
        #(10*200);
        $finish;
        end
endmodule
