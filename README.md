[![N|Solid](https://i.imgur.com/3gusnRg.png)](https://nodesource.com/products/nsolid)
# DiagBootX
DiagBootX is a tool that I have developed to automate the process of sending boot images to the iPhone, as well other functions including automatically configuring serial connections (requiring an un-named serial cable with a lighting connector on the end..) and interacting with the device via the serial port.

It has only currently been tested on a few iPhone X devices, using multiple host machines. macOS 10.13 and above is supported.
# Current Features
  - Send a patched iBSS and iBEC, and boot an image of choice (utilising the Checkm8 exploit) with a one-click approach.
# Planned Features
 - Automatically configure and open a serial connection to the device.
 - Currently working on building a scripting language to perform certain actions to the connected device in an easy and condensed form.

# What this tool is..
> DiagBootX was created not to make the process of booting
> certain images possible, but to accelerate the current process.
> This tool isn't designed to make certain research more accessible.
> It's designed for researchers who already know the in's and out's
> and just want a quick and easy process.

### Installation

There are a few dependencies for this project to operate. The dependencies are listed below.

- libusb - Installed via brew (brew.sh)
- iRecovery
- iPWNDFU - You'll need a fork compatible with sending patched images
 to iPhone X or your device of choice.

You must follow these commands exactly for this project to work, until I fix a few bugs affecting the application.

```sh
$ brew install libusb
$ cd ~/Downloads
$ git clone https://github.com/DuffyAPP-IT/DiagBootX.git
```
You must first drag iRecovery and iPWNDFU (potentially a fork to work with your iPhone model) into the following directory:
```sh
~/Downloads/DiagBootX/Assets
```
It is now time to drag the following files into the Assets folder:

 - ibss.img4
 - ibec.img4
 - diag.img4 (the file must be named as shown, no matter what image you intend to boot)

You may then launch DiagBootX, and hit Go! - please only hit 'Go' ONCE. I am working on an upcoming version that will disable the button once the program begins to execute, but for now, click it only once or the process will inevitably fail or product unexpected results.

### Extra Info / Contact

This project wasn't intended for public release but due to some requests, I have decided to release it. If you run into any issues, please contact me using my details posted below.

| Contact | Address |
| ------ | ------ |
| Personal Website | https://duffy.app |
| GitHub | https://github.com/DuffyAPP-IT |
