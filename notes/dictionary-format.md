Dictionary headers are a linked list of a simple structure.

    Cell #    Contains
    ------    --------------------------------------------
    0         Pointer to prior entry (0 if first header)
    1         Pointer to class handler
    2         Pointer to function
    3         Pointer to additional supplementary header
    4         Pointer to function name string
    ------    --------------------------------------------


The additional supplementary header field is intended to allow
for expansions of information without requiring a rebuild of
the kernel.

Prior releases of Retro also used a linked list format, but the
records were of varying length since the function name string
was inlined into the header. Changing this is intended to make
it easier to rename or discard name strings.
