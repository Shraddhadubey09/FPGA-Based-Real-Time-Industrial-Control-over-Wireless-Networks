# 5G-Enabled Bidirectional FPGA-Based Real-Time Industrial Control System

A hardware-based prototype for **bidirectional real-time communication between two FPGA-controlled nodes**, using ESP8266 wireless gateways.

The current implementation uses **Wi-Fi** for wireless communication. Integration with **5G hardware/CPE** is planned as a future extension.

---

## 🔹 System Architecture

### Current Implementation

FPGA-A → UART → ESP8266-A → Wi-Fi → ESP8266-B → UART → FPGA-B

### Future 5G Architecture

FPGA-A → UART → ESP8266-A → 5G CPE → 5G Network → 5G CPE → ESP8266-B → UART → FPGA-B

---

## 🔹 Project Concept

The system demonstrates a bidirectional communication architecture in which:

- **FPGA-A** acts as the control-side processing node.
- **FPGA-B** acts as the remote machine/control node.
- **ESP8266-A and ESP8266-B** provide wireless networking between the FPGA nodes.
- UART is used as the interface between each FPGA and its ESP8266 gateway.
- The communication link is currently implemented using Wi-Fi.
- A 5G network can be integrated in the future to evaluate communication performance for remote industrial control applications.

The system is designed around the concept:

**Control → Communication → Remote Action → Feedback**

---

## 🔹 Current Communication

```text
┌──────────────┐
│    FPGA-A    │
│ Control Node │
└──────┬───────┘
       │ UART
       ▼
┌──────────────┐
│  ESP8266-A   │
│ Wi-Fi Gateway│
└──────┬───────┘
       │
       │ Wi-Fi
       │
┌──────▼───────┐
│  ESP8266-B   │
│ Wi-Fi Gateway│
└──────┬───────┘
       │ UART
       ▼
┌──────────────┐
│    FPGA-B    │
│ Remote Node  │
└──────────────┘
