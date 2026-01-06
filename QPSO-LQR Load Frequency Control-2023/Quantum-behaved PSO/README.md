# A Quantum Particle Swarm Optimization-Based Optimal LQR-PID Controller for Load Frequency Control of an Isolated Power System

**Authors:**  
Ebunle Akupan René¹, Willy Stephen Tounsi Fokui²  

**Corresponding Author:** ebunleakupanrene@gmail.com  

**Published in:** *Journal of Engineering and Applied Science* (2023)  
**DOI:** [https://doi.org/10.1186/s44147-023-00271-z](https://doi.org/10.1186/s44147-023-00271-z)  

---

## Abstract
One of the characteristics of a robust power grid is minimal variations in its frequency to load change or loss in generating unit(s). This work investigates load frequency control from the perspective of optimal control theory and proposes a novel load frequency controller for a single-area isolated power network. The novelty incorporates a linear quadratic regulator (LQR) optimized with quantum particle swarm optimization (QPSO) to design a proportional-integral-derivative (PID) controller, unlike conventional PID designs based on Ziegler–Nichols and root locus methods or manual tuning.

Simulation results using MATLAB show the efficacy of the proposed controller in eliminating steady-state error and achieving smoother transients. The transfer function model of the resulting power grid confirms improved system transients while maintaining intended steady-state characteristics. The proposed QPSO-LQR-PID controller outperforms conventional tuning methods, demonstrating its superiority for load frequency control in power systems.

**Keywords:**  
Load frequency, Transfer function, Linear quadratic regulator, Particle swarm optimization, PID controller, Ziegler–Nichols  

---

## 1. Introduction
Frequency stability is critical for power system reliability. Load frequency control (LFC) ensures that frequency remains within set tolerances despite disturbances such as load changes or generator outages. This paper proposes an optimized LQR-PID controller using QPSO to enhance LFC performance in isolated power systems.

---

## 2. Methodology
### 2.1 Mathematical Modeling of an Isolated Power System
The power system is modeled using transfer functions for:
- **Generator:** Swing equation
- **Load:** Frequency-sensitive load model
- **Turbine:** First-order model
- **Governor:** Speed regulation model

The integrated model is shown in the block diagram (Fig. 2).

### 2.2 PID Controller Design
The PID controller is given by:
$$u(t) = K_p e(t) + K_i \int e(t) dt + K_d \frac{de(t)}{dt}$$
The goal is to find optimal gains $$K_p, K_i, K_d$$.

### 2.3 Optimization Methods
Three tuning approaches are compared:
1. **Manual Tuning**
2. **Ziegler–Nichols with Root Locus (ZN-RL)**
3. **QPSO-Optimized LQR-PID (Proposed)**

### 2.4 Quantum Particle Swarm Optimization (QPSO)
QPSO is a variant of PSO inspired by quantum mechanics, offering improved global search capability and convergence. It is used to optimize the LQR weighting matrices $$Q$$ and $$R$$, which in turn yield optimal PID gains.

---

## 3. Simulation and Results 

### 3.1 System Parameters
Parameters used for the isolated power plant are listed in Table 2, including:
- Governor gain $$K_{gov} = 1$$
- Turbine time constant $$τ_{turbine} = 0.5s$$
- Generator inertia constant %%H = 5s$$
- Load change $$ΔP_{load} = 0.2 p.u. (50 MW)$$

### 3.2 Controller Performance Comparison
#### (a) No Controller
- Steady-state error: 0.4794 Hz
- Overshoot: 0.7437 Hz
- Settling time: > 6 s

#### (b) Manual PID
- Steady-state error: $$1.267 \times 10^{-4}$$ Hz
- Overshoot: 0.2962 Hz
- Settling time: ~10 s

#### (c) ZN-RL PID
- Steady-state error: $$7.038 \times 10^{-4}$$ Hz
- Overshoot: 0.3485 Hz
- Settling time: ~8 s

#### (d) QPSO-LQR-PID (Proposed)
- Steady-state error: $$7 \times 10^{-5}$$ Hz
- Overshoot: 0.04521 Hz
- Settling time: < 4 s

### 3.3 Optimal PID Gains
| Method       | $$K_p$$       | $$K_i$$       | $$K_d$$       |
|--------------|--------------|--------------|--------------|
| Manual       | 20121        | 0.9989       | 1.0117       |
| ZN-RL        | 2.244        | 2.3194       | 0.5428       |
| QPSO-LQR-PID | 79.0763      | 282.0301     | 43.7655      |

---

## 4. Conclusion
The proposed QPSO-LQR-PID controller demonstrates superior performance in load frequency control for an isolated power system. It achieves:
- Minimal steady-state error $$(7 \times 10^{-5}$$ Hz)
- Reduced overshoot (0.04521 Hz)
- Faster settling time (< 4 s)
- Robustness to load changes and parameter uncertainties

The hybrid optimization approach effectively combines the strengths of LQR and QPSO, providing a clear and efficient design process compared to conventional methods.

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
René, E.A., Fokui, W.S.T. A quantum particle swarm optimization-based optimal LQR-PID controller for load frequency control of an isolated power system. *J Eng Appl Sci* **70**, 97 (2023). https://doi.org/10.1186/s44147-023-00271-z
