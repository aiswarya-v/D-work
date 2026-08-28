/**
  DO NOT EDIT
  FILE auto-generated
  Module name:
    AutoGen.h
  Abstract:       Auto-generated AutoGen.h for building module or library.
**/

#ifndef _AUTOGENH_4a298956_fbe0_47fb_ae3a_2d5a0a959a26
#define _AUTOGENH_4a298956_fbe0_47fb_ae3a_2d5a0a959a26

#ifdef __cplusplus
extern "C" {
#endif

#include <Uefi.h>

extern GUID  gEfiCallerIdGuid;
extern GUID  gEdkiiDscPlatformGuid;
extern CHAR8 *gEfiCallerBaseName;

#define EFI_CALLER_ID_GUID \
  {0x4a298956, 0xfbe0, 0x47fb, {0xae, 0x3a, 0x2d, 0x5a, 0x0a, 0x95, 0x9a, 0x26}}
#define EDKII_DSC_PLATFORM_GUID \
  {0x3db7270f, 0xffac, 0x4139, {0x90, 0xa4, 0x0a, 0xe6, 0x8f, 0x3f, 0x81, 0x67}}
#define STACK_COOKIE_VALUE 0xC9422816F32D3AEDULL

// Guids
extern EFI_GUID gEfiMdePkgTokenSpaceGuid;

// Definition of SkuId Array
extern UINT64 _gPcd_SkuId_Array[];

// Definition of PCDs used in libraries is in AutoGen.c


EFI_STATUS
EFIAPI
UefiMain (
  IN EFI_HANDLE        ImageHandle,
  IN EFI_SYSTEM_TABLE  *SystemTable
  );





#ifdef __cplusplus
}
#endif

#endif
