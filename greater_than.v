module greater_than(A, B, F);

input [1:0] A, B;
output F;

// assign F = A > B; essentially the short form way to do things. 

assign F = A[1] & ~B[1] | A[0] & ~B[1] & B[0] | A[1] & A[0] & ~B[0];



endmodule 