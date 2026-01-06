# Artificial Intelligence-Based Optimal EVCS Integration with Stochastically Sized and Distributed PVs in an RDNS Segmented in Zones

**Authors:**  
Ebunle Akupan René¹, Willy Stephen Tounsi Fokui²  

**Corresponding Author:** ebunleakupanrene@gmail.com  

**Published in:** *Journal of Electrical Systems and Information Technology* (2024)  
**DOI:** [https://doi.org/10.1186/s43067-023-00126-w](https://doi.org/10.1186/s43067-023-00126-w)  

---

## Abstract
The growing interest in electric vehicles (EVs) for transportation has led to increased production and government support through legislation, offering environmental benefits such as reduced air pollution and carbon emissions. This study proposes a novel strategy for maximizing EV utilization through EV charging stations (EVCSs) in a radial distribution network system (RDNS) by considering factors such as load voltage deviation, line losses, and the presence of distributed solar photovoltaic systems at load centers.

The research begins by segmenting the RDNS into zones, followed by the application of an artificial intelligence-based hybrid genetic algorithm (GA) and particle swarm optimization (PSO) approach known as hybrid GA–PSO. This approach identifies optimal locations for EVCSs integrated with photovoltaics within the network. Simulations using the IEEE 33-node test feeder validate the proposed techniques, demonstrating the effectiveness of the hybrid GA–PSO algorithm in identifying optimal EVCS placement within each zone.

**Keywords:**  
Charging station, Electric vehicle, Photovoltaic, Zones, Artificial intelligence, Genetic algorithm, Optimization techniques, Particle swarm optimization, Power losses, Voltage stability margin

---

## 1. Introduction
The shift toward EV technology aligns with the goal of preserving the natural environment. However, effective management of the power grid is crucial, particularly in radial distribution network systems (RDNS) as they pose stress and deviation of power system parameters from their normal. This study introduces a novel strategy for the optimal placement of EVCSs and distributed PV systems in an RDNS, leveraging AI-based optimization techniques.

---

## 2. Methodology
### 2.1 Distribution Network Modeling
- The IEEE 33-bus system is used as the test network.
- The RDNS is segmented into zones using improved spectral clustering.
- Each zone is allocated an EVCS with charging points based on estimated EV demand.

### 2.2 Modeling of EVs and Chargers
- EV penetration is set to 30%.
- Five EV models with Level 1 (11 kW) and Level 2 (22 kW) chargers are considered.
- Reactive power compensation is modeled with a power factor of 0.90.

### 2.3 Modeling of Distributed PV Systems
- PV penetration is set to 35%.
- PV systems are modeled as negative loads with reactive power injection capability.
- PV modules are randomly sized and distributed across the network.

### 2.4 Problem Formulation
The optimization aims to minimize:
1. **Real and reactive power losses**
2. **Voltage deviation index (VDI)**

**Objective function:**
\[
J^* = \beta_1 \cdot J_1^* + \beta_2 \cdot J_2^*
\]
where \(J_1^*\) is total power loss and \(J_2^*\) is VDI.

### 2.5 Optimization Algorithms
Three optimization techniques are compared:
1. **Particle Swarm Optimization (PSO)**
2. **Genetic Algorithm (GA)**
3. **Hybrid GA–PSO**

---

## 3. Simulation and Results
### 3.1 Optimal EVCS and PV Placement
- The hybrid GA–PSO algorithm identified optimal EVCS locations in each zone.
- Four execution cases with randomly sized and placed PV systems were analyzed.

### 3.2 Voltage Profile Improvement
- The hybrid GA–PSO achieved the best voltage profile with a minimum node voltage of **0.92214 p.u.**, better than GA (0.89494 p.u.) and PSO (0.90792 p.u.).

### 3.3 Power Loss Reduction
- The hybrid GA–PSO yielded the lowest power losses:
  - Real power loss: **192.4145 kW**
  - Reactive power loss: **125.3715 kVar**

### 3.4 Voltage Deviation Index (VDI)
- Hybrid GA–PSO achieved the lowest VDI: **5.4867%**, compared to GA (7.0918%) and PSO (6.1181%).

---

## 4. Conclusion
The hybrid GA–PSO approach demonstrated superior performance in optimizing EVCS placement in an RDNS with randomly sized and distributed PV systems. It effectively minimized power losses and voltage deviation while improving voltage stability. This method provides a robust framework for integrating EV charging infrastructure into modern distribution networks.

---

## 5. Abbreviations


---

## 6. References
See the original paper for a complete list of references.

---

## 7. License
This article is licensed under a **Creative Commons Attribution 4.0 International License**.

---

## How to Cite
René, E.A., Fokui, W.S.T. Artificial intelligence-based optimal EVCS integration with stochastically sized and distributed PVs in an RDNS segmented in zones. *J Electr Syst Inf Technol* **11**, 1 (2024). https://doi.org/10.1186/s43067-023-00126-w
