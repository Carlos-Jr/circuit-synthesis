// Benchmark "CCarryLookaheadBlock_5_5_5_InOutT" written by ABC on Wed Oct 16 08:39:31 2019

module CCarryLookaheadBlock_5_5_5_InOutT ( 
    pA4, pA3, pA2, pA1, pA0, pB4, pB3, pB2, pB1, pB0, cIn,
    r4, r3, r2, r1, r0, cOut  );
  input  pA4, pA3, pA2, pA1, pA0, pB4, pB3, pB2, pB1, pB0, cIn;
  output r4, r3, r2, r1, r0, cOut;
  wire new_n18_, new_n19_, new_n20_, new_n21_, new_n22_, new_n24_, new_n25_,
    new_n26_, new_n27_, new_n28_, new_n29_, new_n30_, new_n31_, new_n33_,
    new_n34_, new_n35_, new_n36_, new_n37_, new_n38_, new_n39_, new_n40_,
    new_n41_, new_n42_, new_n44_, new_n45_, new_n46_, new_n47_, new_n48_,
    new_n49_, new_n50_, new_n51_, new_n52_, new_n53_, new_n54_, new_n55_,
    new_n57_, new_n58_, new_n59_, new_n60_, new_n61_, new_n62_, new_n63_,
    new_n64_, new_n65_, new_n66_, new_n67_, new_n68_, new_n69_, new_n70_,
    new_n72_, new_n73_;
  assign new_n18_ = ~pA4 & pB4;
  assign new_n19_ = pA4 & ~pB4;
  assign new_n20_ = ~new_n18_ & ~new_n19_;
  assign new_n21_ = cIn & new_n20_;
  assign new_n22_ = ~cIn & ~new_n20_;
  assign r4 = new_n21_ | new_n22_;
  assign new_n24_ = ~pA3 & pB3;
  assign new_n25_ = pA3 & ~pB3;
  assign new_n26_ = ~new_n24_ & ~new_n25_;
  assign new_n27_ = pA4 & pB4;
  assign new_n28_ = cIn & ~new_n20_;
  assign new_n29_ = ~new_n27_ & ~new_n28_;
  assign new_n30_ = new_n26_ & ~new_n29_;
  assign new_n31_ = ~new_n26_ & new_n29_;
  assign r3 = new_n30_ | new_n31_;
  assign new_n33_ = ~pA2 & pB2;
  assign new_n34_ = pA2 & ~pB2;
  assign new_n35_ = ~new_n33_ & ~new_n34_;
  assign new_n36_ = ~new_n26_ & new_n27_;
  assign new_n37_ = pA3 & pB3;
  assign new_n38_ = ~new_n26_ & new_n28_;
  assign new_n39_ = ~new_n36_ & ~new_n37_;
  assign new_n40_ = ~new_n38_ & new_n39_;
  assign new_n41_ = new_n35_ & ~new_n40_;
  assign new_n42_ = ~new_n35_ & new_n40_;
  assign r2 = new_n41_ | new_n42_;
  assign new_n44_ = ~pA1 & pB1;
  assign new_n45_ = pA1 & ~pB1;
  assign new_n46_ = ~new_n44_ & ~new_n45_;
  assign new_n47_ = ~new_n35_ & new_n37_;
  assign new_n48_ = ~new_n35_ & new_n36_;
  assign new_n49_ = pA2 & pB2;
  assign new_n50_ = ~new_n35_ & new_n38_;
  assign new_n51_ = ~new_n47_ & ~new_n49_;
  assign new_n52_ = ~new_n48_ & new_n51_;
  assign new_n53_ = ~new_n50_ & new_n52_;
  assign new_n54_ = new_n46_ & ~new_n53_;
  assign new_n55_ = ~new_n46_ & new_n53_;
  assign r1 = new_n54_ | new_n55_;
  assign new_n57_ = ~pA0 & pB0;
  assign new_n58_ = pA0 & ~pB0;
  assign new_n59_ = ~new_n57_ & ~new_n58_;
  assign new_n60_ = ~new_n46_ & new_n49_;
  assign new_n61_ = ~new_n46_ & new_n47_;
  assign new_n62_ = ~new_n46_ & new_n48_;
  assign new_n63_ = pA1 & pB1;
  assign new_n64_ = ~new_n46_ & new_n50_;
  assign new_n65_ = ~new_n60_ & ~new_n63_;
  assign new_n66_ = ~new_n61_ & new_n65_;
  assign new_n67_ = ~new_n62_ & new_n66_;
  assign new_n68_ = ~new_n64_ & new_n67_;
  assign new_n69_ = new_n59_ & ~new_n68_;
  assign new_n70_ = ~new_n59_ & new_n68_;
  assign r0 = new_n69_ | new_n70_;
  assign new_n72_ = pA0 & pB0;
  assign new_n73_ = ~new_n59_ & ~new_n68_;
  assign cOut = new_n72_ | new_n73_;
endmodule


