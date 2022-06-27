// Benchmark "CCarryLookahead_7_7_7_InOutT" written by ABC on Wed Oct 16 08:39:30 2019

module CCarryLookahead_7_7_7_InOutT ( 
    pA6, pA5, pA4, pA3, pA2, pA1, pA0, pB6, pB5, pB4, pB3, pB2, pB1, pB0,
    cIn,
    r6, r5, r4, r3, r2, r1, r0, cOut  );
  input  pA6, pA5, pA4, pA3, pA2, pA1, pA0, pB6, pB5, pB4, pB3, pB2, pB1,
    pB0, cIn;
  output r6, r5, r4, r3, r2, r1, r0, cOut;
  wire new_n24_, new_n25_, new_n26_, new_n27_, new_n28_, new_n30_, new_n31_,
    new_n32_, new_n33_, new_n34_, new_n35_, new_n36_, new_n37_, new_n39_,
    new_n40_, new_n41_, new_n42_, new_n43_, new_n44_, new_n45_, new_n46_,
    new_n47_, new_n48_, new_n50_, new_n51_, new_n52_, new_n53_, new_n54_,
    new_n55_, new_n56_, new_n57_, new_n58_, new_n59_, new_n60_, new_n61_,
    new_n63_, new_n64_, new_n65_, new_n66_, new_n67_, new_n68_, new_n69_,
    new_n70_, new_n71_, new_n72_, new_n73_, new_n74_, new_n75_, new_n76_,
    new_n78_, new_n79_, new_n80_, new_n81_, new_n82_, new_n83_, new_n84_,
    new_n85_, new_n86_, new_n87_, new_n88_, new_n89_, new_n90_, new_n91_,
    new_n92_, new_n93_, new_n95_, new_n96_, new_n97_, new_n98_, new_n99_,
    new_n100_, new_n101_, new_n102_, new_n103_, new_n104_, new_n105_,
    new_n106_, new_n107_, new_n108_, new_n109_, new_n110_, new_n111_,
    new_n112_, new_n114_, new_n115_, new_n116_, new_n117_, new_n118_,
    new_n119_, new_n120_, new_n121_, new_n122_, new_n123_, new_n124_,
    new_n125_, new_n126_, new_n127_;
  assign new_n24_ = ~pA6 & pB6;
  assign new_n25_ = pA6 & ~pB6;
  assign new_n26_ = ~new_n24_ & ~new_n25_;
  assign new_n27_ = cIn & new_n26_;
  assign new_n28_ = ~cIn & ~new_n26_;
  assign r6 = new_n27_ | new_n28_;
  assign new_n30_ = ~pA5 & pB5;
  assign new_n31_ = pA5 & ~pB5;
  assign new_n32_ = ~new_n30_ & ~new_n31_;
  assign new_n33_ = pA6 & pB6;
  assign new_n34_ = cIn & ~new_n26_;
  assign new_n35_ = ~new_n33_ & ~new_n34_;
  assign new_n36_ = new_n32_ & ~new_n35_;
  assign new_n37_ = ~new_n32_ & new_n35_;
  assign r5 = new_n36_ | new_n37_;
  assign new_n39_ = ~pA4 & pB4;
  assign new_n40_ = pA4 & ~pB4;
  assign new_n41_ = ~new_n39_ & ~new_n40_;
  assign new_n42_ = ~new_n32_ & new_n33_;
  assign new_n43_ = pA5 & pB5;
  assign new_n44_ = ~new_n32_ & new_n34_;
  assign new_n45_ = ~new_n42_ & ~new_n43_;
  assign new_n46_ = ~new_n44_ & new_n45_;
  assign new_n47_ = new_n41_ & ~new_n46_;
  assign new_n48_ = ~new_n41_ & new_n46_;
  assign r4 = new_n47_ | new_n48_;
  assign new_n50_ = ~pA3 & pB3;
  assign new_n51_ = pA3 & ~pB3;
  assign new_n52_ = ~new_n50_ & ~new_n51_;
  assign new_n53_ = ~new_n41_ & new_n43_;
  assign new_n54_ = ~new_n41_ & new_n42_;
  assign new_n55_ = pA4 & pB4;
  assign new_n56_ = ~new_n41_ & new_n44_;
  assign new_n57_ = ~new_n53_ & ~new_n55_;
  assign new_n58_ = ~new_n54_ & new_n57_;
  assign new_n59_ = ~new_n56_ & new_n58_;
  assign new_n60_ = new_n52_ & ~new_n59_;
  assign new_n61_ = ~new_n52_ & new_n59_;
  assign r3 = new_n60_ | new_n61_;
  assign new_n63_ = ~pA2 & pB2;
  assign new_n64_ = pA2 & ~pB2;
  assign new_n65_ = ~new_n63_ & ~new_n64_;
  assign new_n66_ = ~new_n52_ & new_n55_;
  assign new_n67_ = ~new_n52_ & new_n53_;
  assign new_n68_ = ~new_n52_ & new_n54_;
  assign new_n69_ = pA3 & pB3;
  assign new_n70_ = ~new_n52_ & new_n56_;
  assign new_n71_ = ~new_n66_ & ~new_n69_;
  assign new_n72_ = ~new_n67_ & new_n71_;
  assign new_n73_ = ~new_n68_ & new_n72_;
  assign new_n74_ = ~new_n70_ & new_n73_;
  assign new_n75_ = new_n65_ & ~new_n74_;
  assign new_n76_ = ~new_n65_ & new_n74_;
  assign r2 = new_n75_ | new_n76_;
  assign new_n78_ = ~pA1 & pB1;
  assign new_n79_ = pA1 & ~pB1;
  assign new_n80_ = ~new_n78_ & ~new_n79_;
  assign new_n81_ = ~new_n65_ & new_n69_;
  assign new_n82_ = ~new_n65_ & new_n66_;
  assign new_n83_ = ~new_n65_ & new_n67_;
  assign new_n84_ = ~new_n65_ & new_n68_;
  assign new_n85_ = pA2 & pB2;
  assign new_n86_ = ~new_n65_ & new_n70_;
  assign new_n87_ = ~new_n81_ & ~new_n85_;
  assign new_n88_ = ~new_n82_ & new_n87_;
  assign new_n89_ = ~new_n83_ & new_n88_;
  assign new_n90_ = ~new_n84_ & new_n89_;
  assign new_n91_ = ~new_n86_ & new_n90_;
  assign new_n92_ = new_n80_ & ~new_n91_;
  assign new_n93_ = ~new_n80_ & new_n91_;
  assign r1 = new_n92_ | new_n93_;
  assign new_n95_ = ~pA0 & pB0;
  assign new_n96_ = pA0 & ~pB0;
  assign new_n97_ = ~new_n95_ & ~new_n96_;
  assign new_n98_ = ~new_n80_ & new_n85_;
  assign new_n99_ = ~new_n80_ & new_n81_;
  assign new_n100_ = ~new_n80_ & new_n82_;
  assign new_n101_ = ~new_n80_ & new_n83_;
  assign new_n102_ = ~new_n80_ & new_n84_;
  assign new_n103_ = pA1 & pB1;
  assign new_n104_ = ~new_n80_ & new_n86_;
  assign new_n105_ = ~new_n98_ & ~new_n103_;
  assign new_n106_ = ~new_n99_ & new_n105_;
  assign new_n107_ = ~new_n100_ & new_n106_;
  assign new_n108_ = ~new_n101_ & new_n107_;
  assign new_n109_ = ~new_n102_ & new_n108_;
  assign new_n110_ = ~new_n104_ & new_n109_;
  assign new_n111_ = new_n97_ & ~new_n110_;
  assign new_n112_ = ~new_n97_ & new_n110_;
  assign r0 = new_n111_ | new_n112_;
  assign new_n114_ = ~new_n97_ & new_n103_;
  assign new_n115_ = ~new_n97_ & new_n98_;
  assign new_n116_ = ~new_n97_ & new_n99_;
  assign new_n117_ = ~new_n97_ & new_n100_;
  assign new_n118_ = ~new_n97_ & new_n101_;
  assign new_n119_ = ~new_n97_ & new_n102_;
  assign new_n120_ = pA0 & pB0;
  assign new_n121_ = ~new_n97_ & new_n104_;
  assign new_n122_ = ~new_n114_ & ~new_n120_;
  assign new_n123_ = ~new_n115_ & new_n122_;
  assign new_n124_ = ~new_n116_ & new_n123_;
  assign new_n125_ = ~new_n117_ & new_n124_;
  assign new_n126_ = ~new_n118_ & new_n125_;
  assign new_n127_ = ~new_n119_ & new_n126_;
  assign cOut = new_n121_ | ~new_n127_;
endmodule


