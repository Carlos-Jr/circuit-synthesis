module top(x0, x1, x2, x3, x4, x5, x6, y0, y1, y2, y3);
  input x0, x1, x2, x3, x4, x5, x6;
  output y0, y1, y2, y3;
  wire n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40;
  assign n8 = ~x0 & x3;
  assign n9 = x0 & ~x3;
  assign n10 = ~n8 & ~n9;
  assign n11 = x6 & n10;
  assign n12 = ~x6 & ~n10;
  assign n13 = ~n11 & ~n12;
  assign n14 = ~x1 & x4;
  assign n15 = x1 & ~x4;
  assign n16 = ~n14 & ~n15;
  assign n17 = x0 & x3;
  assign n18 = x6 & ~n10;
  assign n19 = ~n17 & ~n18;
  assign n20 = n16 & ~n19;
  assign n21 = ~n16 & n19;
  assign n22 = ~n20 & ~n21;
  assign n23 = ~x2 & x5;
  assign n24 = x2 & ~x5;
  assign n25 = ~n23 & ~n24;
  assign n28 = ~n16 & n18;
  assign n26 = ~n16 & n17;
  assign n27 = x1 & x4;
  assign n29 = ~n26 & ~n27;
  assign n30 = ~n28 & n29;
  assign n31 = n25 & ~n30;
  assign n32 = ~n25 & n30;
  assign n33 = ~n31 & ~n32;
  assign n37 = ~n25 & n28;
  assign n35 = ~n25 & n26;
  assign n34 = ~n25 & n27;
  assign n36 = x2 & x5;
  assign n38 = ~n34 & ~n36;
  assign n39 = ~n35 & n38;
  assign n40 = ~n37 & n39;
  assign y0 = ~n13;
  assign y1 = ~n22;
  assign y2 = ~n33;
  assign y3 = ~n40;
endmodule
