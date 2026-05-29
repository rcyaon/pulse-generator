v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 -90 40 -60 {lab=VDD}
N 40 0 40 20 {lab=#net1}
N 40 80 40 100 {lab=Vout}
N 40 90 130 90 {lab=Vout}
N 40 240 40 260 {lab=GND}
N -40 -30 -0 -30 {lab=Ibias}
N -40 -30 -40 210 {lab=Ibias}
N -70 80 -40 80 {lab=Ibias}
N -40 210 -0 210 {lab=Ibias}
N 40 -30 120 -30 {lab=VDD}
N 40 50 120 50 {lab=VDD}
N 40 210 120 210 {lab=GND}
N 40 130 120 130 {lab=GND}
N 40 -170 40 -150 {lab=GND}
N 40 160 40 180 {lab=#net2}
N -20 130 -0 130 {lab=Vin}
N -20 50 -20 130 {lab=Vin}
N -20 50 -0 50 {lab=Vin}
N -20 130 -20 140 {lab=Vin}
C {sky130_fd_pr/nfet_01v8.sym} 20 130 0 0 {name=M2
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 20 210 0 0 {name=M3
W=1
L=0.5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 20 50 0 0 {name=M4
W=2
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_wire.sym} 130 90 2 0 {name=p4 sig_type=std_logic lab=Vout}
C {gnd.sym} 40 260 0 0 {name=l2 lab=GND}
C {ipin.sym} -20 140 3 0 {name=p1 lab=Vin}
C {sky130_fd_pr/pfet_01v8.sym} 20 -30 0 0 {name=M5
W=1
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_wire.sym} 120 -30 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 40 -70 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 40 250 0 0 {name=p6 sig_type=std_logic lab=GND}
C {lab_wire.sym} 120 210 0 1 {name=p7 sig_type=std_logic lab=GND}
C {lab_wire.sym} 120 130 2 0 {name=p8 sig_type=std_logic lab=GND}
C {ipin.sym} -70 80 0 0 {name=p3 lab=Ibias}
C {vsource.sym} 40 -120 2 0 {name=V1 value=1.8 savecurrent=false}
C {lab_wire.sym} 40 -170 0 0 {name=p10 sig_type=std_logic lab=GND}
C {lab_wire.sym} 120 50 2 0 {name=p9 sig_type=std_logic lab=VDD}
