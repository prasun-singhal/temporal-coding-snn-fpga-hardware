# temporal-coding-snn-fpga-hardware
# Temporal and Delay-Based Spiking Neural Network on FPGA

This repository explores **temporal computation in spiking neural networks (SNNs)** through
**delay-based feedforward architectures** implemented at the RTL level.

Unlike rate-based SNNs, this work treats **spike timing and latency as primary computational
primitives**, enabling deterministic temporal processing suitable for real-time hardware systems.

---

## Motivation

Biological neural systems exploit precise spike timing for computation.
However, most hardware SNN implementations rely on recurrent dynamics or rate coding.

This project investigates an alternative approach:
> **Can programmable delays in feedforward SNNs encode temporal structure without recurrence?**

---

## Core Ideas

- **Delay-based feedforward SNN**
- **Latency and time-to-first-spike encoding**
- **Deterministic timing on FPGA**
- **Hardware-efficient temporal memory using delay lines**
- **No global clock synchronization assumptions beyond RTL timing**

---

## Architecture Overview

- Leaky Integrate-and-Fire (LIF) neurons
- Synapses augmented with configurable delay elements
- Temporal patterns represented by relative spike arrival times
- Winner-Take-All behavior emerges from timing competition

---

## RTL Modules

| Module | Description |
|------|------------|
| `lif_neuron.v` | Cycle-accurate LIF neuron model |
| `delay_line.v` | Parameterized delay buffer for spike events |
| `synapse_delay.v` | Synapse with programmable temporal delay |
| `temporal_snn_top.v` | Top-level temporal SNN integration |

---

## Why This Matters

- Avoids unstable recurrent dynamics
- Enables **predictable latency and timing determinism**
- Maps naturally to FPGA fabric
- Aligns with neuromorphic principles of time-based computation

---

## Future Directions

- Learning delay parameters via STDP-like rules
- Hierarchical temporal processing using cascaded delay layers
- Comparative analysis with recurrent SNNs
- ASIC feasibility exploration

---

## Author

Prasun Singhal  
M.Tech (VLSI), IIT Roorkee  
Research focus: Temporal neuromorphic hardware and FPGA-based SNNs

