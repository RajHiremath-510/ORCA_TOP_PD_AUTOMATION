📌 Project Overview

ORCA_TOP is a stage-wise Physical Design automation project developed using Synopsys IC Compiler II (ICC2).
The objective of this repository is to demonstrate industry-style TCL scripting, structured Physical Design flow, and signoff awareness for the RTL-to-GDSII ASIC design methodology.

This repository is built to reflect real project practices, where each Physical Design stage is automated, validated, and version-controlled.

🎯 Project Objectives

Automate the complete Physical Design flow using ICC2 TCL scripts

Follow industry-standard directory organization

Enable stage-level execution and debugging

Build an interview-ready and recruiter-friendly PD project

Demonstrate awareness of timing, power, and physical integrity

🛠 Tools & Technology
Category	Details
Physical Design Tool	Synopsys IC Compiler II (ICC2)
Timing Analysis	Synopsys PrimeTime
RC Extraction	Synopsys StarRC
Technology Node	28 nm
Design Type	Multi-voltage ASIC block
Flow	RTL → GDSII
Scripting Language	TCL

🧩 Physical Design Flow (Stage-wise Automation)
✅ Stage 1: Import Design (Completed)

Objective:
Create a clean ICC2 environment and import the design with all dependencies.

Automated Tasks:
Search path configuration
Reference NDM libraries (RVT / HVT / LVT / SRAM)
Working library creation
Gate-level netlist import
Design linking
MMMC timing constraints loading
ScanDEF import
UPF (power intent) loading and commit
Initial design sanity checks
Report generation
Design saved as import_design block

📂 scripts/01_design_setup/Import_design.tcl

👤 Author

Rajshekhar S Hiremath
ASIC Physical Design Engineer
RTL → GDSII | ICC2 | PrimeTime

⚠️ Disclaimer

This project is intended for learning and demonstration purposes only.
Scripts are generic and reusable; tool-generated databases are excluded.
