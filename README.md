# ⏰ Alarm Clock – Digital Design Mini Project  

---

## 📘 Project Description

This project implements a **Digital Alarm Clock** using **Verilog HDL**, simulating a working model of a clock with alarm functionality.

### 🔧 Features

- Set current time (hours & minutes)  
- Set alarm time  
- Enable or disable the alarm  
- Time incrementing via clock signal  
- Alarm triggers when current time matches alarm time  
- BCD (Binary-Coded Decimal) representation for time values  
- Testbench for simulation and verification

The design consists of:
- A **main module (`alarmclock.v`)** for clock functionality  
- A **testbench (`alarmclock_tb.v`)** to simulate and validate operations  

---

## ▶️ How to Run (Using Icarus Verilog)

### 1. Compile the Design

```bash
iverilog -o test alarmclock.v alarmclock_tb.v
```

### 2. Run the Simulation

```bash
vvp test
```

### 3. View the Waveform

After simulation, open the waveform file in GTKWave:

```bash
gtkwave dump.vcd
```

> Make sure `dump.vcd` is generated from the testbench using the `$dumpfile` and `$dumpvars` commands.

---

## 🧪 Testbench Highlights

The testbench (`alarmclock_tb.v`) simulates:
- Setting time and alarm  
- Enabling and disabling the alarm  
- Checking alarm trigger at matching time  
- Clock pulses for incrementing time  

Further improvements can include:
- More edge case scenarios (e.g. midnight rollover)  
- Debouncing and stable state simulation  
- Expanded simulation duration

---

## 💡 Future Improvements

- Implement seconds tracking  
- Add snooze or repeat functionality  
- Display using 7-segment decoder (simulation or FPGA)  
- Integrate with physical switches or buttons for FPGA testing  

---

## 📚 Prerequisites

- [Icarus Verilog](http://iverilog.icarus.com/)
- [GTKWave](http://gtkwave.sourceforge.net/)

Install via terminal (Ubuntu/Debian):

```bash
sudo apt install iverilog gtkwave
```
