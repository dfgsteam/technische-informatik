module calc_fib (n, res);
    input [31:0] n;
    output reg [31:0] res;

    function [31:0] fib;
        input [31:0] n;
        begin
            if (n == 0)
                fib = 0;
            else if (n==1)
                fib = 1;
            else 
                fib = fib(n-1) + fib(n-2);
        end
    endfunction

    always @(*) 
    begin
        res = fib(n);
    end

endmodule

