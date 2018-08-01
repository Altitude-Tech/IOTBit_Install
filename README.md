# IOTBit_Install
Install scripts for the IOTBit HAT.<br />

With the latest version of Raspbian (Raspbian Stretch) the kernel already contains the drivers needed to use the IoT Bit which means that with this new version you can skip to the next step.<br />

This also means that the Iot Bit is compatible with any linux system with a kernel version of 4.4 or greater.<br />

To test if the drivers are installed run the following command.<br />

    $ lsusb | grep Qualcomm

The output will show a Qualcomm device is connected if the drivers are installed. <br />

