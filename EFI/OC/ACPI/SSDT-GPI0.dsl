/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLediCdY.aml, Sun May 15 13:26:10 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000007B (123)
 *     Revision         0x02
 *     Checksum         0xD9
 *     OEM ID           "hack"
 *     OEM Table ID     "GPI0"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "GPI0", 0x00000000)
{
    External (_SB_.GPI0, DeviceObj)
    External (_SB_.GPI0.XSTA, MethodObj)    // 0 Arguments

    Scope (_SB.GPI0)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (\_SB.GPI0.XSTA ())
            }
        }
    }
}

