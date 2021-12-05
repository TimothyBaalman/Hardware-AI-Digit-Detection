onbreak {resume}

# create library
if [file exists work] {
	vdel -all
}
vlib work

# compile source files
vlog m_2c_32b.sv m_2c_32b_tb.sv

# start and run simulation
vsim -voptargs=+acc work.tb
view list
view wave

# Diplays All Signals recursively
add wave -noupdate -divider -height 32 "Input/Output"
add wave -color green -b -r /tb/x_in
add wave -color blue -b -r /tb/y_in
add wave -color yellow -b -r /tb/mult_out
add wave -noupdate -divider -height 32 "Uncut M_Output"
add wave -color yellow -b -r /tb/test_mod/to_cut_res

-- Set Wave Output Items
TreeUpdate [SetDefaultTree]
WaveRestoreZoom {0 ps} {10 ns}
configure wave -namecolwidth 150
configure wave -valuecolwidth 450
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2

-- Run the Simulation
run 8ns
