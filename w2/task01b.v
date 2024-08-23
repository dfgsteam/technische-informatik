module calc_fib (n, res);
    input [31:0] n;
    output reg [31:0] res;

    integer i;
    reg [31:0] a, b, temp;

    always @(*) begin
        // Initialisieren der Variablen
        a = 0;
        b = 1;

        // Sonderfälle für n = 0 und n = 1
        if (n == 0) begin
            res = 0;
        end
        else if (n == 1) begin
            res = 1;
        end
        else begin
            // Iterative Berechnung der Fibonacci-Zahlen
            for (i = 2; i <= n; i = i + 1) begin
                temp = a + b;
                a = b;
                b = temp;
            end
            res = b; // Das Ergebnis ist die n-te Fibonacci-Zahl
        end
    end

endmodule