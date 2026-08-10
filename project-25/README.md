# Smart Irrigation System using Verilog HDL

## 1. Introduction

A Smart Irrigation System automatically controls water supply
according to soil moisture and rain conditions.

This project implements the control logic of a smart irrigation
system using Verilog HDL.

The system turns ON the water pump when the soil is dry and there
is no rain.

---

## 2. Objective

The objective of this project is to design and simulate an
automatic irrigation controller using Verilog HDL.

The system helps to reduce unnecessary water usage by supplying
water only when required.

---

## 3. Features

- Automatic water pump control
- Soil moisture monitoring
- Rain detection
- Verilog HDL implementation
- Testbench verification
- Simulation waveform

---

## 4. Inputs

| Input | Description |
|---|---|
| soil_moisture[1:0] | Indicates soil moisture level |
| rain_sensor | Detects rain |

### Soil Moisture Levels

| Value | Condition |
|---|---|
| 00 | Dry |
| 01 | Moderate |
| 10 | Wet |
| 11 | Very Wet |

---

## 5. Outputs

| Output | Description |
|---|---|
| water_pump | Controls the water pump |
| irrigation | Indicates irrigation status |

---

## 6. Working Principle

The system checks the soil moisture and rain sensor.

If the soil is dry and there is no rain, the water pump is
turned ON.

If the soil is sufficiently wet or rain is detected, the pump
remains OFF.

---

## 7. Control Table

| Soil Moisture | Rain | Pump | Action |
|---|---|---|---|
| 00 | 0 | ON | Start irrigation |
| 01 | 0 | OFF | No irrigation |
| 10 | 0 | OFF | No irrigation |
| 11 | 0 | OFF | No irrigation |
| 00 | 1 | OFF | Rain detected |
| 01 | 1 | OFF | Rain detected |
| 10 | 1 | OFF | Rain detected |
| 11 | 1 | OFF | Rain detected |

---

## 8. Block Diagram

             +------------------+
             | Soil Moisture    |
             | Sensor           |
             +--------+---------+
                      |
                      |
             +--------v---------+
             |                  |
             | Verilog          |
             | Controller       |
             |                  |
             +--------+---------+
                      |
             +--------+---------+
             |                  |
       +-----v-----+      +-----v------+
       |   Water   |      | Irrigation |
       |   Pump    |      |   Status   |
       +-----------+      +------------+

             ^
             |
       +-----+------+
       | Rain       |
       | Sensor     |
       +------------+

---

## 9. Simulation

The project can be simulated using:

- Icarus Verilog
- GTKWave

The testbench checks different combinations of soil moisture
and rain conditions.

---

## 10. Expected Result

The water pump should turn ON only when:

- Soil moisture is DRY
- No rain is detected

For all other conditions, the water pump should remain OFF.

---

## 11. Applications

- Agricultural fields
- Home gardens
- Greenhouses
- Smart farming
- Water conservation systems

---

## 12. Technologies Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- GitHub

---

## 13. Conclusion

The Smart Irrigation System was successfully designed using
Verilog HDL.

The system automatically controls irrigation based on soil
moisture and rain conditions, helping to avoid unnecessary
water usage.