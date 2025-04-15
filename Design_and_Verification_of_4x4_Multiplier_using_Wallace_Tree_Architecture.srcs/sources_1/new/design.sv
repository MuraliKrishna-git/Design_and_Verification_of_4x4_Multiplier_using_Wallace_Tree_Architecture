module WallaceMultiplier #(parameter WIDTH = 4)(
    input logic [WIDTH-1:0] A, B,
    output logic [2*WIDTH-1:0] P
);
    logic [WIDTH-1:0] pp[WIDTH-1:0]; // Partial products
    logic [2*WIDTH-2:0] sum1, carry1, sum2, carry2;

    // Generate partial products
//    generate
//        genvar i, j;
//        for (i = 0; i < WIDTH; i++) begin
//            for (j = 0; j < WIDTH; j++) begin
//                assign pp[i][j] = A[i] & B[j];
//            end
//        end
//    endgenerate

    generate
        genvar i, j;
        for (i = 0; i < WIDTH; i++) begin
            for (j = 0; j < WIDTH; j++) begin
                always_comb begin
                    pp[i][j] = A[i] & B[j];
                end
            end
        end
    endgenerate 

    // First stage reduction
//    assign {carry1, sum1} = {pp[3][3], pp[3][2], pp[3][1]} + 
//                            {pp[2][3], pp[2][2], pp[2][1]} + 
//                            {pp[1][3], pp[1][2], pp[1][1]};

    assign {carry1, sum1} = {pp[3][3], pp[3][2], pp[3][1]} + 
                            {pp[2][3], pp[2][2], pp[2][1]} + 
                            {pp[1][3], pp[1][2], pp[1][1]};

    // Second stage reduction
    assign {carry2, sum2} = sum1 + carry1;

    // Final summation
    assign P = sum2 + carry2;
endmodule
