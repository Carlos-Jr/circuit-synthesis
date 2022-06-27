// *********************************
// * Circuit generated by BenCGen
// * for exclusive use of
// * Jeferson Figueiredo Chaves  
// *********************************
module CCarryLookaheadBlock_10_10_10_InOutT(pA9,pA8,pA7,pA6,pA5,pA4,pA3,pA2,pA1,pA0, pB9,pB8,pB7,pB6,pB5,pB4,pB3,pB2,pB1,pB0, r9,r8,r7,r6,r5,r4,r3,r2,r1,r0, cIn, cOut);

// Entradas e saidas
input pA9,pA8,pA7,pA6,pA5,pA4,pA3,pA2,pA1,pA0, pB9,pB8,pB7,pB6,pB5,pB4,pB3,pB2,pB1,pB0, cIn;
output r9,r8,r7,r6,r5,r4,r3,r2,r1,r0, cOut;
// Declaracao dos fios
wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35, w36, w37, w38, w39, w40, w41, w42, w43, w44, w45, w46, w47, w48, w49, w50, w51, w52, w53, w54, w55, w56, w57, w58, w59, w60, w61, w62, w63, w64, w65, w66, w67, w68, w69, w70, w71, w72, w73, w74, w75, w76, w77, w78, w79, w80, w81, w82, w83, w84, w85, w86, r4294967295;

// Assinalamentos
assign w1 = pA9;
assign w2 = pA8;
assign w3 = pA7;
assign w4 = pA6;
assign w5 = pA5;
assign w6 = pA4;
assign w7 = pA3;
assign w8 = pA2;
assign w9 = pA1;
assign w10 = pA0;
assign w11 = pB9;
assign w12 = pB8;
assign w13 = pB7;
assign w14 = pB6;
assign w15 = pB5;
assign w16 = pB4;
assign w17 = pB3;
assign w18 = pB2;
assign w19 = pB1;
assign w20 = pB0;
assign r9 = w21;
assign r8 = w22;
assign r7 = w23;
assign r6 = w24;
assign r5 = w25;
assign r4 = w26;
assign r3 = w27;
assign r2 = w28;
assign r1 = w29;
assign r0 = w30;
assign r4294967295 = w31;
assign w32 = cIn;
assign cOut = w31;

assign w34 = w1 ^ w11;
assign w44 = w1 & w11;
assign w35 = w2 ^ w12;
assign w45 = w2 & w12;
assign w36 = w3 ^ w13;
assign w46 = w3 & w13;
assign w37 = w4 ^ w14;
assign w47 = w4 & w14;
assign w38 = w5 ^ w15;
assign w48 = w5 & w15;
assign w39 = w6 ^ w16;
assign w49 = w6 & w16;
assign w40 = w7 ^ w17;
assign w50 = w7 & w17;
assign w41 = w8 ^ w18;
assign w51 = w8 & w18;
assign w42 = w9 ^ w19;
assign w52 = w9 & w19;
assign w43 = w10 ^ w20;
assign w53 = w10 & w20;
assign w64 = w32 & w34;
assign w65 = w32 & w34 & w35;
assign w66 = w44 & w35;
assign w67 = w32 & w34 & w35 & w36;
assign w68 = w44 & w35 & w36;
assign w69 = w45 & w36;
assign w70 = w32 & w34 & w35 & w36 & w37;
assign w71 = w44 & w35 & w36 & w37;
assign w72 = w45 & w36 & w37;
assign w73 = w46 & w37;
assign w54 = w44 | w64;
assign w55 = w45 | w65 | w66;
assign w56 = w46 | w67 | w68 | w69;
assign w57 = w47 | w70 | w71 | w72 | w73;
assign w74 = w57 & w38;
assign w75 = w57 & w38 & w39;
assign w76 = w48 & w39;
assign w77 = w57 & w38 & w39 & w40;
assign w78 = w48 & w39 & w40;
assign w79 = w49 & w40;
assign w80 = w57 & w38 & w39 & w40 & w41;
assign w81 = w48 & w39 & w40 & w41;
assign w82 = w49 & w40 & w41;
assign w83 = w50 & w41;
assign w58 = w48 | w74;
assign w59 = w49 | w75 | w76;
assign w60 = w50 | w77 | w78 | w79;
assign w61 = w51 | w80 | w81 | w82 | w83;
assign w84 = w61 & w42;
assign w85 = w61 & w42 & w43;
assign w86 = w52 & w43;
assign w62 = w52 | w84;
assign w63 = w53 | w85 | w86;
assign w21 = w34 ^ w32;
assign w22 = w35 ^ w54;
assign w23 = w36 ^ w55;
assign w24 = w37 ^ w56;
assign w25 = w38 ^ w57;
assign w26 = w39 ^ w58;
assign w27 = w40 ^ w59;
assign w28 = w41 ^ w60;
assign w29 = w42 ^ w61;
assign w30 = w43 ^ w62;
assign w31 = w63;

endmodule

