vcom -work work Waveform.vwf.vht
vsim -voptargs=+acc -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.ALU_PROC_PARA_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
