// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Feb 18 15:09:34 2023
// Host        : kenzies_laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_TopLevel_0_0_sim_netlist.v
// Design      : design_1_TopLevel_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ControlUnit
   (CU_data_in,
    E,
    Q,
    D,
    \FSM_onehot_state_reg[0]_0 ,
    \temp_reg[30] ,
    A,
    \temp_reg[31] ,
    B,
    \FSM_onehot_state_reg[2]_0 ,
    Clk,
    Rst);
  output CU_data_in;
  output [0:0]E;
  output [2:0]Q;
  output [31:0]D;
  output [31:0]\FSM_onehot_state_reg[0]_0 ;
  input [31:0]\temp_reg[30] ;
  input [31:0]A;
  input [30:0]\temp_reg[31] ;
  input [31:0]B;
  input [1:0]\FSM_onehot_state_reg[2]_0 ;
  input Clk;
  input Rst;

  wire [31:0]A;
  wire [31:0]B;
  wire CU_data_in;
  wire Clk;
  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]\FSM_onehot_state_reg[0]_0 ;
  wire [1:0]\FSM_onehot_state_reg[2]_0 ;
  wire [2:0]Q;
  wire Rst;
  wire ff_en_reg_i_1_n_0;
  wire [31:0]\temp_reg[30] ;
  wire [30:0]\temp_reg[31] ;

  (* FSM_ENCODED_STATES = "s0:001,s1:010,s2:100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(Rst),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "s0:001,s1:010,s2:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(Rst),
        .D(\FSM_onehot_state_reg[2]_0 [0]),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "s0:001,s1:010,s2:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(Rst),
        .D(\FSM_onehot_state_reg[2]_0 [1]),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ff_en_reg
       (.CLR(1'b0),
        .D(ff_en_reg_i_1_n_0),
        .G(E),
        .GE(1'b1),
        .Q(CU_data_in));
  LUT2 #(
    .INIT(4'h8)) 
    ff_en_reg_i_1
       (.I0(Q[1]),
        .I1(\temp_reg[30] [0]),
        .O(ff_en_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    ff_en_reg_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp[0]_i_1__0 
       (.I0(Q[0]),
        .I1(A[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[0]_i_1__1 
       (.I0(B[0]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [1]),
        .O(\FSM_onehot_state_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[10]_i_1 
       (.I0(A[10]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [9]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[10]_i_1__0 
       (.I0(B[10]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [11]),
        .O(\FSM_onehot_state_reg[0]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[11]_i_1 
       (.I0(A[11]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [10]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[11]_i_1__0 
       (.I0(B[11]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [12]),
        .O(\FSM_onehot_state_reg[0]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[12]_i_1 
       (.I0(A[12]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [11]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[12]_i_1__0 
       (.I0(B[12]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [13]),
        .O(\FSM_onehot_state_reg[0]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[13]_i_1 
       (.I0(A[13]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [12]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[13]_i_1__0 
       (.I0(B[13]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [14]),
        .O(\FSM_onehot_state_reg[0]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[14]_i_1 
       (.I0(A[14]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [13]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[14]_i_1__0 
       (.I0(B[14]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [15]),
        .O(\FSM_onehot_state_reg[0]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[15]_i_1 
       (.I0(A[15]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [14]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[15]_i_1__0 
       (.I0(B[15]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [16]),
        .O(\FSM_onehot_state_reg[0]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[16]_i_1 
       (.I0(A[16]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [15]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[16]_i_1__0 
       (.I0(B[16]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [17]),
        .O(\FSM_onehot_state_reg[0]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[17]_i_1 
       (.I0(A[17]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [16]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[17]_i_1__0 
       (.I0(B[17]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [18]),
        .O(\FSM_onehot_state_reg[0]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[18]_i_1 
       (.I0(A[18]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [17]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[18]_i_1__0 
       (.I0(B[18]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [19]),
        .O(\FSM_onehot_state_reg[0]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[19]_i_1 
       (.I0(A[19]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [18]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[19]_i_1__0 
       (.I0(B[19]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [20]),
        .O(\FSM_onehot_state_reg[0]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[1]_i_1__0 
       (.I0(A[1]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[1]_i_1__1 
       (.I0(B[1]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [2]),
        .O(\FSM_onehot_state_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[20]_i_1 
       (.I0(A[20]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [19]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[20]_i_1__0 
       (.I0(B[20]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [21]),
        .O(\FSM_onehot_state_reg[0]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[21]_i_1 
       (.I0(A[21]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [20]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[21]_i_1__0 
       (.I0(B[21]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [22]),
        .O(\FSM_onehot_state_reg[0]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[22]_i_1 
       (.I0(A[22]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [21]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[22]_i_1__0 
       (.I0(B[22]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [23]),
        .O(\FSM_onehot_state_reg[0]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[23]_i_1 
       (.I0(A[23]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [22]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[23]_i_1__0 
       (.I0(B[23]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [24]),
        .O(\FSM_onehot_state_reg[0]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[24]_i_1 
       (.I0(A[24]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [23]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[24]_i_1__0 
       (.I0(B[24]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [25]),
        .O(\FSM_onehot_state_reg[0]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[25]_i_1 
       (.I0(A[25]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [24]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[25]_i_1__0 
       (.I0(B[25]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [26]),
        .O(\FSM_onehot_state_reg[0]_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[26]_i_1 
       (.I0(A[26]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [25]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[26]_i_1__0 
       (.I0(B[26]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [27]),
        .O(\FSM_onehot_state_reg[0]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[27]_i_1 
       (.I0(A[27]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [26]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[27]_i_1__0 
       (.I0(B[27]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [28]),
        .O(\FSM_onehot_state_reg[0]_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[28]_i_1 
       (.I0(A[28]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [27]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[28]_i_1__0 
       (.I0(B[28]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [29]),
        .O(\FSM_onehot_state_reg[0]_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[29]_i_1 
       (.I0(A[29]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [28]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[29]_i_1__0 
       (.I0(B[29]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [30]),
        .O(\FSM_onehot_state_reg[0]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[2]_i_1 
       (.I0(A[2]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[2]_i_1__0 
       (.I0(B[2]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [3]),
        .O(\FSM_onehot_state_reg[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[30]_i_1 
       (.I0(A[30]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [29]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[30]_i_1__0 
       (.I0(B[30]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [31]),
        .O(\FSM_onehot_state_reg[0]_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[31]_i_1 
       (.I0(A[31]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [30]),
        .O(D[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \temp[31]_i_1__0 
       (.I0(Q[0]),
        .I1(B[31]),
        .O(\FSM_onehot_state_reg[0]_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[3]_i_1__0 
       (.I0(A[3]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[3]_i_1__1 
       (.I0(B[3]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [4]),
        .O(\FSM_onehot_state_reg[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[4]_i_1__0 
       (.I0(A[4]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [3]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[4]_i_1__1 
       (.I0(B[4]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [5]),
        .O(\FSM_onehot_state_reg[0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[5]_i_1 
       (.I0(A[5]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [4]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[5]_i_1__0 
       (.I0(B[5]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [6]),
        .O(\FSM_onehot_state_reg[0]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[6]_i_1 
       (.I0(A[6]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [5]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[6]_i_1__0 
       (.I0(B[6]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [7]),
        .O(\FSM_onehot_state_reg[0]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[7]_i_1 
       (.I0(A[7]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [6]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[7]_i_1__0 
       (.I0(B[7]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [8]),
        .O(\FSM_onehot_state_reg[0]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[8]_i_1 
       (.I0(A[8]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [7]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[8]_i_1__0 
       (.I0(B[8]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [9]),
        .O(\FSM_onehot_state_reg[0]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[9]_i_1 
       (.I0(A[9]),
        .I1(Q[0]),
        .I2(\temp_reg[31] [8]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp[9]_i_1__0 
       (.I0(B[9]),
        .I1(Q[0]),
        .I2(\temp_reg[30] [10]),
        .O(\FSM_onehot_state_reg[0]_0 [9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ShiftReg_32
   (Q,
    E,
    D,
    Clk,
    Rst);
  output [31:0]Q;
  input [0:0]E;
  input [31:0]D;
  input Clk;
  input Rst;

  wire Clk;
  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire Rst;

  FDCE \temp_reg[0] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \temp_reg[10] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \temp_reg[11] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \temp_reg[12] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \temp_reg[13] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \temp_reg[14] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \temp_reg[15] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \temp_reg[16] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[16]),
        .Q(Q[16]));
  FDCE \temp_reg[17] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[17]),
        .Q(Q[17]));
  FDCE \temp_reg[18] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[18]),
        .Q(Q[18]));
  FDCE \temp_reg[19] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[19]),
        .Q(Q[19]));
  FDCE \temp_reg[1] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \temp_reg[20] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[20]),
        .Q(Q[20]));
  FDCE \temp_reg[21] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[21]),
        .Q(Q[21]));
  FDCE \temp_reg[22] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[22]),
        .Q(Q[22]));
  FDCE \temp_reg[23] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[23]),
        .Q(Q[23]));
  FDCE \temp_reg[24] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[24]),
        .Q(Q[24]));
  FDCE \temp_reg[25] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[25]),
        .Q(Q[25]));
  FDCE \temp_reg[26] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[26]),
        .Q(Q[26]));
  FDCE \temp_reg[27] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[27]),
        .Q(Q[27]));
  FDCE \temp_reg[28] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[28]),
        .Q(Q[28]));
  FDCE \temp_reg[29] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[29]),
        .Q(Q[29]));
  FDCE \temp_reg[2] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \temp_reg[30] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[30]),
        .Q(Q[30]));
  FDCE \temp_reg[31] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[31]),
        .Q(Q[31]));
  FDCE \temp_reg[3] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \temp_reg[4] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \temp_reg[5] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \temp_reg[6] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \temp_reg[7] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \temp_reg[8] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \temp_reg[9] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[9]),
        .Q(Q[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ShiftReg_64
   (Q,
    O,
    \temp_reg[7]_0 ,
    \temp_reg[11]_0 ,
    \temp_reg[15]_0 ,
    \temp_reg[19]_0 ,
    \temp_reg[23]_0 ,
    \temp_reg[27]_0 ,
    \temp_reg[31]_0 ,
    \temp_reg[35]_0 ,
    \temp_reg[39]_0 ,
    \temp_reg[43]_0 ,
    \temp_reg[47]_0 ,
    \temp_reg[51]_0 ,
    \temp_reg[55]_0 ,
    \temp_reg[59]_0 ,
    \temp_reg[62]_0 ,
    R,
    D,
    \temp_reg[63]_0 ,
    E,
    Clk,
    Rst);
  output [30:0]Q;
  output [3:0]O;
  output [3:0]\temp_reg[7]_0 ;
  output [3:0]\temp_reg[11]_0 ;
  output [3:0]\temp_reg[15]_0 ;
  output [3:0]\temp_reg[19]_0 ;
  output [3:0]\temp_reg[23]_0 ;
  output [3:0]\temp_reg[27]_0 ;
  output [3:0]\temp_reg[31]_0 ;
  output [3:0]\temp_reg[35]_0 ;
  output [3:0]\temp_reg[39]_0 ;
  output [3:0]\temp_reg[43]_0 ;
  output [3:0]\temp_reg[47]_0 ;
  output [3:0]\temp_reg[51]_0 ;
  output [3:0]\temp_reg[55]_0 ;
  output [3:0]\temp_reg[59]_0 ;
  output [3:0]\temp_reg[62]_0 ;
  input [63:0]R;
  input [31:0]D;
  input [0:0]\temp_reg[63]_0 ;
  input [0:0]E;
  input Clk;
  input Rst;

  wire Clk;
  wire [31:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [30:0]Q;
  wire \Q[11]_i_2_n_0 ;
  wire \Q[11]_i_3_n_0 ;
  wire \Q[11]_i_4_n_0 ;
  wire \Q[11]_i_5_n_0 ;
  wire \Q[15]_i_2_n_0 ;
  wire \Q[15]_i_3_n_0 ;
  wire \Q[15]_i_4_n_0 ;
  wire \Q[15]_i_5_n_0 ;
  wire \Q[19]_i_2_n_0 ;
  wire \Q[19]_i_3_n_0 ;
  wire \Q[19]_i_4_n_0 ;
  wire \Q[19]_i_5_n_0 ;
  wire \Q[23]_i_2_n_0 ;
  wire \Q[23]_i_3_n_0 ;
  wire \Q[23]_i_4_n_0 ;
  wire \Q[23]_i_5_n_0 ;
  wire \Q[27]_i_2_n_0 ;
  wire \Q[27]_i_3_n_0 ;
  wire \Q[27]_i_4_n_0 ;
  wire \Q[27]_i_5_n_0 ;
  wire \Q[31]_i_2_n_0 ;
  wire \Q[31]_i_3_n_0 ;
  wire \Q[31]_i_4_n_0 ;
  wire \Q[31]_i_5_n_0 ;
  wire \Q[35]_i_2_n_0 ;
  wire \Q[35]_i_3_n_0 ;
  wire \Q[35]_i_4_n_0 ;
  wire \Q[35]_i_5_n_0 ;
  wire \Q[39]_i_2_n_0 ;
  wire \Q[39]_i_3_n_0 ;
  wire \Q[39]_i_4_n_0 ;
  wire \Q[39]_i_5_n_0 ;
  wire \Q[3]_i_2_n_0 ;
  wire \Q[3]_i_3_n_0 ;
  wire \Q[3]_i_4_n_0 ;
  wire \Q[3]_i_5_n_0 ;
  wire \Q[43]_i_2_n_0 ;
  wire \Q[43]_i_3_n_0 ;
  wire \Q[43]_i_4_n_0 ;
  wire \Q[43]_i_5_n_0 ;
  wire \Q[47]_i_2_n_0 ;
  wire \Q[47]_i_3_n_0 ;
  wire \Q[47]_i_4_n_0 ;
  wire \Q[47]_i_5_n_0 ;
  wire \Q[51]_i_2_n_0 ;
  wire \Q[51]_i_3_n_0 ;
  wire \Q[51]_i_4_n_0 ;
  wire \Q[51]_i_5_n_0 ;
  wire \Q[55]_i_2_n_0 ;
  wire \Q[55]_i_3_n_0 ;
  wire \Q[55]_i_4_n_0 ;
  wire \Q[55]_i_5_n_0 ;
  wire \Q[59]_i_2_n_0 ;
  wire \Q[59]_i_3_n_0 ;
  wire \Q[59]_i_4_n_0 ;
  wire \Q[59]_i_5_n_0 ;
  wire \Q[63]_i_2_n_0 ;
  wire \Q[63]_i_3_n_0 ;
  wire \Q[63]_i_4_n_0 ;
  wire \Q[63]_i_5_n_0 ;
  wire \Q[7]_i_2_n_0 ;
  wire \Q[7]_i_3_n_0 ;
  wire \Q[7]_i_4_n_0 ;
  wire \Q[7]_i_5_n_0 ;
  wire \Q_reg[11]_i_1_n_0 ;
  wire \Q_reg[11]_i_1_n_1 ;
  wire \Q_reg[11]_i_1_n_2 ;
  wire \Q_reg[11]_i_1_n_3 ;
  wire \Q_reg[15]_i_1_n_0 ;
  wire \Q_reg[15]_i_1_n_1 ;
  wire \Q_reg[15]_i_1_n_2 ;
  wire \Q_reg[15]_i_1_n_3 ;
  wire \Q_reg[19]_i_1_n_0 ;
  wire \Q_reg[19]_i_1_n_1 ;
  wire \Q_reg[19]_i_1_n_2 ;
  wire \Q_reg[19]_i_1_n_3 ;
  wire \Q_reg[23]_i_1_n_0 ;
  wire \Q_reg[23]_i_1_n_1 ;
  wire \Q_reg[23]_i_1_n_2 ;
  wire \Q_reg[23]_i_1_n_3 ;
  wire \Q_reg[27]_i_1_n_0 ;
  wire \Q_reg[27]_i_1_n_1 ;
  wire \Q_reg[27]_i_1_n_2 ;
  wire \Q_reg[27]_i_1_n_3 ;
  wire \Q_reg[31]_i_1_n_0 ;
  wire \Q_reg[31]_i_1_n_1 ;
  wire \Q_reg[31]_i_1_n_2 ;
  wire \Q_reg[31]_i_1_n_3 ;
  wire \Q_reg[35]_i_1_n_0 ;
  wire \Q_reg[35]_i_1_n_1 ;
  wire \Q_reg[35]_i_1_n_2 ;
  wire \Q_reg[35]_i_1_n_3 ;
  wire \Q_reg[39]_i_1_n_0 ;
  wire \Q_reg[39]_i_1_n_1 ;
  wire \Q_reg[39]_i_1_n_2 ;
  wire \Q_reg[39]_i_1_n_3 ;
  wire \Q_reg[3]_i_1_n_0 ;
  wire \Q_reg[3]_i_1_n_1 ;
  wire \Q_reg[3]_i_1_n_2 ;
  wire \Q_reg[3]_i_1_n_3 ;
  wire \Q_reg[43]_i_1_n_0 ;
  wire \Q_reg[43]_i_1_n_1 ;
  wire \Q_reg[43]_i_1_n_2 ;
  wire \Q_reg[43]_i_1_n_3 ;
  wire \Q_reg[47]_i_1_n_0 ;
  wire \Q_reg[47]_i_1_n_1 ;
  wire \Q_reg[47]_i_1_n_2 ;
  wire \Q_reg[47]_i_1_n_3 ;
  wire \Q_reg[51]_i_1_n_0 ;
  wire \Q_reg[51]_i_1_n_1 ;
  wire \Q_reg[51]_i_1_n_2 ;
  wire \Q_reg[51]_i_1_n_3 ;
  wire \Q_reg[55]_i_1_n_0 ;
  wire \Q_reg[55]_i_1_n_1 ;
  wire \Q_reg[55]_i_1_n_2 ;
  wire \Q_reg[55]_i_1_n_3 ;
  wire \Q_reg[59]_i_1_n_0 ;
  wire \Q_reg[59]_i_1_n_1 ;
  wire \Q_reg[59]_i_1_n_2 ;
  wire \Q_reg[59]_i_1_n_3 ;
  wire \Q_reg[63]_i_1_n_1 ;
  wire \Q_reg[63]_i_1_n_2 ;
  wire \Q_reg[63]_i_1_n_3 ;
  wire \Q_reg[7]_i_1_n_0 ;
  wire \Q_reg[7]_i_1_n_1 ;
  wire \Q_reg[7]_i_1_n_2 ;
  wire \Q_reg[7]_i_1_n_3 ;
  wire [63:0]R;
  wire Rst;
  wire [63:32]p_1_in;
  wire [63:31]temp;
  wire [3:0]\temp_reg[11]_0 ;
  wire [3:0]\temp_reg[15]_0 ;
  wire [3:0]\temp_reg[19]_0 ;
  wire [3:0]\temp_reg[23]_0 ;
  wire [3:0]\temp_reg[27]_0 ;
  wire [3:0]\temp_reg[31]_0 ;
  wire [3:0]\temp_reg[35]_0 ;
  wire [3:0]\temp_reg[39]_0 ;
  wire [3:0]\temp_reg[43]_0 ;
  wire [3:0]\temp_reg[47]_0 ;
  wire [3:0]\temp_reg[51]_0 ;
  wire [3:0]\temp_reg[55]_0 ;
  wire [3:0]\temp_reg[59]_0 ;
  wire [3:0]\temp_reg[62]_0 ;
  wire [0:0]\temp_reg[63]_0 ;
  wire [3:0]\temp_reg[7]_0 ;
  wire [3:3]\NLW_Q_reg[63]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \Q[11]_i_2 
       (.I0(Q[11]),
        .I1(R[11]),
        .O(\Q[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[11]_i_3 
       (.I0(Q[10]),
        .I1(R[10]),
        .O(\Q[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[11]_i_4 
       (.I0(Q[9]),
        .I1(R[9]),
        .O(\Q[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[11]_i_5 
       (.I0(Q[8]),
        .I1(R[8]),
        .O(\Q[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[15]_i_2 
       (.I0(Q[15]),
        .I1(R[15]),
        .O(\Q[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[15]_i_3 
       (.I0(Q[14]),
        .I1(R[14]),
        .O(\Q[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[15]_i_4 
       (.I0(Q[13]),
        .I1(R[13]),
        .O(\Q[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[15]_i_5 
       (.I0(Q[12]),
        .I1(R[12]),
        .O(\Q[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[19]_i_2 
       (.I0(Q[19]),
        .I1(R[19]),
        .O(\Q[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[19]_i_3 
       (.I0(Q[18]),
        .I1(R[18]),
        .O(\Q[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[19]_i_4 
       (.I0(Q[17]),
        .I1(R[17]),
        .O(\Q[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[19]_i_5 
       (.I0(Q[16]),
        .I1(R[16]),
        .O(\Q[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[23]_i_2 
       (.I0(Q[23]),
        .I1(R[23]),
        .O(\Q[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[23]_i_3 
       (.I0(Q[22]),
        .I1(R[22]),
        .O(\Q[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[23]_i_4 
       (.I0(Q[21]),
        .I1(R[21]),
        .O(\Q[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[23]_i_5 
       (.I0(Q[20]),
        .I1(R[20]),
        .O(\Q[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[27]_i_2 
       (.I0(Q[27]),
        .I1(R[27]),
        .O(\Q[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[27]_i_3 
       (.I0(Q[26]),
        .I1(R[26]),
        .O(\Q[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[27]_i_4 
       (.I0(Q[25]),
        .I1(R[25]),
        .O(\Q[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[27]_i_5 
       (.I0(Q[24]),
        .I1(R[24]),
        .O(\Q[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[31]_i_2 
       (.I0(temp[31]),
        .I1(R[31]),
        .O(\Q[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[31]_i_3 
       (.I0(Q[30]),
        .I1(R[30]),
        .O(\Q[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[31]_i_4 
       (.I0(Q[29]),
        .I1(R[29]),
        .O(\Q[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[31]_i_5 
       (.I0(Q[28]),
        .I1(R[28]),
        .O(\Q[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[35]_i_2 
       (.I0(temp[35]),
        .I1(R[35]),
        .O(\Q[35]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[35]_i_3 
       (.I0(temp[34]),
        .I1(R[34]),
        .O(\Q[35]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[35]_i_4 
       (.I0(temp[33]),
        .I1(R[33]),
        .O(\Q[35]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[35]_i_5 
       (.I0(temp[32]),
        .I1(R[32]),
        .O(\Q[35]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[39]_i_2 
       (.I0(temp[39]),
        .I1(R[39]),
        .O(\Q[39]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[39]_i_3 
       (.I0(temp[38]),
        .I1(R[38]),
        .O(\Q[39]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[39]_i_4 
       (.I0(temp[37]),
        .I1(R[37]),
        .O(\Q[39]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[39]_i_5 
       (.I0(temp[36]),
        .I1(R[36]),
        .O(\Q[39]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[3]_i_2 
       (.I0(Q[3]),
        .I1(R[3]),
        .O(\Q[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[3]_i_3 
       (.I0(Q[2]),
        .I1(R[2]),
        .O(\Q[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[3]_i_4 
       (.I0(Q[1]),
        .I1(R[1]),
        .O(\Q[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[3]_i_5 
       (.I0(Q[0]),
        .I1(R[0]),
        .O(\Q[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[43]_i_2 
       (.I0(temp[43]),
        .I1(R[43]),
        .O(\Q[43]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[43]_i_3 
       (.I0(temp[42]),
        .I1(R[42]),
        .O(\Q[43]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[43]_i_4 
       (.I0(temp[41]),
        .I1(R[41]),
        .O(\Q[43]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[43]_i_5 
       (.I0(temp[40]),
        .I1(R[40]),
        .O(\Q[43]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[47]_i_2 
       (.I0(temp[47]),
        .I1(R[47]),
        .O(\Q[47]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[47]_i_3 
       (.I0(temp[46]),
        .I1(R[46]),
        .O(\Q[47]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[47]_i_4 
       (.I0(temp[45]),
        .I1(R[45]),
        .O(\Q[47]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[47]_i_5 
       (.I0(temp[44]),
        .I1(R[44]),
        .O(\Q[47]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[51]_i_2 
       (.I0(temp[51]),
        .I1(R[51]),
        .O(\Q[51]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[51]_i_3 
       (.I0(temp[50]),
        .I1(R[50]),
        .O(\Q[51]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[51]_i_4 
       (.I0(temp[49]),
        .I1(R[49]),
        .O(\Q[51]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[51]_i_5 
       (.I0(temp[48]),
        .I1(R[48]),
        .O(\Q[51]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[55]_i_2 
       (.I0(temp[55]),
        .I1(R[55]),
        .O(\Q[55]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[55]_i_3 
       (.I0(temp[54]),
        .I1(R[54]),
        .O(\Q[55]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[55]_i_4 
       (.I0(temp[53]),
        .I1(R[53]),
        .O(\Q[55]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[55]_i_5 
       (.I0(temp[52]),
        .I1(R[52]),
        .O(\Q[55]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[59]_i_2 
       (.I0(temp[59]),
        .I1(R[59]),
        .O(\Q[59]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[59]_i_3 
       (.I0(temp[58]),
        .I1(R[58]),
        .O(\Q[59]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[59]_i_4 
       (.I0(temp[57]),
        .I1(R[57]),
        .O(\Q[59]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[59]_i_5 
       (.I0(temp[56]),
        .I1(R[56]),
        .O(\Q[59]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[63]_i_2 
       (.I0(temp[63]),
        .I1(R[63]),
        .O(\Q[63]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[63]_i_3 
       (.I0(temp[62]),
        .I1(R[62]),
        .O(\Q[63]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[63]_i_4 
       (.I0(temp[61]),
        .I1(R[61]),
        .O(\Q[63]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[63]_i_5 
       (.I0(temp[60]),
        .I1(R[60]),
        .O(\Q[63]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[7]_i_2 
       (.I0(Q[7]),
        .I1(R[7]),
        .O(\Q[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[7]_i_3 
       (.I0(Q[6]),
        .I1(R[6]),
        .O(\Q[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[7]_i_4 
       (.I0(Q[5]),
        .I1(R[5]),
        .O(\Q[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[7]_i_5 
       (.I0(Q[4]),
        .I1(R[4]),
        .O(\Q[7]_i_5_n_0 ));
  CARRY4 \Q_reg[11]_i_1 
       (.CI(\Q_reg[7]_i_1_n_0 ),
        .CO({\Q_reg[11]_i_1_n_0 ,\Q_reg[11]_i_1_n_1 ,\Q_reg[11]_i_1_n_2 ,\Q_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(\temp_reg[11]_0 ),
        .S({\Q[11]_i_2_n_0 ,\Q[11]_i_3_n_0 ,\Q[11]_i_4_n_0 ,\Q[11]_i_5_n_0 }));
  CARRY4 \Q_reg[15]_i_1 
       (.CI(\Q_reg[11]_i_1_n_0 ),
        .CO({\Q_reg[15]_i_1_n_0 ,\Q_reg[15]_i_1_n_1 ,\Q_reg[15]_i_1_n_2 ,\Q_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(\temp_reg[15]_0 ),
        .S({\Q[15]_i_2_n_0 ,\Q[15]_i_3_n_0 ,\Q[15]_i_4_n_0 ,\Q[15]_i_5_n_0 }));
  CARRY4 \Q_reg[19]_i_1 
       (.CI(\Q_reg[15]_i_1_n_0 ),
        .CO({\Q_reg[19]_i_1_n_0 ,\Q_reg[19]_i_1_n_1 ,\Q_reg[19]_i_1_n_2 ,\Q_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(\temp_reg[19]_0 ),
        .S({\Q[19]_i_2_n_0 ,\Q[19]_i_3_n_0 ,\Q[19]_i_4_n_0 ,\Q[19]_i_5_n_0 }));
  CARRY4 \Q_reg[23]_i_1 
       (.CI(\Q_reg[19]_i_1_n_0 ),
        .CO({\Q_reg[23]_i_1_n_0 ,\Q_reg[23]_i_1_n_1 ,\Q_reg[23]_i_1_n_2 ,\Q_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(\temp_reg[23]_0 ),
        .S({\Q[23]_i_2_n_0 ,\Q[23]_i_3_n_0 ,\Q[23]_i_4_n_0 ,\Q[23]_i_5_n_0 }));
  CARRY4 \Q_reg[27]_i_1 
       (.CI(\Q_reg[23]_i_1_n_0 ),
        .CO({\Q_reg[27]_i_1_n_0 ,\Q_reg[27]_i_1_n_1 ,\Q_reg[27]_i_1_n_2 ,\Q_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(\temp_reg[27]_0 ),
        .S({\Q[27]_i_2_n_0 ,\Q[27]_i_3_n_0 ,\Q[27]_i_4_n_0 ,\Q[27]_i_5_n_0 }));
  CARRY4 \Q_reg[31]_i_1 
       (.CI(\Q_reg[27]_i_1_n_0 ),
        .CO({\Q_reg[31]_i_1_n_0 ,\Q_reg[31]_i_1_n_1 ,\Q_reg[31]_i_1_n_2 ,\Q_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({temp[31],Q[30:28]}),
        .O(\temp_reg[31]_0 ),
        .S({\Q[31]_i_2_n_0 ,\Q[31]_i_3_n_0 ,\Q[31]_i_4_n_0 ,\Q[31]_i_5_n_0 }));
  CARRY4 \Q_reg[35]_i_1 
       (.CI(\Q_reg[31]_i_1_n_0 ),
        .CO({\Q_reg[35]_i_1_n_0 ,\Q_reg[35]_i_1_n_1 ,\Q_reg[35]_i_1_n_2 ,\Q_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(temp[35:32]),
        .O(\temp_reg[35]_0 ),
        .S({\Q[35]_i_2_n_0 ,\Q[35]_i_3_n_0 ,\Q[35]_i_4_n_0 ,\Q[35]_i_5_n_0 }));
  CARRY4 \Q_reg[39]_i_1 
       (.CI(\Q_reg[35]_i_1_n_0 ),
        .CO({\Q_reg[39]_i_1_n_0 ,\Q_reg[39]_i_1_n_1 ,\Q_reg[39]_i_1_n_2 ,\Q_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(temp[39:36]),
        .O(\temp_reg[39]_0 ),
        .S({\Q[39]_i_2_n_0 ,\Q[39]_i_3_n_0 ,\Q[39]_i_4_n_0 ,\Q[39]_i_5_n_0 }));
  CARRY4 \Q_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\Q_reg[3]_i_1_n_0 ,\Q_reg[3]_i_1_n_1 ,\Q_reg[3]_i_1_n_2 ,\Q_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(O),
        .S({\Q[3]_i_2_n_0 ,\Q[3]_i_3_n_0 ,\Q[3]_i_4_n_0 ,\Q[3]_i_5_n_0 }));
  CARRY4 \Q_reg[43]_i_1 
       (.CI(\Q_reg[39]_i_1_n_0 ),
        .CO({\Q_reg[43]_i_1_n_0 ,\Q_reg[43]_i_1_n_1 ,\Q_reg[43]_i_1_n_2 ,\Q_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(temp[43:40]),
        .O(\temp_reg[43]_0 ),
        .S({\Q[43]_i_2_n_0 ,\Q[43]_i_3_n_0 ,\Q[43]_i_4_n_0 ,\Q[43]_i_5_n_0 }));
  CARRY4 \Q_reg[47]_i_1 
       (.CI(\Q_reg[43]_i_1_n_0 ),
        .CO({\Q_reg[47]_i_1_n_0 ,\Q_reg[47]_i_1_n_1 ,\Q_reg[47]_i_1_n_2 ,\Q_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(temp[47:44]),
        .O(\temp_reg[47]_0 ),
        .S({\Q[47]_i_2_n_0 ,\Q[47]_i_3_n_0 ,\Q[47]_i_4_n_0 ,\Q[47]_i_5_n_0 }));
  CARRY4 \Q_reg[51]_i_1 
       (.CI(\Q_reg[47]_i_1_n_0 ),
        .CO({\Q_reg[51]_i_1_n_0 ,\Q_reg[51]_i_1_n_1 ,\Q_reg[51]_i_1_n_2 ,\Q_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(temp[51:48]),
        .O(\temp_reg[51]_0 ),
        .S({\Q[51]_i_2_n_0 ,\Q[51]_i_3_n_0 ,\Q[51]_i_4_n_0 ,\Q[51]_i_5_n_0 }));
  CARRY4 \Q_reg[55]_i_1 
       (.CI(\Q_reg[51]_i_1_n_0 ),
        .CO({\Q_reg[55]_i_1_n_0 ,\Q_reg[55]_i_1_n_1 ,\Q_reg[55]_i_1_n_2 ,\Q_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(temp[55:52]),
        .O(\temp_reg[55]_0 ),
        .S({\Q[55]_i_2_n_0 ,\Q[55]_i_3_n_0 ,\Q[55]_i_4_n_0 ,\Q[55]_i_5_n_0 }));
  CARRY4 \Q_reg[59]_i_1 
       (.CI(\Q_reg[55]_i_1_n_0 ),
        .CO({\Q_reg[59]_i_1_n_0 ,\Q_reg[59]_i_1_n_1 ,\Q_reg[59]_i_1_n_2 ,\Q_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(temp[59:56]),
        .O(\temp_reg[59]_0 ),
        .S({\Q[59]_i_2_n_0 ,\Q[59]_i_3_n_0 ,\Q[59]_i_4_n_0 ,\Q[59]_i_5_n_0 }));
  CARRY4 \Q_reg[63]_i_1 
       (.CI(\Q_reg[59]_i_1_n_0 ),
        .CO({\NLW_Q_reg[63]_i_1_CO_UNCONNECTED [3],\Q_reg[63]_i_1_n_1 ,\Q_reg[63]_i_1_n_2 ,\Q_reg[63]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,temp[62:60]}),
        .O(\temp_reg[62]_0 ),
        .S({\Q[63]_i_2_n_0 ,\Q[63]_i_3_n_0 ,\Q[63]_i_4_n_0 ,\Q[63]_i_5_n_0 }));
  CARRY4 \Q_reg[7]_i_1 
       (.CI(\Q_reg[3]_i_1_n_0 ),
        .CO({\Q_reg[7]_i_1_n_0 ,\Q_reg[7]_i_1_n_1 ,\Q_reg[7]_i_1_n_2 ,\Q_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(\temp_reg[7]_0 ),
        .S({\Q[7]_i_2_n_0 ,\Q[7]_i_3_n_0 ,\Q[7]_i_4_n_0 ,\Q[7]_i_5_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[32]_i_1 
       (.I0(temp[31]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[32]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[33]_i_1 
       (.I0(temp[32]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[33]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[34]_i_1 
       (.I0(temp[33]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[34]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[35]_i_1 
       (.I0(temp[34]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[35]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[36]_i_1 
       (.I0(temp[35]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[36]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[37]_i_1 
       (.I0(temp[36]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[37]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[38]_i_1 
       (.I0(temp[37]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[38]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[39]_i_1 
       (.I0(temp[38]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[39]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[40]_i_1 
       (.I0(temp[39]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[40]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[41]_i_1 
       (.I0(temp[40]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[41]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[42]_i_1 
       (.I0(temp[41]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[42]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[43]_i_1 
       (.I0(temp[42]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[43]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[44]_i_1 
       (.I0(temp[43]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[44]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[45]_i_1 
       (.I0(temp[44]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[45]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[46]_i_1 
       (.I0(temp[45]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[46]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[47]_i_1 
       (.I0(temp[46]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[47]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[48]_i_1 
       (.I0(temp[47]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[48]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[49]_i_1 
       (.I0(temp[48]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[49]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[50]_i_1 
       (.I0(temp[49]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[50]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[51]_i_1 
       (.I0(temp[50]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[51]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[52]_i_1 
       (.I0(temp[51]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[52]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[53]_i_1 
       (.I0(temp[52]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[53]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[54]_i_1 
       (.I0(temp[53]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[54]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[55]_i_1 
       (.I0(temp[54]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[55]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[56]_i_1 
       (.I0(temp[55]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[56]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[57]_i_1 
       (.I0(temp[56]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[57]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[58]_i_1 
       (.I0(temp[57]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[58]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[59]_i_1 
       (.I0(temp[58]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[59]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[60]_i_1 
       (.I0(temp[59]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[60]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[61]_i_1 
       (.I0(temp[60]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[61]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[62]_i_1 
       (.I0(temp[61]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[62]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[63]_i_1 
       (.I0(temp[62]),
        .I1(\temp_reg[63]_0 ),
        .O(p_1_in[63]));
  FDCE \temp_reg[0] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \temp_reg[10] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \temp_reg[11] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \temp_reg[12] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \temp_reg[13] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \temp_reg[14] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \temp_reg[15] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \temp_reg[16] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[16]),
        .Q(Q[16]));
  FDCE \temp_reg[17] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[17]),
        .Q(Q[17]));
  FDCE \temp_reg[18] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[18]),
        .Q(Q[18]));
  FDCE \temp_reg[19] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[19]),
        .Q(Q[19]));
  FDCE \temp_reg[1] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \temp_reg[20] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[20]),
        .Q(Q[20]));
  FDCE \temp_reg[21] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[21]),
        .Q(Q[21]));
  FDCE \temp_reg[22] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[22]),
        .Q(Q[22]));
  FDCE \temp_reg[23] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[23]),
        .Q(Q[23]));
  FDCE \temp_reg[24] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[24]),
        .Q(Q[24]));
  FDCE \temp_reg[25] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[25]),
        .Q(Q[25]));
  FDCE \temp_reg[26] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[26]),
        .Q(Q[26]));
  FDCE \temp_reg[27] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[27]),
        .Q(Q[27]));
  FDCE \temp_reg[28] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[28]),
        .Q(Q[28]));
  FDCE \temp_reg[29] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[29]),
        .Q(Q[29]));
  FDCE \temp_reg[2] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \temp_reg[30] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[30]),
        .Q(Q[30]));
  FDCE \temp_reg[31] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[31]),
        .Q(temp[31]));
  FDCE \temp_reg[32] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[32]),
        .Q(temp[32]));
  FDCE \temp_reg[33] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[33]),
        .Q(temp[33]));
  FDCE \temp_reg[34] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[34]),
        .Q(temp[34]));
  FDCE \temp_reg[35] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[35]),
        .Q(temp[35]));
  FDCE \temp_reg[36] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[36]),
        .Q(temp[36]));
  FDCE \temp_reg[37] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[37]),
        .Q(temp[37]));
  FDCE \temp_reg[38] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[38]),
        .Q(temp[38]));
  FDCE \temp_reg[39] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[39]),
        .Q(temp[39]));
  FDCE \temp_reg[3] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \temp_reg[40] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[40]),
        .Q(temp[40]));
  FDCE \temp_reg[41] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[41]),
        .Q(temp[41]));
  FDCE \temp_reg[42] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[42]),
        .Q(temp[42]));
  FDCE \temp_reg[43] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[43]),
        .Q(temp[43]));
  FDCE \temp_reg[44] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[44]),
        .Q(temp[44]));
  FDCE \temp_reg[45] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[45]),
        .Q(temp[45]));
  FDCE \temp_reg[46] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[46]),
        .Q(temp[46]));
  FDCE \temp_reg[47] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[47]),
        .Q(temp[47]));
  FDCE \temp_reg[48] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[48]),
        .Q(temp[48]));
  FDCE \temp_reg[49] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[49]),
        .Q(temp[49]));
  FDCE \temp_reg[4] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \temp_reg[50] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[50]),
        .Q(temp[50]));
  FDCE \temp_reg[51] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[51]),
        .Q(temp[51]));
  FDCE \temp_reg[52] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[52]),
        .Q(temp[52]));
  FDCE \temp_reg[53] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[53]),
        .Q(temp[53]));
  FDCE \temp_reg[54] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[54]),
        .Q(temp[54]));
  FDCE \temp_reg[55] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[55]),
        .Q(temp[55]));
  FDCE \temp_reg[56] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[56]),
        .Q(temp[56]));
  FDCE \temp_reg[57] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[57]),
        .Q(temp[57]));
  FDCE \temp_reg[58] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[58]),
        .Q(temp[58]));
  FDCE \temp_reg[59] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[59]),
        .Q(temp[59]));
  FDCE \temp_reg[5] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \temp_reg[60] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[60]),
        .Q(temp[60]));
  FDCE \temp_reg[61] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[61]),
        .Q(temp[61]));
  FDCE \temp_reg[62] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[62]),
        .Q(temp[62]));
  FDCE \temp_reg[63] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(p_1_in[63]),
        .Q(temp[63]));
  FDCE \temp_reg[6] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \temp_reg[7] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \temp_reg[8] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \temp_reg[9] 
       (.C(Clk),
        .CE(E),
        .CLR(Rst),
        .D(D[9]),
        .Q(Q[9]));
endmodule

(* BITS = "64" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TopLevel
   (A,
    B,
    Rst,
    Clk,
    Done,
    R);
  input [31:0]A;
  input [31:0]B;
  input Rst;
  input Clk;
  output Done;
  output [63:0]R;

  wire [31:0]A;
  wire [31:0]B;
  wire CU_Load;
  wire CU_Shift32;
  wire CU_data_in;
  wire Clk;
  wire Control_Unit_n_1;
  wire Control_Unit_n_37;
  wire Control_Unit_n_38;
  wire Control_Unit_n_39;
  wire Control_Unit_n_40;
  wire Control_Unit_n_41;
  wire Control_Unit_n_42;
  wire Control_Unit_n_43;
  wire Control_Unit_n_44;
  wire Control_Unit_n_45;
  wire Control_Unit_n_46;
  wire Control_Unit_n_47;
  wire Control_Unit_n_48;
  wire Control_Unit_n_49;
  wire Control_Unit_n_50;
  wire Control_Unit_n_51;
  wire Control_Unit_n_52;
  wire Control_Unit_n_53;
  wire Control_Unit_n_54;
  wire Control_Unit_n_55;
  wire Control_Unit_n_56;
  wire Control_Unit_n_57;
  wire Control_Unit_n_58;
  wire Control_Unit_n_59;
  wire Control_Unit_n_60;
  wire Control_Unit_n_61;
  wire Control_Unit_n_62;
  wire Control_Unit_n_63;
  wire Control_Unit_n_64;
  wire Control_Unit_n_65;
  wire Control_Unit_n_66;
  wire Control_Unit_n_67;
  wire Control_Unit_n_68;
  wire Counts_n_0;
  wire Counts_n_1;
  wire Done;
  wire LeftShift_n_31;
  wire LeftShift_n_32;
  wire LeftShift_n_33;
  wire LeftShift_n_34;
  wire LeftShift_n_35;
  wire LeftShift_n_36;
  wire LeftShift_n_37;
  wire LeftShift_n_38;
  wire LeftShift_n_39;
  wire LeftShift_n_40;
  wire LeftShift_n_41;
  wire LeftShift_n_42;
  wire LeftShift_n_43;
  wire LeftShift_n_44;
  wire LeftShift_n_45;
  wire LeftShift_n_46;
  wire LeftShift_n_47;
  wire LeftShift_n_48;
  wire LeftShift_n_49;
  wire LeftShift_n_50;
  wire LeftShift_n_51;
  wire LeftShift_n_52;
  wire LeftShift_n_53;
  wire LeftShift_n_54;
  wire LeftShift_n_55;
  wire LeftShift_n_56;
  wire LeftShift_n_57;
  wire LeftShift_n_58;
  wire LeftShift_n_59;
  wire LeftShift_n_60;
  wire LeftShift_n_61;
  wire LeftShift_n_62;
  wire LeftShift_n_63;
  wire LeftShift_n_64;
  wire LeftShift_n_65;
  wire LeftShift_n_66;
  wire LeftShift_n_67;
  wire LeftShift_n_68;
  wire LeftShift_n_69;
  wire LeftShift_n_70;
  wire LeftShift_n_71;
  wire LeftShift_n_72;
  wire LeftShift_n_73;
  wire LeftShift_n_74;
  wire LeftShift_n_75;
  wire LeftShift_n_76;
  wire LeftShift_n_77;
  wire LeftShift_n_78;
  wire LeftShift_n_79;
  wire LeftShift_n_80;
  wire LeftShift_n_81;
  wire LeftShift_n_82;
  wire LeftShift_n_83;
  wire LeftShift_n_84;
  wire LeftShift_n_85;
  wire LeftShift_n_86;
  wire LeftShift_n_87;
  wire LeftShift_n_88;
  wire LeftShift_n_89;
  wire LeftShift_n_90;
  wire LeftShift_n_91;
  wire LeftShift_n_92;
  wire LeftShift_n_93;
  wire LeftShift_n_94;
  wire [63:0]R;
  wire RightShift_n_0;
  wire RightShift_n_1;
  wire RightShift_n_10;
  wire RightShift_n_11;
  wire RightShift_n_12;
  wire RightShift_n_13;
  wire RightShift_n_14;
  wire RightShift_n_15;
  wire RightShift_n_16;
  wire RightShift_n_17;
  wire RightShift_n_18;
  wire RightShift_n_19;
  wire RightShift_n_2;
  wire RightShift_n_20;
  wire RightShift_n_21;
  wire RightShift_n_22;
  wire RightShift_n_23;
  wire RightShift_n_24;
  wire RightShift_n_25;
  wire RightShift_n_26;
  wire RightShift_n_27;
  wire RightShift_n_28;
  wire RightShift_n_29;
  wire RightShift_n_3;
  wire RightShift_n_30;
  wire RightShift_n_4;
  wire RightShift_n_5;
  wire RightShift_n_6;
  wire RightShift_n_7;
  wire RightShift_n_8;
  wire RightShift_n_9;
  wire Rst;
  wire mlier_shifter;
  wire [31:0]p_1_in;
  wire [30:0]temp;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ControlUnit Control_Unit
       (.A(A),
        .B(B),
        .CU_data_in(CU_data_in),
        .Clk(Clk),
        .D(p_1_in),
        .E(Control_Unit_n_1),
        .\FSM_onehot_state_reg[0]_0 ({Control_Unit_n_37,Control_Unit_n_38,Control_Unit_n_39,Control_Unit_n_40,Control_Unit_n_41,Control_Unit_n_42,Control_Unit_n_43,Control_Unit_n_44,Control_Unit_n_45,Control_Unit_n_46,Control_Unit_n_47,Control_Unit_n_48,Control_Unit_n_49,Control_Unit_n_50,Control_Unit_n_51,Control_Unit_n_52,Control_Unit_n_53,Control_Unit_n_54,Control_Unit_n_55,Control_Unit_n_56,Control_Unit_n_57,Control_Unit_n_58,Control_Unit_n_59,Control_Unit_n_60,Control_Unit_n_61,Control_Unit_n_62,Control_Unit_n_63,Control_Unit_n_64,Control_Unit_n_65,Control_Unit_n_66,Control_Unit_n_67,Control_Unit_n_68}),
        .\FSM_onehot_state_reg[2]_0 ({Counts_n_0,Counts_n_1}),
        .Q({Done,CU_Shift32,CU_Load}),
        .Rst(Rst),
        .\temp_reg[30] ({RightShift_n_0,RightShift_n_1,RightShift_n_2,RightShift_n_3,RightShift_n_4,RightShift_n_5,RightShift_n_6,RightShift_n_7,RightShift_n_8,RightShift_n_9,RightShift_n_10,RightShift_n_11,RightShift_n_12,RightShift_n_13,RightShift_n_14,RightShift_n_15,RightShift_n_16,RightShift_n_17,RightShift_n_18,RightShift_n_19,RightShift_n_20,RightShift_n_21,RightShift_n_22,RightShift_n_23,RightShift_n_24,RightShift_n_25,RightShift_n_26,RightShift_n_27,RightShift_n_28,RightShift_n_29,RightShift_n_30,mlier_shifter}),
        .\temp_reg[31] (temp));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter Counts
       (.Clk(Clk),
        .\FSM_onehot_state_reg[2] ({Counts_n_0,Counts_n_1}),
        .Q({Done,CU_Shift32,CU_Load}),
        .Rst(Rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ShiftReg_64 LeftShift
       (.Clk(Clk),
        .D(p_1_in),
        .E(Control_Unit_n_1),
        .O({LeftShift_n_31,LeftShift_n_32,LeftShift_n_33,LeftShift_n_34}),
        .Q(temp),
        .R(R),
        .Rst(Rst),
        .\temp_reg[11]_0 ({LeftShift_n_39,LeftShift_n_40,LeftShift_n_41,LeftShift_n_42}),
        .\temp_reg[15]_0 ({LeftShift_n_43,LeftShift_n_44,LeftShift_n_45,LeftShift_n_46}),
        .\temp_reg[19]_0 ({LeftShift_n_47,LeftShift_n_48,LeftShift_n_49,LeftShift_n_50}),
        .\temp_reg[23]_0 ({LeftShift_n_51,LeftShift_n_52,LeftShift_n_53,LeftShift_n_54}),
        .\temp_reg[27]_0 ({LeftShift_n_55,LeftShift_n_56,LeftShift_n_57,LeftShift_n_58}),
        .\temp_reg[31]_0 ({LeftShift_n_59,LeftShift_n_60,LeftShift_n_61,LeftShift_n_62}),
        .\temp_reg[35]_0 ({LeftShift_n_63,LeftShift_n_64,LeftShift_n_65,LeftShift_n_66}),
        .\temp_reg[39]_0 ({LeftShift_n_67,LeftShift_n_68,LeftShift_n_69,LeftShift_n_70}),
        .\temp_reg[43]_0 ({LeftShift_n_71,LeftShift_n_72,LeftShift_n_73,LeftShift_n_74}),
        .\temp_reg[47]_0 ({LeftShift_n_75,LeftShift_n_76,LeftShift_n_77,LeftShift_n_78}),
        .\temp_reg[51]_0 ({LeftShift_n_79,LeftShift_n_80,LeftShift_n_81,LeftShift_n_82}),
        .\temp_reg[55]_0 ({LeftShift_n_83,LeftShift_n_84,LeftShift_n_85,LeftShift_n_86}),
        .\temp_reg[59]_0 ({LeftShift_n_87,LeftShift_n_88,LeftShift_n_89,LeftShift_n_90}),
        .\temp_reg[62]_0 ({LeftShift_n_91,LeftShift_n_92,LeftShift_n_93,LeftShift_n_94}),
        .\temp_reg[63]_0 (CU_Load),
        .\temp_reg[7]_0 ({LeftShift_n_35,LeftShift_n_36,LeftShift_n_37,LeftShift_n_38}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_64 ProdReg
       (.CU_data_in(CU_data_in),
        .Clk(Clk),
        .O({LeftShift_n_31,LeftShift_n_32,LeftShift_n_33,LeftShift_n_34}),
        .\Q_reg[11]_0 ({LeftShift_n_39,LeftShift_n_40,LeftShift_n_41,LeftShift_n_42}),
        .\Q_reg[15]_0 ({LeftShift_n_43,LeftShift_n_44,LeftShift_n_45,LeftShift_n_46}),
        .\Q_reg[19]_0 ({LeftShift_n_47,LeftShift_n_48,LeftShift_n_49,LeftShift_n_50}),
        .\Q_reg[23]_0 ({LeftShift_n_51,LeftShift_n_52,LeftShift_n_53,LeftShift_n_54}),
        .\Q_reg[27]_0 ({LeftShift_n_55,LeftShift_n_56,LeftShift_n_57,LeftShift_n_58}),
        .\Q_reg[31]_0 ({LeftShift_n_59,LeftShift_n_60,LeftShift_n_61,LeftShift_n_62}),
        .\Q_reg[35]_0 ({LeftShift_n_63,LeftShift_n_64,LeftShift_n_65,LeftShift_n_66}),
        .\Q_reg[39]_0 ({LeftShift_n_67,LeftShift_n_68,LeftShift_n_69,LeftShift_n_70}),
        .\Q_reg[43]_0 ({LeftShift_n_71,LeftShift_n_72,LeftShift_n_73,LeftShift_n_74}),
        .\Q_reg[47]_0 ({LeftShift_n_75,LeftShift_n_76,LeftShift_n_77,LeftShift_n_78}),
        .\Q_reg[51]_0 ({LeftShift_n_79,LeftShift_n_80,LeftShift_n_81,LeftShift_n_82}),
        .\Q_reg[55]_0 ({LeftShift_n_83,LeftShift_n_84,LeftShift_n_85,LeftShift_n_86}),
        .\Q_reg[59]_0 ({LeftShift_n_87,LeftShift_n_88,LeftShift_n_89,LeftShift_n_90}),
        .\Q_reg[63]_0 ({LeftShift_n_91,LeftShift_n_92,LeftShift_n_93,LeftShift_n_94}),
        .\Q_reg[7]_0 ({LeftShift_n_35,LeftShift_n_36,LeftShift_n_37,LeftShift_n_38}),
        .R(R),
        .Rst(Rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ShiftReg_32 RightShift
       (.Clk(Clk),
        .D({Control_Unit_n_37,Control_Unit_n_38,Control_Unit_n_39,Control_Unit_n_40,Control_Unit_n_41,Control_Unit_n_42,Control_Unit_n_43,Control_Unit_n_44,Control_Unit_n_45,Control_Unit_n_46,Control_Unit_n_47,Control_Unit_n_48,Control_Unit_n_49,Control_Unit_n_50,Control_Unit_n_51,Control_Unit_n_52,Control_Unit_n_53,Control_Unit_n_54,Control_Unit_n_55,Control_Unit_n_56,Control_Unit_n_57,Control_Unit_n_58,Control_Unit_n_59,Control_Unit_n_60,Control_Unit_n_61,Control_Unit_n_62,Control_Unit_n_63,Control_Unit_n_64,Control_Unit_n_65,Control_Unit_n_66,Control_Unit_n_67,Control_Unit_n_68}),
        .E(Control_Unit_n_1),
        .Q({RightShift_n_0,RightShift_n_1,RightShift_n_2,RightShift_n_3,RightShift_n_4,RightShift_n_5,RightShift_n_6,RightShift_n_7,RightShift_n_8,RightShift_n_9,RightShift_n_10,RightShift_n_11,RightShift_n_12,RightShift_n_13,RightShift_n_14,RightShift_n_15,RightShift_n_16,RightShift_n_17,RightShift_n_18,RightShift_n_19,RightShift_n_20,RightShift_n_21,RightShift_n_22,RightShift_n_23,RightShift_n_24,RightShift_n_25,RightShift_n_26,RightShift_n_27,RightShift_n_28,RightShift_n_29,RightShift_n_30,mlier_shifter}),
        .Rst(Rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
   (\FSM_onehot_state_reg[2] ,
    Q,
    Clk,
    Rst);
  output [1:0]\FSM_onehot_state_reg[2] ;
  input [2:0]Q;
  input Clk;
  input Rst;

  wire Clk;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire [1:0]\FSM_onehot_state_reg[2] ;
  wire [2:0]Q;
  wire Rst;
  wire [4:0]count;
  wire [4:0]plusOp;
  wire \temp[2]_i_1__1_n_0 ;

  LUT6 #(
    .INIT(64'hFBFFFFFFAAAAAAAA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(Q[0]),
        .I1(count[3]),
        .I2(\FSM_onehot_state[2]_i_2_n_0 ),
        .I3(count[4]),
        .I4(count[2]),
        .I5(Q[1]),
        .O(\FSM_onehot_state_reg[2] [0]));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAAAA)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(Q[2]),
        .I1(count[3]),
        .I2(\FSM_onehot_state[2]_i_2_n_0 ),
        .I3(count[4]),
        .I4(count[2]),
        .I5(Q[1]),
        .O(\FSM_onehot_state_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(count[1]),
        .I1(count[0]),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \temp[0]_i_1 
       (.I0(count[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \temp[1]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \temp[2]_i_1__1 
       (.I0(count[0]),
        .I1(count[1]),
        .I2(count[2]),
        .O(\temp[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \temp[3]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[2]),
        .I3(count[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \temp[4]_i_1 
       (.I0(count[2]),
        .I1(count[0]),
        .I2(count[1]),
        .I3(count[3]),
        .I4(count[4]),
        .O(plusOp[4]));
  FDCE \temp_reg[0] 
       (.C(Clk),
        .CE(Q[1]),
        .CLR(Rst),
        .D(plusOp[0]),
        .Q(count[0]));
  FDCE \temp_reg[1] 
       (.C(Clk),
        .CE(Q[1]),
        .CLR(Rst),
        .D(plusOp[1]),
        .Q(count[1]));
  FDCE \temp_reg[2] 
       (.C(Clk),
        .CE(Q[1]),
        .CLR(Rst),
        .D(\temp[2]_i_1__1_n_0 ),
        .Q(count[2]));
  FDCE \temp_reg[3] 
       (.C(Clk),
        .CE(Q[1]),
        .CLR(Rst),
        .D(plusOp[3]),
        .Q(count[3]));
  FDCE \temp_reg[4] 
       (.C(Clk),
        .CE(Q[1]),
        .CLR(Rst),
        .D(plusOp[4]),
        .Q(count[4]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_TopLevel_0_0,TopLevel,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "TopLevel,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    Rst,
    Clk,
    Done,
    R);
  input [31:0]A;
  input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME Rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input Clk;
  output Done;
  output [63:0]R;

  wire [31:0]A;
  wire [31:0]B;
  wire Clk;
  wire Done;
  wire [63:0]R;
  wire Rst;

  (* BITS = "64" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TopLevel U0
       (.A(A),
        .B(B),
        .Clk(Clk),
        .Done(Done),
        .R(R),
        .Rst(Rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_64
   (R,
    CU_data_in,
    O,
    Clk,
    Rst,
    \Q_reg[7]_0 ,
    \Q_reg[11]_0 ,
    \Q_reg[15]_0 ,
    \Q_reg[19]_0 ,
    \Q_reg[23]_0 ,
    \Q_reg[27]_0 ,
    \Q_reg[31]_0 ,
    \Q_reg[35]_0 ,
    \Q_reg[39]_0 ,
    \Q_reg[43]_0 ,
    \Q_reg[47]_0 ,
    \Q_reg[51]_0 ,
    \Q_reg[55]_0 ,
    \Q_reg[59]_0 ,
    \Q_reg[63]_0 );
  output [63:0]R;
  input CU_data_in;
  input [3:0]O;
  input Clk;
  input Rst;
  input [3:0]\Q_reg[7]_0 ;
  input [3:0]\Q_reg[11]_0 ;
  input [3:0]\Q_reg[15]_0 ;
  input [3:0]\Q_reg[19]_0 ;
  input [3:0]\Q_reg[23]_0 ;
  input [3:0]\Q_reg[27]_0 ;
  input [3:0]\Q_reg[31]_0 ;
  input [3:0]\Q_reg[35]_0 ;
  input [3:0]\Q_reg[39]_0 ;
  input [3:0]\Q_reg[43]_0 ;
  input [3:0]\Q_reg[47]_0 ;
  input [3:0]\Q_reg[51]_0 ;
  input [3:0]\Q_reg[55]_0 ;
  input [3:0]\Q_reg[59]_0 ;
  input [3:0]\Q_reg[63]_0 ;

  wire CU_data_in;
  wire Clk;
  wire [3:0]O;
  wire [3:0]\Q_reg[11]_0 ;
  wire [3:0]\Q_reg[15]_0 ;
  wire [3:0]\Q_reg[19]_0 ;
  wire [3:0]\Q_reg[23]_0 ;
  wire [3:0]\Q_reg[27]_0 ;
  wire [3:0]\Q_reg[31]_0 ;
  wire [3:0]\Q_reg[35]_0 ;
  wire [3:0]\Q_reg[39]_0 ;
  wire [3:0]\Q_reg[43]_0 ;
  wire [3:0]\Q_reg[47]_0 ;
  wire [3:0]\Q_reg[51]_0 ;
  wire [3:0]\Q_reg[55]_0 ;
  wire [3:0]\Q_reg[59]_0 ;
  wire [3:0]\Q_reg[63]_0 ;
  wire [3:0]\Q_reg[7]_0 ;
  wire [63:0]R;
  wire Rst;

  FDCE \Q_reg[0] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(O[0]),
        .Q(R[0]));
  FDCE \Q_reg[10] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[11]_0 [2]),
        .Q(R[10]));
  FDCE \Q_reg[11] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[11]_0 [3]),
        .Q(R[11]));
  FDCE \Q_reg[12] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[15]_0 [0]),
        .Q(R[12]));
  FDCE \Q_reg[13] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[15]_0 [1]),
        .Q(R[13]));
  FDCE \Q_reg[14] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[15]_0 [2]),
        .Q(R[14]));
  FDCE \Q_reg[15] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[15]_0 [3]),
        .Q(R[15]));
  FDCE \Q_reg[16] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[19]_0 [0]),
        .Q(R[16]));
  FDCE \Q_reg[17] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[19]_0 [1]),
        .Q(R[17]));
  FDCE \Q_reg[18] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[19]_0 [2]),
        .Q(R[18]));
  FDCE \Q_reg[19] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[19]_0 [3]),
        .Q(R[19]));
  FDCE \Q_reg[1] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(O[1]),
        .Q(R[1]));
  FDCE \Q_reg[20] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[23]_0 [0]),
        .Q(R[20]));
  FDCE \Q_reg[21] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[23]_0 [1]),
        .Q(R[21]));
  FDCE \Q_reg[22] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[23]_0 [2]),
        .Q(R[22]));
  FDCE \Q_reg[23] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[23]_0 [3]),
        .Q(R[23]));
  FDCE \Q_reg[24] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[27]_0 [0]),
        .Q(R[24]));
  FDCE \Q_reg[25] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[27]_0 [1]),
        .Q(R[25]));
  FDCE \Q_reg[26] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[27]_0 [2]),
        .Q(R[26]));
  FDCE \Q_reg[27] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[27]_0 [3]),
        .Q(R[27]));
  FDCE \Q_reg[28] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[31]_0 [0]),
        .Q(R[28]));
  FDCE \Q_reg[29] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[31]_0 [1]),
        .Q(R[29]));
  FDCE \Q_reg[2] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(O[2]),
        .Q(R[2]));
  FDCE \Q_reg[30] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[31]_0 [2]),
        .Q(R[30]));
  FDCE \Q_reg[31] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[31]_0 [3]),
        .Q(R[31]));
  FDCE \Q_reg[32] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[35]_0 [0]),
        .Q(R[32]));
  FDCE \Q_reg[33] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[35]_0 [1]),
        .Q(R[33]));
  FDCE \Q_reg[34] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[35]_0 [2]),
        .Q(R[34]));
  FDCE \Q_reg[35] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[35]_0 [3]),
        .Q(R[35]));
  FDCE \Q_reg[36] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[39]_0 [0]),
        .Q(R[36]));
  FDCE \Q_reg[37] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[39]_0 [1]),
        .Q(R[37]));
  FDCE \Q_reg[38] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[39]_0 [2]),
        .Q(R[38]));
  FDCE \Q_reg[39] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[39]_0 [3]),
        .Q(R[39]));
  FDCE \Q_reg[3] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(O[3]),
        .Q(R[3]));
  FDCE \Q_reg[40] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[43]_0 [0]),
        .Q(R[40]));
  FDCE \Q_reg[41] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[43]_0 [1]),
        .Q(R[41]));
  FDCE \Q_reg[42] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[43]_0 [2]),
        .Q(R[42]));
  FDCE \Q_reg[43] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[43]_0 [3]),
        .Q(R[43]));
  FDCE \Q_reg[44] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[47]_0 [0]),
        .Q(R[44]));
  FDCE \Q_reg[45] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[47]_0 [1]),
        .Q(R[45]));
  FDCE \Q_reg[46] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[47]_0 [2]),
        .Q(R[46]));
  FDCE \Q_reg[47] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[47]_0 [3]),
        .Q(R[47]));
  FDCE \Q_reg[48] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[51]_0 [0]),
        .Q(R[48]));
  FDCE \Q_reg[49] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[51]_0 [1]),
        .Q(R[49]));
  FDCE \Q_reg[4] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[7]_0 [0]),
        .Q(R[4]));
  FDCE \Q_reg[50] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[51]_0 [2]),
        .Q(R[50]));
  FDCE \Q_reg[51] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[51]_0 [3]),
        .Q(R[51]));
  FDCE \Q_reg[52] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[55]_0 [0]),
        .Q(R[52]));
  FDCE \Q_reg[53] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[55]_0 [1]),
        .Q(R[53]));
  FDCE \Q_reg[54] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[55]_0 [2]),
        .Q(R[54]));
  FDCE \Q_reg[55] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[55]_0 [3]),
        .Q(R[55]));
  FDCE \Q_reg[56] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[59]_0 [0]),
        .Q(R[56]));
  FDCE \Q_reg[57] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[59]_0 [1]),
        .Q(R[57]));
  FDCE \Q_reg[58] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[59]_0 [2]),
        .Q(R[58]));
  FDCE \Q_reg[59] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[59]_0 [3]),
        .Q(R[59]));
  FDCE \Q_reg[5] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[7]_0 [1]),
        .Q(R[5]));
  FDCE \Q_reg[60] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[63]_0 [0]),
        .Q(R[60]));
  FDCE \Q_reg[61] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[63]_0 [1]),
        .Q(R[61]));
  FDCE \Q_reg[62] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[63]_0 [2]),
        .Q(R[62]));
  FDCE \Q_reg[63] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[63]_0 [3]),
        .Q(R[63]));
  FDCE \Q_reg[6] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[7]_0 [2]),
        .Q(R[6]));
  FDCE \Q_reg[7] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[7]_0 [3]),
        .Q(R[7]));
  FDCE \Q_reg[8] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[11]_0 [0]),
        .Q(R[8]));
  FDCE \Q_reg[9] 
       (.C(Clk),
        .CE(CU_data_in),
        .CLR(Rst),
        .D(\Q_reg[11]_0 [1]),
        .Q(R[9]));
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
