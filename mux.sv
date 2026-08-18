module mux
  (
    output logic f,
    input  logic a, b, c, d,
    input  logic [1:0] sel
  ); 
  
  not g1(n_sel1, sel[1]),
      g2(n_sel0, sel[0]);
      
  and g3(f1, a, n_sel1, n_sel0),
      g4(f2, b, n_sel1, sel[0]), 
      g5(f3, c, sel[1], n_sel0), 
      g6(f4, d, sel[1], sel[0]); 
      
  or  g7(f, f1, f2, f3, f4);
  
endmodule