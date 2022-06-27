// Benchmark "CRippleCarryAdder_8_8_8_InOutT" written by ABC on Wed Oct 16 08:39:30 2019

module CRippleCarryAdder_8_8_8_InOutT ( 
    pA7, pA6, pA5, pA4, pA3, pA2, pA1, pA0, pB7, pB6, pB5, pB4, pB3, pB2,
    pB1, pB0, cIn,
    r7, r6, r5, r4, r3, r2, r1, r0, cOut  );
  input  pA7, pA6, pA5, pA4, pA3, pA2, pA1, pA0, pB7, pB6, pB5, pB4, pB3,
    pB2, pB1, pB0, cIn;
  output r7, r6, r5, r4, r3, r2, r1, r0, cOut;
  wire new_n27_, new_n28_, new_n29_, new_n30_, new_n31_, new_n33_, new_n34_,
    new_n35_, new_n36_, new_n37_, new_n38_, new_n39_, new_n40_, new_n42_,
    new_n43_, new_n44_, new_n45_, new_n46_, new_n47_, new_n48_, new_n49_,
    new_n51_, new_n52_, new_n53_, new_n54_, new_n55_, new_n56_, new_n57_,
    new_n58_, new_n60_, new_n61_, new_n62_, new_n63_, new_n64_, new_n65_,
    new_n66_, new_n67_, new_n69_, new_n70_, new_n71_, new_n72_, new_n73_,
    new_n74_, new_n75_, new_n76_, new_n78_, new_n79_, new_n80_, new_n81_,
    new_n82_, new_n83_, new_n84_, new_n85_, new_n87_, new_n88_, new_n89_,
    new_n90_, new_n91_, new_n92_, new_n93_, new_n94_, new_n96_, new_n97_;
  assign new_n27_ = ~pA7 & pB7;
  assign new_n28_ = pA7 & ~pB7;
  assign new_n29_ = ~new_n27_ & ~new_n28_;
  assign new_n30_ = cIn & new_n29_;
  assign new_n31_ = ~cIn & ~new_n29_;
  assign r7 = new_n30_ | new_n31_;
  assign new_n33_ = ~pA6 & pB6;
  assign new_n34_ = pA6 & ~pB6;
  assign new_n35_ = ~new_n33_ & ~new_n34_;
  assign new_n36_ = cIn & ~new_n29_;
  assign new_n37_ = pA7 & pB7;
  assign new_n38_ = ~new_n36_ & ~new_n37_;
  assign new_n39_ = new_n35_ & ~new_n38_;
  assign new_n40_ = ~new_n35_ & new_n38_;
  assign r6 = new_n39_ | new_n40_;
  assign new_n42_ = ~pA5 & pB5;
  assign new_n43_ = pA5 & ~pB5;
  assign new_n44_ = ~new_n42_ & ~new_n43_;
  assign new_n45_ = ~new_n35_ & ~new_n38_;
  assign new_n46_ = pA6 & pB6;
  assign new_n47_ = ~new_n45_ & ~new_n46_;
  assign new_n48_ = new_n44_ & ~new_n47_;
  assign new_n49_ = ~new_n44_ & new_n47_;
  assign r5 = new_n48_ | new_n49_;
  assign new_n51_ = ~pA4 & pB4;
  assign new_n52_ = pA4 & ~pB4;
  assign new_n53_ = ~new_n51_ & ~new_n52_;
  assign new_n54_ = ~new_n44_ & ~new_n47_;
  assign new_n55_ = pA5 & pB5;
  assign new_n56_ = ~new_n54_ & ~new_n55_;
  assign new_n57_ = new_n53_ & ~new_n56_;
  assign new_n58_ = ~new_n53_ & new_n56_;
  assign r4 = new_n57_ | new_n58_;
  assign new_n60_ = ~pA3 & pB3;
  assign new_n61_ = pA3 & ~pB3;
  assign new_n62_ = ~new_n60_ & ~new_n61_;
  assign new_n63_ = ~new_n53_ & ~new_n56_;
  assign new_n64_ = pA4 & pB4;
  assign new_n65_ = ~new_n63_ & ~new_n64_;
  assign new_n66_ = new_n62_ & ~new_n65_;
  assign new_n67_ = ~new_n62_ & new_n65_;
  assign r3 = new_n66_ | new_n67_;
  assign new_n69_ = ~pA2 & pB2;
  assign new_n70_ = pA2 & ~pB2;
  assign new_n71_ = ~new_n69_ & ~new_n70_;
  assign new_n72_ = ~new_n62_ & ~new_n65_;
  assign new_n73_ = pA3 & pB3;
  assign new_n74_ = ~new_n72_ & ~new_n73_;
  assign new_n75_ = new_n71_ & ~new_n74_;
  assign new_n76_ = ~new_n71_ & new_n74_;
  assign r2 = new_n75_ | new_n76_;
  assign new_n78_ = ~pA1 & pB1;
  assign new_n79_ = pA1 & ~pB1;
  assign new_n80_ = ~new_n78_ & ~new_n79_;
  assign new_n81_ = ~new_n71_ & ~new_n74_;
  assign new_n82_ = pA2 & pB2;
  assign new_n83_ = ~new_n81_ & ~new_n82_;
  assign new_n84_ = new_n80_ & ~new_n83_;
  assign new_n85_ = ~new_n80_ & new_n83_;
  assign r1 = new_n84_ | new_n85_;
  assign new_n87_ = ~pA0 & pB0;
  assign new_n88_ = pA0 & ~pB0;
  assign new_n89_ = ~new_n87_ & ~new_n88_;
  assign new_n90_ = ~new_n80_ & ~new_n83_;
  assign new_n91_ = pA1 & pB1;
  assign new_n92_ = ~new_n90_ & ~new_n91_;
  assign new_n93_ = new_n89_ & ~new_n92_;
  assign new_n94_ = ~new_n89_ & new_n92_;
  assign r0 = new_n93_ | new_n94_;
  assign new_n96_ = ~new_n89_ & ~new_n92_;
  assign new_n97_ = pA0 & pB0;
  assign cOut = new_n96_ | new_n97_;
endmodule


