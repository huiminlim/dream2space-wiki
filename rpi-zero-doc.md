# Ethernet Sharing for Raspberry Pi Zero W

This documentation describes how to share internet access from a PC to the Raspberry Pi Zero W.

Source: [here](https://artivis.github.io/post/2020/pi-zero/) and [here](https://solarianprogrammer.com/2018/12/07/raspberry-pi-zero-internet-usb/) and [here](https://www.diyhobi.com/share-windows-internet-raspberry-pi-ethernet-port/)

## Step 1: Install Raspbian OS

Follow the instructions to install Raspbian OS.

## Step 2: Set up the SD Card to enable Ethernet and SSH

First, create an empty text file named `ssh`.

Then, edit the file `/boot/config.txt` and append this line at the end:

```bash
dtoverlay=dwc2
```

Second, we will edit the file `/boot/cmdline.txt`. After `rootwait`, we will add

```bash
modules-load=dwc2,g_ether
```

⚠ pay attention to leave only one space between `rootwait` and the new text otherwise it might not be parsed correctly.

⚠ Note that there might already be some text after `rootwait` in which case you still must add the following immediately after `rootwait`! Again, leave a single space after `rootwait` but also after `g_ether`.

## Step 3: Set up the Laptop and Ethernet connection to the Raspberry Pi

Go to the Laptop's Network Connection and set the Ethernet to obtain IP addresses automatically.

![network](https://www.diyhobi.com/wp-content/uploads/2016/11/set-ethernet-auto-obtain-ip-mylinuxcode.com_.png)

Share the Laptop's WiFi to the Raspberry Pi.

![sharewifi](https://www.diyhobi.com/wp-content/uploads/2016/11/share-wifi-internet-mylinuxcode.png)

## Step 4: Boot up the Raspberry Pi

Boot up the Raspberry Pi and wait until you see the start up screen as such:

![startup](startup.jpg)

Take note of the IP address to SSH into the Raspberry Pi.

## Step 5: SSH into the Raspberry Pi

Open Putty and key the IP address into the terminal as shown below.

![putty](https://www.diyhobi.com/wp-content/uploads/2016/12/putty-raspberrypi-local.png)
