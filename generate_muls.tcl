## Integer Multiplier
create_project -in_memory 

set moduleName mul_uint8
set bitWidth 8
set pipeStages 3
create_ip -name mult_gen -vendor xilinx.com -library ip -version 12.0 -module_name $moduleName
set_property -dict [list CONFIG.PortAType {Unsigned} CONFIG.PortAWidth {$bitWidth} CONFIG.PortBType {Unsigned} CONFIG.PortBWidth {$bitWidth} CONFIG.Multiplier_Construction {Use_Mults}  CONFIG.Use_Custom_Output_Width {true} CONFIG.OutputWidthHigh {$bitWidth} CONFIG.PipeStages {$pipeStages} CONFIG.ClockEnable {false}] [get_ips $moduleName] 

set moduleName mul_int8
create_ip -name mult_gen -vendor xilinx.com -library ip -version 12.0 -module_name $moduleName
set_property -dict [list CONFIG.PortAWidth {$bitWidth} CONFIG.PortBWidth {$bitWidth} CONFIG.Multiplier_Construction {Use_Mults}  CONFIG.Use_Custom_Output_Width {true} CONFIG.OutputWidthHigh {$bitWidth} CONFIG.PipeStages {$pipeStages} CONFIG.ClockEnable {false}] [get_ips $moduleName] 



set moduleName mul_uint16
set bitWidth 16
set pipeStages 3
create_ip -name mult_gen -vendor xilinx.com -library ip -version 12.0 -module_name $moduleName
set_property -dict [list CONFIG.PortAType {Unsigned} CONFIG.PortAWidth {$bitWidth} CONFIG.PortBType {Unsigned} CONFIG.PortBWidth {$bitWidth} CONFIG.Multiplier_Construction {Use_Mults}  CONFIG.Use_Custom_Output_Width {true} CONFIG.OutputWidthHigh {$bitWidth} CONFIG.PipeStages {$pipeStages} CONFIG.ClockEnable {false}] [get_ips $moduleName] 

set moduleName mul_int16
create_ip -name mult_gen -vendor xilinx.com -library ip -version 12.0 -module_name $moduleName
set_property -dict [list CONFIG.PortAWidth {$bitWidth} CONFIG.PortBWidth {$bitWidth} CONFIG.Multiplier_Construction {Use_Mults}  CONFIG.Use_Custom_Output_Width {true} CONFIG.OutputWidthHigh {$bitWidth} CONFIG.PipeStages {$pipeStages} CONFIG.ClockEnable {false}] [get_ips $moduleName] 



set moduleName mul_uint32
set bitWidth 32
set pipeStages 6
create_ip -name mult_gen -vendor xilinx.com -library ip -version 12.0 -module_name $moduleName
set_property -dict [list CONFIG.PortAType {Unsigned} CONFIG.PortAWidth {$bitWidth} CONFIG.PortBType {Unsigned} CONFIG.PortBWidth {$bitWidth} CONFIG.Multiplier_Construction {Use_Mults}  CONFIG.Use_Custom_Output_Width {true} CONFIG.OutputWidthHigh {$bitWidth} CONFIG.PipeStages {$pipeStages} CONFIG.ClockEnable {false}] [get_ips $moduleName] 

set moduleName mul_int32
create_ip -name mult_gen -vendor xilinx.com -library ip -version 12.0 -module_name $moduleName
set_property -dict [list CONFIG.PortAWidth {$bitWidth} CONFIG.PortBWidth {$bitWidth} CONFIG.Multiplier_Construction {Use_Mults}  CONFIG.Use_Custom_Output_Width {true} CONFIG.OutputWidthHigh {$bitWidth} CONFIG.PipeStages {$pipeStages} CONFIG.ClockEnable {false}] [get_ips $moduleName] 

generate_target {all} [get_ips]

# synth_ip [get_ips]
