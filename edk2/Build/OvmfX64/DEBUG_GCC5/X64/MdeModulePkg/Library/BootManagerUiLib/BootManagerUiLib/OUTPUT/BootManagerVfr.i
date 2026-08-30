# 0 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/MdeModulePkg/Library/BootManagerUiLib/BootManagerVfr.Vfr"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/Build/OvmfX64/DEBUG_GCC5/X64/MdeModulePkg/Library/BootManagerUiLib/BootManagerUiLib/DEBUG/BootManagerUiLibStrDefs.h" 1
# 26 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/Build/OvmfX64/DEBUG_GCC5/X64/MdeModulePkg/Library/BootManagerUiLib/BootManagerUiLib/DEBUG/BootManagerUiLibStrDefs.h"
extern unsigned char BootManagerUiLibStrings[];
# 0 "<command-line>" 2
# 1 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/MdeModulePkg/Library/BootManagerUiLib/BootManagerVfr.Vfr"
# 16 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/MdeModulePkg/Library/BootManagerUiLib/BootManagerVfr.Vfr"
formset
  guid = { 0x847bc3fe, 0xb974, 0x446d, 0x94, 0x49, 0x5a, 0xd5, 0x41, 0x2e, 0x99, 0x3b },
  title = STRING_TOKEN(0x0002),
  help = STRING_TOKEN(0x0003),
  classguid = { 0xe58809f8, 0xfbc1, 0x48e2, { 0x88, 0x3a, 0xa3, 0x0f, 0xdc, 0x4b, 0x44, 0x1e } },

  form formid = 0x1000,
       title = STRING_TOKEN(0x0002);

    subtitle text = STRING_TOKEN(0x0007);
    subtitle text = STRING_TOKEN(0x0005);
    subtitle text = STRING_TOKEN(0x0007);




    suppressif TRUE;
          text
              help = STRING_TOKEN(0x0007 ),
              text = STRING_TOKEN(0x0007 ),
              flags = INTERACTIVE,
              key = 0x1212;
     endif;




    label 0x00;
    label 0x01;

    subtitle text = STRING_TOKEN(0x0007);
    subtitle text = STRING_TOKEN(0x0004);

  endform;

endformset;
