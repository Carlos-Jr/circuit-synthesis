module top(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, y0, y1, y2, y3, y4, y5);
  input x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10;
  output y0, y1, y2, y3, y4, y5;
  wire n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56;
  assign n12 = ~x0 & x5;
  assign n13 = x0 & ~x5;
  assign n14 = ~n12 & ~n13;
  assign n15 = x10 & n14;
  assign n16 = ~x10 & ~n14;
  assign n17 = ~n15 & ~n16;
  assign n18 = ~x1 & x6;
  assign n19 = x1 & ~x6;
  assign n20 = ~n18 & ~n19;
  assign n21 = x10 & ~n14;
  assign n22 = x0 & x5;
  assign n23 = ~n21 & ~n22;
  assign n24 = n20 & ~n23;
  assign n25 = ~n20 & n23;
  assign n26 = ~n24 & ~n25;
  assign n27 = ~x2 & x7;
  assign n28 = x2 & ~x7;
  assign n29 = ~n27 & ~n28;
  assign n30 = ~n20 & ~n23;
  assign n31 = x1 & x6;
  assign n32 = ~n30 & ~n31;
  assign n33 = n29 & ~n32;
  assign n34 = ~n29 & n32;
  assign n35 = ~n33 & ~n34;
  assign n36 = ~x3 & x8;
  assign n37 = x3 & ~x8;
  assign n38 = ~n36 & ~n37;
  assign n39 = ~n29 & ~n32;
  assign n40 = x2 & x7;
  assign n41 = ~n39 & ~n40;
  assign n42 = n38 & ~n41;
  assign n43 = ~n38 & n41;
  assign n44 = ~n42 & ~n43;
  assign n45 = ~x4 & x9;
  assign n46 = x4 & ~x9;
  assign n47 = ~n45 & ~n46;
  assign n48 = ~n38 & ~n41;
  assign n49 = x3 & x8;
  assign n50 = ~n48 & ~n49;
  assign n51 = n47 & ~n50;
  assign n52 = ~n47 & n50;
  assign n53 = ~n51 & ~n52;
  assign n54 = ~n47 & ~n50;
  assign n55 = x4 & x9;
  assign n56 = ~n54 & ~n55;
  assign y0 = ~n17;
  assign y1 = ~n26;
  assign y2 = ~n35;
  assign y3 = ~n44;
  assign y4 = ~n53;
  assign y5 = ~n56;
endmodule
