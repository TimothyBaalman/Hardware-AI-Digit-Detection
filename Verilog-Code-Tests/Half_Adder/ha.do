onbreak {resume}

# create library
if [file exists work] {
	vdel -all
}
vlib work

# compile source files
vlog ha.sv ha_tb.sv

# start and run simulation
vsim -voptargs=+acc work.tb
view list
view wave

# Diplays All Signals recursively
add wave -noupdate -divider -height 32 "Input"
add wave -color green -b -r /tb/a_in
add wave -color blue -b -r /tb/b_in
add wave -noupdate -divider -height 32 "Output"
add wave -color yellow -b -r /tb/sum
add wave -color yellow -b -r /tb/carry

-- Set Wave Output Items
TreeUpdate [SetDefaultTree]
WaveRestoreZoom {0 ps} {10 ns}
configure wave -namecolwidth 150
configure wave -valuecolwidth 250
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2

-- Run the Simulation
run 5ns
