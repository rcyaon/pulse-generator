# Current-Starved Inverter Pulse Generator in SKY130
Building a current-starved inverter pulse generator in SKY130 to understand how bias current controls pulse width for memory cell switching.

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
## W.I.P.
- `csi_cell/`: single current-starved inverter delay stage
- `bias_mirror/`: current mirror setting Ibias from external Vctrl pad
