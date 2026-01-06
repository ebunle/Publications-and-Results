# Optimal allocation of plug-in electric vehicle charging stations in the distribution network with distributed generation

**Authors:**  
Ebunle Akupan Rene¹, Willy Stephen Tounsi Fokui², Paule Kevin Nembou Kouonchie³  

**Corresponding Author:** ebunleakupanrene@gmail.com  

**Published in:** *Green Energy and Intelligent Transportation* 2 (2023) 100094  
**DOI:** [https://doi.org/10.1016/j.geits.2023.100094](https://doi.org/10.1016/j.geits.2023.100094)  

---

## Abstract
The transportation sector is characterized by high emissions of greenhouse gases (GHG). Electric Vehicles (EVs) have been proposed as a revolutionary solution. This study proposes the use of a hybrid Genetic Algorithm and Particle Swarm Optimization (GA-PSO) for the optimal allocation of plug-in EV charging stations (PEVCSs) in a distribution network with high penetration (60%) of distributed Photovoltaic (PV) generation.

The optimization problem is formulated as a multi-objective problem minimizing the active and reactive power losses as well as the voltage deviation index. The IEEE 33 and 69 bus distribution networks are used as test networks. The simulation was performed using MATLAB.

Results validate the effectiveness of the hybrid GA-PSO. For the IEEE 69 bus network, the resulting minimum voltage remained within acceptable margins (e.g., 0.973 p.u in case 1, 0.982 p.u in case 2). The strategic placement of PEVCSs led to only a minimal increase in power losses compared to the base case with only PVs. The hybrid GA-PSO outperformed both standard GA and PSO used individually in terms of achieving better voltage profiles and lower losses.

**Keywords:**  
Electric vehicles, Charging stations, Distributed generation, Photovoltaic, Genetic algorithm, Particle swarm optimization

---

## 1. Introduction
The fast adoption of EVs is dependent on the expansion of charging infrastructure. However, unplanned integration of EV Charging Stations (EVCS) can degrade power quality and increase losses in distribution networks. This study addresses this by optimizing EVCS placement in networks already containing high levels of distributed PV generation.

## 2. Methodology
### 2.1 Networks and EV Estimation
- Test systems: **IEEE 33-bus** and **69-bus** radial distribution networks.
- EV Penetration: Estimated at **63%** (33-bus) and **59%** (69-bus) of households, resulting in **184 EVs**.
- Charging Infrastructure: **7 PEVCSs** with a mix of Level 1 (11 kW) and Level 2 (22 kW) chargers, modeled at a **0.95 lagging power factor** to account for converter reactive power.

### 2.2 PV Generation Modeling
- PV penetration set at **60%** of the total active load.
- PV systems are modeled as **negative loads** at a power factor of 0.95.
- **Six different cases** of random PV sizing and placement were analyzed.

### 2.3 Problem Formulation
A multi-objective optimization aims to minimize:
1.  **Total Power Loss (Active + Reactive)**
2.  **Average Voltage Deviation Index (AVDI)**

**Objective Function:**
$$f = Min\{w_1 \cdot f_1 + w_2 \cdot f_2\}$$
where \(f_1\) is total power loss and \(f_2\) is AVDI.

**Constraints:** Include power balance, voltage limits, PV power limits, and line current/loading limits.

### 2.4 Optimization Algorithm: Hybrid GA-PSO
- A hybrid of **Genetic Algorithm (GA)** and **Particle Swarm Optimization (PSO)** is proposed.
- **Advantage:** Combines GA's crossover/mutation for wide exploration with PSO's memory and velocity for efficient convergence, reducing the risk of getting stuck in local optima.

## 3. Simulation and Results
### 3.1 Optimal PEVCS Locations
The hybrid GA-PSO successfully identified optimal bus locations for the 7 PEVCSs under all six random PV allocation cases for both test networks.

### 3.2 Network Performance
- **Voltage Profile:** High PV penetration (60%) significantly improved the voltage profile. The subsequent placement of PEVCSs by GA-PSO caused only slight, acceptable voltage drops, with the minimum bus voltage always above **0.95 p.u**.
- **Power Losses:** PV integration drastically reduced total power losses. The addition of optimally placed PEVCSs led to a minimal increase in losses, which remained well below the base case (no PVs) losses.
- **Average Voltage Deviation Index (AVDI):** The AVDI remained low after PEVCS integration, indicating maintained voltage stability.

### 3.3 Validation Against Standalone Algorithms
The hybrid GA-PSO's results were compared to those obtained using GA or PSO alone:
- **Hybrid GA-PSO consistently achieved higher minimum node voltages** and **lower power losses** across all test cases for both networks.
- This demonstrates the superior performance of the hybrid approach in finding a more robust and efficient solution.

## 4. Conclusion
The hybrid GA-PSO approach demonstrated superior performance in optimally allocating PEVCSs in distribution networks with high and randomly distributed PV generation. It effectively:
- Minimized the impact of EVCS loads on the network's voltage profile.
- Kept power loss increases to a minimum.
- Outperformed both GA and PSO when used individually.

This method provides a robust framework for planning EV charging infrastructure in modern, renewable-rich distribution networks. Future work will consider temporal factors like EV charging patterns, solar irradiation variability, and network uncertainties.

---

## Abbreviations

---

## References
See the original paper for a complete list of references.

---

## License
This article is licensed under a **Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License (CC BY-NC-ND 4.0)**.

---

## How to Cite
Rene, E.A., Fokui, W.S.T., Kouonchie, P.K.N. Optimal allocation of plug-in electric vehicle charging stations in the distribution network with distributed generation. *Green Energy and Intelligent Transportation* 2 (2023) 100094. https://doi.org/10.1016/j.geits.2023.100094
