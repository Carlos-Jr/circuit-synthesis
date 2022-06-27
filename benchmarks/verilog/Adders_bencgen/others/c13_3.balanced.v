// Benchmark "CCarryLookahead_3_3_3_InOutT" written by ABC on Wed Oct 16 08:39:30 2019

module CCarryLookahead_3_3_3_InOutT ( 
    pA2, pA1, pA0, pB2, pB1, pB0, cIn,
    r2, r1, r0, cOut  );
  input  pA2, pA1, pA0, pB2, pB1, pB0, cIn;
  output r2, r1, r0, cOut;
  wire new_n12_, new_n13_, new_n14_, new_n15_, new_n16_, new_n18_, new_n19_,
    new_n20_, new_n21_, new_n22_, new_n23_, new_n24_, new_n25_, new_n27_,
    new_n28_, new_n29_, new_n30_, new_n31_, new_n32_, new_n33_, new_n34_,
    new_n35_, new_n36_, new_n38_, new_n39_, new_n40_, new_n41_, new_n42_,
    new_n43_;
  assign new_n12_ = ~pA2 & pB2;
  assign new_n13_ = pA2 & ~pB2;
  assign new_n14_ = ~new_n12_ & ~new_n13_;
  assign new_n15_ = cIn & new_n14_;
  assign new_n16_ = ~cIn & ~new_n14_;
  assign r2 = new_n15_ | new_n16_;
  assign new_n18_ = ~pA1 & pB1;
  assign new_n19_ = pA1 & ~pB1;
  assign new_n20_ = ~new_n18_ & ~new_n19_;
  assign new_n21_ = pA2 & pB2;
  assign new_n22_ = cIn & ~new_n14_;
  assign new_n23_ = ~new_n21_ & ~new_n22_;
  assign new_n24_ = new_n20_ & ~new_n23_;
  assign new_n25_ = ~new_n20_ & new_n23_;
  assign r1 = new_n24_ | new_n25_;
  assign new_n27_ = ~pA0 & pB0;
  assign new_n28_ = pA0 & ~pB0;
  assign new_n29_ = ~new_n27_ & ~new_n28_;
  assign new_n30_ = ~new_n20_ & new_n21_;
  assign new_n31_ = pA1 & pB1;
  assign new_n32_ = ~new_n20_ & new_n22_;
  assign new_n33_ = ~new_n30_ & ~new_n31_;
  assign new_n34_ = ~new_n32_ & new_n33_;
  assign new_n35_ = new_n29_ & ~new_n34_;
  assign new_n36_ = ~new_n29_ & new_n34_;
  assign r0 = new_n35_ | new_n36_;
  assign new_n38_ = ~new_n29_ & new_n31_;
  assign new_n39_ = ~new_n29_ & new_n30_;
  assign new_n40_ = pA0 & pB0;
  assign new_n41_ = ~new_n29_ & new_n32_;
  assign new_n42_ = ~new_n38_ & ~new_n40_;
  assign new_n43_ = ~new_n39_ & new_n42_;
  assign cOut = new_n41_ | ~new_n43_;
endmodule


