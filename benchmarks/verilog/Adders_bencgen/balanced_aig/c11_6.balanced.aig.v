module top(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, y0, y1, y2, y3, y4, y5, y6);
  input x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12;
  output y0, y1, y2, y3, y4, y5, y6;
  wire n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67;
  assign n14 = ~x0 & x6;
  assign n15 = x0 & ~x6;
  assign n16 = ~n14 & ~n15;
  assign n17 = x12 & n16;
  assign n18 = ~x12 & ~n16;
  assign n19 = ~n17 & ~n18;
  assign n20 = ~x1 & x7;
  assign n21 = x1 & ~x7;
  assign n22 = ~n20 & ~n21;
  assign n23 = x12 & ~n16;
  assign n24 = x0 & x6;
  assign n25 = ~n23 & ~n24;
  assign n26 = n22 & ~n25;
  assign n27 = ~n22 & n25;
  assign n28 = ~n26 & ~n27;
  assign n29 = ~x2 & x8;
  assign n30 = x2 & ~x8;
  assign n31 = ~n29 & ~n30;
  assign n32 = ~n22 & ~n25;
  assign n33 = x1 & x7;
  assign n34 = ~n32 & ~n33;
  assign n35 = n31 & ~n34;
  assign n36 = ~n31 & n34;
  assign n37 = ~n35 & ~n36;
  assign n38 = ~x3 & x9;
  assign n39 = x3 & ~x9;
  assign n40 = ~n38 & ~n39;
  assign n41 = ~n31 & ~n34;
  assign n42 = x2 & x8;
  assign n43 = ~n41 & ~n42;
  assign n44 = n40 & ~n43;
  assign n45 = ~n40 & n43;
  assign n46 = ~n44 & ~n45;
  assign n47 = ~x4 & x10;
  assign n48 = x4 & ~x10;
  assign n49 = ~n47 & ~n48;
  assign n50 = ~n40 & ~n43;
  assign n51 = x3 & x9;
  assign n52 = ~n50 & ~n51;
  assign n53 = n49 & ~n52;
  assign n54 = ~n49 & n52;
  assign n55 = ~n53 & ~n54;
  assign n56 = ~x5 & x11;
  assign n57 = x5 & ~x11;
  assign n58 = ~n56 & ~n57;
  assign n59 = ~n49 & ~n52;
  assign n60 = x4 & x10;
  assign n61 = ~n59 & ~n60;
  assign n62 = n58 & ~n61;
  assign n63 = ~n58 & n61;
  assign n64 = ~n62 & ~n63;
  assign n65 = ~n58 & ~n61;
  assign n66 = x5 & x11;
  assign n67 = ~n65 & ~n66;
  assign y0 = ~n19;
  assign y1 = ~n28;
  assign y2 = ~n37;
  assign y3 = ~n46;
  assign y4 = ~n55;
  assign y5 = ~n64;
  assign y6 = ~n67;
endmodule
