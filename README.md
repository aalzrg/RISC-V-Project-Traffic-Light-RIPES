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
## 🚦 Traffic Light Logic
```

- Follows an 8-state cycle:
  - Only one green at a time
  - Each green followed by yellow
  - All others remain red during the cycle
- Controlled via memory-mapped I/O to write RGB hex values

### 💡 Example LED memory writes:

```asm
sw a1, 0(t0)   # Red ON
sw a4, 4(t0)   # Yellow OFF
sw a6, 8(t0)   # Green OFF
```
## 🌀 Simulation Loop

Each state lasts 4 loops (pseudo delay).  
At the end of the last state, the loop restarts from the beginning.

---

## 📽 Adding Your Demo GIF

You can record your screen using:

- **ShareX** *(Windows)*
- **ScreenToGif** *(Windows)*
- **Peek** *(Linux)*
- **Kap** *(macOS)*

### ➕ Steps:

1. Record and export your simulation as a `.gif`
2. Save the `.gif` inside your repo folder
3. Embed it into the README using:

```markdown
![Demo](demo.gif)
```
## 📷 Screenshots

_Add some PNG/JPG snapshots of your simulation here_

Example:

```markdown
![Simulation Screenshot](screenshots/sim1.png)
```

---

## 📺 YouTube (Optional)

You can record a full explanation and add the link here:

**▶️ [Watch on YouTube](https://youtube.com/your-video)**

---

## ✍️ Author

- **Name**: `0xlzrg`  
- **Course**: `EC351 – Computer Engineering`  
- **University**: `[Your University Name]`
