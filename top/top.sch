v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {/headless/pulse-generator/csi_cell/csi_cell.sym} 0 -20 0 0 {name=x1}
C {/headless/pulse-generator/bias_mirror/bias_mirror.sym} 0 40 0 0 {name=x2}
C {code.sym} -140 -180 0 0 {name=s1 only_toplevel=false value="
.step param Iref 1u 20u 5u
.tran 0,1n 1000n
.measure tran pw_out TRIG v(Vin) VAL=0.9 RISE=1 TARG v(Vout) VAL=0.9 FALL=1"}
