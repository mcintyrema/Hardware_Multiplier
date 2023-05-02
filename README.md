Lab 3 for Advanced Digital Design class (ece1195)

Design your first Synchronous HDL design, including a Finite State Machine (FSM). You will implement a multiplication algorithm using digital hardware.

Design the 32-bit Multiplier Unit, per the hardware algorithm above. Your final top-level Multiplier Unit should have the following IO ports. Write a VHDL 
or Tcl Script testbench to verify the functionality of the Multiplier Unit. You should test a wide range of cases. Synthesize, implement and generate bitstream 
for your Multiplier Unit, then write C/C++ testbench to fully verify the functionality of your FPGA-configured design. You should test a wide range of cases and 
include random testing. You will be needing more regmap registers for this lab, so make sure to configure and take notes of their numbers and bit-widths. 
Design the Multiplier Unit using a 5-bit counter, as a separate block, included in the data path and get the product ready in the least number of cycles possible 
from when the rst signal
