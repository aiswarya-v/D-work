# 0 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/NetworkPkg/Ip4Dxe/Ip4Config2.vfr"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/Build/OvmfX64/DEBUG_GCC5/X64/NetworkPkg/Ip4Dxe/Ip4Dxe/DEBUG/Ip4DxeStrDefs.h" 1
# 36 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/Build/OvmfX64/DEBUG_GCC5/X64/NetworkPkg/Ip4Dxe/Ip4Dxe/DEBUG/Ip4DxeStrDefs.h"
extern unsigned char Ip4DxeStrings[];
# 0 "<command-line>" 2
# 1 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/NetworkPkg/Ip4Dxe/Ip4Config2.vfr"







# 1 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/NetworkPkg/Ip4Dxe/Ip4NvData.h" 1
# 12 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/NetworkPkg/Ip4Dxe/Ip4NvData.h"
# 1 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/NetworkPkg/Include/Guid/Ip4Config2Hii.h" 1
# 17 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/NetworkPkg/Include/Guid/Ip4Config2Hii.h"
extern EFI_GUID { 0x9b942747, 0x154e, 0x4d29, { 0xa4, 0x36, 0xbf, 0x71, 0x0, 0xc8, 0xb5, 0x3b }};
# 13 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/NetworkPkg/Ip4Dxe/Ip4NvData.h" 2
# 35 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/NetworkPkg/Ip4Dxe/Ip4NvData.h"
typedef struct {
  UINT8 Configure;
  UINT8 DhcpEnable;
  CHAR16 StationAddress[16];
  CHAR16 SubnetMask[16];
  CHAR16 GatewayAddress[16];
  CHAR16 DnsAddress[255];
} IP4_CONFIG2_IFR_NVDATA;
# 9 "/home/mcw/MCW/Dell/EDK2/git/D-work/edk2/NetworkPkg/Ip4Dxe/Ip4Config2.vfr" 2



formset
  guid = { 0x9b942747, 0x154e, 0x4d29, { 0xa4, 0x36, 0xbf, 0x71, 0x0, 0xc8, 0xb5, 0x3b } },
  title = STRING_TOKEN(0x0002),
  help = STRING_TOKEN(0x0003),
  class = 0x04,
  subclass = 0x03,

  varstore IP4_CONFIG2_IFR_NVDATA,
    name = IP4_CONFIG2_IFR_NVDATA,
    guid = { 0x9b942747, 0x154e, 0x4d29, { 0xa4, 0x36, 0xbf, 0x71, 0x0, 0xc8, 0xb5, 0x3b } };

  form formid = 1,
    title = STRING_TOKEN(0x0004);

    checkbox varid = IP4_CONFIG2_IFR_NVDATA.Configure,
            prompt = STRING_TOKEN(0x0006),
            help = STRING_TOKEN(0x0007),
            flags = INTERACTIVE,
            key = 0x100,
    endcheckbox;

    suppressif ideqval IP4_CONFIG2_IFR_NVDATA.Configure == 0x00;

      checkbox varid = IP4_CONFIG2_IFR_NVDATA.DhcpEnable,
              prompt = STRING_TOKEN(0x0008),
              help = STRING_TOKEN(0x0008),
              flags = INTERACTIVE,
              key = 0x101,
      endcheckbox;
    endif;

    suppressif ideqval IP4_CONFIG2_IFR_NVDATA.DhcpEnable == 0x01 OR ideqval IP4_CONFIG2_IFR_NVDATA.Configure == 0x00;

      string varid = IP4_CONFIG2_IFR_NVDATA.StationAddress,
              prompt = STRING_TOKEN(0x0009),
              help = STRING_TOKEN(0x000A),
              flags = INTERACTIVE,
              key = 0x102,
              minsize = 7,
              maxsize = 15,
      endstring;

      string varid = IP4_CONFIG2_IFR_NVDATA.SubnetMask,
              prompt = STRING_TOKEN(0x000B),
              help = STRING_TOKEN(0x000C),
              flags = INTERACTIVE,
              key = 0x103,
              minsize = 7,
             maxsize = 15,
      endstring;

      string varid = IP4_CONFIG2_IFR_NVDATA.GatewayAddress,
              prompt = STRING_TOKEN(0x000D),
              help = STRING_TOKEN(0x000E),
              flags = INTERACTIVE,
              key = 0x104,
              minsize = 7,
              maxsize = 15,
      endstring;

      string varid = IP4_CONFIG2_IFR_NVDATA.DnsAddress,
              prompt = STRING_TOKEN(0x000F),
              help = STRING_TOKEN(0x0010),
              flags = INTERACTIVE,
              key = 0x105,
              minsize = 7,
              maxsize = 255,
      endstring;

    endif;

    subtitle text = STRING_TOKEN(0x0012);

    text
      help = STRING_TOKEN(0x0011),
      text = STRING_TOKEN(0x0011),
      flags = INTERACTIVE,
      key = 0x106;

  endform;

endformset;
