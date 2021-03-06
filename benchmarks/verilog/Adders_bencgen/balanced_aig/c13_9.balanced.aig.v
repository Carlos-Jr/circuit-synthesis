module top(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, y0, y1, y2, y3, y4, y5, y6, y7, y8, y9);
  input x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18;
  output y0, y1, y2, y3, y4, y5, y6, y7, y8, y9;
  wire n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172;
  assign n20 = ~x0 & x9;
  assign n21 = x0 & ~x9;
  assign n22 = ~n20 & ~n21;
  assign n23 = x18 & n22;
  assign n24 = ~x18 & ~n22;
  assign n25 = ~n23 & ~n24;
  assign n26 = ~x1 & x10;
  assign n27 = x1 & ~x10;
  assign n28 = ~n26 & ~n27;
  assign n29 = x0 & x9;
  assign n30 = x18 & ~n22;
  assign n31 = ~n29 & ~n30;
  assign n32 = n28 & ~n31;
  assign n33 = ~n28 & n31;
  assign n34 = ~n32 & ~n33;
  assign n35 = ~x2 & x11;
  assign n36 = x2 & ~x11;
  assign n37 = ~n35 & ~n36;
  assign n40 = ~n28 & n30;
  assign n38 = ~n28 & n29;
  assign n39 = x1 & x10;
  assign n41 = ~n38 & ~n39;
  assign n42 = ~n40 & n41;
  assign n43 = n37 & ~n42;
  assign n44 = ~n37 & n42;
  assign n45 = ~n43 & ~n44;
  assign n46 = ~x3 & x12;
  assign n47 = x3 & ~x12;
  assign n48 = ~n46 & ~n47;
  assign n52 = ~n37 & n40;
  assign n50 = ~n37 & n38;
  assign n49 = ~n37 & n39;
  assign n51 = x2 & x11;
  assign n53 = ~n49 & ~n51;
  assign n54 = ~n50 & n53;
  assign n55 = ~n52 & n54;
  assign n56 = n48 & ~n55;
  assign n57 = ~n48 & n55;
  assign n58 = ~n56 & ~n57;
  assign n59 = ~x4 & x13;
  assign n60 = x4 & ~x13;
  assign n61 = ~n59 & ~n60;
  assign n66 = ~n48 & n52;
  assign n64 = ~n48 & n50;
  assign n63 = ~n48 & n49;
  assign n62 = ~n48 & n51;
  assign n65 = x3 & x12;
  assign n67 = ~n62 & ~n65;
  assign n68 = ~n63 & n67;
  assign n69 = ~n64 & n68;
  assign n70 = ~n66 & n69;
  assign n71 = n61 & ~n70;
  assign n72 = ~n61 & n70;
  assign n73 = ~n71 & ~n72;
  assign n74 = ~x5 & x14;
  assign n75 = x5 & ~x14;
  assign n76 = ~n74 & ~n75;
  assign n82 = ~n61 & n66;
  assign n80 = ~n61 & n64;
  assign n79 = ~n61 & n63;
  assign n78 = ~n61 & n62;
  assign n77 = ~n61 & n65;
  assign n81 = x4 & x13;
  assign n83 = ~n77 & ~n81;
  assign n84 = ~n78 & n83;
  assign n85 = ~n79 & n84;
  assign n86 = ~n80 & n85;
  assign n87 = ~n82 & n86;
  assign n88 = n76 & ~n87;
  assign n89 = ~n76 & n87;
  assign n90 = ~n88 & ~n89;
  assign n91 = ~x6 & x15;
  assign n92 = x6 & ~x15;
  assign n93 = ~n91 & ~n92;
  assign n100 = ~n76 & n82;
  assign n98 = ~n76 & n80;
  assign n97 = ~n76 & n79;
  assign n96 = ~n76 & n78;
  assign n95 = ~n76 & n77;
  assign n94 = ~n76 & n81;
  assign n99 = x5 & x14;
  assign n101 = ~n94 & ~n99;
  assign n102 = ~n95 & n101;
  assign n103 = ~n96 & n102;
  assign n104 = ~n97 & n103;
  assign n105 = ~n98 & n104;
  assign n106 = ~n100 & n105;
  assign n107 = n93 & ~n106;
  assign n108 = ~n93 & n106;
  assign n109 = ~n107 & ~n108;
  assign n110 = ~x7 & x16;
  assign n111 = x7 & ~x16;
  assign n112 = ~n110 & ~n111;
  assign n120 = ~n93 & n100;
  assign n118 = ~n93 & n98;
  assign n117 = ~n93 & n97;
  assign n116 = ~n93 & n96;
  assign n115 = ~n93 & n95;
  assign n114 = ~n93 & n94;
  assign n113 = ~n93 & n99;
  assign n119 = x6 & x15;
  assign n121 = ~n113 & ~n119;
  assign n122 = ~n114 & n121;
  assign n123 = ~n115 & n122;
  assign n124 = ~n116 & n123;
  assign n125 = ~n117 & n124;
  assign n126 = ~n118 & n125;
  assign n127 = ~n120 & n126;
  assign n128 = n112 & ~n127;
  assign n129 = ~n112 & n127;
  assign n130 = ~n128 & ~n129;
  assign n131 = ~x8 & x17;
  assign n132 = x8 & ~x17;
  assign n133 = ~n131 & ~n132;
  assign n142 = ~n112 & n120;
  assign n140 = ~n112 & n118;
  assign n139 = ~n112 & n117;
  assign n138 = ~n112 & n116;
  assign n137 = ~n112 & n115;
  assign n136 = ~n112 & n114;
  assign n135 = ~n112 & n113;
  assign n134 = ~n112 & n119;
  assign n141 = x7 & x16;
  assign n143 = ~n134 & ~n141;
  assign n144 = ~n135 & n143;
  assign n145 = ~n136 & n144;
  assign n146 = ~n137 & n145;
  assign n147 = ~n138 & n146;
  assign n148 = ~n139 & n147;
  assign n149 = ~n140 & n148;
  assign n150 = ~n142 & n149;
  assign n151 = n133 & ~n150;
  assign n152 = ~n133 & n150;
  assign n153 = ~n151 & ~n152;
  assign n163 = ~n133 & n142;
  assign n161 = ~n133 & n140;
  assign n160 = ~n133 & n139;
  assign n159 = ~n133 & n138;
  assign n158 = ~n133 & n137;
  assign n157 = ~n133 & n136;
  assign n156 = ~n133 & n135;
  assign n155 = ~n133 & n134;
  assign n154 = ~n133 & n141;
  assign n162 = x8 & x17;
  assign n164 = ~n154 & ~n162;
  assign n165 = ~n155 & n164;
  assign n166 = ~n156 & n165;
  assign n167 = ~n157 & n166;
  assign n168 = ~n158 & n167;
  assign n169 = ~n159 & n168;
  assign n170 = ~n160 & n169;
  assign n171 = ~n161 & n170;
  assign n172 = ~n163 & n171;
  assign y0 = ~n25;
  assign y1 = ~n34;
  assign y2 = ~n45;
  assign y3 = ~n58;
  assign y4 = ~n73;
  assign y5 = ~n90;
  assign y6 = ~n109;
  assign y7 = ~n130;
  assign y8 = ~n153;
  assign y9 = ~n172;
endmodule
