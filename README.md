# FPGA-Based Real-Time Industrial Control over Wireless Networks

> A hardware-in-the-loop communication platform combining FPGA-based control logic, UART communication, ESP8266 wireless networking, packet integrity verification, and a real-time monitoring interface.

---

## Overview

This project explores how **FPGA-based real-time control systems can communicate over wireless networks** while maintaining a structured and reliable data path.

The current prototype uses:

**FPGA → UART → ESP8266 → Wi-Fi → ESP8266 → UART → FPGA**

The FPGA handles the time-critical control and communication logic, while the ESP8266 provides the wireless network interface.

The system is designed as a foundation for evaluating communication characteristics such as:

- Packet integrity
- End-to-end latency
- Packet loss
- Communication reliability
- Bidirectional communication
- Response/acknowledgement time
- Jitter under different network conditions

### Current Implementation

- FPGA-based communication and control logic
- UART communication at **115200 baud**
- ESP8266-based Wi-Fi communication
- Bidirectional FPGA-to-FPGA communication
- Structured packet transmission
- CRC-16/CCITT-FALSE error detection
- Event-based communication
- Hardware verification using LEDs and 7-segment display
- PC-based monitoring/dashboard interface

### Future Extension

The architecture is intended to be extended toward:

> **5G-enabled real-time industrial communication and control**

The current implementation therefore acts as the **baseline wireless communication platform**, against which a future 5G implementation can be evaluated.

---

# System Architecture

```text
                   CURRENT SYSTEM

 ┌──────────────┐
 │    FPGA 1    │
 │              │
 │ Control RTL  │
 │ Packet Gen.  │
 │ CRC Engine   │
 └──────┬───────┘
        │
        │ UART
        ▼
 ┌──────────────┐
 │   ESP8266    │
 │ Wi-Fi Client │
 └──────┬───────┘
        │
        │ Wi-Fi
        ▼
 ┌──────────────┐
 │ Wi-Fi Network│
 │ / PC Bridge  │
 └──────┬───────┘
        │
        │ Wi-Fi
        ▼
 ┌──────────────┐
 │   ESP8266    │
 │ Wi-Fi Client │
 └──────┬───────┘
        │
        │ UART
        ▼
 ┌──────────────┐
 │    FPGA 2    │
 │              │
 │ UART RX      │
 │ Packet Decode│
 │ CRC Checker  │
 │ ACK Logic    │
 └──────────────┘
