# Kexts

The following kexts are needed:

* [AppleALC](https://github.com/acidanthera/AppleALC/releases)
* [BrightnessKeys](https://github.com/acidanthera/BrightnessKeys/releases)
* [ECEnabler](https://github.com/1Revenger1/ECEnabler/releases)
* [Lilu](https://github.com/acidanthera/Lilu/releases)
* [NVMeFix](https://github.com/acidanthera/NVMeFix/releases)
* [USBMap](https://github.com/corpnewt/USBMap)
* [VirtualSMC](https://github.com/acidanthera/VirtualSMC/releases)
 * SMCBatteryManager
 * SMCProcessor
 * SMCSuperIO
* [VoodooI2C](https://github.com/VoodooI2C/VoodooI2C/releases)
 * VoodooI2CHID
* [VoodooPS2Controller](https://github.com/acidanthera/VoodooPS2/releases)
* [WhateverGreen](https://github.com/acidanthera/whatevergreen/releases)

----

Kexts that do not have prebuilt releases can usually be compiled with Xcode:

```shell
$ cd [kext repo]
$ xcodebuild
```

*The compilation directions in a kext's README, if any, should supercede the above directions.*

[Lilu-and-Friends](https://github.com/corpnewt/Lilu-and-Friends) is an automated alternative to the above.
