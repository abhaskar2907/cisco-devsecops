# **<p align="center"> DSO Use Case: Device Upgrade</p>**

---
## **<p align="center">CXPM DevSecOps Team</p>**
## **<p align="center">Nov 7 2022</p>**
---

## Overview
Cisco IOS XE Device Config changes

Goal: Use pipeline automation to change config in Cisco IOS XE Devices
- Enable/Disable IOSXE http server status on ASR1002-X routers in TTG RTP Lab


---
## Usage
Trigger automation by executing Pipeline Build on Jenkins
- Run Build with Parameters and provide new IOS XE version Image Name for ASR1002-X Router
- [Jenkins-Pipeline-Project](https://engci-private-sjc.cisco.com/jenkins/sso-as/job/sandbox/job/Customers/job/CX-TTG-SRE-LAB/job/DSO-Core-Stack/job/uc-device-config/)
- Pipeline triggers playbook execution of [AWX dso demo templates](http://10.122.41.132:30123/#/templates)