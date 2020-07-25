[ORG 0x00]
[BITS 16]

SECTION .text

jump $

times 510 - ( $ -$$) db 0x00

db 0x55
db 0xAA