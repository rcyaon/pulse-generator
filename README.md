# SKY130 Mixed-signal Memory Testchip
Experimenting making a mixed-signal test chip where a current-starved pulse generator drives an SRAM bitcell, characterizing how bias current controls switching in SKY130.

```
├── csi_cell/
│   ├── csi_cell.xschem
│   ├── csi_cell.spice
│   ├── csi_cell.gds
│   └── sim/
│       ├── tb_csi_cell.xschem
│       └── tb_csi_cell.spice
├── bias_mirror/
│   ├── bias_mirror.xschem
│   ├── bias_mirror.spice
│   ├── bias_mirror.gds
│   └── sim/
│       ├── tb_bias_mirror.xschem
│       └── tb_bias_mirror.spice
├── sram_cell/
│   ├── sram_cell.xschem
│   ├── sram_cell.spice
│   ├── sram_cell.gds
│   └── sim/
│       ├── tb_sram_cell.xschem
│       └── tb_sram_cell.spice
├── sense_amp/
│   ├── sense_amp.xschem
│   ├── sense_amp.spice
│   ├── sense_amp.gds
│   └── sim/
│       ├── tb_sense_amp.xschem
│       └── tb_sense_amp.spice
├── decoder/
│   ├── decoder.v
│   └── sim/
│       └── tb_decoder.v
├── controller/
│   ├── controller.v
│   └── sim/
│       └── tb_controller.v
├── top/
│   ├── top.xschem
│   ├── top.spice
│   ├── top.gds
│   ├── top.lef
│   └── sim/
│       ├── tb_top.xschem
│       ├── tb_top.spice
│       └── tb_top.v
├── cosim/
│   ├── tb_cosim.v
│   ├── tb_cosim.spice
│   └── run_cosim.sh
└── README.md
```

## Progress
- [x] Schematics and Verilog written
- [ ] Block-level simulation clean 
- [ ] Pulse width vs Ibias sweep plot generated
- [ ] Co-simulation done (ngspice + iverilog)
- [ ] DRC and LVS clean layout 
- [ ] Parasitic extraction and post-layout simulation
