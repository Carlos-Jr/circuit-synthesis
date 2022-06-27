// Benchmark "CRippleCarryAdder_16_16_16_InOutT" written by ABC on Wed Oct 16 08:39:29 2019

module CRippleCarryAdder_16_16_16_InOutT ( 
    pA15, pA14, pA13, pA12, pA11, pA10, pA9, pA8, pA7, pA6, pA5, pA4, pA3,
    pA2, pA1, pA0, pB15, pB14, pB13, pB12, pB11, pB10, pB9, pB8, pB7, pB6,
    pB5, pB4, pB3, pB2, pB1, pB0, cIn,
    r15, r14, r13, r12, r11, r10, r9, r8, r7, r6, r5, r4, r3, r2, r1, r0,
    cOut  );
  input  pA15, pA14, pA13, pA12, pA11, pA10, pA9, pA8, pA7, pA6, pA5,
    pA4, pA3, pA2, pA1, pA0, pB15, pB14, pB13, pB12, pB11, pB10, pB9, pB8,
    pB7, pB6, pB5, pB4, pB3, pB2, pB1, pB0, cIn;
  output r15, r14, r13, r12, r11, r10, r9, r8, r7, r6, r5, r4, r3, r2, r1, r0,
    cOut;
  wire new_n51_, new_n52_, new_n53_, new_n54_, new_n55_, new_n57_, new_n58_,
    new_n59_, new_n60_, new_n61_, new_n62_, new_n63_, new_n64_, new_n66_,
    new_n67_, new_n68_, new_n69_, new_n70_, new_n71_, new_n72_, new_n73_,
    new_n75_, new_n76_, new_n77_, new_n78_, new_n79_, new_n80_, new_n81_,
    new_n82_, new_n84_, new_n85_, new_n86_, new_n87_, new_n88_, new_n89_,
    new_n90_, new_n91_, new_n93_, new_n94_, new_n95_, new_n96_, new_n97_,
    new_n98_, new_n99_, new_n100_, new_n102_, new_n103_, new_n104_,
    new_n105_, new_n106_, new_n107_, new_n108_, new_n109_, new_n111_,
    new_n112_, new_n113_, new_n114_, new_n115_, new_n116_, new_n117_,
    new_n118_, new_n120_, new_n121_, new_n122_, new_n123_, new_n124_,
    new_n125_, new_n126_, new_n127_, new_n129_, new_n130_, new_n131_,
    new_n132_, new_n133_, new_n134_, new_n135_, new_n136_, new_n138_,
    new_n139_, new_n140_, new_n141_, new_n142_, new_n143_, new_n144_,
    new_n145_, new_n147_, new_n148_, new_n149_, new_n150_, new_n151_,
    new_n152_, new_n153_, new_n154_, new_n156_, new_n157_, new_n158_,
    new_n159_, new_n160_, new_n161_, new_n162_, new_n163_, new_n165_,
    new_n166_, new_n167_, new_n168_, new_n169_, new_n170_, new_n171_,
    new_n172_, new_n174_, new_n175_, new_n176_, new_n177_, new_n178_,
    new_n179_, new_n180_, new_n181_, new_n183_, new_n184_, new_n185_,
    new_n186_, new_n187_, new_n188_, new_n189_, new_n190_, new_n192_,
    new_n193_;
  assign new_n51_ = ~pA15 & pB15;
  assign new_n52_ = pA15 & ~pB15;
  assign new_n53_ = ~new_n51_ & ~new_n52_;
  assign new_n54_ = cIn & new_n53_;
  assign new_n55_ = ~cIn & ~new_n53_;
  assign r15 = new_n54_ | new_n55_;
  assign new_n57_ = ~pA14 & pB14;
  assign new_n58_ = pA14 & ~pB14;
  assign new_n59_ = ~new_n57_ & ~new_n58_;
  assign new_n60_ = cIn & ~new_n53_;
  assign new_n61_ = pA15 & pB15;
  assign new_n62_ = ~new_n60_ & ~new_n61_;
  assign new_n63_ = new_n59_ & ~new_n62_;
  assign new_n64_ = ~new_n59_ & new_n62_;
  assign r14 = new_n63_ | new_n64_;
  assign new_n66_ = ~pA13 & pB13;
  assign new_n67_ = pA13 & ~pB13;
  assign new_n68_ = ~new_n66_ & ~new_n67_;
  assign new_n69_ = ~new_n59_ & ~new_n62_;
  assign new_n70_ = pA14 & pB14;
  assign new_n71_ = ~new_n69_ & ~new_n70_;
  assign new_n72_ = new_n68_ & ~new_n71_;
  assign new_n73_ = ~new_n68_ & new_n71_;
  assign r13 = new_n72_ | new_n73_;
  assign new_n75_ = ~pA12 & pB12;
  assign new_n76_ = pA12 & ~pB12;
  assign new_n77_ = ~new_n75_ & ~new_n76_;
  assign new_n78_ = ~new_n68_ & ~new_n71_;
  assign new_n79_ = pA13 & pB13;
  assign new_n80_ = ~new_n78_ & ~new_n79_;
  assign new_n81_ = new_n77_ & ~new_n80_;
  assign new_n82_ = ~new_n77_ & new_n80_;
  assign r12 = new_n81_ | new_n82_;
  assign new_n84_ = ~pA11 & pB11;
  assign new_n85_ = pA11 & ~pB11;
  assign new_n86_ = ~new_n84_ & ~new_n85_;
  assign new_n87_ = ~new_n77_ & ~new_n80_;
  assign new_n88_ = pA12 & pB12;
  assign new_n89_ = ~new_n87_ & ~new_n88_;
  assign new_n90_ = new_n86_ & ~new_n89_;
  assign new_n91_ = ~new_n86_ & new_n89_;
  assign r11 = new_n90_ | new_n91_;
  assign new_n93_ = ~pA10 & pB10;
  assign new_n94_ = pA10 & ~pB10;
  assign new_n95_ = ~new_n93_ & ~new_n94_;
  assign new_n96_ = ~new_n86_ & ~new_n89_;
  assign new_n97_ = pA11 & pB11;
  assign new_n98_ = ~new_n96_ & ~new_n97_;
  assign new_n99_ = new_n95_ & ~new_n98_;
  assign new_n100_ = ~new_n95_ & new_n98_;
  assign r10 = new_n99_ | new_n100_;
  assign new_n102_ = ~pA9 & pB9;
  assign new_n103_ = pA9 & ~pB9;
  assign new_n104_ = ~new_n102_ & ~new_n103_;
  assign new_n105_ = ~new_n95_ & ~new_n98_;
  assign new_n106_ = pA10 & pB10;
  assign new_n107_ = ~new_n105_ & ~new_n106_;
  assign new_n108_ = new_n104_ & ~new_n107_;
  assign new_n109_ = ~new_n104_ & new_n107_;
  assign r9 = new_n108_ | new_n109_;
  assign new_n111_ = ~pA8 & pB8;
  assign new_n112_ = pA8 & ~pB8;
  assign new_n113_ = ~new_n111_ & ~new_n112_;
  assign new_n114_ = ~new_n104_ & ~new_n107_;
  assign new_n115_ = pA9 & pB9;
  assign new_n116_ = ~new_n114_ & ~new_n115_;
  assign new_n117_ = new_n113_ & ~new_n116_;
  assign new_n118_ = ~new_n113_ & new_n116_;
  assign r8 = new_n117_ | new_n118_;
  assign new_n120_ = ~pA7 & pB7;
  assign new_n121_ = pA7 & ~pB7;
  assign new_n122_ = ~new_n120_ & ~new_n121_;
  assign new_n123_ = ~new_n113_ & ~new_n116_;
  assign new_n124_ = pA8 & pB8;
  assign new_n125_ = ~new_n123_ & ~new_n124_;
  assign new_n126_ = new_n122_ & ~new_n125_;
  assign new_n127_ = ~new_n122_ & new_n125_;
  assign r7 = new_n126_ | new_n127_;
  assign new_n129_ = ~pA6 & pB6;
  assign new_n130_ = pA6 & ~pB6;
  assign new_n131_ = ~new_n129_ & ~new_n130_;
  assign new_n132_ = ~new_n122_ & ~new_n125_;
  assign new_n133_ = pA7 & pB7;
  assign new_n134_ = ~new_n132_ & ~new_n133_;
  assign new_n135_ = new_n131_ & ~new_n134_;
  assign new_n136_ = ~new_n131_ & new_n134_;
  assign r6 = new_n135_ | new_n136_;
  assign new_n138_ = ~pA5 & pB5;
  assign new_n139_ = pA5 & ~pB5;
  assign new_n140_ = ~new_n138_ & ~new_n139_;
  assign new_n141_ = ~new_n131_ & ~new_n134_;
  assign new_n142_ = pA6 & pB6;
  assign new_n143_ = ~new_n141_ & ~new_n142_;
  assign new_n144_ = new_n140_ & ~new_n143_;
  assign new_n145_ = ~new_n140_ & new_n143_;
  assign r5 = new_n144_ | new_n145_;
  assign new_n147_ = ~pA4 & pB4;
  assign new_n148_ = pA4 & ~pB4;
  assign new_n149_ = ~new_n147_ & ~new_n148_;
  assign new_n150_ = ~new_n140_ & ~new_n143_;
  assign new_n151_ = pA5 & pB5;
  assign new_n152_ = ~new_n150_ & ~new_n151_;
  assign new_n153_ = new_n149_ & ~new_n152_;
  assign new_n154_ = ~new_n149_ & new_n152_;
  assign r4 = new_n153_ | new_n154_;
  assign new_n156_ = ~pA3 & pB3;
  assign new_n157_ = pA3 & ~pB3;
  assign new_n158_ = ~new_n156_ & ~new_n157_;
  assign new_n159_ = ~new_n149_ & ~new_n152_;
  assign new_n160_ = pA4 & pB4;
  assign new_n161_ = ~new_n159_ & ~new_n160_;
  assign new_n162_ = new_n158_ & ~new_n161_;
  assign new_n163_ = ~new_n158_ & new_n161_;
  assign r3 = new_n162_ | new_n163_;
  assign new_n165_ = ~pA2 & pB2;
  assign new_n166_ = pA2 & ~pB2;
  assign new_n167_ = ~new_n165_ & ~new_n166_;
  assign new_n168_ = ~new_n158_ & ~new_n161_;
  assign new_n169_ = pA3 & pB3;
  assign new_n170_ = ~new_n168_ & ~new_n169_;
  assign new_n171_ = new_n167_ & ~new_n170_;
  assign new_n172_ = ~new_n167_ & new_n170_;
  assign r2 = new_n171_ | new_n172_;
  assign new_n174_ = ~pA1 & pB1;
  assign new_n175_ = pA1 & ~pB1;
  assign new_n176_ = ~new_n174_ & ~new_n175_;
  assign new_n177_ = ~new_n167_ & ~new_n170_;
  assign new_n178_ = pA2 & pB2;
  assign new_n179_ = ~new_n177_ & ~new_n178_;
  assign new_n180_ = new_n176_ & ~new_n179_;
  assign new_n181_ = ~new_n176_ & new_n179_;
  assign r1 = new_n180_ | new_n181_;
  assign new_n183_ = ~pA0 & pB0;
  assign new_n184_ = pA0 & ~pB0;
  assign new_n185_ = ~new_n183_ & ~new_n184_;
  assign new_n186_ = ~new_n176_ & ~new_n179_;
  assign new_n187_ = pA1 & pB1;
  assign new_n188_ = ~new_n186_ & ~new_n187_;
  assign new_n189_ = new_n185_ & ~new_n188_;
  assign new_n190_ = ~new_n185_ & new_n188_;
  assign r0 = new_n189_ | new_n190_;
  assign new_n192_ = ~new_n185_ & ~new_n188_;
  assign new_n193_ = pA0 & pB0;
  assign cOut = new_n192_ | new_n193_;
endmodule


