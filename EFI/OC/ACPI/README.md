# ACPI

Refer to the table below for an explanation of the necessary ACPI tables.

|Name|Associated config.plist patches|Notes|
|-----|-------------------------------|-----|
|Dortania - Laptop Ice Lake - Required SSDTs|N/A|See [here](https://dortania.github.io/OpenCore-Install-Guide/config-laptop.plist/icelake.html#acpi).|
|SSDT-HPET|<ul><li>`HPET _CRS to XCRS Rename`</li><li>`RTC IRQ 8 Patch`</li><li>`TIMR IRQ 0 Patch`</li></ul>|[Via [SSDTTime](https://github.com/corpnewt/SSDTTime)] Patches out IRQ conflicts.|
|SSDT-GPI0|`GPI0 _STA to XSTA`|Enables `Device (GPI0)` for VoodooI2C to latch onto. `Method (_STA)` always returns `Zero` by default on this laptop, so without this patch, VoodooI2C never loads properly.|
|SSDT-SBUS-MCHC|N/A|Fixes SMBus support. See [here](https://dortania.github.io/Getting-Started-With-ACPI/Universal/smbus.html).
|SSDT-TPD0|`TPD0 _CRS to XCRS`|Patches `Device (TPD0)` `Method (_CRS)` to only return `(ConcatenateResTemplate (SBFB, SBFG))`, per [Step 2e of the VoodooI2C docs](https://voodooi2c.github.io/#GPIO%20Pinning/GPIO%20Pinning).

To compile the `.dsl` files as usable `.aml` files, open them with [MaciASL](https://formulae.brew.sh/cask/maciasl) or run them though `iasl` ([`brew install iasl`](https://brew.sh)).
