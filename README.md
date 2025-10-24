<!-- 

# parking_lot_system_FPGA
Realization of a VHDL based system of a parking lot

-->

# 🅿️ Car Parking System (VHDL Implementation)

A **VHDL-based car parking system** implemented on the **Altera DE10-Lite FPGA board**, designed as the final project for the *Digital Programmable Systems* course.

---

## 🚗 Overview

This project focuses on the design and implementation of a **smart car parking system** using **VHDL**.  
The system monitors parking availability through **ultrasonic sensors**, controls the **servo barrier**, and provides **visual and acoustic feedback** using LEDs and a buzzer.

<p align="center">
  <img src="image/parking_lot.jpg" alt="Parking lot overview" width="500">
</p>

---

## 🧰 Technologies

- ![VHDL](https://img.shields.io/badge/VHDL-HDL-blueviolet?style=flat-square&logo=vhdl)
- ![Intel Quartus Prime](https://img.shields.io/badge/Intel-Quartus%20Prime%20Lite-lightblue?style=flat-square&logo=intel)
- ![FPGA](https://img.shields.io/badge/FPGA-DE10--Lite-green?style=flat-square&logo=altiumdesigner)

---

## ⚙️ System Description

The car parking system is based on a **Mealy finite state machine** with four main states, displayed on the **7-segment display** of the DE10-Lite board.  
The system interacts with the environment through various components:

- Two **HC-SR04 ultrasonic sensors** (front and back)
- One **SG-90 servo motor** controlling the gate
- One **passive buzzer**
- Three **LEDs** (red, yellow, green) with 220 Ω resistors  
- A **breadboard** for sensor and actuator wiring

<p align="center">
  <img src="image/fritzing_circuit.jpg" alt="Fritzing circuit diagram" width="550">
</p>

The logic has been entirely described in VHDL, simulated, and then synthesized in Intel Quartus Prime Lite Edition.  
The **Mealy state machine** manages transitions between the system’s states according to sensor input.

<p align="center">
  <img src="image/mealy_fsm.jpg" alt="Mealy state machine diagram" width="480">
</p>

---

## 🧪 Results

The final implementation successfully reproduces the expected parking behavior on the **DE10-Lite** board:

- Correct state transitions displayed on 7-segment indicators  
- Smooth servo gate motion  
- Reliable detection from ultrasonic sensors  
- Visual and sound feedback confirming each state  

<p align="center">
  <img src="image/real_implementation.jpg" alt="Real hardware implementation" width="500">
</p>

---

## 📁 Repository Structure

📦 car_parking_system_vhdl
- src/ # VHDL source files
- image/ # Project images (schematics, FSM, implementation)
- docs/ # Project documentation
- README.md # Project overview

---

## 👥 Authors

Developed by [Francesco Savino](https://github.com/FrankSav80) and [Tommaso Savino](https://github.com/ItsTomSav)  
Master’s Degree in Automation and Robotics Engineering – Politecnico di Bari

---

## 🧠 Keywords

`VHDL` • `FPGA` • `Finite State Machine` • `Embedded Systems` • `Digital Design`
