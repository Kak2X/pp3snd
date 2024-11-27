; =============== dp ===============
; Shorthand for far pointers in standard order.
MACRO dp
	db BANK(\1)
	dw \1
ENDM

; h_Unk_FFE5_Flags bits (data command- related? frame specific slot flags?)
DEF SNDDFB_3 EQU 3 ; SNDDFB_CLRINST Reset instrument data on NoteEx
DEF SNDDFB_TRIG EQU 5 ; Sound channel should be retriggered.
DEF SNDDFB_NEWNOTE EQU 7 ; New note set on this frame. Used in practice to execute the Portamento setup code.
DEF SNDDF_3 EQU 1 << SNDDFB_3
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

; iSndChInfo_01
DEF SNDCH_NONE   EQU $00
DEF SNDCH_PULSE1 EQU $01
DEF SNDCH_PULSE2 EQU $02
DEF SNDCH_WAVE   EQU $03
DEF SNDCH_NOISE  EQU $04

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
DEF SNDFB1_CLRTAC EQU 2
DEF SNDFB1_3 EQU 3
DEF SNDFB1_FADEOUT EQU 4 ; Fade in or out?
DEF SNDFB1_FADE EQU 5 ; Fade enabled (all slots)
DEF SNDFB1_6 EQU 6
DEF SNDFB1_7 EQU 7
DEF SNDF1_EXEC EQU 1 << SNDFB1_EXEC
DEF SNDF1_PAUSE EQU 1 << SNDFB1_PAUSE
DEF SNDF1_CLRTAC EQU 1 << SNDFB1_CLRTAC
DEF SNDF1_3 EQU 1 << SNDFB1_3
DEF SNDF1_FADEOUT EQU 1 << SNDFB1_FADEOUT
DEF SNDF1_FADE EQU 1 << SNDFB1_FADE
DEF SNDF1_6 EQU 1 << SNDFB1_6
DEF SNDF1_7 EQU 1 << SNDFB1_7

; iSndChInfo_Status flags
DEF SNDXB_CH123 EQU 0 ; Slot contains channels 1-3 data
DEF SNDXB_CH4 EQU 1 ; Slot contains channel 4 data 
DEF SNDXB_3 EQU 3
DEF SNDXB_4 EQU 4 ; SNDXB_SHORTINST Forces the initial note instrument data to be used. (Forces the conditional loops enabled)
DEF SNDXB_5 EQU 5 
DEF SNDXB_6 EQU 6
DEF SNDX_CH123 EQU 1 << SNDXB_CH123
DEF SNDX_CH4 EQU 1 << SNDXB_CH4
DEF SNDX_3 EQU 1 << SNDXB_3
DEF SNDX_4 EQU 1 << SNDXB_4
DEF SNDX_5 EQU 1 << SNDXB_5
DEF SNDX_6 EQU 1 << SNDXB_6

; iSndChInfo_0B flags
DEF SNDBB_1 EQU 1 ; If set, disables sound data loops
DEF SNDBB_2 EQU 2 ; If set, alters instruments by enabling their conditional loops.
DEF SNDBB_USEFADEVOL EQU 3 ; 
DEF SNDBB_FADEOUT EQU 4 ; Fade in or out?
DEF SNDBB_FADE EQU 5 ; Fade enabled (current slot)
DEF SNDBB_NSUP EQU 6 ; Portamento direction (if set, slide notes up)
DEF SNDBB_NS EQU 7 ; Portamento enabled

DEF SNDB_1 EQU 1 << SNDBB_1
DEF SNDB_2 EQU 1 << SNDBB_2
DEF SNDB_USEFADEVOL EQU 1 << SNDBB_USEFADEVOL
DEF SNDB_FADEOUT EQU 1 << SNDBB_FADEOUT
DEF SNDB_FADE EQU 1 << SNDBB_FADE
DEF SNDB_NSUP EQU 1 << SNDBB_NSUP
DEF SNDB_NS EQU 1 << SNDBB_NS

; iSndChInfo_0C flags
DEF SNDCB_PITCHBEND EQU 0 ; Enable pitch bend
DEF SNDCB_5 EQU 5
DEF SNDCB_PAUSE EQU 6 ; Better to say SNDCB_MUTED? doublecheck ???

; iSndChInfo_14
DEF SND14B_END EQU 7 ; If set, the target is relative to the end of the note
DEF SND14_END  EQU 1 << SND14B_END


; SOUND VIBRATO/INSTRUMENT DATA COMMANDS

DEF SECB_SPEC_START       EQU 7
DEF SNDENVCMD_LOOP        EQU $80
DEF SNDENVCMD_LOOPFAR     EQU $81
DEF SNDENVCMD_RESET       EQU $82
DEF SNDENVCMD_LOOPCOND    EQU $83
DEF SNDENVCMD_LOOPFARCOND EQU $84

; SOUND ID COMMANDS
DEF SNDCMD_ID_BASE EQU $F0

; SOUND DATA COMMANDS

; SoundDataCmd_SlotFade
DEF SSFB_FADEOUT EQU 7 ; If set, it's a fade out
DEF SSF_FADEOUT EQU 1 << SSFB_FADEOUT

; SoundDataCmd_NoteSlide
DEF SNSB_UP EQU 7 ; Portamento direction (If set, up)
DEF SNS_UP EQU 1 << SNSB_UP


DEF NOTELENARG_LENGTH EQU $11 ; Range of valid values for the note length parameter (SNDDATACMD_NOTE & supersets)




DEF SNDDATACMD_NOTE_START     EQU $00
DEF SNDDATACMD_NOTE_END       EQU $7F
DEF SNDDATACMDB_SPEC_START    EQU 7
DEF SNDDATACMD_SPEC_START     EQU $80
DEF SNDDATACMD_SPEC_END       EQU $A5
DEF SNDDATACMD_NOTEPRESET_START   EQU $C0
DEF SNDDATACMD_NOTEPRESET_END     EQU $C9
DEF SNDDATACMD_SAMENOTE_START EQU $100-(NOTELENARG_LENGTH*2) ; $DE
DEF SNDDATACMD_SAMENOTE_END   EQU $100-1 ; $FF

; Sound Preset Flags
DEF SNDNPRB_USECH4SWEEP EQU 7 ; Use byte3 as Noise sweep data, otherwisw it's used as Pulse 1 sweep
DEF SNDNPR_USECH4SWEEP EQU 1 << SNDNPRB_USECH4SWEEP

SECTION "Sound RAM", WRAM0[$D000]
wSndSetQueue              :ds 8   ; EQU $D000
wSndSetQueueSec           :ds 8   ; EQU $D008

wSndSavedSoundID          :db     ; EQU $D010 ; Last preserved Sound ID, when a sound slot ends with the SoundDataCmd_EndSaveID command.
wSnd_D011_Flags                :db     ; EQU $D011
wSndSetLength             :db     ; EQU $D012
wSndFadeIncSpeedSub       :db     ; EQU $D013 ; Global fade speed
wSndFadeTimerSub          :db     ; EQU $D014 ; Global fade timer (low byte)
wSndFadeVolumeTarget      :db     ; EQU $D015 ; Global fade target (high byte)
wSndFadeVolume            :db     ; EQU $D016 ; Global fade timer (high byte) 
ds 1
wSndChInfoVolume        :db     ; EQU $D018 ; Volume for the currently processed sound slot
wSndBankMain            :db     ; EQU $D019 ; Primary driver core bank
wSndBankSec             :db     ; EQU $D01A ; Secondary driver core bank
wTAC                      :db     ; EQU $D01B
w_Unk_TimerRelated_D01C                     :db     ; EQU $D01C
wTIMAOverride             :db     ; EQU $D01D
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
DEF iSndChInfo_14 EQU $14 ; Mid-note instrument extension target (high byte). Determines when to disable conditional loops in the instrument data. 
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
DEF iSndChInfo_24 EQU $24 ; 
DEF iSndChInfo_25 EQU $25 ; 
DEF iSndChInfo_26 EQU $26 ; Data Pointer return address, low byte.
DEF iSndChInfo_27 EQU $27 ; Data Pointer return address, high byte.
DEF iSndChInfo_28 EQU $28 ; Data Pointer, Bank Number
DEF iSndChInfo_29 EQU $29 ; ??? Initial envelope [wNRx2]
DEF iSndChInfo_2A EQU $2A ; 
DEF iSndChInfo_2B EQU $2B ; 
DEF iSndChInfo_2C EQU $2C ; 
DEF iSndChInfo_2D EQU $2D ; 
DEF iSndChInfo_2E EQU $2E ; 
DEF iSndChInfo_2F EQU $2F ; 

SECTION "Hardware", HRAM[$FF90]
hROMBank                  :db     ; EQU $FF90

SECTION "Sound HRAM", HRAM[$FFE0]
wNRx3Data         :db     ; EQU $FFE0 ; Value to write to rNR*3 during sound slot processing.
wNRx4Data         :db     ; EQU $FFE1 ; Value to write to rNR*4 during sound slot processing.

hSndChInfoStatus      :db     ; EQU $FFE2 ; Flags copied from the current SndChInfo
h_Unk_SndChInfo_B  :db     ; EQU $FFE3 ; Low byte of pointer at SndChInfo[B]
h_Unk_SndChInfo_C :db     ; EQU $FFE4 ; High byte of pointer at SndChInfo[B] (C actually)
h_Unk_FFE5_Flags           :db     ; EQU $FFE5
hSndChInfoPtrBakLow :db     ; EQU $FFE6 ; Backup of the base pointer for the current sound slot.
wNRx2Data           :db     ; EQU $FFE7 ; Value to write to rNR*2 during sound slot processing.