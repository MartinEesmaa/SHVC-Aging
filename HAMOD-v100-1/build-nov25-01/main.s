.ifdef WLA_VERSION
.if WLA_VERSION < "10.0"
.fail "Invalid version of wla-dx. Please ensure you are using version 10.0 or higher"
.endif
.else
.fail "Invalid version of wla-dx. Please ensure you are using version 10.0 or higher"
.endif

.include "hdr.asm"
.include "snes.asm"
.include "constants.asm"
.include "bank0.asm"
.include "bank1.asm"
.include "bank2.asm"
.include "bank3.asm"
