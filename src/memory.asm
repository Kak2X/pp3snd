SECTION "Sound RAM", WRAM0[$D000]
wSndQueueId               :ds 8   ; EQU $D000 ; Sound queue - ID
wSndQueueArg              :ds 8   ; EQU $D008 ; Sound queue - Argument

wSndSavedSoundID          :db     ; EQU $D010 ; Last preserved Sound ID, when a sound slot ends with the SoundDataCmd_EndSaveID command.
wSndFlags                 :db     ; EQU $D011 ; Sound driver flags
wSndQueueLen              :db     ; EQU $D012 ; Sound queue - length
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
											  
SECTION "Sound Register Mirror", WRAM0[$D020]

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
wWaveSetId      :db     ; EQU $D035 ; Newly set waveform ID
wWaveCurId      :db     ; EQU $D036 ; Current waveform ID
wNR10           :db     ; EQU $D037

SECTION "Sound Slots", WRAM0[$D040]

wSndChInfo0     :ds $30 ; EQU $D040 ; BGM 0
wSndChInfo1     :ds $30 ; EQU $D070 ; BGM 1
wSndChInfo2     :ds $30 ; EQU $D0A0 ; BGM 2
wSndChInfo3     :ds $30 ; EQU $D0D0 ; BGM 3
wSndChInfo4     :ds $30 ; EQU $D100 ; SFX 0
wSndChInfo5     :ds $30 ; EQU $D130 ; SFX 1
wSndChInfo6     :ds $30 ; EQU $D160 ; SFX 2
wSndChInfo7     :ds $30 ; EQU $D190 ; SFX 3
wSndChInfoEx0   :ds $30 ; EQU $D1C0 ; SFX w/ Pause. Can play when the driver is paused and pauses all other slots when played.

DEF wSndChInfo_Size             EQU wSndChInfo1 - wSndChInfo0
DEF wSndChInfo_Count            EQU 9
DEF iSndChInfo_Status           EQU $00 ; Slot status flags
DEF iSndChInfo_Vol              EQU $01 ; Volume
DEF iSndChInfo_Instrument       EQU $02 ; Instrument ID. If >= $80 it's treated as raw NRx2 data. [wNRx2]
DEF iSndChInfo_Vibrato          EQU $03 ; Vibrato ID or Pulse 1 sweep data [wNR10], depending on SVB_SET.
DEF iSndChInfo_NoteIdBase       EQU $04 ; Base note/frequency ID. Typically a negative number.
DEF iSndChInfo_Speed            EQU $05 ; Playback speed (low byte)
DEF iSndChInfo_ChId             EQU $06 ; Channel ID (SNDCH_*)
DEF iSndChInfo_DataPtr_Low      EQU $07 ; Data Pointer, Low byte
DEF iSndChInfo_DataPtr_High     EQU $08 ; Data Pointer, High byte
DEF iSndChInfo_DutyOrWave       EQU $09 ; Length/duty [NRx1]. The wave channel lacks wNR31 so it's instead copied to wWaveSetId.
DEF iSndChInfo_Pan              EQU $0A ; Stereo Panning [NR51]
DEF iSndChInfo_FxFlags0         EQU $0B ; Effect flags #1
DEF iSndChInfo_FxFlags1         EQU $0C ; Effect Flags #2
DEF iSndChInfo_SoundId          EQU $0D ; Sound ID
DEF iSndChInfo_VibratoOffset    EQU $0E ; Vibrato data offset.
DEF iSndChInfo_InstrumentOffset EQU $0F ; Instrument data offset. [wNRx2]
DEF iSndChInfo_InstrumentTimer  EQU $10 ; Instrument timer. When it elapses, new wNRx2 data is fetched. [wNRx2] 
DEF iSndChInfo_InstrumentData   EQU $11 ; Instrument data. Raw NRx2 volume/envelope register data. [wNRx2]
DEF iSndChInfo_NoteLen          EQU $12 ; Note length (high byte)
DEF iSndChInfo_Timer_High       EQU $13 ; Slot timer (high byte)
DEF iSndChInfo_KeyRelTarget     EQU $14 ; Key release target
DEF iSndChInfo_Timer_Low        EQU $15 ; Slot timer (low byte)
DEF iSndChInfo_Freq_Low         EQU $16 ; Current frequency value (low byte) [wNRx3].
DEF iSndChInfo_Freq_High        EQU $17 ; Current frequency value (high byte) [wNRx4].
DEF iSndChInfo_FreqTarget_Low   EQU $18 ; Target frequency value (low byte), when pitch bends are enabled [wNRx3].
DEF iSndChInfo_FreqTarget_High  EQU $19 ; Target frequency value (high byte), when pitch bends are enabled [wNRx4].
DEF iSndChInfo_PitchBendSpeed   EQU $1A ; Pitch bend speed. Unsigned.
DEF iSndChInfo_FreqMod          EQU $1B ; Frequency value offset, subtracted to the value. Signed.
DEF iSndChInfo_NoteId           EQU $1C ; Relative note/frequency ID
DEF iSndChInfo_NSSpeed          EQU $1D ; Portamento speed. Unsigned.
DEF iSndChInfo_NSNoteId         EQU $1E ; Portamento - Current Note/frequency ID
DEF iSndChInfo_NoiseSweep       EQU $1F ; Noise sweep. 
DEF iSndChInfo_NoiseFreq        EQU $20 ; Noise channel frequency. [wNR43]
DEF iSndChInfo_FadeSpeed        EQU $21 ; Fade speed
DEF iSndChInfo_FadeTimer        EQU $22 ; Fade timer
DEF iSndChInfo_FadeTarget       EQU $23 ; Fade target volume
DEF iSndChInfo_LoopTimer0       EQU $24 ; Loop timer #0. Loop-based frequency increases go off this.
DEF iSndChInfo_LoopTimer1       EQU $25 ; Loop timer #1
DEF iSndChInfo_RetDataPtr_Low   EQU $26 ; Data Pointer return address, low byte.
DEF iSndChInfo_RetDataPtr_High  EQU $27 ; Data Pointer return address, high byte.
DEF iSndChInfo_Bank             EQU $28 ; Data Pointer, Bank Number
DEF iSndChInfo_PCMId            EQU $29 ; Slot-specific PCM sample ID. 

SECTION "Hardware", HRAM[$FF90]
hROMBank                  :db     ; EQU $FF90 ; Current ROM bank

SECTION "Sound HRAM", HRAM[$FFE0]
hNRx3Data                 :db     ; EQU $FFE0 ; Value to write to rNR*3 during sound slot processing.
hNRx4Data                 :db     ; EQU $FFE1 ; Value to write to rNR*4 during sound slot processing.

hSndChInfoStatus          :db     ; EQU $FFE2 ; Status flags copied from the current slot
hSndChInfoFxFlags0        :db     ; EQU $FFE3 ; Effect flags #0 ""
hSndChInfoFxFlags1        :db     ; EQU $FFE4 ; Effect flags #1 ""
hSndChInfoNewFlags        :db     ; EQU $FFE5 ; Events that happened to the currently processed slot on the current frame
hSndChInfoPtrBakLow       :db     ; EQU $FFE6 ; Backup of the base pointer for the current sound slot.
hNRx2Data                 :db     ; EQU $FFE7 ; Value to write to rNR*2 during sound slot processing.
DEF hSndTmpSongPcm EQU hNRx2Data              ; Temporary location for the argument when starting a new song
hPCMVolData               :db     ; EQU $FFE8 ; Current set of PCM data, as 4 pairs of 2 bits each [NR32]
hPCMVolPairsLeft          :db     ; EQU $FFE9 ; Number of pairs left before fetching the next byte
hPCMDataBank              :db     ; EQU $FFEA ; PCM Data pointer, Bank Number
hPCMDataPtrHigh           :db     ; EQU $FFEB ; PCM Data pointer, High byte
hPCMDataPtrLow            :db     ; EQU $FFEC ; PCM Data pointer, Low byte
hPCMDataLeft              :db     ; EQU $FFED ; Remaining bytes of PCM data to fetch before the sample ends.