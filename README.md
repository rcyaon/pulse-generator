# Current-Starved Inverter Pulse Generator in SKY130
Building a current-starved inverter pulse generator in SKY130 to understand how bias current controls pulse width for memory cell switching.

```
├── blocks/
│   ├── csi_cell/
│   │   ├── csi_cell.sch   
│   │   ├── csi_cell.spice   
│   │   ├── csi_cell.gds   
│   │   └── sim/
│   │       ├── tb_csi_cell.xschem
│   │       └── tb_csi_cell.spice
│   └── bias_mirror/
│       ├── bias_mirror.sch
│       ├── bias_mirror.spice
│       ├── bias_mirror.gds
│       └── sim/
│           ├── tb_bias_mirror.xschem
│           └── tb_bias_mirror.spice
├── top/
│   ├── top.sch   
│   ├── top.spice 
│   ├── top.gds
│   ├── top.lef
│   └── sim/
│       ├── tb_top.xschem
│       └── tb_top.spice
└── README.md
```

## `blocks/`
Individual circuit blocks, each self-contained with schematic, layout, and simulation testbench.

- `csi_cell/`: single current-starved inverter delay stage
- `bias_mirror/`: current mirror setting Ibias from external Vctrl pad

## `top/`
Full assembled design connecting all blocks, with final GDS and LEF for handoff.
