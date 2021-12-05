onbreak {resume}

# create library
if [file exists work] {
	vdel -all
}
vlib work

# compile source files
vlog control.sv control_tb.sv

# start and run simulation
vsim -voptargs=+acc work.tb
view list
view wave

# Diplays All Signals recursively
add wave -noupdate -divider -height 32 "Output"
add wave -color yellow -b -r /tb/test_con/clk
add wave -color yellow -b -r /tb/lay0_en
add wave -color yellow -b -r /tb/lay1_en

-- Set Wave Output Items
TreeUpdate [SetDefaultTree]
WaveRestoreZoom {0 ps} {5000 ns}
configure wave -namecolwidth 150
configure wave -valuecolwidth 250
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2

-- Run the Simulation
run 16980ns
