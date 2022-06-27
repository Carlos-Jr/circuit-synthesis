// Benchmark "CCarryLookaheadBlock_11_11_11_InOutT" written by ABC on Wed Oct 16 08:39:31 2019

module CCarryLookaheadBlock_11_11_11_InOutT ( 
    pA10, pA9, pA8, pA7, pA6, pA5, pA4, pA3, pA2, pA1, pA0, pB10, pB9, pB8,
    pB7, pB6, pB5, pB4, pB3, pB2, pB1, pB0, cIn,
    r10, r9, r8, r7, r6, r5, r4, r3, r2, r1, r0, cOut  );
  input  pA10, pA9, pA8, pA7, pA6, pA5, pA4, pA3, pA2, pA1, pA0, pB10,
    pB9, pB8, pB7, pB6, pB5, pB4, pB3, pB2, pB1, pB0, cIn;
  output r10, r9, r8, r7, r6, r5, r4, r3, r2, r1, r0, cOut;
  wire new_n36_, new_n37_, new_n38_, new_n39_, new_n40_, new_n42_, new_n43_,
    new_n44_, new_n45_, new_n46_, new_n47_, new_n48_, new_n49_, new_n51_,
    new_n52_, new_n53_, new_n54_, new_n55_, new_n56_, new_n57_, new_n58_,
    new_n59_, new_n60_, new_n62_, new_n63_, new_n64_, new_n65_, new_n66_,
    new_n67_, new_n68_, new_n69_, new_n70_, new_n71_, new_n72_, new_n73_,
    new_n75_, new_n76_, new_n77_, new_n78_, new_n79_, new_n80_, new_n81_,
    new_n82_, new_n83_, new_n84_, new_n85_, new_n86_, new_n87_, new_n88_,
    new_n90_, new_n91_, new_n92_, new_n93_, new_n94_, new_n95_, new_n96_,
    new_n97_, new_n99_, new_n100_, new_n101_, new_n102_, new_n103_,
    new_n104_, new_n105_, new_n106_, new_n107_, new_n108_, new_n110_,
    new_n111_, new_n112_, new_n113_, new_n114_, new_n115_, new_n116_,
    new_n117_, new_n118_, new_n119_, new_n120_, new_n121_, new_n123_,
    new_n124_, new_n125_, new_n126_, new_n127_, new_n128_, new_n129_,
    new_n130_, new_n131_, new_n132_, new_n133_, new_n134_, new_n135_,
    new_n136_, new_n138_, new_n139_, new_n140_, new_n141_, new_n142_,
    new_n143_, new_n144_, new_n145_, new_n147_, new_n148_, new_n149_,
    new_n150_, new_n151_, new_n152_, new_n153_, new_n154_, new_n155_,
    new_n156_, new_n158_, new_n159_, new_n160_, new_n161_, new_n162_,
    new_n163_;
  assign new_n36_ = ~pA10 & pB10;
  assign new_n37_ = pA10 & ~pB10;
  assign new_n38_ = ~new_n36_ & ~new_n37_;
  assign new_n39_ = cIn & new_n38_;
  assign new_n40_ = ~cIn & ~new_n38_;
  assign r10 = new_n39_ | new_n40_;
  assign new_n42_ = ~pA9 & pB9;
  assign new_n43_ = pA9 & ~pB9;
  assign new_n44_ = ~new_n42_ & ~new_n43_;
  assign new_n45_ = pA10 & pB10;
  assign new_n46_ = cIn & ~new_n38_;
  assign new_n47_ = ~new_n45_ & ~new_n46_;
  assign new_n48_ = new_n44_ & ~new_n47_;
  assign new_n49_ = ~new_n44_ & new_n47_;
  assign r9 = new_n48_ | new_n49_;
  assign new_n51_ = ~pA8 & pB8;
  assign new_n52_ = pA8 & ~pB8;
  assign new_n53_ = ~new_n51_ & ~new_n52_;
  assign new_n54_ = ~new_n44_ & new_n45_;
  assign new_n55_ = pA9 & pB9;
  assign new_n56_ = ~new_n44_ & new_n46_;
  assign new_n57_ = ~new_n54_ & ~new_n55_;
  assign new_n58_ = ~new_n56_ & new_n57_;
  assign new_n59_ = new_n53_ & ~new_n58_;
  assign new_n60_ = ~new_n53_ & new_n58_;
  assign r8 = new_n59_ | new_n60_;
  assign new_n62_ = ~pA7 & pB7;
  assign new_n63_ = pA7 & ~pB7;
  assign new_n64_ = ~new_n62_ & ~new_n63_;
  assign new_n65_ = ~new_n53_ & new_n55_;
  assign new_n66_ = ~new_n53_ & new_n54_;
  assign new_n67_ = pA8 & pB8;
  assign new_n68_ = ~new_n53_ & new_n56_;
  assign new_n69_ = ~new_n65_ & ~new_n67_;
  assign new_n70_ = ~new_n66_ & new_n69_;
  assign new_n71_ = ~new_n68_ & new_n70_;
  assign new_n72_ = new_n64_ & ~new_n71_;
  assign new_n73_ = ~new_n64_ & new_n71_;
  assign r7 = new_n72_ | new_n73_;
  assign new_n75_ = ~pA6 & pB6;
  assign new_n76_ = pA6 & ~pB6;
  assign new_n77_ = ~new_n75_ & ~new_n76_;
  assign new_n78_ = ~new_n64_ & new_n67_;
  assign new_n79_ = ~new_n64_ & new_n65_;
  assign new_n80_ = ~new_n64_ & new_n66_;
  assign new_n81_ = pA7 & pB7;
  assign new_n82_ = ~new_n64_ & new_n68_;
  assign new_n83_ = ~new_n78_ & ~new_n81_;
  assign new_n84_ = ~new_n79_ & new_n83_;
  assign new_n85_ = ~new_n80_ & new_n84_;
  assign new_n86_ = ~new_n82_ & new_n85_;
  assign new_n87_ = new_n77_ & ~new_n86_;
  assign new_n88_ = ~new_n77_ & new_n86_;
  assign r6 = new_n87_ | new_n88_;
  assign new_n90_ = ~pA5 & pB5;
  assign new_n91_ = pA5 & ~pB5;
  assign new_n92_ = ~new_n90_ & ~new_n91_;
  assign new_n93_ = pA6 & pB6;
  assign new_n94_ = ~new_n77_ & ~new_n86_;
  assign new_n95_ = ~new_n93_ & ~new_n94_;
  assign new_n96_ = new_n92_ & ~new_n95_;
  assign new_n97_ = ~new_n92_ & new_n95_;
  assign r5 = new_n96_ | new_n97_;
  assign new_n99_ = ~pA4 & pB4;
  assign new_n100_ = pA4 & ~pB4;
  assign new_n101_ = ~new_n99_ & ~new_n100_;
  assign new_n102_ = ~new_n92_ & new_n93_;
  assign new_n103_ = pA5 & pB5;
  assign new_n104_ = ~new_n92_ & new_n94_;
  assign new_n105_ = ~new_n102_ & ~new_n103_;
  assign new_n106_ = ~new_n104_ & new_n105_;
  assign new_n107_ = new_n101_ & ~new_n106_;
  assign new_n108_ = ~new_n101_ & new_n106_;
  assign r4 = new_n107_ | new_n108_;
  assign new_n110_ = ~pA3 & pB3;
  assign new_n111_ = pA3 & ~pB3;
  assign new_n112_ = ~new_n110_ & ~new_n111_;
  assign new_n113_ = ~new_n101_ & new_n103_;
  assign new_n114_ = ~new_n101_ & new_n102_;
  assign new_n115_ = pA4 & pB4;
  assign new_n116_ = ~new_n101_ & new_n104_;
  assign new_n117_ = ~new_n113_ & ~new_n115_;
  assign new_n118_ = ~new_n114_ & new_n117_;
  assign new_n119_ = ~new_n116_ & new_n118_;
  assign new_n120_ = new_n112_ & ~new_n119_;
  assign new_n121_ = ~new_n112_ & new_n119_;
  assign r3 = new_n120_ | new_n121_;
  assign new_n123_ = ~pA2 & pB2;
  assign new_n124_ = pA2 & ~pB2;
  assign new_n125_ = ~new_n123_ & ~new_n124_;
  assign new_n126_ = ~new_n112_ & new_n115_;
  assign new_n127_ = ~new_n112_ & new_n113_;
  assign new_n128_ = ~new_n112_ & new_n114_;
  assign new_n129_ = pA3 & pB3;
  assign new_n130_ = ~new_n112_ & new_n116_;
  assign new_n131_ = ~new_n126_ & ~new_n129_;
  assign new_n132_ = ~new_n127_ & new_n131_;
  assign new_n133_ = ~new_n128_ & new_n132_;
  assign new_n134_ = ~new_n130_ & new_n133_;
  assign new_n135_ = new_n125_ & ~new_n134_;
  assign new_n136_ = ~new_n125_ & new_n134_;
  assign r2 = new_n135_ | new_n136_;
  assign new_n138_ = ~pA1 & pB1;
  assign new_n139_ = pA1 & ~pB1;
  assign new_n140_ = ~new_n138_ & ~new_n139_;
  assign new_n141_ = pA2 & pB2;
  assign new_n142_ = ~new_n125_ & ~new_n134_;
  assign new_n143_ = ~new_n141_ & ~new_n142_;
  assign new_n144_ = new_n140_ & ~new_n143_;
  assign new_n145_ = ~new_n140_ & new_n143_;
  assign r1 = new_n144_ | new_n145_;
  assign new_n147_ = ~pA0 & pB0;
  assign new_n148_ = pA0 & ~pB0;
  assign new_n149_ = ~new_n147_ & ~new_n148_;
  assign new_n150_ = ~new_n140_ & new_n141_;
  assign new_n151_ = pA1 & pB1;
  assign new_n152_ = ~new_n140_ & new_n142_;
  assign new_n153_ = ~new_n150_ & ~new_n151_;
  assign new_n154_ = ~new_n152_ & new_n153_;
  assign new_n155_ = new_n149_ & ~new_n154_;
  assign new_n156_ = ~new_n149_ & new_n154_;
  assign r0 = new_n155_ | new_n156_;
  assign new_n158_ = ~new_n149_ & new_n151_;
  assign new_n159_ = ~new_n149_ & new_n150_;
  assign new_n160_ = pA0 & pB0;
  assign new_n161_ = ~new_n149_ & new_n152_;
  assign new_n162_ = ~new_n158_ & ~new_n160_;
  assign new_n163_ = ~new_n159_ & new_n162_;
  assign cOut = new_n161_ | ~new_n163_;
endmodule


