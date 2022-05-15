/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLLY2dI3.aml, Sun May 15 13:26:31 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000DB (219)
 *     Revision         0x02
 *     Checksum         0xEE
 *     OEM ID           "hack"
 *     OEM Table ID     "TPD0"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "TPD0", 0x00000000)
{
    External (_SB_.PCI0.I2C1.TPD0, DeviceObj)
    External (_SB_.PCI0.I2C1.TPD0.SBFB, UnknownObj)
    External (_SB_.PCI0.I2C1.TPD0.SBFG, UnknownObj)
    External (_SB_.PCI0.I2C1.TPD0.XCRS, MethodObj)    // 0 Arguments

    Scope (_SB.PCI0.I2C1.TPD0)
    {
        Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
        {
            If (_OSI ("Darwin"))
            {
                Return (ConcatenateResTemplate (SBFB, SBFG))
            }
            Else
            {
                Return (\_SB.PCI0.I2C1.TPD0.XCRS ())
            }
        }
    }
}

