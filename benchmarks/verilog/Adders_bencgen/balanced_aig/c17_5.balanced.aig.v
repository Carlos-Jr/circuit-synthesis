module top(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, y0, y1, y2, y3, y4, y5);
  input x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10;
  output y0, y1, y2, y3, y4, y5;
  wire n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68;
  assign n12 = ~x0 & x5;
  assign n13 = x0 & ~x5;
  assign n14 = ~n12 & ~n13;
  assign n15 = x10 & n14;
  assign n16 = ~x10 & ~n14;
  assign n17 = ~n15 & ~n16;
  assign n18 = ~x1 & x6;
  assign n19 = x1 & ~x6;
  assign n20 = ~n18 & ~n19;
  assign n21 = x0 & x5;
  assign n22 = x10 & ~n14;
  assign n23 = ~n21 & ~n22;
  assign n24 = n20 & ~n23;
  assign n25 = ~n20 & n23;
  assign n26 = ~n24 & ~n25;
  assign n27 = ~x2 & x7;
  assign n28 = x2 & ~x7;
  assign n29 = ~n27 & ~n28;
  assign n32 = ~n20 & n22;
  assign n30 = ~n20 & n21;
  assign n31 = x1 & x6;
  assign n33 = ~n30 & ~n31;
  assign n34 = ~n32 & n33;
  assign n35 = n29 & ~n34;
  assign n36 = ~n29 & n34;
  assign n37 = ~n35 & ~n36;
  assign n38 = ~x3 & x8;
  assign n39 = x3 & ~x8;
  assign n40 = ~n38 & ~n39;
  assign n44 = ~n29 & n32;
  assign n42 = ~n29 & n30;
  assign n41 = ~n29 & n31;
  assign n43 = x2 & x7;
  assign n45 = ~n41 & ~n43;
  assign n46 = ~n42 & n45;
  assign n47 = ~n44 & n46;
  assign n48 = n40 & ~n47;
  assign n49 = ~n40 & n47;
  assign n50 = ~n48 & ~n49;
  assign n51 = ~x4 & x9;
  assign n52 = x4 & ~x9;
  assign n53 = ~n51 & ~n52;
  assign n58 = ~n40 & n44;
  assign n56 = ~n40 & n42;
  assign n55 = ~n40 & n41;
  assign n54 = ~n40 & n43;
  assign n57 = x3 & x8;
  assign n59 = ~n54 & ~n57;
  assign n60 = ~n55 & n59;
  assign n61 = ~n56 & n60;
  assign n62 = ~n58 & n61;
  assign n63 = n53 & ~n62;
  assign n64 = ~n53 & n62;
  assign n65 = ~n63 & ~n64;
  assign n66 = x4 & x9;
  assign n67 = ~n53 & ~n62;
  assign n68 = ~n66 & ~n67;
  assign y0 = ~n17;
  assign y1 = ~n26;
  assign y2 = ~n37;
  assign y3 = ~n50;
  assign y4 = ~n65;
  assign y5 = ~n68;
endmodule
