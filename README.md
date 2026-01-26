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

### ✅ Stage 1: Import Design 

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

📁 script location: `scripts/1_Import_design.tcl`

##  ✅  Stage 2: Floorplan 

#### Objective
Define the physical boundaries of the design by creating the core and die area, placing ports and macros, defining voltage regions, and preparing the design for placement and routing.

#### Automated Tasks
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

## 📦 Generated Outputs
- Floorplan design block (floorplan)
- Congestion report
- Boundary cell report
- Tap cell report
- Physical constraint report
- Pin placement report
  
📁 script location: `scripts/2_flooorplan.tcl`

## 🔌 Stage 3: Power Planning 

### Objective
Implement a robust and DRC-clean power delivery network by creating power meshes, straps, rings, and standard cell rails to ensure reliable power integrity across all voltage domains.

### Automated Tasks
- Sanity check for power and ground nets (VDD / VSS / VDDH)
- Open floorplan database and create power planning block
- Removal of existing PG strategies, patterns, regions, and routes
- Power net connectivity update and validation
- Definition of PG via master rules
- Identification and grouping of hard macros by power domain
- Creation of top-level power mesh on higher metal layers (M7 / M8)
- Power mesh strategy definition for core and voltage areas
- Creation of lower metal power straps (M2)
- Multi-layer PG strategy compilation with via rules
- Macro power ring creation for VDD, VSS, and VDDH
- Macro pin power connectivity using scattered pin strategy
- Standard cell power rail generation
- PG connectivity, missing via, and DRC checks
- Save power-planned design block for next PD stage

### Key Power Structures Implemented
- **M7 & M8** : Global power mesh  
- **M2** : Local power straps  
- **M5 & M6** : Macro power rings  
- **M1** : Standard cell power rails  

### Key Checks & Reports
- Power connectivity check  
- Missing PG via check  
- Power DRC verification  

### Generated Outputs
- Power-planned design block (`powerplan`)
- Power connectivity report
- Missing via report
- Power DRC report

📁 script location: `scripts/3_powerplan.tcl`

## 📐 Stage 4: Placement (Completed)

### Objective
Place and optimize standard cells while meeting timing, congestion, and physical constraints, ensuring a legal and high-quality placement ready for Clock Tree Synthesis (CTS).

### Automated Tasks
- Creation of report directories for placement stages
- Pre-placement sanity checks:
  - Power connectivity verification
  - Multi-voltage design checks
  - Physical constraint and legality checks
  - QoR and utilization reporting
- Scan DEF reloading and MMMC timing constraints sourcing
- Placement-related application option tuning:
  - Congestion-driven placement
  - Timing-driven placement
  - Advanced legalization
- Clock network set as ideal during placement
- Routing layer constraint definition
- Hard macro fixing before standard cell placement
- Coarse placement and legalization
- Incremental placement refinement
- Multi-stage placement optimization:
  - Initial DRC placement
  - Initial timing optimization
  - Final placement
  - Final placement optimization
- Cell insertion analysis (buffers, inverters)
- Design block save at each major placement milestone

### Key Checks & Reports
- Power connectivity and PG DRC checks
- Multi-voltage design checks
- Placement legality verification
- Congestion analysis
- Utilization reporting
- Global timing reports
- High fanout net analysis
- Constraint violation reports

### Generated Outputs
- Rough legalized placement block  
- Initial DRC placement block  
- Initial optimization placement block  
- Final placement block  
- Final optimization placement block  
- Detailed placement and QoR reports  

📁 script location: `scripts/4_placement.tcl`

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
