Copyright 2020 - The Khavat-M Project

Device configuration for Samsung Galaxy S5 Dual-SIM variants (SM-G900FD, SM-G900MD).
========================================

Basic   | Specification List
-------:|:-------------------------
CPU     | Quad-core 2.5 GHz Krait 400
Chipset | Qualcomm MSM8974AC Snapdragon 801
GPU     | Adreno 330
Memory  | 2 GB
Shipped Android Version | 4.4.2
Storage | 16/32 GB
MicroSD | Up to 256 GB
Battery | Removable Li-Ion 2800 mAh
Dimensions | 142 x 72.5 x 8.1 mm (5.59 x 2.85 x 0.32 in)
Display | 1080 x 1920 pixels, 5.1"
Rear Camera  | 16 MP, f/2.2, 31mm, phase detection autofocus, LED flash
Front Camera | 2 MP, f/2.4, 22mm
Release Date | June 2014

![Galaxy S5](https://github.com/Khalvat-M/android_device_samsung_klteduos/blob/11.0/information/klteduos.gif)


# For building Android R
### create `.repo/local_manifests/roomservice.xml` with the following content:

***
```xml
<?xml version="1.0" encoding="UTF-8"?>
 <manifest>
        
 <remote  name="khalvat"
    fetch="https://github.com/Khalvat-M"
    revision="11.0" />

 <remote  name="linos"
    fetch="https://github.com/LineageOS"
    revision="lineage-18.1" />

    <!--LineageOS -->
    <project name="android_hardware_samsung" path="hardware/samsung" remote="linos" />
    <project name="android_hardware_sony_timekeep" path="hardware/sony/timekeep" remote="linos"/>
        
    <!--Device -->
    <project name="android_device_samsung_klteduos" path="device/samsung/klteduos" remote="khalvat" />
    <project name="device_samsung_msm8974-common" path="device/samsung/msm8974-common" remote="khalvat" />
           
    <!--Kernel -->
    <project name="kernel_samsung_msm8974" path="kernel/samsung/msm8974" remote="khalvat" />
    
    <!--Vendor -->
    <project name="vendor_samsung" path="vendor/samsung" remote="khalvat" />
                  
 </manifest>
```
