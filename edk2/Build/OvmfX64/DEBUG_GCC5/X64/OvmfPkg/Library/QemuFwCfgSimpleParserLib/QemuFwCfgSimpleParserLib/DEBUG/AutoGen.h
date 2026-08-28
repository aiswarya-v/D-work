/**
  DO NOT EDIT
  FILE auto-generated
  Module name:
    AutoGen.h
  Abstract:       Auto-generated AutoGen.h for building module or library.
**/

#ifndef _AUTOGENH_a9a1211d_061e_4b64_af30_5dd0cac9dc99
#define _AUTOGENH_a9a1211d_061e_4b64_af30_5dd0cac9dc99

#ifdef __cplusplus
extern "C" {
#endif

#include <Base.h>

extern GUID  gEfiCallerIdGuid;
extern GUID  gEdkiiDscPlatformGuid;
extern CHAR8 *gEfiCallerBaseName;

#define STACK_COOKIE_VALUE 0xD95934C265F9D0A8ULL

// Definition of SkuId Array
extern UINT64 _gPcd_SkuId_Array[];

RETURN_STATUS
EFIAPI
QemuFwCfgSimpleParserInit (
  VOID
  );


#ifdef __cplusplus
}
#endif

#endif
