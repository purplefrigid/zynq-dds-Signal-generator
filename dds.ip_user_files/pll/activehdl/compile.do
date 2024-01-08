vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../dds.srcs/sources_1/ip/pll/pll_clk_wiz.v" \
"../../../../dds.srcs/sources_1/ip/pll/pll.v" \


vlog -work xil_defaultlib \
"glbl.v"

