#run with: vsim -do test_rom.do

onbreak {resume}

# create library
if [file exists work] {
    vdel -all
}
vlib work

# compile source files
vlog test_rom.sv test_rom_tb.sv

########################################
# Replace stimulus with tb module name #
########################################

# start and run simulation
vsim -voptargs=+acc work.tb 

view list
view wave

# Diplays All Signals recursively 
add wave -b -r /tb/*

-- Set Wave Output Items 
TreeUpdate [SetDefaultTree]
WaveRestoreZoom {0 ps} {75 ns}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2

-- Run the Simulation
run 120ns
