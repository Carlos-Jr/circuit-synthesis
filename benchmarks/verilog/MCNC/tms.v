// Benchmark "source.pla" written by ABC on Sun Apr 22 21:43:15 2018

module \source.pla  ( 
    pi0, pi1, pi2, pi3, pi4, pi5, pi6, pi7,
    po00, po01, po02, po03, po04, po05, po06, po07, po08, po09, po10, po11,
    po12, po13, po14, po15  );
  input  pi0, pi1, pi2, pi3, pi4, pi5, pi6, pi7;
  output po00, po01, po02, po03, po04, po05, po06, po07, po08, po09, po10,
    po11, po12, po13, po14, po15;
  wire n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
    n39, n40, n41, n43, n44, n46, n47, n48, n49, n50, n51, n52, n53, n54,
    n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n69,
    n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
    n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
    n98, n99, n100, n101, n102, n103, n104, n106, n107, n108, n109, n110,
    n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
    n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n134, n135,
    n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
    n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n159, n160,
    n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
    n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
    n185, n186, n187, n188, n189, n190, n192, n193, n194, n195, n196, n197,
    n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n209, n210,
    n211, n212, n213, n214, n215, n216, n217, n218, n219, n221, n222, n223,
    n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n235, n236,
    n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
    n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
    n262, n263, n264, n265, n267, n268, n269, n270, n271, n272, n273, n274,
    n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
    n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
    n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n311, n312,
    n313, n314, n315, n316, n317, n318, n319, n321, n322, n323, n324, n325,
    n326;
  assign n25 = pi5 & pi6;
  assign n26 = pi4 & n25;
  assign n27 = ~pi5 & ~pi6;
  assign n28 = ~pi4 & n27;
  assign n29 = ~n26 & ~n28;
  assign n30 = pi2 & ~n29;
  assign n31 = ~pi2 & ~pi4;
  assign n32 = pi5 & ~pi6;
  assign n33 = n31 & n32;
  assign n34 = ~n30 & ~n33;
  assign n35 = ~pi7 & ~n34;
  assign n36 = pi6 & pi7;
  assign n37 = ~pi5 & n36;
  assign n38 = n31 & n37;
  assign n39 = ~n35 & ~n38;
  assign n40 = ~pi3 & ~n39;
  assign n41 = ~pi1 & n40;
  assign po00 = ~pi0 & n41;
  assign n43 = ~pi0 & pi1;
  assign n44 = pi2 & n43;
  assign po01 = ~pi3 & n44;
  assign n46 = ~pi2 & pi3;
  assign n47 = pi2 & ~pi3;
  assign n48 = ~n46 & ~n47;
  assign n49 = pi1 & ~n48;
  assign n50 = pi4 & pi6;
  assign n51 = ~pi4 & ~pi6;
  assign n52 = ~n50 & ~n51;
  assign n53 = pi5 & ~pi7;
  assign n54 = ~pi2 & n53;
  assign n55 = ~pi2 & ~n54;
  assign n56 = ~n52 & ~n55;
  assign n57 = ~pi4 & pi6;
  assign n58 = pi4 & ~pi6;
  assign n59 = ~n57 & ~n58;
  assign n60 = pi2 & ~n59;
  assign n61 = ~pi5 & pi6;
  assign n62 = n31 & n61;
  assign n63 = ~n60 & ~n62;
  assign n64 = ~n56 & n63;
  assign n65 = ~pi3 & ~n64;
  assign n66 = ~pi1 & n65;
  assign n67 = ~n49 & ~n66;
  assign po02 = ~pi0 & ~n67;
  assign n69 = pi2 & pi3;
  assign n70 = ~pi2 & ~pi3;
  assign n71 = ~n69 & ~n70;
  assign n72 = pi1 & ~n71;
  assign n73 = ~pi4 & n25;
  assign n74 = pi4 & n27;
  assign n75 = ~n73 & ~n74;
  assign n76 = pi5 & ~n52;
  assign n77 = pi2 & n76;
  assign n78 = n75 & ~n77;
  assign n79 = ~pi6 & pi7;
  assign n80 = pi5 & n79;
  assign n81 = pi6 & ~pi7;
  assign n82 = ~pi5 & n81;
  assign n83 = ~n80 & ~n82;
  assign n84 = pi4 & ~n83;
  assign n85 = ~n79 & ~n81;
  assign n86 = ~pi5 & ~n85;
  assign n87 = ~pi4 & n86;
  assign n88 = ~n84 & ~n87;
  assign n89 = pi2 & ~n88;
  assign n90 = ~pi7 & ~n52;
  assign n91 = pi5 & n90;
  assign n92 = pi6 & ~n61;
  assign n93 = pi7 & ~n92;
  assign n94 = ~pi4 & n93;
  assign n95 = ~n91 & ~n94;
  assign n96 = ~pi2 & ~n95;
  assign n97 = ~n89 & ~n96;
  assign n98 = n78 & n97;
  assign n99 = ~pi3 & ~n98;
  assign n100 = pi4 & ~pi5;
  assign n101 = n69 & n100;
  assign n102 = ~n99 & ~n101;
  assign n103 = ~pi1 & ~n102;
  assign n104 = ~n72 & ~n103;
  assign po03 = ~pi0 & ~n104;
  assign n106 = ~pi6 & ~pi7;
  assign n107 = pi5 & n106;
  assign n108 = ~n37 & ~n107;
  assign n109 = ~pi4 & ~n108;
  assign n110 = ~pi3 & n109;
  assign n111 = ~pi1 & n110;
  assign n112 = ~pi1 & ~n111;
  assign n113 = pi4 & n36;
  assign n114 = ~pi4 & n106;
  assign n115 = ~n113 & ~n114;
  assign n116 = ~pi5 & ~n115;
  assign n117 = pi6 & ~n36;
  assign n118 = pi5 & ~n117;
  assign n119 = pi4 & n118;
  assign n120 = ~n116 & ~n119;
  assign n121 = pi2 & ~n120;
  assign n122 = ~n79 & ~n82;
  assign n123 = ~pi4 & ~n122;
  assign n124 = pi4 & pi5;
  assign n125 = n81 & n124;
  assign n126 = ~n123 & ~n125;
  assign n127 = n75 & n126;
  assign n128 = ~pi2 & ~n127;
  assign n129 = ~n121 & ~n128;
  assign n130 = ~pi3 & ~n129;
  assign n131 = ~pi1 & n130;
  assign n132 = n112 & ~n131;
  assign po04 = ~pi0 & ~n132;
  assign n134 = ~pi4 & n36;
  assign n135 = ~n58 & ~n134;
  assign n136 = ~pi5 & ~n135;
  assign n137 = ~pi3 & n136;
  assign n138 = ~pi1 & n137;
  assign n139 = ~pi1 & ~n138;
  assign n140 = ~n25 & ~n27;
  assign n141 = ~pi4 & ~n140;
  assign n142 = ~pi5 & ~n61;
  assign n143 = pi4 & ~n142;
  assign n144 = ~n141 & ~n143;
  assign n145 = ~pi4 & ~pi5;
  assign n146 = n81 & n145;
  assign n147 = n144 & ~n146;
  assign n148 = ~pi3 & ~n147;
  assign n149 = pi3 & n100;
  assign n150 = ~n148 & ~n149;
  assign n151 = pi2 & ~n150;
  assign n152 = ~pi3 & ~pi4;
  assign n153 = ~pi2 & n152;
  assign n154 = n107 & n153;
  assign n155 = ~n151 & ~n154;
  assign n156 = ~pi1 & ~n155;
  assign n157 = n139 & ~n156;
  assign po05 = ~pi0 & ~n157;
  assign n159 = pi1 & ~pi2;
  assign n160 = ~pi1 & pi2;
  assign n161 = n100 & n160;
  assign n162 = ~n159 & ~n161;
  assign n163 = pi3 & ~n162;
  assign n164 = pi4 & ~n140;
  assign n165 = ~pi4 & ~n142;
  assign n166 = ~n164 & ~n165;
  assign n167 = ~pi7 & ~n166;
  assign n168 = n36 & n145;
  assign n169 = ~n167 & ~n168;
  assign n170 = ~pi1 & ~n169;
  assign n171 = ~pi1 & ~n170;
  assign n172 = ~pi2 & n25;
  assign n173 = pi6 & ~n172;
  assign n174 = ~pi4 & ~n173;
  assign n175 = pi2 & pi6;
  assign n176 = ~pi2 & n27;
  assign n177 = ~n175 & ~n176;
  assign n178 = pi4 & ~n177;
  assign n179 = ~n174 & ~n178;
  assign n180 = pi7 & ~n179;
  assign n181 = ~n32 & ~n61;
  assign n182 = pi4 & ~n181;
  assign n183 = ~n28 & ~n182;
  assign n184 = ~pi7 & ~n183;
  assign n185 = pi2 & n184;
  assign n186 = ~n180 & ~n185;
  assign n187 = ~pi1 & ~n186;
  assign n188 = n171 & ~n187;
  assign n189 = ~pi3 & ~n188;
  assign n190 = ~n163 & ~n189;
  assign po06 = ~pi0 & ~n190;
  assign n192 = ~n57 & ~n74;
  assign n193 = ~n91 & n192;
  assign n194 = ~pi3 & ~n193;
  assign n195 = ~pi1 & n194;
  assign n196 = ~pi1 & ~n195;
  assign n197 = pi7 & ~n52;
  assign n198 = pi5 & n197;
  assign n199 = n183 & ~n198;
  assign n200 = ~pi3 & ~n199;
  assign n201 = ~n149 & ~n200;
  assign n202 = pi2 & ~n201;
  assign n203 = ~pi4 & n79;
  assign n204 = n70 & n203;
  assign n205 = ~n202 & ~n204;
  assign n206 = ~pi1 & ~n205;
  assign n207 = n196 & ~n206;
  assign po07 = ~pi0 & ~n207;
  assign n209 = pi4 & n32;
  assign n210 = n52 & ~n209;
  assign n211 = pi7 & ~n210;
  assign n212 = n106 & n145;
  assign n213 = ~n211 & ~n212;
  assign n214 = ~pi3 & ~n213;
  assign n215 = ~n149 & ~n214;
  assign n216 = pi2 & ~n215;
  assign n217 = ~n204 & ~n216;
  assign n218 = ~pi1 & ~n217;
  assign n219 = n196 & ~n218;
  assign po08 = ~pi0 & ~n219;
  assign n221 = ~pi1 & ~pi3;
  assign n222 = ~pi1 & ~n221;
  assign n223 = pi2 & ~n222;
  assign n224 = ~pi7 & ~n53;
  assign n225 = ~pi6 & ~n224;
  assign n226 = ~pi4 & n225;
  assign n227 = ~n125 & ~n226;
  assign n228 = n192 & n227;
  assign n229 = ~pi1 & ~n228;
  assign n230 = ~pi1 & ~n229;
  assign n231 = ~pi3 & ~n230;
  assign n232 = ~pi2 & n231;
  assign n233 = ~n223 & ~n232;
  assign po09 = ~pi0 & ~n233;
  assign n235 = pi5 & n81;
  assign n236 = n152 & n235;
  assign n237 = ~n149 & ~n236;
  assign n238 = pi2 & ~n237;
  assign n239 = pi4 & n79;
  assign n240 = ~pi4 & n81;
  assign n241 = ~n239 & ~n240;
  assign n242 = ~pi5 & ~n241;
  assign n243 = ~pi3 & n242;
  assign n244 = ~pi2 & n243;
  assign n245 = ~n238 & ~n244;
  assign n246 = ~pi1 & ~n245;
  assign n247 = pi1 & n46;
  assign n248 = ~n246 & ~n247;
  assign po10 = ~pi0 & ~n248;
  assign n250 = ~pi2 & n57;
  assign n251 = pi2 & n58;
  assign n252 = ~n250 & ~n251;
  assign n253 = pi5 & ~n252;
  assign n254 = pi2 & n100;
  assign n255 = ~n253 & ~n254;
  assign n256 = pi2 & pi5;
  assign n257 = ~pi2 & ~pi6;
  assign n258 = ~n256 & ~n257;
  assign n259 = pi7 & ~n258;
  assign n260 = ~pi4 & n259;
  assign n261 = n255 & ~n260;
  assign n262 = ~pi3 & ~n261;
  assign n263 = ~pi1 & n262;
  assign n264 = pi1 & n69;
  assign n265 = ~n263 & ~n264;
  assign po11 = ~pi0 & ~n265;
  assign n267 = ~pi5 & ~n59;
  assign n268 = ~n53 & ~n79;
  assign n269 = ~pi4 & ~n268;
  assign n270 = ~n267 & ~n269;
  assign n271 = ~pi3 & ~n270;
  assign n272 = ~pi1 & n271;
  assign n273 = ~pi1 & ~n272;
  assign n274 = ~pi2 & ~n273;
  assign n275 = ~pi4 & ~n181;
  assign n276 = ~n26 & ~n275;
  assign n277 = ~n73 & ~n182;
  assign n278 = ~pi7 & ~n277;
  assign n279 = n79 & n145;
  assign n280 = ~n278 & ~n279;
  assign n281 = n276 & n280;
  assign n282 = ~pi3 & ~n281;
  assign n283 = ~n149 & ~n282;
  assign n284 = pi2 & ~n283;
  assign n285 = ~pi1 & n284;
  assign n286 = ~n274 & ~n285;
  assign po12 = ~pi0 & ~n286;
  assign n288 = pi5 & pi7;
  assign n289 = ~pi5 & ~pi7;
  assign n290 = ~n288 & ~n289;
  assign n291 = pi4 & ~n290;
  assign n292 = ~pi4 & pi7;
  assign n293 = ~n291 & ~n292;
  assign n294 = pi2 & ~n293;
  assign n295 = n31 & n53;
  assign n296 = ~n294 & ~n295;
  assign n297 = ~pi7 & ~n140;
  assign n298 = pi4 & n297;
  assign n299 = pi6 & ~n25;
  assign n300 = pi7 & ~n299;
  assign n301 = ~pi4 & n300;
  assign n302 = ~n298 & ~n301;
  assign n303 = ~pi2 & ~n302;
  assign n304 = pi2 & pi4;
  assign n305 = n235 & n304;
  assign n306 = ~n303 & ~n305;
  assign n307 = n296 & n306;
  assign n308 = ~pi3 & ~n307;
  assign n309 = ~pi1 & n308;
  assign po13 = ~pi0 & n309;
  assign n311 = pi4 & ~n108;
  assign n312 = pi5 & ~n32;
  assign n313 = ~pi7 & ~n312;
  assign n314 = ~pi4 & n313;
  assign n315 = ~n311 & ~n314;
  assign n316 = pi2 & ~n315;
  assign n317 = ~pi1 & n316;
  assign n318 = ~pi1 & ~n317;
  assign n319 = ~pi3 & ~n318;
  assign po14 = ~pi0 & n319;
  assign n321 = ~pi0 & ~pi1;
  assign n322 = ~pi2 & n321;
  assign n323 = ~pi3 & n322;
  assign n324 = ~pi4 & n323;
  assign n325 = ~pi5 & n324;
  assign n326 = pi6 & n325;
  assign po15 = ~pi7 & n326;
endmodule


