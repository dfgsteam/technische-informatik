module testbench;
    reg [31:0] n;
    wire [31:0] res;

    calc_fib uut (
        .n(n),
        .res(res)
    );

    initial begin
        $monitor("n = %d, Fibonacci = %d", n, res);
        n = 0; #10;
        n = 1; #10;
        n = 2; #10;
        n = 5; #10;
        n = 10; #10;
        $finish;
    end
endmodule