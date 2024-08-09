module D_ff ( D , Q , Clck , reset );
input D , Clck , reset ;
output reg Q ;
always @(posedge Clck or posedge reset) begin
    if( reset ) begin
        Q <= 0 ;
    end
    else begin
        Q <= D ;
end
    
end
    
endmodule