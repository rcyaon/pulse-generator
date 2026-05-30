# SKY130 Mixed-signal Memory Testchip
Experimenting making a mixed-signal test chip where a current-starved pulse generator drives an SRAM bitcell, characterizing how bias current controls switching.

```
├── csi_cell/
│   ├── csi_cell.sch
│   ├── csi_cell.spice
│   ├── csi_cell.gds
│   └── sim/
│       ├── tb_csi_cell.sch
│       └── tb_csi_cell.spice
├── bias_mirror/
│   ├── bias_mirror.sch
│   ├── bias_mirror.spice
│   ├── bias_mirror.gds
│   └── sim/
│       ├── tb_bias_mirror.sch
│       └── tb_bias_mirror.spice
├── sram_cell/
│   ├── sram_cell.sch
│   ├── sram_cell.spice
│   ├── sram_cell.gds
│   └── sim/
│       ├── tb_sram_cell.sch
│       └── tb_sram_cell.spice
├── sense_amp/
│   ├── sense_amp.sch
│   ├── sense_amp.spice
│   ├── sense_amp.gds
│   └── sim/
│       ├── tb_sense_amp.sch
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
│   ├── top.sch
│   ├── top.spice
│   ├── top.gds
│   ├── top.lef
│   └── sim/
│       ├── tb_top.sch
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
