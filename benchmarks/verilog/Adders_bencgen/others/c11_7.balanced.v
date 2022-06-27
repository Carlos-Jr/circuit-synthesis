// Benchmark "CRippleCarryAdder_7_7_7_InOutT" written by ABC on Wed Oct 16 08:39:30 2019

module CRippleCarryAdder_7_7_7_InOutT ( 
    pA6, pA5, pA4, pA3, pA2, pA1, pA0, pB6, pB5, pB4, pB3, pB2, pB1, pB0,
    cIn,
    r6, r5, r4, r3, r2, r1, r0, cOut  );
  input  pA6, pA5, pA4, pA3, pA2, pA1, pA0, pB6, pB5, pB4, pB3, pB2, pB1,
    pB0, cIn;
  output r6, r5, r4, r3, r2, r1, r0, cOut;
  wire new_n24_, new_n25_, new_n26_, new_n27_, new_n28_, new_n30_, new_n31_,
    new_n32_, new_n33_, new_n34_, new_n35_, new_n36_, new_n37_, new_n39_,
    new_n40_, new_n41_, new_n42_, new_n43_, new_n44_, new_n45_, new_n46_,
    new_n48_, new_n49_, new_n50_, new_n51_, new_n52_, new_n53_, new_n54_,
    new_n55_, new_n57_, new_n58_, new_n59_, new_n60_, new_n61_, new_n62_,
    new_n63_, new_n64_, new_n66_, new_n67_, new_n68_, new_n69_, new_n70_,
    new_n71_, new_n72_, new_n73_, new_n75_, new_n76_, new_n77_, new_n78_,
    new_n79_, new_n80_, new_n81_, new_n82_, new_n84_, new_n85_;
  assign new_n24_ = ~pA6 & pB6;
  assign new_n25_ = pA6 & ~pB6;
  assign new_n26_ = ~new_n24_ & ~new_n25_;
  assign new_n27_ = cIn & new_n26_;
  assign new_n28_ = ~cIn & ~new_n26_;
  assign r6 = new_n27_ | new_n28_;
  assign new_n30_ = ~pA5 & pB5;
  assign new_n31_ = pA5 & ~pB5;
  assign new_n32_ = ~new_n30_ & ~new_n31_;
  assign new_n33_ = cIn & ~new_n26_;
  assign new_n34_ = pA6 & pB6;
  assign new_n35_ = ~new_n33_ & ~new_n34_;
  assign new_n36_ = new_n32_ & ~new_n35_;
  assign new_n37_ = ~new_n32_ & new_n35_;
  assign r5 = new_n36_ | new_n37_;
  assign new_n39_ = ~pA4 & pB4;
  assign new_n40_ = pA4 & ~pB4;
  assign new_n41_ = ~new_n39_ & ~new_n40_;
  assign new_n42_ = ~new_n32_ & ~new_n35_;
  assign new_n43_ = pA5 & pB5;
  assign new_n44_ = ~new_n42_ & ~new_n43_;
  assign new_n45_ = new_n41_ & ~new_n44_;
  assign new_n46_ = ~new_n41_ & new_n44_;
  assign r4 = new_n45_ | new_n46_;
  assign new_n48_ = ~pA3 & pB3;
  assign new_n49_ = pA3 & ~pB3;
  assign new_n50_ = ~new_n48_ & ~new_n49_;
  assign new_n51_ = ~new_n41_ & ~new_n44_;
  assign new_n52_ = pA4 & pB4;
  assign new_n53_ = ~new_n51_ & ~new_n52_;
  assign new_n54_ = new_n50_ & ~new_n53_;
  assign new_n55_ = ~new_n50_ & new_n53_;
  assign r3 = new_n54_ | new_n55_;
  assign new_n57_ = ~pA2 & pB2;
  assign new_n58_ = pA2 & ~pB2;
  assign new_n59_ = ~new_n57_ & ~new_n58_;
  assign new_n60_ = ~new_n50_ & ~new_n53_;
  assign new_n61_ = pA3 & pB3;
  assign new_n62_ = ~new_n60_ & ~new_n61_;
  assign new_n63_ = new_n59_ & ~new_n62_;
  assign new_n64_ = ~new_n59_ & new_n62_;
  assign r2 = new_n63_ | new_n64_;
  assign new_n66_ = ~pA1 & pB1;
  assign new_n67_ = pA1 & ~pB1;
  assign new_n68_ = ~new_n66_ & ~new_n67_;
  assign new_n69_ = ~new_n59_ & ~new_n62_;
  assign new_n70_ = pA2 & pB2;
  assign new_n71_ = ~new_n69_ & ~new_n70_;
  assign new_n72_ = new_n68_ & ~new_n71_;
  assign new_n73_ = ~new_n68_ & new_n71_;
  assign r1 = new_n72_ | new_n73_;
  assign new_n75_ = ~pA0 & pB0;
  assign new_n76_ = pA0 & ~pB0;
  assign new_n77_ = ~new_n75_ & ~new_n76_;
  assign new_n78_ = ~new_n68_ & ~new_n71_;
  assign new_n79_ = pA1 & pB1;
  assign new_n80_ = ~new_n78_ & ~new_n79_;
  assign new_n81_ = new_n77_ & ~new_n80_;
  assign new_n82_ = ~new_n77_ & new_n80_;
  assign r0 = new_n81_ | new_n82_;
  assign new_n84_ = ~new_n77_ & ~new_n80_;
  assign new_n85_ = pA0 & pB0;
  assign cOut = new_n84_ | new_n85_;
endmodule


