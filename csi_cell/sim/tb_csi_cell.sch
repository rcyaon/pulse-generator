v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -160 -10 -140 -10 {lab=#net1}
N -240 -10 -220 -10 {lab=GND}
N -160 10 -140 10 {lab=#net2}
N -160 10 -160 20 {lab=#net2}
N -160 80 -160 100 {lab=GND}
C {/headless/pulse-generator/csi_cell/csi_cell.sym} 10 0 0 0 {name=x1}
C {code.sym} -130 -170 0 0 {name=s1 only_toplevel=false value="

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 0.1n 400n

.save all"}
C {isource.sym} -190 -10 1 0 {name=I0 value=5u}
C {vsource.sym} -160 50 0 0 {name=V1 value="pulse(0 1.8 0 100p 100p 50n 200n)" savecurrent=false}
C {gnd.sym} -160 100 0 0 {name=l1 lab=GND}
C {gnd.sym} -240 -10 1 0 {name=l2 lab=GND}
