module tb_WallaceMultiplier;
    parameter WIDTH = 4;
    logic [WIDTH-1:0] A, B;
    logic [2*WIDTH-1:0] P;

    // DUT Instance
    WallaceMultiplier #(WIDTH) uut (
        .A(A),
        .B(B),
        .P(P)
    );

    // Testbench logic
    initial begin
        // Test case 1
        A = 4'b1011; B = 4'b1100; // 11 x 12
        #10;
        $display("A = %b, B = %b, P = %b", A, B, P);

        // Test case 2
        A = 4'b0101; B = 4'b0011; // 5 x 3
        #10;
        $display("A = %b, B = %b, P = %b", A, B, P);

        // Test case 3
        A = 4'b1111; B = 4'b1111; // 15 x 15
        #10;
        $display("A = %b, B = %b, P = %b", A, B, P);

        $stop;
    end
endmodule
