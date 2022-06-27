// Benchmark "CRippleCarryAdder_14_14_14_InOutT" written by ABC on Wed Oct 16 08:39:29 2019

module CRippleCarryAdder_14_14_14_InOutT ( 
    pA13, pA12, pA11, pA10, pA9, pA8, pA7, pA6, pA5, pA4, pA3, pA2, pA1,
    pA0, pB13, pB12, pB11, pB10, pB9, pB8, pB7, pB6, pB5, pB4, pB3, pB2,
    pB1, pB0, cIn,
    r13, r12, r11, r10, r9, r8, r7, r6, r5, r4, r3, r2, r1, r0, cOut  );
  input  pA13, pA12, pA11, pA10, pA9, pA8, pA7, pA6, pA5, pA4, pA3, pA2,
    pA1, pA0, pB13, pB12, pB11, pB10, pB9, pB8, pB7, pB6, pB5, pB4, pB3,
    pB2, pB1, pB0, cIn;
  output r13, r12, r11, r10, r9, r8, r7, r6, r5, r4, r3, r2, r1, r0, cOut;
  wire new_n45_, new_n46_, new_n47_, new_n48_, new_n49_, new_n51_, new_n52_,
    new_n53_, new_n54_, new_n55_, new_n56_, new_n57_, new_n58_, new_n60_,
    new_n61_, new_n62_, new_n63_, new_n64_, new_n65_, new_n66_, new_n67_,
    new_n69_, new_n70_, new_n71_, new_n72_, new_n73_, new_n74_, new_n75_,
    new_n76_, new_n78_, new_n79_, new_n80_, new_n81_, new_n82_, new_n83_,
    new_n84_, new_n85_, new_n87_, new_n88_, new_n89_, new_n90_, new_n91_,
    new_n92_, new_n93_, new_n94_, new_n96_, new_n97_, new_n98_, new_n99_,
    new_n100_, new_n101_, new_n102_, new_n103_, new_n105_, new_n106_,
    new_n107_, new_n108_, new_n109_, new_n110_, new_n111_, new_n112_,
    new_n114_, new_n115_, new_n116_, new_n117_, new_n118_, new_n119_,
    new_n120_, new_n121_, new_n123_, new_n124_, new_n125_, new_n126_,
    new_n127_, new_n128_, new_n129_, new_n130_, new_n132_, new_n133_,
    new_n134_, new_n135_, new_n136_, new_n137_, new_n138_, new_n139_,
    new_n141_, new_n142_, new_n143_, new_n144_, new_n145_, new_n146_,
    new_n147_, new_n148_, new_n150_, new_n151_, new_n152_, new_n153_,
    new_n154_, new_n155_, new_n156_, new_n157_, new_n159_, new_n160_,
    new_n161_, new_n162_, new_n163_, new_n164_, new_n165_, new_n166_,
    new_n168_, new_n169_;
  assign new_n45_ = ~pA13 & pB13;
  assign new_n46_ = pA13 & ~pB13;
  assign new_n47_ = ~new_n45_ & ~new_n46_;
  assign new_n48_ = cIn & new_n47_;
  assign new_n49_ = ~cIn & ~new_n47_;
  assign r13 = new_n48_ | new_n49_;
  assign new_n51_ = ~pA12 & pB12;
  assign new_n52_ = pA12 & ~pB12;
  assign new_n53_ = ~new_n51_ & ~new_n52_;
  assign new_n54_ = cIn & ~new_n47_;
  assign new_n55_ = pA13 & pB13;
  assign new_n56_ = ~new_n54_ & ~new_n55_;
  assign new_n57_ = new_n53_ & ~new_n56_;
  assign new_n58_ = ~new_n53_ & new_n56_;
  assign r12 = new_n57_ | new_n58_;
  assign new_n60_ = ~pA11 & pB11;
  assign new_n61_ = pA11 & ~pB11;
  assign new_n62_ = ~new_n60_ & ~new_n61_;
  assign new_n63_ = ~new_n53_ & ~new_n56_;
  assign new_n64_ = pA12 & pB12;
  assign new_n65_ = ~new_n63_ & ~new_n64_;
  assign new_n66_ = new_n62_ & ~new_n65_;
  assign new_n67_ = ~new_n62_ & new_n65_;
  assign r11 = new_n66_ | new_n67_;
  assign new_n69_ = ~pA10 & pB10;
  assign new_n70_ = pA10 & ~pB10;
  assign new_n71_ = ~new_n69_ & ~new_n70_;
  assign new_n72_ = ~new_n62_ & ~new_n65_;
  assign new_n73_ = pA11 & pB11;
  assign new_n74_ = ~new_n72_ & ~new_n73_;
  assign new_n75_ = new_n71_ & ~new_n74_;
  assign new_n76_ = ~new_n71_ & new_n74_;
  assign r10 = new_n75_ | new_n76_;
  assign new_n78_ = ~pA9 & pB9;
  assign new_n79_ = pA9 & ~pB9;
  assign new_n80_ = ~new_n78_ & ~new_n79_;
  assign new_n81_ = ~new_n71_ & ~new_n74_;
  assign new_n82_ = pA10 & pB10;
  assign new_n83_ = ~new_n81_ & ~new_n82_;
  assign new_n84_ = new_n80_ & ~new_n83_;
  assign new_n85_ = ~new_n80_ & new_n83_;
  assign r9 = new_n84_ | new_n85_;
  assign new_n87_ = ~pA8 & pB8;
  assign new_n88_ = pA8 & ~pB8;
  assign new_n89_ = ~new_n87_ & ~new_n88_;
  assign new_n90_ = ~new_n80_ & ~new_n83_;
  assign new_n91_ = pA9 & pB9;
  assign new_n92_ = ~new_n90_ & ~new_n91_;
  assign new_n93_ = new_n89_ & ~new_n92_;
  assign new_n94_ = ~new_n89_ & new_n92_;
  assign r8 = new_n93_ | new_n94_;
  assign new_n96_ = ~pA7 & pB7;
  assign new_n97_ = pA7 & ~pB7;
  assign new_n98_ = ~new_n96_ & ~new_n97_;
  assign new_n99_ = ~new_n89_ & ~new_n92_;
  assign new_n100_ = pA8 & pB8;
  assign new_n101_ = ~new_n99_ & ~new_n100_;
  assign new_n102_ = new_n98_ & ~new_n101_;
  assign new_n103_ = ~new_n98_ & new_n101_;
  assign r7 = new_n102_ | new_n103_;
  assign new_n105_ = ~pA6 & pB6;
  assign new_n106_ = pA6 & ~pB6;
  assign new_n107_ = ~new_n105_ & ~new_n106_;
  assign new_n108_ = ~new_n98_ & ~new_n101_;
  assign new_n109_ = pA7 & pB7;
  assign new_n110_ = ~new_n108_ & ~new_n109_;
  assign new_n111_ = new_n107_ & ~new_n110_;
  assign new_n112_ = ~new_n107_ & new_n110_;
  assign r6 = new_n111_ | new_n112_;
  assign new_n114_ = ~pA5 & pB5;
  assign new_n115_ = pA5 & ~pB5;
  assign new_n116_ = ~new_n114_ & ~new_n115_;
  assign new_n117_ = ~new_n107_ & ~new_n110_;
  assign new_n118_ = pA6 & pB6;
  assign new_n119_ = ~new_n117_ & ~new_n118_;
  assign new_n120_ = new_n116_ & ~new_n119_;
  assign new_n121_ = ~new_n116_ & new_n119_;
  assign r5 = new_n120_ | new_n121_;
  assign new_n123_ = ~pA4 & pB4;
  assign new_n124_ = pA4 & ~pB4;
  assign new_n125_ = ~new_n123_ & ~new_n124_;
  assign new_n126_ = ~new_n116_ & ~new_n119_;
  assign new_n127_ = pA5 & pB5;
  assign new_n128_ = ~new_n126_ & ~new_n127_;
  assign new_n129_ = new_n125_ & ~new_n128_;
  assign new_n130_ = ~new_n125_ & new_n128_;
  assign r4 = new_n129_ | new_n130_;
  assign new_n132_ = ~pA3 & pB3;
  assign new_n133_ = pA3 & ~pB3;
  assign new_n134_ = ~new_n132_ & ~new_n133_;
  assign new_n135_ = ~new_n125_ & ~new_n128_;
  assign new_n136_ = pA4 & pB4;
  assign new_n137_ = ~new_n135_ & ~new_n136_;
  assign new_n138_ = new_n134_ & ~new_n137_;
  assign new_n139_ = ~new_n134_ & new_n137_;
  assign r3 = new_n138_ | new_n139_;
  assign new_n141_ = ~pA2 & pB2;
  assign new_n142_ = pA2 & ~pB2;
  assign new_n143_ = ~new_n141_ & ~new_n142_;
  assign new_n144_ = ~new_n134_ & ~new_n137_;
  assign new_n145_ = pA3 & pB3;
  assign new_n146_ = ~new_n144_ & ~new_n145_;
  assign new_n147_ = new_n143_ & ~new_n146_;
  assign new_n148_ = ~new_n143_ & new_n146_;
  assign r2 = new_n147_ | new_n148_;
  assign new_n150_ = ~pA1 & pB1;
  assign new_n151_ = pA1 & ~pB1;
  assign new_n152_ = ~new_n150_ & ~new_n151_;
  assign new_n153_ = ~new_n143_ & ~new_n146_;
  assign new_n154_ = pA2 & pB2;
  assign new_n155_ = ~new_n153_ & ~new_n154_;
  assign new_n156_ = new_n152_ & ~new_n155_;
  assign new_n157_ = ~new_n152_ & new_n155_;
  assign r1 = new_n156_ | new_n157_;
  assign new_n159_ = ~pA0 & pB0;
  assign new_n160_ = pA0 & ~pB0;
  assign new_n161_ = ~new_n159_ & ~new_n160_;
  assign new_n162_ = ~new_n152_ & ~new_n155_;
  assign new_n163_ = pA1 & pB1;
  assign new_n164_ = ~new_n162_ & ~new_n163_;
  assign new_n165_ = new_n161_ & ~new_n164_;
  assign new_n166_ = ~new_n161_ & new_n164_;
  assign r0 = new_n165_ | new_n166_;
  assign new_n168_ = ~new_n161_ & ~new_n164_;
  assign new_n169_ = pA0 & pB0;
  assign cOut = new_n168_ | new_n169_;
endmodule


