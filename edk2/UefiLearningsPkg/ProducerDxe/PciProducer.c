#include <Uefi.h>

#include <Library/UefiBootServicesTableLib.h>
#include <Library/UefiDriverEntryPoint.h>
#include <Library/DebugLib.h>
#include <Library/UefiLib.h>

#include <Protocol/PciIo.h>
#include <Protocol/PciProtocol.h>
#include <IndustryStandard/Pci.h>

// STATIC PCI_PROTOCOL mProtocol = {
//   1234
// };

typedef struct {
    UINT16 VendorId;
    UINT16 ProductId;
} PCI_IDS;

STATIC EFI_EVENT  mPciIoEvent;
STATIC VOID      *mRegistration;

VOID
EFIAPI
PciIoNotifyCallback (
  IN EFI_EVENT Event,
  IN VOID      *Context
  )
{
    DEBUG((DEBUG_ERROR, "******** PCI_IO CALLBACK FIRED ********\n"));

    EFI_STATUS  Status;
    EFI_HANDLE  *HandleBuffer;
    UINTN       HandleCount;
    EFI_HANDLE  PciHandle;

    Status = gBS->LocateHandleBuffer(
                    ByProtocol,
                    &gEfiPciIoProtocolGuid,
                    NULL,
                    &HandleCount,
                    &HandleBuffer
                    );

    DEBUG((
    DEBUG_ERROR,
    "Producer: LocateHandleBuffer Status=%r Count=%u\n",
    Status,
    (UINT32)HandleCount
    ));

    if (EFI_ERROR(Status) || HandleCount == 0) 
    {
        return;
    }

    EFI_PCI_IO_PROTOCOL *PciIo;
    for(int index = 0; index < HandleCount; index++)
    {
        Status = gBS->HandleProtocol(
                    HandleBuffer[index],
                    &gEfiPciIoProtocolGuid,
                    (VOID **)&PciIo
                    );

        if (EFI_ERROR(Status)) {
            continue;
        }

        UINTN Segment, Bus, Device, Function;
        Status = PciIo->GetLocation(PciIo, &Segment, &Bus, &Device, &Function);
        
        UINT32 Ids;
        Status = PciIo->Pci.Read(
                        PciIo,
                        EfiPciIoWidthUint32,
                        0,
                        1,
                        &Ids
                        );

        PCI_TYPE00 Pci;

        Status = PciIo->Pci.Read(
                        PciIo,
                        EfiPciIoWidthUint32,
                        0,
                        sizeof(PCI_TYPE00)/sizeof(UINT32),
                        &Pci
                        );

        DEBUG((
            DEBUG_ERROR,
            "Vendor=%04x Device=%04x Class=%02x SubClass=%02x ProgIF=%02x\n",
            Pci.Hdr.VendorId,
            Pci.Hdr.DeviceId,
            Pci.Hdr.ClassCode[2],
            Pci.Hdr.ClassCode[1],
            Pci.Hdr.ClassCode[0]
        ));

        if (EFI_ERROR(Status)) {
            continue;
        }

        UINT16 VendorId = (UINT16)(Ids & 0xFFFF);
        UINT16 ProductId = (UINT16)((Ids >> 16) & 0xFFFF);

        DEBUG((
            DEBUG_ERROR,
            "[!!!]PCI Device: Seg=%u Bus=%u Dev=%u Func=%u Vendor=%04x Product=%04x\n",
            (UINT32)Segment,
            (UINT32)Bus,
            (UINT32)Device,
            (UINT32)Function,
            VendorId,
            ProductId
            ));

        DEBUG(( DEBUG_ERROR, "[!!!]PCI Device: Seg=%u Bus=%u Dev=%u Func=%u\n", (UINT32)Segment, (UINT32)Bus, (UINT32)Device, (UINT32)Function));
    }
    
    PciHandle = HandleBuffer[0];

    DEBUG((DEBUG_ERROR, "Producer: Using HandleBuffer[0]=%p\n", PciHandle));

    // Status = gBS->InstallProtocolInterface(
    //                 &PciHandle,
    //                 &gPciProtocolGuid,
    //                 EFI_NATIVE_INTERFACE,
    //                 &mProtocol
    //                 );

    DEBUG((DEBUG_ERROR, "Producer GUID=%g\n", &gPciProtocolGuid));
    DEBUG((DEBUG_ERROR, "Producer: PciHandle=%p Count=%u\n", PciHandle, (UINT32)HandleCount));
    DEBUG((DEBUG_ERROR, "Producer: InstallProtocol Status=%r\n", Status));

    //
    // Prevent repeated callbacks
    //
    gBS->CloseEvent(mPciIoEvent);

}

EFI_STATUS
EFIAPI
PciProducerEntry (
  IN EFI_HANDLE        ImageHandle,
  IN EFI_SYSTEM_TABLE  *SystemTable
  )
{
    EFI_STATUS Status;

    DEBUG((DEBUG_ERROR, "Producer Entry\n"));

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