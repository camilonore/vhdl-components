# 🛠️ VHDL Components Library

A **comprehensive collection of reusable VHDL modules** for digital system design, ranging from basic logic elements to complex arithmetic units and display drivers.

## 📖 Table of Contents

* [1. General Description](#1-general-description)
    * [Purpose and Scope](#purpose-and-scope)
    * [Target Audience](#target-audience)
* [2. Repository Structure](#2-repository-structure)
* [3. System Requirements](#3-system-requirements)
* [4. Installation & Integration](#4-installation--integration)
* [5. Usage Guide](#5-usage-guide)
* [6. Component Categories](#6-component-categories)
* [7. Roadmap & To-Do](#7-roadmap--to-do)
* [8. Contribution Guide](#8-contribution-guide)
* [9. License](#9-license)
* [10. Contact](#10-contact)

---

## 1. General Description

**VHDL Components** is an open-source library designed to **accelerate FPGA and ASIC development** by providing a suite of standard, pre-verified hardware modules. Instead of rewriting common logic blocks from scratch, developers can drop these components into their designs to handle tasks like signal conversion, arithmetic operations, and timing control.

### Purpose and Scope

The main goal of this project is to provide a **modular library** of hardware descriptions that are **easy to integrate and simulate**.
### Target Audience

This library is primarily aimed at:

* **Students** learning Digital Electronics and VHDL design patterns.
---

## 2. Repository Structure

The project is organized by component category, making it easy to locate specific logic blocks.

```

vhdl-components/
├── bcd\_2\_7seg/           \# 🔢 BCD to 7-Segment decoder modules
├── bin\_2\_7seg\_hex/       \# 🔢 Binary to Hexadecimal 7-Segment display drivers
├── bin\_2\_bcd/            \# 🔄 Binary to BCD conversion logic
├── bin\_2\_bcd\_13bits/     \# 🔄 Specialized 13-bit Binary to BCD converter
├── bin\_2\_bcd\_signals/    \# 🔄 Signal-based BCD conversion implementations
├── clocks/               \# ⏱️ Clock management and generation
├── comparadores/         \# ⚖️ Digital comparators (Equal, Greater, Less)
├── contadores/           \# ⏲️ Binary and decimal counters
├── divisores\_frecuencia/ \# 📉 Frequency dividers/prescalers
├── flipflops/            \# 💾 Basic memory elements (D, JK, T Flip-Flops)
├── latches/              \# 🔒 Level-sensitive latches
├── multiplicadores/      \# ✖️ Binary multipliers
├── restadores/           \# ➖ Binary subtractors
├── sumadores/            \# ➕ Binary adders (Half, Full, Ripple Carry)
├── copy-components.bat   \# ⚡ Personal Script to automate copying files
├── https://www.google.com/search?q=LICENSE               \# MIT License file
└── README.md             \# Project documentation

````

---

## 3. System Requirements

To use these components, you need a standard VHDL development environment.

### Recommended Tools

| Tool | Purpose |
| :--- | :--- |
| **ModelSim** | Advanced simulation and debugging. |
| **Intel Quartus Prime** | Synthesis for Intel/Altera FPGAs. |

---

## 4. Installation & Integration

### Clone the Repository

Clone the entire library to your local machine to explore all components.

```bash
git clone [https://github.com/camilonore/vhdl-components.git](https://github.com/camilonore/vhdl-components.git)
cd vhdl-components
````

-----

## 5\. Usage Guide

### Instantiating a Component

To use a component (e.g., a frequency divider) in your top-level design, declare the component and map its ports as shown in the example below:

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top_Level is
    Port ( clk_in : in STD_LOGIC;
           led_out : out STD_LOGIC);
end Top_Level;

architecture Behavioral of Top_Level is
    -- Declare the component from the library
    component frequency_divider
        Port ( clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               clk_out : out STD_LOGIC);
    end component;

begin
    -- Instantiate the component
    U1: frequency_divider
        port map (
            clk => clk_in,
            reset => '0',
            clk_out => led_out
        );
end Behavioral;
```

-----

## 6\. Component Categories

A brief overview of the available logic families in this library:

  * **🧮 Arithmetic Units:** Includes full adders (`sumadores`), subtractors (`restadores`), and multipliers (`multiplicadores`) for binary math operations.
  * **📊 Converters:** Modules to convert raw binary data into human-readable formats like BCD (`bin_2_bcd`) or 7-Segment display codes (`bcd_2_7seg`).
  * **⏱️ Timing & Control:** Essential timing blocks including Flip-Flops (`flipflops`), Latches (`latches`), and frequency dividers (`divisores_frecuencia`) to manage clock domains.
  * **🔢 Counters:** Up/Down counters and modulo counters located in `contadores`.

-----

## 7\. Contribution Guide

Contributions are **welcome**\! If you have a useful VHDL component to add:

1.  **Fork** the repository.
2.  Create a branch for your component: `git checkout -b feature/new-alu-component`.
3.  Add your VHDL file in the appropriate category folder (or create a new one).
4.  **Important:** Please include **comments** in your code explaining the inputs/outputs.
5.  Submit a **Pull Request** targeting the `main` branch.

-----

## 9\. License

This project is licensed under the **MIT License** - see the [LICENSE](https://www.google.com/search?q=LICENSE) file for details. This means you are free to use these components in personal and commercial projects.

-----

## 10\. Contact

  * **Maintainer:** Camilo Nore
  * **GitHub:** [@camilonore](https://www.google.com/search?q=https://github.com/camilonore)
  * **Project Link:** [https://github.com/camilonore/vhdl-components](https://www.google.com/search?q=https://github.com/camilonore/vhdl-components)

