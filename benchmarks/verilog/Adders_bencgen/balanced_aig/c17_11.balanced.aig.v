module top(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, y0, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11);
  input x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22;
  output y0, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11;
  wire n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152;
  assign n24 = ~x0 & x11;
  assign n25 = x0 & ~x11;
  assign n26 = ~n24 & ~n25;
  assign n27 = x22 & n26;
  assign n28 = ~x22 & ~n26;
  assign n29 = ~n27 & ~n28;
  assign n30 = ~x1 & x12;
  assign n31 = x1 & ~x12;
  assign n32 = ~n30 & ~n31;
  assign n33 = x0 & x11;
  assign n34 = x22 & ~n26;
  assign n35 = ~n33 & ~n34;
  assign n36 = n32 & ~n35;
  assign n37 = ~n32 & n35;
  assign n38 = ~n36 & ~n37;
  assign n39 = ~x2 & x13;
  assign n40 = x2 & ~x13;
  assign n41 = ~n39 & ~n40;
  assign n44 = ~n32 & n34;
  assign n42 = ~n32 & n33;
  assign n43 = x1 & x12;
  assign n45 = ~n42 & ~n43;
  assign n46 = ~n44 & n45;
  assign n47 = n41 & ~n46;
  assign n48 = ~n41 & n46;
  assign n49 = ~n47 & ~n48;
  assign n50 = ~x3 & x14;
  assign n51 = x3 & ~x14;
  assign n52 = ~n50 & ~n51;
  assign n56 = ~n41 & n44;
  assign n54 = ~n41 & n42;
  assign n53 = ~n41 & n43;
  assign n55 = x2 & x13;
  assign n57 = ~n53 & ~n55;
  assign n58 = ~n54 & n57;
  assign n59 = ~n56 & n58;
  assign n60 = n52 & ~n59;
  assign n61 = ~n52 & n59;
  assign n62 = ~n60 & ~n61;
  assign n63 = ~x4 & x15;
  assign n64 = x4 & ~x15;
  assign n65 = ~n63 & ~n64;
  assign n70 = ~n52 & n56;
  assign n68 = ~n52 & n54;
  assign n67 = ~n52 & n53;
  assign n66 = ~n52 & n55;
  assign n69 = x3 & x14;
  assign n71 = ~n66 & ~n69;
  assign n72 = ~n67 & n71;
  assign n73 = ~n68 & n72;
  assign n74 = ~n70 & n73;
  assign n75 = n65 & ~n74;
  assign n76 = ~n65 & n74;
  assign n77 = ~n75 & ~n76;
  assign n78 = ~x5 & x16;
  assign n79 = x5 & ~x16;
  assign n80 = ~n78 & ~n79;
  assign n81 = x4 & x15;
  assign n82 = ~n65 & ~n74;
  assign n83 = ~n81 & ~n82;
  assign n84 = n80 & ~n83;
  assign n85 = ~n80 & n83;
  assign n86 = ~n84 & ~n85;
  assign n87 = ~x6 & x17;
  assign n88 = x6 & ~x17;
  assign n89 = ~n87 & ~n88;
  assign n92 = ~n80 & n82;
  assign n90 = ~n80 & n81;
  assign n91 = x5 & x16;
  assign n93 = ~n90 & ~n91;
  assign n94 = ~n92 & n93;
  assign n95 = n89 & ~n94;
  assign n96 = ~n89 & n94;
  assign n97 = ~n95 & ~n96;
  assign n98 = ~x7 & x18;
  assign n99 = x7 & ~x18;
  assign n100 = ~n98 & ~n99;
  assign n104 = ~n89 & n92;
  assign n102 = ~n89 & n90;
  assign n101 = ~n89 & n91;
  assign n103 = x6 & x17;
  assign n105 = ~n101 & ~n103;
  assign n106 = ~n102 & n105;
  assign n107 = ~n104 & n106;
  assign n108 = n100 & ~n107;
  assign n109 = ~n100 & n107;
  assign n110 = ~n108 & ~n109;
  assign n111 = ~x8 & x19;
  assign n112 = x8 & ~x19;
  assign n113 = ~n111 & ~n112;
  assign n118 = ~n100 & n104;
  assign n116 = ~n100 & n102;
  assign n115 = ~n100 & n101;
  assign n114 = ~n100 & n103;
  assign n117 = x7 & x18;
  assign n119 = ~n114 & ~n117;
  assign n120 = ~n115 & n119;
  assign n121 = ~n116 & n120;
  assign n122 = ~n118 & n121;
  assign n123 = n113 & ~n122;
  assign n124 = ~n113 & n122;
  assign n125 = ~n123 & ~n124;
  assign n126 = ~x9 & x20;
  assign n127 = x9 & ~x20;
  assign n128 = ~n126 & ~n127;
  assign n129 = x8 & x19;
  assign n130 = ~n113 & ~n122;
  assign n131 = ~n129 & ~n130;
  assign n132 = n128 & ~n131;
  assign n133 = ~n128 & n131;
  assign n134 = ~n132 & ~n133;
  assign n135 = ~x10 & x21;
  assign n136 = x10 & ~x21;
  assign n137 = ~n135 & ~n136;
  assign n140 = ~n128 & n130;
  assign n138 = ~n128 & n129;
  assign n139 = x9 & x20;
  assign n141 = ~n138 & ~n139;
  assign n142 = ~n140 & n141;
  assign n143 = n137 & ~n142;
  assign n144 = ~n137 & n142;
  assign n145 = ~n143 & ~n144;
  assign n149 = ~n137 & n140;
  assign n147 = ~n137 & n138;
  assign n146 = ~n137 & n139;
  assign n148 = x10 & x21;
  assign n150 = ~n146 & ~n148;
  assign n151 = ~n147 & n150;
  assign n152 = ~n149 & n151;
  assign y0 = ~n29;
  assign y1 = ~n38;
  assign y2 = ~n49;
  assign y3 = ~n62;
  assign y4 = ~n77;
  assign y5 = ~n86;
  assign y6 = ~n97;
  assign y7 = ~n110;
  assign y8 = ~n125;
  assign y9 = ~n134;
  assign y10 = ~n145;
  assign y11 = ~n152;
endmodule
