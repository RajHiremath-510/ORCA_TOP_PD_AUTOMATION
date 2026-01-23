# ICC2   : Import Design Automated Script 
# Tool   : Synopsys IC Compiler II (ICC2)
# Stage  : Import Design
# Date   : 23-01-2026

#Search Path
set search_path "$search_path /home/vlsiguru/PHYSICAL_DESIGN/TRAINER1/ICC2/ORCA_TOP/ref/CLIBs/CLIBs"

#Reference Libraries
set ref_ndm_list {saed32_1p9m_tech.ndm saed32_hvt.ndm saed32_lvt.ndm saed32_rvt.ndm saed32_sram_lp.ndm}

#Create Working Library
if {[file exists ORCA_TOP.nlib]} {
 sh mv ORCA_TOP.nlib ORCA_TOP_bkup.nlib}
create_lib -ref_libs $ref_ndm_list -use_technology_lib saed32_1p9m_tech.ndm ORCA_TOP.nlib
save_lib

#Read Design Netlist
read_verilog ./inputs/ORCA_TOP.v
if {[link_block]} {
    puts "Successfully linked"
} else {
    puts "Linking failed"
}

#Load Timing Constraints
source -e -v ./inputs/sdc_constraints/MMMC.tcl

#Load ScanDEF
read_def ./inputs/ORCA_TOP.scandef

#Load UPF (Power Intent)
load_upf ./inputs/ORCA_TOP.upf
commit_upf

#Design Checks and Reports
set report ./reports/IMP_DESIGN_REPORT
if {![file exists $report]} {
  file mkdir $report}
check_netlist > $report/check_net.rpt
report_global_timing > $report/global_timing.rpt
check_mv_design > $report/mv_design.rpt
report_design_mismatch > $report/design_miss.rpt
report_ref_libs > $report/ref_lib.rpt
report_qor > $report/qor.rpt
check_scan_chain > $report/scan_chain_info.rpt

#Save Imported Design
save_block -as import_design
