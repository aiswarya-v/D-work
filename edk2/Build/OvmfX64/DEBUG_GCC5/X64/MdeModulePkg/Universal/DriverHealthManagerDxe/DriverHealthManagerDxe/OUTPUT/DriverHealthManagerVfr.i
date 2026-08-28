# 0 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Universal/DriverHealthManagerDxe/DriverHealthManagerVfr.Vfr"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/home/mcw/MCW/Dell/EDK2/edk2/Build/OvmfX64/DEBUG_GCC5/X64/MdeModulePkg/Universal/DriverHealthManagerDxe/DriverHealthManagerDxe/DEBUG/DriverHealthManagerDxeStrDefs.h" 1
# 28 "/home/mcw/MCW/Dell/EDK2/edk2/Build/OvmfX64/DEBUG_GCC5/X64/MdeModulePkg/Universal/DriverHealthManagerDxe/DriverHealthManagerDxe/DEBUG/DriverHealthManagerDxeStrDefs.h"
extern unsigned char DriverHealthManagerDxeStrings[];
# 0 "<command-line>" 2
# 1 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Universal/DriverHealthManagerDxe/DriverHealthManagerVfr.Vfr"
# 9 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Universal/DriverHealthManagerDxe/DriverHealthManagerVfr.Vfr"
# 1 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Universal/DriverHealthManagerDxe/DriverHealthManagerVfr.h" 1
# 11 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Universal/DriverHealthManagerDxe/DriverHealthManagerVfr.h"
# 1 "/home/mcw/MCW/Dell/EDK2/edk2/MdePkg/Include/Guid/HiiPlatformSetupFormset.h" 1
# 28 "/home/mcw/MCW/Dell/EDK2/edk2/MdePkg/Include/Guid/HiiPlatformSetupFormset.h"
extern EFI_GUID gEfiHiiPlatformSetupFormsetGuid;
extern EFI_GUID { 0xf22fc20c, 0x8cf4, 0x45eb, { 0x8e, 0x6, 0xad, 0x4e, 0x50, 0xb9, 0x5d, 0xd3 }};
extern EFI_GUID gEfiHiiUserCredentialFormsetGuid;
extern EFI_GUID gEfiHiiRestStyleFormsetGuid;
# 12 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Universal/DriverHealthManagerDxe/DriverHealthManagerVfr.h" 2
# 10 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Universal/DriverHealthManagerDxe/DriverHealthManagerVfr.Vfr" 2

formset
  guid = { 0xcfb3b000, 0x0b63, 0x444b, { 0xb1, 0xd1, 0x12, 0xd5, 0xd9, 0x5d, 0xc4, 0xfc } },
  title = STRING_TOKEN(0x0002),
  help = STRING_TOKEN(0x0003),
  classguid = { 0x93039971, 0x8545, 0x4b04, { 0xb4, 0x5e, 0x32, 0xeb, 0x83, 0x26, 0x4, 0xe } },

  form formid = 0x1001,
      title = STRING_TOKEN(0x0002);

      label 0x2000;
      label 0x2001;

      suppressif TRUE;
          text
              help = STRING_TOKEN(0x0004),
              text = STRING_TOKEN(0x0004),
              flags = INTERACTIVE,
              key = 0x0001;
      endif;

  endform;
endformset;
