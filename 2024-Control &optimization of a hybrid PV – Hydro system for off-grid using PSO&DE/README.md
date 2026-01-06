# Control and optimization of a hybrid solar PV – Hydro power system for off-grid applications using particle swarm optimization (PSO) and differential evolution (DE)

**Authors:**  
Chu Donatus Iweh¹,², Ebunle Rene Akupan²  

**Corresponding Author:** iwehdona@gmail.com  

**Published in:** *Energy Reports* 10 (2023) 4253–4270  
**DOI:** [https://doi.org/10.1016/j.egyr.2023.10.080](https://doi.org/10.1016/j.egyr.2023.10.080)  

---

## Abstract
The use of artificial intelligence (AI)–based tools in the optimization of renewable energy (RE) systems is increasing. This paper uses AI-based Particle Swarm Optimization (PSO) and Differential Evolution (DE) for the design and optimization of a stand-alone hybrid solar PV – hydro–battery power system for off-grid rural electrification in Cameroon. The proposed smart algorithms ensure that the load is met at a minimum levelized cost of energy (LCOE) and acceptable loss of power supply probability (LPSP).

After simulation, DE gave an optimum LPSP of **0.0499** and optimum LCOE of **0.06192 $/kWh** after the 19th iteration under set operational limits while PSO gave an optimum LPSP of **0.0492** and optimum LCOE of **0.06358 $/kWh** after the 40th iteration. The optimal net present cost (NPC) obtained from the PSO and DE were **USD $96,175.26** and **USD $93,958.07** respectively. While DE gave a lesser LCOE than PSO, the LPSP obtained using the PSO technique was smaller, signifying more system reliability. The optimum system size of DE showed the least LCOE with the proposed capacities of **1 kW PV, 33.96 kW hydropower and zero battery**. An appraisal of the two algorithms showed that the DE tool is accurate and a better option than PSO in terms of cost and speed of convergence. Further statistical analysis revealed that PSO was more robust. The optimal cost function obtained from both algorithms is acceptable for rural electrification projects.

**Keywords:**  
MATLAB, LCOE, LPSP, Smart algorithm, Artificial intelligence, Rural Electrification, Cameroon, System Reliability, Cost Function

---

## 1. Introduction
As countries commit to decreasing their dependence on polluting fossil fuels, clean energy penetration has greatly risen. This study focuses on optimizing a hybrid solar PV-hydropower-battery system for off-grid applications in Cameroon, leveraging the country's abundant RE resources to address its low rural electrification rate.

## 2. Methodology
### 2.1 System Components Modeling
- **Hydro System:** Power output modeled as a function of water flow rate, net head, and turbine-generator efficiency.
- **PV System:** Output power modeled considering solar irradiance, cell temperature, and module efficiency.
- **Battery Bank:** Modeled for energy storage with state-of-charge (SOC) constraints and round-trip efficiency.
- **Inverter:** Sized based on peak load demand and efficiency.

### 2.2 System Configuration and Control Strategy
The hybrid system integrates solar PV and batteries on a DC bus, with the hydro system and load connected to an AC bus via a bidirectional converter. A rule-based control strategy manages energy flow:
1.  Power balance between generation and load.
2.  Battery charging during excess generation.
3.  Battery discharging or load shedding during power deficit.
4.  Power curtailment to dump loads if the battery is full.

### 2.3 Problem Formulation
A multi-objective optimization aims to minimize:
1.  **Levelized Cost of Energy (LCOE)**
2.  **Loss of Power Supply Probability (LPSP)**

**Objective Function:**
Two objectives were minimized simultaneously to ensure affordability and reliability.

**Constraints:** Included water flow limits, battery SOC bounds, power output limits for each component, and system power balance.

### 2.4 Optimization Algorithms
Two AI-based metaheuristic algorithms were implemented in MATLAB:
1.  **Particle Swarm Optimization (PSO):** A population-based stochastic optimizer.
2.  **Differential Evolution (DE):** A vector-based evolutionary algorithm.

## 3. Simulation and Results
### 3.1 Case Study
The algorithms were applied to size a system for Matondo, an off-grid farming community in Cameroon. Hourly data for one year (solar irradiance, temperature, river flow, and load) were used.

### 3.2 Optimal Solution
- **DE** converged faster (19th iteration) with a lower LCOE (**0.06192 $/kWh**) and higher LPSP (0.0499).
- **PSO** converged later (40th iteration) with a slightly higher LCOE (**0.06358 $/kWh**) but a better (lower) LPSP (**0.0492**), indicating higher reliability.
- The optimal configuration for both algorithms comprised a **dominant hydropower component (~34 kW), a minimal PV component (~1 kW), and no battery bank**, highlighting the cost-competitiveness and dispatchability of hydro.

### 3.3 Statistical Assessment
A statistical analysis over 10 algorithm executions showed:
- **DE** had higher efficiency (72.16%) and was more stable (consistent results).
- **PSO** showed better robustness according to kurtosis and skewness tests, with less deviation from a normal distribution.

## 4. Conclusion
The study presents a comparison of PSO and DE for optimizing a hybrid hydro-PV-battery system. The model successfully identified a cost-effective and reliable system configuration for off-grid use. Key conclusions are:
- Hydropower's cost-competitiveness leads it to dominate the optimal hybrid mix, significantly reducing the LCOE.
- The synchronized operation of hydropower and solar PV can potentially eliminate the need for expensive battery storage in suitable locations.
- **DE proved better in terms of convergence speed and cost-effectiveness**, while **PSO offered slightly better system reliability and statistical robustness**.
- The proposed AI-based optimization framework provides a practical tool for designing affordable and reliable hybrid RE systems for rural electrification.

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
Iweh, C.D., Akupan, E.R. Control and optimization of a hybrid solar PV – Hydro power system for off-grid applications using particle swarm optimization (PSO) and differential evolution (DE). *Energy Reports* 10 (2023) 4253–4270. https://doi.org/10.1016/j.egyr.2023.10.080
