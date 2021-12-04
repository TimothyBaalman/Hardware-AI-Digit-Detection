onbreak {resume}

# create library
if [file exists work] {
	vdel -all
}
vlib work

# compile source files
vlog Network.sv Network_tb.sv

# start and run simulation
vsim -voptargs=+acc work.tb
view list
view wave

# Diplays All Signals recursively
add wave -noupdate -divider -height 32 "Guess Output"
add wave -b -r /tb/out
add wave -noupdate -divider -height 32 "Control Values"
add wave -color blue -b -r /tb/net/con_mod/clk
add wave -color blue -b -r /tb/net/con_mod/layer0_en
add wave -color blue -b -r /tb/net/con_mod/layer1_en

-- Set Wave Output Items
TreeUpdate [SetDefaultTree]
WaveRestoreZoom {0 ps} {100 ns}
configure wave -namecolwidth 225
configure wave -valuecolwidth 260
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2

-- Run the Simulation
run 16980ns
