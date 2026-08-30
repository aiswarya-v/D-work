#ifndef _PCI_PROTOCOL_H_
#define _PCI_PROTOCOL_H_

#include <Uefi.h>

#define PCI_PROTOCOL_GUID \
{ \
  0x12345678, \
  0x1234, \
  0x5678, \
  {0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88} \
}

typedef struct {
  UINT32 Value;
} PCI_PROTOCOL;

extern EFI_GUID gPciProtocolGuid;

#endif