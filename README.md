<p align="right"><img src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/Logo.png" width="300"/>
<h1 align="center">Zebrafish Thunderdome</h1></p>
<h3 align="center">An open source and versatile spatio-chromatic stimulation system for behavioural experiments</h4>
<p align="center"><h6 align="right">by M.J.Y. Zimmermann, A.M. Chagas, G. Kafetzis & T. Baden</h6></p>

<br>

This project is licensed under the [GNU General Public License v3.0](https://github.com/BadenLab/LED-Zappelin/blob/master/LICENSE)<br>
The hardware is licensed under the [CERN OHL v1.2](https://github.com/BadenLab/LED-Zappelin/blob/master/PCB/LICENSE)

<img align="center" src="https://github.com/MaxZimmer/Zebra-Thunderdome/blob/main/Images/thunderdome.png">

***

<h4 align="justify"> This project aims to investigate the larval zebrafish behavioural responses to spatio-chromatic stimulation in a free-swimming environment. The "Thunderdome"© is a stimulation system designed to experiment on the tetra-chromatic larval zebrafish. It is therefore designed around 4 set of LEDs (each LED matching the zebrafish' opsins peak absorption <a href="https://github.com/MaxZimmer/Zebra-Thunderdome/blob/main/References/Zimmermann%202018.pdf">Zimmermann et al. 2018</a> & <a href="https://github.com/MaxZimmer/Zebra-Thunderdome/blob/main/References/Zimmermann%202020.pdf">Zimmermann et al. 2020</a>, organised in 8 cardinal directions and 4 azimuths. Using machine-learning algorithms, fish motor responses (body direction, eyes orientation, tail kinetics, etc.) are identified and compared to well-known behavioural catalogs <a href="">ref</a> . The purpose of this project is to identify behavioural responses to specific spatio-chromatic stimulation which were/are studied in early visual system under two photon microscopy <a href="">ref,ref,ref</a></h4>


***

- [An open and versatile LED controler](#Introduction)
- [A semi-automated behavioural tracking](#Behaviour-tracking)
- [A detailed assembly and instruction manual](https://github.com/BadenLab/LED-Zappelin/blob/master/)
- [Required software](#Required_software)
- [Repository Structure](#Repository-Structure)

***

## Introduction

bonsai

***
## Behaviour tracking


<p align="justify">
For tracking the larval zebrafish movements, we are considering two different approaches:

- <a href="https://github.com/DeepLabCut/DeepLabCut">DeepLabCut</a>, a toolbox for markerless pose estimation based on transfer learning with deep neural networks that achieves excellent results with minimal training data <a href="https://github.com/MaxZimmer/Zebra-Thunderdome/blob/main/References/Mathis%202018.pdf">Mathis et al. 2018</a>, <a href="https://github.com/MaxZimmer/Zebra-Thunderdome/blob/main/References/Nath&Mathis%202019.pdf">Nath & Mathis 2019</a>.

- <a href="https://github.com/ncguilbeault/BonZeb">BonZeb</a>, a Bonsai library for high-resolution zebrafish behavioural tracking and analysis <a href="https://github.com/MaxZimmer/Zebra-Thunderdome/blob/main/References/Guilbeault%202019.pdf">Guilbeault 2019</a>  
</p>

***

## Required software

***

## Repository structure

```
├───3D Designs                                Contains printed parts for the stimulator
|   ├───FreeCad renderings                      - Printing files
|   ├───STL files                               - Printing files
|   └───SCAD files                              - SCAD files to be modified if need be
|
├───Arduino Code                              Stimulator Code
|   ├───Stimulator Code                       - Adaptable C+ code for running the stimulator
|   └───LED driver library                     - Library to run the TLC 5947
|
├───Bill of Materials                         List of necessary components and retailer suggestions
|
├───Bonsai code                               Bonsai pipeline for running the stimulation and export data
|
├───Datasheets                                - Contains all technical sheet for:
|   ├───Stimulator                            - ...micro-controller and LED driver
|   └───Spectrometer                          - ...device used for calibration
|
├───Images                                    Image repository
|
├───Instruction Manual                        Detailed manual to assemble and calibrate the stimulator
|   └───Stimulator Calibration                - Contains calibration recordings and the adaptable jupyter notebook script to calibrate the stimulator
|
├───PCB                                       KiCad and Gerber files to modify and generate PCB
|
└───References                                Publication used to design and conceive this model

```

***
