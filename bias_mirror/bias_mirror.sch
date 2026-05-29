v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -120 -80 -120 -60 {lab=VDD}
N 20 -80 20 -60 {lab=VDD}
N -40 -100 -40 -80 {lab=VDD}
N -120 -80 20 -80 {lab=VDD}
N -180 -30 -160 -30 {lab=Iref}
N -180 -70 -180 -30 {lab=Iref}
N -180 -70 -20 -70 {lab=Iref}
N -20 -70 -20 -30 {lab=Iref}
N -160 -30 -160 10 {lab=Iref}
N -160 10 -120 10 {lab=Iref}
N -120 -0 -120 10 {lab=Iref}
N -120 10 -120 30 {lab=Iref}
N 20 -0 20 30 {lab=Iout}
N -120 -30 -90 -30 {lab=VDD}
N 20 -30 60 -30 {lab=VDD}
N -40 -180 -40 -160 {lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 0 -30 0 0 {name=M1
W=2
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
C {sky130_fd_pr/pfet_01v8.sym} -140 -30 0 0 {name=M2
W=2
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
C {ipin.sym} -120 30 0 0 {name=p3 lab=Iref}
C {opin.sym} 20 30 0 0 {name=p1 lab=Iout}
C {lab_wire.sym} -40 -90 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -90 -30 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 60 -30 2 0 {name=p5 sig_type=std_logic lab=VDD}
C {vsource.sym} -40 -130 2 0 {name=V1 value=1.8 savecurrent=false}
C {lab_wire.sym} -40 -180 2 0 {name=p6 sig_type=std_logic lab=GND}
