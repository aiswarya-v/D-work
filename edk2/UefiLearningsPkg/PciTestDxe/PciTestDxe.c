#include <Uefi.h>

#include <Library/UefiLib.h>
#include <Library/UefiBootServicesTableLib.h>
#include <Library/MemoryAllocationLib.h>
#include <Library/DebugLib.h>

#include <Protocol/PciIo.h>

EFI_STATUS
EFIAPI
PciTestEntry (
    IN EFI_HANDLE ImageHandle,
    IN EFI_SYSTEM_TABLE *SystemTable
    )
{
    EFI_STATUS Status;

    EFI_HANDLE *HandleBuffer;

    UINTN HandleCount;

    UINTN Index;

    Status = gBS->LocateHandleBuffer(
                    ByProtocol,
                    &gEfiPciIoProtocolGuid,
                    NULL,
                    &HandleCount,
                    &HandleBuffer);

    if (EFI_ERROR(Status)) {
        DEBUG((DEBUG_INFO, "LocateHandleBuffer Failed\n"));
        return Status;
    }

    DEBUG((DEBUG_INFO, "==============================\n"));
    DEBUG((DEBUG_INFO, "----Found %d PCI handles----\n\n", HandleCount));

    for (Index = 0; Index < HandleCount; Index++) {

        EFI_PCI_IO_PROTOCOL *PciIo;

        UINT16 VendorId;

        UINT16 DeviceId;

        Status = gBS->HandleProtocol(
                        HandleBuffer[Index],
                        &gEfiPciIoProtocolGuid,
                        (VOID **)&PciIo);

        if (EFI_ERROR(Status)) {
            continue;
        }

        Status = PciIo->Pci.Read(
                            PciIo,
                            EfiPciIoWidthUint16,
                            0x00,
                            1,
                            &VendorId);

        if (EFI_ERROR(Status)) {
            continue;
        }

        Status = PciIo->Pci.Read(
                            PciIo,
                            EfiPciIoWidthUint16,
                            0x02,
                            1,
                            &DeviceId);

        if (EFI_ERROR(Status)) {
            continue;
        }

        DEBUG((DEBUG_INFO, "Vendor=%04x Device=%04x\n",
              VendorId,
              DeviceId));

        if (VendorId == 0x1234 &&
            DeviceId == 0x5678) {

            UINT32 Value;

            UINT32 Ch;

            DEBUG((DEBUG_INFO, "\nMy PCI Device Found!\n\n"));

            //
            // Read Signature
            //

            PciIo->Mem.Read(
                    PciIo,
                    EfiPciIoWidthUint32,
                    0,
                    0x00,
                    1,
                    &Value);

            DEBUG((DEBUG_INFO, "Signature : %08x\n", Value));

            //
            // Read Version
            //

            PciIo->Mem.Read(
                    PciIo,
                    EfiPciIoWidthUint32,
                    0,
                    0x04,
                    1,
                    &Value);

            DEBUG((DEBUG_INFO, "Version   : %08x\n", Value));

            //
            // Read HELLO
            //

            DEBUG((DEBUG_INFO, "Message   : "));

            for (UINTN Offset = 0x08;
                 Offset <= 0x18;
                 Offset += 4) {

                PciIo->Mem.Read(
                        PciIo,
                        EfiPciIoWidthUint32,
                        0,
                        Offset,
                        1,
                        &Ch);

                DEBUG((DEBUG_INFO, "%c", (CHAR16)Ch));
            }

            DEBUG((DEBUG_INFO, "\n"));

            //
            // Write 'A'
            //

            Value = 'A';

            PciIo->Mem.Write(
                    PciIo,
                    EfiPciIoWidthUint32,
                    0,
                    0x08,
                    1,
                    &Value);

            DEBUG((DEBUG_INFO, "\nWritten 'A' at Offset 0x08\n"));

            //
            // Read Again
            //

            DEBUG((DEBUG_INFO, "Message   : "));

            for (UINTN Offset = 0x08;
                 Offset <= 0x18;
                 Offset += 4) {

                PciIo->Mem.Read(
                        PciIo,
                        EfiPciIoWidthUint32,
                        0,
                        Offset,
                        1,
                        &Ch);

                DEBUG((DEBUG_INFO, "%c", (CHAR16)Ch));
            }

            DEBUG((DEBUG_INFO, "\n"));
            DEBUG((DEBUG_INFO, "==============================\n"));
        }
    }

    FreePool(HandleBuffer);

    return EFI_SUCCESS;
}