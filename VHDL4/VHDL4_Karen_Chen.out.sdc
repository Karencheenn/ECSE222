## Generated SDC file "VHDL4_Karen_Chen.out.sdc"

## Copyright (C) 2018  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

## DATE    "Wed Nov 01 23:08:27 2023"

##
## DEVICE  "5CSEMA5F31C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************



#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [get_ports {A[*]}] -to [get_ports {AgtBplusOne}] 2.000
set_max_delay -from [get_ports {A[*]}] -to [get_ports {AgteBplusOne}] 2.000
set_max_delay -from [get_ports {A[*]}] -to [get_ports {AltBplusOne}] 2.000
set_max_delay -from [get_ports {A[*]}] -to [get_ports {AlteBplusOne}] 2.000
set_max_delay -from [get_ports {A[*]}] -to [get_ports {AeqBplusOne}] 2.000
set_max_delay -from [get_ports {A[*]}] -to [get_ports {overflow}] 2.000
set_max_delay -from [get_ports {B[*]}] -to [get_ports {AgtBplusOne}] 2.000
set_max_delay -from [get_ports {B[*]}] -to [get_ports {AgteBplusOne}] 2.000
set_max_delay -from [get_ports {B[*]}] -to [get_ports {AltBplusOne}] 2.000
set_max_delay -from [get_ports {B[*]}] -to [get_ports {AlteBplusOne}] 2.000
set_max_delay -from [get_ports {B[*]}] -to [get_ports {AeqBplusOne}] 2.000
set_max_delay -from [get_ports {B[*]}] -to [get_ports {overflow}] 2.000


#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

