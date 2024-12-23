; ================ Configuration ================
DEF CLEAN_MUTE EQU 0 ; Removes noise from silence, at the cost of audio pops
DEF KEEP_PCM EQU 1 ; Keep the unused PCM functionality
DEF HOOK_PCM EQU 0 ; Hooks up the PCM handler to the timer
INCLUDE "main.asm"