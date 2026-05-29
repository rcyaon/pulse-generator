v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -160 -10 -140 -10 {lab=#net1}
N 160 -10 170 -10 {lab=#net2}
N 230 -10 240 -10 {lab=GND}
N -230 -10 -220 -10 {lab=GND}
N -230 -10 -230 30 {lab=GND}
N 240 -10 240 30 {lab=GND}
C {/headless/pulse-generator/bias_mirror/bias_mirror.sym} 10 -10 0 0 {name=x1}
C {code.sym} -130 -160 0 0 {name=s1 only_toplevel=false value="

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.dc I0 1u 20u 1u
.save all"}
C {isource.sym} -190 -10 1 0 {name=I0 value=1u}
C {res.sym} 200 -10 3 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -230 30 0 0 {name=l1 lab=GND}
C {gnd.sym} 240 30 0 0 {name=l2 lab=GND}
