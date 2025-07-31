# 🚦 RISC-V Traffic Light Simulation (EC351 Project)

This project simulates a 4-way traffic light controller using **RISC-V Assembly** and the **RIPES simulator**.

## 📸 Demo (GIF)
<!-- Insert your GIF demo here -->
![Traffic Light Demo](path/to/demo.gif)

## 🎯 Overview

The goal of this project is to design a traffic light system that follows an 8-state cycle using LED matrices in the RIPES simulator. It uses RISC-V assembly on a single-cycle processor model.

Each intersection has:
- 3 LEDs (Red, Yellow, Green)
- Each direction is represented by a memory-mapped LED matrix

## 🛠 Requirements

- [RIPES Simulator](https://github.com/mortbopet/Ripes)
- A system that supports RISC-V simulation (Windows, Linux, Mac)

## 📥 Setup

1. Download and install RIPES from the [official GitHub](https://github.com/mortbopet/Ripes/releases).
2. Open RIPES and load the provided `.s` assembly file.
3. In the I/O configuration:
   - Add 4 **Matrix Displays**
   - Each matrix is set to width = `1`, height = `3`

## 🧠 Project Structure

```bash
RISC-V-Traffic-Light-RIPES/
├── traffic_light.s         # Main RISC-V assembly source code
├── demo.gif                # GIF demo of the traffic light
├── screenshots/            # Images of the simulation
└── README.md
