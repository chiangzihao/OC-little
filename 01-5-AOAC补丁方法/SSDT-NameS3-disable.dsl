// AOAC
// Name (_S3, ......
// In config ACPI, _S3 to XS3
// Find:     5F53335F
// Replace:  5853335F
//
DefinitionBlock("", "SSDT", 2, "ACDT", "S3-Fix", 0)
{
    External (XS3, IntObj)
    
    If (_OSI ("Darwin"))
    {
        //
    }
    Else
    {
        Method (_S3, 0, NotSerialized)
        {
            Return(XS3)
        }
    }
}
//EOF