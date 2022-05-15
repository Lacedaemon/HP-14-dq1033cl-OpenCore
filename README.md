# HP 14-dq1033cl - OpenCore Setup

```
OS: macOS Monterey
Host: Hackintosh (SMBIOS: MacBookPro16,2)
CPU: Intel i5-1035G4 (8) @ 1.10GHz
GPU: Intel Iris Plus Graphics G4 (Ice Lake)
```

## Functionality

If a function is not explicitly mentioned below, it is most likely working.

|Function|Status|
|--------|------|
|Reboot|Keyboard does not work after reboot from macOS. With FileVault enabled, this will cause boot to hang. <br/> This is documented [here](https://github.com/acidanthera/bugtracker/issues/1838) as a firmware bug on some machines, which only surfaced after a new shut down/restart mechanism was introduced in macOS Monterey. Workaround is to fully shut down, then start back up.|
|SYN3296 I2C trackpad|Working, but in polling mode.|
|Keyboard backlight control|Working, but is unluckily bound to the same key that turns the display off. Workaround is to press one of the volume keys after changing keyboard brightness to bring the display back.|
|HDMI output|*Untested*|
|Audio jack|*Untested*|
|Card reader|*Untested*|
|WiFi / Bluetooth|Working with genuine Apple BCM94360CS2 + NGFF Adapter.|

## BIOS Settings

|Security|Boot Options|
|------|--------|
|<ul><li>[Disabled] Intel Software Guard Extensions (SGX)</li></ul>|<ul><li>[Disabled] Legacy Support</li><li>[Disabled] Secure Boot</li></ul>|

## To Use

0. Clone this repo:

```shell
$ git clone https://github.com/Lacedaemon/HP-14-dq1033cl-OpenCore
```

1. Per the `[Repo]/EFI/OC/config.plist`, download the corresponding version of [OpenCore](https://github.com/acidanthera/OpenCorePkg/releases).
 * *If the version used in this repo is newer than the latest prebuilt release, OpenCore must be compiled from source:*

 ```shell
$ git clone https://github.com/acidanthera/OpenCorePkg
$ cd [path to cloned repo]
$ ./macbuild.tool
 ```

2. From the downloaded OpenCore package, extract the following files to their respective places in the cloned repo:
 * `[OpenCore]/EFI/BOOT/BOOTx64.efi` -> `[Repo]/EFI/BOOT/BOOTx64.efi`
 * `[OpenCore]/EFI/OC/OpenCore.efi` -> `[Repo]/EFI/OC/OpenCore.efi`
 * `[OpenCore]/EFI/OC/Drivers/OpenRuntime.efi` -> `[Repo]/EFI/OC/Drivers/OpenRuntime.efi`

3. Download and copy the latest compatible `HfsPlus.efi` from [OcBinaryData](https://github.com/acidanthera/OcBinaryData/blob/master/Drivers/HfsPlus.efi) to `[Repo]/EFI/OC/Drivers`.
4. Follow the README's in the `[Repo]/EFI/OC/ACPI` and `[Repo]/EFI/OC/Kexts` folders.
5. Generate new SMBIOS data with [GenSMBIOS](https://github.com/corpnewt/GenSMBIOS).
6. Copy the finished `[Repo]/EFI` folder to a FAT32 partition (e.g. a USB drive or EFI System Partition), then boot from it.

## Credits

* The [Dortania](https://github.com/dortania) team, for the base Laptop Ice Lake configuration
* [acidanthera](https://github.com/acidanthera), for OpenCore et all
* [CorpNewt](https://github.com/CorpNewt), for Lilu-and-Friends, GenSMBIOS, and SSDTTime
* [1Revenger1](https://github.com/1Revenger1) for ECEnabler
* The [VoodooI2C team](https://github.com/VoodooI2C) for VoodooI2C
* [MaLd0n](https://www.olarila.com/profile/2-mald0n/), for the `ig-platform-id` that fixed wake from sleep [[source](https://www.olarila.com/topic/15193-sleephibernate-not-working-on-ice-lake-big-sur-i3-1005g1/#comment-148440)]

## Contact

For general questions and support regarding this build, I can be reached at:

* Discord: `@HackinDoge#9460`
* Reddit: [/u/HackinDoge](https://reddit.com/u/HackinDoge)
* OSx86.net: [HackinDoge](https://www.osx86.net/profile/345012-hackindoge/)

Please ensure that you've read through all the linked materials before reaching out.

Only if:

* There is a critical misconfiguration, error, or other issue with any of the files in this build
* There is a file(s) that need to be added
 * Most ACPI/Kext files are omitted by design; only files made by me are included in this repo.

Should an Issue be opened here on GitHub.
