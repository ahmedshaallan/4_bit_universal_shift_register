module mux (S,A,Y);
input wire [3:0]A ;
input wire [1:0]S ;
output wire Y;


assign Y = ( (~S[0]) & (~S[1]) & A[0] ) | ( (S[0]) & (~S[1]) & A[1] ) | ( (~S[0]) & (S[1]) & A[2] ) | ( (S[0]) & (S[1]) & A[3] ) ;
     


endmodule