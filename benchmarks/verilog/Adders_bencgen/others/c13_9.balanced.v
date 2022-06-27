// Benchmark "CCarryLookahead_9_9_9_InOutT" written by ABC on Wed Oct 16 08:39:30 2019

module CCarryLookahead_9_9_9_InOutT ( 
    pA8, pA7, pA6, pA5, pA4, pA3, pA2, pA1, pA0, pB8, pB7, pB6, pB5, pB4,
    pB3, pB2, pB1, pB0, cIn,
    r8, r7, r6, r5, r4, r3, r2, r1, r0, cOut  );
  input  pA8, pA7, pA6, pA5, pA4, pA3, pA2, pA1, pA0, pB8, pB7, pB6, pB5,
    pB4, pB3, pB2, pB1, pB0, cIn;
  output r8, r7, r6, r5, r4, r3, r2, r1, r0, cOut;
  wire new_n30_, new_n31_, new_n32_, new_n33_, new_n34_, new_n36_, new_n37_,
    new_n38_, new_n39_, new_n40_, new_n41_, new_n42_, new_n43_, new_n45_,
    new_n46_, new_n47_, new_n48_, new_n49_, new_n50_, new_n51_, new_n52_,
    new_n53_, new_n54_, new_n56_, new_n57_, new_n58_, new_n59_, new_n60_,
    new_n61_, new_n62_, new_n63_, new_n64_, new_n65_, new_n66_, new_n67_,
    new_n69_, new_n70_, new_n71_, new_n72_, new_n73_, new_n74_, new_n75_,
    new_n76_, new_n77_, new_n78_, new_n79_, new_n80_, new_n81_, new_n82_,
    new_n84_, new_n85_, new_n86_, new_n87_, new_n88_, new_n89_, new_n90_,
    new_n91_, new_n92_, new_n93_, new_n94_, new_n95_, new_n96_, new_n97_,
    new_n98_, new_n99_, new_n101_, new_n102_, new_n103_, new_n104_,
    new_n105_, new_n106_, new_n107_, new_n108_, new_n109_, new_n110_,
    new_n111_, new_n112_, new_n113_, new_n114_, new_n115_, new_n116_,
    new_n117_, new_n118_, new_n120_, new_n121_, new_n122_, new_n123_,
    new_n124_, new_n125_, new_n126_, new_n127_, new_n128_, new_n129_,
    new_n130_, new_n131_, new_n132_, new_n133_, new_n134_, new_n135_,
    new_n136_, new_n137_, new_n138_, new_n139_, new_n141_, new_n142_,
    new_n143_, new_n144_, new_n145_, new_n146_, new_n147_, new_n148_,
    new_n149_, new_n150_, new_n151_, new_n152_, new_n153_, new_n154_,
    new_n155_, new_n156_, new_n157_, new_n158_, new_n159_, new_n160_,
    new_n161_, new_n162_, new_n164_, new_n165_, new_n166_, new_n167_,
    new_n168_, new_n169_, new_n170_, new_n171_, new_n172_, new_n173_,
    new_n174_, new_n175_, new_n176_, new_n177_, new_n178_, new_n179_,
    new_n180_, new_n181_;
  assign new_n30_ = ~pA8 & pB8;
  assign new_n31_ = pA8 & ~pB8;
  assign new_n32_ = ~new_n30_ & ~new_n31_;
  assign new_n33_ = cIn & new_n32_;
  assign new_n34_ = ~cIn & ~new_n32_;
  assign r8 = new_n33_ | new_n34_;
  assign new_n36_ = ~pA7 & pB7;
  assign new_n37_ = pA7 & ~pB7;
  assign new_n38_ = ~new_n36_ & ~new_n37_;
  assign new_n39_ = pA8 & pB8;
  assign new_n40_ = cIn & ~new_n32_;
  assign new_n41_ = ~new_n39_ & ~new_n40_;
  assign new_n42_ = new_n38_ & ~new_n41_;
  assign new_n43_ = ~new_n38_ & new_n41_;
  assign r7 = new_n42_ | new_n43_;
  assign new_n45_ = ~pA6 & pB6;
  assign new_n46_ = pA6 & ~pB6;
  assign new_n47_ = ~new_n45_ & ~new_n46_;
  assign new_n48_ = ~new_n38_ & new_n39_;
  assign new_n49_ = pA7 & pB7;
  assign new_n50_ = ~new_n38_ & new_n40_;
  assign new_n51_ = ~new_n48_ & ~new_n49_;
  assign new_n52_ = ~new_n50_ & new_n51_;
  assign new_n53_ = new_n47_ & ~new_n52_;
  assign new_n54_ = ~new_n47_ & new_n52_;
  assign r6 = new_n53_ | new_n54_;
  assign new_n56_ = ~pA5 & pB5;
  assign new_n57_ = pA5 & ~pB5;
  assign new_n58_ = ~new_n56_ & ~new_n57_;
  assign new_n59_ = ~new_n47_ & new_n49_;
  assign new_n60_ = ~new_n47_ & new_n48_;
  assign new_n61_ = pA6 & pB6;
  assign new_n62_ = ~new_n47_ & new_n50_;
  assign new_n63_ = ~new_n59_ & ~new_n61_;
  assign new_n64_ = ~new_n60_ & new_n63_;
  assign new_n65_ = ~new_n62_ & new_n64_;
  assign new_n66_ = new_n58_ & ~new_n65_;
  assign new_n67_ = ~new_n58_ & new_n65_;
  assign r5 = new_n66_ | new_n67_;
  assign new_n69_ = ~pA4 & pB4;
  assign new_n70_ = pA4 & ~pB4;
  assign new_n71_ = ~new_n69_ & ~new_n70_;
  assign new_n72_ = ~new_n58_ & new_n61_;
  assign new_n73_ = ~new_n58_ & new_n59_;
  assign new_n74_ = ~new_n58_ & new_n60_;
  assign new_n75_ = pA5 & pB5;
  assign new_n76_ = ~new_n58_ & new_n62_;
  assign new_n77_ = ~new_n72_ & ~new_n75_;
  assign new_n78_ = ~new_n73_ & new_n77_;
  assign new_n79_ = ~new_n74_ & new_n78_;
  assign new_n80_ = ~new_n76_ & new_n79_;
  assign new_n81_ = new_n71_ & ~new_n80_;
  assign new_n82_ = ~new_n71_ & new_n80_;
  assign r4 = new_n81_ | new_n82_;
  assign new_n84_ = ~pA3 & pB3;
  assign new_n85_ = pA3 & ~pB3;
  assign new_n86_ = ~new_n84_ & ~new_n85_;
  assign new_n87_ = ~new_n71_ & new_n75_;
  assign new_n88_ = ~new_n71_ & new_n72_;
  assign new_n89_ = ~new_n71_ & new_n73_;
  assign new_n90_ = ~new_n71_ & new_n74_;
  assign new_n91_ = pA4 & pB4;
  assign new_n92_ = ~new_n71_ & new_n76_;
  assign new_n93_ = ~new_n87_ & ~new_n91_;
  assign new_n94_ = ~new_n88_ & new_n93_;
  assign new_n95_ = ~new_n89_ & new_n94_;
  assign new_n96_ = ~new_n90_ & new_n95_;
  assign new_n97_ = ~new_n92_ & new_n96_;
  assign new_n98_ = new_n86_ & ~new_n97_;
  assign new_n99_ = ~new_n86_ & new_n97_;
  assign r3 = new_n98_ | new_n99_;
  assign new_n101_ = ~pA2 & pB2;
  assign new_n102_ = pA2 & ~pB2;
  assign new_n103_ = ~new_n101_ & ~new_n102_;
  assign new_n104_ = ~new_n86_ & new_n91_;
  assign new_n105_ = ~new_n86_ & new_n87_;
  assign new_n106_ = ~new_n86_ & new_n88_;
  assign new_n107_ = ~new_n86_ & new_n89_;
  assign new_n108_ = ~new_n86_ & new_n90_;
  assign new_n109_ = pA3 & pB3;
  assign new_n110_ = ~new_n86_ & new_n92_;
  assign new_n111_ = ~new_n104_ & ~new_n109_;
  assign new_n112_ = ~new_n105_ & new_n111_;
  assign new_n113_ = ~new_n106_ & new_n112_;
  assign new_n114_ = ~new_n107_ & new_n113_;
  assign new_n115_ = ~new_n108_ & new_n114_;
  assign new_n116_ = ~new_n110_ & new_n115_;
  assign new_n117_ = new_n103_ & ~new_n116_;
  assign new_n118_ = ~new_n103_ & new_n116_;
  assign r2 = new_n117_ | new_n118_;
  assign new_n120_ = ~pA1 & pB1;
  assign new_n121_ = pA1 & ~pB1;
  assign new_n122_ = ~new_n120_ & ~new_n121_;
  assign new_n123_ = ~new_n103_ & new_n109_;
  assign new_n124_ = ~new_n103_ & new_n104_;
  assign new_n125_ = ~new_n103_ & new_n105_;
  assign new_n126_ = ~new_n103_ & new_n106_;
  assign new_n127_ = ~new_n103_ & new_n107_;
  assign new_n128_ = ~new_n103_ & new_n108_;
  assign new_n129_ = pA2 & pB2;
  assign new_n130_ = ~new_n103_ & new_n110_;
  assign new_n131_ = ~new_n123_ & ~new_n129_;
  assign new_n132_ = ~new_n124_ & new_n131_;
  assign new_n133_ = ~new_n125_ & new_n132_;
  assign new_n134_ = ~new_n126_ & new_n133_;
  assign new_n135_ = ~new_n127_ & new_n134_;
  assign new_n136_ = ~new_n128_ & new_n135_;
  assign new_n137_ = ~new_n130_ & new_n136_;
  assign new_n138_ = new_n122_ & ~new_n137_;
  assign new_n139_ = ~new_n122_ & new_n137_;
  assign r1 = new_n138_ | new_n139_;
  assign new_n141_ = ~pA0 & pB0;
  assign new_n142_ = pA0 & ~pB0;
  assign new_n143_ = ~new_n141_ & ~new_n142_;
  assign new_n144_ = ~new_n122_ & new_n129_;
  assign new_n145_ = ~new_n122_ & new_n123_;
  assign new_n146_ = ~new_n122_ & new_n124_;
  assign new_n147_ = ~new_n122_ & new_n125_;
  assign new_n148_ = ~new_n122_ & new_n126_;
  assign new_n149_ = ~new_n122_ & new_n127_;
  assign new_n150_ = ~new_n122_ & new_n128_;
  assign new_n151_ = pA1 & pB1;
  assign new_n152_ = ~new_n122_ & new_n130_;
  assign new_n153_ = ~new_n144_ & ~new_n151_;
  assign new_n154_ = ~new_n145_ & new_n153_;
  assign new_n155_ = ~new_n146_ & new_n154_;
  assign new_n156_ = ~new_n147_ & new_n155_;
  assign new_n157_ = ~new_n148_ & new_n156_;
  assign new_n158_ = ~new_n149_ & new_n157_;
  assign new_n159_ = ~new_n150_ & new_n158_;
  assign new_n160_ = ~new_n152_ & new_n159_;
  assign new_n161_ = new_n143_ & ~new_n160_;
  assign new_n162_ = ~new_n143_ & new_n160_;
  assign r0 = new_n161_ | new_n162_;
  assign new_n164_ = ~new_n143_ & new_n151_;
  assign new_n165_ = ~new_n143_ & new_n144_;
  assign new_n166_ = ~new_n143_ & new_n145_;
  assign new_n167_ = ~new_n143_ & new_n146_;
  assign new_n168_ = ~new_n143_ & new_n147_;
  assign new_n169_ = ~new_n143_ & new_n148_;
  assign new_n170_ = ~new_n143_ & new_n149_;
  assign new_n171_ = ~new_n143_ & new_n150_;
  assign new_n172_ = pA0 & pB0;
  assign new_n173_ = ~new_n143_ & new_n152_;
  assign new_n174_ = ~new_n164_ & ~new_n172_;
  assign new_n175_ = ~new_n165_ & new_n174_;
  assign new_n176_ = ~new_n166_ & new_n175_;
  assign new_n177_ = ~new_n167_ & new_n176_;
  assign new_n178_ = ~new_n168_ & new_n177_;
  assign new_n179_ = ~new_n169_ & new_n178_;
  assign new_n180_ = ~new_n170_ & new_n179_;
  assign new_n181_ = ~new_n171_ & new_n180_;
  assign cOut = new_n173_ | ~new_n181_;
endmodule


