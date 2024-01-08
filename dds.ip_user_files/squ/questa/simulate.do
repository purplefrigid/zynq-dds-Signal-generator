onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib squ_opt

do {wave.do}

view wave
view structure
view signals

do {squ.udo}

run -all

quit -force
