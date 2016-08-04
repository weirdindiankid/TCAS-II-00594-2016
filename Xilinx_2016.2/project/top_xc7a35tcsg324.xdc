#set_property SEVERITY {Warning} [get_drc_checks UCIO-1]
set_property BITSTREAM.General.UnconstrainedPins {Allow} [current_design]

#set_property PACKAGE_PIN D5 [get_ports fpga_awake]
set_property IOSTANDARD LVCMOS25 [get_ports fpga_awake]

#set_property PACKAGE_PIN E3 [get_ports sysclk_p]
set_property IOSTANDARD LVDS_25 [get_ports sysclk_p]

#set_property PACKAGE_PIN D3  [get_ports sysclk_n]
set_property IOSTANDARD LVDS_25 [get_ports sysclk_n]

create_clock -period 2.300 -name sysclk_p -waveform {0.000 1.150} [get_ports sysclk_p]

## dont care about the timing of output signals
##set_output_delay -add_delay -clock [get_clocks {sysclk_p}]  0.000 [get_ports {fpga_awake}]
