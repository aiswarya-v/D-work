/**
  DO NOT EDIT
  FILE auto-generated
  Module name:
    AutoGen.h
  Abstract:       Auto-generated AutoGen.h for building module or library.
**/

#ifndef _AUTOGENH_1C4CA056_8FEA_413C_89D2_59A7E22847B3
#define _AUTOGENH_1C4CA056_8FEA_413C_89D2_59A7E22847B3

#ifdef __cplusplus
extern "C" {
#endif

#include <Base.h>
#include <Library/PcdLib.h>

extern GUID  gEfiCallerIdGuid;
extern GUID  gEdkiiDscPlatformGuid;
extern CHAR8 *gEfiCallerBaseName;

#define STACK_COOKIE_VALUE 0x8543C0B9CF69F388ULL

// Guids
extern GUID gEfiMdePkgTokenSpaceGuid;

// Definition of SkuId Array
extern UINT64 _gPcd_SkuId_Array[];

// PCD definitions
#define _PCD_TOKEN_PcdStackCookieExceptionVector  0U
extern const UINT8 _gPcd_FixedAtBuild_PcdStackCookieExceptionVector;
#define _PCD_GET_MODE_8_PcdStackCookieExceptionVector  _gPcd_FixedAtBuild_PcdStackCookieExceptionVector
//#define _PCD_SET_MODE_8_PcdStackCookieExceptionVector  ASSERT(FALSE)  // It is not allowed to set value for a FIXED_AT_BUILD PCD
#define _PCD_VALUE_PcdStackCookieExceptionVector 0x42
#define _PCD_SIZE_PcdStackCookieExceptionVector 1
#define _PCD_GET_MODE_SIZE_PcdStackCookieExceptionVector _PCD_SIZE_PcdStackCookieExceptionVector


#ifdef __cplusplus
}
#endif

#endif
