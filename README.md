# Alarm-Clock
SEM III _Digital Design And Computer Organization_MiniProject

## Description
The provided Verilog code defines a digital alarm clock module and its corresponding testbench for simulation. The digital alarm clock module incorporates features for setting the time and alarm, enabling/disabling the alarm, and incrementing the current time based on a clock signal. The module utilizes Binary-Coded Decimal (BCD) representation for hours and minutes. The testbench initializes signals, generates clock pulses, and simulates various scenarios, including setting the time and alarm, enabling/disabling the alarm, and testing the conditions for alarm triggering. Key areas for improvement include completing the logic for setting the time and alarm, implementing clock logic for time incrementation, and enhancing the testbench with additional test scenarios for comprehensive verification.

## How to Run in Icarus Verilog
iverilog -o test alarmclock.v alarmclock_tb.v
##
vvp test
##
gtkwave dump.vcd


