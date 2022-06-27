// Benchmark "CCarryLookaheadBlock_6_6_6_InOutT" written by ABC on Wed Oct 16 08:39:31 2019

module CCarryLookaheadBlock_6_6_6_InOutT ( 
    pA5, pA4, pA3, pA2, pA1, pA0, pB5, pB4, pB3, pB2, pB1, pB0, cIn,
    r5, r4, r3, r2, r1, r0, cOut  );
  input  pA5, pA4, pA3, pA2, pA1, pA0, pB5, pB4, pB3, pB2, pB1, pB0, cIn;
  output r5, r4, r3, r2, r1, r0, cOut;
  wire new_n21_, new_n22_, new_n23_, new_n24_, new_n25_, new_n27_, new_n28_,
    new_n29_, new_n30_, new_n31_, new_n32_, new_n33_, new_n34_, new_n36_,
    new_n37_, new_n38_, new_n39_, new_n40_, new_n41_, new_n42_, new_n43_,
    new_n44_, new_n45_, new_n47_, new_n48_, new_n49_, new_n50_, new_n51_,
    new_n52_, new_n53_, new_n54_, new_n55_, new_n56_, new_n57_, new_n58_,
    new_n60_, new_n61_, new_n62_, new_n63_, new_n64_, new_n65_, new_n66_,
    new_n67_, new_n68_, new_n69_, new_n70_, new_n71_, new_n72_, new_n73_,
    new_n75_, new_n76_, new_n77_, new_n78_, new_n79_, new_n80_, new_n81_,
    new_n82_, new_n84_, new_n85_, new_n86_, new_n87_;
  assign new_n21_ = ~pA5 & pB5;
  assign new_n22_ = pA5 & ~pB5;
  assign new_n23_ = ~new_n21_ & ~new_n22_;
  assign new_n24_ = cIn & new_n23_;
  assign new_n25_ = ~cIn & ~new_n23_;
  assign r5 = new_n24_ | new_n25_;
  assign new_n27_ = ~pA4 & pB4;
  assign new_n28_ = pA4 & ~pB4;
  assign new_n29_ = ~new_n27_ & ~new_n28_;
  assign new_n30_ = pA5 & pB5;
  assign new_n31_ = cIn & ~new_n23_;
  assign new_n32_ = ~new_n30_ & ~new_n31_;
  assign new_n33_ = new_n29_ & ~new_n32_;
  assign new_n34_ = ~new_n29_ & new_n32_;
  assign r4 = new_n33_ | new_n34_;
  assign new_n36_ = ~pA3 & pB3;
  assign new_n37_ = pA3 & ~pB3;
  assign new_n38_ = ~new_n36_ & ~new_n37_;
  assign new_n39_ = ~new_n29_ & new_n30_;
  assign new_n40_ = pA4 & pB4;
  assign new_n41_ = ~new_n29_ & new_n31_;
  assign new_n42_ = ~new_n39_ & ~new_n40_;
  assign new_n43_ = ~new_n41_ & new_n42_;
  assign new_n44_ = new_n38_ & ~new_n43_;
  assign new_n45_ = ~new_n38_ & new_n43_;
  assign r3 = new_n44_ | new_n45_;
  assign new_n47_ = ~pA2 & pB2;
  assign new_n48_ = pA2 & ~pB2;
  assign new_n49_ = ~new_n47_ & ~new_n48_;
  assign new_n50_ = ~new_n38_ & new_n40_;
  assign new_n51_ = ~new_n38_ & new_n39_;
  assign new_n52_ = pA3 & pB3;
  assign new_n53_ = ~new_n38_ & new_n41_;
  assign new_n54_ = ~new_n50_ & ~new_n52_;
  assign new_n55_ = ~new_n51_ & new_n54_;
  assign new_n56_ = ~new_n53_ & new_n55_;
  assign new_n57_ = new_n49_ & ~new_n56_;
  assign new_n58_ = ~new_n49_ & new_n56_;
  assign r2 = new_n57_ | new_n58_;
  assign new_n60_ = ~pA1 & pB1;
  assign new_n61_ = pA1 & ~pB1;
  assign new_n62_ = ~new_n60_ & ~new_n61_;
  assign new_n63_ = ~new_n49_ & new_n52_;
  assign new_n64_ = ~new_n49_ & new_n50_;
  assign new_n65_ = ~new_n49_ & new_n51_;
  assign new_n66_ = pA2 & pB2;
  assign new_n67_ = ~new_n49_ & new_n53_;
  assign new_n68_ = ~new_n63_ & ~new_n66_;
  assign new_n69_ = ~new_n64_ & new_n68_;
  assign new_n70_ = ~new_n65_ & new_n69_;
  assign new_n71_ = ~new_n67_ & new_n70_;
  assign new_n72_ = new_n62_ & ~new_n71_;
  assign new_n73_ = ~new_n62_ & new_n71_;
  assign r1 = new_n72_ | new_n73_;
  assign new_n75_ = ~pA0 & pB0;
  assign new_n76_ = pA0 & ~pB0;
  assign new_n77_ = ~new_n75_ & ~new_n76_;
  assign new_n78_ = pA1 & pB1;
  assign new_n79_ = ~new_n62_ & ~new_n71_;
  assign new_n80_ = ~new_n78_ & ~new_n79_;
  assign new_n81_ = new_n77_ & ~new_n80_;
  assign new_n82_ = ~new_n77_ & new_n80_;
  assign r0 = new_n81_ | new_n82_;
  assign new_n84_ = ~new_n77_ & new_n78_;
  assign new_n85_ = pA0 & pB0;
  assign new_n86_ = ~new_n77_ & new_n79_;
  assign new_n87_ = ~new_n84_ & ~new_n85_;
  assign cOut = new_n86_ | ~new_n87_;
endmodule


