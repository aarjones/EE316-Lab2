# EE316-Lab2
## Aaron R. Jones, Cameron Palmer, Weston Hyde
This repository holds our project for EE316 (Computer Engineering Junior Lab) Lab 2 - PWM Sine Wave Generation with LCD and I<sup>2</sup>C 7-segment display.  The project was developed on Terasic's DE2-115 FPGA using VHDL

The system described for this project has four states--Initialization, Test Mode, Pause Mode, and PWM Generation.

**Initialization**: This mode loads a sine wave from the DE2-115's onboard ROM to the DE2-115's onboard SRAM

**Test Mode**:  This mode cycles through each SRAM address location once per second, and displays the current address locations and data values on both the LCD and a pair of independent I<sup>2</sup>C displays.  The system can cycle in either ascending or descending directions.

**Pause Mode**: Exactly like Test Mode, except the system does not move to the next address location.

**PWM Generation**: This mode runs through each SRAM address location at varying speeds to create a PWM signal.  When run through a Low-Pass filter, this PWM signal becomes a sine wave, with frequencies of either 60 Hz, 120 Hz, or 1000 Hz.
