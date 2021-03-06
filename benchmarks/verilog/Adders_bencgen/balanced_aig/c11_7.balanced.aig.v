module top(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, y0, y1, y2, y3, y4, y5, y6, y7);
  input x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14;
  output y0, y1, y2, y3, y4, y5, y6, y7;
  wire n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78;
  assign n16 = ~x0 & x7;
  assign n17 = x0 & ~x7;
  assign n18 = ~n16 & ~n17;
  assign n19 = x14 & n18;
  assign n20 = ~x14 & ~n18;
  assign n21 = ~n19 & ~n20;
  assign n22 = ~x1 & x8;
  assign n23 = x1 & ~x8;
  assign n24 = ~n22 & ~n23;
  assign n25 = x14 & ~n18;
  assign n26 = x0 & x7;
  assign n27 = ~n25 & ~n26;
  assign n28 = n24 & ~n27;
  assign n29 = ~n24 & n27;
  assign n30 = ~n28 & ~n29;
  assign n31 = ~x2 & x9;
  assign n32 = x2 & ~x9;
  assign n33 = ~n31 & ~n32;
  assign n34 = ~n24 & ~n27;
  assign n35 = x1 & x8;
  assign n36 = ~n34 & ~n35;
  assign n37 = n33 & ~n36;
  assign n38 = ~n33 & n36;
  assign n39 = ~n37 & ~n38;
  assign n40 = ~x3 & x10;
  assign n41 = x3 & ~x10;
  assign n42 = ~n40 & ~n41;
  assign n43 = ~n33 & ~n36;
  assign n44 = x2 & x9;
  assign n45 = ~n43 & ~n44;
  assign n46 = n42 & ~n45;
  assign n47 = ~n42 & n45;
  assign n48 = ~n46 & ~n47;
  assign n49 = ~x4 & x11;
  assign n50 = x4 & ~x11;
  assign n51 = ~n49 & ~n50;
  assign n52 = ~n42 & ~n45;
  assign n53 = x3 & x10;
  assign n54 = ~n52 & ~n53;
  assign n55 = n51 & ~n54;
  assign n56 = ~n51 & n54;
  assign n57 = ~n55 & ~n56;
  assign n58 = ~x5 & x12;
  assign n59 = x5 & ~x12;
  assign n60 = ~n58 & ~n59;
  assign n61 = ~n51 & ~n54;
  assign n62 = x4 & x11;
  assign n63 = ~n61 & ~n62;
  assign n64 = n60 & ~n63;
  assign n65 = ~n60 & n63;
  assign n66 = ~n64 & ~n65;
  assign n67 = ~x6 & x13;
  assign n68 = x6 & ~x13;
  assign n69 = ~n67 & ~n68;
  assign n70 = ~n60 & ~n63;
  assign n71 = x5 & x12;
  assign n72 = ~n70 & ~n71;
  assign n73 = n69 & ~n72;
  assign n74 = ~n69 & n72;
  assign n75 = ~n73 & ~n74;
  assign n76 = ~n69 & ~n72;
  assign n77 = x6 & x13;
  assign n78 = ~n76 & ~n77;
  assign y0 = ~n21;
  assign y1 = ~n30;
  assign y2 = ~n39;
  assign y3 = ~n48;
  assign y4 = ~n57;
  assign y5 = ~n66;
  assign y6 = ~n75;
  assign y7 = ~n78;
endmodule
