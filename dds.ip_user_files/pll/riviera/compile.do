vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../dds.srcs/sources_1/ip/pll/pll_clk_wiz.v" \
"../../../../dds.srcs/sources_1/ip/pll/pll.v" \


vlog -work xil_defaultlib \
"glbl.v"

