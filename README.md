# ⚡ 5G-Enabled FPGA-Based Real-Time Industrial Control

<p align="center">
  <img src="https://img.shields.io/badge/FPGA-Spartan--7-1f6feb?style=for-the-badge" />
  <img src="https://img.shields.io/badge/ESP8266-Wireless%20Gateway-ff6f00?style=for-the-badge" />
  <img src="https://img.shields.io/badge/UART-115200-2ea44f?style=for-the-badge" />
  <img src="https://img.shields.io/badge/CRC--16-CCITT--FALSE-8250df?style=for-the-badge" />
  <img src="https://img.shields.io/badge/5G-Future%20Integration-e63946?style=for-the-badge" />
</p>

<p align="center">
  <b>A bidirectional FPGA communication platform for studying real-time remote industrial control over wireless networks.</b>
</p>

---

## 🧩 Overview

This project develops a **hardware-based bidirectional communication system** using two FPGA nodes connected through ESP8266 wireless gateways.

The FPGA nodes handle the **real-time control and communication logic**, while the ESP8266 devices provide the wireless networking layer.

The current prototype uses **Wi-Fi**.

The next phase will integrate **5G hardware** to investigate how cellular network characteristics affect real-time industrial control.

### Core concept

```text
        CONTROL                         REMOTE MACHINE

       FPGA-A                              FPGA-B
         │                                    │
         │ UART                               │ UART
         ▼                                    ▲
     ESP8266-A                              ESP8266-B
         │                                    │
         └──────────── Wi-Fi ────────────────┘
         
              ↓ Future: 5G Network ↓
