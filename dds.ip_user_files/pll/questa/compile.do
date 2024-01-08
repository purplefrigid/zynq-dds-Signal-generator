vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../dds.srcs/sources_1/ip/pll/pll_clk_wiz.v" \
"../../../../dds.srcs/sources_1/ip/pll/pll.v" \


vlog -work xil_defaultlib \
"glbl.v"

