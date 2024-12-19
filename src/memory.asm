; =============== dp ===============
; Shorthand for far pointers in standard order.
MACRO dp
	db BANK(\1)
	dw \1
ENDM

; LOWERCASE nrxx macros to try avoiding conflicts

; =============== nr10 ===============
; NR10 data.
; IN
; - 1: Pace ($0-7)
; - 2: Direction (SNDPRD_INC or SNDPRD_DEC)
; - 3: Individual step
MACRO nr10
	db (\1 << 4)|\2|\3
ENDM

; =============== nrx1 ===============
; NRx1 data.
;
; IN
; - 1: Wave Duty (SNDDUTY_*)
; - 2: Initial length timer
MACRO nrx1
	db (\1 << 6)|\2
ENDM

; =============== nrx2 ===============
; NRx2 data.
;
; IN
; - 1: Volume ($0-$F)
; - 2: Envelope direction (SNDENV_INC or SNDENV_DEC) [non-Wave]
; - 3: Envelope pace [non-Wave]
MACRO nrx2
	db (\1 << 4)|\2|\3
ENDM

; =============== nr32 ===============
; NR32 data, in hNRx2Data format.
;
; IN
; - 1: Volume (SNDCH3VOL_*)
MACRO nr32
	db (\1 << 6)
ENDM

; =============== INSTRUMENT / VIBRATO DATA COMMANDS ===============

; =============== ivol ===============
; Command: Sound_DoInstrument.cmdSetNewData
;
; Sets new NRx2 data block.
;
; IN
; - 1: Length, in frames. This NRx2 data is valid for that duration.
;      Must not be between $80-$84
; - 2-4: nrx2 args
MACRO ivol
	db \1
	nrx2 \2,\3,\4
ENDM

; =============== vfrq ===============
; Command: Sound_DoVibrato.cmdShiftFreq
;
; Shifts the frequency by the specified amount.
;
; IN
; - 1: Amount (signed)
;      Must not be between $80-$84
MACRO vfrq
	db \1
ENDM

; =============== irewind ===============
; Command: Sound_DoInstrument.cmdReset
;
; Restarts the instrument from the beginning.
MACRO irewind
	db SNDENVCMD_RESET
ENDM

; =============== vrewind ===============
; Command: Sound_DoVibrato.cmdReset
;
; Restarts the vibrato from the beginning.
MACRO vrewind
	db SNDENVCMD_RESET
ENDM

; =============== iloop_prev ===============
; Command: Sound_DoInstrument.cmdLoop
;
; Repeats the previous command.
MACRO iloop_prev
	db SNDENVCMD_LOOP
ENDM

; =============== vloop_prev ===============
; Command: Sound_DoVibrato.cmdLoop
;
; Repeats the previous command.
MACRO vloop_prev
	db SNDENVCMD_LOOP
ENDM

; =============== iloop_prev_sh ===============
; Command: Sound_DoInstrument.cmdLoopCond
;
; Repeats the previous command loop until the key is released.
;
; IN (same as ivol)
; - 1: Length, in frames.
; - 2-4: nrx2 args
MACRO iloop_prev_sh
	db SNDENVCMD_LOOPCOND
	ivol \1,\2,\3,\4
ENDM

; =============== vloop_prev_sh ===============
; Command: Sound_DoVibrato.cmdLoopCond
;
; Repeats the previous command loop until the key is released.
; IN (same as vfrq)
; - 1: Amount (signed)
MACRO vloop_prev_sh
	db SNDENVCMD_LOOPCOND
	vfrq \1
ENDM

; =============== iloop_far ===============
; Command: Sound_DoInstrument.cmdLoopFar
;
; Makes the instrument loop to the specified label.
;
; IN
; - 1: Label
;      Must point to before current location.
MACRO iloop_far
	db SNDENVCMD_LOOPFAR, (@ - \1 - 1)
ENDM

; =============== vloop_far ===============
; Command: Sound_DoVibrato.cmdLoopFar
;
; Makes the vibrato loop to the specified label.
;
; IN
; - 1: Label
;      Must point to before current location.
MACRO vloop_far
	db SNDENVCMD_LOOPFAR, (@ - \1 - 1)
ENDM

; =============== iloop_far_sh ===============
; Command: Sound_DoInstrument.cmdLoopFarCond
;
; Makes the instrument loop to the specified label until the key is released.
;
; IN
; - 1: Label
;      Must point to before current location.
; (remaining same as ivol)
; - 2: Length, in frames.
; - 3-5: nrx2 args
MACRO iloop_far_sh
	db SNDENVCMD_LOOPFARCOND, (@ - \1 - 1)
	ivol \2,\3,\4,\5
ENDM

; =============== vloop_far_sh ===============
; Command: Sound_DoVibrato.cmdLoopFarCond
;
; Makes the vibrato loop to the specified label until the key is released.
;
; IN
; - 1: Label
;      Must point to before current location.
; (remaining same as vfrq)
; - 2: Amount (signed)
MACRO vloop_far_sh
	db SNDENVCMD_LOOPFARCOND, (@ - \1 - 1)
	vfrq \2
ENDM


; h_Unk_FFE5_Flags bits (data command- related? frame specific slot flags?)
DEF SNDDFB_KEYHOLDNEW EQU 3 ; Started holding keys this frame (first frame when SNDXB_KEYHOLD is set)
DEF SNDDFB_TRIG EQU 5 ; Sound channel should be retriggered.
DEF SNDDFB_NEWNOTE EQU 7 ; New note set on this frame. Used in practice to execute the Portamento setup code.
DEF SNDDF_KEYHOLDNEW EQU 1 << SNDDFB_KEYHOLDNEW
DEF SNDDF_TRIG EQU 1 << SNDDFB_TRIG
DEF SNDDF_NEWNOTE EQU 1 << SNDDFB_NEWNOTE

DEF SNDSLOT0 EQU $00
DEF SNDSLOT1 EQU $01
DEF SNDSLOT2 EQU $02
DEF SNDSLOT3 EQU $03
DEF SNDSLOT4 EQU $04
DEF SNDSLOT5 EQU $05
DEF SNDSLOT6 EQU $06
DEF SNDSLOT7 EQU $07
DEF SNDSLOTPAUSE EQU $08

; NRx1, gb-like
DEF SNDDUTY_12 EQU 0
DEF SNDDUTY_25 EQU 1
DEF SNDDUTY_50 EQU 2
DEF SNDDUTY_75 EQU 3

; NR32, rearranged
DEF SNDCH3VOL_000 EQU 0
DEF SNDCH3VOL_025 EQU 1
DEF SNDCH3VOL_050 EQU 2
DEF SNDCH3VOL_100 EQU 3

DEF WAVE_00 EQU $00
DEF WAVE_01 EQU $01
DEF WAVE_02 EQU $02
DEF WAVE_03 EQU $03
DEF WAVE_04 EQU $04
DEF WAVE_05 EQU $05
DEF WAVE_06 EQU $06
DEF WAVE_07 EQU $07
DEF WAVE_08 EQU $08
DEF WAVE_09 EQU $09
DEF WAVE_0A EQU $0A
DEF WAVE_0B EQU $0B
DEF WAVE_0C EQU $0C
DEF WAVE_0D EQU $0D
DEF WAVE_0E EQU $0E
DEF WAVE_0F EQU $0F
DEF WAVE_10 EQU $10
DEF WAVE_11 EQU $11
DEF WAVE_12 EQU $12
DEF WAVE_13 EQU $13
DEF WAVE_14 EQU $14

DEF VIBRATO_NONE EQU $00
DEF VIBRATO_01 EQU $01
DEF VIBRATO_02 EQU $02
DEF VIBRATO_03 EQU $03
DEF VIBRATO_04 EQU $04
DEF VIBRATO_05 EQU $05
DEF VIBRATO_06 EQU $06
DEF VIBRATO_07 EQU $07
DEF VIBRATO_08 EQU $08
DEF VIBRATO_09 EQU $09
DEF VIBRATO_0A EQU $0A
DEF VIBRATO_0B EQU $0B
DEF VIBRATO_0C EQU $0C
DEF VIBRATO_0D EQU $0D
DEF VIBRATO_0E EQU $0E
DEF VIBRATO_0F EQU $0F
DEF VIBRATO_10 EQU $10
DEF VIBRATO_11 EQU $11
DEF VIBRATO_12 EQU $12
DEF VIBRATO_13 EQU $13
DEF VIBRATO_14 EQU $14
DEF VIBRATO_15 EQU $15
DEF VIBRATO_16 EQU $16
DEF VIBRATO_17 EQU $17
DEF VIBRATO_18 EQU $18
DEF VIBRATO_19 EQU $19
DEF VIBRATO_1A EQU $1A
DEF VIBRATO_1B EQU $1B
DEF VIBRATO_1C EQU $1C
DEF VIBRATO_1D EQU $1D
DEF VIBRATO_1E EQU $1E
DEF VIBRATO_1F EQU $1F
DEF VIBRATO_20 EQU $20
DEF VIBRATO_21 EQU $21
DEF VIBRATO_22 EQU $22
DEF VIBRATO_23 EQU $23
DEF VIBRATO_24 EQU $24
DEF VIBRATO_25 EQU $25
DEF VIBRATO_26 EQU $26
DEF VIBRATO_27 EQU $27
DEF VIBRATO_28 EQU $28
DEF VIBRATO_29 EQU $29
DEF VIBRATO_2A EQU $2A
DEF VIBRATO_2B EQU $2B
DEF VIBRATO_2C EQU $2C
DEF VIBRATO_2D EQU $2D
DEF VIBRATO_2E EQU $2E
DEF VIBRATO_2F EQU $2F
DEF VIBRATO_30 EQU $30
DEF VIBRATO_31 EQU $31
DEF VIBRATO_32 EQU $32
DEF VIBRATO_33 EQU $33
DEF VIBRATO_34 EQU $34
DEF VIBRATO_35 EQU $35
DEF VIBRATO_36 EQU $36
DEF VIBRATO_37 EQU $37
DEF VIBRATO_38 EQU $38
DEF VIBRATO_39 EQU $39
DEF VIBRATO_3A EQU $3A
DEF VIBRATO_3B EQU $3B
DEF VIBRATO_3C EQU $3C
DEF VIBRATO_3D EQU $3D
DEF VIBRATO_3E EQU $3E
DEF VIBRATO_3F EQU $3F
DEF VIBRATO_40 EQU $40
DEF VIBRATO_41 EQU $41
DEF VIBRATO_42 EQU $42
DEF VIBRATO_43 EQU $43
DEF VIBRATO_44 EQU $44
DEF VIBRATO_45 EQU $45
DEF VIBRATO_46 EQU $46
DEF VIBRATO_47 EQU $47
DEF VIBRATO_48 EQU $48
DEF VIBRATO_49 EQU $49
DEF VIBRATO_4A EQU $4A
DEF VIBRATO_4B EQU $4B
DEF VIBRATO_4C EQU $4C
DEF VIBRATO_4D EQU $4D
DEF VIBRATO_4E EQU $4E
DEF VIBRATO_4F EQU $4F
DEF VIBRATO_50 EQU $50
DEF VIBRATO_51 EQU $51
DEF VIBRATO_52 EQU $52
DEF VIBRATO_53 EQU $53
DEF VIBRATO_54 EQU $54
DEF VIBRATO_55 EQU $55
DEF VIBRATO_56 EQU $56
DEF VIBRATO_57 EQU $57
DEF VIBRATO_58 EQU $58
DEF VIBRATO_59 EQU $59
DEF VIBRATO_5A EQU $5A
DEF VIBRATO_5B EQU $5B
DEF VIBRATO_5C EQU $5C
DEF VIBRATO_5D EQU $5D
DEF VIBRATO_5E EQU $5E
DEF VIBRATO_5F EQU $5F
DEF VIBRATO_60 EQU $60
DEF VIBRATO_61 EQU $61
DEF VIBRATO_62 EQU $62
DEF VIBRATO_63 EQU $63
DEF VIBRATO_64 EQU $64
DEF VIBRATO_65 EQU $65
DEF VIBRATO_66 EQU $66
DEF VIBRATO_67 EQU $67
DEF VIBRATO_68 EQU $68
DEF VIBRATO_69 EQU $69
DEF VIBRATO_6A EQU $6A
DEF VIBRATO_6B EQU $6B
DEF VIBRATO_6C EQU $6C
DEF VIBRATO_6D EQU $6D
DEF VIBRATO_6E EQU $6E
DEF VIBRATO_6F EQU $6F
DEF VIBRATO_70 EQU $70
DEF VIBRATO_71 EQU $71
DEF VIBRATO_72 EQU $72
DEF VIBRATO_73 EQU $73
DEF VIBRATO_74 EQU $74
DEF VIBRATO_75 EQU $75
DEF VIBRATO_76 EQU $76
DEF VIBRATO_77 EQU $77
DEF VIBRATO_78 EQU $78
DEF VIBRATO_79 EQU $79
DEF VIBRATO_7A EQU $7A
DEF VIBRATO_7B EQU $7B
DEF VIBRATO_7C EQU $7C
DEF VIBRATO_7D EQU $7D
DEF VIBRATO_7E EQU $7E
DEF VIBRATO_7F EQU $7F

;                    ; Used in channels...
DEF INSTR_NONE EQU $00
DEF INSTR_01 EQU $01 ; 3
DEF INSTR_02 EQU $02 ; 2
DEF INSTR_03 EQU $03 ; 1 2
DEF INSTR_04 EQU $04 ; 1
DEF INSTR_05 EQU $05 ; 1 2 3
DEF INSTR_06 EQU $06 ; 1
DEF INSTR_07 EQU $07 ; 1 2
DEF INSTR_08 EQU $08 ; 1 3
DEF INSTR_09 EQU $09 ; 1 2
DEF INSTR_0A EQU $0A ; 1 2
DEF INSTR_0B EQU $0B ; 1 2
DEF INSTR_11 EQU $11 ; 1 2
DEF INSTR_12 EQU $12 ; 1 2
DEF INSTR_13 EQU $13 ; 2 3
DEF INSTR_15 EQU $15 ; 1 2
DEF INSTR_16 EQU $16 ; 2
DEF INSTR_17 EQU $17 ; 1 2
DEF INSTR_18 EQU $18 ; 3 2
DEF INSTR_19 EQU $19 ; 2
DEF INSTR_1B EQU $1B ; 3
DEF INSTR_1E EQU $1E ; 4
DEF INSTR_2E EQU $2E ; 1 2 3
DEF INSTR_2F EQU $2F ; 1
DEF INSTR_30 EQU $30 ; 1 3
DEF INSTR_31 EQU $31 ; 1
DEF INSTR_32 EQU $32 ; 3
DEF INSTR_33 EQU $33 ; 1 2 3
DEF INSTR_34 EQU $34 ; 1 2 3
DEF INSTR_35 EQU $35 ; 1
DEF INSTR_36 EQU $36 ; 1 2
DEF INSTR_37 EQU $37 ; 1
DEF INSTR_38 EQU $38 ; 1 2
DEF INSTR_39 EQU $39 ; 1
DEF INSTR_3B EQU $3B ; 1
DEF INSTR_3C EQU $3C ; 2
DEF INSTR_3D EQU $3D ; 1 2 3
DEF INSTR_3E EQU $3E ; 1 2 3
DEF INSTR_40 EQU $40 ; 2 3
DEF INSTR_41 EQU $41 ; 1 2
DEF INSTR_42 EQU $42 ; 3
DEF INSTR_56 EQU $56 ; 1 3
DEF INSTR_57 EQU $57 ; 2
DEF INSTR_58 EQU $58 ; 1
DEF INSTR_5A EQU $5A ; 2
DEF INSTR_5B EQU $5B ; 1 2
DEF INSTR_5C EQU $5C ; 1 2
DEF INSTR_5D EQU $5D ; 1
DEF INSTR_5E EQU $5E ; 1
DEF INSTR_5F EQU $5F ; 1
DEF INSTR_60 EQU $60 ; 1
DEF INSTR_61 EQU $61 ; 2
DEF INSTR_62 EQU $62 ; 3
DEF INSTR_63 EQU $63 ; 3
DEF INSTR_65 EQU $65 ; 1 2
DEF INSTR_67 EQU $67 ; 2
DEF INSTR_68 EQU $68 ; 1 2
DEF INSTR_69 EQU $69 ; 1 2
DEF INSTR_6A EQU $6A ; 1 2
DEF INSTR_6B EQU $6B ; 3
DEF INSTR_6D EQU $6D ; 2
DEF INSTR_6E EQU $6E ; 1
DEF INSTR_6F EQU $6F ; 1
DEF INSTR_70 EQU $70 ; 1
DEF INSTR_71 EQU $71 ; 1
DEF INSTR_73 EQU $73 ; 1

DEF PRESET_00 EQU $C0
DEF PRESET_01 EQU $C1
DEF PRESET_02 EQU $C2
DEF PRESET_03 EQU $C3
DEF PRESET_04 EQU $C4
DEF PRESET_05 EQU $C5
DEF PRESET_06 EQU $C6
DEF PRESET_07 EQU $C7
DEF PRESET_08 EQU $C8
DEF PRESET_09 EQU $C9

	;  VAL   |  ID | ENCODED IN COMMAND's byte1
DEF NOTELEN_CUSTOM EQU $00
DEF NOTELEN_01 EQU $01 ;; ;;, ;;| $F0 or $DF
DEF NOTELEN_02 EQU $02 ;; ;;, ;;| $F1 or $E0
DEF NOTELEN_03 EQU $03 ;; ;;, ;;| $F2 or $E1
DEF NOTELEN_04 EQU $04 ;; ;;, ;;| $F3 or $E2
DEF NOTELEN_06 EQU $05 ;; ;;, ;;| $F4 or $E3
DEF NOTELEN_08 EQU $06 ;; ;;, ;;| $F5 or $E4
DEF NOTELEN_0C EQU $07 ;; ;;, ;;| $F6 or $E5
DEF NOTELEN_10 EQU $08 ;; ;;, ;;| $F7 or $E6
DEF NOTELEN_18 EQU $09 ;; ;;, ;;| $F8 or $E7
DEF NOTELEN_20 EQU $0A ;; ;;, ;;| $F9 or $E8
DEF NOTELEN_30 EQU $0B ;; ;;, ;;| $FA or $E9
DEF NOTELEN_09 EQU $0C ;; ;;, ;;| $FB or $EA
DEF NOTELEN_12 EQU $0D ;; ;;, ;;| $FC or $EB
DEF NOTELEN_1E EQU $0E ;; ;;, ;;| $FD or $EC
DEF NOTELEN_24 EQU $0F ;; ;;, ;;| $FE or $ED
DEF NOTELEN_2A EQU $10 ;; ;;, ;;| $FF or $EE
DEF NOTELENARG_LENGTH EQU $11 ; Range of valid values for the note length parameter (SNDDATACMD_NOTE & supersets)

; iSndChInfo_06
DEF SNDCH_PULSE1 EQU $00
DEF SNDCH_PULSE2 EQU $01
DEF SNDCH_WAVE   EQU $02
DEF SNDCH_NOISE  EQU $03

; iSndChInfo_03
DEF SNDSWB_SET   EQU 7 ; If set, iSndChInfo_03 should be treated as NR10 data. Otherwise, it's a Vibrato ID.
DEF SNDSW_SET    EQU 1 << SNDSWB_SET


; wSnd_D011_Flags
;DEF SNDYB_1 EQU 1
;DEF SNDYB_4 EQU 4
;DEF SNDYB_5 EQU 5
;DEF SNDY_1 EQU 1 << SNDYB_1
;DEF SNDY_4 EQU 1 << SNDYB_4
;DEF SNDY_5 EQU 1 << SNDYB_5
DEF SNDFB1_EXEC EQU 0 ; Marks the sound driver as being executed.
DEF SNDFB1_PAUSE EQU 1
DEF SNDFB1_PCMON EQU 2 ; PCM enabled
DEF SNDFB1_3 EQU 3
DEF SNDFB1_FADEOUT EQU 4 ; Fade in or out?
DEF SNDFB1_FADE EQU 5 ; Fade enabled (all slots)
DEF SNDFB1_6 EQU 6
DEF SNDFB1_7 EQU 7
DEF SNDF1_EXEC EQU 1 << SNDFB1_EXEC
DEF SNDF1_PAUSE EQU 1 << SNDFB1_PAUSE
DEF SNDF1_PCMON EQU 1 << SNDFB1_PCMON
DEF SNDF1_3 EQU 1 << SNDFB1_3
DEF SNDF1_FADEOUT EQU 1 << SNDFB1_FADEOUT
DEF SNDF1_FADE EQU 1 << SNDFB1_FADE
DEF SNDF1_6 EQU 1 << SNDFB1_6
DEF SNDF1_7 EQU 1 << SNDFB1_7

; iSndChInfo_Status flags
DEF SNDXB_CH123 EQU 0 ; Slot contains channels 1-3 data
DEF SNDXB_CH4 EQU 1 ; Slot contains channel 4 data 
DEF SNDXB_2 EQU 2 ; ???
DEF SNDXB_3 EQU 3
DEF SNDXB_KEYHOLD EQU 4 ; Forces the key to be held (never unset SNDBB_KEYON)
DEF SNDXB_5 EQU 5 ; If set, the lower priority slots above should be paused.
DEF SNDXB_6 EQU 6
DEF SNDXB_7 EQU 7 ; ???
DEF SNDX_CH123 EQU 1 << SNDXB_CH123
DEF SNDX_CH4 EQU 1 << SNDXB_CH4
DEF SNDX_2 EQU 1 << SNDXB_2
DEF SNDX_3 EQU 1 << SNDXB_3
DEF SNDX_KEYHOLD EQU 1 << SNDXB_KEYHOLD
DEF SNDX_5 EQU 1 << SNDXB_5
DEF SNDX_6 EQU 1 << SNDXB_6
DEF SNDX_7 EQU 1 << SNDXB_7

; iSndChInfo_0B flags
DEF SNDBB_FADEDONE   EQU 1 ; Marks if the slot fade is finished
DEF SNDBB_KEYON      EQU 2 ; If set, the key is being pressed. Instrument data can loop until the key is released.
DEF SNDBB_USEFADEVOL EQU 3 ; Use the faded volume. Must be set to actually hear the fade.
DEF SNDBB_FADEOUT    EQU 4 ; Fade in or out
DEF SNDBB_FADE       EQU 5 ; Fade enabled (current slot)
DEF SNDBB_NSUP       EQU 6 ; Portamento direction (if set, slide notes up)
DEF SNDBB_NS         EQU 7 ; Portamento enabled

DEF SNDB_FADEDONE    EQU 1 << SNDBB_FADEDONE
DEF SNDB_KEYON       EQU 1 << SNDBB_KEYON
DEF SNDB_USEFADEVOL  EQU 1 << SNDBB_USEFADEVOL
DEF SNDB_FADEOUT     EQU 1 << SNDBB_FADEOUT
DEF SNDB_FADE        EQU 1 << SNDBB_FADE
DEF SNDB_NSUP        EQU 1 << SNDBB_NSUP
DEF SNDB_NS          EQU 1 << SNDBB_NS
DEF SNDB_NSDOWN      EQU 0

; iSndChInfo_0C flags
DEF SNDCB_PITCHBEND EQU 0 ; Enable pitch bend
DEF SNDCB_PCM EQU 5 ; PCM played in slot
DEF SNDCB_MUTED EQU 6 ; Slot is processed but won't play audio

; iSndChInfo_14
DEF SND14B_END EQU 7 ; If set, the key release timing is relative to the end of the note. Otherwise, it's to the start.
DEF SND14_END  EQU 1 << SND14B_END


; SOUND VIBRATO/INSTRUMENT DATA COMMANDS
DEF SECB_SPEC_START       EQU 7
DEF SNDENVCMD_LOOP        EQU $80
DEF SNDENVCMD_LOOPFAR     EQU $81
DEF SNDENVCMD_RESET       EQU $82
DEF SNDENVCMD_LOOPCOND    EQU $83
DEF SNDENVCMD_LOOPFARCOND EQU $84

; SOUND ID COMMANDS
DEF SNDCMD_START           EQU $F0
DEF SNDCMD_RESET           EQU $F1
DEF SNDCMD_STOP            EQU $F2
DEF SNDCMD_FADEOUT         EQU $F3
DEF SNDCMD_FADEIN_STARTNEW EQU $F4
DEF SNDCMD_FADEIN          EQU $F5
DEF SNDCMD_PAUSE           EQU $F6
DEF SNDCMD_UNPAUSE         EQU $F7

; SOUND DATA COMMANDS


; =============== snd_jp ===============
; Command: SoundDataCmd_Jp
;
; Loops the song to the specified location.
;
; IN
; - 1: Target location
MACRO snd_jp
	db SNDDATACMD_JP
	dw \1
ENDM

; =============== snd_djnz ===============
; Command: SoundDataCmd_JpByTimer
;
; Decrements the specified counter on the slot struct.
; It will loop the song akin to snd_jp until the counter becomes 0.
;
; IN
; - 1: Slot struct offset
;      This contains the timer, should use iSndChInfo_Work*
; - 2: Target location if the jump is taken
MACRO snd_djnz
	db SNDDATACMD_DJNZ, \1
	dw \2
ENDM

; =============== snd_end ===============
; Command: SoundDataCmd_End
;
; Ends the sound channel data without looping.
MACRO snd_end
	db SNDDATACMD_END
ENDM

; =============== snd_vibrato ===============
; Command: SoundDataCmd_SetVibrato
;
; Sets a new vibrato.
; IN
; - 1: Vibrato ID (VIBRATO_*)
MACRO snd_vibrato
	db SNDDATACMD_VIBRATO, \1
ENDM

; =============== snd_pulse1_sweep ===============
; Command: SoundDataCmd_SetVibrato
;
; Sets a Pulse 1 sweep value.
; IN
; - 1: NR10 sweep data
MACRO snd_pulse1_sweep
	db SNDDATACMD_VIBRATO, SNDSW_SET|\1
ENDM

; =============== snd_pitchbend ===============
; Command: SoundDataCmd_PitchBend
;
; Enables/disables pitch bends.
;
; When this command is used to enable them, two more notes need to be played to start the first one.
; First note for the source frequency, the second for the destination.
;
; From the second note onwards, the current note counts as the source frequency.
;
; IN
; - 1: Pitch bend speed.
;      If 0, pitch bends are disabled.
MACRO snd_pitchbend
	db SNDDATACMD_PITCH_BEND, \1
ENDM

; =============== snd_playsndarg ===============
; Command: SoundDataCmd_PlaySndArg
;
; Plays a new sound with the specified arguments.
; This internally uses Sound_ReqPlayIdWithArg, which adds to the queue without checking for bounds.
;
; IN
; - 1: Sound ID
; - 2: Argument
MACRO snd_playsndarg
	db SNDDATACMD_PLAYSNDARG, \1, \2
ENDM

; =============== snd_end_saveid ===============
; Command: SoundDataCmd_EndSaveID
;
; Like snd_end, except it also saves the song's Sound ID to wSndSavedSoundID.
MACRO snd_end_saveid
	db SNDDATACMD_END_SAVEID
ENDM

; =============== snd_vol ===============
; Command: SoundDataCmd_SetVol
;
; Sets a new base volume.
; IN
; - 1: Volume ($0-$F)
MACRO snd_vol
	db SNDDATACMD_VOL, \1
ENDM

; =============== snd_instrument ===============
; Command: SoundDataCmd_SetInstrument
;
; Sets a new instrument.
; IN
; - 1: Instrument ID (INSTR_*)
MACRO snd_instrument
	db SNDDATACMD_INSTRUMENT, \1
ENDM

; =============== snd_nrx2 ===============
; Command: SoundDataCmd_SetInstrument
;
; Sets new envelope data.
; IN
; - 1+: <nrx2 arguments>
MACRO snd_nrx2
	db SNDDATACMD_INSTRUMENT
	nrx2 \#
ENDM


; =============== snd_inc_base_note ===============
; Command: SoundDataCmd_IncBaseFreq
;
; Alters the base note ID by the specified value.
;
; IN
; - 1: Value (signed)
;      If $80, it will zero out the note ID.
MACRO snd_inc_base_note
	db SNDDATACMD_INC_BASE_NOTE, \1
ENDM

; =============== snd_inc_vol ===============
; Command: SoundDataCmd_IncVol
;
; Increments the slot volume by the specified amount.
;
; IN
; - 1: Volume offset (signed)
MACRO snd_inc_vol
	db SNDDATACMD_INC_VOL, \1
ENDM

; =============== snd_playsnd ===============
; Command: SoundDataCmd_PlaySnd
;
; Plays a new sound.
; This internally uses Sound_ReqPlayId, which doesn't set any arguments but performs bound checks on the queue.
;
; IN
; - 1: Sound ID
; - 2: Argument
MACRO snd_playsnd
	db SNDDATACMD_PLAYSND, \1
ENDM

; =============== snd_nop ===============
; Command: SoundDataCmd_Nop
MACRO snd_nop
	db SNDDATACMD_NOP
ENDM

; =============== snd_var ===============
; Command: SoundDataCmd_SetVar
;
; Writes an arbitrary value to the specified slot struct.
; This is also used to write loop timers, for use with snd_djnz
;
; IN
; - 1: Struct offset (iSndChInfo_*)
; - 2: Value to write
MACRO snd_var
	db SNDDATACMD_VAR, \1, \2
ENDM

; =============== snd_noise_sweep ===============
; Command: SoundDataCmd_SetNoiseSweep
;
; Sets a new noise sweep value.
;
; IN
; - 1: Clock shift increment (0-2 or 8)
; - 2: Clock divider increment (0 or 1)
; - 3: LFSR toggle (SBDCH4_LFSR7)
;      If set, toggles between 15-bit and 7-bit modes.
MACRO snd_noise_sweep
	db SNDDATACMD_NOISE_SWEEP, (\1 << 4)|\2|\3
ENDM

; =============== snd_noise_sweep_single ===============
; Command: SoundDataCmd_NoiseSweepSingle
;
; Performs a single noise sweep with the specified value.
; This does not alter the sweep value currently saved to the slot through snd_noise_sweep.
;
; IN
; - 1: Clock shift increment (0-2 or 8)
; - 2: Clock divider increment (0 or 1)
; - 3: LFSR toggle (SBDCH4_LFSR7)
;      If set, toggles between 15-bit and 7-bit modes.
MACRO snd_noise_sweep_single
	db SNDDATACMD_NOISE_SWEEP_SINGLE, (\1 << 4)|\2|\3
ENDM

; =============== snd_status ===============
; Command: SoundDataCmd_SetStatus
;
; Sets a new slot status bitmask.
;
; IN
; - 1: Status flags	
MACRO snd_status
	db SNDDATACMD_STATUS, \1
ENDM

; =============== snd_orsaveid ===============
; Command: SoundDataCmd_OrSnd
;
; Merges the specified value into wSndSavedSoundID.
;
; IN
; - 1: Status flags	
MACRO snd_orsaveid
	db SNDDATACMD_ORSAVEID, \1
ENDM

; =============== snd_noise_freq ===============
; Command: SoundDataCmd_SetNoiseSweep
;
; Sets a new noise frequency value.
;
; IN
; - 1: Clock shift
; - 2: Clock divider
; - 3: LFSR mode (SBDCH4_LFSR7)
MACRO snd_noise
	db SNDDATACMD_NOISE_FREQ, (\1 << 4)|\2|\3
ENDM

; =============== snd_fade ===============
; Command: SoundDataCmd_SlotFade
;
; Starts or stops a fade for the current slot.
;
; IN
; - 1: Fade type (SSF_FADEOUT/SSF_FADEIN)
; - 2: Target volume
; - 3: Fade speed. 
;      If 0, the fade is stopped.
MACRO snd_fade
	db SNDDATACMD_FADE, \1|\2, \3
ENDM


; =============== snd_note_slide ===============
; Command: SoundDataCmd_NoteSlide
;
; Enables/disables portamento.
;
; IN
; - 1: Direction (SNDB_NSUP/SNDB_NSDOWN)
;      This is shifted up by 1 compared to the internal status bit.
; - 2: Speed ($00-$7F)
;      If $00, portamento is disabled.
MACRO snd_note_slide
	db SNDDATACMD_NOTE_SLIDE, (\1 << 1)|\2
ENDM

; =============== snd_jpfade ===============
; Command: SoundDataCmd_JpIfFade
;
; Conditional jump, performed until the slot fade in/out has finished.
;
; IN
; - 1: Target location
MACRO snd_jpfade
	db SNDDATACMD_JP_FADE
	dw \1
ENDM

; =============== snd_toggle_keyhold ===============
; Command: SoundDataCmd_ToggleKeyHold
;
; Toggles the "key held" status.
; When toggled on, it causes instruments to stay in the sustain phase
; (conditional loops enabled) until this gets toggled back off again.
MACRO snd_toggle_keyhold
	db SNDDATACMD_TOGGLE_KEYHOLD
ENDM

; =============== snd_call ===============
; Command: SoundDataCmd_Call
;
; Calls the data subroutine. Cannot be nested.
;
; IN
; - 1: Target location
MACRO snd_call
	db SNDDATACMD_CALL
	dw \1
ENDM

; =============== snd_ret ===============
; Command: SoundDataCmd_Ret
;
; Returns from the called data subroutine.
MACRO snd_ret
	db SNDDATACMD_RET
ENDM

; =============== snd_speed ===============
; Command: SoundDataCmd_SetSpeed
;
; Sets a new playback speed.
;
; IN
; - 1: Playback speed
MACRO snd_speed
	db SNDDATACMD_SPEED, \1
ENDM

; =============== snd_inc_freq_offset ===============
; Command: SoundDataCmd_IncFreqOff
;
; Increments the frequency value offset by the specified amount.
; The higher this is, the lower the final frequency will be.
;
; IN
; - 1: Value (signed)
MACRO snd_inc_freq_offset
	db SNDDATACMD_INC_FREQ_OFFSET, \1
ENDM


; =============== snd_ch ===============
; Command: SoundDataCmd_SetCh
;
; Sets a new channel ID.
;
; IN
; - 1: Channel ID (SNDCH_*)
MACRO snd_ch
	db SNDDATACMD_CH, \1
ENDM

; =============== snd_inc_base_note_by_loop ===============
; Command: SoundDataCmd_IncBaseNoteByLoop
;
; Alters the base note ID by the specified *values*.
; The one picked depends on the primary loop counter:
; \2[\1 - iSndChInfo_24]
;
; IN
; - 1: Last Index, will be picked when the counter reaches 0.
; - 2: Ptr to table of note offsets
MACRO snd_inc_base_note_by_loop
	db SNDDATACMD_INC_BASE_NOTE_BY_LOOP, \1
	dw \2
ENDM

; =============== snd_keyon ===============
; Command: SoundDataCmd_SetKeyOn
;
; Sets how long the key should be held, will be \1 ticks after the note starts or before the note ends.
; This splits the note between sustain and release.
;
; IN
; - 1: Value
MACRO snd_keyon
	db SNDDATACMD_KEYON, \1
ENDM

; =============== snd_ifch ===============
; Command: SoundDataCmd_IfCh
;
; Handles the next command only if the sound channel matches the specified one.
; If it isn't, it gets skipped over.
; To work properly, the next command must be a 2-byte one.
;
; IN
; - 1: Channel ID (SNDCH_*)
MACRO snd_ifch
	db SNDDATACMD_IFCH, \1
ENDM

; =============== snd_jpch ===============
; Command: SoundDataCmd_JpCh
;
; Loops the song to the specified location if the sound channel matches the specified one.
;
; IN
; - 1: Channel ID (SNDCH_*)
; - 2: Target location
MACRO snd_jpch
	db SNDDATACMD_JPCH, \1
	dw \2
ENDM

; =============== snd_duty ===============
; Command: SoundDataCmd_SetDuty
;
; Sets a new length/duty sweep.
; Do not use for the wave channel.
;
; IN
; - 1: Duty (SNDDUTY_*)
; - 2: Initial length timer
MACRO snd_duty
	db SNDDATACMD_DUTY
	nrx1 \1,\2
ENDM

; =============== snd_wave ===============
; Command: SoundDataCmd_SetDuty
;
; Sets new wave data. For the wave channel-only.
;
; IN
; - 1: Wave ID
MACRO snd_wave
	db SNDDATACMD_DUTY, \1
ENDM

; =============== snd_pan ===============
; Command: SoundDataCmd_StereoPan
;
; Sets stereo panning.
;
; IN
; - 1: Stereo Panning flags, as NR51 bits.
MACRO snd_pan
	db SNDDATACMD_PAN, \1
ENDM

; =============== snd_sets3 ===============
; Command: SoundDataCmd_SetS3
;
; Sets the otherwise unused flag SNDX_3.
MACRO snd_sets3
	db SNDDATACMD_SETS3
ENDM

; =============== snd_clrs3 ===============
; Command: SoundDataCmd_ClrS3
;
; Clears the otherwise unused flag SNDX_3.
MACRO snd_clrs3
	db SNDDATACMD_CLRS3
ENDM

; =============== snd_playpcm ===============
; Command: SoundDataCmd_PlayPcm
;
; Plays a new PCM sample.
;
; IN
; - 1: PCM Sample ID
; - 2: Playback speed
; - 3+: <_snd_note parameters>
MACRO snd_playpcm
	db SNDDATACMD_PLAYPCM, \1, \2
	_snd_note \#
ENDM

; =============== snd_playslotpcm ===============
; Command: SoundDataCmd_PlayPcm
;
; Plays the PCM sample previously assigned to the slot.
;
; IN
; - 1: Playback speed
; - 2+: <_snd_note parameters>
MACRO snd_playslotpcm
	db SNDDATACMD_PLAYSLOTSND, \1
	_snd_note \#
ENDM

; =============== snd_note ===============
; Command: SoundDataCmd_Note
;
; Standard octave.
;
; IN
; - 1: Relative note ID ($00-$7F)
; - 2: Note length ID (NOTELEN_*) [Optional]
; - 3: Custom note length value [If NOTELEN_CUSTOM is set]
; - 4: Key release target [Optional]
MACRO snd_note
	db \1
	SHIFT
	_snd_note \#
ENDM

; =============== snd_noteex ===============
; Command: SoundDataCmd_NoteEx
;
; Standard octave with preset settings.
; Use when the preset includes a Note ID.
;
; IN
; - 1: Preset ID
; - 2: Note length ID (NOTELEN_*) [Optional]
; - 3: Custom note length value [If NOTELEN_CUSTOM is set]
; - 4: Key release target [Optional]
MACRO snd_noteex
	db \1
	SHIFT
	_snd_note \#
ENDM

; =============== snd_noteex2 ===============
; Command: SoundDataCmd_NoteEx
;
; Standard octave with preset settings.
; Use when the preset doesn't include a Note ID.
;
; IN
; - 1: Preset ID
; - 2: Relative note ID ($00-$7F)
;      If $00, it will mute the sound channel.
; - 3: Note length ID (NOTELEN_*) [Optional]
; - 4: Custom note length value [If NOTELEN_CUSTOM is set]
; - 5: Key release target [Optional]
MACRO snd_noteex2
	db \1
	SHIFT
	snd_note \#
ENDM

; =============== snd_samenote ===============
; Command: SoundDataCmd_NoteEx.noNote
;
; Changes the existing note settings.
;
; IN
; - 1+: <_snd_note parameters>
MACRO snd_samenote
	_snd_note \#
ENDM

; =============== _snd_note ===============
; Shared arguments for note commands, do not use directly.
; - 1: Note length ID (NOTELEN_*) [Optional]
; - 2: Custom note length value [If NOTELEN_CUSTOM is set]
; - 3: Key release target [Optional]
MACRO _snd_note
	; "is not constant at assembly time"
	IF _NARG > 0
		IF \1 == NOTELEN_CUSTOM
			IF _NARG > 2
				db SNDDATACMD_NOTELENARG_WITHMID + \1, \2, \3
			ELSE
				db SNDDATACMD_NOTELENARG_NOMID + \1, \2
			ENDC
		ELSE
			IF _NARG > 1
				db SNDDATACMD_NOTELENARG_WITHMID + \1, \2
			ELSE
				db SNDDATACMD_NOTELENARG_NOMID + \1
			ENDC
		ENDC
	ENDC
ENDM

DEF SNDDATACMD_NOTE_START          EQU $00
DEF SNDDATACMD_NOTE_END            EQU $7F

DEF SNDDATACMDB_SPEC_START         EQU 7
DEF SNDDATACMD_SPEC_START          EQU $80
DEF SNDDATACMD_JP                  EQU $80
DEF SNDDATACMD_DJNZ                EQU $81
DEF SNDDATACMD_END                 EQU $82
DEF SNDDATACMD_VIBRATO             EQU $83
DEF SNDDATACMD_PITCH_BEND          EQU $84
DEF SNDDATACMD_PLAYSNDARG          EQU $85
DEF SNDDATACMD_END_SAVEID          EQU $86
DEF SNDDATACMD_VOL                 EQU $87
DEF SNDDATACMD_INSTRUMENT          EQU $88
DEF SNDDATACMD_INC_BASE_NOTE       EQU $89
DEF SNDDATACMD_INC_VOL             EQU $8A
DEF SNDDATACMD_PLAYSND             EQU $8B
DEF SNDDATACMD_NOP                 EQU $8C
DEF SNDDATACMD_VAR                 EQU $8D
DEF SNDDATACMD_NOISE_SWEEP         EQU $8E
DEF SNDDATACMD_NOISE_SWEEP_SINGLE  EQU $8F
DEF SNDDATACMD_STATUS              EQU $90
DEF SNDDATACMD_ORSAVEID            EQU $91
DEF SNDDATACMD_NOISE_FREQ          EQU $92
DEF SNDDATACMD_FADE                EQU $93
DEF SNDDATACMD_NOTE_SLIDE          EQU $94
DEF SNDDATACMD_JP_FADE             EQU $95
DEF SNDDATACMD_SPEED               EQU $96
DEF SNDDATACMD_INC_FREQ_OFFSET     EQU $97
DEF SNDDATACMD_CH                  EQU $98
DEF SNDDATACMD_TOGGLE_KEYHOLD      EQU $99
DEF SNDDATACMD_CALL                EQU $9A
DEF SNDDATACMD_RET                 EQU $9B
DEF SNDDATACMD_INC_BASE_NOTE_BY_LOOP EQU $9C
DEF SNDDATACMD_KEYON               EQU $9D
DEF SNDDATACMD_IFCH                EQU $9E
DEF SNDDATACMD_JPCH                EQU $9F
DEF SNDDATACMD_DUTY                EQU $A0
DEF SNDDATACMD_PAN                 EQU $A1
DEF SNDDATACMD_SETS3               EQU $A2
DEF SNDDATACMD_CLRS3               EQU $A3
DEF SNDDATACMD_PLAYPCM             EQU $A4
DEF SNDDATACMD_PLAYSLOTPCM         EQU $A5
DEF SNDDATACMD_SPEC_END            EQU $A5

DEF SNDDATACMD_NOTEPRESET_START    EQU $C0
DEF SNDDATACMD_NOTEPRESET_END      EQU $C9

DEF SNDDATACMD_SAMENOTE_START      EQU $100-(NOTELENARG_LENGTH*2) ; $DE
DEF SNDDATACMD_SAMENOTE_END        EQU $100-1 ; $FF
DEF SNDDATACMD_NOTELENARG_NOMID    EQU $100-(NOTELENARG_LENGTH*2)
DEF SNDDATACMD_NOTELENARG_WITHMID  EQU $100-(NOTELENARG_LENGTH*1)

; SoundDataCmd_SlotFade
DEF SSFB_FADEOUT EQU 7 ; If set, it's a fade out
DEF SSF_FADEOUT EQU 1 << SSFB_FADEOUT
DEF SSF_FADEIN EQU 0

; SoundDataCmd_NoteSlide
DEF SNSB_UP EQU 7 ; Portamento direction (If set, up)
DEF SNS_UP EQU 1 << SNSB_UP







; Sound Preset Flags
DEF SNDNPRB_USECH4SWEEP EQU 7 ; Use byte3 as Noise sweep data, otherwisw it's used as Pulse 1 sweep
DEF SNDNPR_USECH4SWEEP EQU 1 << SNDNPRB_USECH4SWEEP

SECTION "Sound RAM", WRAM0[$D000]
wSndSetQueue              :ds 8   ; EQU $D000
wSndSetQueueSec           :ds 8   ; EQU $D008

wSndSavedSoundID          :db     ; EQU $D010 ; Last preserved Sound ID, when a sound slot ends with the SoundDataCmd_EndSaveID command.
wSnd_D011_Flags           :db     ; EQU $D011
wSndSetLength             :db     ; EQU $D012
wSndFadeIncSpeedSub       :db     ; EQU $D013 ; Global fade speed
wSndFadeTimerSub          :db     ; EQU $D014 ; Global fade timer (low byte)
wSndFadeVolumeTarget      :db     ; EQU $D015 ; Global fade target (high byte)
wSndFadeVolume            :db     ; EQU $D016 ; Global fade timer (high byte) 
ds 1
wSndChInfoVolume          :db     ; EQU $D018 ; Volume for the currently processed sound slot
wSndBankMain              :db     ; EQU $D019 ; Primary driver core bank
wSndBankPcmDef            :db     ; EQU $D01A ; Secondary driver core bank
wSndPcmPlaying            :db     ; EQU $D01B ; If set, a PCM sample is currently playing,
wSndPcmIDSet              :db     ; EQU $D01C ; PCM ID to be played, reset on every frame.
wSndPcmSpeedSet           :db     ; EQU $D01D ; Playback speed for the above, also reset on every frame.
                                              ; Doubles as flag that, if set, marks that PCM playback can continue.
ds 2

wNR51_ChMask1   :db     ; EQU $D020
wNR11           :db     ; EQU $D021
wNR12           :db     ; EQU $D022
wNR13           :db     ; EQU $D023
wNR14           :db     ; EQU $D024

wNR51_ChMask2   :db     ; EQU $D025
wNR21           :db     ; EQU $D026
wNR22           :db     ; EQU $D027
wNR23           :db     ; EQU $D028
wNR24           :db     ; EQU $D029

wNR51_ChMask3   :db     ; EQU $D02A
wNR30           :db     ; EQU $D02B
wNR32           :db     ; EQU $D02C
wNR33           :db     ; EQU $D02D
wNR34           :db     ; EQU $D02E

wNR51_ChMask4   :db     ; EQU $D02F
wNR41           :db     ; EQU $D030
wNR42           :db     ; EQU $D031
wNR43           :db     ; EQU $D032
wNR44           :db     ; EQU $D033

wNR51           :db     ; EQU $D034

wWaveSetId                :db     ; EQU $D035 ; Newly set waveform ID
wWaveCurId                :db     ; EQU $D036 ; Current waveform ID

wNR10           :db     ; EQU $D037

SECTION "Sound Slots", WRAM0[$D040]

; Normal sound slot, enough for a BGM and sound effects on each channel.
wSndChInfo0          :ds $30 ; EQU $D040
wSndChInfo1          :ds $30 ; EQU $D070
wSndChInfo2          :ds $30 ; EQU $D0A0
wSndChInfo3          :ds $30 ; EQU $D0D0
wSndChInfo4          :ds $30 ; EQU $D100
wSndChInfo5          :ds $30 ; EQU $D130
wSndChInfo6          :ds $30 ; EQU $D160
wSndChInfo7          :ds $30 ; EQU $D190
; Additional special sound slot. Named "Exclusive" as if used the ones above get paused.
wSndChInfoEx0        :ds $30 ; EQU $D1C0

DEF wSndChInfo_Size  EQU wSndChInfo1 - wSndChInfo0
DEF wSndChInfo_Count EQU 9
DEF iSndChInfo_Status EQU $00 ; SndInfo status bitmask
DEF iSndChInfo_01 EQU $01 ; Volume
DEF iSndChInfo_02 EQU $02 ; Instrument ID. If >= $80 it's treated as raw NRx2 data. [wNRx2]
DEF iSndChInfo_03 EQU $03 ; Vibrato ID or Pulse 1 sweep data [wNR10], depending on SNDSW_SET.
DEF iSndChInfo_04 EQU $04 ; Base note/frequency ID. Typically a negative number.
DEF iSndChInfo_05 EQU $05 ; Playback speed (low byte)
DEF iSndChInfo_06 EQU $06 ; Channel ID (SNDCH_*)
DEF iSndChInfo_07 EQU $07 ; Data Pointer, Low byte
DEF iSndChInfo_08 EQU $08 ; Data Pointer, High byte
DEF iSndChInfo_09 EQU $09 ; Length/duty [NRx1]. The wave channel lacks wNR31 so it's instead copied to wWaveSetId.
DEF iSndChInfo_0A EQU $0A ; Stereo Panning [NR51]
DEF iSndChInfo_0B EQU $0B ; Effect Flags #1
DEF iSndChInfo_0C EQU $0C ; Effect Flags #2
DEF iSndChInfo_0D EQU $0D ; Sound ID
DEF iSndChInfo_0E EQU $0E ; Vibrato data offset.
DEF iSndChInfo_0F EQU $0F ; Instrument data offset. [wNRx2]
DEF iSndChInfo_10 EQU $10 ; Instrument timer. When it elapses, new wNRx2 data is fetched. [wNRx2] 
DEF iSndChInfo_11 EQU $11 ; Instrument data. Raw NRx2 volume/envelope register data. [wNRx2]
DEF iSndChInfo_12 EQU $12 ; Note length (high byte)
DEF iSndChInfo_13 EQU $13 ; Slot timer (high byte)
DEF iSndChInfo_14 EQU $14 ; Key release target
DEF iSndChInfo_15 EQU $15 ; Slot timer (low byte)
DEF iSndChInfo_16 EQU $16 ; Current frequency value (low byte) [wNRx3].
DEF iSndChInfo_17 EQU $17 ; Current frequency value (high byte) [wNRx4].
DEF iSndChInfo_18 EQU $18 ; Target frequency value (low byte), when pitch bends are enabled [wNRx3].
DEF iSndChInfo_19 EQU $19 ; Target frequency value (high byte), when pitch bends are enabled [wNRx4].
DEF iSndChInfo_1A EQU $1A ; Pitch bend speed. Unsigned.
DEF iSndChInfo_1B EQU $1B ; Frequency value offset, subtracted to the value. Signed.
DEF iSndChInfo_1C EQU $1C ; Note/frequency ID offset.
DEF iSndChInfo_1D EQU $1D ; Portamento speed. Unsigned.
DEF iSndChInfo_1E EQU $1E ; Portamento - Current Note/frequency ID
DEF iSndChInfo_1F EQU $1F ; Noise sweep. 
DEF iSndChInfo_20 EQU $20 ; Noise channel frequency. [wNR43]
DEF iSndChInfo_21 EQU $21 ; Fade speed
DEF iSndChInfo_22 EQU $22 ; Fade timer
DEF iSndChInfo_23 EQU $23 ; Fade target volume
DEF iSndChInfo_24 EQU $24 ; Loop timer #0. Also used as negative offset in SoundDataCmd_9C, for loop-based frequency increases.
DEF iSndChInfo_25 EQU $25 ; Loop timer #1
DEF iSndChInfo_26 EQU $26 ; Data Pointer return address, low byte.
DEF iSndChInfo_27 EQU $27 ; Data Pointer return address, high byte.
DEF iSndChInfo_28 EQU $28 ; Data Pointer, Bank Number
DEF iSndChInfo_29 EQU $29 ; Slot-specific PCM sample ID. 
DEF iSndChInfo_2A EQU $2A ; iSndChInfo_Work2A ???
DEF iSndChInfo_2B EQU $2B ; iSndChInfo_Work2B ???
DEF iSndChInfo_2C EQU $2C ; iSndChInfo_Work2C ???
DEF iSndChInfo_2D EQU $2D ; iSndChInfo_Work2D ???
DEF iSndChInfo_2E EQU $2E ; iSndChInfo_Work2E ???
DEF iSndChInfo_2F EQU $2F ; iSndChInfo_Work2F ???

SECTION "Hardware", HRAM[$FF90]
hROMBank                  :db     ; EQU $FF90

SECTION "Sound HRAM", HRAM[$FFE0]
wNRx3Data                 :db     ; EQU $FFE0 ; Value to write to rNR*3 during sound slot processing.
wNRx4Data                 :db     ; EQU $FFE1 ; Value to write to rNR*4 during sound slot processing.

hSndChInfoStatus          :db     ; EQU $FFE2 ; Flags copied from the current SndChInfo
h_Unk_SndChInfo_B         :db     ; EQU $FFE3 ; Low byte of pointer at SndChInfo[B]
h_Unk_SndChInfo_C         :db     ; EQU $FFE4 ; High byte of pointer at SndChInfo[B] (C actually)
h_Unk_FFE5_Flags          :db     ; EQU $FFE5
hSndChInfoPtrBakLow       :db     ; EQU $FFE6 ; Backup of the base pointer for the current sound slot.
hNRx2Data                 :db     ; EQU $FFE7 ; Value to write to rNR*2 during sound slot processing.
DEF hSndTmpSongPcm EQU hNRx2Data              ; Temporary location for the argument when starting a new song
hPCMVolData               :db     ; EQU $FFE8 ; Current set of PCM data, as 4 pairs of 2 bits each [NR32]
hPCMVolPairsLeft          :db     ; EQU $FFE9 ; Number of pairs left before fetching the next byte
hPCMDataBank              :db     ; EQU $FFEA ; PCM Data pointer, Bank Number
hPCMDataPtrHigh           :db     ; EQU $FFEB ; PCM Data pointer, High byte
hPCMDataPtrLow            :db     ; EQU $FFEC ; PCM Data pointer, Low byte
hPCMDataLeft              :db     ; EQU $FFED ; Remaining bytes of PCM data to fetch before the sample ends.