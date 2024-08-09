module register ( S , Sir , Sil , Pin , Q , Clck , reset );
input Clck ;
input reset ;
input wire [1:0] S ; 
input wire [3:0] Pin ; 
input wire  Sir ; 
input wire  Sil ; 
output wire [3:0] Q;
wire [3:0]W ; 

mux mux0 (
    .A({Q[0],Sir,Q[1],Pin[0]}) ,
    .Y(W[0]),
    .S(S)
) ;

mux mux1 (
    .A({Q[1],Q[0],Q[2],Pin[1]}) ,
    .Y(W[1]),
    .S(S)
) ;

mux mux2 (
    .A({Q[2],Q[1],Q[3],Pin[2]}),
    .Y(W[2]),
    .S(S)
) ;

mux mux3 (
    .A({Q[0],Q[2],Sil,Pin[3]}),
    .Y(W[3]),
    .S(S) 
) ;

D_ff reg0 ( .Clck(Clck),
            .D(W[0]),
            .Q(Q[0]),
            .reset(reset)

); 

D_ff reg1 ( .Clck(Clck),
            .D(W[1]),
            .Q(Q[1]),
            .reset(reset)

); 

D_ff reg2 ( .Clck(Clck),
            .D(W[2]),
            .Q(Q[2]),
            .reset(reset)

); 

D_ff reg3 ( .Clck(Clck),
            .D(W[3]),
            .Q(Q[3]),
            .reset(reset)

); 

    
endmodule


