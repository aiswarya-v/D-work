# 0 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/MdeModulePkg/Application/UiApp/FrontPageVfr.Vfr"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/Build/OvmfX64/DEBUG_GCC5/X64/MdeModulePkg/Application/UiApp/UiApp/DEBUG/UiAppStrDefs.h" 1
# 45 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/Build/OvmfX64/DEBUG_GCC5/X64/MdeModulePkg/Application/UiApp/UiApp/DEBUG/UiAppStrDefs.h"
extern unsigned char UiAppStrings[];
# 0 "<command-line>" 2
# 1 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/MdeModulePkg/Application/UiApp/FrontPageVfr.Vfr"
# 17 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/MdeModulePkg/Application/UiApp/FrontPageVfr.Vfr"
formset
  guid = { 0x9e0c30bc, 0x3f06, 0x4ba6, 0x82, 0x88, 0x9, 0x17, 0x9b, 0x85, 0x5d, 0xbe },
  title = STRING_TOKEN(0x0002),
  help = STRING_TOKEN(0x000C ),
  classguid = { 0x9e0c30bc, 0x3f06, 0x4ba6, 0x82, 0x88, 0x9, 0x17, 0x9b, 0x85, 0x5d, 0xbe },

  form formid = 0x1000,
       title = STRING_TOKEN(0x0002);

    banner
      title = STRING_TOKEN(0x0003),
      line 1,
      align left;

    banner
      title = STRING_TOKEN(0x0004),
      line 2,
      align left;

    banner
      title = STRING_TOKEN(0x0005),
      line 2,
      align right;

    banner
      title = STRING_TOKEN(0x0007),
      line 3,
      align left;

    banner
      title = STRING_TOKEN(0x0006),
      line 3,
      align right;

    banner
      title = STRING_TOKEN(0x000F),
      line 4,
      align left;

    banner
      title = STRING_TOKEN(0x0010),
      line 4,
      align right;

    banner
      title = STRING_TOKEN(0x0011),
      line 5,
      align left;

    banner
      title = STRING_TOKEN(0x0012),
      line 5,
      align right;

    label 0x1000;




    label 0xffff;

  endform;

endformset;
