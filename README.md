# Current-Starved Inverter Pulse Generator in SKY130
Built a current-starved inverter pulse generator in SKY130 to understand how bias current controls pulse width for memory cell switching.

```
├── blocks/
│   ├── csi_cell/
│   │   ├── csi_cell.xschem   
│   │   ├── csi_cell.spice   
│   │   ├── csi_cell.gds   
│   │   └── sim/
│   │       ├── tb_csi_cell.xschem
│   │       └── tb_csi_cell.spice
│   └── bias_mirror/
│       ├── bias_mirror.xschem
│       ├── bias_mirror.spice
│       ├── bias_mirror.gds
│       └── sim/
│           ├── tb_bias_mirror.xschem
│           └── tb_bias_mirror.spice
├── top/
│   ├── top.xschem   
│   ├── top.spice 
│   ├── top.gds
│   ├── top.lef
│   └── sim/
│       ├── tb_top.xschem
│       └── tb_top.spice
├── docs/
│   └── pulse_width_vs_vctrl.png # key result plot to document
└── README.md
```
