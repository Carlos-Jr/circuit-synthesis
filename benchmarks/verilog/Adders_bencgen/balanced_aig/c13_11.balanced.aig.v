module top(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, y0, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11);
  input x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22;
  output y0, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11;
  wire n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232;
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
  assign n86 = ~n65 & n70;
  assign n84 = ~n65 & n68;
  assign n83 = ~n65 & n67;
  assign n82 = ~n65 & n66;
  assign n81 = ~n65 & n69;
  assign n85 = x4 & x15;
  assign n87 = ~n81 & ~n85;
  assign n88 = ~n82 & n87;
  assign n89 = ~n83 & n88;
  assign n90 = ~n84 & n89;
  assign n91 = ~n86 & n90;
  assign n92 = n80 & ~n91;
  assign n93 = ~n80 & n91;
  assign n94 = ~n92 & ~n93;
  assign n95 = ~x6 & x17;
  assign n96 = x6 & ~x17;
  assign n97 = ~n95 & ~n96;
  assign n104 = ~n80 & n86;
  assign n102 = ~n80 & n84;
  assign n101 = ~n80 & n83;
  assign n100 = ~n80 & n82;
  assign n99 = ~n80 & n81;
  assign n98 = ~n80 & n85;
  assign n103 = x5 & x16;
  assign n105 = ~n98 & ~n103;
  assign n106 = ~n99 & n105;
  assign n107 = ~n100 & n106;
  assign n108 = ~n101 & n107;
  assign n109 = ~n102 & n108;
  assign n110 = ~n104 & n109;
  assign n111 = n97 & ~n110;
  assign n112 = ~n97 & n110;
  assign n113 = ~n111 & ~n112;
  assign n114 = ~x7 & x18;
  assign n115 = x7 & ~x18;
  assign n116 = ~n114 & ~n115;
  assign n124 = ~n97 & n104;
  assign n122 = ~n97 & n102;
  assign n121 = ~n97 & n101;
  assign n120 = ~n97 & n100;
  assign n119 = ~n97 & n99;
  assign n118 = ~n97 & n98;
  assign n117 = ~n97 & n103;
  assign n123 = x6 & x17;
  assign n125 = ~n117 & ~n123;
  assign n126 = ~n118 & n125;
  assign n127 = ~n119 & n126;
  assign n128 = ~n120 & n127;
  assign n129 = ~n121 & n128;
  assign n130 = ~n122 & n129;
  assign n131 = ~n124 & n130;
  assign n132 = n116 & ~n131;
  assign n133 = ~n116 & n131;
  assign n134 = ~n132 & ~n133;
  assign n135 = ~x8 & x19;
  assign n136 = x8 & ~x19;
  assign n137 = ~n135 & ~n136;
  assign n146 = ~n116 & n124;
  assign n144 = ~n116 & n122;
  assign n143 = ~n116 & n121;
  assign n142 = ~n116 & n120;
  assign n141 = ~n116 & n119;
  assign n140 = ~n116 & n118;
  assign n139 = ~n116 & n117;
  assign n138 = ~n116 & n123;
  assign n145 = x7 & x18;
  assign n147 = ~n138 & ~n145;
  assign n148 = ~n139 & n147;
  assign n149 = ~n140 & n148;
  assign n150 = ~n141 & n149;
  assign n151 = ~n142 & n150;
  assign n152 = ~n143 & n151;
  assign n153 = ~n144 & n152;
  assign n154 = ~n146 & n153;
  assign n155 = n137 & ~n154;
  assign n156 = ~n137 & n154;
  assign n157 = ~n155 & ~n156;
  assign n158 = ~x9 & x20;
  assign n159 = x9 & ~x20;
  assign n160 = ~n158 & ~n159;
  assign n170 = ~n137 & n146;
  assign n168 = ~n137 & n144;
  assign n167 = ~n137 & n143;
  assign n166 = ~n137 & n142;
  assign n165 = ~n137 & n141;
  assign n164 = ~n137 & n140;
  assign n163 = ~n137 & n139;
  assign n162 = ~n137 & n138;
  assign n161 = ~n137 & n145;
  assign n169 = x8 & x19;
  assign n171 = ~n161 & ~n169;
  assign n172 = ~n162 & n171;
  assign n173 = ~n163 & n172;
  assign n174 = ~n164 & n173;
  assign n175 = ~n165 & n174;
  assign n176 = ~n166 & n175;
  assign n177 = ~n167 & n176;
  assign n178 = ~n168 & n177;
  assign n179 = ~n170 & n178;
  assign n180 = n160 & ~n179;
  assign n181 = ~n160 & n179;
  assign n182 = ~n180 & ~n181;
  assign n183 = ~x10 & x21;
  assign n184 = x10 & ~x21;
  assign n185 = ~n183 & ~n184;
  assign n196 = ~n160 & n170;
  assign n194 = ~n160 & n168;
  assign n193 = ~n160 & n167;
  assign n192 = ~n160 & n166;
  assign n191 = ~n160 & n165;
  assign n190 = ~n160 & n164;
  assign n189 = ~n160 & n163;
  assign n188 = ~n160 & n162;
  assign n187 = ~n160 & n161;
  assign n186 = ~n160 & n169;
  assign n195 = x9 & x20;
  assign n197 = ~n186 & ~n195;
  assign n198 = ~n187 & n197;
  assign n199 = ~n188 & n198;
  assign n200 = ~n189 & n199;
  assign n201 = ~n190 & n200;
  assign n202 = ~n191 & n201;
  assign n203 = ~n192 & n202;
  assign n204 = ~n193 & n203;
  assign n205 = ~n194 & n204;
  assign n206 = ~n196 & n205;
  assign n207 = n185 & ~n206;
  assign n208 = ~n185 & n206;
  assign n209 = ~n207 & ~n208;
  assign n221 = ~n185 & n196;
  assign n219 = ~n185 & n194;
  assign n218 = ~n185 & n193;
  assign n217 = ~n185 & n192;
  assign n216 = ~n185 & n191;
  assign n215 = ~n185 & n190;
  assign n214 = ~n185 & n189;
  assign n213 = ~n185 & n188;
  assign n212 = ~n185 & n187;
  assign n211 = ~n185 & n186;
  assign n210 = ~n185 & n195;
  assign n220 = x10 & x21;
  assign n222 = ~n210 & ~n220;
  assign n223 = ~n211 & n222;
  assign n224 = ~n212 & n223;
  assign n225 = ~n213 & n224;
  assign n226 = ~n214 & n225;
  assign n227 = ~n215 & n226;
  assign n228 = ~n216 & n227;
  assign n229 = ~n217 & n228;
  assign n230 = ~n218 & n229;
  assign n231 = ~n219 & n230;
  assign n232 = ~n221 & n231;
  assign y0 = ~n29;
  assign y1 = ~n38;
  assign y2 = ~n49;
  assign y3 = ~n62;
  assign y4 = ~n77;
  assign y5 = ~n94;
  assign y6 = ~n113;
  assign y7 = ~n134;
  assign y8 = ~n157;
  assign y9 = ~n182;
  assign y10 = ~n209;
  assign y11 = ~n232;
endmodule
