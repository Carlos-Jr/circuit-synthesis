module top(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, y0, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10);
  input x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20;
  output y0, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10;
  wire n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201;
  assign n22 = ~x0 & x10;
  assign n23 = x0 & ~x10;
  assign n24 = ~n22 & ~n23;
  assign n25 = x20 & n24;
  assign n26 = ~x20 & ~n24;
  assign n27 = ~n25 & ~n26;
  assign n28 = ~x1 & x11;
  assign n29 = x1 & ~x11;
  assign n30 = ~n28 & ~n29;
  assign n31 = x0 & x10;
  assign n32 = x20 & ~n24;
  assign n33 = ~n31 & ~n32;
  assign n34 = n30 & ~n33;
  assign n35 = ~n30 & n33;
  assign n36 = ~n34 & ~n35;
  assign n37 = ~x2 & x12;
  assign n38 = x2 & ~x12;
  assign n39 = ~n37 & ~n38;
  assign n42 = ~n30 & n32;
  assign n40 = ~n30 & n31;
  assign n41 = x1 & x11;
  assign n43 = ~n40 & ~n41;
  assign n44 = ~n42 & n43;
  assign n45 = n39 & ~n44;
  assign n46 = ~n39 & n44;
  assign n47 = ~n45 & ~n46;
  assign n48 = ~x3 & x13;
  assign n49 = x3 & ~x13;
  assign n50 = ~n48 & ~n49;
  assign n54 = ~n39 & n42;
  assign n52 = ~n39 & n40;
  assign n51 = ~n39 & n41;
  assign n53 = x2 & x12;
  assign n55 = ~n51 & ~n53;
  assign n56 = ~n52 & n55;
  assign n57 = ~n54 & n56;
  assign n58 = n50 & ~n57;
  assign n59 = ~n50 & n57;
  assign n60 = ~n58 & ~n59;
  assign n61 = ~x4 & x14;
  assign n62 = x4 & ~x14;
  assign n63 = ~n61 & ~n62;
  assign n68 = ~n50 & n54;
  assign n66 = ~n50 & n52;
  assign n65 = ~n50 & n51;
  assign n64 = ~n50 & n53;
  assign n67 = x3 & x13;
  assign n69 = ~n64 & ~n67;
  assign n70 = ~n65 & n69;
  assign n71 = ~n66 & n70;
  assign n72 = ~n68 & n71;
  assign n73 = n63 & ~n72;
  assign n74 = ~n63 & n72;
  assign n75 = ~n73 & ~n74;
  assign n76 = ~x5 & x15;
  assign n77 = x5 & ~x15;
  assign n78 = ~n76 & ~n77;
  assign n84 = ~n63 & n68;
  assign n82 = ~n63 & n66;
  assign n81 = ~n63 & n65;
  assign n80 = ~n63 & n64;
  assign n79 = ~n63 & n67;
  assign n83 = x4 & x14;
  assign n85 = ~n79 & ~n83;
  assign n86 = ~n80 & n85;
  assign n87 = ~n81 & n86;
  assign n88 = ~n82 & n87;
  assign n89 = ~n84 & n88;
  assign n90 = n78 & ~n89;
  assign n91 = ~n78 & n89;
  assign n92 = ~n90 & ~n91;
  assign n93 = ~x6 & x16;
  assign n94 = x6 & ~x16;
  assign n95 = ~n93 & ~n94;
  assign n102 = ~n78 & n84;
  assign n100 = ~n78 & n82;
  assign n99 = ~n78 & n81;
  assign n98 = ~n78 & n80;
  assign n97 = ~n78 & n79;
  assign n96 = ~n78 & n83;
  assign n101 = x5 & x15;
  assign n103 = ~n96 & ~n101;
  assign n104 = ~n97 & n103;
  assign n105 = ~n98 & n104;
  assign n106 = ~n99 & n105;
  assign n107 = ~n100 & n106;
  assign n108 = ~n102 & n107;
  assign n109 = n95 & ~n108;
  assign n110 = ~n95 & n108;
  assign n111 = ~n109 & ~n110;
  assign n112 = ~x7 & x17;
  assign n113 = x7 & ~x17;
  assign n114 = ~n112 & ~n113;
  assign n122 = ~n95 & n102;
  assign n120 = ~n95 & n100;
  assign n119 = ~n95 & n99;
  assign n118 = ~n95 & n98;
  assign n117 = ~n95 & n97;
  assign n116 = ~n95 & n96;
  assign n115 = ~n95 & n101;
  assign n121 = x6 & x16;
  assign n123 = ~n115 & ~n121;
  assign n124 = ~n116 & n123;
  assign n125 = ~n117 & n124;
  assign n126 = ~n118 & n125;
  assign n127 = ~n119 & n126;
  assign n128 = ~n120 & n127;
  assign n129 = ~n122 & n128;
  assign n130 = n114 & ~n129;
  assign n131 = ~n114 & n129;
  assign n132 = ~n130 & ~n131;
  assign n133 = ~x8 & x18;
  assign n134 = x8 & ~x18;
  assign n135 = ~n133 & ~n134;
  assign n144 = ~n114 & n122;
  assign n142 = ~n114 & n120;
  assign n141 = ~n114 & n119;
  assign n140 = ~n114 & n118;
  assign n139 = ~n114 & n117;
  assign n138 = ~n114 & n116;
  assign n137 = ~n114 & n115;
  assign n136 = ~n114 & n121;
  assign n143 = x7 & x17;
  assign n145 = ~n136 & ~n143;
  assign n146 = ~n137 & n145;
  assign n147 = ~n138 & n146;
  assign n148 = ~n139 & n147;
  assign n149 = ~n140 & n148;
  assign n150 = ~n141 & n149;
  assign n151 = ~n142 & n150;
  assign n152 = ~n144 & n151;
  assign n153 = n135 & ~n152;
  assign n154 = ~n135 & n152;
  assign n155 = ~n153 & ~n154;
  assign n156 = ~x9 & x19;
  assign n157 = x9 & ~x19;
  assign n158 = ~n156 & ~n157;
  assign n168 = ~n135 & n144;
  assign n166 = ~n135 & n142;
  assign n165 = ~n135 & n141;
  assign n164 = ~n135 & n140;
  assign n163 = ~n135 & n139;
  assign n162 = ~n135 & n138;
  assign n161 = ~n135 & n137;
  assign n160 = ~n135 & n136;
  assign n159 = ~n135 & n143;
  assign n167 = x8 & x18;
  assign n169 = ~n159 & ~n167;
  assign n170 = ~n160 & n169;
  assign n171 = ~n161 & n170;
  assign n172 = ~n162 & n171;
  assign n173 = ~n163 & n172;
  assign n174 = ~n164 & n173;
  assign n175 = ~n165 & n174;
  assign n176 = ~n166 & n175;
  assign n177 = ~n168 & n176;
  assign n178 = n158 & ~n177;
  assign n179 = ~n158 & n177;
  assign n180 = ~n178 & ~n179;
  assign n191 = ~n158 & n168;
  assign n189 = ~n158 & n166;
  assign n188 = ~n158 & n165;
  assign n187 = ~n158 & n164;
  assign n186 = ~n158 & n163;
  assign n185 = ~n158 & n162;
  assign n184 = ~n158 & n161;
  assign n183 = ~n158 & n160;
  assign n182 = ~n158 & n159;
  assign n181 = ~n158 & n167;
  assign n190 = x9 & x19;
  assign n192 = ~n181 & ~n190;
  assign n193 = ~n182 & n192;
  assign n194 = ~n183 & n193;
  assign n195 = ~n184 & n194;
  assign n196 = ~n185 & n195;
  assign n197 = ~n186 & n196;
  assign n198 = ~n187 & n197;
  assign n199 = ~n188 & n198;
  assign n200 = ~n189 & n199;
  assign n201 = ~n191 & n200;
  assign y0 = ~n27;
  assign y1 = ~n36;
  assign y2 = ~n47;
  assign y3 = ~n60;
  assign y4 = ~n75;
  assign y5 = ~n92;
  assign y6 = ~n111;
  assign y7 = ~n132;
  assign y8 = ~n155;
  assign y9 = ~n180;
  assign y10 = ~n201;
endmodule
