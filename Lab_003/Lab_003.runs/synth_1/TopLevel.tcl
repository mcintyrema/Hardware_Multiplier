# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/kenzm/FPGA/Lab_003/Lab_003.cache/wt [current_project]
set_property parent.project_path C:/Users/kenzm/FPGA/Lab_003/Lab_003.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part www.digilentinc.com:pynq-z1:part0:1.0 [current_project]
set_property ip_repo_paths {
  c:/users/kenzm/fpga/lab_003/lab_003.srcs
  c:/Users/kenzm/FPGA/Lab_01/Lab_1_repo/ip_repo/axi_regmap
} [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/kenzm/FPGA/Lab_003/Lab_003.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/kenzm/FPGA/Lab_003/Lab_003.srcs/sources_1/new/ControlUnit.vhd
  C:/Users/kenzm/FPGA/Lab_003/Lab_003.srcs/sources_1/new/ShiftReg_32.vhd
  C:/Users/kenzm/FPGA/Lab_003/Lab_003.srcs/sources_1/new/ShiftReg_64.vhd
  C:/Users/kenzm/FPGA/Lab_003/Lab_003.srcs/sources_1/new/counter.vhd
  C:/Users/kenzm/FPGA/Lab_003/Lab_003.srcs/sources_1/new/flipflop_64.vhd
  C:/Users/kenzm/FPGA/Lab_003/Lab_003.srcs/sources_1/new/fulladder.vhd
  C:/Users/kenzm/FPGA/Lab_003/Lab_003.srcs/sources_1/imports/new/splitter.vhd
  C:/Users/kenzm/FPGA/Lab_003/Lab_003.srcs/sources_1/new/TopLevel.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/kenzm/FPGA/Lab_003/Lab_003.srcs/constrs_1/imports/Downloads/PYNQ-Z1_C.xdc
set_property used_in_implementation false [get_files C:/Users/kenzm/FPGA/Lab_003/Lab_003.srcs/constrs_1/imports/Downloads/PYNQ-Z1_C.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top TopLevel -part xc7z020clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef TopLevel.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file TopLevel_utilization_synth.rpt -pb TopLevel_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
