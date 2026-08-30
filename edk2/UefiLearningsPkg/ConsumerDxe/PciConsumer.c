#include <Uefi.h>

#include <Library/UefiBootServicesTableLib.h>
#include <Library/UefiDriverEntryPoint.h>
#include <Library/DebugLib.h>
#include <Library/UefiLib.h>

#include <Protocol/PciIo.h>
#include <Protocol/PciProtocol.h>

STATIC EFI_EVENT  mPciIoEvent;
STATIC VOID      *mRegistration;

VOID
EFIAPI
PciIoNotifyCallback (
  IN EFI_EVENT Event,
  IN VOID      *Context
  )
{
    EFI_STATUS   Status;
    PCI_PROTOCOL *MyProtocol;

    DEBUG((DEBUG_ERROR, "Consumer Callback\n"));
    DEBUG((DEBUG_ERROR, "Consumer GUID=%g\n", &gPciProtocolGuid));

    Status = gBS->LocateProtocol (
                    &gPciProtocolGuid,
                    NULL,
                    (VOID **)&MyProtocol
                    );

    DEBUG((DEBUG_ERROR, "Consumer: LocateProtocol Status=%r\n", Status));

    if (!EFI_ERROR(Status)) {
        DEBUG((
        DEBUG_ERROR,
        "Consumer: Value=%u\n",
        MyProtocol->Value
        ));
    }

    gBS->CloseEvent(mPciIoEvent);

}

EFI_STATUS
EFIAPI
PciConsumerEntry (
  IN EFI_HANDLE        ImageHandle,
  IN EFI_SYSTEM_TABLE  *SystemTable
  )
{
    EFI_STATUS Status;

    DEBUG((DEBUG_ERROR, "Consumer Entry\n"));

    Status = gBS->CreateEvent(
                    EVT_NOTIFY_SIGNAL,
                    TPL_CALLBACK,
                    PciIoNotifyCallback,
                    NULL,
                    &mPciIoEvent
                    );

    if (EFI_ERROR(Status)) {
        return Status;
    }

    Status = gBS->RegisterProtocolNotify(
                    &gEfiPciIoProtocolGuid,
                    mPciIoEvent,
                    &mRegistration
                    );

    DEBUG((
        DEBUG_ERROR,
        "RegisterProtocolNotify Status=%r\n",
        Status
        ));

    return EFI_SUCCESS;
}