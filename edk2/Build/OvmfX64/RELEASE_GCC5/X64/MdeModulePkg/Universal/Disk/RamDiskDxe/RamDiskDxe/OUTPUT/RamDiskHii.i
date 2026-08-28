# 0 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Universal/Disk/RamDiskDxe/RamDiskHii.vfr"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/home/mcw/MCW/Dell/EDK2/edk2/Build/OvmfX64/RELEASE_GCC5/X64/MdeModulePkg/Universal/Disk/RamDiskDxe/RamDiskDxe/DEBUG/RamDiskDxeStrDefs.h" 1
# 43 "/home/mcw/MCW/Dell/EDK2/edk2/Build/OvmfX64/RELEASE_GCC5/X64/MdeModulePkg/Universal/Disk/RamDiskDxe/RamDiskDxe/DEBUG/RamDiskDxeStrDefs.h"
extern unsigned char RamDiskDxeStrings[];
# 0 "<command-line>" 2
# 1 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Universal/Disk/RamDiskDxe/RamDiskHii.vfr"
# 10 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Universal/Disk/RamDiskDxe/RamDiskHii.vfr"
# 1 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Universal/Disk/RamDiskDxe/RamDiskNVData.h" 1
# 13 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Universal/Disk/RamDiskDxe/RamDiskNVData.h"
# 1 "/home/mcw/MCW/Dell/EDK2/edk2/MdePkg/Include/Guid/HiiPlatformSetupFormset.h" 1
# 28 "/home/mcw/MCW/Dell/EDK2/edk2/MdePkg/Include/Guid/HiiPlatformSetupFormset.h"
extern EFI_GUID gEfiHiiPlatformSetupFormsetGuid;
extern EFI_GUID gEfiHiiDriverHealthFormsetGuid;
extern EFI_GUID gEfiHiiUserCredentialFormsetGuid;
extern EFI_GUID gEfiHiiRestStyleFormsetGuid;
# 14 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Universal/Disk/RamDiskDxe/RamDiskNVData.h" 2
# 1 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Include/Guid/RamDiskHii.h" 1
# 17 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Include/Guid/RamDiskHii.h"
extern EFI_GUID { 0x2a46715f, 0x3581, 0x4a55, { 0x8e, 0x73, 0x2b, 0x76, 0x9a, 0xaa, 0x30, 0xc5 }};
# 15 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Universal/Disk/RamDiskDxe/RamDiskNVData.h" 2
# 33 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Universal/Disk/RamDiskDxe/RamDiskNVData.h"
typedef struct {



  UINT64 Size;



  UINT8 MemType;
} RAM_DISK_CONFIGURATION;
# 11 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Universal/Disk/RamDiskDxe/RamDiskHii.vfr" 2

formset
  guid = { 0x2a46715f, 0x3581, 0x4a55, {0x8e, 0x73, 0x2b, 0x76, 0x9a, 0xaa, 0x30, 0xc5} },
  title = STRING_TOKEN(0x0002),
  help = STRING_TOKEN(0x0003),
  classguid = { 0x93039971, 0x8545, 0x4b04, { 0xb4, 0x5e, 0x32, 0xeb, 0x83, 0x26, 0x4, 0xe } },




  form formid = 0x1000,
    title = STRING_TOKEN(0x0004);

    oneof
      questionid = 0x2004,
        prompt = STRING_TOKEN(0x0011),
        help = STRING_TOKEN(0x0012),
        flags = NUMERIC_SIZE_1 | INTERACTIVE,
        option text = STRING_TOKEN(0x0013), value = 0x00, flags = DEFAULT;
        option text = STRING_TOKEN(0x0014), value = 0x01, flags = 0;
    endoneof;

    subtitle text = STRING_TOKEN(0x0005);

    goto 0x2000,
      prompt = STRING_TOKEN(0x0008),
      help = STRING_TOKEN(0x0009);

    goto 0x1000,
      prompt = STRING_TOKEN(0x000A),
      help = STRING_TOKEN(0x000B),
      flags = INTERACTIVE,
      key = 0x1001;

    subtitle text = STRING_TOKEN(0x0005);
    subtitle text = STRING_TOKEN(0x0006);

    label 0x1003;
    label 0x1004;

    subtitle text = STRING_TOKEN(0x0005);

    text
      help = STRING_TOKEN(0x000C),
      text = STRING_TOKEN(0x000D),
      flags = INTERACTIVE,
      key = 0x1002;

  endform;




  form formid = 0x2000,
    title = STRING_TOKEN(0x000E);

    subtitle text = STRING_TOKEN(0x0005);

    numeric
      questionid = 0x2001,
      prompt = STRING_TOKEN(0x000F),
      help = STRING_TOKEN(0x0010),
      flags = NUMERIC_SIZE_8 | DISPLAY_UINT_HEX | INTERACTIVE,
      minimum = 1,
      maximum = 0xFFFFFFFFFFFFFFFF,
    endnumeric;

    subtitle text = STRING_TOKEN(0x0005);

    text
      help = STRING_TOKEN(0x0015),
      text = STRING_TOKEN(0x0016),
      flags = INTERACTIVE,
      key = 0x2002;

    text
      help = STRING_TOKEN(0x0017),
      text = STRING_TOKEN(0x0018),
      flags = INTERACTIVE,
      key = 0x2003;

  endform;

endformset;
