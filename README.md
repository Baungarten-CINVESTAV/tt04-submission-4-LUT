![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/wokwi_test/badge.svg)
# LFMPDM (Lightning Fast Matrix Programmable Design Module)

 Configurable Logic Block (CLB) is a fundamental building block in Field-Programmable Gate Arrays (FPGAs) and Complex Programmable Logic Devices (CPLDs). It consists of various logic elements that can be configured to perform different digital logic functions. In this design, we are focusing on a CLB that contains 8 4-LUT (Look-Up Table) blocks.

![8x4LUT (1)](https://github.com/Baungarten-CINVESTAV/tt04-submission-4-LUT/assets/101527680/5d94f380-bbea-40b2-b356-13fb5d8aff11)
 Schematic Diagram of the Configurable Logic Block (CLB) Design
 
## Overview:
The CLB is a versatile component that enables designers to implement custom logic functions within an FPGA. Each CLB contains a number of resources that can be interconnected and configured to perform specific logic operations.

## 4-LUT Block:
A 4-LUT is a digital logic element that has 4 inputs and 1 output. It essentially acts as a small truth table, allowing you to define any arbitrary logic function with 4 inputs. The 4-LUT can be configured to represent AND, OR, XOR, NAND, NOR, etc., operations. The 4-LUT is a flexible building block, as it can implement a wide range of logical functions based on user-defined configuration.

## Internal Structure:
The CLB contains 8 identical 4-LUT blocks. Each 4-LUT block can be programmed independently to perform a specific logic function. These 4-LUTs are interconnected to form complex logic functions within the CLB.

## Configuration Memory:
The behavior of the 4-LUTs and the interconnect resources is determined by their configuration. Configuration is typically stored in non-volatile memory elements, FFD for this CLB. These memory elements are loaded with configuration data during the device's programming process.

## Programming and Configuration:
To configure the CLB, the designer leverages the I/O (Input/Output) of the Tinytapeout project to specify the desired logic functions for each of the 4-LUTs. 

## Custom Logic Implementation:
Designers can use the CLB to implement custom logic functions tailored to their application. By configuring the 4-LUTs and interconnect resources, a wide variety of digital circuits can be created, ranging from simple arithmetic operations to complex state machines.

## CLB test execution
The testbench for the CLB serves as a crucial validation tool, illustrating both the programming of the Look-Up Tables (LUTs) and their execution to emulate the behavior of a 74LS48 IC. By incorporating simulated inputs and expected outputs, the testbench enables designers to verify the accuracy of the configured logic functions within the CLB. During testing, the desired logic functions are programmed into the individual LUTs, mirroring the logic equations characteristic of a 74LS48 IC. Inputs representing BCD (Binary Coded Decimal) data are fed into the CLB, and the testbench simulates the propagation of these inputs through the interconnected LUTs, mimicking the cascading nature of a 74LS48 BCD-to-7-segment decoder. The corresponding outputs are then compared with the expected 7-segment display patterns, confirming the correct execution of the programmed logic. Overall, the testbench serves as a critical tool to ensure that the CLB operates precisely as intended, simulating the functionality of a 74LS48 IC and validating the intricate programming and interconnection of its internal LUTs.

Truth Table of the 74LS48 BCD-to-7-Segment Decoder
![Screenshot from 2023-08-28 20-30-57](https://github.com/Baungarten-CINVESTAV/tt04-submission-4-LUT/assets/101527680/3e5046b9-e5b9-4080-8237-d1217507d296)

Testbench Illustrating CLB Programming and 74LS48 Emulation



# What is Tiny Tapeout?

TinyTapeout is an educational project that aims to make it easier and cheaper than ever to get your digital designs manufactured on a real chip!

Go to https://tinytapeout.com for instructions!

## How to change the Wokwi project

Edit the [info.yaml](info.yaml) and change the wokwi_id to match your project.

## How to enable the GitHub actions to build the ASIC files

Please see the instructions for:

- [Enabling GitHub Actions](https://tinytapeout.com/faq/#when-i-commit-my-change-the-gds-action-isnt-running)
- [Enabling GitHub Pages](https://tinytapeout.com/faq/#my-github-action-is-failing-on-the-pages-part)

## How does it work?

When you edit the info.yaml to choose a different ID, the [GitHub Action](.github/workflows/gds.yaml) will fetch the digital netlist of your design from Wokwi.

After that, the action uses the open source ASIC tool called [OpenLane](https://www.zerotoasiccourse.com/terminology/openlane/) to build the files needed to fabricate an ASIC.

## Resources

- [FAQ](https://tinytapeout.com/faq/)
- [Digital design lessons](https://tinytapeout.com/digital_design/)
- [Learn how semiconductors work](https://tinytapeout.com/siliwiz/)
- [Join the community](https://discord.gg/rPK2nSjxy8)

## What next?

- Submit your design to the next shuttle [on the website](https://tinytapeout.com/#submit-your-design), the closing date is 8th September.
- Share your GDS on Twitter, tag it [#tinytapeout](https://twitter.com/hashtag/tinytapeout?src=hashtag_click) and [link me](https://twitter.com/matthewvenn)!

