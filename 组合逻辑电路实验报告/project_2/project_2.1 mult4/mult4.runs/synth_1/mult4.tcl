# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a35tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir G:/pro/suiji/suiji.cache/wt [current_project]
set_property parent.project_path G:/pro/suiji/suiji.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib G:/pro/suiji/suiji.srcs/sources_1/new/123.v
synth_design -top mult4 -part xc7a35tcsg324-1
write_checkpoint -noxdef mult4.dcp
catch { report_utilization -file mult4_utilization_synth.rpt -pb mult4_utilization_synth.pb }
