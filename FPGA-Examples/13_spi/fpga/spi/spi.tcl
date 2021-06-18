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
# File: spi.tcl
# Generated on: Mon Sep 11 11:37:47 2017

# Load Quartus II Tcl Project package
package require ::quartus::project

set_location_assignment PIN_G1 -to clk_25m
set_location_assignment PIN_R11 -to led_red
set_location_assignment PIN_U11 -to led_green
set_location_assignment PIN_U9 -to led_blue
set_location_assignment PIN_U22 -to spi_cs
set_location_assignment PIN_U21 -to spi_clk
set_location_assignment PIN_V21 -to spi_mosi
set_location_assignment PIN_V22 -to spi_miso