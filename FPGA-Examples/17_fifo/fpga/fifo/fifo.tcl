# Copyright (C) 1991-2013 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.

# Quartus II: Generate Tcl File for Project
# File: fifo.tcl
# Generated on: Wed Sep 13 20:30:20 2017

# Load Quartus II Tcl Project package
package require ::quartus::project

set_location_assignment PIN_N19 -to ab[17]
set_location_assignment PIN_N20 -to ab[18]
set_location_assignment PIN_P20 -to ab[16]
set_location_assignment PIN_K21 -to ab[20]
set_location_assignment PIN_K22 -to ab[19]
set_location_assignment PIN_J22 -to ab[21]
set_location_assignment PIN_J21 -to ab[22]
set_location_assignment PIN_U22 -to db[8]
set_location_assignment PIN_U21 -to db[9]
set_location_assignment PIN_V22 -to db[10]
set_location_assignment PIN_V21 -to db[11]
set_location_assignment PIN_W22 -to db[12]
set_location_assignment PIN_W21 -to db[13]
set_location_assignment PIN_M19 -to db[1]
set_location_assignment PIN_M16 -to db[2]
set_location_assignment PIN_M15 -to db[3]
set_location_assignment PIN_N18 -to db[0]
set_location_assignment PIN_P21 -to db[5]
set_location_assignment PIN_P22 -to db[4]
set_location_assignment PIN_R18 -to db[15]
set_location_assignment PIN_R20 -to db[14]
set_location_assignment PIN_R22 -to db[6]
set_location_assignment PIN_R21 -to db[7]
set_location_assignment PIN_L22 -to nadv
set_location_assignment PIN_M21 -to wrn
set_location_assignment PIN_M20 -to cs0
set_location_assignment PIN_G1 -to clk_25m
set_location_assignment PIN_N22 -to rdn
set_location_assignment PIN_R11 -to led_red
set_location_assignment PIN_U11 -to led_green
set_location_assignment PIN_U9 -to led_blue
set_location_assignment PIN_L21 -to fifo_full_flag