# Design and Verification of 4x4 Multiplier using Wallace Tree Architecture

## 🧠 Introduction

This project involves designing a **4x4-bit multiplier** using the **Wallace Tree architecture** to achieve high-speed multiplication with efficient area utilization. The design is implemented in **Verilog HDL** and verified through simulation using **Xilinx Vivado**.

---

## 🛠️ What It Is

A 4x4 Wallace Tree Multiplier breaks down the multiplication process into partial product generation followed by a fast reduction using half and full adders. This reduces delay and improves performance, making it ideal for DSP and high-speed computing applications.

---

## ❓ Why Use Wallace Tree?

- Reduces the number of sequential addition stages
- Speeds up multiplication vs. naive add-and-shift
- Ideal for parallel processing in hardware design

---

## 📦 Requirements

- [Xilinx Vivado Design Suite](https://www.xilinx.com/products/design-tools/vivado.html)
- Basic understanding of Verilog and digital arithmetic

---

## ⚙️ Setup Instructions

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/MuraliKrishna-git/Design_and_Verification_of_4x4_Multiplier_using_Wallace_Tree_Architecture.git
   cd Design_and_Verification_of_4x4_Multiplier_using_Wallace_Tree_Architecture
   ```

2. **Open Project in Vivado:**
   - Launch Vivado
   - Use `File → Open Project` and select the `.xpr` file

3. **Explore Sources:**
   - RTL Design files in `srcs/`
   - Testbenches available under simulation sources

---

## ▶️ How to Run

1. Go to **Flow Navigator > Simulation > Run Simulation > Run Behavioral Simulation**
2. Observe output waveform for correct partial product addition and final product
3. Verify the testbench output using Vivado's built-in waveform viewer (XSim)

---

## 🔮 Future Enhancements

- Extend to 8x8 or 16x16 multipliers
- Implement pipelined Wallace Tree for even higher speed
- Compare Wallace Tree vs. Array Multiplier using simulation data
- Integrate with ALU design for full datapath functionality

---

## 📄 License

This project is licensed under the [GNU General Public License v3.0](LICENSE).

---
