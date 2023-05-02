-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Feb 18 15:09:34 2023
-- Host        : kenzies_laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/kenzm/FPGA/Lab_003/Lab_003.srcs/sources_1/bd/design_1/ip/design_1_splitter_0_0/design_1_splitter_0_0_sim_netlist.vhdl
-- Design      : design_1_splitter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_splitter_0_0 is
  port (
    R : in STD_LOGIC_VECTOR ( 63 downto 0 );
    R_msb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    R_lsb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_splitter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_splitter_0_0 : entity is "design_1_splitter_0_0,splitter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_splitter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_splitter_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_splitter_0_0 : entity is "splitter,Vivado 2018.3";
end design_1_splitter_0_0;

architecture STRUCTURE of design_1_splitter_0_0 is
  signal \^r\ : STD_LOGIC_VECTOR ( 63 downto 0 );
begin
  R_lsb(31 downto 0) <= \^r\(31 downto 0);
  R_msb(31 downto 0) <= \^r\(63 downto 32);
  \^r\(63 downto 0) <= R(63 downto 0);
end STRUCTURE;
