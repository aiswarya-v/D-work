# 0 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Library/FileExplorerLib/FileExplorerVfr.vfr"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/home/mcw/MCW/Dell/EDK2/edk2/Build/OvmfX64/RELEASE_GCC5/X64/MdeModulePkg/Library/FileExplorerLib/FileExplorerLib/DEBUG/FileExplorerLibStrDefs.h" 1
# 35 "/home/mcw/MCW/Dell/EDK2/edk2/Build/OvmfX64/RELEASE_GCC5/X64/MdeModulePkg/Library/FileExplorerLib/FileExplorerLib/DEBUG/FileExplorerLibStrDefs.h"
extern unsigned char FileExplorerLibStrings[];
# 0 "<command-line>" 2
# 1 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Library/FileExplorerLib/FileExplorerVfr.vfr"
# 10 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Library/FileExplorerLib/FileExplorerVfr.vfr"
# 1 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Library/FileExplorerLib/FormGuid.h" 1
# 11 "/home/mcw/MCW/Dell/EDK2/edk2/MdeModulePkg/Library/FileExplorerLib/FileExplorerVfr.vfr" 2

formset
  guid = { 0xfe561596, 0xe6bf, 0x41a6, {0x83, 0x76, 0xc7, 0x2b, 0x71, 0x98, 0x74, 0xd0} },
  title = STRING_TOKEN(0x0003),
  help = STRING_TOKEN(0x0002),
  classguid = { 0xfe561596, 0xe6bf, 0x41a6, {0x83, 0x76, 0xc7, 0x2b, 0x71, 0x98, 0x74, 0xd0} },

  form formid = 0x1000,
       title = STRING_TOKEN(0x0003);

       label 0x1000;
       label 0xffff;
  endform;

  form formid = 0x2000,
       title = STRING_TOKEN(0x0006);

      string
          prompt = STRING_TOKEN(0x0008),
          help = STRING_TOKEN(0x0009),
          flags = INTERACTIVE,
          key = 0x2001,
          minsize = 2,
          maxsize = 20,
      endstring;

      subtitle text = STRING_TOKEN(0x0002);

       text
         help = STRING_TOKEN(0x000A),
         text = STRING_TOKEN(0x000A),
         flags = INTERACTIVE,
         key = 0x2002;

       text
         help = STRING_TOKEN(0x000B),
         text = STRING_TOKEN(0x000B),
         flags = INTERACTIVE,
         key = 0x2003;
  endform;

  form formid = 0x3000,
      title = STRING_TOKEN(0x0007);

      string
          prompt = STRING_TOKEN(0x000E),
          help = STRING_TOKEN(0x000F),
          flags = INTERACTIVE,
          key = 0x3001,
          minsize = 2,
          maxsize = 20,
      endstring;

      subtitle text = STRING_TOKEN(0x0002);

      text
        help = STRING_TOKEN(0x0010),
        text = STRING_TOKEN(0x0010),
        flags = INTERACTIVE,
        key = 0x3002;

      text
        help = STRING_TOKEN(0x0011),
        text = STRING_TOKEN(0x0011),
        flags = INTERACTIVE,
        key = 0x3003;
  endform;

endformset;
