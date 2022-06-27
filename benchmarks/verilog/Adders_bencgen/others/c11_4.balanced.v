// Benchmark "CRippleCarryAdder_4_4_4_InOutT" written by ABC on Wed Oct 16 08:39:30 2019

module CRippleCarryAdder_4_4_4_InOutT ( 
    pA3, pA2, pA1, pA0, pB3, pB2, pB1, pB0, cIn,
    r3, r2, r1, r0, cOut  );
  input  pA3, pA2, pA1, pA0, pB3, pB2, pB1, pB0, cIn;
  output r3, r2, r1, r0, cOut;
  wire new_n15_, new_n16_, new_n17_, new_n18_, new_n19_, new_n21_, new_n22_,
    new_n23_, new_n24_, new_n25_, new_n26_, new_n27_, new_n28_, new_n30_,
    new_n31_, new_n32_, new_n33_, new_n34_, new_n35_, new_n36_, new_n37_,
    new_n39_, new_n40_, new_n41_, new_n42_, new_n43_, new_n44_, new_n45_,
    new_n46_, new_n48_, new_n49_;
  assign new_n15_ = ~pA3 & pB3;
  assign new_n16_ = pA3 & ~pB3;
  assign new_n17_ = ~new_n15_ & ~new_n16_;
  assign new_n18_ = cIn & new_n17_;
  assign new_n19_ = ~cIn & ~new_n17_;
  assign r3 = new_n18_ | new_n19_;
  assign new_n21_ = ~pA2 & pB2;
  assign new_n22_ = pA2 & ~pB2;
  assign new_n23_ = ~new_n21_ & ~new_n22_;
  assign new_n24_ = cIn & ~new_n17_;
  assign new_n25_ = pA3 & pB3;
  assign new_n26_ = ~new_n24_ & ~new_n25_;
  assign new_n27_ = new_n23_ & ~new_n26_;
  assign new_n28_ = ~new_n23_ & new_n26_;
  assign r2 = new_n27_ | new_n28_;
  assign new_n30_ = ~pA1 & pB1;
  assign new_n31_ = pA1 & ~pB1;
  assign new_n32_ = ~new_n30_ & ~new_n31_;
  assign new_n33_ = ~new_n23_ & ~new_n26_;
  assign new_n34_ = pA2 & pB2;
  assign new_n35_ = ~new_n33_ & ~new_n34_;
  assign new_n36_ = new_n32_ & ~new_n35_;
  assign new_n37_ = ~new_n32_ & new_n35_;
  assign r1 = new_n36_ | new_n37_;
  assign new_n39_ = ~pA0 & pB0;
  assign new_n40_ = pA0 & ~pB0;
  assign new_n41_ = ~new_n39_ & ~new_n40_;
  assign new_n42_ = ~new_n32_ & ~new_n35_;
  assign new_n43_ = pA1 & pB1;
  assign new_n44_ = ~new_n42_ & ~new_n43_;
  assign new_n45_ = new_n41_ & ~new_n44_;
  assign new_n46_ = ~new_n41_ & new_n44_;
  assign r0 = new_n45_ | new_n46_;
  assign new_n48_ = ~new_n41_ & ~new_n44_;
  assign new_n49_ = pA0 & pB0;
  assign cOut = new_n48_ | new_n49_;
endmodule


