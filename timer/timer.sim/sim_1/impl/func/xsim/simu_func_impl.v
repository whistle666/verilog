// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Dec  1 18:27:26 2025
// Host        : DESKTOP-9COANIV running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Vidado/projext/timer/timer.sim/sim_1/impl/func/xsim/simu_func_impl.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clock
   (D,
    set_out,
    SR,
    rst_n,
    CLK,
    Q,
    \displaynum_reg[3] ,
    dir_IBUF,
    load_IBUF,
    rst_n_IBUF,
    \displaynum_reg[2] );
  output [3:0]D;
  output set_out;
  output [0:0]SR;
  output [0:0]rst_n;
  input CLK;
  input [5:0]Q;
  input \displaynum_reg[3] ;
  input dir_IBUF;
  input load_IBUF;
  input rst_n_IBUF;
  input \displaynum_reg[2] ;

  wire CLK;
  wire [3:0]D;
  wire [5:0]Q;
  wire [0:0]SR;
  wire carry_f;
  wire carry_m;
  wire dir_IBUF;
  wire \displaynum_reg[2] ;
  wire \displaynum_reg[3] ;
  wire [0:0]f;
  wire inst1_n_4;
  wire inst1_n_5;
  wire inst1_n_7;
  wire inst2_n_1;
  wire inst2_n_10;
  wire inst2_n_3;
  wire inst2_n_4;
  wire inst2_n_5;
  wire inst2_n_6;
  wire inst2_n_7;
  wire inst2_n_8;
  wire inst2_n_9;
  wire inst3_n_1;
  wire inst3_n_3;
  wire inst3_n_5;
  wire load_IBUF;
  wire [0:0]rst_n;
  wire rst_n_IBUF;
  wire [0:0]s;
  wire set_out;

  counter inst1
       (.CLK(CLK),
        .D(D[2:0]),
        .Q(Q[1:0]),
        .SR(SR),
        .\an_reg[0] (inst1_n_7),
        .carry_m(carry_m),
        .carry_reg_0(inst1_n_5),
        .\cnt_r_reg[0]_0 (f),
        .\cnt_r_reg[1]_0 (inst1_n_4),
        .dir_IBUF(dir_IBUF),
        .\displaynum_reg[0] (inst2_n_10),
        .\displaynum_reg[0]_0 (inst3_n_1),
        .\displaynum_reg[1] (inst2_n_8),
        .\displaynum_reg[1]_0 (inst3_n_3),
        .\displaynum_reg[2] (inst2_n_9),
        .\displaynum_reg[2]_0 (inst2_n_5),
        .load_IBUF(load_IBUF),
        .rst_n_IBUF(rst_n_IBUF));
  counter__parameterized0 inst2
       (.CLK(CLK),
        .D(inst2_n_7),
        .Q(f),
        .SR(SR),
        .\an_reg[2] (inst2_n_5),
        .\an_reg[2]_0 (inst2_n_8),
        .\an_reg[2]_1 (inst2_n_9),
        .\an_reg[2]_2 (inst2_n_10),
        .carry_f(carry_f),
        .carry_m(carry_m),
        .\cnt_r_reg[0]_0 (s),
        .\cnt_r_reg[0]_1 (inst1_n_5),
        .\cnt_r_reg[1]_0 (inst2_n_3),
        .\cnt_r_reg[2]_0 (inst2_n_6),
        .\cnt_r_reg[3]_0 (inst2_n_1),
        .\cnt_r_reg[3]_1 (inst2_n_4),
        .dir_IBUF(dir_IBUF),
        .\displaynum_reg[2] (inst3_n_5),
        .\displaynum_reg[2]_0 (\displaynum_reg[2] ),
        .\displaynum_reg[2]_1 (Q[3:1]),
        .load_IBUF(load_IBUF),
        .rst_n_IBUF(rst_n_IBUF));
  counter__parameterized1 inst3
       (.CLK(CLK),
        .D(D[3]),
        .Q(Q[5:2]),
        .SR(SR),
        .\an_reg[2] (inst3_n_1),
        .\an_reg[4] (inst3_n_5),
        .\an_reg[5] (inst3_n_3),
        .carry_f(carry_f),
        .\cnt_r_reg[0]_0 (s),
        .\cnt_r_reg[0]_1 (inst2_n_7),
        .dir_IBUF(dir_IBUF),
        .\displaynum_reg[0] (inst2_n_1),
        .\displaynum_reg[1] (inst2_n_4),
        .\displaynum_reg[3] (inst2_n_3),
        .\displaynum_reg[3]_0 (\displaynum_reg[3] ),
        .\displaynum_reg[3]_1 (inst1_n_7),
        .\led_cnt_reg[0] (inst2_n_6),
        .\led_cnt_reg[0]_0 (inst1_n_4),
        .load_IBUF(load_IBUF),
        .rst_n(rst_n),
        .rst_n_IBUF(rst_n_IBUF),
        .set_out(set_out));
endmodule

module counter
   (carry_m,
    D,
    \cnt_r_reg[1]_0 ,
    carry_reg_0,
    SR,
    \an_reg[0] ,
    CLK,
    \displaynum_reg[2] ,
    Q,
    \displaynum_reg[2]_0 ,
    \displaynum_reg[0] ,
    \displaynum_reg[0]_0 ,
    \displaynum_reg[1] ,
    \displaynum_reg[1]_0 ,
    dir_IBUF,
    load_IBUF,
    rst_n_IBUF,
    \cnt_r_reg[0]_0 );
  output carry_m;
  output [2:0]D;
  output \cnt_r_reg[1]_0 ;
  output [0:0]carry_reg_0;
  output [0:0]SR;
  output \an_reg[0] ;
  input CLK;
  input \displaynum_reg[2] ;
  input [1:0]Q;
  input \displaynum_reg[2]_0 ;
  input \displaynum_reg[0] ;
  input \displaynum_reg[0]_0 ;
  input \displaynum_reg[1] ;
  input \displaynum_reg[1]_0 ;
  input dir_IBUF;
  input load_IBUF;
  input rst_n_IBUF;
  input [0:0]\cnt_r_reg[0]_0 ;

  wire CLK;
  wire [2:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \an_reg[0] ;
  wire carry_i_1_n_0;
  wire carry_i_3_n_0;
  wire carry_i_4_n_0;
  wire carry_i_5_n_0;
  wire carry_i_6_n_0;
  wire carry_i_7_n_0;
  wire carry_m;
  wire [0:0]carry_reg_0;
  wire [26:0]cnt;
  wire cnt0_carry__0_n_0;
  wire cnt0_carry__0_n_4;
  wire cnt0_carry__0_n_5;
  wire cnt0_carry__0_n_6;
  wire cnt0_carry__0_n_7;
  wire cnt0_carry__1_n_0;
  wire cnt0_carry__1_n_4;
  wire cnt0_carry__1_n_5;
  wire cnt0_carry__1_n_6;
  wire cnt0_carry__1_n_7;
  wire cnt0_carry__2_n_0;
  wire cnt0_carry__2_n_4;
  wire cnt0_carry__2_n_5;
  wire cnt0_carry__2_n_6;
  wire cnt0_carry__2_n_7;
  wire cnt0_carry__3_n_0;
  wire cnt0_carry__3_n_4;
  wire cnt0_carry__3_n_5;
  wire cnt0_carry__3_n_6;
  wire cnt0_carry__3_n_7;
  wire cnt0_carry__4_n_0;
  wire cnt0_carry__4_n_4;
  wire cnt0_carry__4_n_5;
  wire cnt0_carry__4_n_6;
  wire cnt0_carry__4_n_7;
  wire cnt0_carry__5_n_6;
  wire cnt0_carry__5_n_7;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_4;
  wire cnt0_carry_n_5;
  wire cnt0_carry_n_6;
  wire cnt0_carry_n_7;
  wire \cnt[26]_i_2_n_0 ;
  wire \cnt[26]_i_3_n_0 ;
  wire \cnt[26]_i_4_n_0 ;
  wire \cnt[26]_i_5_n_0 ;
  wire \cnt[26]_i_6_n_0 ;
  wire \cnt[26]_i_7_n_0 ;
  wire \cnt[26]_i_8_n_0 ;
  wire \cnt_r[0]_i_1_n_0 ;
  wire \cnt_r[1]_i_1__0_n_0 ;
  wire \cnt_r[2]_i_1_n_0 ;
  wire \cnt_r[2]_i_2_n_0 ;
  wire \cnt_r[2]_i_3_n_0 ;
  wire \cnt_r[3]_i_1_n_0 ;
  wire \cnt_r[3]_i_2__1_n_0 ;
  wire \cnt_r[3]_i_3__1_n_0 ;
  wire \cnt_r[4]_i_1_n_0 ;
  wire \cnt_r[4]_i_2_n_0 ;
  wire \cnt_r[4]_i_3__0_n_0 ;
  wire \cnt_r[5]_i_1_n_0 ;
  wire \cnt_r[5]_i_2_n_0 ;
  wire \cnt_r[5]_i_3_n_0 ;
  wire \cnt_r[5]_i_4_n_0 ;
  wire [0:0]\cnt_r_reg[0]_0 ;
  wire \cnt_r_reg[1]_0 ;
  wire \cnt_r_reg_n_0_[0] ;
  wire \cnt_r_reg_n_0_[1] ;
  wire \cnt_r_reg_n_0_[2] ;
  wire \cnt_r_reg_n_0_[3] ;
  wire dir_IBUF;
  wire \displaynum[0]_i_2_n_0 ;
  wire \displaynum[1]_i_2_n_0 ;
  wire \displaynum[1]_i_5_n_0 ;
  wire \displaynum[2]_i_2_n_0 ;
  wire \displaynum[2]_i_5_n_0 ;
  wire \displaynum_reg[0] ;
  wire \displaynum_reg[0]_0 ;
  wire \displaynum_reg[1] ;
  wire \displaynum_reg[1]_0 ;
  wire \displaynum_reg[2] ;
  wire \displaynum_reg[2]_0 ;
  wire \inst2/carry0_out ;
  wire \inst4/ones10 ;
  wire load_IBUF;
  wire p_0_in0;
  wire rst_n_IBUF;
  wire [26:0]sel0;
  wire [2:0]NLW_cnt0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_cnt0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_cnt0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_cnt0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_cnt0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_cnt0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_cnt0_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_cnt0_carry__5_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h222222222EFF2222)) 
    carry_i_1
       (.I0(carry_m),
        .I1(\inst2/carry0_out ),
        .I2(carry_i_3_n_0),
        .I3(carry_i_4_n_0),
        .I4(\cnt[26]_i_4_n_0 ),
        .I5(carry_i_5_n_0),
        .O(carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    carry_i_2
       (.I0(rst_n_IBUF),
        .I1(load_IBUF),
        .O(\inst2/carry0_out ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    carry_i_3
       (.I0(dir_IBUF),
        .I1(\cnt_r[4]_i_2_n_0 ),
        .I2(p_0_in0),
        .I3(\cnt_r_reg_n_0_[3] ),
        .I4(\inst4/ones10 ),
        .O(carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hFBFF)) 
    carry_i_4
       (.I0(\cnt_r[3]_i_3__1_n_0 ),
        .I1(rst_n_IBUF),
        .I2(load_IBUF),
        .I3(dir_IBUF),
        .O(carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    carry_i_5
       (.I0(\cnt[26]_i_5_n_0 ),
        .I1(carry_i_6_n_0),
        .I2(\cnt[26]_i_6_n_0 ),
        .I3(carry_i_7_n_0),
        .O(carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    carry_i_6
       (.I0(sel0[1]),
        .I1(sel0[5]),
        .I2(sel0[24]),
        .I3(sel0[11]),
        .O(carry_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    carry_i_7
       (.I0(sel0[21]),
        .I1(sel0[3]),
        .I2(sel0[19]),
        .I3(sel0[8]),
        .O(carry_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    carry_reg
       (.C(CLK),
        .CE(1'b1),
        .D(carry_i_1_n_0),
        .Q(carry_m),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 cnt0_carry
       (.CI(1'b0),
        .CO({cnt0_carry_n_0,NLW_cnt0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(sel0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry_n_4,cnt0_carry_n_5,cnt0_carry_n_6,cnt0_carry_n_7}),
        .S(sel0[4:1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 cnt0_carry__0
       (.CI(cnt0_carry_n_0),
        .CO({cnt0_carry__0_n_0,NLW_cnt0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry__0_n_4,cnt0_carry__0_n_5,cnt0_carry__0_n_6,cnt0_carry__0_n_7}),
        .S(sel0[8:5]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 cnt0_carry__1
       (.CI(cnt0_carry__0_n_0),
        .CO({cnt0_carry__1_n_0,NLW_cnt0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry__1_n_4,cnt0_carry__1_n_5,cnt0_carry__1_n_6,cnt0_carry__1_n_7}),
        .S(sel0[12:9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 cnt0_carry__2
       (.CI(cnt0_carry__1_n_0),
        .CO({cnt0_carry__2_n_0,NLW_cnt0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry__2_n_4,cnt0_carry__2_n_5,cnt0_carry__2_n_6,cnt0_carry__2_n_7}),
        .S(sel0[16:13]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 cnt0_carry__3
       (.CI(cnt0_carry__2_n_0),
        .CO({cnt0_carry__3_n_0,NLW_cnt0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry__3_n_4,cnt0_carry__3_n_5,cnt0_carry__3_n_6,cnt0_carry__3_n_7}),
        .S(sel0[20:17]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 cnt0_carry__4
       (.CI(cnt0_carry__3_n_0),
        .CO({cnt0_carry__4_n_0,NLW_cnt0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry__4_n_4,cnt0_carry__4_n_5,cnt0_carry__4_n_6,cnt0_carry__4_n_7}),
        .S(sel0[24:21]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 cnt0_carry__5
       (.CI(cnt0_carry__4_n_0),
        .CO(NLW_cnt0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt0_carry__5_O_UNCONNECTED[3:2],cnt0_carry__5_n_6,cnt0_carry__5_n_7}),
        .S({1'b0,1'b0,sel0[26:25]}));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(sel0[0]),
        .O(cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[10]_i_1 
       (.I0(cnt0_carry__1_n_6),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[11]_i_1 
       (.I0(cnt0_carry__1_n_5),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[12]_i_1 
       (.I0(cnt0_carry__1_n_4),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[13]_i_1 
       (.I0(cnt0_carry__2_n_7),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[13]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[14]_i_1 
       (.I0(cnt0_carry__2_n_6),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[15]_i_1 
       (.I0(cnt0_carry__2_n_5),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[15]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[16]_i_1 
       (.I0(cnt0_carry__2_n_4),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[16]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[17]_i_1 
       (.I0(cnt0_carry__3_n_7),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[17]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[18]_i_1 
       (.I0(cnt0_carry__3_n_6),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[18]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[19]_i_1 
       (.I0(cnt0_carry__3_n_5),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[19]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[1]_i_1 
       (.I0(cnt0_carry_n_7),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[20]_i_1 
       (.I0(cnt0_carry__3_n_4),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[21]_i_1 
       (.I0(cnt0_carry__4_n_7),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[21]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[22]_i_1 
       (.I0(cnt0_carry__4_n_6),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[22]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[23]_i_1 
       (.I0(cnt0_carry__4_n_5),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[23]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[24]_i_1 
       (.I0(cnt0_carry__4_n_4),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[24]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[25]_i_1 
       (.I0(cnt0_carry__5_n_7),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[26]_i_1 
       (.I0(cnt0_carry__5_n_6),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[26]));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \cnt[26]_i_2 
       (.I0(sel0[11]),
        .I1(sel0[24]),
        .I2(sel0[5]),
        .I3(sel0[1]),
        .I4(\cnt[26]_i_5_n_0 ),
        .O(\cnt[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \cnt[26]_i_3 
       (.I0(sel0[8]),
        .I1(sel0[19]),
        .I2(sel0[3]),
        .I3(sel0[21]),
        .I4(\cnt[26]_i_6_n_0 ),
        .O(\cnt[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \cnt[26]_i_4 
       (.I0(sel0[2]),
        .I1(sel0[16]),
        .I2(sel0[23]),
        .I3(\cnt[26]_i_7_n_0 ),
        .I4(\cnt[26]_i_8_n_0 ),
        .O(\cnt[26]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \cnt[26]_i_5 
       (.I0(sel0[17]),
        .I1(sel0[10]),
        .I2(sel0[20]),
        .I3(sel0[13]),
        .O(\cnt[26]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[26]_i_6 
       (.I0(sel0[26]),
        .I1(sel0[22]),
        .I2(sel0[14]),
        .I3(sel0[7]),
        .O(\cnt[26]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[26]_i_7 
       (.I0(sel0[4]),
        .I1(sel0[6]),
        .I2(sel0[15]),
        .I3(sel0[0]),
        .O(\cnt[26]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \cnt[26]_i_8 
       (.I0(sel0[12]),
        .I1(sel0[25]),
        .I2(sel0[18]),
        .I3(sel0[9]),
        .O(\cnt[26]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[2]_i_1__0 
       (.I0(cnt0_carry_n_6),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[3]_i_1__0 
       (.I0(cnt0_carry_n_5),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[4]_i_1__0 
       (.I0(cnt0_carry_n_4),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[5]_i_1__0 
       (.I0(cnt0_carry__0_n_7),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[6]_i_1__0 
       (.I0(cnt0_carry__0_n_6),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[7]_i_1__0 
       (.I0(cnt0_carry__0_n_5),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[8]_i_1__0 
       (.I0(cnt0_carry__0_n_4),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt[9]_i_1 
       (.I0(cnt0_carry__1_n_7),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(cnt[9]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_r[0]_i_1 
       (.I0(\cnt_r_reg_n_0_[0] ),
        .I1(load_IBUF),
        .O(\cnt_r[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h14)) 
    \cnt_r[0]_i_1__0 
       (.I0(load_IBUF),
        .I1(carry_m),
        .I2(\cnt_r_reg[0]_0 ),
        .O(carry_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h1441)) 
    \cnt_r[1]_i_1__0 
       (.I0(load_IBUF),
        .I1(\cnt_r_reg_n_0_[0] ),
        .I2(\cnt_r_reg_n_0_[1] ),
        .I3(dir_IBUF),
        .O(\cnt_r[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0454540404040404)) 
    \cnt_r[2]_i_1 
       (.I0(load_IBUF),
        .I1(\cnt_r[2]_i_2_n_0 ),
        .I2(dir_IBUF),
        .I3(\cnt_r_reg_n_0_[2] ),
        .I4(\cnt_r[2]_i_3_n_0 ),
        .I5(\cnt_r[3]_i_3__1_n_0 ),
        .O(\cnt_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00000000FE)) 
    \cnt_r[2]_i_2 
       (.I0(p_0_in0),
        .I1(\cnt_r_reg_n_0_[3] ),
        .I2(\inst4/ones10 ),
        .I3(\cnt_r_reg_n_0_[0] ),
        .I4(\cnt_r_reg_n_0_[1] ),
        .I5(\cnt_r_reg_n_0_[2] ),
        .O(\cnt_r[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_r[2]_i_3 
       (.I0(\cnt_r_reg_n_0_[0] ),
        .I1(\cnt_r_reg_n_0_[1] ),
        .O(\cnt_r[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0514501400140014)) 
    \cnt_r[3]_i_1 
       (.I0(load_IBUF),
        .I1(\cnt_r[4]_i_2_n_0 ),
        .I2(\cnt_r_reg_n_0_[3] ),
        .I3(dir_IBUF),
        .I4(\cnt_r[3]_i_2__1_n_0 ),
        .I5(\cnt_r[3]_i_3__1_n_0 ),
        .O(\cnt_r[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \cnt_r[3]_i_2__1 
       (.I0(\cnt_r_reg_n_0_[1] ),
        .I1(\cnt_r_reg_n_0_[0] ),
        .I2(\cnt_r_reg_n_0_[2] ),
        .O(\cnt_r[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \cnt_r[3]_i_3__1 
       (.I0(\cnt_r_reg_n_0_[2] ),
        .I1(\cnt_r_reg_n_0_[3] ),
        .I2(\inst4/ones10 ),
        .I3(\cnt_r_reg_n_0_[1] ),
        .I4(\cnt_r_reg_n_0_[0] ),
        .I5(p_0_in0),
        .O(\cnt_r[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h5555510400005104)) 
    \cnt_r[4]_i_1 
       (.I0(load_IBUF),
        .I1(\cnt_r[4]_i_2_n_0 ),
        .I2(\cnt_r_reg_n_0_[3] ),
        .I3(p_0_in0),
        .I4(dir_IBUF),
        .I5(\cnt_r[4]_i_3__0_n_0 ),
        .O(\cnt_r[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cnt_r[4]_i_2 
       (.I0(\cnt_r_reg_n_0_[1] ),
        .I1(\cnt_r_reg_n_0_[0] ),
        .I2(\cnt_r_reg_n_0_[2] ),
        .O(\cnt_r[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFFFFFC0000000)) 
    \cnt_r[4]_i_3__0 
       (.I0(\inst4/ones10 ),
        .I1(\cnt_r_reg_n_0_[2] ),
        .I2(\cnt_r_reg_n_0_[0] ),
        .I3(\cnt_r_reg_n_0_[1] ),
        .I4(\cnt_r_reg_n_0_[3] ),
        .I5(p_0_in0),
        .O(\cnt_r[4]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hABAA)) 
    \cnt_r[5]_i_1 
       (.I0(load_IBUF),
        .I1(\cnt[26]_i_2_n_0 ),
        .I2(\cnt[26]_i_3_n_0 ),
        .I3(\cnt[26]_i_4_n_0 ),
        .O(\cnt_r[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55140014)) 
    \cnt_r[5]_i_2 
       (.I0(load_IBUF),
        .I1(\cnt_r[5]_i_3_n_0 ),
        .I2(\inst4/ones10 ),
        .I3(dir_IBUF),
        .I4(\cnt_r[5]_i_4_n_0 ),
        .O(\cnt_r[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cnt_r[5]_i_3 
       (.I0(\cnt_r_reg_n_0_[2] ),
        .I1(\cnt_r_reg_n_0_[0] ),
        .I2(\cnt_r_reg_n_0_[1] ),
        .I3(p_0_in0),
        .I4(\cnt_r_reg_n_0_[3] ),
        .O(\cnt_r[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FFFFF80000000)) 
    \cnt_r[5]_i_4 
       (.I0(\cnt_r_reg_n_0_[3] ),
        .I1(\cnt_r_reg_n_0_[1] ),
        .I2(\cnt_r_reg_n_0_[0] ),
        .I3(\cnt_r_reg_n_0_[2] ),
        .I4(p_0_in0),
        .I5(\inst4/ones10 ),
        .O(\cnt_r[5]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[0] 
       (.C(CLK),
        .CE(\cnt_r[5]_i_1_n_0 ),
        .D(\cnt_r[0]_i_1_n_0 ),
        .Q(\cnt_r_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[1] 
       (.C(CLK),
        .CE(\cnt_r[5]_i_1_n_0 ),
        .D(\cnt_r[1]_i_1__0_n_0 ),
        .Q(\cnt_r_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[2] 
       (.C(CLK),
        .CE(\cnt_r[5]_i_1_n_0 ),
        .D(\cnt_r[2]_i_1_n_0 ),
        .Q(\cnt_r_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[3] 
       (.C(CLK),
        .CE(\cnt_r[5]_i_1_n_0 ),
        .D(\cnt_r[3]_i_1_n_0 ),
        .Q(\cnt_r_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[4] 
       (.C(CLK),
        .CE(\cnt_r[5]_i_1_n_0 ),
        .D(\cnt_r[4]_i_1_n_0 ),
        .Q(p_0_in0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[5] 
       (.C(CLK),
        .CE(\cnt_r[5]_i_1_n_0 ),
        .D(\cnt_r[5]_i_2_n_0 ),
        .Q(\inst4/ones10 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[0]),
        .Q(sel0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[10]),
        .Q(sel0[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[11]),
        .Q(sel0[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[12]),
        .Q(sel0[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[13]),
        .Q(sel0[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[14]),
        .Q(sel0[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[15]),
        .Q(sel0[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[16]),
        .Q(sel0[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[17]),
        .Q(sel0[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[18]),
        .Q(sel0[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[19]),
        .Q(sel0[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[1]),
        .Q(sel0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[20]),
        .Q(sel0[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[21]),
        .Q(sel0[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[22]),
        .Q(sel0[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[23]),
        .Q(sel0[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[24]),
        .Q(sel0[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[25]),
        .Q(sel0[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[26]),
        .Q(sel0[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[2]),
        .Q(sel0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[3]),
        .Q(sel0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[4]),
        .Q(sel0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[5]),
        .Q(sel0[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[6]),
        .Q(sel0[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[7]),
        .Q(sel0[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[8]),
        .Q(sel0[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[9]),
        .Q(sel0[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h111FFFFF111F0000)) 
    \displaynum[0]_i_1 
       (.I0(\displaynum[0]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\displaynum_reg[0] ),
        .I3(\displaynum_reg[0]_0 ),
        .I4(Q[0]),
        .I5(\cnt_r_reg_n_0_[0] ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h8C639CE7)) 
    \displaynum[0]_i_2 
       (.I0(\cnt_r_reg_n_0_[2] ),
        .I1(\cnt_r_reg_n_0_[3] ),
        .I2(p_0_in0),
        .I3(\inst4/ones10 ),
        .I4(\cnt_r_reg_n_0_[1] ),
        .O(\displaynum[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD0D0D010)) 
    \displaynum[1]_i_1 
       (.I0(\displaynum[1]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\displaynum_reg[1] ),
        .I4(\displaynum_reg[1]_0 ),
        .I5(\displaynum[1]_i_5_n_0 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h7C1F)) 
    \displaynum[1]_i_2 
       (.I0(\cnt_r_reg_n_0_[2] ),
        .I1(\cnt_r_reg_n_0_[3] ),
        .I2(p_0_in0),
        .I3(\inst4/ones10 ),
        .O(\displaynum[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4050140514050140)) 
    \displaynum[1]_i_5 
       (.I0(Q[0]),
        .I1(\cnt_r_reg_n_0_[2] ),
        .I2(\cnt_r_reg_n_0_[3] ),
        .I3(p_0_in0),
        .I4(\inst4/ones10 ),
        .I5(\cnt_r_reg_n_0_[1] ),
        .O(\displaynum[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFAAAAFABAAAAA)) 
    \displaynum[2]_i_1 
       (.I0(\displaynum[2]_i_2_n_0 ),
        .I1(\displaynum_reg[2] ),
        .I2(Q[1]),
        .I3(\displaynum_reg[2]_0 ),
        .I4(Q[0]),
        .I5(\displaynum[2]_i_5_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0441104410441104)) 
    \displaynum[2]_i_2 
       (.I0(Q[0]),
        .I1(\cnt_r_reg_n_0_[2] ),
        .I2(\cnt_r_reg_n_0_[3] ),
        .I3(p_0_in0),
        .I4(\inst4/ones10 ),
        .I5(\cnt_r_reg_n_0_[1] ),
        .O(\displaynum[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \displaynum[2]_i_5 
       (.I0(p_0_in0),
        .I1(\cnt_r_reg_n_0_[3] ),
        .I2(\inst4/ones10 ),
        .O(\displaynum[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0004401010000140)) 
    \displaynum[3]_i_5 
       (.I0(Q[0]),
        .I1(\inst4/ones10 ),
        .I2(p_0_in0),
        .I3(\cnt_r_reg_n_0_[3] ),
        .I4(\cnt_r_reg_n_0_[2] ),
        .I5(\cnt_r_reg_n_0_[1] ),
        .O(\an_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    en_i_1
       (.I0(rst_n_IBUF),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    en_i_12
       (.I0(\cnt_r_reg_n_0_[1] ),
        .I1(\cnt_r_reg_n_0_[2] ),
        .I2(\cnt_r_reg_n_0_[0] ),
        .I3(\cnt_r_reg_n_0_[3] ),
        .I4(p_0_in0),
        .I5(\inst4/ones10 ),
        .O(\cnt_r_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module counter__parameterized0
   (carry_f,
    \cnt_r_reg[3]_0 ,
    Q,
    \cnt_r_reg[1]_0 ,
    \cnt_r_reg[3]_1 ,
    \an_reg[2] ,
    \cnt_r_reg[2]_0 ,
    D,
    \an_reg[2]_0 ,
    \an_reg[2]_1 ,
    \an_reg[2]_2 ,
    CLK,
    load_IBUF,
    dir_IBUF,
    carry_m,
    \displaynum_reg[2] ,
    \displaynum_reg[2]_0 ,
    \displaynum_reg[2]_1 ,
    \cnt_r_reg[0]_0 ,
    rst_n_IBUF,
    SR,
    \cnt_r_reg[0]_1 );
  output carry_f;
  output \cnt_r_reg[3]_0 ;
  output [0:0]Q;
  output \cnt_r_reg[1]_0 ;
  output \cnt_r_reg[3]_1 ;
  output \an_reg[2] ;
  output \cnt_r_reg[2]_0 ;
  output [0:0]D;
  output \an_reg[2]_0 ;
  output \an_reg[2]_1 ;
  output \an_reg[2]_2 ;
  input CLK;
  input load_IBUF;
  input dir_IBUF;
  input carry_m;
  input \displaynum_reg[2] ;
  input \displaynum_reg[2]_0 ;
  input [2:0]\displaynum_reg[2]_1 ;
  input [0:0]\cnt_r_reg[0]_0 ;
  input rst_n_IBUF;
  input [0:0]SR;
  input [0:0]\cnt_r_reg[0]_1 ;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \an_reg[2] ;
  wire \an_reg[2]_0 ;
  wire \an_reg[2]_1 ;
  wire \an_reg[2]_2 ;
  wire carry_f;
  wire carry_i_1__0_n_0;
  wire carry_m;
  wire \cnt_r[1]_i_1_n_0 ;
  wire \cnt_r[2]_i_1__0_n_0 ;
  wire \cnt_r[2]_i_2__0_n_0 ;
  wire \cnt_r[2]_i_3__0_n_0 ;
  wire \cnt_r[2]_i_4_n_0 ;
  wire \cnt_r[3]_i_1__0_n_0 ;
  wire \cnt_r[3]_i_2_n_0 ;
  wire \cnt_r[3]_i_3__0_n_0 ;
  wire \cnt_r[4]_i_1__0_n_0 ;
  wire \cnt_r[4]_i_2__0_n_0 ;
  wire \cnt_r[4]_i_3_n_0 ;
  wire \cnt_r[5]_i_1__0_n_0 ;
  wire \cnt_r[5]_i_2__0_n_0 ;
  wire \cnt_r[5]_i_3__0_n_0 ;
  wire [0:0]\cnt_r_reg[0]_0 ;
  wire [0:0]\cnt_r_reg[0]_1 ;
  wire \cnt_r_reg[1]_0 ;
  wire \cnt_r_reg[2]_0 ;
  wire \cnt_r_reg[3]_0 ;
  wire \cnt_r_reg[3]_1 ;
  wire dir_IBUF;
  wire \displaynum[2]_i_8_n_0 ;
  wire \displaynum_reg[2] ;
  wire \displaynum_reg[2]_0 ;
  wire [2:0]\displaynum_reg[2]_1 ;
  wire [5:1]f;
  wire load_IBUF;
  wire rst_n_IBUF;

  LUT5 #(
    .INIT(32'hFF1F0010)) 
    carry_i_1__0
       (.I0(\cnt_r[2]_i_3__0_n_0 ),
        .I1(\cnt_r[3]_i_2_n_0 ),
        .I2(rst_n_IBUF),
        .I3(load_IBUF),
        .I4(carry_f),
        .O(carry_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    carry_reg
       (.C(CLK),
        .CE(1'b1),
        .D(carry_i_1__0_n_0),
        .Q(carry_f),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h14)) 
    \cnt_r[0]_i_1__1 
       (.I0(load_IBUF),
        .I1(carry_f),
        .I2(\cnt_r_reg[0]_0 ),
        .O(D));
  LUT5 #(
    .INIT(32'h15454010)) 
    \cnt_r[1]_i_1 
       (.I0(load_IBUF),
        .I1(dir_IBUF),
        .I2(carry_m),
        .I3(Q),
        .I4(f[1]),
        .O(\cnt_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0455044055400440)) 
    \cnt_r[2]_i_1__0 
       (.I0(load_IBUF),
        .I1(\cnt_r[3]_i_2_n_0 ),
        .I2(\cnt_r[2]_i_2__0_n_0 ),
        .I3(f[2]),
        .I4(\cnt_r[2]_i_3__0_n_0 ),
        .I5(\cnt_r[2]_i_4_n_0 ),
        .O(\cnt_r[2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \cnt_r[2]_i_2__0 
       (.I0(carry_m),
        .I1(Q),
        .I2(f[1]),
        .O(\cnt_r[2]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h55555545)) 
    \cnt_r[2]_i_3__0 
       (.I0(dir_IBUF),
        .I1(f[5]),
        .I2(\cnt_r[4]_i_2__0_n_0 ),
        .I3(f[3]),
        .I4(f[4]),
        .O(\cnt_r[2]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_r[2]_i_4 
       (.I0(Q),
        .I1(carry_m),
        .I2(f[1]),
        .O(\cnt_r[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0440045504405540)) 
    \cnt_r[3]_i_1__0 
       (.I0(load_IBUF),
        .I1(\cnt_r[3]_i_2_n_0 ),
        .I2(\cnt_r[3]_i_3__0_n_0 ),
        .I3(f[3]),
        .I4(dir_IBUF),
        .I5(\cnt_r[4]_i_2__0_n_0 ),
        .O(\cnt_r[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAAA)) 
    \cnt_r[3]_i_2 
       (.I0(dir_IBUF),
        .I1(f[2]),
        .I2(f[3]),
        .I3(f[5]),
        .I4(f[4]),
        .I5(\cnt_r[2]_i_2__0_n_0 ),
        .O(\cnt_r[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \cnt_r[3]_i_3__0 
       (.I0(f[1]),
        .I1(Q),
        .I2(carry_m),
        .I3(f[2]),
        .O(\cnt_r[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555510400005104)) 
    \cnt_r[4]_i_1__0 
       (.I0(load_IBUF),
        .I1(\cnt_r[4]_i_2__0_n_0 ),
        .I2(f[3]),
        .I3(f[4]),
        .I4(dir_IBUF),
        .I5(\cnt_r[4]_i_3_n_0 ),
        .O(\cnt_r[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \cnt_r[4]_i_2__0 
       (.I0(f[1]),
        .I1(carry_m),
        .I2(Q),
        .I3(f[2]),
        .O(\cnt_r[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h1FFFC000)) 
    \cnt_r[4]_i_3 
       (.I0(f[5]),
        .I1(f[2]),
        .I2(\cnt_r[2]_i_2__0_n_0 ),
        .I3(f[3]),
        .I4(f[4]),
        .O(\cnt_r[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h44454544)) 
    \cnt_r[5]_i_1__0 
       (.I0(load_IBUF),
        .I1(\cnt_r[5]_i_2__0_n_0 ),
        .I2(dir_IBUF),
        .I3(\cnt_r[5]_i_3__0_n_0 ),
        .I4(f[5]),
        .O(\cnt_r[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2A2AAAAA80000000)) 
    \cnt_r[5]_i_2__0 
       (.I0(dir_IBUF),
        .I1(f[3]),
        .I2(\cnt_r[2]_i_2__0_n_0 ),
        .I3(f[2]),
        .I4(f[4]),
        .I5(f[5]),
        .O(\cnt_r[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \cnt_r[5]_i_3__0 
       (.I0(f[2]),
        .I1(Q),
        .I2(carry_m),
        .I3(f[1]),
        .I4(f[3]),
        .I5(f[4]),
        .O(\cnt_r[5]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_r_reg[0]_1 ),
        .Q(Q),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_r[1]_i_1_n_0 ),
        .Q(f[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_r[2]_i_1__0_n_0 ),
        .Q(f[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_r[3]_i_1__0_n_0 ),
        .Q(f[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_r[4]_i_1__0_n_0 ),
        .Q(f[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_r[5]_i_1__0_n_0 ),
        .Q(f[5]),
        .R(SR));
  LUT3 #(
    .INIT(8'h1F)) 
    \displaynum[0]_i_3 
       (.I0(\displaynum_reg[2]_1 [1]),
        .I1(Q),
        .I2(\displaynum_reg[2]_1 [0]),
        .O(\an_reg[2]_2 ));
  LUT5 #(
    .INIT(32'h9929B96B)) 
    \displaynum[0]_i_5 
       (.I0(f[3]),
        .I1(f[5]),
        .I2(f[4]),
        .I3(f[2]),
        .I4(f[1]),
        .O(\cnt_r_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h4141044110144110)) 
    \displaynum[1]_i_3 
       (.I0(\displaynum_reg[2]_1 [1]),
        .I1(f[3]),
        .I2(f[5]),
        .I3(f[4]),
        .I4(f[2]),
        .I5(f[1]),
        .O(\an_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h4BDB)) 
    \displaynum[1]_i_7 
       (.I0(f[3]),
        .I1(f[5]),
        .I2(f[4]),
        .I3(f[2]),
        .O(\cnt_r_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hFEAFFABFBFEBFEAF)) 
    \displaynum[2]_i_3 
       (.I0(\displaynum_reg[2]_1 [1]),
        .I1(f[1]),
        .I2(f[2]),
        .I3(f[4]),
        .I4(f[5]),
        .I5(f[3]),
        .O(\an_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hEE00EE00E0000000)) 
    \displaynum[2]_i_4 
       (.I0(\displaynum_reg[2] ),
        .I1(\displaynum_reg[2]_0 ),
        .I2(\displaynum[2]_i_8_n_0 ),
        .I3(\displaynum_reg[2]_1 [1]),
        .I4(f[5]),
        .I5(\displaynum_reg[2]_1 [2]),
        .O(\an_reg[2] ));
  LUT2 #(
    .INIT(4'hE)) 
    \displaynum[2]_i_8 
       (.I0(f[4]),
        .I1(f[3]),
        .O(\displaynum[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFBDF6DFB)) 
    \displaynum[3]_i_3 
       (.I0(f[1]),
        .I1(f[3]),
        .I2(f[5]),
        .I3(f[4]),
        .I4(f[2]),
        .O(\cnt_r_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    en_i_11
       (.I0(f[2]),
        .I1(f[1]),
        .I2(Q),
        .I3(f[4]),
        .I4(f[5]),
        .I5(f[3]),
        .O(\cnt_r_reg[2]_0 ));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module counter__parameterized1
   (D,
    \an_reg[2] ,
    \cnt_r_reg[0]_0 ,
    \an_reg[5] ,
    set_out,
    \an_reg[4] ,
    rst_n,
    Q,
    \displaynum_reg[3] ,
    \displaynum_reg[3]_0 ,
    \displaynum_reg[3]_1 ,
    \displaynum_reg[0] ,
    \displaynum_reg[1] ,
    \led_cnt_reg[0] ,
    \led_cnt_reg[0]_0 ,
    load_IBUF,
    dir_IBUF,
    carry_f,
    rst_n_IBUF,
    SR,
    CLK,
    \cnt_r_reg[0]_1 );
  output [0:0]D;
  output \an_reg[2] ;
  output [0:0]\cnt_r_reg[0]_0 ;
  output \an_reg[5] ;
  output set_out;
  output \an_reg[4] ;
  output [0:0]rst_n;
  input [3:0]Q;
  input \displaynum_reg[3] ;
  input \displaynum_reg[3]_0 ;
  input \displaynum_reg[3]_1 ;
  input \displaynum_reg[0] ;
  input \displaynum_reg[1] ;
  input \led_cnt_reg[0] ;
  input \led_cnt_reg[0]_0 ;
  input load_IBUF;
  input dir_IBUF;
  input carry_f;
  input rst_n_IBUF;
  input [0:0]SR;
  input CLK;
  input [0:0]\cnt_r_reg[0]_1 ;

  wire CLK;
  wire [0:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \an_reg[2] ;
  wire \an_reg[4] ;
  wire \an_reg[5] ;
  wire carry_f;
  wire \cnt_r[1]_i_1__1_n_0 ;
  wire \cnt_r[2]_i_1__1_n_0 ;
  wire \cnt_r[3]_i_1__1_n_0 ;
  wire \cnt_r[3]_i_2__0_n_0 ;
  wire \cnt_r[3]_i_3_n_0 ;
  wire \cnt_r[3]_i_4_n_0 ;
  wire \cnt_r[4]_i_1__1_n_0 ;
  wire \cnt_r[4]_i_2__1_n_0 ;
  wire \cnt_r[4]_i_3__1_n_0 ;
  wire \cnt_r[5]_i_1__1_n_0 ;
  wire \cnt_r[5]_i_2__1_n_0 ;
  wire \cnt_r[5]_i_3__1_n_0 ;
  wire [0:0]\cnt_r_reg[0]_0 ;
  wire [0:0]\cnt_r_reg[0]_1 ;
  wire \cnt_r_reg_n_0_[5] ;
  wire dir_IBUF;
  wire \displaynum[0]_i_6_n_0 ;
  wire \displaynum[1]_i_6_n_0 ;
  wire \displaynum[3]_i_2_n_0 ;
  wire \displaynum_reg[0] ;
  wire \displaynum_reg[1] ;
  wire \displaynum_reg[3] ;
  wire \displaynum_reg[3]_0 ;
  wire \displaynum_reg[3]_1 ;
  wire en_i_10_n_0;
  wire \led_cnt_reg[0] ;
  wire \led_cnt_reg[0]_0 ;
  wire load_IBUF;
  wire [0:0]rst_n;
  wire rst_n_IBUF;
  wire [4:1]s;
  wire set_out;

  LUT2 #(
    .INIT(4'hB)) 
    \clk_cnt[26]_i_1 
       (.I0(set_out),
        .I1(rst_n_IBUF),
        .O(rst_n));
  LUT5 #(
    .INIT(32'h15454010)) 
    \cnt_r[1]_i_1__1 
       (.I0(load_IBUF),
        .I1(dir_IBUF),
        .I2(carry_f),
        .I3(\cnt_r_reg[0]_0 ),
        .I4(s[1]),
        .O(\cnt_r[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h1554555540010000)) 
    \cnt_r[2]_i_1__1 
       (.I0(load_IBUF),
        .I1(dir_IBUF),
        .I2(s[1]),
        .I3(\cnt_r_reg[0]_0 ),
        .I4(carry_f),
        .I5(s[2]),
        .O(\cnt_r[2]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h55550440)) 
    \cnt_r[3]_i_1__1 
       (.I0(load_IBUF),
        .I1(\cnt_r[4]_i_3__1_n_0 ),
        .I2(\cnt_r[3]_i_2__0_n_0 ),
        .I3(s[3]),
        .I4(\cnt_r[3]_i_3_n_0 ),
        .O(\cnt_r[3]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \cnt_r[3]_i_2__0 
       (.I0(s[2]),
        .I1(\cnt_r_reg[0]_0 ),
        .I2(carry_f),
        .I3(s[1]),
        .O(\cnt_r[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0F0F00E)) 
    \cnt_r[3]_i_3 
       (.I0(s[4]),
        .I1(\cnt_r_reg_n_0_[5] ),
        .I2(s[3]),
        .I3(\cnt_r[3]_i_4_n_0 ),
        .I4(s[2]),
        .I5(dir_IBUF),
        .O(\cnt_r[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \cnt_r[3]_i_4 
       (.I0(s[1]),
        .I1(\cnt_r_reg[0]_0 ),
        .I2(carry_f),
        .O(\cnt_r[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0155011055100110)) 
    \cnt_r[4]_i_1__1 
       (.I0(load_IBUF),
        .I1(dir_IBUF),
        .I2(\cnt_r[4]_i_2__1_n_0 ),
        .I3(s[4]),
        .I4(\cnt_r[4]_i_3__1_n_0 ),
        .I5(\cnt_r[5]_i_3__1_n_0 ),
        .O(\cnt_r[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \cnt_r[4]_i_2__1 
       (.I0(s[3]),
        .I1(s[2]),
        .I2(carry_f),
        .I3(\cnt_r_reg[0]_0 ),
        .I4(s[1]),
        .O(\cnt_r[4]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    \cnt_r[4]_i_3__1 
       (.I0(dir_IBUF),
        .I1(s[3]),
        .I2(s[4]),
        .I3(\cnt_r_reg_n_0_[5] ),
        .I4(\cnt_r[3]_i_2__0_n_0 ),
        .O(\cnt_r[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h0555444450000000)) 
    \cnt_r[5]_i_1__1 
       (.I0(load_IBUF),
        .I1(\cnt_r[5]_i_2__1_n_0 ),
        .I2(\cnt_r[5]_i_3__1_n_0 ),
        .I3(s[4]),
        .I4(dir_IBUF),
        .I5(\cnt_r_reg_n_0_[5] ),
        .O(\cnt_r[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \cnt_r[5]_i_2__1 
       (.I0(s[4]),
        .I1(s[1]),
        .I2(\cnt_r_reg[0]_0 ),
        .I3(carry_f),
        .I4(s[2]),
        .I5(s[3]),
        .O(\cnt_r[5]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt_r[5]_i_3__1 
       (.I0(s[1]),
        .I1(carry_f),
        .I2(\cnt_r_reg[0]_0 ),
        .I3(s[2]),
        .I4(s[3]),
        .O(\cnt_r[5]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_r_reg[0]_1 ),
        .Q(\cnt_r_reg[0]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_r[1]_i_1__1_n_0 ),
        .Q(s[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_r[2]_i_1__1_n_0 ),
        .Q(s[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_r[3]_i_1__1_n_0 ),
        .Q(s[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_r[4]_i_1__1_n_0 ),
        .Q(s[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_r_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_r[5]_i_1__1_n_0 ),
        .Q(\cnt_r_reg_n_0_[5] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0C880C880C88CC88)) 
    \displaynum[0]_i_4 
       (.I0(\displaynum_reg[0] ),
        .I1(Q[0]),
        .I2(\displaynum[0]_i_6_n_0 ),
        .I3(Q[1]),
        .I4(\cnt_r_reg[0]_0 ),
        .I5(Q[2]),
        .O(\an_reg[2] ));
  LUT6 #(
    .INIT(64'hFBBBFFFBBBFFBBBB)) 
    \displaynum[0]_i_6 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(s[1]),
        .I3(s[2]),
        .I4(s[4]),
        .I5(s[3]),
        .O(\displaynum[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEA00EA000000FF00)) 
    \displaynum[1]_i_4 
       (.I0(\displaynum[1]_i_6_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\displaynum_reg[1] ),
        .I5(Q[1]),
        .O(\an_reg[5] ));
  LUT5 #(
    .INIT(32'hAE10E144)) 
    \displaynum[1]_i_6 
       (.I0(Q[2]),
        .I1(s[1]),
        .I2(s[2]),
        .I3(s[4]),
        .I4(s[3]),
        .O(\displaynum[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h05400150)) 
    \displaynum[2]_i_6 
       (.I0(Q[2]),
        .I1(s[1]),
        .I2(s[2]),
        .I3(s[4]),
        .I4(s[3]),
        .O(\an_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF404F0000)) 
    \displaynum[3]_i_1 
       (.I0(\displaynum[3]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\displaynum_reg[3] ),
        .I4(\displaynum_reg[3]_0 ),
        .I5(\displaynum_reg[3]_1 ),
        .O(D));
  LUT6 #(
    .INIT(64'h0000FFFFFB7DFB7D)) 
    \displaynum[3]_i_2 
       (.I0(s[3]),
        .I1(s[4]),
        .I2(s[2]),
        .I3(s[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\displaynum[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    en_i_10
       (.I0(\cnt_r_reg[0]_0 ),
        .I1(s[1]),
        .I2(s[2]),
        .I3(s[4]),
        .I4(s[3]),
        .O(en_i_10_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    en_i_4
       (.I0(en_i_10_n_0),
        .I1(\led_cnt_reg[0] ),
        .I2(\led_cnt_reg[0]_0 ),
        .O(set_out));
endmodule

module display
   (seg_OBUF,
    Q);
  output [5:0]seg_OBUF;
  input [3:0]Q;

  wire [3:0]Q;
  wire [5:0]seg_OBUF;

  LUT4 #(
    .INIT(16'hFB98)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg_OBUF[0]));
  LUT4 #(
    .INIT(16'hFFB8)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(seg_OBUF[1]));
  LUT4 #(
    .INIT(16'hEA9C)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg_OBUF[2]));
  LUT4 #(
    .INIT(16'hAAB0)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(seg_OBUF[3]));
  LUT4 #(
    .INIT(16'hAEC8)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg_OBUF[4]));
  LUT4 #(
    .INIT(16'hAA9C)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg_OBUF[5]));
endmodule

module naozhong
   (aud_OBUF,
    led_OBUF,
    SR,
    CLK,
    rst_n_IBUF,
    set_out,
    \led_cnt_reg[0]_0 );
  output aud_OBUF;
  output led_OBUF;
  input [0:0]SR;
  input CLK;
  input rst_n_IBUF;
  input set_out;
  input [0:0]\led_cnt_reg[0]_0 ;

  wire CLK;
  wire [0:0]SR;
  wire aud_OBUF;
  wire [26:0]clk_cnt;
  wire clk_cnt0_carry__0_n_0;
  wire clk_cnt0_carry__0_n_4;
  wire clk_cnt0_carry__0_n_5;
  wire clk_cnt0_carry__0_n_6;
  wire clk_cnt0_carry__0_n_7;
  wire clk_cnt0_carry__1_n_0;
  wire clk_cnt0_carry__1_n_4;
  wire clk_cnt0_carry__1_n_5;
  wire clk_cnt0_carry__1_n_6;
  wire clk_cnt0_carry__1_n_7;
  wire clk_cnt0_carry__2_n_0;
  wire clk_cnt0_carry__2_n_4;
  wire clk_cnt0_carry__2_n_5;
  wire clk_cnt0_carry__2_n_6;
  wire clk_cnt0_carry__2_n_7;
  wire clk_cnt0_carry__3_n_0;
  wire clk_cnt0_carry__3_n_4;
  wire clk_cnt0_carry__3_n_5;
  wire clk_cnt0_carry__3_n_6;
  wire clk_cnt0_carry__3_n_7;
  wire clk_cnt0_carry__4_n_0;
  wire clk_cnt0_carry__4_n_4;
  wire clk_cnt0_carry__4_n_5;
  wire clk_cnt0_carry__4_n_6;
  wire clk_cnt0_carry__4_n_7;
  wire clk_cnt0_carry__5_n_6;
  wire clk_cnt0_carry__5_n_7;
  wire clk_cnt0_carry_n_0;
  wire clk_cnt0_carry_n_4;
  wire clk_cnt0_carry_n_5;
  wire clk_cnt0_carry_n_6;
  wire clk_cnt0_carry_n_7;
  wire \clk_cnt[0]_i_1_n_0 ;
  wire \clk_cnt[10]_i_1_n_0 ;
  wire \clk_cnt[11]_i_1_n_0 ;
  wire \clk_cnt[12]_i_1_n_0 ;
  wire \clk_cnt[13]_i_1_n_0 ;
  wire \clk_cnt[14]_i_1_n_0 ;
  wire \clk_cnt[15]_i_1_n_0 ;
  wire \clk_cnt[16]_i_1_n_0 ;
  wire \clk_cnt[17]_i_1_n_0 ;
  wire \clk_cnt[18]_i_1_n_0 ;
  wire \clk_cnt[19]_i_1_n_0 ;
  wire \clk_cnt[1]_i_1_n_0 ;
  wire \clk_cnt[20]_i_1_n_0 ;
  wire \clk_cnt[21]_i_1_n_0 ;
  wire \clk_cnt[22]_i_1_n_0 ;
  wire \clk_cnt[23]_i_1_n_0 ;
  wire \clk_cnt[24]_i_1_n_0 ;
  wire \clk_cnt[25]_i_1_n_0 ;
  wire \clk_cnt[25]_i_2_n_0 ;
  wire \clk_cnt[25]_i_3_n_0 ;
  wire \clk_cnt[25]_i_4_n_0 ;
  wire \clk_cnt[25]_i_5_n_0 ;
  wire \clk_cnt[25]_i_6_n_0 ;
  wire \clk_cnt[25]_i_7_n_0 ;
  wire \clk_cnt[25]_i_8_n_0 ;
  wire \clk_cnt[25]_i_9_n_0 ;
  wire \clk_cnt[26]_i_2_n_0 ;
  wire \clk_cnt[26]_i_3_n_0 ;
  wire \clk_cnt[26]_i_4_n_0 ;
  wire \clk_cnt[26]_i_5_n_0 ;
  wire \clk_cnt[26]_i_6_n_0 ;
  wire \clk_cnt[26]_i_7_n_0 ;
  wire \clk_cnt[26]_i_8_n_0 ;
  wire \clk_cnt[26]_i_9_n_0 ;
  wire \clk_cnt[2]_i_1_n_0 ;
  wire \clk_cnt[3]_i_1_n_0 ;
  wire \clk_cnt[4]_i_1_n_0 ;
  wire \clk_cnt[5]_i_1_n_0 ;
  wire \clk_cnt[6]_i_1_n_0 ;
  wire \clk_cnt[7]_i_1_n_0 ;
  wire \clk_cnt[8]_i_1_n_0 ;
  wire \clk_cnt[9]_i_1_n_0 ;
  wire en;
  wire en_i_2_n_0;
  wire en_i_3_n_0;
  wire en_i_5_n_0;
  wire en_i_6_n_0;
  wire en_i_7_n_0;
  wire en_i_8_n_0;
  wire en_i_9_n_0;
  wire led_OBUF;
  wire \led_cnt[0]_i_1_n_0 ;
  wire \led_cnt[1]_i_1_n_0 ;
  wire \led_cnt[2]_i_1_n_0 ;
  wire [0:0]\led_cnt_reg[0]_0 ;
  wire [2:0]led_cnt_reg__0;
  wire led_i_1_n_0;
  wire rst_n_IBUF;
  wire set_out;
  wire [2:0]NLW_clk_cnt0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_clk_cnt0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_clk_cnt0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_clk_cnt0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_clk_cnt0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_clk_cnt0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_clk_cnt0_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_clk_cnt0_carry__5_O_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 clk_cnt0_carry
       (.CI(1'b0),
        .CO({clk_cnt0_carry_n_0,NLW_clk_cnt0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(clk_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_cnt0_carry_n_4,clk_cnt0_carry_n_5,clk_cnt0_carry_n_6,clk_cnt0_carry_n_7}),
        .S(clk_cnt[4:1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 clk_cnt0_carry__0
       (.CI(clk_cnt0_carry_n_0),
        .CO({clk_cnt0_carry__0_n_0,NLW_clk_cnt0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_cnt0_carry__0_n_4,clk_cnt0_carry__0_n_5,clk_cnt0_carry__0_n_6,clk_cnt0_carry__0_n_7}),
        .S(clk_cnt[8:5]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 clk_cnt0_carry__1
       (.CI(clk_cnt0_carry__0_n_0),
        .CO({clk_cnt0_carry__1_n_0,NLW_clk_cnt0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_cnt0_carry__1_n_4,clk_cnt0_carry__1_n_5,clk_cnt0_carry__1_n_6,clk_cnt0_carry__1_n_7}),
        .S(clk_cnt[12:9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 clk_cnt0_carry__2
       (.CI(clk_cnt0_carry__1_n_0),
        .CO({clk_cnt0_carry__2_n_0,NLW_clk_cnt0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_cnt0_carry__2_n_4,clk_cnt0_carry__2_n_5,clk_cnt0_carry__2_n_6,clk_cnt0_carry__2_n_7}),
        .S(clk_cnt[16:13]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 clk_cnt0_carry__3
       (.CI(clk_cnt0_carry__2_n_0),
        .CO({clk_cnt0_carry__3_n_0,NLW_clk_cnt0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_cnt0_carry__3_n_4,clk_cnt0_carry__3_n_5,clk_cnt0_carry__3_n_6,clk_cnt0_carry__3_n_7}),
        .S(clk_cnt[20:17]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 clk_cnt0_carry__4
       (.CI(clk_cnt0_carry__3_n_0),
        .CO({clk_cnt0_carry__4_n_0,NLW_clk_cnt0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_cnt0_carry__4_n_4,clk_cnt0_carry__4_n_5,clk_cnt0_carry__4_n_6,clk_cnt0_carry__4_n_7}),
        .S(clk_cnt[24:21]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 clk_cnt0_carry__5
       (.CI(clk_cnt0_carry__4_n_0),
        .CO(NLW_clk_cnt0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_clk_cnt0_carry__5_O_UNCONNECTED[3:2],clk_cnt0_carry__5_n_6,clk_cnt0_carry__5_n_7}),
        .S({1'b0,1'b0,clk_cnt[26:25]}));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_cnt[0]_i_1 
       (.I0(clk_cnt[0]),
        .O(\clk_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \clk_cnt[10]_i_1 
       (.I0(clk_cnt0_carry__1_n_6),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[26]_i_4_n_0 ),
        .I3(\clk_cnt[26]_i_5_n_0 ),
        .I4(\clk_cnt[26]_i_6_n_0 ),
        .I5(\clk_cnt[26]_i_7_n_0 ),
        .O(\clk_cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \clk_cnt[11]_i_1 
       (.I0(clk_cnt0_carry__1_n_5),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[26]_i_4_n_0 ),
        .I3(\clk_cnt[26]_i_5_n_0 ),
        .I4(\clk_cnt[26]_i_6_n_0 ),
        .I5(\clk_cnt[26]_i_7_n_0 ),
        .O(\clk_cnt[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \clk_cnt[12]_i_1 
       (.I0(\clk_cnt[26]_i_6_n_0 ),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[25]_i_2_n_0 ),
        .I3(\clk_cnt[26]_i_7_n_0 ),
        .I4(\clk_cnt[25]_i_3_n_0 ),
        .I5(clk_cnt0_carry__1_n_4),
        .O(\clk_cnt[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \clk_cnt[13]_i_1 
       (.I0(\clk_cnt[26]_i_6_n_0 ),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[25]_i_2_n_0 ),
        .I3(\clk_cnt[26]_i_7_n_0 ),
        .I4(\clk_cnt[25]_i_3_n_0 ),
        .I5(clk_cnt0_carry__2_n_7),
        .O(\clk_cnt[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \clk_cnt[14]_i_1 
       (.I0(\clk_cnt[26]_i_6_n_0 ),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[25]_i_2_n_0 ),
        .I3(\clk_cnt[26]_i_7_n_0 ),
        .I4(\clk_cnt[25]_i_3_n_0 ),
        .I5(clk_cnt0_carry__2_n_6),
        .O(\clk_cnt[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \clk_cnt[15]_i_1 
       (.I0(\clk_cnt[26]_i_6_n_0 ),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[25]_i_2_n_0 ),
        .I3(\clk_cnt[26]_i_7_n_0 ),
        .I4(\clk_cnt[25]_i_3_n_0 ),
        .I5(clk_cnt0_carry__2_n_5),
        .O(\clk_cnt[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \clk_cnt[16]_i_1 
       (.I0(clk_cnt0_carry__2_n_4),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[26]_i_4_n_0 ),
        .I3(\clk_cnt[26]_i_5_n_0 ),
        .I4(\clk_cnt[26]_i_6_n_0 ),
        .I5(\clk_cnt[26]_i_7_n_0 ),
        .O(\clk_cnt[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \clk_cnt[17]_i_1 
       (.I0(\clk_cnt[26]_i_6_n_0 ),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[25]_i_2_n_0 ),
        .I3(\clk_cnt[26]_i_7_n_0 ),
        .I4(\clk_cnt[25]_i_3_n_0 ),
        .I5(clk_cnt0_carry__3_n_7),
        .O(\clk_cnt[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \clk_cnt[18]_i_1 
       (.I0(clk_cnt0_carry__3_n_6),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[26]_i_4_n_0 ),
        .I3(\clk_cnt[26]_i_5_n_0 ),
        .I4(\clk_cnt[26]_i_6_n_0 ),
        .I5(\clk_cnt[26]_i_7_n_0 ),
        .O(\clk_cnt[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \clk_cnt[19]_i_1 
       (.I0(\clk_cnt[26]_i_6_n_0 ),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[25]_i_2_n_0 ),
        .I3(\clk_cnt[26]_i_7_n_0 ),
        .I4(\clk_cnt[25]_i_3_n_0 ),
        .I5(clk_cnt0_carry__3_n_5),
        .O(\clk_cnt[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \clk_cnt[1]_i_1 
       (.I0(clk_cnt0_carry_n_7),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[26]_i_4_n_0 ),
        .I3(\clk_cnt[26]_i_5_n_0 ),
        .I4(\clk_cnt[26]_i_6_n_0 ),
        .I5(\clk_cnt[26]_i_7_n_0 ),
        .O(\clk_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \clk_cnt[20]_i_1 
       (.I0(\clk_cnt[26]_i_6_n_0 ),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[25]_i_2_n_0 ),
        .I3(\clk_cnt[26]_i_7_n_0 ),
        .I4(\clk_cnt[25]_i_3_n_0 ),
        .I5(clk_cnt0_carry__3_n_4),
        .O(\clk_cnt[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \clk_cnt[21]_i_1 
       (.I0(\clk_cnt[26]_i_6_n_0 ),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[25]_i_2_n_0 ),
        .I3(\clk_cnt[26]_i_7_n_0 ),
        .I4(\clk_cnt[25]_i_3_n_0 ),
        .I5(clk_cnt0_carry__4_n_7),
        .O(\clk_cnt[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \clk_cnt[22]_i_1 
       (.I0(\clk_cnt[26]_i_6_n_0 ),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[25]_i_2_n_0 ),
        .I3(\clk_cnt[26]_i_7_n_0 ),
        .I4(\clk_cnt[25]_i_3_n_0 ),
        .I5(clk_cnt0_carry__4_n_6),
        .O(\clk_cnt[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \clk_cnt[23]_i_1 
       (.I0(\clk_cnt[26]_i_6_n_0 ),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[25]_i_2_n_0 ),
        .I3(\clk_cnt[26]_i_7_n_0 ),
        .I4(\clk_cnt[25]_i_3_n_0 ),
        .I5(clk_cnt0_carry__4_n_5),
        .O(\clk_cnt[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \clk_cnt[24]_i_1 
       (.I0(clk_cnt0_carry__4_n_4),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[26]_i_4_n_0 ),
        .I3(\clk_cnt[26]_i_5_n_0 ),
        .I4(\clk_cnt[26]_i_6_n_0 ),
        .I5(\clk_cnt[26]_i_7_n_0 ),
        .O(\clk_cnt[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \clk_cnt[25]_i_1 
       (.I0(\clk_cnt[26]_i_6_n_0 ),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[25]_i_2_n_0 ),
        .I3(\clk_cnt[26]_i_7_n_0 ),
        .I4(\clk_cnt[25]_i_3_n_0 ),
        .I5(clk_cnt0_carry__5_n_7),
        .O(\clk_cnt[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \clk_cnt[25]_i_2 
       (.I0(\clk_cnt[25]_i_4_n_0 ),
        .I1(\clk_cnt[26]_i_4_n_0 ),
        .I2(\clk_cnt[25]_i_5_n_0 ),
        .I3(clk_cnt[25]),
        .O(\clk_cnt[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_cnt[25]_i_3 
       (.I0(\clk_cnt[25]_i_6_n_0 ),
        .I1(\clk_cnt[25]_i_7_n_0 ),
        .I2(\clk_cnt[26]_i_4_n_0 ),
        .I3(\clk_cnt[26]_i_5_n_0 ),
        .I4(\clk_cnt[25]_i_8_n_0 ),
        .I5(\clk_cnt[25]_i_9_n_0 ),
        .O(\clk_cnt[25]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \clk_cnt[25]_i_4 
       (.I0(clk_cnt[19]),
        .I1(clk_cnt[24]),
        .I2(clk_cnt[18]),
        .I3(clk_cnt[26]),
        .O(\clk_cnt[25]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \clk_cnt[25]_i_5 
       (.I0(clk_cnt[7]),
        .I1(clk_cnt[16]),
        .I2(clk_cnt[12]),
        .I3(clk_cnt[17]),
        .O(\clk_cnt[25]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \clk_cnt[25]_i_6 
       (.I0(clk_cnt[14]),
        .I1(clk_cnt[15]),
        .I2(clk_cnt[2]),
        .I3(clk_cnt[22]),
        .O(\clk_cnt[25]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \clk_cnt[25]_i_7 
       (.I0(clk_cnt[4]),
        .I1(clk_cnt[1]),
        .I2(clk_cnt[21]),
        .O(\clk_cnt[25]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \clk_cnt[25]_i_8 
       (.I0(clk_cnt[3]),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[5]),
        .O(\clk_cnt[25]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \clk_cnt[25]_i_9 
       (.I0(clk_cnt[13]),
        .I1(clk_cnt[11]),
        .I2(clk_cnt[20]),
        .I3(clk_cnt[8]),
        .O(\clk_cnt[25]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \clk_cnt[26]_i_2 
       (.I0(clk_cnt0_carry__5_n_6),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[26]_i_4_n_0 ),
        .I3(\clk_cnt[26]_i_5_n_0 ),
        .I4(\clk_cnt[26]_i_6_n_0 ),
        .I5(\clk_cnt[26]_i_7_n_0 ),
        .O(\clk_cnt[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \clk_cnt[26]_i_3 
       (.I0(clk_cnt[22]),
        .I1(clk_cnt[2]),
        .I2(\clk_cnt[26]_i_8_n_0 ),
        .I3(clk_cnt[21]),
        .I4(clk_cnt[1]),
        .I5(clk_cnt[4]),
        .O(\clk_cnt[26]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \clk_cnt[26]_i_4 
       (.I0(clk_cnt[9]),
        .I1(clk_cnt[10]),
        .I2(clk_cnt[6]),
        .I3(clk_cnt[23]),
        .O(\clk_cnt[26]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55551555)) 
    \clk_cnt[26]_i_5 
       (.I0(clk_cnt[25]),
        .I1(clk_cnt[26]),
        .I2(clk_cnt[18]),
        .I3(clk_cnt[24]),
        .I4(clk_cnt[19]),
        .O(\clk_cnt[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFFFF)) 
    \clk_cnt[26]_i_6 
       (.I0(clk_cnt[5]),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[3]),
        .I3(clk_cnt[8]),
        .I4(clk_cnt[20]),
        .I5(\clk_cnt[26]_i_9_n_0 ),
        .O(\clk_cnt[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1008000000080008)) 
    \clk_cnt[26]_i_7 
       (.I0(clk_cnt[7]),
        .I1(clk_cnt[16]),
        .I2(clk_cnt[12]),
        .I3(clk_cnt[17]),
        .I4(en_i_9_n_0),
        .I5(clk_cnt[25]),
        .O(\clk_cnt[26]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \clk_cnt[26]_i_8 
       (.I0(clk_cnt[15]),
        .I1(clk_cnt[14]),
        .O(\clk_cnt[26]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \clk_cnt[26]_i_9 
       (.I0(clk_cnt[11]),
        .I1(clk_cnt[13]),
        .O(\clk_cnt[26]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \clk_cnt[2]_i_1 
       (.I0(clk_cnt0_carry_n_6),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[26]_i_4_n_0 ),
        .I3(\clk_cnt[26]_i_5_n_0 ),
        .I4(\clk_cnt[26]_i_6_n_0 ),
        .I5(\clk_cnt[26]_i_7_n_0 ),
        .O(\clk_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \clk_cnt[3]_i_1 
       (.I0(clk_cnt0_carry_n_5),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[26]_i_4_n_0 ),
        .I3(\clk_cnt[26]_i_5_n_0 ),
        .I4(\clk_cnt[26]_i_6_n_0 ),
        .I5(\clk_cnt[26]_i_7_n_0 ),
        .O(\clk_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \clk_cnt[4]_i_1 
       (.I0(clk_cnt0_carry_n_4),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[26]_i_4_n_0 ),
        .I3(\clk_cnt[26]_i_5_n_0 ),
        .I4(\clk_cnt[26]_i_6_n_0 ),
        .I5(\clk_cnt[26]_i_7_n_0 ),
        .O(\clk_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \clk_cnt[5]_i_1 
       (.I0(clk_cnt0_carry__0_n_7),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[26]_i_4_n_0 ),
        .I3(\clk_cnt[26]_i_5_n_0 ),
        .I4(\clk_cnt[26]_i_6_n_0 ),
        .I5(\clk_cnt[26]_i_7_n_0 ),
        .O(\clk_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \clk_cnt[6]_i_1 
       (.I0(clk_cnt0_carry__0_n_6),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[26]_i_4_n_0 ),
        .I3(\clk_cnt[26]_i_5_n_0 ),
        .I4(\clk_cnt[26]_i_6_n_0 ),
        .I5(\clk_cnt[26]_i_7_n_0 ),
        .O(\clk_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \clk_cnt[7]_i_1 
       (.I0(\clk_cnt[26]_i_6_n_0 ),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[25]_i_2_n_0 ),
        .I3(\clk_cnt[26]_i_7_n_0 ),
        .I4(\clk_cnt[25]_i_3_n_0 ),
        .I5(clk_cnt0_carry__0_n_5),
        .O(\clk_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \clk_cnt[8]_i_1 
       (.I0(clk_cnt0_carry__0_n_4),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[26]_i_4_n_0 ),
        .I3(\clk_cnt[26]_i_5_n_0 ),
        .I4(\clk_cnt[26]_i_6_n_0 ),
        .I5(\clk_cnt[26]_i_7_n_0 ),
        .O(\clk_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \clk_cnt[9]_i_1 
       (.I0(clk_cnt0_carry__1_n_7),
        .I1(\clk_cnt[26]_i_3_n_0 ),
        .I2(\clk_cnt[26]_i_4_n_0 ),
        .I3(\clk_cnt[26]_i_5_n_0 ),
        .I4(\clk_cnt[26]_i_6_n_0 ),
        .I5(\clk_cnt[26]_i_7_n_0 ),
        .O(\clk_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[0] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[0]_i_1_n_0 ),
        .Q(clk_cnt[0]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[10] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[10]_i_1_n_0 ),
        .Q(clk_cnt[10]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[11] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[11]_i_1_n_0 ),
        .Q(clk_cnt[11]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[12] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[12]_i_1_n_0 ),
        .Q(clk_cnt[12]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[13] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[13]_i_1_n_0 ),
        .Q(clk_cnt[13]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[14] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[14]_i_1_n_0 ),
        .Q(clk_cnt[14]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[15] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[15]_i_1_n_0 ),
        .Q(clk_cnt[15]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[16] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[16]_i_1_n_0 ),
        .Q(clk_cnt[16]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[17] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[17]_i_1_n_0 ),
        .Q(clk_cnt[17]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[18] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[18]_i_1_n_0 ),
        .Q(clk_cnt[18]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[19] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[19]_i_1_n_0 ),
        .Q(clk_cnt[19]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[1]_i_1_n_0 ),
        .Q(clk_cnt[1]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[20] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[20]_i_1_n_0 ),
        .Q(clk_cnt[20]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[21] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[21]_i_1_n_0 ),
        .Q(clk_cnt[21]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[22] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[22]_i_1_n_0 ),
        .Q(clk_cnt[22]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[23] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[23]_i_1_n_0 ),
        .Q(clk_cnt[23]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[24] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[24]_i_1_n_0 ),
        .Q(clk_cnt[24]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[25] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[25]_i_1_n_0 ),
        .Q(clk_cnt[25]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[26] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[26]_i_2_n_0 ),
        .Q(clk_cnt[26]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[2]_i_1_n_0 ),
        .Q(clk_cnt[2]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[3]_i_1_n_0 ),
        .Q(clk_cnt[3]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[4] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[4]_i_1_n_0 ),
        .Q(clk_cnt[4]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[5] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[5]_i_1_n_0 ),
        .Q(clk_cnt[5]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[6] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[6]_i_1_n_0 ),
        .Q(clk_cnt[6]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[7] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[7]_i_1_n_0 ),
        .Q(clk_cnt[7]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[8] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[8]_i_1_n_0 ),
        .Q(clk_cnt[8]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[9] 
       (.C(CLK),
        .CE(en),
        .D(\clk_cnt[9]_i_1_n_0 ),
        .Q(clk_cnt[9]),
        .R(\led_cnt_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFB0000)) 
    en_i_2
       (.I0(led_cnt_reg__0[1]),
        .I1(led_cnt_reg__0[2]),
        .I2(en_i_3_n_0),
        .I3(led_cnt_reg__0[0]),
        .I4(en),
        .I5(set_out),
        .O(en_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    en_i_3
       (.I0(en_i_5_n_0),
        .I1(en_i_6_n_0),
        .I2(en_i_7_n_0),
        .I3(\clk_cnt[26]_i_4_n_0 ),
        .I4(en_i_8_n_0),
        .I5(en_i_9_n_0),
        .O(en_i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    en_i_5
       (.I0(clk_cnt[14]),
        .I1(clk_cnt[15]),
        .I2(clk_cnt[22]),
        .I3(clk_cnt[21]),
        .O(en_i_5_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    en_i_6
       (.I0(clk_cnt[13]),
        .I1(clk_cnt[11]),
        .I2(clk_cnt[20]),
        .I3(clk_cnt[3]),
        .O(en_i_6_n_0));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    en_i_7
       (.I0(clk_cnt[5]),
        .I1(clk_cnt[2]),
        .I2(clk_cnt[8]),
        .I3(clk_cnt[0]),
        .I4(clk_cnt[4]),
        .I5(clk_cnt[1]),
        .O(en_i_7_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    en_i_8
       (.I0(clk_cnt[7]),
        .I1(clk_cnt[16]),
        .I2(clk_cnt[25]),
        .I3(clk_cnt[12]),
        .O(en_i_8_n_0));
  LUT5 #(
    .INIT(32'h00000020)) 
    en_i_9
       (.I0(clk_cnt[19]),
        .I1(clk_cnt[24]),
        .I2(clk_cnt[17]),
        .I3(clk_cnt[26]),
        .I4(clk_cnt[18]),
        .O(en_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    en_reg
       (.C(CLK),
        .CE(1'b1),
        .D(en_i_2_n_0),
        .Q(en),
        .R(SR));
  pwm inst
       (.CLK(CLK),
        .SR(SR),
        .aud_OBUF(aud_OBUF),
        .en(en),
        .rst_n_IBUF(rst_n_IBUF));
  LUT2 #(
    .INIT(4'h9)) 
    \led_cnt[0]_i_1 
       (.I0(led_cnt_reg__0[0]),
        .I1(en_i_3_n_0),
        .O(\led_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \led_cnt[1]_i_1 
       (.I0(led_cnt_reg__0[1]),
        .I1(en_i_3_n_0),
        .I2(led_cnt_reg__0[0]),
        .O(\led_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \led_cnt[2]_i_1 
       (.I0(led_cnt_reg__0[2]),
        .I1(led_cnt_reg__0[0]),
        .I2(en_i_3_n_0),
        .I3(led_cnt_reg__0[1]),
        .O(\led_cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \led_cnt_reg[0] 
       (.C(CLK),
        .CE(en),
        .D(\led_cnt[0]_i_1_n_0 ),
        .Q(led_cnt_reg__0[0]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \led_cnt_reg[1] 
       (.C(CLK),
        .CE(en),
        .D(\led_cnt[1]_i_1_n_0 ),
        .Q(led_cnt_reg__0[1]),
        .R(\led_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \led_cnt_reg[2] 
       (.C(CLK),
        .CE(en),
        .D(\led_cnt[2]_i_1_n_0 ),
        .Q(led_cnt_reg__0[2]),
        .R(\led_cnt_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hFBF4)) 
    led_i_1
       (.I0(en_i_3_n_0),
        .I1(en),
        .I2(set_out),
        .I3(led_OBUF),
        .O(led_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    led_reg
       (.C(CLK),
        .CE(1'b1),
        .D(led_i_1_n_0),
        .Q(led_OBUF),
        .R(SR));
endmodule

module pwm
   (aud_OBUF,
    SR,
    en,
    CLK,
    rst_n_IBUF);
  output aud_OBUF;
  input [0:0]SR;
  input en;
  input CLK;
  input rst_n_IBUF;

  wire CLK;
  wire [0:0]SR;
  wire amppwm0_carry__0_i_1_n_0;
  wire amppwm0_carry__0_i_2_n_0;
  wire amppwm0_carry__0_n_3;
  wire amppwm0_carry_i_1_n_0;
  wire amppwm0_carry_i_2_n_0;
  wire amppwm0_carry_i_3_n_0;
  wire amppwm0_carry_i_4_n_0;
  wire amppwm0_carry_i_5_n_0;
  wire amppwm0_carry_i_6_n_0;
  wire amppwm0_carry_i_7_n_0;
  wire amppwm0_carry_i_8_n_0;
  wire amppwm0_carry_n_0;
  wire aud_OBUF;
  wire [8:0]cnt;
  wire \cnt[3]_i_2_n_0 ;
  wire \cnt[6]_i_2_n_0 ;
  wire \cnt[7]_i_2_n_0 ;
  wire \cnt[7]_i_3_n_0 ;
  wire \cnt[8]_i_2_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \duty[0]_i_1_n_0 ;
  wire \duty[4]_i_2_n_0 ;
  wire \duty[4]_i_3_n_0 ;
  wire \duty[4]_i_4_n_0 ;
  wire \duty[4]_i_5_n_0 ;
  wire \duty[8]_i_1_n_0 ;
  wire \duty[8]_i_3_n_0 ;
  wire \duty[8]_i_4_n_0 ;
  wire \duty[8]_i_5_n_0 ;
  wire \duty[8]_i_6_n_0 ;
  wire \duty_reg[4]_i_1_n_0 ;
  wire \duty_reg[4]_i_1_n_4 ;
  wire \duty_reg[4]_i_1_n_5 ;
  wire \duty_reg[4]_i_1_n_6 ;
  wire \duty_reg[4]_i_1_n_7 ;
  wire \duty_reg[8]_i_2_n_4 ;
  wire \duty_reg[8]_i_2_n_5 ;
  wire \duty_reg[8]_i_2_n_6 ;
  wire \duty_reg[8]_i_2_n_7 ;
  wire [8:0]duty_reg__0;
  wire en;
  wire in;
  wire rst_n_IBUF;
  wire up_down_i_1_n_0;
  wire up_down_i_2_n_0;
  wire up_down_i_3_n_0;
  wire up_down_i_4_n_0;
  wire [2:0]NLW_amppwm0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_amppwm0_carry_O_UNCONNECTED;
  wire [3:1]NLW_amppwm0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_amppwm0_carry__0_O_UNCONNECTED;
  wire [2:0]\NLW_duty_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_duty_reg[8]_i_2_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 amppwm0_carry
       (.CI(1'b0),
        .CO({amppwm0_carry_n_0,NLW_amppwm0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({amppwm0_carry_i_1_n_0,amppwm0_carry_i_2_n_0,amppwm0_carry_i_3_n_0,amppwm0_carry_i_4_n_0}),
        .O(NLW_amppwm0_carry_O_UNCONNECTED[3:0]),
        .S({amppwm0_carry_i_5_n_0,amppwm0_carry_i_6_n_0,amppwm0_carry_i_7_n_0,amppwm0_carry_i_8_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 amppwm0_carry__0
       (.CI(amppwm0_carry_n_0),
        .CO({NLW_amppwm0_carry__0_CO_UNCONNECTED[3:1],amppwm0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,amppwm0_carry__0_i_1_n_0}),
        .O(NLW_amppwm0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,amppwm0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    amppwm0_carry__0_i_1
       (.I0(duty_reg__0[8]),
        .I1(\cnt_reg_n_0_[8] ),
        .O(amppwm0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    amppwm0_carry__0_i_2
       (.I0(\cnt_reg_n_0_[8] ),
        .I1(duty_reg__0[8]),
        .O(amppwm0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    amppwm0_carry_i_1
       (.I0(\cnt_reg_n_0_[7] ),
        .I1(duty_reg__0[7]),
        .I2(duty_reg__0[6]),
        .I3(\cnt_reg_n_0_[6] ),
        .O(amppwm0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    amppwm0_carry_i_2
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(duty_reg__0[5]),
        .I2(duty_reg__0[4]),
        .I3(\cnt_reg_n_0_[4] ),
        .O(amppwm0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    amppwm0_carry_i_3
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(duty_reg__0[3]),
        .I2(duty_reg__0[2]),
        .I3(\cnt_reg_n_0_[2] ),
        .O(amppwm0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    amppwm0_carry_i_4
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(duty_reg__0[1]),
        .I2(duty_reg__0[0]),
        .I3(\cnt_reg_n_0_[0] ),
        .O(amppwm0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    amppwm0_carry_i_5
       (.I0(duty_reg__0[7]),
        .I1(\cnt_reg_n_0_[7] ),
        .I2(duty_reg__0[6]),
        .I3(\cnt_reg_n_0_[6] ),
        .O(amppwm0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    amppwm0_carry_i_6
       (.I0(duty_reg__0[5]),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(duty_reg__0[4]),
        .I3(\cnt_reg_n_0_[4] ),
        .O(amppwm0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    amppwm0_carry_i_7
       (.I0(duty_reg__0[3]),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(duty_reg__0[2]),
        .I3(\cnt_reg_n_0_[2] ),
        .O(amppwm0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    amppwm0_carry_i_8
       (.I0(duty_reg__0[1]),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(duty_reg__0[0]),
        .I3(\cnt_reg_n_0_[0] ),
        .O(amppwm0_carry_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    amppwm_reg
       (.C(CLK),
        .CE(en),
        .D(amppwm0_carry__0_n_3),
        .Q(aud_OBUF),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(cnt[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1__0 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .O(cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(cnt[2]));
  LUT5 #(
    .INIT(32'h3FFF4000)) 
    \cnt[3]_i_1 
       (.I0(\cnt[3]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(cnt[3]));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \cnt[3]_i_2 
       (.I0(\cnt_reg_n_0_[7] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[6] ),
        .I4(\cnt_reg_n_0_[8] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(\cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt[4]_i_1 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .O(cnt[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt[5]_i_1 
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\cnt_reg_n_0_[4] ),
        .O(cnt[5]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \cnt[6]_i_1 
       (.I0(\cnt[6]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[5] ),
        .I4(\cnt_reg_n_0_[6] ),
        .I5(\cnt[7]_i_2_n_0 ),
        .O(cnt[6]));
  LUT3 #(
    .INIT(8'h80)) 
    \cnt[6]_i_2 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(\cnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \cnt[7]_i_1 
       (.I0(\cnt_reg_n_0_[6] ),
        .I1(\cnt[8]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[7] ),
        .I3(\cnt[7]_i_2_n_0 ),
        .O(cnt[7]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cnt[7]_i_2 
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt[7]_i_3_n_0 ),
        .I2(\cnt_reg_n_0_[8] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\cnt_reg_n_0_[7] ),
        .O(\cnt[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \cnt[7]_i_3 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[6] ),
        .O(\cnt[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt[8]_i_1 
       (.I0(\cnt_reg_n_0_[8] ),
        .I1(\cnt_reg_n_0_[6] ),
        .I2(\cnt[8]_i_2_n_0 ),
        .I3(\cnt_reg_n_0_[7] ),
        .O(cnt[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[8]_i_2 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(\cnt[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(en),
        .D(cnt[0]),
        .Q(\cnt_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(en),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(en),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(en),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(en),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(en),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(CLK),
        .CE(en),
        .D(cnt[6]),
        .Q(\cnt_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(CLK),
        .CE(en),
        .D(cnt[7]),
        .Q(\cnt_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(CLK),
        .CE(en),
        .D(cnt[8]),
        .Q(\cnt_reg_n_0_[8] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \duty[0]_i_1 
       (.I0(duty_reg__0[0]),
        .O(\duty[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \duty[4]_i_2 
       (.I0(duty_reg__0[3]),
        .I1(duty_reg__0[4]),
        .O(\duty[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \duty[4]_i_3 
       (.I0(duty_reg__0[2]),
        .I1(duty_reg__0[3]),
        .O(\duty[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \duty[4]_i_4 
       (.I0(duty_reg__0[1]),
        .I1(duty_reg__0[2]),
        .O(\duty[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \duty[4]_i_5 
       (.I0(duty_reg__0[1]),
        .I1(in),
        .O(\duty[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \duty[8]_i_1 
       (.I0(en),
        .I1(\cnt[3]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .O(\duty[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \duty[8]_i_3 
       (.I0(duty_reg__0[7]),
        .I1(duty_reg__0[8]),
        .O(\duty[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \duty[8]_i_4 
       (.I0(duty_reg__0[6]),
        .I1(duty_reg__0[7]),
        .O(\duty[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \duty[8]_i_5 
       (.I0(duty_reg__0[5]),
        .I1(duty_reg__0[6]),
        .O(\duty[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \duty[8]_i_6 
       (.I0(duty_reg__0[4]),
        .I1(duty_reg__0[5]),
        .O(\duty[8]_i_6_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \duty_reg[0] 
       (.C(CLK),
        .CE(\duty[8]_i_1_n_0 ),
        .D(\duty[0]_i_1_n_0 ),
        .Q(duty_reg__0[0]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \duty_reg[1] 
       (.C(CLK),
        .CE(\duty[8]_i_1_n_0 ),
        .D(\duty_reg[4]_i_1_n_7 ),
        .Q(duty_reg__0[1]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \duty_reg[2] 
       (.C(CLK),
        .CE(\duty[8]_i_1_n_0 ),
        .D(\duty_reg[4]_i_1_n_6 ),
        .Q(duty_reg__0[2]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[3] 
       (.C(CLK),
        .CE(\duty[8]_i_1_n_0 ),
        .D(\duty_reg[4]_i_1_n_5 ),
        .Q(duty_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[4] 
       (.C(CLK),
        .CE(\duty[8]_i_1_n_0 ),
        .D(\duty_reg[4]_i_1_n_4 ),
        .Q(duty_reg__0[4]),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \duty_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\duty_reg[4]_i_1_n_0 ,\NLW_duty_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(duty_reg__0[0]),
        .DI({duty_reg__0[3:1],in}),
        .O({\duty_reg[4]_i_1_n_4 ,\duty_reg[4]_i_1_n_5 ,\duty_reg[4]_i_1_n_6 ,\duty_reg[4]_i_1_n_7 }),
        .S({\duty[4]_i_2_n_0 ,\duty[4]_i_3_n_0 ,\duty[4]_i_4_n_0 ,\duty[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[5] 
       (.C(CLK),
        .CE(\duty[8]_i_1_n_0 ),
        .D(\duty_reg[8]_i_2_n_7 ),
        .Q(duty_reg__0[5]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \duty_reg[6] 
       (.C(CLK),
        .CE(\duty[8]_i_1_n_0 ),
        .D(\duty_reg[8]_i_2_n_6 ),
        .Q(duty_reg__0[6]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \duty_reg[7] 
       (.C(CLK),
        .CE(\duty[8]_i_1_n_0 ),
        .D(\duty_reg[8]_i_2_n_5 ),
        .Q(duty_reg__0[7]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[8] 
       (.C(CLK),
        .CE(\duty[8]_i_1_n_0 ),
        .D(\duty_reg[8]_i_2_n_4 ),
        .Q(duty_reg__0[8]),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \duty_reg[8]_i_2 
       (.CI(\duty_reg[4]_i_1_n_0 ),
        .CO(\NLW_duty_reg[8]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,duty_reg__0[6:4]}),
        .O({\duty_reg[8]_i_2_n_4 ,\duty_reg[8]_i_2_n_5 ,\duty_reg[8]_i_2_n_6 ,\duty_reg[8]_i_2_n_7 }),
        .S({\duty[8]_i_3_n_0 ,\duty[8]_i_4_n_0 ,\duty[8]_i_5_n_0 ,\duty[8]_i_6_n_0 }));
  LUT5 #(
    .INIT(32'h5F100000)) 
    up_down_i_1
       (.I0(up_down_i_2_n_0),
        .I1(up_down_i_3_n_0),
        .I2(up_down_i_4_n_0),
        .I3(in),
        .I4(rst_n_IBUF),
        .O(up_down_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    up_down_i_2
       (.I0(duty_reg__0[2]),
        .I1(duty_reg__0[6]),
        .I2(duty_reg__0[1]),
        .I3(duty_reg__0[7]),
        .I4(duty_reg__0[3]),
        .I5(duty_reg__0[8]),
        .O(up_down_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    up_down_i_3
       (.I0(duty_reg__0[1]),
        .I1(duty_reg__0[3]),
        .I2(duty_reg__0[6]),
        .I3(duty_reg__0[2]),
        .I4(duty_reg__0[8]),
        .I5(duty_reg__0[7]),
        .O(up_down_i_3_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    up_down_i_4
       (.I0(duty_reg__0[0]),
        .I1(en),
        .I2(duty_reg__0[5]),
        .I3(duty_reg__0[4]),
        .O(up_down_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_down_reg
       (.C(CLK),
        .CE(1'b1),
        .D(up_down_i_1_n_0),
        .Q(in),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "f18166cb" *) (* N = "100000" *) 
(* NotValidForBitStream *)
module top
   (clk,
    rst_n,
    rx,
    set,
    load,
    dir,
    led,
    seg,
    an,
    aud,
    sd);
  input clk;
  input rst_n;
  input rx;
  input set;
  input load;
  input dir;
  output led;
  output [6:0]seg;
  output [7:0]an;
  output aud;
  output sd;

  wire [7:0]an;
  wire \an[7]_i_1_n_0 ;
  wire [7:0]an_OBUF;
  wire \an_reg[0]_lopt_replica_1 ;
  wire \an_reg[1]_lopt_replica_1 ;
  wire \an_reg[2]_lopt_replica_1 ;
  wire \an_reg[3]_lopt_replica_1 ;
  wire \an_reg[4]_lopt_replica_1 ;
  wire \an_reg[5]_lopt_replica_1 ;
  wire \an_reg[6]_lopt_replica_1 ;
  wire \an_reg[7]_lopt_replica_1 ;
  wire aud;
  wire aud_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [20:0]cnt;
  wire \cnt[20]_i_2_n_0 ;
  wire \cnt[20]_i_3_n_0 ;
  wire \cnt[20]_i_4_n_0 ;
  wire \cnt[20]_i_5_n_0 ;
  wire \cnt[20]_i_6_n_0 ;
  wire \cnt_reg[12]_i_2_n_0 ;
  wire \cnt_reg[12]_i_2_n_4 ;
  wire \cnt_reg[12]_i_2_n_5 ;
  wire \cnt_reg[12]_i_2_n_6 ;
  wire \cnt_reg[12]_i_2_n_7 ;
  wire \cnt_reg[16]_i_2_n_0 ;
  wire \cnt_reg[16]_i_2_n_4 ;
  wire \cnt_reg[16]_i_2_n_5 ;
  wire \cnt_reg[16]_i_2_n_6 ;
  wire \cnt_reg[16]_i_2_n_7 ;
  wire \cnt_reg[20]_i_7_n_4 ;
  wire \cnt_reg[20]_i_7_n_5 ;
  wire \cnt_reg[20]_i_7_n_6 ;
  wire \cnt_reg[20]_i_7_n_7 ;
  wire \cnt_reg[4]_i_2_n_0 ;
  wire \cnt_reg[4]_i_2_n_4 ;
  wire \cnt_reg[4]_i_2_n_5 ;
  wire \cnt_reg[4]_i_2_n_6 ;
  wire \cnt_reg[4]_i_2_n_7 ;
  wire \cnt_reg[8]_i_2_n_0 ;
  wire \cnt_reg[8]_i_2_n_4 ;
  wire \cnt_reg[8]_i_2_n_5 ;
  wire \cnt_reg[8]_i_2_n_6 ;
  wire \cnt_reg[8]_i_2_n_7 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[16] ;
  wire \cnt_reg_n_0_[17] ;
  wire \cnt_reg_n_0_[18] ;
  wire \cnt_reg_n_0_[19] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[20] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire dir;
  wire dir_IBUF;
  wire [3:0]displaynum;
  wire \displaynum[2]_i_7_n_0 ;
  wire \displaynum[3]_i_4_n_0 ;
  wire inst2_n_0;
  wire inst2_n_1;
  wire inst2_n_2;
  wire inst2_n_3;
  wire inst2_n_5;
  wire inst2_n_6;
  wire led;
  wire led_OBUF;
  wire load;
  wire load_IBUF;
  wire rst_n;
  wire rst_n_IBUF;
  wire sd;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire set_out;
  wire [2:0]\NLW_cnt_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_reg[20]_i_7_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[8]_i_2_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00000001)) 
    \an[7]_i_1 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .O(\an[7]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \an_OBUF[0]_inst 
       (.I(\an_reg[0]_lopt_replica_1 ),
        .O(an[0]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \an_OBUF[1]_inst 
       (.I(\an_reg[1]_lopt_replica_1 ),
        .O(an[1]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \an_OBUF[2]_inst 
       (.I(\an_reg[2]_lopt_replica_1 ),
        .O(an[2]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \an_OBUF[3]_inst 
       (.I(\an_reg[3]_lopt_replica_1 ),
        .O(an[3]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \an_OBUF[4]_inst 
       (.I(\an_reg[4]_lopt_replica_1 ),
        .O(an[4]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \an_OBUF[5]_inst 
       (.I(\an_reg[5]_lopt_replica_1 ),
        .O(an[5]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \an_OBUF[6]_inst 
       (.I(\an_reg[6]_lopt_replica_1 ),
        .O(an[6]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \an_OBUF[7]_inst 
       (.I(\an_reg[7]_lopt_replica_1 ),
        .O(an[7]));
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\an[7]_i_1_n_0 ),
        .D(an_OBUF[7]),
        .Q(an_OBUF[0]),
        .R(inst2_n_5));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[0]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(\an[7]_i_1_n_0 ),
        .D(an_OBUF[7]),
        .Q(\an_reg[0]_lopt_replica_1 ),
        .R(inst2_n_5));
  FDSE #(
    .INIT(1'b1)) 
    \an_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\an[7]_i_1_n_0 ),
        .D(an_OBUF[0]),
        .Q(an_OBUF[1]),
        .S(inst2_n_5));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDSE #(
    .INIT(1'b1)) 
    \an_reg[1]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(\an[7]_i_1_n_0 ),
        .D(an_OBUF[0]),
        .Q(\an_reg[1]_lopt_replica_1 ),
        .S(inst2_n_5));
  FDSE #(
    .INIT(1'b1)) 
    \an_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\an[7]_i_1_n_0 ),
        .D(an_OBUF[1]),
        .Q(an_OBUF[2]),
        .S(inst2_n_5));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDSE #(
    .INIT(1'b1)) 
    \an_reg[2]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(\an[7]_i_1_n_0 ),
        .D(an_OBUF[1]),
        .Q(\an_reg[2]_lopt_replica_1 ),
        .S(inst2_n_5));
  FDSE #(
    .INIT(1'b1)) 
    \an_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\an[7]_i_1_n_0 ),
        .D(an_OBUF[2]),
        .Q(an_OBUF[3]),
        .S(inst2_n_5));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDSE #(
    .INIT(1'b1)) 
    \an_reg[3]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(\an[7]_i_1_n_0 ),
        .D(an_OBUF[2]),
        .Q(\an_reg[3]_lopt_replica_1 ),
        .S(inst2_n_5));
  FDSE #(
    .INIT(1'b1)) 
    \an_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\an[7]_i_1_n_0 ),
        .D(an_OBUF[3]),
        .Q(an_OBUF[4]),
        .S(inst2_n_5));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDSE #(
    .INIT(1'b1)) 
    \an_reg[4]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(\an[7]_i_1_n_0 ),
        .D(an_OBUF[3]),
        .Q(\an_reg[4]_lopt_replica_1 ),
        .S(inst2_n_5));
  FDSE #(
    .INIT(1'b1)) 
    \an_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\an[7]_i_1_n_0 ),
        .D(an_OBUF[4]),
        .Q(an_OBUF[5]),
        .S(inst2_n_5));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDSE #(
    .INIT(1'b1)) 
    \an_reg[5]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(\an[7]_i_1_n_0 ),
        .D(an_OBUF[4]),
        .Q(\an_reg[5]_lopt_replica_1 ),
        .S(inst2_n_5));
  FDSE #(
    .INIT(1'b1)) 
    \an_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\an[7]_i_1_n_0 ),
        .D(an_OBUF[5]),
        .Q(an_OBUF[6]),
        .S(inst2_n_5));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDSE #(
    .INIT(1'b1)) 
    \an_reg[6]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(\an[7]_i_1_n_0 ),
        .D(an_OBUF[5]),
        .Q(\an_reg[6]_lopt_replica_1 ),
        .S(inst2_n_5));
  FDSE #(
    .INIT(1'b1)) 
    \an_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\an[7]_i_1_n_0 ),
        .D(an_OBUF[6]),
        .Q(an_OBUF[7]),
        .S(inst2_n_5));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDSE #(
    .INIT(1'b1)) 
    \an_reg[7]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(\an[7]_i_1_n_0 ),
        .D(an_OBUF[6]),
        .Q(\an_reg[7]_lopt_replica_1 ),
        .S(inst2_n_5));
  OBUF aud_OBUF_inst
       (.I(aud_OBUF),
        .O(aud));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__1 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(cnt[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[10]_i_1__0 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[12]_i_2_n_6 ),
        .O(cnt[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[11]_i_1__0 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[12]_i_2_n_5 ),
        .O(cnt[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[12]_i_1__0 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[12]_i_2_n_4 ),
        .O(cnt[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[13]_i_1__0 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[16]_i_2_n_7 ),
        .O(cnt[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[14]_i_1__0 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[16]_i_2_n_6 ),
        .O(cnt[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[15]_i_1__0 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[16]_i_2_n_5 ),
        .O(cnt[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[16]_i_1__0 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[16]_i_2_n_4 ),
        .O(cnt[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[17]_i_1__0 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[20]_i_7_n_7 ),
        .O(cnt[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[18]_i_1__0 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[20]_i_7_n_6 ),
        .O(cnt[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[19]_i_1__0 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[20]_i_7_n_5 ),
        .O(cnt[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[1]_i_1__1 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[4]_i_2_n_7 ),
        .O(cnt[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[20]_i_1__0 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[20]_i_7_n_4 ),
        .O(cnt[20]));
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \cnt[20]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[19] ),
        .I2(\cnt_reg_n_0_[20] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[1] ),
        .O(\cnt[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[20]_i_3 
       (.I0(\cnt_reg_n_0_[12] ),
        .I1(\cnt_reg_n_0_[11] ),
        .I2(\cnt_reg_n_0_[14] ),
        .I3(\cnt_reg_n_0_[13] ),
        .O(\cnt[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \cnt[20]_i_4 
       (.I0(\cnt_reg_n_0_[16] ),
        .I1(\cnt_reg_n_0_[15] ),
        .I2(\cnt_reg_n_0_[18] ),
        .I3(\cnt_reg_n_0_[17] ),
        .O(\cnt[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \cnt[20]_i_5 
       (.I0(\cnt_reg_n_0_[7] ),
        .I1(\cnt_reg_n_0_[8] ),
        .I2(\cnt_reg_n_0_[10] ),
        .I3(\cnt_reg_n_0_[9] ),
        .O(\cnt[20]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \cnt[20]_i_6 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[6] ),
        .I3(\cnt_reg_n_0_[5] ),
        .O(\cnt[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[2]_i_1__1 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[4]_i_2_n_6 ),
        .O(cnt[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[3]_i_1__1 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[4]_i_2_n_5 ),
        .O(cnt[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[4]_i_1__1 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[4]_i_2_n_4 ),
        .O(cnt[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[5]_i_1__1 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[8]_i_2_n_7 ),
        .O(cnt[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[6]_i_1__1 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[8]_i_2_n_6 ),
        .O(cnt[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[7]_i_1__1 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[8]_i_2_n_5 ),
        .O(cnt[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[8]_i_1__1 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[8]_i_2_n_4 ),
        .O(cnt[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[9]_i_1__0 
       (.I0(\cnt[20]_i_2_n_0 ),
        .I1(\cnt[20]_i_3_n_0 ),
        .I2(\cnt[20]_i_4_n_0 ),
        .I3(\cnt[20]_i_5_n_0 ),
        .I4(\cnt[20]_i_6_n_0 ),
        .I5(\cnt_reg[12]_i_2_n_7 ),
        .O(cnt[9]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[0]),
        .Q(\cnt_reg_n_0_[0] ),
        .R(inst2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[10]),
        .Q(\cnt_reg_n_0_[10] ),
        .R(inst2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[11]),
        .Q(\cnt_reg_n_0_[11] ),
        .R(inst2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[12]),
        .Q(\cnt_reg_n_0_[12] ),
        .R(inst2_n_5));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \cnt_reg[12]_i_2 
       (.CI(\cnt_reg[8]_i_2_n_0 ),
        .CO({\cnt_reg[12]_i_2_n_0 ,\NLW_cnt_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_2_n_4 ,\cnt_reg[12]_i_2_n_5 ,\cnt_reg[12]_i_2_n_6 ,\cnt_reg[12]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[12] ,\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[13]),
        .Q(\cnt_reg_n_0_[13] ),
        .R(inst2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[14]),
        .Q(\cnt_reg_n_0_[14] ),
        .R(inst2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[15]),
        .Q(\cnt_reg_n_0_[15] ),
        .R(inst2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[16]),
        .Q(\cnt_reg_n_0_[16] ),
        .R(inst2_n_5));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \cnt_reg[16]_i_2 
       (.CI(\cnt_reg[12]_i_2_n_0 ),
        .CO({\cnt_reg[16]_i_2_n_0 ,\NLW_cnt_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_2_n_4 ,\cnt_reg[16]_i_2_n_5 ,\cnt_reg[16]_i_2_n_6 ,\cnt_reg[16]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[16] ,\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[17]),
        .Q(\cnt_reg_n_0_[17] ),
        .R(inst2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[18]),
        .Q(\cnt_reg_n_0_[18] ),
        .R(inst2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[19]),
        .Q(\cnt_reg_n_0_[19] ),
        .R(inst2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ),
        .R(inst2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[20]),
        .Q(\cnt_reg_n_0_[20] ),
        .R(inst2_n_5));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \cnt_reg[20]_i_7 
       (.CI(\cnt_reg[16]_i_2_n_0 ),
        .CO(\NLW_cnt_reg[20]_i_7_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[20]_i_7_n_4 ,\cnt_reg[20]_i_7_n_5 ,\cnt_reg[20]_i_7_n_6 ,\cnt_reg[20]_i_7_n_7 }),
        .S({\cnt_reg_n_0_[20] ,\cnt_reg_n_0_[19] ,\cnt_reg_n_0_[18] ,\cnt_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ),
        .R(inst2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ),
        .R(inst2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ),
        .R(inst2_n_5));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[4]_i_2_n_0 ,\NLW_cnt_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_2_n_4 ,\cnt_reg[4]_i_2_n_5 ,\cnt_reg[4]_i_2_n_6 ,\cnt_reg[4]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[4] ,\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ),
        .R(inst2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[6]),
        .Q(\cnt_reg_n_0_[6] ),
        .R(inst2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[7]),
        .Q(\cnt_reg_n_0_[7] ),
        .R(inst2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[8]),
        .Q(\cnt_reg_n_0_[8] ),
        .R(inst2_n_5));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \cnt_reg[8]_i_2 
       (.CI(\cnt_reg[4]_i_2_n_0 ),
        .CO({\cnt_reg[8]_i_2_n_0 ,\NLW_cnt_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_2_n_4 ,\cnt_reg[8]_i_2_n_5 ,\cnt_reg[8]_i_2_n_6 ,\cnt_reg[8]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[8] ,\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt[9]),
        .Q(\cnt_reg_n_0_[9] ),
        .R(inst2_n_5));
  IBUF dir_IBUF_inst
       (.I(dir),
        .O(dir_IBUF));
  LUT3 #(
    .INIT(8'h8F)) 
    \displaynum[2]_i_7 
       (.I0(an_OBUF[5]),
        .I1(an_OBUF[4]),
        .I2(an_OBUF[3]),
        .O(\displaynum[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \displaynum[3]_i_4 
       (.I0(an_OBUF[0]),
        .I1(an_OBUF[1]),
        .O(\displaynum[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \displaynum_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inst2_n_3),
        .Q(displaynum[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \displaynum_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inst2_n_2),
        .Q(displaynum[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \displaynum_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inst2_n_1),
        .Q(displaynum[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \displaynum_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inst2_n_0),
        .Q(displaynum[3]),
        .R(1'b0));
  naozhong inst1
       (.CLK(clk_IBUF_BUFG),
        .SR(inst2_n_5),
        .aud_OBUF(aud_OBUF),
        .led_OBUF(led_OBUF),
        .\led_cnt_reg[0]_0 (inst2_n_6),
        .rst_n_IBUF(rst_n_IBUF),
        .set_out(set_out));
  clock inst2
       (.CLK(clk_IBUF_BUFG),
        .D({inst2_n_0,inst2_n_1,inst2_n_2,inst2_n_3}),
        .Q(an_OBUF[5:0]),
        .SR(inst2_n_5),
        .dir_IBUF(dir_IBUF),
        .\displaynum_reg[2] (\displaynum[2]_i_7_n_0 ),
        .\displaynum_reg[3] (\displaynum[3]_i_4_n_0 ),
        .load_IBUF(load_IBUF),
        .rst_n(inst2_n_6),
        .rst_n_IBUF(rst_n_IBUF),
        .set_out(set_out));
  display inst7
       (.Q(displaynum),
        .seg_OBUF(seg_OBUF[6:1]));
  OBUF led_OBUF_inst
       (.I(led_OBUF),
        .O(led));
  IBUF load_IBUF_inst
       (.I(load),
        .O(load_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  OBUF sd_OBUF_inst
       (.I(1'b1),
        .O(sd));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  LUT4 #(
    .INIT(16'h0091)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(displaynum[1]),
        .I1(displaynum[2]),
        .I2(displaynum[0]),
        .I3(displaynum[3]),
        .O(seg_OBUF[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
