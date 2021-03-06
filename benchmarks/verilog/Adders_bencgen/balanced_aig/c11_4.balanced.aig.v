module top(x0, x1, x2, x3, x4, x5, x6, x7, x8, y0, y1, y2, y3, y4);
  input x0, x1, x2, x3, x4, x5, x6, x7, x8;
  output y0, y1, y2, y3, y4;
  wire n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45;
  assign n10 = ~x0 & x4;
  assign n11 = x0 & ~x4;
  assign n12 = ~n10 & ~n11;
  assign n13 = x8 & n12;
  assign n14 = ~x8 & ~n12;
  assign n15 = ~n13 & ~n14;
  assign n16 = ~x1 & x5;
  assign n17 = x1 & ~x5;
  assign n18 = ~n16 & ~n17;
  assign n19 = x8 & ~n12;
  assign n20 = x0 & x4;
  assign n21 = ~n19 & ~n20;
  assign n22 = n18 & ~n21;
  assign n23 = ~n18 & n21;
  assign n24 = ~n22 & ~n23;
  assign n25 = ~x2 & x6;
  assign n26 = x2 & ~x6;
  assign n27 = ~n25 & ~n26;
  assign n28 = ~n18 & ~n21;
  assign n29 = x1 & x5;
  assign n30 = ~n28 & ~n29;
  assign n31 = n27 & ~n30;
  assign n32 = ~n27 & n30;
  assign n33 = ~n31 & ~n32;
  assign n34 = ~x3 & x7;
  assign n35 = x3 & ~x7;
  assign n36 = ~n34 & ~n35;
  assign n37 = ~n27 & ~n30;
  assign n38 = x2 & x6;
  assign n39 = ~n37 & ~n38;
  assign n40 = n36 & ~n39;
  assign n41 = ~n36 & n39;
  assign n42 = ~n40 & ~n41;
  assign n43 = ~n36 & ~n39;
  assign n44 = x3 & x7;
  assign n45 = ~n43 & ~n44;
  assign y0 = ~n15;
  assign y1 = ~n24;
  assign y2 = ~n33;
  assign y3 = ~n42;
  assign y4 = ~n45;
endmodule
