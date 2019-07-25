# Looking Glass Plugin for [TouchDesigner 099](https://www.derivative.ca/)

![](images/header.png)

## What is this?
This is a plugin that [we](https://www.besidedigital.com/) made to display content authored in TouchDesigner on the Looking Glass 3D Holographic display made by Looking Glass Factory. It is native to Touch and requires minimal setup.

## Requirements
* Ability to display a 2560 x 1600 window in TouchDesigner 099.
* A Looking Glass 3D Holographic Display. Currently only the Standard Looking Glass is supported
* Web Drivers for Looking Glass from the Holoplay.js download (more info below)
* A GPU that supports multi camera rendering. see [this article](https://docs.derivative.ca/Multi-Camera_Rendering) on the wiki for specific compatability
* Currently, this has only been tested with TouchDesigner 099 2019.14650 running on Windows 10 64-bit but it likely works with many other combinations of OS versions and TD builds



## Installation. 
* Follow the setup guide located [here](https://docs.lookingglassfactory.com/).

* We found it helpful to install [the library](https://docs.lookingglassfactory.com/Gettingstarted/library/) and run some example programs to make sure the display is working properly.

* Once you've seen a couple holograms download the driver to load the calbiration from the display. The threejs driver is a small program that reads calibration data from the USB and reports it via websockets. You can download it by following the [threejs tutorial](https://docs.lookingglassfactory.com/Three/guide/) or using [this link](http://look.glass/threejsdriver)

* Once you've got the driver and the display connected clone or download this repo and import the latest build from the tox directory into your patch to get started.



## Using The Component

* The component is designed to function approximately like a normal TD camera. Place the camera component within the same scene as Geo comps and lights and the component will render these approriately. Simple camera operations(Translate, Rotate, Scale) are supported. Other camera operations are not(Look At, Path, e.t.c) and will produce unexpected results.
* you can render to the Looking Glass one of two ways. 
    1. The Tox exposes an TOP out that you can use in your own windowing setup


    ![](images/info.png)


    2. Alternatively you can pulse the Show custom parameter. The plugin will attempt to identify which connected monitor is the LookingGlass and publish content directly to that monitor.

        ![](images/show_btn.png)


## Help I'm stuck!

* Every Touch Setup is different but open an issue on this repo and we'll try and help the best we can. Please describe your current hardware setup and other salient information. 


## License

* Portions of this plugin were created by or derived from work created by Looking Glass Factory. The HoloPlay License file included in this repo covers any such material.

All portions of this plugin created by BeSide are covered by an MIT License:

Copyright 2019 BeSide Digital LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

