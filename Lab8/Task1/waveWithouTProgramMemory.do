onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Test1/clk
add wave -noupdate /Test1/Reset
add wave -noupdate /Test1/Run
add wave -noupdate /Test1/DIN
add wave -noupdate /Test1/Done
add wave -noupdate /Test1/Bus_out
add wave -noupdate /Test1/procssr/CU/IR
add wave -noupdate -radix unsigned /Test1/procssr/CU/Counter
add wave -noupdate -radix unsigned /Test1/procssr/CU/we
add wave -noupdate -radix unsigned /Test1/procssr/CU/adr
add wave -noupdate /Test1/procssr/regfile/out
add wave -noupdate /Test1/procssr/regfile/in
add wave -noupdate -radix binary /Test1/procssr/regfile/mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {226073 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 182
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {576184 ps} {891184 ps}
