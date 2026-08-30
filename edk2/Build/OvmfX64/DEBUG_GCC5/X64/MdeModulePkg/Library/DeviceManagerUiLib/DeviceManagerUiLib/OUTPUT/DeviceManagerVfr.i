# 0 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/MdeModulePkg/Library/DeviceManagerUiLib/DeviceManagerVfr.Vfr"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/Build/OvmfX64/DEBUG_GCC5/X64/MdeModulePkg/Library/DeviceManagerUiLib/DeviceManagerUiLib/DEBUG/DeviceManagerUiLibStrDefs.h" 1
# 39 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/Build/OvmfX64/DEBUG_GCC5/X64/MdeModulePkg/Library/DeviceManagerUiLib/DeviceManagerUiLib/DEBUG/DeviceManagerUiLibStrDefs.h"
extern unsigned char DeviceManagerUiLibStrings[];
# 0 "<command-line>" 2
# 1 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/MdeModulePkg/Library/DeviceManagerUiLib/DeviceManagerVfr.Vfr"
# 21 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/MdeModulePkg/Library/DeviceManagerUiLib/DeviceManagerVfr.Vfr"
formset
  guid = { 0x3ebfa8e6, 0x511d, 0x4b5b, 0xa9, 0x5f, 0xfb, 0x38, 0x26, 0xf, 0x1c, 0x27 },
  title = STRING_TOKEN(0x0002),
  help = STRING_TOKEN(0x0003),
  classguid = { 0xe58809f8, 0xfbc1, 0x48e2, { 0x88, 0x3a, 0xa3, 0x0f, 0xdc, 0x4b, 0x44, 0x1e } },

  form formid = 0x1000,
    title = STRING_TOKEN(0x0002);
    subtitle text = STRING_TOKEN(0x0004);




    suppressif TRUE;
          text
              help = STRING_TOKEN(0x0006),
              text = STRING_TOKEN(0x0006),
              flags = INTERACTIVE,
              key = 0x1212;
    endif;

    label 0x1100;
    label 0xffff;

    subtitle text = STRING_TOKEN(0x0006);
    subtitle text = STRING_TOKEN(0x0006);
    subtitle text = STRING_TOKEN(0x0007);
  endform;

  form formid = 0x1001,
    title = STRING_TOKEN(0x000C);
    subtitle text = STRING_TOKEN(0x000D);

    label 0x1101;
    label 0xffff;

    subtitle text = STRING_TOKEN(0x0006);
    subtitle text = STRING_TOKEN(0x0007);
  endform;

  form formid = 0x1002,
    title = STRING_TOKEN(0x0009);
    subtitle text = STRING_TOKEN(0x000A);

    label 0x1102;
    label 0xffff;

    subtitle text = STRING_TOKEN(0x0006);
    subtitle text = STRING_TOKEN(0x0007);
  endform;
endformset;
