# ORCA_TOP – Physical Design Automation (RTL → GDSII)

## 📌 Project Overview

**ORCA_TOP** is a stage-wise **Physical Design automation project** developed using **Synopsys IC Compiler II (ICC2)**.  
This repository demonstrates **industry-style TCL scripting**, a **structured Physical Design flow**, and **signoff awareness** aligned with real-world **RTL-to-GDSII ASIC methodology**.

The project is organized to reflect **production-level Physical Design practices**, where each PD stage is:
- Fully automated
- Independently debuggable
- Properly validated
- Version-controlled

---

## 🎯 Project Objectives

- Automate the complete **Physical Design flow** using ICC2 TCL scripts  
- Follow **industry-standard directory organization**
- Enable **stage-level execution and debugging**
- Build an **interview-ready & recruiter-friendly** PD project
- Demonstrate awareness of **timing, power, and physical integrity**

---

## 🛠 Tools & Technology

| Category | Details |
|-------|--------|
| Physical Design Tool | Synopsys IC Compiler II (ICC2) |
| Timing Analysis | Synopsys PrimeTime |
| RC Extraction | Synopsys StarRC |
| Technology Node | 28 nm |
| Design Type | Multi-voltage ASIC block |
| Flow | RTL → GDSII |
| Scripting Language | TCL |

---

## 🧩 Physical Design Flow (Stage-wise Automation)

### ✅ Stage 1: Import Design *(Completed)*

#### Objective  
Create a clean ICC2 environment and import the design with all required dependencies.

#### Automated Tasks
- Search path configuration  
- Reference NDM libraries (RVT / HVT / LVT / SRAM)  
- Working library creation  
- Gate-level netlist import  
- Design linking  
- MMMC timing constraints loading  
- Scan DEF import  
- UPF (power intent) loading and commit  
- Initial design sanity checks  
- Report generation  
- Save design as **import_design** block  

📂 **Script Location**
scripts/01_design_setup/Import_design.tcl

##  ✅  Stage 2: Floorplan (Completed)

### Objective
Define the physical boundaries of the design by creating the core and die area, placing ports and macros, defining voltage regions, and preparing the design for placement and routing.

### Automated Tasks
- Open imported design database and create floorplan block  
- Core and die area definition using utilization, offset, and shape  
- Floorplan initialization with site rows  
- Port placement using pin guides and routing layer constraints  
- Voltage area creation for multi-voltage power domains  
- Macro-only placement with hierarchy-based grouping  
- Macro spacing rule definition (horizontal and vertical)  
- Keepout margin creation around hard macros  
- Partial placement blockage generation  
- Routing layer constraint setup  
- Macro fixing and placement legalization  
- Congestion analysis and reporting  
- Tap cell and boundary cell insertion  
- Physical design sanity checks  
- Save floorplan block for next PD stage  

📂 **Script Location**
scripts/02_floorplan/floorplan.tcl
---

## 👤 Author

**Rajshekhar S Hiremath**  
ASIC Physical Design Engineer  

**Expertise:**  
RTL → GDSII | ICC2 | PrimeTime  

---

## ⚠️ Disclaimer

This project is intended **strictly for learning and demonstration purposes**.  
All scripts are **generic and reusable**.  
Tool-generated databases and proprietary data are **intentionally excluded**.

---

⭐ If you are a **VLSI fresher or PD learner**, this repository is designed to help you understand **real-world Physical Design scripting practices**.
