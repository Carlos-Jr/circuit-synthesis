// Benchmark "CCarryLookaheadBlock_4_4_4_InOutT" written by ABC on Wed Oct 16 08:39:31 2019

module CCarryLookaheadBlock_4_4_4_InOutT ( 
    pA3, pA2, pA1, pA0, pB3, pB2, pB1, pB0, cIn,
    r3, r2, r1, r0, cOut  );
  input  pA3, pA2, pA1, pA0, pB3, pB2, pB1, pB0, cIn;
  output r3, r2, r1, r0, cOut;
  wire new_n15_, new_n16_, new_n17_, new_n18_, new_n19_, new_n21_, new_n22_,
    new_n23_, new_n24_, new_n25_, new_n26_, new_n27_, new_n28_, new_n30_,
    new_n31_, new_n32_, new_n33_, new_n34_, new_n35_, new_n36_, new_n37_,
    new_n38_, new_n39_, new_n41_, new_n42_, new_n43_, new_n44_, new_n45_,
    new_n46_, new_n47_, new_n48_, new_n49_, new_n50_, new_n51_, new_n52_,
    new_n54_, new_n55_, new_n56_, new_n57_, new_n58_, new_n59_, new_n60_,
    new_n61_;
  assign new_n15_ = ~pA3 & pB3;
  assign new_n16_ = pA3 & ~pB3;
  assign new_n17_ = ~new_n15_ & ~new_n16_;
  assign new_n18_ = cIn & new_n17_;
  assign new_n19_ = ~cIn & ~new_n17_;
  assign r3 = new_n18_ | new_n19_;
  assign new_n21_ = ~pA2 & pB2;
  assign new_n22_ = pA2 & ~pB2;
  assign new_n23_ = ~new_n21_ & ~new_n22_;
  assign new_n24_ = pA3 & pB3;
  assign new_n25_ = cIn & ~new_n17_;
  assign new_n26_ = ~new_n24_ & ~new_n25_;
  assign new_n27_ = new_n23_ & ~new_n26_;
  assign new_n28_ = ~new_n23_ & new_n26_;
  assign r2 = new_n27_ | new_n28_;
  assign new_n30_ = ~pA1 & pB1;
  assign new_n31_ = pA1 & ~pB1;
  assign new_n32_ = ~new_n30_ & ~new_n31_;
  assign new_n33_ = ~new_n23_ & new_n24_;
  assign new_n34_ = pA2 & pB2;
  assign new_n35_ = ~new_n23_ & new_n25_;
  assign new_n36_ = ~new_n33_ & ~new_n34_;
  assign new_n37_ = ~new_n35_ & new_n36_;
  assign new_n38_ = new_n32_ & ~new_n37_;
  assign new_n39_ = ~new_n32_ & new_n37_;
  assign r1 = new_n38_ | new_n39_;
  assign new_n41_ = ~pA0 & pB0;
  assign new_n42_ = pA0 & ~pB0;
  assign new_n43_ = ~new_n41_ & ~new_n42_;
  assign new_n44_ = ~new_n32_ & new_n34_;
  assign new_n45_ = ~new_n32_ & new_n33_;
  assign new_n46_ = pA1 & pB1;
  assign new_n47_ = ~new_n32_ & new_n35_;
  assign new_n48_ = ~new_n44_ & ~new_n46_;
  assign new_n49_ = ~new_n45_ & new_n48_;
  assign new_n50_ = ~new_n47_ & new_n49_;
  assign new_n51_ = new_n43_ & ~new_n50_;
  assign new_n52_ = ~new_n43_ & new_n50_;
  assign r0 = new_n51_ | new_n52_;
  assign new_n54_ = ~new_n43_ & new_n46_;
  assign new_n55_ = ~new_n43_ & new_n44_;
  assign new_n56_ = ~new_n43_ & new_n45_;
  assign new_n57_ = pA0 & pB0;
  assign new_n58_ = ~new_n43_ & new_n47_;
  assign new_n59_ = ~new_n54_ & ~new_n57_;
  assign new_n60_ = ~new_n55_ & new_n59_;
  assign new_n61_ = ~new_n56_ & new_n60_;
  assign cOut = new_n58_ | ~new_n61_;
endmodule


