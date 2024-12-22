INCLUDE "src/hardware.asm"
INCLUDE "src/macro.asm"
INCLUDE "src/constants.asm"
INCLUDE "src/memory.asm"

DEF FIX_BUGS EQU 0 ; Self explainatory
DEF KEEP_PCM EQU 1 ; Keep the unused PCM functionality
DEF HOOK_PCM EQU 0 ; Hooks up the PCM handler to the timer

; 
; BANK $00 - ???
; 
SECTION "bank00", ROM0
INCLUDE "src/bank00.asm"

; 
; BANK $01 - ???
; 
SECTION "bank01", ROMX, BANK[$01]
INCLUDE "src/bank01.asm"

; 
; BANK $02 - ???
; 
SECTION "bank02", ROMX, BANK[$02]
INCLUDE "src/bank02.asm"

; 
; BANK $03 - ???
; 
SECTION "bank03", ROMX, BANK[$03]
INCLUDE "src/bank03.asm"

; 
; BANK $04 - ???
; 
SECTION "bank04", ROMX, BANK[$04]
INCLUDE "src/bank04.asm"

; 
; BANK $05 - ???
; 
SECTION "bank05", ROMX, BANK[$05]
INCLUDE "src/bank05.asm"

; 
; BANK $06 - ???
; 
SECTION "bank06", ROMX, BANK[$06]
INCLUDE "src/bank06.asm"

; 
; BANK $07 - ???
; 
SECTION "bank07", ROMX, BANK[$07]
INCLUDE "src/bank07.asm"

; 
; BANK $08 - ???
; 
SECTION "bank08", ROMX, BANK[$08]
INCLUDE "src/bank08.asm"

; 
; BANK $09 - ???
; 
SECTION "bank09", ROMX, BANK[$09]
INCLUDE "src/bank09.asm"

; 
; BANK $0A - ???
; 
SECTION "bank0A", ROMX, BANK[$0A]
INCLUDE "src/bank0A.asm"

; 
; BANK $0F - ???
; 
SECTION "bank0F", ROMX, BANK[$0A]
INCLUDE "src/bank0F.asm"

; 
; BANK $11 - ???
; 
SECTION "bank11", ROMX, BANK[$11]
INCLUDE "src/bank11.asm"

; 
; BANK $12 - ???
; 
SECTION "bank12", ROMX, BANK[$12]
INCLUDE "src/bank12.asm"

; 
; BANK $13 - ???
; 
SECTION "bank13", ROMX, BANK[$13]
INCLUDE "src/bank13.asm"

; 
; BANK $14 - ???
; 
SECTION "bank14", ROMX, BANK[$14]
INCLUDE "src/bank14.asm"

; 
; BANK $15 - ???
; 
SECTION "bank15", ROMX, BANK[$15]
INCLUDE "src/bank15.asm"

; 
; BANK $16 - ???
; 
SECTION "bank16", ROMX, BANK[$16]
INCLUDE "src/bank16.asm"

; 
; BANK $17 - ???
; 
SECTION "bank17", ROMX, BANK[$17]
INCLUDE "src/bank17.asm"

; 
; BANK $18 - ???
; 
SECTION "bank18", ROMX, BANK[$18]
INCLUDE "src/bank18.asm"

; 
; BANK $19 - ???
; 
SECTION "bank19", ROMX, BANK[$19]
INCLUDE "src/bank19.asm"

; 
; BANK $1A - ???
; 
SECTION "bank1A", ROMX, BANK[$1A]
INCLUDE "src/bank1A.asm"

; 
; BANK $1B - ???
; 
SECTION "bank1B", ROMX, BANK[$1B]
INCLUDE "src/bank1B.asm"

; 
; BANK $1C - ???
; 
SECTION "bank1C", ROMX, BANK[$1C]
INCLUDE "src/bank1C.asm"

; 
; BANK $1D - ???
; 
SECTION "bank1D", ROMX, BANK[$1D]
INCLUDE "src/bank1D.asm"

; 
; BANK $1E - ???
; 
SECTION "bank1E", ROMX, BANK[$1E]
INCLUDE "src/bank1E.asm"

; 
; BANK $1F - ???
; 
SECTION "bank1F", ROMX, BANK[$1F]
INCLUDE "src/bank1F.asm"

; 
; BANK $20 - ???
; 
SECTION "bank20", ROMX, BANK[$20]
INCLUDE "src/bank20.asm"

; 
; BANK $21 - ???
; 
SECTION "bank21", ROMX, BANK[$21]
INCLUDE "src/bank21.asm"

; 
; BANK $22 - ???
; 
SECTION "bank22", ROMX, BANK[$22]
INCLUDE "src/bank22.asm"

; 
; BANK $23 - ???
; 
SECTION "bank23", ROMX, BANK[$23]
INCLUDE "src/bank23.asm"

; 
; BANK $24 - ???
; 
SECTION "bank24", ROMX, BANK[$24]
INCLUDE "src/bank24.asm"

; 
; BANK $25 - ???
; 
SECTION "bank25", ROMX, BANK[$25]
INCLUDE "src/bank25.asm"

; 
; BANK $26 - ???
; 
SECTION "bank26", ROMX, BANK[$26]
INCLUDE "src/bank26.asm"

; 
; BANK $27 - ???
; 
SECTION "bank27", ROMX, BANK[$27]
INCLUDE "src/bank27.asm"

; 
; BANK $28 - ???
; 
SECTION "bank28", ROMX, BANK[$28]
INCLUDE "src/bank28.asm"

; 
; BANK $29 - ???
; 
SECTION "bank29", ROMX, BANK[$29]
INCLUDE "src/bank29.asm"

; 
; BANK $2A - ???
; 
SECTION "bank2A", ROMX, BANK[$2A]
INCLUDE "src/bank2A.asm"

; 
; BANK $2B - ???
; 
SECTION "bank2B", ROMX, BANK[$2B]
INCLUDE "src/bank2B.asm"

; 
; BANK $2C - ???
; 
SECTION "bank2C", ROMX, BANK[$2C]
INCLUDE "src/bank2C.asm"
