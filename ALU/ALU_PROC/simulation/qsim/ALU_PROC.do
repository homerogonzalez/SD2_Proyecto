onerror {exit -code 1}
vlib work
vcom -work work ALU_PROC.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax ALU_PROC_vhd_vec_tst/i1=ALU_PROC_vhd.sdo -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.ALU_PROC_vhd_vec_tst
vcd file -direction ALU_PROC.msim.vcd
vcd add -internal ALU_PROC_vhd_vec_tst/*
vcd add -internal ALU_PROC_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
