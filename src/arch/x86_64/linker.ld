ENTRY(start) /*  the entry point, the bootloader will jump to it after loading the kernel */

SECTIONS {
    . = 1M; /* sets the load address of the first section to 1MiB which is a conventional place to load a kernel */

    /*  Two sections boot and text */
    .boot :
    {
        /*ensure that the multiboot header is at the beginning */
        KEEP(*(.multiboot_header))
    }

    .text :
    {
        *(.text)
    }
}
