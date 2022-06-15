v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 4020 -330 4090 -330 { lab=io_in[26]}
N 4020 -310 4090 -310 { lab=io_in[21]}
N 4020 -290 4090 -290 { lab=io_in[22]}
N 4020 -270 4090 -270 { lab=io_in[23]}
N 4020 -250 4090 -250 { lab=io_in[17]}
N 4020 -230 4090 -230 { lab=io_in[18]}
N 4020 -210 4090 -210 { lab=io_out[25]}
N 4020 -190 4090 -190 { lab=io_out[24]}
N 4020 -170 4090 -170 { lab=vccd2}
N 4020 -150 4090 -150 { lab=io_in[19]}
N 4020 -130 4090 -130 { lab=vssd2}
N 4020 -110 4090 -110 { lab=io_in[20]}
N 4090 -210 4310 -210 { lab=io_out[25]}
N 4310 -210 4470 -210 { lab=io_out[25]}
N 4470 -150 4470 -100 { lab=la_data_out[0]}
N 4090 -190 4320 -190 { lab=io_out[24]}
N 4320 -130 4320 -90 { lab=la_data_out[1]}
C {devices/iopin.sym} 3240 -470 0 0 {name=p1 lab=vdda1}
C {devices/iopin.sym} 3240 -440 0 0 {name=p2 lab=vdda2}
C {devices/iopin.sym} 3240 -410 0 0 {name=p3 lab=vssa1}
C {devices/iopin.sym} 3240 -380 0 0 {name=p4 lab=vssa2}
C {devices/iopin.sym} 3240 -350 0 0 {name=p5 lab=vccd1}
C {devices/iopin.sym} 3240 -320 0 0 {name=p6 lab=vccd2}
C {devices/iopin.sym} 3240 -290 0 0 {name=p7 lab=vssd1}
C {devices/iopin.sym} 3240 -260 0 0 {name=p8 lab=vssd2}
C {devices/ipin.sym} 3290 -190 0 0 {name=p9 lab=wb_clk_i}
C {devices/ipin.sym} 3290 -160 0 0 {name=p10 lab=wb_rst_i}
C {devices/ipin.sym} 3290 -130 0 0 {name=p11 lab=wbs_stb_i}
C {devices/ipin.sym} 3290 -100 0 0 {name=p12 lab=wbs_cyc_i}
C {devices/ipin.sym} 3290 -70 0 0 {name=p13 lab=wbs_we_i}
C {devices/ipin.sym} 3290 -40 0 0 {name=p14 lab=wbs_sel_i[3:0]}
C {devices/ipin.sym} 3290 -10 0 0 {name=p15 lab=wbs_dat_i[31:0]}
C {devices/ipin.sym} 3290 20 0 0 {name=p16 lab=wbs_adr_i[31:0]}
C {devices/opin.sym} 3280 80 0 0 {name=p17 lab=wbs_ack_o}
C {devices/opin.sym} 3280 110 0 0 {name=p18 lab=wbs_dat_o[31:0]}
C {devices/ipin.sym} 3290 150 0 0 {name=p19 lab=la_data_in[127:0]}
C {devices/opin.sym} 3280 180 0 0 {name=p20 lab=la_data_out[127:0]}
C {devices/ipin.sym} 3290 260 0 0 {name=p21 lab=io_in[26:0]}
C {devices/ipin.sym} 3290 290 0 0 {name=p22 lab=io_in_3v3[26:0]}
C {devices/ipin.sym} 3280 570 0 0 {name=p23 lab=user_clock2}
C {devices/opin.sym} 3280 320 0 0 {name=p24 lab=io_out[26:0]}
C {devices/opin.sym} 3280 350 0 0 {name=p25 lab=io_oeb[26:0]}
C {devices/iopin.sym} 3250 410 0 0 {name=p26 lab=gpio_analog[17:0]}
C {devices/iopin.sym} 3250 440 0 0 {name=p27 lab=gpio_noesd[17:0]}
C {devices/iopin.sym} 3250 470 0 0 {name=p29 lab=io_analog[10:0]}
C {devices/iopin.sym} 3250 500 0 0 {name=p30 lab=io_clamp_high[2:0]}
C {devices/iopin.sym} 3250 530 0 0 {name=p31 lab=io_clamp_low[2:0]}
C {devices/opin.sym} 3270 600 0 0 {name=p32 lab=user_irq[2:0]}
C {devices/ipin.sym} 3290 210 0 0 {name=p28 lab=la_oenb[127:0]}
C {xschem/puf_super.sym} 3870 -220 0 0 {name=x1}
C {devices/lab_pin.sym} 4080 -330 0 1 {name=l1 sig_type=std_logic lab=io_in[26]}
C {devices/lab_pin.sym} 4080 -310 0 1 {name=l2 sig_type=std_logic lab=io_in[21]}
C {devices/lab_pin.sym} 4080 -290 0 1 {name=l3 sig_type=std_logic lab=io_in[22]}
C {devices/lab_pin.sym} 4080 -270 0 1 {name=l4 sig_type=std_logic lab=io_in[23]}
C {devices/lab_pin.sym} 4080 -250 0 1 {name=l5 sig_type=std_logic lab=io_in[17]}
C {devices/lab_pin.sym} 4080 -230 0 1 {name=l6 sig_type=std_logic lab=io_in[18]}
C {devices/lab_pin.sym} 4080 -210 0 1 {name=l7 sig_type=std_logic lab=io_out[25]}
C {devices/lab_pin.sym} 4080 -190 0 1 {name=l8 sig_type=std_logic lab=io_out[24]}
C {devices/lab_pin.sym} 4080 -170 0 1 {name=l9 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 4080 -150 0 1 {name=l10 sig_type=std_logic lab=io_in[19]}
C {devices/lab_pin.sym} 4080 -130 0 1 {name=l11 sig_type=std_logic lab=vssd2}
C {devices/lab_pin.sym} 4080 -110 0 1 {name=l12 sig_type=std_logic lab=io_in[20]}
C {devices/lab_pin.sym} 4470 -120 0 1 {name=l13 sig_type=std_logic lab=la_data_out[0]}
C {sky130_fd_pr/res_generic_m1.sym} 4470 -180 0 0 {name=R2
W=5
L=5
model=res_generic_m1
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 4320 -160 0 0 {name=R1
W=5
L=5
model=res_generic_m1
mult=1}
C {devices/lab_pin.sym} 4320 -100 0 1 {name=l14 sig_type=std_logic lab=la_data_out[1]}
