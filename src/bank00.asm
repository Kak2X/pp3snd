L000000:;C
	ldh  [$FFF0], a
	ldh  a, [hROMBank]
	push af
	ldh  a, [$FFF0]
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	rst  $18
	pop  af
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	ret
L000014: db $00;X
L000015: db $00;X
L000016: db $00;X
L000017: db $00;X
L000018:;C
	jp   hl
L000019: db $00;X
L00001A: db $00;X
L00001B: db $00;X
L00001C: db $00;X
L00001D: db $00;X
L00001E: db $00;X
L00001F: db $00;X
L000020: db $00;X
L000021: db $00;X
L000022: db $00;X
L000023: db $00;X
L000024: db $00;X
L000025: db $00;X
L000026: db $00;X
L000027: db $00;X
L000028: db $00;X
L000029: db $00;X
L00002A: db $00;X
L00002B: db $00;X
L00002C: db $00;X
L00002D: db $00;X
L00002E: db $00;X
L00002F: db $00;X
L000030: db $00;X
L000031: db $00;X
L000032: db $00;X
L000033: db $00;X
L000034: db $00;X
L000035: db $00;X
L000036: db $00;X
L000037: db $00;X
L000038: db $00;X
L000039: db $00;X
L00003A: db $00;X
L00003B: db $00;X
L00003C: db $00;X
L00003D: db $00;X
L00003E: db $00;X
L00003F: db $00;X
	push af
	push bc
	push de
	push hl
	jp   $C020
L000047: db $00;X
L000048: db $F5;X
L000049: db $F0;X
L00004A: db $8E;X
L00004B: db $E0;X
L00004C: db $40;X
L00004D: db $F1;X
L00004E: db $D9;X
L00004F: db $00;X

SECTION "Timer Interrupt", ROM0[$0050]
; =============== Timer_Int ===============
Timer_Int:
IF HOOK_PCM && KEEP_PCM
	; In Yon this pointed to RAM instead, to allow multiple modes
	jp   Sound_PCMHandler
ELSE
	push af
		sub  a
		ldh  [rTAC], a
		jr   Timer_End
ENDC
SECTION "End of Timer Interrupt", ROM0[$0058]

L000058: db $F5;X
L000059: db $E5;X
L00005A: db $C3;X
L00005B: db $29;X
L00005C: db $C0;X
L00005D: db $00;X
L00005E: db $00;X
L00005F: db $00;X
L000060: db $D9;X
L000061: db $F0;X
L000062: db $CC;X
L000063: db $6F;X
L000064: db $F0;X
L000065: db $01;X
L000066: db $26;X
L000067: db $C3;X
L000068: db $CB;X
L000069: db $7F;X
L00006A: db $20;X
L00006B: db $44;X
L00006C: db $22;X
L00006D: db $2C;X
L00006E: db $7D;X
L00006F: db $E0;X
L000070: db $CC;X
L000071: db $F0;X
L000072: db $CD;X
L000073: db $BD;X
L000074: db $28;X
L000075: db $48;X
L000076: db $F0;X
L000077: db $CF;X
L000078: db $6F;X
L000079: db $F0;X
L00007A: db $CE;X
L00007B: db $BD;X
L00007C: db $28;X
L00007D: db $28;X
L00007E: db $2C;X
L00007F: db $66;X
L000080: db $2C;X
L000081: db $7D;X
L000082: db $E0;X
L000083: db $CF;X
L000084: db $F0;X
L000085: db $C9;X
L000086: db $E0;X
L000087: db $02;X
L000088: db $EE;X
L000089: db $01;X
L00008A: db $E0;X
L00008B: db $C9;X
L00008C: db $7C;X
L00008D: db $E0;X
L00008E: db $01;X
L00008F: db $28;X
L000090: db $07;X
L000091: db $3E;X
L000092: db $80;X
L000093: db $E0;X
L000094: db $02;X
L000095: db $E1;X
L000096: db $F1;X
L000097: db $D9;X
L000098: db $21;X
L000099: db $07;X
L00009A: db $FF;X
L00009B: db $36;X
L00009C: db $03;X
L00009D: db $F0;X
L00009E: db $91;X
L00009F: db $E0;X
L0000A0: db $05;X
L0000A1: db $36;X
L0000A2: db $07;X
L0000A3: db $E1;X
L0000A4: db $F1;X
L0000A5: db $D9;X
L0000A6: db $F0;X
L0000A7: db $CA;X
L0000A8: db $67;X
L0000A9: db $3C;X
L0000AA: db $F6;X
L0000AB: db $80;X
L0000AC: db $E0;X
L0000AD: db $CA;X
L0000AE: db $18;X
L0000AF: db $D4;X
L0000B0: db $21;X
L0000B1: db $CB;X
L0000B2: db $FF;X
L0000B3: db $BE;X
L0000B4: db $20;X
L0000B5: db $08;X
L0000B6: db $3C;X
L0000B7: db $F6;X
L0000B8: db $80;X
L0000B9: db $77;X
L0000BA: db $26;X
L0000BB: db $C3;X
L0000BC: db $18;X
L0000BD: db $B8;X
L0000BE: db $3E;X
L0000BF: db $02;X
L0000C0: db $EA;X
L0000C1: db $81;X
L0000C2: db $C1;X
L0000C3: db $18;X
L0000C4: db $D0;X
	Timer_End:
		ld   a, START_TRANSFER_INTERNAL_CLOCK
		ldh  [rSC], a
		ld   [$C185], a
	pop  af
	reti
L0000CE: db $00;X
L0000CF: db $00;X
L0000D0: db $00;X
L0000D1: db $00;X
L0000D2: db $00;X
L0000D3: db $00;X
L0000D4: db $00;X
L0000D5: db $00;X
L0000D6: db $00;X
L0000D7: db $00;X
L0000D8: db $00;X
L0000D9: db $00;X
L0000DA: db $00;X
L0000DB: db $00;X
L0000DC: db $00;X
L0000DD: db $00;X
L0000DE: db $00;X
L0000DF: db $00;X
L0000E0: db $00;X
L0000E1: db $00;X
L0000E2: db $00;X
L0000E3: db $00;X
L0000E4: db $00;X
L0000E5: db $00;X
L0000E6: db $00;X
L0000E7: db $00;X
L0000E8: db $00;X
L0000E9: db $00;X
L0000EA: db $00;X
L0000EB: db $00;X
L0000EC: db $00;X
L0000ED: db $00;X
L0000EE: db $00;X
L0000EF: db $00;X
L0000F0: db $00;X
L0000F1: db $00;X
L0000F2: db $00;X
L0000F3: db $00;X
L0000F4: db $00;X
L0000F5: db $00;X
L0000F6: db $00;X
L0000F7: db $00;X
L0000F8: db $00
L0000F9: db $00
L0000FA: db $00
L0000FB: db $00
L0000FC: db $00
L0000FD: db $00;X
L0000FE: db $00;X
L0000FF: db $00;X
	nop  
	jp   L000150
L000104: db $CE;X
L000105: db $ED;X
L000106: db $66;X
L000107: db $66;X
L000108: db $CC;X
L000109: db $0D;X
L00010A: db $00;X
L00010B: db $0B;X
L00010C: db $03;X
L00010D: db $73;X
L00010E: db $00;X
L00010F: db $83;X
L000110: db $00;X
L000111: db $0C;X
L000112: db $00;X
L000113: db $0D;X
L000114: db $00;X
L000115: db $08;X
L000116: db $11;X
L000117: db $1F;X
L000118: db $88;X
L000119: db $89;X
L00011A: db $00;X
L00011B: db $0E;X
L00011C: db $DC;X
L00011D: db $CC;X
L00011E: db $6E;X
L00011F: db $E6;X
L000120: db $DD;X
L000121: db $DD;X
L000122: db $D9;X
L000123: db $99;X
L000124: db $BB;X
L000125: db $BB;X
L000126: db $67;X
L000127: db $63;X
L000128: db $6E;X
L000129: db $0E;X
L00012A: db $EC;X
L00012B: db $CC;X
L00012C: db $DD;X
L00012D: db $DC;X
L00012E: db $99;X
L00012F: db $9F;X
L000130: db $BB;X
L000131: db $B9;X
L000132: db $33;X
L000133: db $3E;X
L000134: db $50;X
L000135: db $4F;X
L000136: db $43;X
L000137: db $4B;X
L000138: db $45;X
L000139: db $54;X
L00013A: db $20;X
L00013B: db $50;X
L00013C: db $55;X
L00013D: db $59;X
L00013E: db $4F;X
L00013F: db $20;X
L000140: db $53;X
L000141: db $55;X
L000142: db $4E;X
L000143: db $80;X
L000144: db $42;X
L000145: db $4A;X
L000146: db $03;X
L000147: db $1B;X
L000148: db $05;X
L000149: db $02;X
L00014A: db $00;X
L00014B: db $33;X
L00014C: db $00;X
L00014D: db $3A;X
L00014E: db $34;X
L00014F: db $A9;X
L000150:;J
	ld   [$C072], a
	di   
	ld   sp, $C300
	call L0003D0
	ld   a, $0A
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	call L000210
	call L000279
	ei   
L000168:;J
	call L0001FC
	ld   a, $05
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	call $5E48
	call L0002BA
	ld   a, $FF
	call L0001F0
	ld   a, [$C011]
	inc  a
	ld   [$C011], a
	call L000323
	ld   a, [$00F9]
	and  a
	jr   z, L0001AD
L00018D: db $F0;X
L00018E: db $A1;X
L00018F: db $E6;X
L000190: db $04;X
L000191: db $28;X
L000192: db $1A;X
L000193: db $97;X
L000194: db $CD;X
L000195: db $F0;X
L000196: db $01;X
L000197: db $F0;X
L000198: db $FF;X
L000199: db $F5;X
L00019A: db $E6;X
L00019B: db $FB;X
L00019C: db $E0;X
L00019D: db $FF;X
L00019E: db $CD;X
L00019F: db $FC;X
L0001A0: db $01;X
L0001A1: db $CD;X
L0001A2: db $23;X
L0001A3: db $03;X
L0001A4: db $F0;X
L0001A5: db $A1;X
L0001A6: db $E6;X
L0001A7: db $04;X
L0001A8: db $28;X
L0001A9: db $F4;X
L0001AA: db $F1;X
L0001AB: db $E0;X
L0001AC: db $FF;X
L0001AD:;R
	call L0012A6
	ld   a, $05
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	call $5012
	ld   a, $00
	call L0001F0
	ld   a, $05
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	call $4000
	ld   a, $04
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	call $533C
	call L001E03
	ld   a, $AA
	call L0001F0
	ld   a, $05
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	call $4004
	call L002126
	ld   a, $00
	call L0001F0
	jp   L000168
L0001F0:;C
	ld   b, a
	ld   a, [$00FA]
	and  a
	ret  z
L0001F6: db $F0;X
L0001F7: db $8B;X
L0001F8: db $A8;X
L0001F9: db $E0;X
L0001FA: db $47;X
L0001FB: db $C9;X
L0001FC:;C
	call L000D98
L0001FF:;R
	di   
	ld   a, [$C010]
	and  a
	jr   nz, L00020A
	halt 
	ei   
	jr   L0001FF
L00020A:;R
	ei   
	sub  a
	ld   [$C010], a
	ret
L000210:;C
	ld   a, [$C072]
	cp   $11
	jr   z, L00022E
	ld   a, $03
	ldh  [$FF8F], a
	ld   a, $F0
	ldh  [$FF91], a
	ld   hl, $0261
	ld   bc, $C020
	ld   e, $0C
L000227:;R
	ldi  a, [hl]
	ld   [bc], a
	inc  bc
	dec  e
	jr   nz, L000227
	ret
L00022E: db $3E;X
L00022F: db $83;X
L000230: db $E0;X
L000231: db $8F;X
L000232: db $3E;X
L000233: db $01;X
L000234: db $E0;X
L000235: db $70;X
L000236: db $97;X
L000237: db $E0;X
L000238: db $4F;X
L000239: db $F0;X
L00023A: db $4D;X
L00023B: db $CB;X
L00023C: db $7F;X
L00023D: db $20;X
L00023E: db $0F;X
L00023F: db $97;X
L000240: db $E0;X
L000241: db $0F;X
L000242: db $E0;X
L000243: db $FF;X
L000244: db $3E;X
L000245: db $30;X
L000246: db $E0;X
L000247: db $00;X
L000248: db $3E;X
L000249: db $01;X
L00024A: db $E0;X
L00024B: db $4D;X
L00024C: db $10;X
L00024D: db $00;X
L00024E: db $3E;X
L00024F: db $E0;X
L000250: db $E0;X
L000251: db $91;X
L000252: db $21;X
L000253: db $6D;X
L000254: db $02;X
L000255: db $01;X
L000256: db $20;X
L000257: db $C0;X
L000258: db $1E;X
L000259: db $0C;X
L00025A: db $2A;X
L00025B: db $02;X
L00025C: db $03;X
L00025D: db $1D;X
L00025E: db $20;X
L00025F: db $FA;X
L000260: db $C9;X
L000261: db $C3
L000262: db $9F
L000263: db $23
L000264: db $C3
L000265: db $79
L000266: db $02
L000267: db $C3
L000268: db $C5
L000269: db $00
L00026A: db $C3
L00026B: db $61
L00026C: db $00
L00026D: db $C3;X
L00026E: db $6A;X
L00026F: db $24;X
L000270: db $C3;X
L000271: db $79;X
L000272: db $02;X
L000273: db $C3;X
L000274: db $C5;X
L000275: db $00;X
L000276: db $C3;X
L000277: db $61;X
L000278: db $00;X
L000279:;C
	call L0003E7
	call L000633
	call L000CC4
	jr   nc, L000287
	call L0017D3
L000287:;X
	call L000D25
	jr   nc, L000295
	call L001882
	call L00188D
	call L000D5E
L000295:;X
	sub  a
	ld   [$C010], a
	call L00030B
	call L000626
	call L00226C
	call L001DAE
	ld   a, $05
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	call $5000
	call $5618
	ld   a, $06 ; BANK $06
	ld   b, $0F ; BANK $0F
	call Sound_Init
	ret
L0002BA:;C
	ld   a, [$C0B0]
	and  a
	ret  nz
	ldh  a, [$FFC0]
	and  $0F
	cp   $08
	jr   z, L0002CB
	cp   $0C
	jr   nz, L0002D5
L0002CB: db $FA;X
L0002CC: db $D2;X
L0002CD: db $C0;X
L0002CE: db $CB;X
L0002CF: db $7F;X
L0002D0: db $C0;X
L0002D1: db $A7;X
L0002D2: db $C8;X
L0002D3: db $18;X
L0002D4: db $06;X
L0002D5:;R
	ld   a, [$C0D2]
	bit  7, a
	ret  nz
	ld   hl, $C0E1
	inc  [hl]
	ld   a, [hl]
	cp   $3C
	ret  c
	ld   [hl], $00
	inc  l
	inc  [hl]
	inc  hl
	jr   nz, L0002EB
	inc  [hl]
L0002EB:;R
	inc  l
	inc  [hl]
	ld   a, [hl]
	cp   $3C
	ret  c
	ld   [hl], $00
	inc  l
	inc  [hl]
	ret  nz
L0002F6: db $35;X
L0002F7: db $C9;X
L0002F8:;CR
	push bc
	ld   bc, $06D6
L0002FC:;R
	nop  
	nop  
	nop  
	dec  bc
	ld   a, b
	or   c
	jr   nz, L0002FC
	pop  bc
	dec  bc
	ld   a, b
	or   c
	jr   nz, L0002F8
	ret
L00030B:;C
	sub  a
	ldh  [$FFA0], a
	ldh  [$FFA4], a
	ldh  [$FFA5], a
	ldh  [$FFA6], a
	ldh  [$FFA8], a
	ldh  [$FFA9], a
	ld   a, $10
	ld   [$C070], a
	ld   a, $03
	ld   [$C071], a
	ret
L000323:;C
	ldh  a, [$FF8F]
	bit  2, a
	jr   nz, L000338
	ld   hl, $FFA0
	call L000366
	ldh  a, [$FFA1]
	ldh  [$FFA8], a
	ldh  a, [$FFA2]
	ldh  [$FFA9], a
	ret
L000338: db $F3;X
L000339: db $F0;X
L00033A: db $00;X
L00033B: db $E6;X
L00033C: db $01;X
L00033D: db $28;X
L00033E: db $0B;X
L00033F: db $21;X
L000340: db $A0;X
L000341: db $FF;X
L000342: db $CD;X
L000343: db $66;X
L000344: db $03;X
L000345: db $21;X
L000346: db $A4;X
L000347: db $FF;X
L000348: db $18;X
L000349: db $09;X
L00034A: db $21;X
L00034B: db $A4;X
L00034C: db $FF;X
L00034D: db $CD;X
L00034E: db $66;X
L00034F: db $03;X
L000350: db $21;X
L000351: db $A0;X
L000352: db $FF;X
L000353: db $CD;X
L000354: db $66;X
L000355: db $03;X
L000356: db $FB;X
L000357: db $21;X
L000358: db $A5;X
L000359: db $FF;X
L00035A: db $F0;X
L00035B: db $A1;X
L00035C: db $B6;X
L00035D: db $E0;X
L00035E: db $A8;X
L00035F: db $2C;X
L000360: db $F0;X
L000361: db $A2;X
L000362: db $B6;X
L000363: db $E0;X
L000364: db $A9;X
L000365: db $C9;X
L000366:;C
	ld   a, $20
	ldh  [rJOYP], a
	ldh  a, [rJOYP]
	ldh  a, [rJOYP]
	cpl  
	and  $0F
	swap a
	ld   b, a
	ld   a, $10
	ldh  [rJOYP], a
	ldh  a, [rJOYP]
	ldh  a, [rJOYP]
	ldh  a, [rJOYP]
	ldh  a, [rJOYP]
	ldh  a, [rJOYP]
	ldh  a, [rJOYP]
	ldh  a, [rJOYP]
	ldh  a, [rJOYP]
	cpl  
	and  $0F
	or   b
	ld   c, a
	ldi  a, [hl]
	xor  c
	and  c
	ldd  [hl], a
	ld   b, a
	ld   a, c
	ldi  [hl], a
	ld   a, $30
	ldh  [rJOYP], a
	ld   a, c
	cp   $0F
	jr   nz, L0003A6
L00039D: db $CD;X
L00039E: db $FA;X
L00039F: db $0C;X
L0003A0: db $CD;X
L0003A1: db $5E;X
L0003A2: db $0D;X
L0003A3: db $C3;X
L0003A4: db $53;X
L0003A5: db $01;X
L0003A6:;R
	inc  l
	ld   a, b
	ldi  [hl], a
	and  $F0
	jr   z, L0003B2
	ld   a, [$C070]
	ld   [hl], a
	ret
L0003B2:;R
	dec  [hl]
	ret  nz
	ld   a, [$C071]
	ldd  [hl], a
	ld   [hl], c
	ret
L0003BA:;C
	ld   c, $80
	ld   b, $08
	ld   hl, $03C8
L0003C1:;R
	ldi  a, [hl]
	ld   [c], a
	inc  c
	dec  b
	jr   nz, L0003C1
	ret
L0003C8: db $E0
L0003C9: db $46
L0003CA: db $3E
L0003CB: db $28
L0003CC: db $3D
L0003CD: db $20
L0003CE: db $FD
L0003CF: db $C9
L0003D0:;C
	ld   a, $0A
	ld   [$0000], a
	ld   a, $01
	ld   [$6000], a
	sub  a
	ld   [$4000], a
	ld   [$3000], a
	ld   a, $01
	ld   [MBC1RomBank], a
	ret
L0003E7:;C
	sub  a
	ldh  [rIE], a
	ldh  [$FF8A], a
	call L00058E
	sub  a
	ldh  [rNR52], a
	sub  a
	ldh  [rSTAT], a
	ld   hl, $8000
L0003F8:;R
	sub  a
	ldi  [hl], a
	ld   a, h
	cp   $A0
	jr   c, L0003F8
	sub  a
	ldh  [$FF89], a
	ldh  [$FF88], a
	ldh  [rSCY], a
	ldh  [rSCX], a
	ldh  [rWY], a
	ld   a, $07
	ldh  [rWX], a
	call L0003BA
	call L0005E0
	ld   a, $C8
	ldh  [$FF8A], a
	ldh  [rLCDC], a
	sub  a
	ldh  [rIF], a
	ld   a, $01
	ldh  [rIE], a
	sub  a
	ldh  [$FFF8], a
	ldh  [$FFF9], a
	ld   a, $C0
	ldh  [$FFFB], a
	ldh  [$FFFA], a
	ld   bc, $0004
	call L0002F8
	call L000C65
	ret  nc
L000436: db $FA;X
L000437: db $72;X
L000438: db $C0;X
L000439: db $FE;X
L00043A: db $FF;X
L00043B: db $28;X
L00043C: db $04;X
L00043D: db $06;X
L00043E: db $04;X
L00043F: db $18;X
L000440: db $02;X
L000441: db $06;X
L000442: db $06;X
L000443: db $F0;X
L000444: db $8F;X
L000445: db $E6;X
L000446: db $F8;X
L000447: db $B0;X
L000448: db $E0;X
L000449: db $8F;X
L00044A: db $21;X
L00044B: db $D7;X
L00044C: db $04;X
L00044D: db $CD;X
L00044E: db $1F;X
L00044F: db $0C;X
L000450: db $01;X
L000451: db $04;X
L000452: db $00;X
L000453: db $CD;X
L000454: db $F8;X
L000455: db $02;X
L000456: db $21;X
L000457: db $E7;X
L000458: db $04;X
L000459: db $CD;X
L00045A: db $1F;X
L00045B: db $0C;X
L00045C: db $01;X
L00045D: db $04;X
L00045E: db $00;X
L00045F: db $CD;X
L000460: db $F8;X
L000461: db $02;X
L000462: db $21;X
L000463: db $F7;X
L000464: db $04;X
L000465: db $CD;X
L000466: db $1F;X
L000467: db $0C;X
L000468: db $01;X
L000469: db $04;X
L00046A: db $00;X
L00046B: db $CD;X
L00046C: db $F8;X
L00046D: db $02;X
L00046E: db $21;X
L00046F: db $07;X
L000470: db $05;X
L000471: db $CD;X
L000472: db $1F;X
L000473: db $0C;X
L000474: db $01;X
L000475: db $04;X
L000476: db $00;X
L000477: db $CD;X
L000478: db $F8;X
L000479: db $02;X
L00047A: db $21;X
L00047B: db $17;X
L00047C: db $05;X
L00047D: db $CD;X
L00047E: db $1F;X
L00047F: db $0C;X
L000480: db $01;X
L000481: db $04;X
L000482: db $00;X
L000483: db $CD;X
L000484: db $F8;X
L000485: db $02;X
L000486: db $21;X
L000487: db $27;X
L000488: db $05;X
L000489: db $CD;X
L00048A: db $1F;X
L00048B: db $0C;X
L00048C: db $01;X
L00048D: db $04;X
L00048E: db $00;X
L00048F: db $CD;X
L000490: db $F8;X
L000491: db $02;X
L000492: db $21;X
L000493: db $37;X
L000494: db $05;X
L000495: db $CD;X
L000496: db $1F;X
L000497: db $0C;X
L000498: db $01;X
L000499: db $04;X
L00049A: db $00;X
L00049B: db $CD;X
L00049C: db $F8;X
L00049D: db $02;X
L00049E: db $21;X
L00049F: db $47;X
L0004A0: db $05;X
L0004A1: db $CD;X
L0004A2: db $1F;X
L0004A3: db $0C;X
L0004A4: db $01;X
L0004A5: db $04;X
L0004A6: db $00;X
L0004A7: db $CD;X
L0004A8: db $F8;X
L0004A9: db $02;X
L0004AA: db $21;X
L0004AB: db $B7;X
L0004AC: db $04;X
L0004AD: db $CD;X
L0004AE: db $1F;X
L0004AF: db $0C;X
L0004B0: db $01;X
L0004B1: db $04;X
L0004B2: db $00;X
L0004B3: db $CD;X
L0004B4: db $F8;X
L0004B5: db $02;X
L0004B6: db $C9;X
L0004B7: db $B9;X
L0004B8: db $01;X
L0004B9: db $00;X
L0004BA: db $00;X
L0004BB: db $00;X
L0004BC: db $00;X
L0004BD: db $00;X
L0004BE: db $00;X
L0004BF: db $00;X
L0004C0: db $00;X
L0004C1: db $00;X
L0004C2: db $00;X
L0004C3: db $00;X
L0004C4: db $00;X
L0004C5: db $00;X
L0004C6: db $00;X
L0004C7: db $B9;X
L0004C8: db $00;X
L0004C9: db $00;X
L0004CA: db $00;X
L0004CB: db $00;X
L0004CC: db $00;X
L0004CD: db $00;X
L0004CE: db $00;X
L0004CF: db $00;X
L0004D0: db $00;X
L0004D1: db $00;X
L0004D2: db $00;X
L0004D3: db $00;X
L0004D4: db $00;X
L0004D5: db $00;X
L0004D6: db $00;X
L0004D7: db $79;X
L0004D8: db $5D;X
L0004D9: db $08;X
L0004DA: db $00;X
L0004DB: db $0B;X
L0004DC: db $8C;X
L0004DD: db $D0;X
L0004DE: db $F4;X
L0004DF: db $60;X
L0004E0: db $00;X
L0004E1: db $00;X
L0004E2: db $00;X
L0004E3: db $00;X
L0004E4: db $00;X
L0004E5: db $00;X
L0004E6: db $00;X
L0004E7: db $79;X
L0004E8: db $52;X
L0004E9: db $08;X
L0004EA: db $00;X
L0004EB: db $0B;X
L0004EC: db $A9;X
L0004ED: db $E7;X
L0004EE: db $9F;X
L0004EF: db $01;X
L0004F0: db $C0;X
L0004F1: db $7E;X
L0004F2: db $E8;X
L0004F3: db $E8;X
L0004F4: db $E8;X
L0004F5: db $E8;X
L0004F6: db $E0;X
L0004F7: db $79;X
L0004F8: db $47;X
L0004F9: db $08;X
L0004FA: db $00;X
L0004FB: db $0B;X
L0004FC: db $C4;X
L0004FD: db $D0;X
L0004FE: db $16;X
L0004FF: db $A5;X
L000500: db $CB;X
L000501: db $C9;X
L000502: db $05;X
L000503: db $D0;X
L000504: db $10;X
L000505: db $A2;X
L000506: db $28;X
L000507: db $79;X
L000508: db $3C;X
L000509: db $08;X
L00050A: db $00;X
L00050B: db $0B;X
L00050C: db $F0;X
L00050D: db $12;X
L00050E: db $A5;X
L00050F: db $C9;X
L000510: db $C9;X
L000511: db $C8;X
L000512: db $D0;X
L000513: db $1C;X
L000514: db $A5;X
L000515: db $CA;X
L000516: db $C9;X
L000517: db $79;X
L000518: db $31;X
L000519: db $08;X
L00051A: db $00;X
L00051B: db $0B;X
L00051C: db $0C;X
L00051D: db $A5;X
L00051E: db $CA;X
L00051F: db $C9;X
L000520: db $7E;X
L000521: db $D0;X
L000522: db $06;X
L000523: db $A5;X
L000524: db $CB;X
L000525: db $C9;X
L000526: db $7E;X
L000527: db $79;X
L000528: db $26;X
L000529: db $08;X
L00052A: db $00;X
L00052B: db $0B;X
L00052C: db $39;X
L00052D: db $CD;X
L00052E: db $48;X
L00052F: db $0C;X
L000530: db $D0;X
L000531: db $34;X
L000532: db $A5;X
L000533: db $C9;X
L000534: db $C9;X
L000535: db $80;X
L000536: db $D0;X
L000537: db $79;X
L000538: db $1B;X
L000539: db $08;X
L00053A: db $00;X
L00053B: db $0B;X
L00053C: db $EA;X
L00053D: db $EA;X
L00053E: db $EA;X
L00053F: db $EA;X
L000540: db $EA;X
L000541: db $A9;X
L000542: db $01;X
L000543: db $CD;X
L000544: db $4F;X
L000545: db $0C;X
L000546: db $D0;X
L000547: db $79;X
L000548: db $10;X
L000549: db $08;X
L00054A: db $00;X
L00054B: db $0B;X
L00054C: db $4C;X
L00054D: db $20;X
L00054E: db $08;X
L00054F: db $EA;X
L000550: db $EA;X
L000551: db $EA;X
L000552: db $EA;X
L000553: db $EA;X
L000554: db $60;X
L000555: db $EA;X
L000556: db $EA;X
L000557: db $BF;X
L000558: db $67;X
L000559: db $5B;X
L00055A: db $26;X
L00055B: db $B5;X
L00055C: db $10;X
L00055D: db $66;X
L00055E: db $28;X
L00055F: db $BF;X
L000560: db $67;X
L000561: db $BF;X
L000562: db $67;X
L000563: db $B5;X
L000564: db $10;X
L000565: db $66;X
L000566: db $28;X
L000567:;CI
	ldh  a, [$FF8A]
	or   $03
	ldh  [$FF8A], a
	ret
L00056E:;C
	ldh  a, [$FF8A]
	and  $FC
	ldh  [$FF8A], a
	ret
L000575: db $97;X
L000576: db $EA;X
L000577: db $10;X
L000578: db $C0;X
L000579: db $FB;X
L00057A: db $FA;X
L00057B: db $10;X
L00057C: db $C0;X
L00057D: db $A7;X
L00057E: db $28;X
L00057F: db $F9;X
L000580: db $97;X
L000581: db $EA;X
L000582: db $10;X
L000583: db $C0;X
L000584: db $C9;X
L000585:;CI
	ldh  a, [$FF8A]
	or   $80
	ldh  [$FF8A], a
	ldh  [rLCDC], a
	ret
L00058E:;C
	ldh  a, [rIE]
	push af
	and  $1E
	ldh  [rIE], a
L000595:;R
	ldh  a, [rLY]
	cp   $91
	jr   c, L000595
	cp   $96
	jr   nc, L000595
	ldh  a, [$FF8A]
	and  $7F
	ldh  [$FF8A], a
	ldh  [rLCDC], a
	ldh  a, [rIF]
	res  0, a
	ldh  [rIF], a
	pop  af
	ldh  [rIE], a
	ret
L0005B1:;C
	ldh  a, [$FF8A]
	and  $80
	jr   z, L0005C3
	sub  a
	ld   [$C010], a
L0005BB:;R
	ei   
	ld   a, [$C010]
	and  a
	jr   z, L0005BB
	ret
L0005C3:;R
	push bc
	push de
	push hl
	ldh  a, [rIE]
	ldh  [$FFAD], a
	ldh  a, [$FF8F]
	bit  7, a
	jr   nz, L0005D5
	call L000FE0
	jr   L0005D8
L0005D5: db $CD;X
L0005D6: db $B1;X
L0005D7: db $10;X
L0005D8:;R
	ldh  a, [$FFAD]
	ldh  [rIE], a
	pop  hl
	pop  de
	pop  bc
	ret
L0005E0:;C
	push bc
	push hl
	ldh  a, [$FF8A]
	and  $80
	or   $08
	ldh  [$FF8A], a
	call L000609
	sub  a
	ldh  [$FF88], a
	ldh  [$FF89], a
	ld   [$C073], a
	ld   [$C074], a
	sub  a
	ldh  [rSTAT], a
	call L000633
	call L000626
	push de
	call L002238
	pop  de
	pop  hl
	pop  bc
	ret
L000609:;C
	ld   hl, $C700
	ld   c, $FF
	ld   a, $7F
	ld   e, $40
L000612:;R
	ld   [hl], c
	inc  l
	ldi  [hl], a
	dec  e
	jr   nz, L000612
	sub  a
	ldh  [$FF8B], a
	ldh  [rBGP], a
	ldh  [$FF8C], a
	ldh  [rOBP0], a
	ldh  [$FF8D], a
	ldh  [rOBP1], a
	ret
L000626:;C
	ld   hl, $C600
	sub  a
	ld   b, $A0
L00062C:;R
	ldi  [hl], a
	dec  b
	jr   nz, L00062C
	ldh  [$FF97], a
	ret
L000633:;C
	push bc
	push de
	push hl
	sub  a
	ld   [$C6B0], a
	ld   [$C6B5], a
	ld   [$C6BA], a
	ldh  [$FF93], a
	ldh  [$FF94], a
	ldh  [$FF95], a
	ld   [$C012], a
	ld   e, $40
	ld   hl, $0662
	ld   bc, $C400
L000651:;R
	ldi  a, [hl]
	ld   [bc], a
	inc  c
	dec  e
	jr   nz, L000651
	ld   a, $3C
	ldh  [$FF92], a
	call L0011F0
	pop  hl
	pop  de
	pop  bc
	ret
L000662: db $5C
L000663: db $A1
L000664: db $5C
L000665: db $C1
L000666: db $5C
L000667: db $E1
L000668: db $5D
L000669: db $01
L00066A: db $5D
L00066B: db $21
L00066C: db $5D
L00066D: db $41
L00066E: db $5D
L00066F: db $61
L000670: db $5D
L000671: db $81
L000672: db $5D
L000673: db $A1
L000674: db $5D
L000675: db $C1
L000676: db $5D
L000677: db $E1
L000678: db $5E
L000679: db $01
L00067A: db $5D
L00067B: db $48
L00067C: db $5D
L00067D: db $68
L00067E: db $5D
L00067F: db $88
L000680: db $5D
L000681: db $A8
L000682: db $5C
L000683: db $AE
L000684: db $5C
L000685: db $CE
L000686: db $5C
L000687: db $EE
L000688: db $5D
L000689: db $0E
L00068A: db $5D
L00068B: db $2E
L00068C: db $5D
L00068D: db $4E
L00068E: db $5D
L00068F: db $6E
L000690: db $5D
L000691: db $8E
L000692: db $5D
L000693: db $AE
L000694: db $5D
L000695: db $CE
L000696: db $5D
L000697: db $EE
L000698: db $5E
L000699: db $0E
L00069A: db $5D
L00069B: db $C8
L00069C: db $5D
L00069D: db $E8
L00069E: db $5E
L00069F: db $08
L0006A0: db $00
L0006A1: db $00
L0006A2:;JC
	push bc
	push de
	ld   b, a
	add  $04
	ld   c, a
	ldh  a, [$FF92]
	cp   c
	call c, L0005B1
	ld   e, l
	ld   d, h
	ldh  a, [$FF94]
	ld   l, a
	ld   h, $C5
	ld   [hl], b
	inc  l
	ld   [hl], d
	inc  l
	ld   [hl], e
	inc  l
	ld   a, l
	ldh  [$FF94], a
	ldh  a, [$FF92]
	sub  c
	ldh  [$FF92], a
	pop  de
	pop  bc
	ret
L0006C6:;C
	ldh  a, [$FF8F]
	bit  7, a
	jr   z, L0006D9
L0006CC: db $F0;X
L0006CD: db $70;X
L0006CE: db $F5;X
L0006CF: db $EE;X
L0006D0: db $03;X
L0006D1: db $E0;X
L0006D2: db $70;X
L0006D3: db $CD;X
L0006D4: db $D9;X
L0006D5: db $06;X
L0006D6: db $F1;X
L0006D7: db $E0;X
L0006D8: db $70;X
L0006D9:;R
	push bc
	push hl
	ld   hl, $DC00
	ld   b, $00
	sub  a
L0006E1:;R
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	dec  b
	jr   nz, L0006E1
	pop  hl
	pop  bc
	ret
L0006EB:;C
	push bc
	push hl
	ld   bc, $1220
	ld   hl, $DC00
L0006F3:;R
	push hl
	ld   a, $14
	call L0006A2
	pop  hl
	ld   a, b
	ld   b, $00
	add  hl, bc
	ld   b, a
	dec  b
	jr   nz, L0006F3
	pop  hl
	pop  bc
	ret
L000705:;C
	push bc
	push de
	push hl
	ldh  a, [$FF8F]
	bit  7, a
	jr   z, L000739
L00070E: db $3E;X
L00070F: db $12;X
L000710: db $E0;X
L000711: db $F0;X
L000712: db $21;X
L000713: db $CF;X
L000714: db $DE;X
L000715: db $11;X
L000716: db $33;X
L000717: db $DE;X
L000718: db $06;X
L000719: db $14;X
L00071A: db $4E;X
L00071B: db $2B;X
L00071C: db $3E;X
L00071D: db $02;X
L00071E: db $E0;X
L00071F: db $70;X
L000720: db $79;X
L000721: db $12;X
L000722: db $3E;X
L000723: db $01;X
L000724: db $E0;X
L000725: db $70;X
L000726: db $1B;X
L000727: db $05;X
L000728: db $20;X
L000729: db $F0;X
L00072A: db $7B;X
L00072B: db $D6;X
L00072C: db $0C;X
L00072D: db $5F;X
L00072E: db $7A;X
L00072F: db $DE;X
L000730: db $00;X
L000731: db $57;X
L000732: db $F0;X
L000733: db $F0;X
L000734: db $3D;X
L000735: db $E0;X
L000736: db $F0;X
L000737: db $20;X
L000738: db $DF;X
L000739:;R
	ld   c, $11
	ld   hl, $DD67
	ld   de, $DE33
L000741:;R
	ld   b, $14
L000743:;R
	ldd  a, [hl]
	ld   [de], a
	dec  de
	dec  b
	jr   nz, L000743
	ld   a, e
	sub  $0C
	ld   e, a
	ld   a, d
	sbc  $00
	ld   d, a
	dec  c
	jr   nz, L000741
	pop  hl
	pop  de
	pop  bc
	ret
L000758:;C
	ldh  a, [$FF8F]
	bit  7, a
	jr   z, L00076B
L00075E: db $F0;X
L00075F: db $4F;X
L000760: db $F5;X
L000761: db $EE;X
L000762: db $01;X
L000763: db $E0;X
L000764: db $4F;X
L000765: db $CD;X
L000766: db $6B;X
L000767: db $07;X
L000768: db $F1;X
L000769: db $E0;X
L00076A: db $4F;X
L00076B:;R
	push bc
	push hl
	ld   hl, $9800
	sub  a
	ld   b, a
L000772:;R
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	dec  b
	jr   nz, L000772
	pop  hl
	pop  bc
	ret
L000780:;CR
	ld   a, [bc]
	ld   l, a
	inc  bc
	ld   a, [bc]
	ld   h, a
	inc  bc
	call L00078C
	jr   z, L000780
	ret
L00078C:;JC
	push hl
	ld   e, $00
L00078F:;R
	ld   a, [bc]
	inc  bc
	cp   $FE
	jr   nc, L0007AE
	cp   $A0
	jr   c, L00079F
	sub  $A0
	ldi  [hl], a
	inc  e
	jr   L00078F
L00079F:;R
	push bc
	add  $B7
	ld   c, a
	ld   a, $07
	adc  a, $00
	ld   b, a
	ld   a, [bc]
	ldi  [hl], a
	inc  e
	pop  bc
	jr   L00078F
L0007AE:;R
	pop  hl
	push af
	ld   a, e
	and  a
	call nz, L0006A2
	pop  af
	ret
L0007B7: db $00;X
L0007B8: db $00;X
L0007B9: db $00;X
L0007BA: db $00;X
L0007BB: db $00;X
L0007BC: db $00;X
L0007BD: db $00;X
L0007BE: db $00;X
L0007BF: db $00;X
L0007C0: db $00;X
L0007C1: db $00;X
L0007C2: db $00;X
L0007C3: db $00;X
L0007C4: db $00;X
L0007C5: db $00;X
L0007C6: db $00;X
L0007C7: db $00;X
L0007C8: db $00;X
L0007C9: db $00;X
L0007CA: db $00;X
L0007CB: db $00;X
L0007CC: db $00;X
L0007CD: db $00;X
L0007CE: db $00;X
L0007CF: db $00;X
L0007D0: db $00;X
L0007D1: db $2A;X
L0007D2: db $2B;X
L0007D3: db $2C;X
L0007D4: db $2D;X
L0007D5: db $2E;X
L0007D6: db $2F;X
L0007D7: db $00
L0007D8: db $03;X
L0007D9: db $00;X
L0007DA: db $00;X
L0007DB: db $00;X
L0007DC: db $00;X
L0007DD: db $00;X
L0007DE: db $00;X
L0007DF: db $00;X
L0007E0: db $00;X
L0007E1: db $00;X
L0007E2: db $A9;X
L0007E3: db $A7;X
L0007E4: db $A8;X
L0007E5: db $A5;X
L0007E6: db $AC
L0007E7: db $80;X
L0007E8: db $81;X
L0007E9: db $82;X
L0007EA: db $83;X
L0007EB: db $84;X
L0007EC: db $85;X
L0007ED: db $86;X
L0007EE: db $87;X
L0007EF: db $88;X
L0007F0: db $89;X
L0007F1: db $A6
L0007F2: db $00;X
L0007F3: db $00;X
L0007F4: db $00;X
L0007F5: db $00;X
L0007F6: db $A4;X
L0007F7: db $AA;X
L0007F8: db $8A
L0007F9: db $8B
L0007FA: db $8C
L0007FB: db $8D
L0007FC: db $8E
L0007FD: db $8F
L0007FE: db $90
L0007FF: db $91
L000800: db $92
L000801: db $93;X
L000802: db $94
L000803: db $95
L000804: db $96
L000805: db $97
L000806: db $98
L000807: db $99
L000808: db $9A;X
L000809: db $9B
L00080A: db $9C
L00080B: db $9D
L00080C: db $9E
L00080D: db $9F;X
L00080E: db $A0;X
L00080F: db $A1
L000810: db $A2
L000811: db $A3;X
L000812: db $00;X
L000813: db $00;X
L000814: db $00;X
L000815: db $00;X
L000816: db $24;X
L000817: db $0A;X
L000818: db $6F;X
L000819: db $03;X
L00081A: db $0A;X
L00081B: db $67;X
L00081C: db $03;X
L00081D: db $CD;X
L00081E: db $23;X
L00081F: db $08;X
L000820: db $28;X
L000821: db $F5;X
L000822: db $C9;X
L000823: db $0A;X
L000824: db $03;X
L000825: db $FE;X
L000826: db $FE;X
L000827: db $D0;X
L000828: db $FE;X
L000829: db $A0;X
L00082A: db $38;X
L00082B: db $05;X
L00082C: db $D6;X
L00082D: db $A0;X
L00082E: db $22;X
L00082F: db $18;X
L000830: db $F2;X
L000831: db $C5;X
L000832: db $C6;X
L000833: db $B7;X
L000834: db $4F;X
L000835: db $3E;X
L000836: db $07;X
L000837: db $CE;X
L000838: db $00;X
L000839: db $47;X
L00083A: db $0A;X
L00083B: db $22;X
L00083C: db $C1;X
L00083D: db $18;X
L00083E: db $E4;X
L00083F:;CR
	ld   a, [bc]
	ld   l, a
	inc  bc
	ld   a, [bc]
	ld   h, a
	inc  bc
	call L00084B
	jr   z, L00083F
	ret
L00084B:;C
	push de
	push hl
	sub  a
	ld   [$C01C], a
	ld   e, a
L000852:;R
	ld   a, [bc]
	inc  bc
	cp   $FE
	jr   nc, L000897
	cp   $5E
	jr   nz, L000866
	ld   a, [$C01C]
	xor  $01
	ld   [$C01C], a
	jr   L000852
L000866:;R
	ld   d, a
	push bc
	ld   bc, $08E1
	cp   $A0
	jr   c, L000878
	ld   a, [$C01C]
	and  a
	jr   z, L000878
	ld   bc, $08A1
L000878:;R
	ld   a, d
	add  c
	ld   c, a
	ld   a, b
	adc  a, $00
	ld   b, a
	ld   a, [bc]
	cp   $3E
	jr   z, L000888
	cp   $3F
	jr   nz, L000892
L000888:;R
	push hl
	ld   bc, $FFDF
	add  hl, bc
	ld   [hl], a
	pop  hl
	pop  bc
	jr   L000852
L000892:;R
	ldi  [hl], a
	inc  e
	pop  bc
	jr   L000852
L000897:;R
	pop  hl
	push af
	ld   a, e
	and  a
	jr   z, L0008AB
	ld   d, a
	push hl
	call L0006A2
	pop  hl
	ld   a, d
	ld   de, hNRx3Data
	add  hl, de
	call L0006A2
L0008AB:;X
	pop  af
	pop  de
	ret
L0008AE: db $0A;X
L0008AF: db $6F;X
L0008B0: db $03;X
L0008B1: db $0A;X
L0008B2: db $67;X
L0008B3: db $03;X
L0008B4: db $CD;X
L0008B5: db $BA;X
L0008B6: db $08;X
L0008B7: db $28;X
L0008B8: db $F5;X
L0008B9: db $C9;X
L0008BA: db $97;X
L0008BB: db $EA;X
L0008BC: db $1C;X
L0008BD: db $C0;X
L0008BE: db $0A;X
L0008BF: db $03;X
L0008C0: db $FE;X
L0008C1: db $FE;X
L0008C2: db $D0;X
L0008C3: db $FE;X
L0008C4: db $5E;X
L0008C5: db $20;X
L0008C6: db $0A;X
L0008C7: db $FA;X
L0008C8: db $1C;X
L0008C9: db $C0;X
L0008CA: db $EE;X
L0008CB: db $01;X
L0008CC: db $EA;X
L0008CD: db $1C;X
L0008CE: db $C0;X
L0008CF: db $18;X
L0008D0: db $ED;X
L0008D1: db $5F;X
L0008D2: db $C5;X
L0008D3: db $01;X
L0008D4: db $E1;X
L0008D5: db $08;X
L0008D6: db $FE;X
L0008D7: db $A0;X
L0008D8: db $38;X
L0008D9: db $09;X
L0008DA: db $FA;X
L0008DB: db $1C;X
L0008DC: db $C0;X
L0008DD: db $A7;X
L0008DE: db $28;X
L0008DF: db $03;X
L0008E0: db $01;X
L0008E1: db $A1;X
L0008E2: db $08;X
L0008E3: db $7B;X
L0008E4: db $81;X
L0008E5: db $4F;X
L0008E6: db $78;X
L0008E7: db $CE;X
L0008E8: db $00;X
L0008E9: db $47;X
L0008EA: db $0A;X
L0008EB: db $FE;X
L0008EC: db $3E;X
L0008ED: db $28;X
L0008EE: db $04;X
L0008EF: db $FE;X
L0008F0: db $3F;X
L0008F1: db $20;X
L0008F2: db $0A;X
L0008F3: db $E5;X
L0008F4: db $01;X
L0008F5: db $DF;X
L0008F6: db $FF;X
L0008F7: db $09;X
L0008F8: db $77;X
L0008F9: db $E1;X
L0008FA: db $C1;X
L0008FB: db $18;X
L0008FC: db $C1;X
L0008FD: db $22;X
L0008FE: db $C1;X
L0008FF: db $18;X
L000900: db $BD;X
L000901: db $00
L000902: db $03;X
L000903: db $00;X
L000904: db $00;X
L000905: db $00;X
L000906: db $00;X
L000907: db $00;X
L000908: db $00;X
L000909: db $00;X
L00090A: db $00;X
L00090B: db $7E;X
L00090C: db $02;X
L00090D: db $04;X
L00090E: db $10
L00090F: db $01;X
L000910: db $50;X
L000911: db $80;X
L000912: db $81
L000913: db $82
L000914: db $83;X
L000915: db $84;X
L000916: db $85;X
L000917: db $86;X
L000918: db $87;X
L000919: db $88;X
L00091A: db $89;X
L00091B: db $7F;X
L00091C: db $00;X
L00091D: db $00;X
L00091E: db $00;X
L00091F: db $00;X
L000920: db $05;X
L000921: db $AA;X
L000922: db $8A
L000923: db $8B;X
L000924: db $8C;X
L000925: db $8D
L000926: db $8E;X
L000927: db $8F;X
L000928: db $90;X
L000929: db $91;X
L00092A: db $92
L00092B: db $93;X
L00092C: db $94;X
L00092D: db $95;X
L00092E: db $96;X
L00092F: db $97
L000930: db $98
L000931: db $99
L000932: db $9A;X
L000933: db $9B;X
L000934: db $9C;X
L000935: db $9D
L000936: db $9E;X
L000937: db $9F;X
L000938: db $A0;X
L000939: db $A1;X
L00093A: db $A2;X
L00093B: db $A3;X
L00093C: db $00;X
L00093D: db $00;X
L00093E: db $00;X
L00093F: db $00;X
L000940: db $7E
L000941: db $00;X
L000942: db $01;X
L000943: db $00;X
L000944: db $00;X
L000945: db $04;X
L000946: db $45;X
L000947: db $46;X
L000948: db $47;X
L000949: db $48;X
L00094A: db $49;X
L00094B: db $4A;X
L00094C: db $4B;X
L00094D: db $4C;X
L00094E: db $4D;X
L00094F: db $4E;X
L000950: db $4F;X
L000951: db $10
L000952: db $51;X
L000953: db $52
L000954: db $53;X
L000955: db $54;X
L000956: db $55;X
L000957: db $56;X
L000958: db $57;X
L000959: db $58;X
L00095A: db $59
L00095B: db $5A
L00095C: db $5B;X
L00095D: db $5C
L00095E: db $5D
L00095F: db $5E;X
L000960: db $5F;X
L000961: db $60;X
L000962: db $61;X
L000963: db $62;X
L000964: db $63
L000965: db $64
L000966: db $65;X
L000967: db $66;X
L000968: db $67;X
L000969: db $68;X
L00096A: db $69;X
L00096B: db $6A
L00096C: db $6B
L00096D: db $6C;X
L00096E: db $6D;X
L00096F: db $6E
L000970: db $6F;X
L000971: db $70;X
L000972: db $71
L000973: db $72
L000974: db $73;X
L000975: db $74;X
L000976: db $75;X
L000977: db $76;X
L000978: db $77
L000979: db $78;X
L00097A: db $79
L00097B: db $7A
L00097C: db $7B
L00097D: db $7C;X
L00097E: db $7D
L00097F: db $3E
L000980: db $3F
L000981: db $00;X
L000982: db $01
L000983: db $00;X
L000984: db $00;X
L000985: db $04
L000986: db $45;X
L000987: db $06;X
L000988: db $07;X
L000989: db $08;X
L00098A: db $09;X
L00098B: db $0A;X
L00098C: db $0B;X
L00098D: db $0C;X
L00098E: db $0D
L00098F: db $0E
L000990: db $0F
L000991: db $10;X
L000992: db $11
L000993: db $12
L000994: db $13
L000995: db $14
L000996: db $15
L000997: db $16
L000998: db $17;X
L000999: db $18
L00099A: db $19;X
L00099B: db $1A
L00099C: db $1B
L00099D: db $1C
L00099E: db $1D;X
L00099F: db $1E
L0009A0: db $1F;X
L0009A1: db $20
L0009A2: db $21
L0009A3: db $22
L0009A4: db $23
L0009A5: db $24
L0009A6: db $25
L0009A7: db $26
L0009A8: db $27;X
L0009A9: db $28;X
L0009AA: db $29
L0009AB: db $2A
L0009AC: db $2B
L0009AD: db $2C
L0009AE: db $2D
L0009AF: db $2E;X
L0009B0: db $2F;X
L0009B1: db $30;X
L0009B2: db $31;X
L0009B3: db $32
L0009B4: db $33
L0009B5: db $34
L0009B6: db $35;X
L0009B7: db $36
L0009B8: db $37
L0009B9: db $38
L0009BA: db $39
L0009BB: db $3A;X
L0009BC: db $3B;X
L0009BD: db $3C
L0009BE: db $3D
L0009BF: db $3E
L0009C0: db $3F
L0009C1:;C
	push hl
	add  a
	add  c
	ld   l, a
	ld   a, b
	adc  a, $00
	ld   h, a
	ldi  a, [hl]
	ld   b, [hl]
	ld   c, a
	pop  hl
	jp   L00078C
L0009D0:;CR
	ld   a, [bc]
	ld   l, a
	inc  bc
	ld   a, [bc]
	ld   h, a
	inc  bc
	cp   $FF
	jr   nz, L0009DC
	cp   l
	ret  z
L0009DC:;R
	call L0009E1
	jr   L0009D0
L0009E1:;C
	push hl
	ld   a, [bc]
	inc  bc
	ld   e, a
	push de
L0009E6:;R
	ld   a, [bc]
	ldi  [hl], a
	inc  bc
	dec  e
	jr   nz, L0009E6
	pop  de
	pop  hl
	ld   a, e
	jp   L0006A2
L0009F2: db $0A;X
L0009F3: db $6F;X
L0009F4: db $03;X
L0009F5: db $0A;X
L0009F6: db $67;X
L0009F7: db $03;X
L0009F8: db $FE;X
L0009F9: db $FF;X
L0009FA: db $20;X
L0009FB: db $02;X
L0009FC: db $BD;X
L0009FD: db $C8;X
L0009FE: db $CD;X
L0009FF: db $03;X
L000A00: db $0A;X
L000A01: db $18;X
L000A02: db $CD;X
L000A03: db $0A;X
L000A04: db $03;X
L000A05: db $5F;X
L000A06: db $0A;X
L000A07: db $22;X
L000A08: db $03;X
L000A09: db $1D;X
L000A0A: db $20;X
L000A0B: db $FA;X
L000A0C: db $C9;X
L000A0D:;C
	push bc
	ld   c, a
	swap a
	and  $0F
	add  $80
	ldi  [hl], a
	ld   a, c
	and  $0F
	add  $80
	ldd  [hl], a
	pop  bc
	ld   a, $02
	jp   L0006A2
L000A22: db $E6;X
L000A23: db $0F;X
L000A24: db $C6;X
L000A25: db $80;X
L000A26: db $77;X
L000A27: db $3E;X
L000A28: db $02;X
L000A29: db $C3;X
L000A2A: db $A2;X
L000A2B: db $06;X
L000A2C:;J
	push bc
	push de
	call L000A51
	pop  de
	pop  bc
	ret
L000A34: db $FE;X
L000A35: db $64;X
L000A36: db $38;X
L000A37: db $02;X
L000A38: db $3E;X
L000A39: db $63;X
L000A3A: db $CD;X
L000A3B: db $C2;X
L000A3C: db $0F;X
L000A3D: db $E5;X
L000A3E: db $F0;X
L000A3F: db $C6;X
L000A40: db $A7;X
L000A41: db $28;X
L000A42: db $02;X
L000A43: db $C6;X
L000A44: db $80;X
L000A45: db $22;X
L000A46: db $F0;X
L000A47: db $C7;X
L000A48: db $C6;X
L000A49: db $80;X
L000A4A: db $77;X
L000A4B: db $E1;X
L000A4C: db $3E;X
L000A4D: db $02;X
L000A4E: db $C3;X
L000A4F: db $A2;X
L000A50: db $06;X
L000A51:;C
	call L000FC2
	push hl
	ld   bc, $FFC5
	ld   e, $03
L000A5A:;R
	ld   a, [bc]
	and  a
	jr   nz, L000A69
	ldi  [hl], a
	inc  c
	dec  e
	jr   nz, L000A5A
L000A63: db $2D;X
L000A64: db $36;X
L000A65: db $80;X
L000A66: db $18;X
L000A67: db $08;X
L000A68: db $0A;X
L000A69:;R
	add  $80
	ldi  [hl], a
	inc  c
	dec  e
	jr   nz, L000A68
	pop  hl
	ld   a, $03
	jp   L0006A2
L000A76: db $F0;X
L000A77: db $B4;X
L000A78: db $FE;X
L000A79: db $27;X
L000A7A: db $38;X
L000A7B: db $10;X
L000A7C: db $20;X
L000A7D: db $06;X
L000A7E: db $F0;X
L000A7F: db $B3;X
L000A80: db $FE;X
L000A81: db $0F;X
L000A82: db $38;X
L000A83: db $08;X
L000A84: db $3E;X
L000A85: db $0F;X
L000A86: db $E0;X
L000A87: db $B3;X
L000A88: db $3E;X
L000A89: db $27;X
L000A8A: db $E0;X
L000A8B: db $B4;X
L000A8C: db $97;X
L000A8D: db $E0;X
L000A8E: db $B5;X
L000A8F: db $E5;X
L000A90: db $CD;X
L000A91: db $F8;X
L000A92: db $0E;X
L000A93: db $E1;X
L000A94: db $E5;X
L000A95: db $01;X
L000A96: db $C4;X
L000A97: db $FF;X
L000A98: db $1E;X
L000A99: db $04;X
L000A9A: db $0A;X
L000A9B: db $A7;X
L000A9C: db $20;X
L000A9D: db $0B;X
L000A9E: db $22;X
L000A9F: db $0C;X
L000AA0: db $1D;X
L000AA1: db $20;X
L000AA2: db $F7;X
L000AA3: db $2D;X
L000AA4: db $36;X
L000AA5: db $80;X
L000AA6: db $18;X
L000AA7: db $08;X
L000AA8: db $0A;X
L000AA9: db $C6;X
L000AAA: db $80;X
L000AAB: db $22;X
L000AAC: db $0C;X
L000AAD: db $1D;X
L000AAE: db $20;X
L000AAF: db $F8;X
L000AB0: db $E1;X
L000AB1: db $3E;X
L000AB2: db $04;X
L000AB3: db $C3;X
L000AB4: db $A2;X
L000AB5: db $06;X
L000AB6: db $97;X
L000AB7: db $E0;X
L000AB8: db $B5;X
L000AB9: db $E5;X
L000ABA: db $CD;X
L000ABB: db $F8;X
L000ABC: db $0E;X
L000ABD: db $E1;X
L000ABE: db $E5;X
L000ABF: db $01;X
L000AC0: db $C3;X
L000AC1: db $FF;X
L000AC2: db $1E;X
L000AC3: db $05;X
L000AC4: db $0A;X
L000AC5: db $A7;X
L000AC6: db $20;X
L000AC7: db $0B;X
L000AC8: db $22;X
L000AC9: db $0C;X
L000ACA: db $1D;X
L000ACB: db $20;X
L000ACC: db $F7;X
L000ACD: db $2D;X
L000ACE: db $36;X
L000ACF: db $80;X
L000AD0: db $18;X
L000AD1: db $08;X
L000AD2: db $0A;X
L000AD3: db $C6;X
L000AD4: db $80;X
L000AD5: db $22;X
L000AD6: db $0C;X
L000AD7: db $1D;X
L000AD8: db $20;X
L000AD9: db $F8;X
L000ADA: db $E1;X
L000ADB: db $3E;X
L000ADC: db $05;X
L000ADD: db $C3;X
L000ADE: db $A2;X
L000ADF: db $06;X
L000AE0: db $E5;X
L000AE1: db $CD;X
L000AE2: db $F8;X
L000AE3: db $0E;X
L000AE4: db $E1;X
L000AE5: db $E5;X
L000AE6: db $01;X
L000AE7: db $C1;X
L000AE8: db $FF;X
L000AE9: db $1E;X
L000AEA: db $07;X
L000AEB: db $0A;X
L000AEC: db $A7;X
L000AED: db $20;X
L000AEE: db $0B;X
L000AEF: db $22;X
L000AF0: db $0C;X
L000AF1: db $1D;X
L000AF2: db $20;X
L000AF3: db $F7;X
L000AF4: db $2D;X
L000AF5: db $36;X
L000AF6: db $80;X
L000AF7: db $18;X
L000AF8: db $08;X
L000AF9: db $0A;X
L000AFA: db $C6;X
L000AFB: db $80;X
L000AFC: db $22;X
L000AFD: db $0C;X
L000AFE: db $1D;X
L000AFF: db $20;X
L000B00: db $F8;X
L000B01: db $E1;X
L000B02: db $3E;X
L000B03: db $07;X
L000B04: db $C3;X
L000B05: db $A2;X
L000B06: db $06;X
L000B07: db $F0;X
L000B08: db $8F;X
L000B09: db $CB;X
L000B0A: db $57;X
L000B0B: db $C8;X
L000B0C: db $F0;X
L000B0D: db $FB;X
L000B0E: db $6F;X
L000B0F: db $F0;X
L000B10: db $FA;X
L000B11: db $D6;X
L000B12: db $04;X
L000B13: db $E6;X
L000B14: db $3F;X
L000B15: db $F6;X
L000B16: db $C0;X
L000B17: db $BD;X
L000B18: db $20;X
L000B19: db $03;X
L000B1A: db $FB;X
L000B1B: db $18;X
L000B1C: db $EA;X
L000B1D: db $26;X
L000B1E: db $C4;X
L000B1F: db $71;X
L000B20: db $2C;X
L000B21: db $70;X
L000B22: db $2C;X
L000B23: db $F0;X
L000B24: db $90;X
L000B25: db $22;X
L000B26: db $2C;X
L000B27: db $7D;X
L000B28: db $E6;X
L000B29: db $3F;X
L000B2A: db $F6;X
L000B2B: db $C0;X
L000B2C: db $E0;X
L000B2D: db $FB;X
L000B2E: db $C9;X
L000B2F: db $F0;X
L000B30: db $8F;X
L000B31: db $CB;X
L000B32: db $57;X
L000B33: db $C8;X
L000B34: db $F0;X
L000B35: db $FB;X
L000B36: db $67;X
L000B37: db $F0;X
L000B38: db $FA;X
L000B39: db $BC;X
L000B3A: db $C0;X
L000B3B: db $F0;X
L000B3C: db $F8;X
L000B3D: db $67;X
L000B3E: db $F0;X
L000B3F: db $F9;X
L000B40: db $B4;X
L000B41: db $C9;X
L000B42: db $51;X
L000B43: db $00;X
L000B44: db $00;X
L000B45: db $00;X
L000B46: db $00;X
L000B47: db $00;X
L000B48: db $00;X
L000B49: db $00;X
L000B4A: db $00;X
L000B4B: db $80;X
L000B4C: db $00;X
L000B4D: db $00;X
L000B4E: db $00;X
L000B4F: db $00;X
L000B50: db $00;X
L000B51: db $00;X
L000B52:;JC
	sub  a
	ld   [$C145], a
	ld   hl, $C140
	ld   [hl], $01
	inc  l
	ld   [hl], $00
	inc  l
	ld   [hl], c
	inc  l
	ld   [hl], b
	ldh  a, [hROMBank]
	inc  l
	ld   [hl], a
	ld   hl, $0B72
	ld   b, $00
	call L001E87
	ret
L000B6F:;JR
	call L001EF3
L000B72:;I
	ld   hl, $C140
	ld   c, [hl]
	inc  l
	ld   b, [hl]
	bit  6, b
	jr   z, L000B85
L000B7C: db $F0;X
L000B7D: db $A8;X
L000B7E: db $E6;X
L000B7F: db $0B;X
L000B80: db $28;X
L000B81: db $03;X
L000B82: db $01;X
L000B83: db $01;X
L000B84: db $00;X
L000B85:;R
	dec  bc
	ld   [hl], b
	dec  l
	ld   [hl], c
	ld   a, b
	and  $3F
	or   c
	ret  nz
	inc  l
	inc  l
	ld   c, [hl]
	inc  l
	ld   b, [hl]
	inc  l
	ld   a, [hl]
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
L000B9A:;R
	ld   a, [bc]
	inc  bc
	and  a
	jr   nz, L000BA7
	ld   a, $FF
	ld   [$C145], a
	jp   L001ECD
L000BA7:;R
	cp   $03
	jr   z, L000BCA
	jr   nc, L000BCF
	cp   $02
	jr   z, L000BC5
	ld   a, [bc]
	ld   [$C140], a
	inc  bc
	ld   a, [bc]
	ld   [$C141], a
	inc  bc
	ld   a, c
	ld   [$C142], a
	ld   a, b
	ld   [$C143], a
	jr   L000B6F
L000BC5: db $CD;X
L000BC6: db $80;X
L000BC7: db $07;X
L000BC8: db $18;X
L000BC9: db $D0;X
L000BCA:;R
	call L00083F
	jr   L000B9A
L000BCF:;R
	cp   $05
	jr   z, L000C17
	push de
	ld   h, b
	ld   l, c
	ldi  a, [hl]
	ld   [$C140], a
	sub  a
	ld   [$C141], a
	ldi  a, [hl]
	ld   e, a
	ldi  a, [hl]
	ld   d, a
	ldi  a, [hl]
	ld   c, a
	ldi  a, [hl]
	ld   b, a
	ld   a, l
	ld   [$C142], a
	ld   a, h
	ld   [$C143], a
	ld   l, e
	ld   h, d
	ld   e, b
L000BF1:;R
	push hl
	sub  a
L000BF3:;R
	ldi  [hl], a
	dec  b
	jr   nz, L000BF3
	pop  hl
	push hl
	ld   a, e
	call L0006A2
	pop  hl
	ld   a, l
	add  $20
	ld   l, a
	ld   a, h
	adc  a, $00
	ld   h, a
	dec  c
	jr   nz, L000BF1
	pop  de
	ld   a, [$C140]
	and  a
	jp   nz, L000B6F
L000C11: db $21;X
L000C12: db $42;X
L000C13: db $C1;X
L000C14: db $C3;X
L000C15: db $90;X
L000C16: db $0B;X
L000C17: db $0A;X
L000C18: db $EA;X
L000C19: db $45;X
L000C1A: db $C1;X
L000C1B: db $03;X
L000C1C: db $C3;X
L000C1D: db $9A;X
L000C1E: db $0B;X
L000C1F:;C
	ld   a, [hl]
	and  $07
	ret  z
	ld   b, a
	ld   c, $00
	push bc
	push de
	ld   a, $00
	ld   [c], a
	ld   a, $30
	ld   [c], a
	ld   b, $10
L000C30:;R
	ld   e, $08
	ldi  a, [hl]
	ld   d, a
L000C34:;R
	bit  0, d
	ld   a, $10
	jr   nz, L000C3C
	ld   a, $20
L000C3C:;R
	ld   [c], a
	ld   a, $30
	ld   [c], a
	rr   d
	dec  e
	jr   nz, L000C34
	dec  b
	jr   nz, L000C30
	ld   a, $20
	ld   [c], a
	ld   a, $30
	ld   [c], a
	pop  de
	pop  bc
	dec  b
	ret  z
L000C52: db $CD;X
L000C53: db $57;X
L000C54: db $0C;X
L000C55: db $18;X
L000C56: db $CF;X
L000C57:;C
	push de
	ld   de, $1B58
L000C5B:;R
	nop  
	nop  
	nop  
	dec  de
	ld   a, d
	or   e
	jr   nz, L000C5B
	pop  de
	ret
L000C65:;C
	ld   hl, $0CB4
	call L000C1F
	call L000C57
	ldh  a, [rJOYP]
	and  $03
	cp   $03
	jr   nz, L000CA2
	ld   a, $20
	ldh  [rJOYP], a
	ldh  a, [rJOYP]
	ldh  a, [rJOYP]
	ld   a, $10
	ldh  [rJOYP], a
	ldh  a, [rJOYP]
	ldh  a, [rJOYP]
	ldh  a, [rJOYP]
	ldh  a, [rJOYP]
	ldh  a, [rJOYP]
	ldh  a, [rJOYP]
	ld   a, $30
	ldh  [rJOYP], a
	ldh  a, [rJOYP]
	ldh  a, [rJOYP]
	ldh  a, [rJOYP]
	ldh  a, [rJOYP]
	and  $03
	cp   $03
	jr   nz, L000CA2
	sub  a
	ret
L000CA2: db $37;X
L000CA3: db $C9;X
L000CA4: db $89;X
L000CA5: db $00;X
L000CA6: db $00;X
L000CA7: db $00;X
L000CA8: db $00;X
L000CA9: db $00;X
L000CAA: db $00;X
L000CAB: db $00;X
L000CAC: db $00;X
L000CAD: db $00;X
L000CAE: db $00;X
L000CAF: db $00;X
L000CB0: db $00;X
L000CB1: db $00;X
L000CB2: db $00;X
L000CB3: db $00;X
L000CB4: db $89
L000CB5: db $01
L000CB6: db $00
L000CB7: db $00
L000CB8: db $00
L000CB9: db $00
L000CBA: db $00
L000CBB: db $00
L000CBC: db $00
L000CBD: db $00
L000CBE: db $00
L000CBF: db $00
L000CC0: db $00
L000CC1: db $00
L000CC2: db $00
L000CC3: db $00
L000CC4:;C
	ld   a, [$B002]
	cp   $AC
	jr   nz, L000CD2
L000CCB: db $FA;X
L000CCC: db $03;X
L000CCD: db $B0;X
L000CCE: db $FE;X
L000CCF: db $53;X
L000CD0: db $28;X
L000CD1: db $02;X
L000CD2:;R
	scf  
	ret
L000CD4: db $C5;X
L000CD5: db $D5;X
L000CD6: db $E5;X
L000CD7: db $21;X
L000CD8: db $02;X
L000CD9: db $B0;X
L000CDA: db $06;X
L000CDB: db $EE;X
L000CDC: db $11;X
L000CDD: db $00;X
L000CDE: db $00;X
L000CDF: db $2A;X
L000CE0: db $83;X
L000CE1: db $5F;X
L000CE2: db $7A;X
L000CE3: db $CE;X
L000CE4: db $00;X
L000CE5: db $57;X
L000CE6: db $05;X
L000CE7: db $20;X
L000CE8: db $F6;X
L000CE9: db $FA;X
L000CEA: db $00;X
L000CEB: db $B0;X
L000CEC: db $BB;X
L000CED: db $20;X
L000CEE: db $06;X
L000CEF: db $FA;X
L000CF0: db $01;X
L000CF1: db $B0;X
L000CF2: db $BA;X
L000CF3: db $28;X
L000CF4: db $01;X
L000CF5: db $37;X
L000CF6: db $E1;X
L000CF7: db $D1;X
L000CF8: db $C1;X
L000CF9: db $C9;X
L000CFA:;JC
	ld   a, $AC
	ld   [$B002], a
	ld   a, $53
	ld   [$B003], a
	push bc
	push de
	push hl
	ld   hl, $B002
	ld   b, $EE
	ld   de, $0000
L000D0F:;R
	ldi  a, [hl]
	add  e
	ld   e, a
	ld   a, d
	adc  a, $00
	ld   d, a
	dec  b
	jr   nz, L000D0F
	ld   a, e
	ld   [$B000], a
	ld   a, d
	ld   [$B001], a
	pop  hl
	pop  de
	pop  bc
	ret
L000D25:;C
	ld   a, [$B370]
	cp   $AC
	jr   nz, L000D33
L000D2C: db $FA;X
L000D2D: db $71;X
L000D2E: db $B3;X
L000D2F: db $FE;X
L000D30: db $53;X
L000D31: db $28;X
L000D32: db $02;X
L000D33:;R
	scf  
	ret
L000D35: db $C5;X
L000D36: db $D5;X
L000D37: db $E5;X
L000D38: db $21;X
L000D39: db $00;X
L000D3A: db $B2;X
L000D3B: db $01;X
L000D3C: db $72;X
L000D3D: db $01;X
L000D3E: db $11;X
L000D3F: db $00;X
L000D40: db $00;X
L000D41: db $2A;X
L000D42: db $83;X
L000D43: db $5F;X
L000D44: db $7A;X
L000D45: db $CE;X
L000D46: db $00;X
L000D47: db $57;X
L000D48: db $0B;X
L000D49: db $79;X
L000D4A: db $B0;X
L000D4B: db $20;X
L000D4C: db $F4;X
L000D4D: db $FA;X
L000D4E: db $72;X
L000D4F: db $B3;X
L000D50: db $BB;X
L000D51: db $20;X
L000D52: db $06;X
L000D53: db $FA;X
L000D54: db $73;X
L000D55: db $B3;X
L000D56: db $BA;X
L000D57: db $28;X
L000D58: db $01;X
L000D59: db $37;X
L000D5A: db $E1;X
L000D5B: db $D1;X
L000D5C: db $C1;X
L000D5D: db $C9;X
L000D5E:;JC
	ld   a, $AC
	ld   [$B370], a
	ld   a, $53
	ld   [$B371], a
	push bc
	push de
	push hl
	ld   hl, $B200
	ld   bc, $0172
	ld   de, $0000
L000D74:;R
	ldi  a, [hl]
	add  e
	ld   e, a
	ld   a, d
	adc  a, $00
	ld   d, a
	dec  bc
	ld   a, c
	or   b
	jr   nz, L000D74
	ld   a, e
	ld   [$B372], a
	ld   a, d
	ld   [$B373], a
	pop  hl
	pop  de
	pop  bc
	ret
L000D8C: db $87;X
L000D8D: db $E1;X
L000D8E: db $85;X
L000D8F: db $6F;X
L000D90: db $7C;X
L000D91: db $CE;X
L000D92: db $00;X
L000D93: db $67;X
L000D94: db $2A;X
L000D95: db $66;X
L000D96: db $6F;X
L000D97: db $E9;X
L000D98:;C
	push de
	push hl
	ld   hl, $C018
	adc  a, [hl]
	ld   e, a
	inc  l
	ld   d, [hl]
	ld   l, e
	ld   h, d
	add  hl, hl
	add  hl, de
	add  hl, hl
	add  hl, de
	ld   de, $0001
	add  hl, de
	ld   a, l
	ld   [$C018], a
	ld   a, h
	ld   [$C019], a
	pop  hl
	pop  de
	ret
L000DB6:;C
	push bc
	push hl
	ld   b, a
	call L000D98
	ld   c, a
	ld   a, b
	ld   hl, $0000
	ld   b, h
L000DC2:;R
	add  hl, bc
	dec  a
	jr   nz, L000DC2
	ld   a, h
	pop  hl
	pop  bc
	ret
L000DCA:;C
	push bc
	push de
	push hl
	ld   c, a
	call L000D98
	call L000DD9
	ld   a, h
	pop  hl
	pop  de
	pop  bc
	ret
L000DD9:;C
	ld   hl, $0000
	ld   b, h
	ld   e, $08
L000DDF:;R
	rrca 
	jr   nc, L000DE3
	add  hl, bc
L000DE3:;R
	sla  c
	rl   b
	dec  e
	jr   nz, L000DDF
	ret
L000DEB:;C
	ld   hl, $0000
	ld   e, $08
L000DF0:;R
	rrca 
	jr   nc, L000DF4
	add  hl, bc
L000DF4:;R
	sla  c
	rl   b
	dec  e
	jr   nz, L000DF0
	ret
L000DFC:;C
	ld   e, a
	sub  a
	ld   l, a
	ld   h, a
	ld   d, $08
L000E02:;R
	srl  e
	jr   nc, L000E07
	add  hl, bc
L000E07:;R
	rr   h
	rr   l
	rr   a
	dec  d
	jr   nz, L000E02
	ret
L000E11:;C
	ld   e, l
	ld   d, h
	push de
	sub  a
	ld   l, a
	ld   h, a
	ld   d, $08
L000E19:;R
	srl  e
	jr   nc, L000E1E
	add  hl, bc
L000E1E:;R
	rr   h
	rr   l
	rr   a
	dec  d
	jr   nz, L000E19
	pop  de
	ldh  [$FFD0], a
	sub  a
	cp   d
	jr   z, L000E47
L000E2E: db $1E;X
L000E2F: db $08;X
L000E30: db $CB;X
L000E31: db $3A;X
L000E32: db $30;X
L000E33: db $01;X
L000E34: db $09;X
L000E35: db $CB;X
L000E36: db $1C;X
L000E37: db $CB;X
L000E38: db $1D;X
L000E39: db $CB;X
L000E3A: db $1F;X
L000E3B: db $1D;X
L000E3C: db $20;X
L000E3D: db $F2;X
L000E3E: db $E0;X
L000E3F: db $D1;X
L000E40: db $7D;X
L000E41: db $E0;X
L000E42: db $D2;X
L000E43: db $7C;X
L000E44: db $E0;X
L000E45: db $D3;X
L000E46: db $C9;X
L000E47:;R
	ldh  [$FFD3], a
	ld   a, l
	ldh  [$FFD1], a
	ld   a, h
	ldh  [$FFD2], a
	ret
L000E50:;C
	ld   h, a
	sub  a
	ld   l, $08
L000E54:;R
	sla  b
	rl   a
	cp   h
	jr   c, L000E5D
L000E5B: db $94;X
L000E5C: db $04;X
L000E5D:;R
	dec  l
	jr   nz, L000E54
	ld   l, $08
L000E62:;R
	sla  c
	rl   a
	jr   c, L000E6B
	cp   h
	jr   c, L000E6D
L000E6B:;X
	sub  h
	inc  c
L000E6D:;R
	dec  l
	jr   nz, L000E62
	ret
L000E71: db $C6;X
L000E72: db $40;X
L000E73:;C
	ld   e, a
	and  $7F
	ld   l, a
	ld   h, $2F
	ld   a, [hl]
	and  a
	jr   z, L000E8D
	push de
	call L000DD9
	pop  de
	bit  7, e
	ret  z
	sub  a
	sub  l
	ld   l, a
	ld   a, $00
	sbc  h
	ld   h, a
	ret
L000E8D:;R
	cp   l
	jr   z, L000E9A
	ld   h, c
	ld   l, $00
	bit  7, e
	ret  z
	sub  a
	sub  h
	ld   h, a
	ret
L000E9A:;R
	ld   h, l
	ret
L000E9C:;C
	add  $40
L000E9E:;C
	ld   e, a
	and  $7F
	ld   l, a
	ld   h, $2F
	ld   a, [hl]
	and  a
	jr   z, L000EBC
	push de
	call L000DFC
	ld   c, a
	pop  de
	bit  7, e
	ret  z
	sub  a
	ld   b, a
	sub  c
	ld   c, a
	ld   a, b
	sbc  l
	ld   l, a
	ld   a, b
	sbc  h
	ld   h, a
	ret
L000EBC:;R
	cp   l
	jr   z, L000ECD
	ld   h, b
	ld   l, c
	ld   c, $00
	bit  7, e
	ret  z
	sub  a
	sub  l
	ld   l, a
	ld   a, c
	sbc  h
	ld   h, a
	ret
L000ECD:;R
	ld   c, l
	ld   h, l
	ret
L000ED0:;C
	add  $40
L000ED2:;C
	ld   b, a
	and  $7F
	jr   z, L000EF5
	ld   l, a
	ld   h, $2F
	ld   a, [hl]
	and  a
	jr   z, L000EEC
	bit  7, b
	jr   z, L000EE8
	cpl  
	inc  a
	ld   c, a
	ld   b, $FF
	ret
L000EE8:;R
	ld   c, a
	ld   b, $00
	ret
L000EEC:;R
	ld   c, a
	bit  7, b
	ld   b, $01
	ret  z
	ld   b, $FF
	ret
L000EF5:;R
	ld   b, a
	ld   c, a
	ret
L000EF8:;C
	ld   hl, $FFB3
	ldh  a, [$FFB5]
	and  a
	jr   nz, L000F22
	ldh  [$FFC1], a
	ldh  [$FFC2], a
	ld   bc, $2710
	ld   e, $00
	jr   L000F0D
L000F0B: db $32;X
L000F0C: db $1C;X
L000F0D:;R
	ld   a, [hl]
	sub  c
	ldi  [hl], a
	ld   a, [hl]
	sbc  b
	jr   nc, L000F0B
	dec  l
	ld   a, [hl]
	add  c
	ld   [hl], a
	ld   a, e
	ldh  [$FFC3], a
	ld   bc, $03E8
	ld   e, $00
	jr   L000F8B
L000F22: db $01;X
L000F23: db $40;X
L000F24: db $42;X
L000F25: db $1E;X
L000F26: db $00;X
L000F27: db $18;X
L000F28: db $03;X
L000F29: db $32;X
L000F2A: db $2D;X
L000F2B: db $1C;X
L000F2C: db $7E;X
L000F2D: db $91;X
L000F2E: db $22;X
L000F2F: db $7E;X
L000F30: db $98;X
L000F31: db $22;X
L000F32: db $7E;X
L000F33: db $DE;X
L000F34: db $0F;X
L000F35: db $30;X
L000F36: db $F2;X
L000F37: db $2D;X
L000F38: db $2D;X
L000F39: db $7E;X
L000F3A: db $81;X
L000F3B: db $22;X
L000F3C: db $7E;X
L000F3D: db $88;X
L000F3E: db $32;X
L000F3F: db $7B;X
L000F40: db $E0;X
L000F41: db $C1;X
L000F42: db $01;X
L000F43: db $A0;X
L000F44: db $86;X
L000F45: db $1E;X
L000F46: db $00;X
L000F47: db $18;X
L000F48: db $03;X
L000F49: db $32;X
L000F4A: db $2D;X
L000F4B: db $1C;X
L000F4C: db $7E;X
L000F4D: db $91;X
L000F4E: db $22;X
L000F4F: db $7E;X
L000F50: db $98;X
L000F51: db $22;X
L000F52: db $7E;X
L000F53: db $DE;X
L000F54: db $01;X
L000F55: db $30;X
L000F56: db $F2;X
L000F57: db $2D;X
L000F58: db $2D;X
L000F59: db $7E;X
L000F5A: db $81;X
L000F5B: db $22;X
L000F5C: db $7E;X
L000F5D: db $88;X
L000F5E: db $32;X
L000F5F: db $7B;X
L000F60: db $E0;X
L000F61: db $C2;X
L000F62: db $01;X
L000F63: db $10;X
L000F64: db $27;X
L000F65: db $1E;X
L000F66: db $00;X
L000F67: db $18;X
L000F68: db $03;X
L000F69: db $32;X
L000F6A: db $2D;X
L000F6B: db $1C;X
L000F6C: db $7E;X
L000F6D: db $91;X
L000F6E: db $22;X
L000F6F: db $7E;X
L000F70: db $98;X
L000F71: db $22;X
L000F72: db $7E;X
L000F73: db $DE;X
L000F74: db $00;X
L000F75: db $30;X
L000F76: db $F2;X
L000F77: db $2D;X
L000F78: db $2D;X
L000F79: db $7E;X
L000F7A: db $81;X
L000F7B: db $22;X
L000F7C: db $7E;X
L000F7D: db $88;X
L000F7E: db $32;X
L000F7F: db $7B;X
L000F80: db $E0;X
L000F81: db $C3;X
L000F82: db $01;X
L000F83: db $E8;X
L000F84: db $03;X
L000F85: db $1E;X
L000F86: db $00;X
L000F87: db $18;X
L000F88: db $02;X
L000F89:;R
	ldd  [hl], a
	inc  e
L000F8B:;R
	ld   a, [hl]
	sub  c
	ldi  [hl], a
	ld   a, [hl]
	sbc  b
	jr   nc, L000F89
	dec  l
	ld   a, [hl]
	add  c
	ld   [hl], a
	ld   a, e
	ldh  [$FFC4], a
	ld   bc, $0A64
	ld   e, $00
	jr   L000FA2
L000FA0:;R
	ldd  [hl], a
	inc  e
L000FA2:;R
	ld   a, [hl]
	sub  c
	ldi  [hl], a
	ld   a, [hl]
	sbc  $00
	jr   nc, L000FA0
	dec  l
	ld   a, [hl]
	add  c
	ld   [hl], a
	ld   a, e
	ldh  [$FFC5], a
	ld   e, $00
	jr   L000FB7
L000FB5:;R
	ld   [hl], a
	inc  e
L000FB7:;R
	ld   a, [hl]
	sub  b
	jr   nc, L000FB5
	add  b
	ldh  [$FFC7], a
	ld   a, e
	ldh  [$FFC6], a
	ret
L000FC2:;C
	ld   b, $00
	ld   c, b
	jr   L000FC8
L000FC7: db $04;X
L000FC8:;R
	sub  $64
	jr   nc, L000FC7
	add  $64
	jr   L000FD1
L000FD0: db $0C;X
L000FD1:;R
	sub  $0A
	jr   nc, L000FD0
	add  $0A
	ldh  [$FFC7], a
	ld   a, b
	ldh  [$FFC5], a
	ld   a, c
	ldh  [$FFC6], a
	ret
L000FE0:;C
	sub  a
	ld   hl, $C6B0
	cp   [hl]
	call nz, L001072
	ld   hl, $C6B5
	cp   [hl]
	call nz, L001072
	ld   hl, $C6BA
	cp   [hl]
	call nz, L001072
	ldh  a, [$FF93]
	ld   hl, $FF94
	cp   [hl]
	jr   z, L00101A
	ld   l, a
L000FFF:;R
	ld   h, $C5
	ld   b, [hl]
	inc  l
	ld   d, [hl]
	inc  l
	ld   e, [hl]
	inc  l
	ld   c, l
	ld   l, e
	ld   h, d
	res  6, d
L00100C:;R
	ldi  a, [hl]
	ld   [de], a
	inc  e
	dec  b
	jr   nz, L00100C
	ld   l, c
	ldh  a, [$FF94]
	cp   l
	jr   nz, L000FFF
	ldh  [$FF93], a
L00101A:;R
	ldh  a, [$FFAD]
	and  $0C
	ldh  [rIE], a
	ldh  a, [$FF95]
	ld   l, a
	ld   b, $20
L001025:;R
	ld   h, $C4
L001027:;R
	ld   d, [hl]
	bit  7, d
	jr   nz, L001039
	inc  l
	inc  l
	res  6, l
	dec  b
	jr   nz, L001027
L001033:;R
	ei   
	ld   a, l
	ldh  [$FF95], a
	jr   L001069
L001039:;R
	di   
	ldh  a, [rLY]
	cp   $99
	jr   nc, L001033
	cp   $90
	jr   c, L001033
	res  7, [hl]
	inc  l
	ld   e, [hl]
	inc  l
	ld   c, l
	ld   l, e
	ld   h, d
	res  6, d
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	ei   
	ld   l, c
	res  6, l
	dec  b
	jr   nz, L001025
	ld   a, l
	ldh  [$FF95], a
L001069:;R
	ldh  a, [$FF8A]
	ldh  [rLCDC], a
	ld   a, $3C
	ldh  [$FF92], a
	ret
L001072:;C
	ld   d, [hl]
	ldi  [hl], a
	ld   e, [hl]
	inc  l
	ldi  a, [hl]
	ld   c, [hl]
	inc  l
	ld   b, [hl]
	ld   h, a
	ld   l, c
L00107C:;R
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  de
	dec  b
	jr   nz, L00107C
	sub  a
	ret
L0010B1: db $97;X
L0010B2: db $21;X
L0010B3: db $B0;X
L0010B4: db $C6;X
L0010B5: db $BE;X
L0010B6: db $C4;X
L0010B7: db $90;X
L0010B8: db $11;X
L0010B9: db $21;X
L0010BA: db $B5;X
L0010BB: db $C6;X
L0010BC: db $BE;X
L0010BD: db $C4;X
L0010BE: db $90;X
L0010BF: db $11;X
L0010C0: db $21;X
L0010C1: db $BA;X
L0010C2: db $C6;X
L0010C3: db $BE;X
L0010C4: db $C4;X
L0010C5: db $90;X
L0010C6: db $11;X
L0010C7: db $F0;X
L0010C8: db $93;X
L0010C9: db $21;X
L0010CA: db $94;X
L0010CB: db $FF;X
L0010CC: db $BE;X
L0010CD: db $28;X
L0010CE: db $45;X
L0010CF: db $6F;X
L0010D0: db $26;X
L0010D1: db $C5;X
L0010D2: db $46;X
L0010D3: db $2C;X
L0010D4: db $56;X
L0010D5: db $2C;X
L0010D6: db $5E;X
L0010D7: db $2C;X
L0010D8: db $4D;X
L0010D9: db $6B;X
L0010DA: db $62;X
L0010DB: db $CB;X
L0010DC: db $B2;X
L0010DD: db $2A;X
L0010DE: db $12;X
L0010DF: db $1C;X
L0010E0: db $05;X
L0010E1: db $20;X
L0010E2: db $FA;X
L0010E3: db $69;X
L0010E4: db $F0;X
L0010E5: db $94;X
L0010E6: db $BD;X
L0010E7: db $20;X
L0010E8: db $E7;X
L0010E9: db $3E;X
L0010EA: db $01;X
L0010EB: db $E0;X
L0010EC: db $4F;X
L0010ED: db $3C;X
L0010EE: db $E0;X
L0010EF: db $70;X
L0010F0: db $F0;X
L0010F1: db $93;X
L0010F2: db $6F;X
L0010F3: db $26;X
L0010F4: db $C5;X
L0010F5: db $46;X
L0010F6: db $2C;X
L0010F7: db $56;X
L0010F8: db $2C;X
L0010F9: db $5E;X
L0010FA: db $2C;X
L0010FB: db $4D;X
L0010FC: db $6B;X
L0010FD: db $62;X
L0010FE: db $CB;X
L0010FF: db $B2;X
L001100: db $2A;X
L001101: db $12;X
L001102: db $1C;X
L001103: db $05;X
L001104: db $20;X
L001105: db $FA;X
L001106: db $69;X
L001107: db $F0;X
L001108: db $94;X
L001109: db $BD;X
L00110A: db $20;X
L00110B: db $E7;X
L00110C: db $E0;X
L00110D: db $93;X
L00110E: db $97;X
L00110F: db $E0;X
L001110: db $4F;X
L001111: db $3C;X
L001112: db $E0;X
L001113: db $70;X
L001114: db $F0;X
L001115: db $AD;X
L001116: db $E6;X
L001117: db $0C;X
L001118: db $E0;X
L001119: db $FF;X
L00111A: db $F0;X
L00111B: db $95;X
L00111C: db $6F;X
L00111D: db $06;X
L00111E: db $20;X
L00111F: db $26;X
L001120: db $C4;X
L001121: db $56;X
L001122: db $CB;X
L001123: db $7A;X
L001124: db $20;X
L001125: db $0D;X
L001126: db $2C;X
L001127: db $2C;X
L001128: db $CB;X
L001129: db $B5;X
L00112A: db $05;X
L00112B: db $20;X
L00112C: db $F4;X
L00112D: db $FB;X
L00112E: db $7D;X
L00112F: db $E0;X
L001130: db $95;X
L001131: db $18;X
L001132: db $54;X
L001133: db $F3;X
L001134: db $F0;X
L001135: db $44;X
L001136: db $FE;X
L001137: db $99;X
L001138: db $30;X
L001139: db $F3;X
L00113A: db $FE;X
L00113B: db $90;X
L00113C: db $38;X
L00113D: db $EF;X
L00113E: db $CB;X
L00113F: db $BE;X
L001140: db $2C;X
L001141: db $5E;X
L001142: db $2C;X
L001143: db $4D;X
L001144: db $D5;X
L001145: db $6B;X
L001146: db $62;X
L001147: db $CB;X
L001148: db $B2;X
L001149: db $2A;X
L00114A: db $12;X
L00114B: db $1C;X
L00114C: db $2A;X
L00114D: db $12;X
L00114E: db $1C;X
L00114F: db $2A;X
L001150: db $12;X
L001151: db $1C;X
L001152: db $2A;X
L001153: db $12;X
L001154: db $1C;X
L001155: db $2A;X
L001156: db $12;X
L001157: db $1C;X
L001158: db $2A;X
L001159: db $12;X
L00115A: db $D1;X
L00115B: db $3E;X
L00115C: db $01;X
L00115D: db $E0;X
L00115E: db $4F;X
L00115F: db $3C;X
L001160: db $E0;X
L001161: db $70;X
L001162: db $6B;X
L001163: db $62;X
L001164: db $CB;X
L001165: db $B2;X
L001166: db $2A;X
L001167: db $12;X
L001168: db $1C;X
L001169: db $2A;X
L00116A: db $12;X
L00116B: db $1C;X
L00116C: db $2A;X
L00116D: db $12;X
L00116E: db $1C;X
L00116F: db $2A;X
L001170: db $12;X
L001171: db $1C;X
L001172: db $2A;X
L001173: db $12;X
L001174: db $1C;X
L001175: db $2A;X
L001176: db $12;X
L001177: db $97;X
L001178: db $E0;X
L001179: db $4F;X
L00117A: db $3C;X
L00117B: db $E0;X
L00117C: db $70;X
L00117D: db $FB;X
L00117E: db $69;X
L00117F: db $CB;X
L001180: db $B5;X
L001181: db $05;X
L001182: db $20;X
L001183: db $9B;X
L001184: db $7D;X
L001185: db $E0;X
L001186: db $95;X
L001187: db $F0;X
L001188: db $8A;X
L001189: db $E0;X
L00118A: db $40;X
L00118B: db $3E;X
L00118C: db $3C;X
L00118D: db $E0;X
L00118E: db $92;X
L00118F: db $C9;X
L001190: db $56;X
L001191: db $22;X
L001192: db $7A;X
L001193: db $FE;X
L001194: db $A0;X
L001195: db $30;X
L001196: db $1C;X
L001197: db $E0;X
L001198: db $53;X
L001199: db $2A;X
L00119A: db $E0;X
L00119B: db $54;X
L00119C: db $2A;X
L00119D: db $E0;X
L00119E: db $51;X
L00119F: db $2A;X
L0011A0: db $E0;X
L0011A1: db $52;X
L0011A2: db $7E;X
L0011A3: db $47;X
L0011A4: db $07;X
L0011A5: db $E6;X
L0011A6: db $01;X
L0011A7: db $E0;X
L0011A8: db $4F;X
L0011A9: db $78;X
L0011AA: db $E6;X
L0011AB: db $0F;X
L0011AC: db $3D;X
L0011AD: db $E0;X
L0011AE: db $55;X
L0011AF: db $97;X
L0011B0: db $E0;X
L0011B1: db $4F;X
L0011B2: db $C9;X
L0011B3: db $5E;X
L0011B4: db $2C;X
L0011B5: db $2A;X
L0011B6: db $4E;X
L0011B7: db $2C;X
L0011B8: db $46;X
L0011B9: db $67;X
L0011BA: db $69;X
L0011BB: db $2A;X
L0011BC: db $12;X
L0011BD: db $1C;X
L0011BE: db $2A;X
L0011BF: db $12;X
L0011C0: db $1C;X
L0011C1: db $2A;X
L0011C2: db $12;X
L0011C3: db $1C;X
L0011C4: db $2A;X
L0011C5: db $12;X
L0011C6: db $1C;X
L0011C7: db $2A;X
L0011C8: db $12;X
L0011C9: db $1C;X
L0011CA: db $2A;X
L0011CB: db $12;X
L0011CC: db $1C;X
L0011CD: db $2A;X
L0011CE: db $12;X
L0011CF: db $1C;X
L0011D0: db $2A;X
L0011D1: db $12;X
L0011D2: db $1C;X
L0011D3: db $2A;X
L0011D4: db $12;X
L0011D5: db $1C;X
L0011D6: db $2A;X
L0011D7: db $12;X
L0011D8: db $1C;X
L0011D9: db $2A;X
L0011DA: db $12;X
L0011DB: db $1C;X
L0011DC: db $2A;X
L0011DD: db $12;X
L0011DE: db $1C;X
L0011DF: db $2A;X
L0011E0: db $12;X
L0011E1: db $1C;X
L0011E2: db $2A;X
L0011E3: db $12;X
L0011E4: db $1C;X
L0011E5: db $2A;X
L0011E6: db $12;X
L0011E7: db $1C;X
L0011E8: db $2A;X
L0011E9: db $12;X
L0011EA: db $13;X
L0011EB: db $05;X
L0011EC: db $20;X
L0011ED: db $CD;X
L0011EE: db $97;X
L0011EF: db $C9;X
L0011F0:;C
	sub  a
	ld   [$C050], a
	ld   [$C051], a
	ld   [$C064], a
	ld   [$C065], a
	ld   [$C066], a
	ld   [$C05B], a
	ld   [$C05F], a
	ret
L001207:;C
	ld   a, [$C050]
	cp   $08
	call nc, L001234
	push hl
	ld   a, [$C065]
	add  $80
	ld   l, a
	add  $84
	and  $1F
	ld   [$C065], a
	ld   h, $C4
	ld   [hl], c
	inc  l
	ld   [hl], b
	inc  l
	ldh  a, [hROMBank]
	ldi  [hl], a
	sub  a
	ld   [hl], a
	ld   a, [$C050]
	inc  a
	ld   [$C050], a
	pop  hl
	ret
L001231:;JC
	call L001207
L001234:;C
	ldh  a, [hROMBank]
	push af
	push bc
	push de
	push hl
L00123A:;R
	ld   a, [$C050]
	and  a
	jr   z, L00124E
	call L0012A6
	ldh  a, [$FF8A]
	and  $03
	jr   z, L00123A
L001249: db $CD;X
L00124A: db $B1;X
L00124B: db $05;X
L00124C: db $18;X
L00124D: db $EC;X
L00124E:;R
	pop  hl
	pop  de
	pop  bc
	pop  af
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	ret
L001258:;C
	ld   a, [$C050]
	cp   $08
	call nc, L001234
	push bc
	push de
	push hl
	ld   a, [$C065]
	add  $80
	ld   l, a
	add  $84
	and  $1F
	ld   [$C065], a
	ld   h, $C4
	ld   a, [$C066]
	add  $40
	ldi  [hl], a
	ld   a, $C4
	ldi  [hl], a
	sub  a
	ldi  [hl], a
	ld   [hl], $01
	ld   a, [$C066]
	add  $40
	ld   l, a
	add  $C8
	and  $3F
	ld   [$C066], a
	ld   h, $C4
	ld   de, $FFD0
	ld   b, $08
L001293:;R
	ld   a, [de]
	inc  e
	ldi  [hl], a
	dec  b
	jr   nz, L001293
	pop  hl
	pop  de
	pop  bc
	ld   a, [$C050]
	inc  a
	ld   [$C050], a
	ret
L0012A4: db $FF;X
L0012A5: db $FF
L0012A6:;C
	ld   a, [$C050]
	and  a
	ret  z
	ldh  a, [$FF8A]
	push af
L0012AE:;J
	ld   a, [$C051]
	add  a
	jp   nc, L001389
L0012B5: db $F0;X
L0012B6: db $8A;X
L0012B7: db $E6;X
L0012B8: db $03;X
L0012B9: db $20;X
L0012BA: db $62;X
L0012BB: db $FA;X
L0012BC: db $62;X
L0012BD: db $C0;X
L0012BE: db $47;X
L0012BF: db $FA;X
L0012C0: db $63;X
L0012C1: db $C0;X
L0012C2: db $A7;X
L0012C3: db $20;X
L0012C4: db $05;X
L0012C5: db $78;X
L0012C6: db $A7;X
L0012C7: db $CA;X
L0012C8: db $9A;X
L0012C9: db $13;X
L0012CA: db $F0;X
L0012CB: db $8A;X
L0012CC: db $E6;X
L0012CD: db $80;X
L0012CE: db $C4;X
L0012CF: db $8E;X
L0012D0: db $05;X
L0012D1: db $21;X
L0012D2: db $52;X
L0012D3: db $C0;X
L0012D4: db $5E;X
L0012D5: db $2C;X
L0012D6: db $56;X
L0012D7: db $21;X
L0012D8: db $56;X
L0012D9: db $C0;X
L0012DA: db $2A;X
L0012DB: db $66;X
L0012DC: db $6F;X
L0012DD: db $1A;X
L0012DE: db $22;X
L0012DF: db $13;X
L0012E0: db $1A;X
L0012E1: db $22;X
L0012E2: db $13;X
L0012E3: db $1A;X
L0012E4: db $22;X
L0012E5: db $13;X
L0012E6: db $1A;X
L0012E7: db $22;X
L0012E8: db $13;X
L0012E9: db $1A;X
L0012EA: db $22;X
L0012EB: db $13;X
L0012EC: db $1A;X
L0012ED: db $22;X
L0012EE: db $13;X
L0012EF: db $1A;X
L0012F0: db $22;X
L0012F1: db $13;X
L0012F2: db $1A;X
L0012F3: db $22;X
L0012F4: db $13;X
L0012F5: db $1A;X
L0012F6: db $22;X
L0012F7: db $13;X
L0012F8: db $1A;X
L0012F9: db $22;X
L0012FA: db $13;X
L0012FB: db $1A;X
L0012FC: db $22;X
L0012FD: db $13;X
L0012FE: db $1A;X
L0012FF: db $22;X
L001300: db $13;X
L001301: db $1A;X
L001302: db $22;X
L001303: db $13;X
L001304: db $1A;X
L001305: db $22;X
L001306: db $13;X
L001307: db $1A;X
L001308: db $22;X
L001309: db $13;X
L00130A: db $1A;X
L00130B: db $22;X
L00130C: db $13;X
L00130D: db $05;X
L00130E: db $20;X
L00130F: db $CD;X
L001310: db $FA;X
L001311: db $63;X
L001312: db $C0;X
L001313: db $A7;X
L001314: db $CA;X
L001315: db $9A;X
L001316: db $13;X
L001317: db $3D;X
L001318: db $EA;X
L001319: db $63;X
L00131A: db $C0;X
L00131B: db $18;X
L00131C: db $C0;X
L00131D: db $CD;X
L00131E: db $99;X
L00131F: db $16;X
L001320: db $D8;X
L001321: db $FA;X
L001322: db $63;X
L001323: db $C0;X
L001324: db $47;X
L001325: db $FA;X
L001326: db $62;X
L001327: db $C0;X
L001328: db $4F;X
L001329: db $B0;X
L00132A: db $28;X
L00132B: db $6E;X
L00132C: db $78;X
L00132D: db $A7;X
L00132E: db $28;X
L00132F: db $0D;X
L001330: db $79;X
L001331: db $D6;X
L001332: db $04;X
L001333: db $4F;X
L001334: db $78;X
L001335: db $DE;X
L001336: db $00;X
L001337: db $EA;X
L001338: db $63;X
L001339: db $C0;X
L00133A: db $79;X
L00133B: db $18;X
L00133C: db $12;X
L00133D: db $FA;X
L00133E: db $62;X
L00133F: db $C0;X
L001340: db $FE;X
L001341: db $04;X
L001342: db $30;X
L001343: db $09;X
L001344: db $47;X
L001345: db $87;X
L001346: db $87;X
L001347: db $87;X
L001348: db $87;X
L001349: db $4F;X
L00134A: db $97;X
L00134B: db $18;X
L00134C: db $05;X
L00134D: db $D6;X
L00134E: db $04;X
L00134F: db $01;X
L001350: db $40;X
L001351: db $04;X
L001352: db $EA;X
L001353: db $62;X
L001354: db $C0;X
L001355: db $21;X
L001356: db $BE;X
L001357: db $C6;X
L001358: db $78;X
L001359: db $32;X
L00135A: db $87;X
L00135B: db $87;X
L00135C: db $87;X
L00135D: db $C6;X
L00135E: db $03;X
L00135F: db $47;X
L001360: db $FA;X
L001361: db $52;X
L001362: db $C0;X
L001363: db $32;X
L001364: db $81;X
L001365: db $EA;X
L001366: db $52;X
L001367: db $C0;X
L001368: db $FA;X
L001369: db $53;X
L00136A: db $C0;X
L00136B: db $32;X
L00136C: db $CE;X
L00136D: db $00;X
L00136E: db $EA;X
L00136F: db $53;X
L001370: db $C0;X
L001371: db $FA;X
L001372: db $56;X
L001373: db $C0;X
L001374: db $32;X
L001375: db $81;X
L001376: db $EA;X
L001377: db $56;X
L001378: db $C0;X
L001379: db $FA;X
L00137A: db $57;X
L00137B: db $C0;X
L00137C: db $77;X
L00137D: db $CE;X
L00137E: db $00;X
L00137F: db $EA;X
L001380: db $57;X
L001381: db $C0;X
L001382: db $F0;X
L001383: db $92;X
L001384: db $90;X
L001385: db $E0;X
L001386: db $92;X
L001387: db $F1;X
L001388: db $C9;X
L001389:;J
	jr   z, L0013D4
	bit  5, a
	jr   z, L00139A
	call L001474
	ldh  a, [$FF8A]
	and  $03
	jr   z, L00139A
L001398: db $F1;X
L001399: db $C9;X
L00139A:;JR
	ld   a, [$C05A]
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	ld   hl, $C058
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	inc  hl
	ldi  a, [hl]
	cp   $FE
	jp   c, L0013F8
	jr   nz, L0013B6
L0013B1: db $2A;X
L0013B2: db $66;X
L0013B3: db $6F;X
L0013B4: db $18;X
L0013B5: db $F2;X
L0013B6:;R
	ld   a, [$C050]
	dec  a
	ld   [$C050], a
	jr   nz, L0013D4
	ld   [$C05F], a
	ld   [$C051], a
	ldh  a, [$FF8A]
	and  $80
	jr   nz, L0013D2
	pop  af
	and  $80
	jp   nz, L000585
	ret
L0013D2: db $F1;X
L0013D3: db $C9;X
L0013D4:;R
	ld   a, [$C064]
	ld   c, a
	ld   b, $00
	add  $04
	and  $1F
	ld   [$C064], a
	ld   hl, $C480
	add  hl, bc
	ldi  a, [hl]
	ld   [$C058], a
	ldi  a, [hl]
	ld   [$C059], a
	ldi  a, [hl]
	ld   [$C05A], a
	ld   a, [hl]
	ld   [$C05B], a
	jp   L00139A
L0013F8:;J
	ld   [$C067], a
	and  $30
	ld   [$C051], a
	cp   $20
	jr   nc, L001426
L001404: db $FA;X
L001405: db $51;X
L001406: db $C0;X
L001407: db $F6;X
L001408: db $80;X
L001409: db $EA;X
L00140A: db $51;X
L00140B: db $C0;X
L00140C: db $2A;X
L00140D: db $EA;X
L00140E: db $52;X
L00140F: db $C0;X
L001410: db $2A;X
L001411: db $EA;X
L001412: db $53;X
L001413: db $C0;X
L001414: db $2A;X
L001415: db $EA;X
L001416: db $56;X
L001417: db $C0;X
L001418: db $2A;X
L001419: db $EA;X
L00141A: db $57;X
L00141B: db $C0;X
L00141C: db $2A;X
L00141D: db $EA;X
L00141E: db $62;X
L00141F: db $C0;X
L001420: db $2A;X
L001421: db $EA;X
L001422: db $63;X
L001423: db $C0;X
L001424: db $18;X
L001425: db $34;X
L001426:;R
	jr   nz, L00142F
	ld   a, [$C051]
	or   $50
	jr   L001434
L00142F:;R
	ld   a, [$C051]
	or   $10
L001434:;R
	and  $DF
	ld   [$C051], a
	ldi  a, [hl]
	ld   [$C052], a
	ldi  a, [hl]
	ld   [$C053], a
	ldi  a, [hl]
	ld   [$C05E], a
	ld   b, a
	ldi  a, [hl]
	push hl
	ld   l, a
	ld   h, $40
	ld   a, b
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	ldi  a, [hl]
	ld   [$C05C], a
	ld   a, [hl]
	ld   [$C05D], a
	pop  hl
	ld   a, [$C05B]
	and  a
	jr   z, L001463
	ld   hl, $12A4
L001463:;R
	ld   a, l
	ld   [$C058], a
	ld   a, h
	ld   [$C059], a
	ldh  a, [$FF8A]
	and  $03
	jp   z, L0012AE
L001472: db $F1;X
L001473: db $C9;X
L001474:;C
	ld   a, [$C051]
	and  $40
	call nz, L001699
	ret  c
	ld   a, [$C05E]
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
L001485:;J
	ld   a, [$C051]
	and  $20
	jp   nz, L0014F0
L00148D:;J
	ld   hl, $C05C
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	inc  hl
	ldi  a, [hl]
	cp   $FE
	jr   c, L0014A6
	jr   z, L0014A1
	ld   a, $20
	ld   [$C051], a
	ret
L0014A1: db $2A;X
L0014A2: db $66;X
L0014A3: db $6F;X
L0014A4: db $18;X
L0014A5: db $ED;X
L0014A6:;R
	ldi  a, [hl]
	ld   [$C054], a
	ld   e, a
	ldi  a, [hl]
	ld   [$C055], a
	ld   d, a
	ldi  a, [hl]
	ld   [$C062], a
	ldi  a, [hl]
	ld   [$C063], a
	ldi  a, [hl]
	ld   [$C060], a
	ld   c, a
	ldi  a, [hl]
	ld   [$C061], a
	ld   b, a
	ld   a, l
	ld   [$C05C], a
	ld   a, h
	ld   [$C05D], a
	ld   a, [$C051]
	or   $20
	ld   [$C051], a
	ld   a, c
	or   b
	jr   z, L0014E3
	ld   a, c
	ldh  [$FFDC], a
	ld   a, b
	ldh  [$FFDD], a
	sub  a
	ldh  [$FFD8], a
	ldh  [$FFDA], a
	ldh  [$FFDB], a
L0014E3:;R
	ld   hl, $C052
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	add  hl, de
	ld   a, l
	ldh  [$FFDE], a
	ld   a, h
	ldh  [$FFDF], a
L0014F0:;J
	ld   a, [$C051]
	and  $40
	jr   nz, L001536
	ld   a, [$C063]
	and  a
	jr   z, L001522
	ld   b, a
	cp   $80
	jr   c, L001510
	ldh  a, [$FF8A]
	and  $03
	jp   z, L001633
L001509: db $FA;X
L00150A: db $5F;X
L00150B: db $C0;X
L00150C: db $A7;X
L00150D: db $C2;X
L00150E: db $33;X
L00150F: db $16;X
L001510: db $FA;X
L001511: db $62;X
L001512: db $C0;X
L001513: db $D6;X
L001514: db $08;X
L001515: db $EA;X
L001516: db $62;X
L001517: db $C0;X
L001518: db $78;X
L001519: db $DE;X
L00151A: db $00;X
L00151B: db $EA;X
L00151C: db $63;X
L00151D: db $C0;X
L00151E: db $0E;X
L00151F: db $80;X
L001520: db $18;X
L001521: db $69;X
L001522:;R
	ld   a, [$C062]
	cp   $09
	jr   c, L00152F
	sub  $08
	ld   c, $80
	jr   L001588
L00152F:;R
	add  a
	add  a
	add  a
	add  a
	ld   c, a
	jr   L00157F
L001536:;R
	ld   hl, $C052
	ldi  a, [hl]
	ld   c, a
	ldi  a, [hl]
	ld   b, a
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	add  hl, bc
	ld   a, l
	ld   [$C056], a
	ld   a, h
	ld   [$C057], a
	ld   a, [$C063]
	and  a
	jr   z, L00156D
	ld   b, a
	cp   $80
	jr   c, L00155B
	ldh  a, [$FF8A]
	and  $03
	jp   z, L001657
L00155B:;R
	ld   a, [$C062]
	sub  $04
	ld   [$C062], a
	ld   a, b
	sbc  $00
	ld   [$C063], a
	ld   c, $40
	jr   L00158B
L00156D:;R
	ld   a, [$C062]
	cp   $05
	jr   c, L00157A
	sub  $04
	ld   c, $40
	jr   L001588
L00157A:;R
	add  a
	add  a
	add  a
	add  a
	ld   c, a
L00157F:;R
	ld   a, [$C051]
	and  $DF
	ld   [$C051], a
	sub  a
L001588:;R
	ld   [$C062], a
L00158B:;R
	ld   a, [$C051]
	and  $40
	jr   nz, L0015AD
	ldh  a, [$FF8F]
	bit  7, a
	jr   nz, L00159D
	call L0016F4
	jr   L0015F5
L00159D: db $FA;X
L00159E: db $67;X
L00159F: db $C0;X
L0015A0: db $E6;X
L0015A1: db $07;X
L0015A2: db $E0;X
L0015A3: db $70;X
L0015A4: db $CD;X
L0015A5: db $F4;X
L0015A6: db $16;X
L0015A7: db $3E;X
L0015A8: db $01;X
L0015A9: db $E0;X
L0015AA: db $70;X
L0015AB: db $18;X
L0015AC: db $48;X
L0015AD:;R
	ld   a, $C0
	ldh  [$FFDE], a
	ld   a, $C6
	ldh  [$FFDF], a
	call L0016F4
	ld   a, c
	swap a
	cp   $10
	jr   c, L0015C0
L0015BF: db $3C;X
L0015C0:;R
	and  $0F
	jr   nz, L0015C5
L0015C4: db $3C;X
L0015C5:;R
	ld   hl, $C6BE
	ld   [hl], a
	add  a
	add  a
	add  a
	add  $03
	ld   b, a
	ld   a, [$C067]
	and  $01
	jr   z, L0015D8
L0015D6: db $CB;X
L0015D7: db $FE;X
L0015D8:;R
	dec  l
	ld   a, $C0
	ldd  [hl], a
	ld   a, $C6
	ldd  [hl], a
	ld   a, [$C056]
	ldd  [hl], a
	add  c
	ld   [$C056], a
	ld   a, [$C057]
	ld   [hl], a
	adc  a, $00
	ld   [$C057], a
	ldh  a, [$FF92]
	sub  b
	ldh  [$FF92], a
L0015F5:;R
	ld   a, [$C051]
	and  $20
	jr   z, L001606
	ld   hl, $C054
	ld   a, [hl]
	add  c
	ldi  [hl], a
	ld   a, [hl]
	adc  a, $00
	ld   [hl], a
L001606:;R
	ldh  a, [$FF8A]
	and  $03
	ret  nz
	ld   a, [$C051]
	and  $40
	jp   z, L001485
	ldh  a, [$FF8A]
	and  $80
	call nz, L00058E
	ldh  a, [rIE]
	ldh  [$FFAD], a
	ldh  a, [$FF8F]
	bit  7, a
	jr   nz, L001629
	call L000FE0
	jr   L00162C
L001629: db $CD;X
L00162A: db $B1;X
L00162B: db $10;X
L00162C:;R
	ldh  a, [$FFAD]
	ldh  [rIE], a
	jp   L001485
L001633:;J
	ld   hl, $FFDC
	ld   c, [hl]
	inc  l
	ld   b, [hl]
	inc  l
	ldh  a, [$FF8F]
	bit  7, a
	jr   nz, L001646
	call L001683
	jp   L00148D
L001646: db $FA;X
L001647: db $67;X
L001648: db $C0;X
L001649: db $E6;X
L00164A: db $07;X
L00164B: db $E0;X
L00164C: db $70;X
L00164D: db $CD;X
L00164E: db $83;X
L00164F: db $16;X
L001650: db $3E;X
L001651: db $01;X
L001652: db $E0;X
L001653: db $70;X
L001654: db $C3;X
L001655: db $8D;X
L001656: db $14;X
L001657:;J
	ldh  a, [$FF8A]
	and  $80
	call nz, L00058E
	ld   hl, $FFDC
	ld   c, [hl]
	inc  l
	ld   b, [hl]
	ld   hl, $C056
	ldh  a, [$FF8F]
	bit  7, a
	jr   nz, L001673
	call L001683
	jp   L00148D
L001673: db $FA;X
L001674: db $67;X
L001675: db $C0;X
L001676: db $E6;X
L001677: db $01;X
L001678: db $E0;X
L001679: db $4F;X
L00167A: db $CD;X
L00167B: db $83;X
L00167C: db $16;X
L00167D: db $97;X
L00167E: db $E0;X
L00167F: db $70;X
L001680: db $C3;X
L001681: db $8D;X
L001682: db $14;X
L001683:;C
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	call L0017AC
	ld   a, [$C051]
	and  $DF
	ld   [$C051], a
	sub  a
	ld   [$C062], a
	ld   [$C063], a
	ret
L001699:;C
	ld   a, [$C063]
	cp   $80
	jr   c, L0016A5
L0016A0: db $F0;X
L0016A1: db $8A;X
L0016A2: db $E6;X
L0016A3: db $03;X
L0016A4: db $C8;X
L0016A5:;R
	ld   a, [$C6BA]
	and  a
	jr   nz, L0016C9
	ld   a, [$C063]
	and  a
	jr   nz, L0016C4
	ld   a, [$C062]
	cp   $04
	jr   nc, L0016C4
	add  a
	add  a
	add  a
	add  $03
	ld   b, a
	ldh  a, [$FF92]
	cp   b
	ret  nc
L0016C2: db $18;X
L0016C3: db $05;X
L0016C4: db $F0;X
L0016C5: db $92;X
L0016C6: db $FE;X
L0016C7: db $23;X
L0016C8: db $D0;X
L0016C9: db $F0;X
L0016CA: db $8A;X
L0016CB: db $E6;X
L0016CC: db $03;X
L0016CD: db $3F;X
L0016CE: db $C0;X
L0016CF: db $F0;X
L0016D0: db $8A;X
L0016D1: db $E6;X
L0016D2: db $80;X
L0016D3: db $C4;X
L0016D4: db $8E;X
L0016D5: db $05;X
L0016D6: db $C5;X
L0016D7: db $D5;X
L0016D8: db $E5;X
L0016D9: db $F0;X
L0016DA: db $FF;X
L0016DB: db $E0;X
L0016DC: db $AD;X
L0016DD: db $F0;X
L0016DE: db $8F;X
L0016DF: db $CB;X
L0016E0: db $7F;X
L0016E1: db $20;X
L0016E2: db $05;X
L0016E3: db $CD;X
L0016E4: db $E0;X
L0016E5: db $0F;X
L0016E6: db $18;X
L0016E7: db $03;X
L0016E8: db $CD;X
L0016E9: db $B1;X
L0016EA: db $10;X
L0016EB: db $F0;X
L0016EC: db $AD;X
L0016ED: db $E0;X
L0016EE: db $FF;X
L0016EF: db $E1;X
L0016F0: db $D1;X
L0016F1: db $C1;X
L0016F2: db $A7;X
L0016F3: db $C9;X
L0016F4:;C
	ld   a, c
	ldh  [$FFD0], a
	ldh  [$FFD9], a
	call L00170F
	ldh  a, [$FFD0]
	ld   c, a
	ret  nz
	ld   a, [$C051]
	and  $DF
	ld   [$C051], a
	ldh  a, [$FFD9]
	sub  c
	cpl  
	inc  a
	ld   c, a
	ret
L00170F:;C
	ldh  a, [$FFDB]
	ld   c, a
	ld   b, $BF
	ldh  a, [$FFDC]
	ld   e, a
	ldh  a, [$FFDD]
	ld   d, a
	ldh  a, [$FFDE]
	ld   l, a
	ldh  a, [$FFDF]
	ld   h, a
	ldh  a, [$FFD8]
	and  a
	jr   z, L001735
	cp   $7F
	jr   c, L00173F
	sub  $7E
	ldh  [$FFD8], a
	push de
	ldh  a, [$FFDA]
	ld   e, a
	ld   d, b
	jp   L001778
L001735:;JR
	ld   a, [de]
	inc  de
	cp   $80
	jr   nc, L00176B
	and  a
	ret  z
	ldh  [$FFD8], a
L00173F:;R
	ld   a, [de]
	inc  de
	ldi  [hl], a
	ld   [bc], a
	inc  c
	ldh  a, [$FFD9]
	dec  a
	ldh  [$FFD9], a
	jr   z, L001755
	ldh  a, [$FFD8]
	dec  a
	ldh  [$FFD8], a
	jr   nz, L00173F
	jp   L001735
L001755:;R
	ld   a, h
	ldh  [$FFDF], a
	ld   a, l
	ld   hl, $FFDE
	ldd  [hl], a
	ld   a, d
	ldd  [hl], a
	ld   a, e
	ldd  [hl], a
	ld   [hl], c
	ldh  a, [$FFD8]
	dec  a
	ldh  [$FFD8], a
	ret  nz
L001768:;R
	ld   a, [de]
	and  a
	ret
L00176B:;R
	add  $83
	ldh  [$FFD8], a
	ld   a, [de]
	inc  de
	push de
	cpl  
	inc  a
	add  c
	dec  a
	ld   e, a
	ld   d, b
L001778:;JR
	ld   a, [de]
	inc  e
	ldi  [hl], a
	ld   [bc], a
	inc  c
	ldh  a, [$FFD9]
	dec  a
	ldh  [$FFD9], a
	jr   z, L00178F
	ldh  a, [$FFD8]
	dec  a
	ldh  [$FFD8], a
	jr   nz, L001778
	pop  de
	jp   L001735
L00178F:;R
	ld   a, e
	ldh  [$FFDA], a
	pop  de
	ld   a, h
	ldh  [$FFDF], a
	ld   a, l
	ld   hl, $FFDE
	ldd  [hl], a
	ld   a, d
	ldd  [hl], a
	ld   a, e
	ldd  [hl], a
	ld   [hl], c
	ldh  a, [$FFD8]
	dec  a
	ldh  [$FFD8], a
	jr   z, L001768
	add  $7E
	ldh  [$FFD8], a
	ret
L0017AC:;CR
	ld   a, [bc]
	inc  bc
	cp   $80
	jr   nc, L0017BD
	and  a
	ret  z
	ld   e, a
L0017B5:;R
	ld   a, [bc]
	inc  bc
	ldi  [hl], a
	dec  e
	jr   nz, L0017B5
	jr   L0017AC
L0017BD:;R
	add  $83
	ld   e, a
	ld   a, [bc]
	inc  bc
	push bc
	cpl  
	add  l
	ld   c, a
	ld   b, h
	jr   c, L0017CA
	dec  b
L0017CA:;R
	ld   a, [bc]
	ldi  [hl], a
	inc  bc
	dec  e
	jr   nz, L0017CA
	pop  bc
	jr   L0017AC
L0017D3:;C
	ld   a, $59
	ld   [$C018], a
	ld   a, $FB
	ld   [$C019], a
	sub  a
	ld   [$B019], a
	ld   [$B01A], a
	ld   [$B006], a
	ld   [$B00C], a
	ld   [$B011], a
	sub  a
	ld   [$B02E], a
	ld   [$B02F], a
	ld   a, $01
	ld   [$B007], a
	ld   a, $17
	ld   [$B012], a
	ld   a, $03
	ld   [$B013], a
	ld   a, $09
	ld   [$B008], a
	ld   a, $0B
	ld   [$B009], a
	ld   a, $02
	ld   [$B014], a
	ld   a, [$00F8]
	ld   [$B004], a
	ld   a, $01
	ld   [$B00D], a
	ld   a, $03
	ld   [$B016], a
	ld   a, $01
	ld   [$B010], a
	ld   a, $05
	ld   [$B020], a
	ld   [$B021], a
	ld   a, $01
	ld   [$B022], a
	ld   a, $01
	ld   [$B023], a
	ld   [$B026], a
	ld   [$B027], a
	sub  a
	ld   [$B024], a
	ld   [$B025], a
	sub  a
	ld   [$B00A], a
	ld   [$B00B], a
	ld   a, $06
	ld   [$B036], a
	ld   hl, $B030
	call L00195A
	ld   bc, $19BF
	call L0019B0
	ld   a, $00
	ld   [$B046], a
	ld   a, $01
	ld   hl, $B040
	call L00195A
	ld   bc, $19C7
	call L0019B0
	ld   bc, $B050
	ld   hl, $250B
	ld   e, $A0
L001879:;R
	ldi  a, [hl]
	ld   [bc], a
	inc  c
	dec  e
	jr   nz, L001879
	jp   L000CFA
L001882:;C
	ld   hl, $B360
	ld   e, $10
	sub  a
L001888:;R
	ldi  [hl], a
	dec  e
	jr   nz, L001888
	ret
L00188D:;C
	ld   hl, $B200
	ld   bc, $0160
L001893:;R
	sub  a
	ldi  [hl], a
	dec  bc
	ld   a, b
	or   c
	jr   nz, L001893
	ret
L00189B:;C
	push hl
	ld   [$C0B9], a
	and  a
	jr   z, L0018AD
	dec  a
	add  a
	add  a
	add  a
	ld   c, a
	ld   b, $00
	ld   hl, $18C7
	add  hl, bc
L0018AD:;X
	ldi  a, [hl]
	ld   [$C0EB], a
	ldi  a, [hl]
	ld   [$C0E8], a
	ldi  a, [hl]
	ld   [$C0E9], a
	ldi  a, [hl]
	ld   [$C0E7], a
	ldi  a, [hl]
	ld   [$C0EA], a
	ldi  a, [hl]
	ld   [$C0EC], a
	pop  hl
	ret
L0018C7: db $01
L0018C8: db $46
L0018C9: db $00
L0018CA: db $04
L0018CB: db $00
L0018CC: db $1E
L0018CD: db $00;X
L0018CE: db $00;X
L0018CF: db $03;X
L0018D0: db $8C;X
L0018D1: db $0A;X
L0018D2: db $02;X
L0018D3: db $01;X
L0018D4: db $06;X
L0018D5: db $00;X
L0018D6: db $00;X
L0018D7: db $01
L0018D8: db $46
L0018D9: db $0A
L0018DA: db $04
L0018DB: db $02
L0018DC: db $12
L0018DD: db $00;X
L0018DE: db $00;X
L0018DF: db $01;X
L0018E0: db $8C;X
L0018E1: db $0A;X
L0018E2: db $04;X
L0018E3: db $01;X
L0018E4: db $12;X
L0018E5: db $00;X
L0018E6: db $00;X
L0018E7: db $03;X
L0018E8: db $32;X
L0018E9: db $1E;X
L0018EA: db $04;X
L0018EB: db $02;X
L0018EC: db $1E;X
L0018ED: db $00;X
L0018EE: db $00;X
L0018EF: db $02;X
L0018F0: db $78;X
L0018F1: db $32;X
L0018F2: db $04;X
L0018F3: db $00;X
L0018F4: db $1E;X
L0018F5: db $00;X
L0018F6: db $00;X
L0018F7: db $03;X
L0018F8: db $B4;X
L0018F9: db $1E;X
L0018FA: db $04;X
L0018FB: db $00;X
L0018FC: db $1E;X
L0018FD: db $00;X
L0018FE: db $00;X
L0018FF: db $03;X
L001900: db $78;X
L001901: db $0A;X
L001902: db $04;X
L001903: db $02;X
L001904: db $12;X
L001905: db $00;X
L001906: db $00;X
L001907: db $03;X
L001908: db $78;X
L001909: db $0A;X
L00190A: db $04;X
L00190B: db $01;X
L00190C: db $12;X
L00190D: db $00;X
L00190E: db $00;X
L00190F: db $03;X
L001910: db $78;X
L001911: db $00;X
L001912: db $04;X
L001913: db $00;X
L001914: db $1E;X
L001915: db $00;X
L001916: db $00;X
L001917: db $00;X
L001918: db $46;X
L001919: db $14;X
L00191A: db $04;X
L00191B: db $00;X
L00191C: db $1E;X
L00191D: db $00;X
L00191E: db $00;X
L00191F: db $01;X
L001920: db $3C;X
L001921: db $14;X
L001922: db $02;X
L001923: db $00;X
L001924: db $06;X
L001925: db $00;X
L001926: db $00;X
L001927: db $00;X
L001928: db $C8;X
L001929: db $0A;X
L00192A: db $06;X
L00192B: db $01;X
L00192C: db $1E;X
L00192D: db $00;X
L00192E: db $00;X
L00192F: db $00;X
L001930: db $DC;X
L001931: db $0A;X
L001932: db $06;X
L001933: db $01;X
L001934: db $12;X
L001935: db $00;X
L001936: db $00;X
L001937: db $00;X
L001938: db $FA;X
L001939: db $00;X
L00193A: db $14;X
L00193B: db $00;X
L00193C: db $1E;X
L00193D: db $00;X
L00193E: db $00;X
L00193F: db $01;X
L001940: db $96;X
L001941: db $14;X
L001942: db $05;X
L001943: db $00;X
L001944: db $12;X
L001945: db $00;X
L001946: db $00;X
L001947: db $00;X
L001948: db $64;X
L001949: db $00;X
L00194A: db $08;X
L00194B: db $00;X
L00194C: db $18;X
L00194D: db $00;X
L00194E: db $00;X
L00194F: db $01;X
L001950: db $96;X
L001951: db $05;X
L001952: db $0A;X
L001953: db $01;X
L001954: db $1E;X
L001955: db $00;X
L001956: db $00;X
L001957: db $E5;X
L001958: db $18;X
L001959: db $09;X
L00195A:;C
	push hl
	ld   c, a
	ld   b, $00
	ld   hl, $1981
	add  hl, bc
	ld   a, [hl]
	call L00189B
	pop  hl
	push hl
	ld   a, [$C0EB]
	ldi  [hl], a
	ld   a, [$C0E8]
	ldi  [hl], a
	ld   a, [$C0E9]
	ldi  [hl], a
	ld   a, [$C0E7]
	ldi  [hl], a
	ld   a, [$C0EA]
	ldi  [hl], a
	ld   a, [$C0EC]
	ldi  [hl], a
	pop  hl
	ret
L001982: db $01
L001983: db $06;X
L001984: db $04;X
L001985: db $0D;X
L001986: db $02;X
L001987: db $03
L001988: db $0B;X
L001989: db $05;X
L00198A: db $0C;X
L00198B: db $0A;X
L00198C: db $0E;X
L00198D: db $0F;X
L00198E: db $10;X
L00198F: db $11;X
L001990: db $12;X
L001991:;C
	push hl
	ld   a, l
	add  $08
	ld   l, a
	ldi  a, [hl]
	ld   [$C0D7], a
	ldi  a, [hl]
	ld   [$C0DC], a
	ldi  a, [hl]
	ld   [$C0DA], a
	ldi  a, [hl]
	ld   [$C0DB], a
	ldi  a, [hl]
	ld   [$C0D8], a
	ldi  a, [hl]
	ld   [$C0D9], a
	pop  hl
	ret
L0019B0:;C
	push hl
	ld   a, l
	add  $08
	ld   l, a
	ld   e, $08
L0019B7:;R
	ld   a, [bc]
	ldi  [hl], a
	inc  bc
	dec  e
	jr   nz, L0019B7
	pop  hl
	ret
L0019BF: db $02
L0019C0: db $06
L0019C1: db $00
L0019C2: db $00
L0019C3: db $01
L0019C4: db $00
L0019C5: db $00
L0019C6: db $00
L0019C7: db $02
L0019C8: db $06
L0019C9: db $00
L0019CA: db $00
L0019CB: db $01
L0019CC: db $01
L0019CD: db $00
L0019CE: db $00
L0019CF:;C
	ld   c, a
	ld   a, [$C082]
	cp   $01
	ld   hl, $19EA
	jr   c, L0019E2
L0019DA: db $21;X
L0019DB: db $ED;X
L0019DC: db $19;X
L0019DD: db $28;X
L0019DE: db $03;X
L0019DF: db $21;X
L0019E0: db $FB;X
L0019E1: db $19;X
L0019E2:;R
	ld   b, $00
	add  hl, bc
	ld   a, [hl]
	ld   [$C081], a
	ret
L0019EA: db $04
L0019EB: db $14
L0019EC: db $01;X
L0019ED: db $19;X
L0019EE: db $05;X
L0019EF: db $12;X
L0019F0: db $07;X
L0019F1: db $02;X
L0019F2: db $08;X
L0019F3: db $17;X
L0019F4: db $1C;X
L0019F5: db $03;X
L0019F6: db $09;X
L0019F7: db $1A;X
L0019F8: db $1E;X
L0019F9: db $20;X
L0019FA: db $1F;X
L0019FB: db $08;X
L0019FC: db $17;X
L0019FD: db $1C;X
L0019FE: db $03;X
L0019FF: db $09;X
L001A00: db $1A;X
L001A01: db $00;X
L001A02: db $20;X
L001A03: db $1F;X
L001A04: db $C5;X
L001A05: db $E5;X
L001A06: db $4F;X
L001A07: db $06;X
L001A08: db $00;X
L001A09: db $21;X
L001A0A: db $11;X
L001A0B: db $1A;X
L001A0C: db $09;X
L001A0D: db $7E;X
L001A0E: db $E1;X
L001A0F: db $C1;X
L001A10: db $C9;X
L001A11: db $04
L001A12: db $14;X
L001A13: db $01;X
L001A14: db $19
L001A15: db $05
L001A16: db $12;X
L001A17: db $07;X
L001A18: db $02;X
L001A19: db $08;X
L001A1A: db $17;X
L001A1B: db $1C;X
L001A1C: db $03;X
L001A1D: db $09;X
L001A1E: db $1A;X
L001A1F: db $1E;X
L001A20: db $20;X
L001A21: db $1F;X
L001A22: db $00;X
L001A23: db $0A;X
L001A24: db $0E
L001A25: db $13;X
L001A26: db $1B;X
L001A27:;C
	and  a
	jr   z, L001A2D
L001A2A: db $3D;X
L001A2B: db $18;X
L001A2C: db $05;X
L001A2D:;R
	ld   a, $16
	call L000DCA
	push bc
	push hl
	ld   c, a
	ld   b, $00
	ld   hl, $1A11
	add  hl, bc
	ld   a, [hl]
	pop  hl
	pop  bc
	ret
L001A3F: db $41;X
L001A40: db $52;X
L001A41: db $4C;X
L001A42: db $45;X
L001A43: db $20;X
L001A44: db $20;X
L001A45: db $20;X
L001A46: db $20;X
L001A47: db $20;X
L001A48: db $20;X
L001A49: db $20;X
L001A4A: db $20;X
L001A4B: db $20;X
L001A4C: db $20;X
L001A4D: db $20;X
L001A4E: db $FF;X
L001A4F: db $43;X
L001A50: db $48;X
L001A51: db $4F;X
L001A52: db $50;X
L001A53: db $55;X
L001A54: db $4E;X
L001A55: db $20;X
L001A56: db $20;X
L001A57: db $20;X
L001A58: db $20;X
L001A59: db $20;X
L001A5A: db $20;X
L001A5B: db $20;X
L001A5C: db $20;X
L001A5D: db $20;X
L001A5E: db $FF;X
L001A5F: db $4E;X
L001A60: db $4F;X
L001A61: db $48;X
L001A62: db $4F;X
L001A63: db $48;X
L001A64: db $4F;X
L001A65: db $20;X
L001A66: db $20;X
L001A67: db $20;X
L001A68: db $20;X
L001A69: db $20;X
L001A6A: db $20;X
L001A6B: db $20;X
L001A6C: db $20;X
L001A6D: db $20;X
L001A6E: db $FF;X
L001A6F: db $48;X
L001A70: db $4F;X
L001A71: db $4E;X
L001A72: db $45;X
L001A73: db $59;X
L001A74: db $20;X
L001A75: db $42;X
L001A76: db $45;X
L001A77: db $45;X
L001A78: db $20;X
L001A79: db $20;X
L001A7A: db $20;X
L001A7B: db $20;X
L001A7C: db $20;X
L001A7D: db $20;X
L001A7E: db $FF;X
L001A7F: db $53;X
L001A80: db $4B;X
L001A81: db $45;X
L001A82: db $4C;X
L001A83: db $45;X
L001A84: db $54;X
L001A85: db $4F;X
L001A86: db $4E;X
L001A87: db $2D;X
L001A88: db $54;X
L001A89: db $20;X
L001A8A: db $20;X
L001A8B: db $20;X
L001A8C: db $20;X
L001A8D: db $20;X
L001A8E: db $FF;X
L001A8F: db $49;X
L001A90: db $4E;X
L001A91: db $43;X
L001A92: db $55;X
L001A93: db $42;X
L001A94: db $55;X
L001A95: db $53;X
L001A96: db $20;X
L001A97: db $20;X
L001A98: db $20;X
L001A99: db $20;X
L001A9A: db $20;X
L001A9B: db $20;X
L001A9C: db $20;X
L001A9D: db $20;X
L001A9E: db $FF;X
L001A9F: db $4E;X
L001AA0: db $4F;X
L001AA1: db $20;X
L001AA2: db $4E;X
L001AA3: db $41;X
L001AA4: db $4D;X
L001AA5: db $45;X
L001AA6: db $20;X
L001AA7: db $20;X
L001AA8: db $20;X
L001AA9: db $20;X
L001AAA: db $20;X
L001AAB: db $20;X
L001AAC: db $20;X
L001AAD: db $20;X
L001AAE: db $FF;X
L001AAF: db $4B;X
L001AB0: db $49;X
L001AB1: db $4B;X
L001AB2: db $49;X
L001AB3: db $4D;X
L001AB4: db $4F;X
L001AB5: db $52;X
L001AB6: db $41;X
L001AB7: db $20;X
L001AB8: db $20;X
L001AB9: db $20;X
L001ABA: db $20;X
L001ABB: db $20;X
L001ABC: db $20;X
L001ABD: db $20;X
L001ABE: db $FF;X
L001ABF: db $4B;X
L001AC0: db $4F;X
L001AC1: db $44;X
L001AC2: db $4F;X
L001AC3: db $4D;X
L001AC4: db $4F;X
L001AC5: db $20;X
L001AC6: db $44;X
L001AC7: db $52;X
L001AC8: db $41;X
L001AC9: db $47;X
L001ACA: db $4F;X
L001ACB: db $4E;X
L001ACC: db $20;X
L001ACD: db $20;X
L001ACE: db $FF;X
L001ACF: db $4C;X
L001AD0: db $41;X
L001AD1: db $47;X
L001AD2: db $4E;X
L001AD3: db $55;X
L001AD4: db $53;X
L001AD5: db $20;X
L001AD6: db $42;X
L001AD7: db $49;X
L001AD8: db $53;X
L001AD9: db $48;X
L001ADA: db $41;X
L001ADB: db $53;X
L001ADC: db $20;X
L001ADD: db $20;X
L001ADE: db $FF;X
L001ADF: db $53;X
L001AE0: db $4B;X
L001AE1: db $59;X
L001AE2: db $4C;X
L001AE3: db $4C;X
L001AE4: db $41;X
L001AE5: db $20;X
L001AE6: db $20;X
L001AE7: db $20;X
L001AE8: db $20;X
L001AE9: db $20;X
L001AEA: db $20;X
L001AEB: db $20;X
L001AEC: db $20;X
L001AED: db $20;X
L001AEE: db $FF;X
L001AEF: db $4E;X
L001AF0: db $4F;X
L001AF1: db $20;X
L001AF2: db $4E;X
L001AF3: db $41;X
L001AF4: db $4D;X
L001AF5: db $45;X
L001AF6: db $20;X
L001AF7: db $20;X
L001AF8: db $20;X
L001AF9: db $20;X
L001AFA: db $20;X
L001AFB: db $20;X
L001AFC: db $20;X
L001AFD: db $20;X
L001AFE: db $FF;X
L001AFF: db $4E;X
L001B00: db $4F;X
L001B01: db $20;X
L001B02: db $4E;X
L001B03: db $41;X
L001B04: db $4D;X
L001B05: db $45;X
L001B06: db $20;X
L001B07: db $20;X
L001B08: db $20;X
L001B09: db $20;X
L001B0A: db $20;X
L001B0B: db $20;X
L001B0C: db $20;X
L001B0D: db $20;X
L001B0E: db $FF;X
L001B0F: db $4E;X
L001B10: db $4F;X
L001B11: db $20;X
L001B12: db $4E;X
L001B13: db $41;X
L001B14: db $4D;X
L001B15: db $45;X
L001B16: db $20;X
L001B17: db $20;X
L001B18: db $20;X
L001B19: db $20;X
L001B1A: db $20;X
L001B1B: db $20;X
L001B1C: db $20;X
L001B1D: db $20;X
L001B1E: db $FF;X
L001B1F: db $43;X
L001B20: db $41;X
L001B21: db $49;X
L001B22: db $54;X
L001B23: db $20;X
L001B24: db $53;X
L001B25: db $49;X
L001B26: db $54;X
L001B27: db $48;X
L001B28: db $20;X
L001B29: db $20;X
L001B2A: db $20;X
L001B2B: db $20;X
L001B2C: db $20;X
L001B2D: db $20;X
L001B2E: db $FF;X
L001B2F: db $4E;X
L001B30: db $4F;X
L001B31: db $20;X
L001B32: db $4E;X
L001B33: db $41;X
L001B34: db $4D;X
L001B35: db $45;X
L001B36: db $20;X
L001B37: db $20;X
L001B38: db $20;X
L001B39: db $20;X
L001B3A: db $20;X
L001B3B: db $20;X
L001B3C: db $20;X
L001B3D: db $20;X
L001B3E: db $FF;X
L001B3F: db $4E;X
L001B40: db $4F;X
L001B41: db $20;X
L001B42: db $4E;X
L001B43: db $41;X
L001B44: db $4D;X
L001B45: db $45;X
L001B46: db $20;X
L001B47: db $20;X
L001B48: db $20;X
L001B49: db $20;X
L001B4A: db $20;X
L001B4B: db $20;X
L001B4C: db $20;X
L001B4D: db $20;X
L001B4E: db $FF;X
L001B4F: db $4E;X
L001B50: db $4F;X
L001B51: db $20;X
L001B52: db $4E;X
L001B53: db $41;X
L001B54: db $4D;X
L001B55: db $45;X
L001B56: db $20;X
L001B57: db $20;X
L001B58: db $20;X
L001B59: db $20;X
L001B5A: db $20;X
L001B5B: db $20;X
L001B5C: db $20;X
L001B5D: db $20;X
L001B5E: db $FF;X
L001B5F: db $53;X
L001B60: db $55;X
L001B61: db $4B;X
L001B62: db $45;X
L001B63: db $54;X
L001B64: db $4F;X
L001B65: db $55;X
L001B66: db $44;X
L001B67: db $41;X
L001B68: db $52;X
L001B69: db $41;X
L001B6A: db $20;X
L001B6B: db $20;X
L001B6C: db $20;X
L001B6D: db $20;X
L001B6E: db $FF;X
L001B6F: db $55;X
L001B70: db $52;X
L001B71: db $4F;X
L001B72: db $4B;X
L001B73: db $4F;X
L001B74: db $20;X
L001B75: db $53;X
L001B76: db $41;X
L001B77: db $4B;X
L001B78: db $41;X
L001B79: db $4E;X
L001B7A: db $41;X
L001B7B: db $42;X
L001B7C: db $49;X
L001B7D: db $2E;X
L001B7E: db $FF;X
L001B7F: db $48;X
L001B80: db $41;X
L001B81: db $52;X
L001B82: db $50;X
L001B83: db $59;X
L001B84: db $20;X
L001B85: db $20;X
L001B86: db $20;X
L001B87: db $20;X
L001B88: db $20;X
L001B89: db $20;X
L001B8A: db $20;X
L001B8B: db $20;X
L001B8C: db $20;X
L001B8D: db $20;X
L001B8E: db $FF;X
L001B8F: db $4E;X
L001B90: db $4F;X
L001B91: db $20;X
L001B92: db $4E;X
L001B93: db $41;X
L001B94: db $4D;X
L001B95: db $45;X
L001B96: db $20;X
L001B97: db $20;X
L001B98: db $20;X
L001B99: db $20;X
L001B9A: db $20;X
L001B9B: db $20;X
L001B9C: db $20;X
L001B9D: db $20;X
L001B9E: db $FF;X
L001B9F: db $4E;X
L001BA0: db $4F;X
L001BA1: db $20;X
L001BA2: db $4E;X
L001BA3: db $41;X
L001BA4: db $4D;X
L001BA5: db $45;X
L001BA6: db $20;X
L001BA7: db $20;X
L001BA8: db $20;X
L001BA9: db $20;X
L001BAA: db $20;X
L001BAB: db $20;X
L001BAC: db $20;X
L001BAD: db $20;X
L001BAE: db $FF;X
L001BAF: db $57;X
L001BB0: db $49;X
L001BB1: db $54;X
L001BB2: db $43;X
L001BB3: db $48;X
L001BB4: db $20;X
L001BB5: db $20;X
L001BB6: db $20;X
L001BB7: db $20;X
L001BB8: db $20;X
L001BB9: db $20;X
L001BBA: db $20;X
L001BBB: db $20;X
L001BBC: db $20;X
L001BBD: db $20;X
L001BBE: db $FF;X
L001BBF: db $4E;X
L001BC0: db $4F;X
L001BC1: db $20;X
L001BC2: db $4E;X
L001BC3: db $41;X
L001BC4: db $4D;X
L001BC5: db $45;X
L001BC6: db $20;X
L001BC7: db $20;X
L001BC8: db $20;X
L001BC9: db $20;X
L001BCA: db $20;X
L001BCB: db $20;X
L001BCC: db $20;X
L001BCD: db $20;X
L001BCE: db $FF;X
L001BCF: db $44;X
L001BD0: db $52;X
L001BD1: db $41;X
L001BD2: db $43;X
L001BD3: db $4F;X
L001BD4: db $20;X
L001BD5: db $20;X
L001BD6: db $20;X
L001BD7: db $20;X
L001BD8: db $20;X
L001BD9: db $20;X
L001BDA: db $20;X
L001BDB: db $20;X
L001BDC: db $20;X
L001BDD: db $20;X
L001BDE: db $FF;X
L001BDF: db $52;X
L001BE0: db $55;X
L001BE1: db $4C;X
L001BE2: db $55;X
L001BE3: db $45;X
L001BE4: db $20;X
L001BE5: db $20;X
L001BE6: db $20;X
L001BE7: db $20;X
L001BE8: db $20;X
L001BE9: db $20;X
L001BEA: db $20;X
L001BEB: db $20;X
L001BEC: db $20;X
L001BED: db $20;X
L001BEE: db $FF;X
L001BEF: db $4D;X
L001BF0: db $49;X
L001BF1: db $4E;X
L001BF2: db $4F;X
L001BF3: db $54;X
L001BF4: db $41;X
L001BF5: db $55;X
L001BF6: db $52;X
L001BF7: db $4F;X
L001BF8: db $53;X
L001BF9: db $20;X
L001BFA: db $20;X
L001BFB: db $20;X
L001BFC: db $20;X
L001BFD: db $20;X
L001BFE: db $FF;X
L001BFF: db $5A;X
L001C00: db $4F;X
L001C01: db $48;X
L001C02: db $2D;X
L001C03: db $44;X
L001C04: db $41;X
L001C05: db $49;X
L001C06: db $4D;X
L001C07: db $41;X
L001C08: db $4F;X
L001C09: db $48;X
L001C0A: db $20;X
L001C0B: db $20;X
L001C0C: db $20;X
L001C0D: db $20;X
L001C0E: db $FF;X
L001C0F: db $4E;X
L001C10: db $4F;X
L001C11: db $20;X
L001C12: db $4E;X
L001C13: db $41;X
L001C14: db $4D;X
L001C15: db $45;X
L001C16: db $20;X
L001C17: db $20;X
L001C18: db $20;X
L001C19: db $20;X
L001C1A: db $20;X
L001C1B: db $20;X
L001C1C: db $20;X
L001C1D: db $20;X
L001C1E: db $FF;X
L001C1F: db $53;X
L001C20: db $48;X
L001C21: db $45;X
L001C22: db $5A;X
L001C23: db $4F;X
L001C24: db $20;X
L001C25: db $57;X
L001C26: db $45;X
L001C27: db $47;X
L001C28: db $45;X
L001C29: db $59;X
L001C2A: db $20;X
L001C2B: db $20;X
L001C2C: db $20;X
L001C2D: db $20;X
L001C2E: db $FF;X
L001C2F: db $43;X
L001C30: db $41;X
L001C31: db $52;X
L001C32: db $42;X
L001C33: db $55;X
L001C34: db $4E;X
L001C35: db $43;X
L001C36: db $4C;X
L001C37: db $45;X
L001C38: db $20;X
L001C39: db $20;X
L001C3A: db $20;X
L001C3B: db $20;X
L001C3C: db $20;X
L001C3D: db $20;X
L001C3E: db $FF;X
L001C3F: db $53;X
L001C40: db $41;X
L001C41: db $54;X
L001C42: db $41;X
L001C43: db $4E;X
L001C44: db $20;X
L001C45: db $20;X
L001C46: db $20;X
L001C47: db $20;X
L001C48: db $20;X
L001C49: db $20;X
L001C4A: db $20;X
L001C4B: db $20;X
L001C4C: db $20;X
L001C4D: db $20;X
L001C4E: db $FF;X
L001C4F: db $4D;X
L001C50: db $41;X
L001C51: db $53;X
L001C52: db $4B;X
L001C53: db $45;X
L001C54: db $44;X
L001C55: db $20;X
L001C56: db $53;X
L001C57: db $41;X
L001C58: db $54;X
L001C59: db $41;X
L001C5A: db $4E;X
L001C5B: db $20;X
L001C5C: db $20;X
L001C5D: db $20;X
L001C5E: db $FF;X
L001C5F: db $A3;X
L001C60: db $1C;X
L001C61: db $AD;X
L001C62: db $1C;X
L001C63: db $B4;X
L001C64: db $1C;X
L001C65: db $B8;X
L001C66: db $1C;X
L001C67: db $C0;X
L001C68: db $1C;X
L001C69: db $C9;X
L001C6A: db $1C;X
L001C6B: db $D2;X
L001C6C: db $1C;X
L001C6D: db $D5;X
L001C6E: db $1C;X
L001C6F: db $DC;X
L001C70: db $1C;X
L001C71: db $E8;X
L001C72: db $1C;X
L001C73: db $F5;X
L001C74: db $1C;X
L001C75: db $FB;X
L001C76: db $1C;X
L001C77: db $FE;X
L001C78: db $1C;X
L001C79: db $01;X
L001C7A: db $1D;X
L001C7B: db $04;X
L001C7C: db $1D;X
L001C7D: db $10;X
L001C7E: db $1D;X
L001C7F: db $13;X
L001C80: db $1D;X
L001C81: db $16;X
L001C82: db $1D;X
L001C83: db $19;X
L001C84: db $1D;X
L001C85: db $21;X
L001C86: db $1D;X
L001C87: db $2C;X
L001C88: db $1D;X
L001C89: db $33;X
L001C8A: db $1D;X
L001C8B: db $36;X
L001C8C: db $1D;X
L001C8D: db $39;X
L001C8E: db $1D;X
L001C8F: db $3F;X
L001C90: db $1D;X
L001C91: db $42;X
L001C92: db $1D;X
L001C93: db $4E;X
L001C94: db $1D;X
L001C95: db $53;X
L001C96: db $1D;X
L001C97: db $5B;X
L001C98: db $1D;X
L001C99: db $66;X
L001C9A: db $1D;X
L001C9B: db $69;X
L001C9C: db $1D;X
L001C9D: db $76;X
L001C9E: db $1D;X
L001C9F: db $7F;X
L001CA0: db $1D;X
L001CA1: db $84;X
L001CA2: db $1D;X
L001CA3: db $5E;X
L001CA4: db $B1;X
L001CA5: db $D9;X
L001CA6: db $D9;X
L001CA7: db $20;X
L001CA8: db $C5;X
L001CA9: db $BC;X
L001CAA: db $DE;X
L001CAB: db $AC;X
L001CAC: db $FF;X
L001CAD: db $C1;X
L001CAE: db $AE;X
L001CAF: db $AF;X
L001CB0: db $CC;X
L001CB1: db $DF;X
L001CB2: db $DD;X
L001CB3: db $FF;X
L001CB4: db $C9;X
L001CB5: db $CE;X
L001CB6: db $CE;X
L001CB7: db $FF;X
L001CB8: db $5E;X
L001CB9: db $CA;X
L001CBA: db $C6;X
L001CBB: db $B0;X
L001CBC: db $CB;X
L001CBD: db $DE;X
L001CBE: db $B0;X
L001CBF: db $FF;X
L001CC0: db $5E;X
L001CC1: db $BD;X
L001CC2: db $B9;X
L001CC3: db $D9;X
L001CC4: db $C4;X
L001CC5: db $DD;X
L001CC6: db $2D;X
L001CC7: db $5F;X
L001CC8: db $FF;X
L001CC9: db $5E;X
L001CCA: db $B2;X
L001CCB: db $DD;X
L001CCC: db $B7;X
L001CCD: db $AD;X
L001CCE: db $CA;X
L001CCF: db $DE;X
L001CD0: db $BD;X
L001CD1: db $FF;X
L001CD2: db $C5;X
L001CD3: db $BC;X
L001CD4: db $FF;X
L001CD5: db $5E;X
L001CD6: db $B7;X
L001CD7: db $B7;X
L001CD8: db $B0;X
L001CD9: db $D3;X
L001CDA: db $D7;X
L001CDB: db $FF;X
L001CDC: db $5E;X
L001CDD: db $BA;X
L001CDE: db $C4;X
L001CDF: db $DE;X
L001CE0: db $D3;X
L001CE1: db $C4;X
L001CE2: db $DE;X
L001CE3: db $D7;X
L001CE4: db $BA;X
L001CE5: db $DE;X
L001CE6: db $DD;X
L001CE7: db $FF;X
L001CE8: db $5E;X
L001CE9: db $D7;X
L001CEA: db $B8;X
L001CEB: db $DE;X
L001CEC: db $C5;X
L001CED: db $BD;X
L001CEE: db $20;X
L001CEF: db $CB;X
L001CF0: db $DE;X
L001CF1: db $BC;X
L001CF2: db $AC;X
L001CF3: db $BC;X
L001CF4: db $FF;X
L001CF5: db $5E;X
L001CF6: db $BD;X
L001CF7: db $B7;X
L001CF8: db $AD;X
L001CF9: db $D7;X
L001CFA: db $FF;X
L001CFB: db $C5;X
L001CFC: db $BC;X
L001CFD: db $FF;X
L001CFE: db $C5;X
L001CFF: db $BC;X
L001D00: db $FF;X
L001D01: db $C5;X
L001D02: db $BC;X
L001D03: db $FF;X
L001D04: db $CC;X
L001D05: db $C0;X
L001D06: db $BA;X
L001D07: db $DE;X
L001D08: db $C9;X
L001D09: db $5E;X
L001D0A: db $B9;X
L001D0B: db $AF;X
L001D0C: db $C4;X
L001D0D: db $BC;X
L001D0E: db $B0;X
L001D0F: db $FF;X
L001D10: db $C5;X
L001D11: db $BC;X
L001D12: db $FF;X
L001D13: db $C5;X
L001D14: db $BC;X
L001D15: db $FF;X
L001D16: db $C5;X
L001D17: db $BC;X
L001D18: db $FF;X
L001D19: db $BD;X
L001D1A: db $B9;X
L001D1B: db $C4;X
L001D1C: db $B3;X
L001D1D: db $C0;X
L001D1E: db $DE;X
L001D1F: db $D7;X
L001D20: db $FF;X
L001D21: db $B3;X
L001D22: db $DB;X
L001D23: db $BA;X
L001D24: db $20;X
L001D25: db $BB;X
L001D26: db $B6;X
L001D27: db $C5;X
L001D28: db $CB;X
L001D29: db $DE;X
L001D2A: db $C4;X
L001D2B: db $FF;X
L001D2C: db $5E;X
L001D2D: db $CA;X
L001D2E: db $B0;X
L001D2F: db $CB;X
L001D30: db $DF;X
L001D31: db $B0;X
L001D32: db $FF;X
L001D33: db $C5;X
L001D34: db $BC;X
L001D35: db $FF;X
L001D36: db $C5;X
L001D37: db $BC;X
L001D38: db $FF;X
L001D39: db $5E;X
L001D3A: db $B3;X
L001D3B: db $A8;X
L001D3C: db $AF;X
L001D3D: db $C1;X
L001D3E: db $FF;X
L001D3F: db $C5;X
L001D40: db $BC;X
L001D41: db $FF;X
L001D42: db $5E;X
L001D43: db $C4;X
L001D44: db $DE;X
L001D45: db $D7;X
L001D46: db $BA;X
L001D47: db $B9;X
L001D48: db $DD;X
L001D49: db $C0;X
L001D4A: db $B3;X
L001D4B: db $DB;X
L001D4C: db $BD;X
L001D4D: db $FF;X
L001D4E: db $5E;X
L001D4F: db $D9;X
L001D50: db $D9;X
L001D51: db $B0;X
L001D52: db $FF;X
L001D53: db $5E;X
L001D54: db $D0;X
L001D55: db $C9;X
L001D56: db $C0;X
L001D57: db $B3;X
L001D58: db $DB;X
L001D59: db $BD;X
L001D5A: db $FF;X
L001D5B: db $BF;X
L001D5C: db $DE;X
L001D5D: db $B3;X
L001D5E: db $20;X
L001D5F: db $C0;X
L001D60: db $DE;X
L001D61: db $B2;X
L001D62: db $CF;X
L001D63: db $B5;X
L001D64: db $B3;X
L001D65: db $FF;X
L001D66: db $C5;X
L001D67: db $BC;X
L001D68: db $FF;X
L001D69: db $5E;X
L001D6A: db $BC;X
L001D6B: db $AA;X
L001D6C: db $BF;X
L001D6D: db $DE;X
L001D6E: db $20;X
L001D6F: db $B3;X
L001D70: db $A8;X
L001D71: db $B8;X
L001D72: db $DE;X
L001D73: db $A8;X
L001D74: db $A8;X
L001D75: db $FF;X
L001D76: db $5E;X
L001D77: db $B6;X
L001D78: db $B0;X
L001D79: db $CA;X
L001D7A: db $DE;X
L001D7B: db $DD;X
L001D7C: db $B8;X
L001D7D: db $D9;X
L001D7E: db $FF;X
L001D7F: db $5E;X
L001D80: db $BB;X
L001D81: db $C0;X
L001D82: db $DD;X
L001D83: db $FF;X
L001D84: db $5E;X
L001D85: db $CF;X
L001D86: db $BD;X
L001D87: db $B8;X
L001D88: db $C4;X
L001D89: db $DE;X
L001D8A: db $BB;X
L001D8B: db $C0;X
L001D8C: db $DD;X
L001D8D: db $FF;X
L001D8E:;C
	ld   a, [$B010]
	ld   c, a
	ld   b, $00
	ldh  a, [$FFC0]
	and  $0F
	ld   hl, $1DA6
	jr   z, L001DA0
L001D9D: db $21;X
L001D9E: db $AA;X
L001D9F: db $1D;X
L001DA0:;R
	add  hl, bc
	ld   a, [hl]
	ld   [$C09B], a
	ret
L001DA6: db $50;X
L001DA7: db $30
L001DA8: db $18;X
L001DA9: db $00;X
L001DAA: db $20;X
L001DAB: db $10;X
L001DAC: db $08;X
L001DAD: db $00;X
L001DAE:;CI
	call L001DC4
	call L001F34
	ld   a, $C3
	ld   [$C02C], a
	ld   a, $1D
	ld   [$C02D], a
	ld   a, $00
	ld   [$C02E], a
L001DC3:;I
	ret
L001DC4:;C
	ld   hl, $D400
	sub  a
	ld   b, $80
L001DCA:;R
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	dec  b
	jr   nz, L001DCA
	jp   L001F34
L001DE0: db $D5;X
L001DE1: db $21;X
L001DE2: db $00;X
L001DE3: db $D4;X
L001DE4: db $11;X
L001DE5: db $40;X
L001DE6: db $00;X
L001DE7: db $06;X
L001DE8: db $20;X
L001DE9: db $7E;X
L001DEA: db $E6;X
L001DEB: db $40;X
L001DEC: db $20;X
L001DED: db $0F;X
L001DEE: db $0E;X
L001DEF: db $08;X
L001DF0: db $22;X
L001DF1: db $22;X
L001DF2: db $22;X
L001DF3: db $22;X
L001DF4: db $22;X
L001DF5: db $22;X
L001DF6: db $22;X
L001DF7: db $22;X
L001DF8: db $0D;X
L001DF9: db $20;X
L001DFA: db $F5;X
L001DFB: db $18;X
L001DFC: db $01;X
L001DFD: db $19;X
L001DFE: db $05;X
L001DFF: db $20;X
L001E00: db $E8;X
L001E01: db $D1;X
L001E02: db $C9;X
L001E03:;C
	ld   hl, $C7E0
	ld   a, l
	ldh  [$FFB8], a
	ld   a, h
	ldh  [$FFB9], a
	ld   a, $20
	ldh  [$FFBA], a
	sub  a
	ldh  [$FFB0], a
	ld   b, a
	ld   a, [$C0D3]
	add  a
	rl   b
	ld   a, [$C0D2]
	add  a
	rl   b
	ld   a, b
	xor  $07
	ldh  [$FFC8], a
	ld   hl, $D400
L001E28:;R
	ld   e, l
	ld   d, h
	ldh  a, [$FFC8]
	and  [hl]
	jr   z, L001E40
	ld   a, e
	ldh  [$FFB1], a
	inc  l
	ldi  a, [hl]
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	rst  $18
	ldh  a, [$FFB1]
	ld   e, a
L001E40:;R
	ld   hl, $0040
	add  hl, de
	ldh  a, [$FFB0]
	inc  a
	ldh  [$FFB0], a
	cp   $20
	jr   c, L001E28
	ld   a, $04
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	call $4000
	ld   hl, $C02E
	ldd  a, [hl]
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	ldd  a, [hl]
	ld   l, [hl]
	ld   h, a
	jp   hl
L001E64:;C
	push de
	push hl
	ld   hl, $D4C0
	ld   de, $0040
	ld   c, $1D
L001E6E:;R
	ld   a, [hl]
	and  a
	jr   z, L001E7A
	add  hl, de
	dec  c
	jr   nz, L001E6E
L001E76: db $E1;X
L001E77: db $D1;X
L001E78: db $37;X
L001E79: db $C9;X
L001E7A:;R
	ld   a, $07
	ld   c, l
	ldi  [hl], a
	ld   [hl], b
	inc  l
	pop  de
	ld   [hl], e
	inc  l
	ld   [hl], d
	ld   l, c
	pop  de
	ret
L001E87:;C
	call L001E64
	jr   c, L001E8F
	ld   [hl], $87
	ret
L001E8F: db $D5;X
L001E90: db $E5;X
L001E91: db $21;X
L001E92: db $C0;X
L001E93: db $D4;X
L001E94: db $11;X
L001E95: db $40;X
L001E96: db $00;X
L001E97: db $0E;X
L001E98: db $1D;X
L001E99: db $7E;X
L001E9A: db $E6;X
L001E9B: db $80;X
L001E9C: db $28;X
L001E9D: db $08;X
L001E9E: db $19;X
L001E9F: db $0D;X
L001EA0: db $20;X
L001EA1: db $F7;X
L001EA2: db $E1;X
L001EA3: db $D1;X
L001EA4: db $37;X
L001EA5: db $C9;X
L001EA6: db $3E;X
L001EA7: db $87;X
L001EA8: db $4D;X
L001EA9: db $22;X
L001EAA: db $70;X
L001EAB: db $2C;X
L001EAC: db $D1;X
L001EAD: db $7B;X
L001EAE: db $22;X
L001EAF: db $7A;X
L001EB0: db $22;X
L001EB1: db $97;X
L001EB2: db $06;X
L001EB3: db $0E;X
L001EB4: db $22;X
L001EB5: db $22;X
L001EB6: db $22;X
L001EB7: db $22;X
L001EB8: db $22;X
L001EB9: db $22;X
L001EBA: db $22;X
L001EBB: db $22;X
L001EBC: db $22;X
L001EBD: db $22;X
L001EBE: db $22;X
L001EBF: db $22;X
L001EC0: db $22;X
L001EC1: db $22;X
L001EC2: db $22;X
L001EC3: db $05;X
L001EC4: db $20;X
L001EC5: db $EE;X
L001EC6: db $22;X
L001EC7: db $22;X
L001EC8: db $22;X
L001EC9: db $77;X
L001ECA: db $69;X
L001ECB: db $D1;X
L001ECC: db $C9;X
L001ECD:;J
	ldh  a, [$FFB1]
	ld   l, a
	ld   h, d
L001ED1:;C
	ld   b, $04
	sub  a
L001ED4:;R
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	dec  b
	jr   nz, L001ED4
	ret
L001EE8:;C
	ldh  a, [$FFB1]
	add  $22
	ld   l, a
	ld   h, d
	ld   [hl], c
	inc  l
	ld   [hl], b
	jr   L001F09
L001EF3:;CR
	ldh  a, [$FFB1]
	add  $22
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   c, a
	ld   b, [hl]
	or   b
	jr   z, L001F09
	dec  bc
	ld   a, b
	ldd  [hl], a
	ld   [hl], c
	or   c
	jr   z, L001F09
	pop  hl
	ret
L001F08: db $62;X
L001F09:;R
	pop  bc
	ldh  a, [$FFB1]
	add  $02
	ld   l, a
	ld   [hl], c
	inc  l
	ld   [hl], b
	ret
L001F13:;C
	ldh  a, [$FFA8]
	and  $0B
	jr   z, L001EF3
L001F19: db $F0;X
L001F1A: db $B1;X
L001F1B: db $C6;X
L001F1C: db $22;X
L001F1D: db $6F;X
L001F1E: db $62;X
L001F1F: db $36;X
L001F20: db $00;X
L001F21: db $2C;X
L001F22: db $36;X
L001F23: db $00;X
L001F24: db $18;X
L001F25: db $E3;X
L001F26:;C
	ld   h, d
	pop  bc
	ldh  a, [$FFB1]
	ld   e, a
	add  $02
	ld   l, a
	ld   [hl], c
	inc  l
	ld   [hl], b
	ld   l, c
	ld   h, b
	jp   hl
L001F34:;JC
	ld   hl, $C800
	ld   b, $80
	sub  a
L001F3A:;R
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	dec  b
	jr   nz, L001F3A
	ret
L001F46:;C
	ldh  a, [$FFBA]
	and  a
	jr   z, L001F60
	ld   e, a
	ldh  a, [$FFB8]
	ld   l, a
	ldh  a, [$FFB9]
	ld   h, a
	ld   bc, $0020
L001F55:;R
	add  hl, bc
	ld   a, [hl]
	and  a
	jr   z, L001F62
	dec  e
	jr   nz, L001F55
L001F5D: db $97;X
L001F5E: db $E0;X
L001F5F: db $BA;X
L001F60: db $37;X
L001F61: db $C9;X
L001F62:;R
	dec  e
	ld   a, e
	ldh  [$FFBA], a
	ld   a, l
	ldh  [$FFB8], a
	ld   a, h
	ldh  [$FFB9], a
	ret
L001F6D:;C
	ldh  a, [$FFB1]
	add  $06
	ld   l, a
	ld   h, d
	ld   a, [hl]
	ldh  [$FFB2], a
	ldh  a, [$FFB2]
	and  $02
	call nz, L001F94
	ldh  a, [$FFB2]
	and  $01
	call nz, L001FB6
	ldh  a, [$FFB2]
	and  $08
	call nz, L001FD9
	ldh  a, [$FFB2]
	and  $04
	call nz, L002000
	and  a
	ret
L001F94:;C
	ld   a, l
	add  $0E
	ld   e, a
	add  $F8
	ld   l, a
	ld   a, [de]
	inc  e
	add  [hl]
	ldi  [hl], a
	ld   a, [de]
	adc  a, [hl]
	ld   b, a
	ldh  a, [$FFB2]
	and  $20
	jr   nz, L001FB1
	ld   a, b
	cp   $E0
	jr   nc, L001FB3
	cp   $20
	jr   c, L001FB4
L001FB1:;X
	ld   [hl], b
	ret
L001FB3: db $37;X
L001FB4: db $C1;X
L001FB5: db $C9;X
L001FB6:;C
	ldh  a, [$FFB1]
	add  $18
	ld   e, a
	add  $F8
	ld   l, a
	ld   a, [de]
	inc  e
	add  [hl]
	ldi  [hl], a
	ld   a, [de]
	adc  a, [hl]
	ld   b, a
	ldh  a, [$FFB2]
	and  $10
	jr   nz, L001FD4
	ld   a, b
	cp   $D0
	jr   nc, L001FD6
	cp   $20
	jr   c, L001FD7
L001FD4:;R
	ld   [hl], b
	ret
L001FD6: db $37;X
L001FD7: db $C1;X
L001FD8: db $C9;X
L001FD9:;C
	ldh  a, [$FFB1]
	add  $0D
	ld   l, a
	ld   c, [hl]
	add  $0E
	ld   l, a
	ld   b, [hl]
	inc  l
	ld   e, [hl]
	inc  l
	ld   d, [hl]
	add  $F9
	ld   l, a
	ld   a, c
	cp   b
	jr   z, L001FFE
	jr   nc, L001FF8
	ld   a, [hl]
	add  e
	ldi  [hl], a
	ld   a, [hl]
	adc  a, d
	ld   [hl], a
	ld   d, h
	ret
L001FF8:;R
	ld   a, [hl]
	sub  e
	ldi  [hl], a
	ld   a, [hl]
	sbc  d
	ld   [hl], a
L001FFE:;R
	ld   d, h
	ret
L002000:;C
	ldh  a, [$FFB1]
	add  $11
	ld   l, a
	ld   c, [hl]
	add  $0E
	ld   l, a
	ld   b, [hl]
	inc  l
	ld   e, [hl]
	inc  l
	ld   d, [hl]
	add  $F9
	ld   l, a
	ld   a, c
	cp   b
	jr   z, L002025
	jr   nc, L00201F
	ld   a, [hl]
	add  e
	ldi  [hl], a
	ld   a, [hl]
	adc  a, d
	ld   [hl], a
	ld   d, h
	ret
L00201F: db $7E;X
L002020: db $93;X
L002021: db $22;X
L002022: db $7E;X
L002023: db $9A;X
L002024: db $77;X
L002025: db $54;X
L002026: db $C9;X
L002027:;C
	ldh  a, [$FFB1]
	add  $2C
	ld   e, a
	ld   a, [de]
	and  a
	jr   z, L002033
	dec  a
	ld   [de], a
	ret
L002033:;R
	ldh  a, [hROMBank]
	push af
	ld   a, e
	add  $08
	ld   l, a
	ld   h, d
	ldd  a, [hl]
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	ld   b, [hl]
	dec  l
	ld   c, [hl]
L002044:;R
	ld   a, [bc]
	ldh  [$FFD0], a
	inc  bc
	ld   a, [bc]
	cp   $FE
	jr   c, L002099
	jr   nz, L00207B
	inc  e
	ld   a, [de]
	and  a
	jr   z, L002062
	dec  a
	ld   [de], a
	jr   z, L002062
	dec  e
	ld   a, e
	add  $0C
	ld   l, a
	ld   c, [hl]
	inc  l
	ld   b, [hl]
	jr   L002044
L002062:;R
	ldh  a, [$FFD0]
	and  a
	jr   nz, L00206F
	pop  af
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	scf  
	ret
L00206F:;R
	ld   [de], a
	dec  e
	inc  bc
	ld   a, e
	add  $0C
	ld   l, a
	ld   [hl], c
	inc  l
	ld   [hl], b
	jr   L002044
L00207B:;R
	ld   l, e
	inc  l
	ld   [hl], $00
	inc  bc
	ld   a, [bc]
	inc  bc
	ld   l, a
	ld   a, [bc]
	ld   b, a
	ld   c, l
	ld   a, [bc]
	ldh  [$FFD0], a
	inc  bc
	call L002095
	pop  af
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	scf  
	ret
L002095:;C
	ld   a, $01
	push af
	ld   a, [bc]
L002099:;R
	cp   $F0
	jr   c, L0020B4
	add  a
	add  a
	add  a
	and  $78
	ld   l, a
	call L000D98
	and  $07
	or   l
	push bc
	add  $CC
	ld   c, a
	ld   a, $20
	adc  a, $00
	ld   b, a
	ld   a, [bc]
	pop  bc
L0020B4:;R
	ld   [de], a
	ld   a, e
	add  $DD
	ld   l, a
	ldh  a, [$FFD0]
	ld   [hl], a
	inc  bc
	ld   a, e
	add  $06
	ld   l, a
	ld   [hl], c
	inc  l
	ld   [hl], b
	pop  af
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	and  a
	ret
L0020CC: db $30
L0020CD: db $60;X
L0020CE: db $02
L0020CF: db $6C
L0020D0: db $40
L0020D1: db $46
L0020D2: db $50
L0020D3: db $5C
L0020D4: db $30
L0020D5: db $60
L0020D6: db $20
L0020D7: db $6C
L0020D8: db $40
L0020D9: db $46
L0020DA: db $50
L0020DB: db $5C
L0020DC: db $00;X
L0020DD: db $00;X
L0020DE: db $00;X
L0020DF: db $00;X
L0020E0: db $00;X
L0020E1: db $46;X
L0020E2: db $50;X
L0020E3: db $5C;X
L0020E4: db $44;X
L0020E5: db $14;X
L0020E6: db $78;X
L0020E7: db $28;X
L0020E8: db $A0;X
L0020E9: db $1E;X
L0020EA: db $46;X
L0020EB: db $50;X
L0020EC: db $00;X
L0020ED: db $00;X
L0020EE: db $00;X
L0020EF: db $00;X
L0020F0: db $20;X
L0020F1: db $10;X
L0020F2: db $0C;X
L0020F3: db $30;X
L0020F4: db $1E;X
L0020F5: db $02;X
L0020F6: db $06;X
L0020F7: db $0F;X
L0020F8: db $32;X
L0020F9: db $0A;X
L0020FA: db $14;X
L0020FB: db $2D;X
L0020FC: db $30;X
L0020FD: db $60;X
L0020FE: db $00;X
L0020FF: db $6C;X
L002100: db $40;X
L002101: db $46;X
L002102: db $50;X
L002103: db $5C;X
L002104: db $30;X
L002105: db $60;X
L002106: db $00;X
L002107: db $6C;X
L002108: db $40;X
L002109: db $46;X
L00210A: db $50;X
L00210B: db $5C;X
L00210C:;JC
	ldh  a, [$FF96]
	cp   $A0
	ret  nc
	ld   l, a
	ld   h, $C6
	ldh  a, [$FFD1]
	di   
	ldi  [hl], a
	ldh  a, [$FFD0]
	ldi  [hl], a
	ldh  a, [$FFD2]
	ldi  [hl], a
	ldh  a, [$FFD3]
	ldi  [hl], a
	ei   
	ld   a, l
	ldh  [$FF96], a
	ret
L002126:;C
	ld   a, [$C074]
	and  a
	ret  z
	ld   hl, $C075
	ldi  a, [hl]
	add  [hl]
	ldi  [hl], a
	ret  nc
	ld   a, [$C074]
	add  a
	jr   c, L002159
	dec  [hl]
	jr   nz, L002170
	sub  a
	ld   [$C074], a
	ldh  a, [$FF8F]
	add  a
	jp   c, L0021DD
	ld   hl, $2208
	ldi  a, [hl]
	ldh  [$FF8B], a
	ldh  [$FF8C], a
	ld   a, [hl]
	ldh  [$FF8D], a
	ld   a, [$C073]
	and  a
	ret  z
	ld   a, [hl]
	ldh  [$FF8B], a
	ret
L002159:;R
	inc  [hl]
	ld   a, [hl]
	cp   $03
	jr   c, L002171
	sub  a
	ld   [$C074], a
	ldh  [$FF8B], a
	ldh  [$FF8C], a
	ldh  [$FF8D], a
	ldh  a, [$FF8F]
	add  a
	ret  nc
L00216D: db $C3;X
L00216E: db $F7;X
L00216F: db $21;X
L002170:;R
	ld   a, [hl]
L002171:;JR
	add  a
	ld   l, a
	ld   h, $00
	ldh  a, [$FF8F]
	add  a
	jr   c, L00218F
	ld   bc, $2208
	add  hl, bc
	ldi  a, [hl]
	ldh  [$FF8B], a
	ldh  [$FF8C], a
	ld   a, [hl]
	ldh  [$FF8D], a
	ld   a, [$C073]
	and  a
	ret  z
	ld   a, [hl]
	ldh  [$FF8B], a
	ret
L00218F: db $7D;X
L002190: db $A7;X
L002191: db $28;X
L002192: db $4A;X
L002193: db $FE;X
L002194: db $04;X
L002195: db $CA;X
L002196: db $BA;X
L002197: db $21;X
L002198: db $D2;X
L002199: db $F7;X
L00219A: db $21;X
L00219B: db $01;X
L00219C: db $00;X
L00219D: db $C7;X
L00219E: db $21;X
L00219F: db $80;X
L0021A0: db $C7;X
L0021A1: db $0A;X
L0021A2: db $0C;X
L0021A3: db $F6;X
L0021A4: db $20;X
L0021A5: db $5F;X
L0021A6: db $0A;X
L0021A7: db $0C;X
L0021A8: db $F6;X
L0021A9: db $84;X
L0021AA: db $CB;X
L0021AB: db $3F;X
L0021AC: db $CB;X
L0021AD: db $1B;X
L0021AE: db $73;X
L0021AF: db $2C;X
L0021B0: db $77;X
L0021B1: db $2C;X
L0021B2: db $20;X
L0021B3: db $ED;X
L0021B4: db $3E;X
L0021B5: db $01;X
L0021B6: db $EA;X
L0021B7: db $12;X
L0021B8: db $C0;X
L0021B9: db $C9;X
L0021BA: db $01;X
L0021BB: db $00;X
L0021BC: db $C7;X
L0021BD: db $21;X
L0021BE: db $80;X
L0021BF: db $C7;X
L0021C0: db $0A;X
L0021C1: db $0C;X
L0021C2: db $F6;X
L0021C3: db $60;X
L0021C4: db $5F;X
L0021C5: db $0A;X
L0021C6: db $0C;X
L0021C7: db $F6;X
L0021C8: db $8C;X
L0021C9: db $CB;X
L0021CA: db $2F;X
L0021CB: db $CB;X
L0021CC: db $1B;X
L0021CD: db $CB;X
L0021CE: db $3F;X
L0021CF: db $CB;X
L0021D0: db $1B;X
L0021D1: db $73;X
L0021D2: db $2C;X
L0021D3: db $77;X
L0021D4: db $2C;X
L0021D5: db $20;X
L0021D6: db $E9;X
L0021D7: db $3E;X
L0021D8: db $01;X
L0021D9: db $EA;X
L0021DA: db $12;X
L0021DB: db $C0;X
L0021DC: db $C9;X
L0021DD: db $21;X
L0021DE: db $00;X
L0021DF: db $C7;X
L0021E0: db $01;X
L0021E1: db $80;X
L0021E2: db $C7;X
L0021E3: db $2A;X
L0021E4: db $02;X
L0021E5: db $0C;X
L0021E6: db $2A;X
L0021E7: db $02;X
L0021E8: db $0C;X
L0021E9: db $2A;X
L0021EA: db $02;X
L0021EB: db $0C;X
L0021EC: db $2A;X
L0021ED: db $02;X
L0021EE: db $0C;X
L0021EF: db $20;X
L0021F0: db $F2;X
L0021F1: db $3E;X
L0021F2: db $01;X
L0021F3: db $EA;X
L0021F4: db $12;X
L0021F5: db $C0;X
L0021F6: db $C9;X
L0021F7: db $21;X
L0021F8: db $80;X
L0021F9: db $C7;X
L0021FA: db $3E;X
L0021FB: db $FF;X
L0021FC: db $22;X
L0021FD: db $36;X
L0021FE: db $7F;X
L0021FF: db $2C;X
L002200: db $20;X
L002201: db $FA;X
L002202: db $3E;X
L002203: db $01;X
L002204: db $EA;X
L002205: db $12;X
L002206: db $C0;X
L002207: db $C9;X
L002208: db $E4
L002209: db $D0
L00220A: db $90
L00220B: db $90
L00220C: db $40
L00220D: db $40
L00220E: db $00
L00220F: db $00
L002210:;JC
	ld   a, $01
	ld   [$C074], a
	ld   a, b
	ld   [$C075], a
	sub  a
	ld   [$C076], a
	ld   a, $03
	ld   [$C077], a
	jp   L002171
L002225:;JC
	ld   a, $81
	ld   [$C074], a
	ld   a, b
	ld   [$C075], a
	sub  a
	ld   [$C076], a
	ld   [$C077], a
	jp   L002171
L002238:;CI
	ld   hl, $25AB
	ld   e, $80
L00223D:;R
	ld   bc, $C700
L002240:;R
	ldi  a, [hl]
	ld   [bc], a
	inc  c
	dec  e
	jr   nz, L002240
	ret
L002247:;C
	ld   e, $40
	jr   L00223D
L00224B: db $1E;X
L00224C: db $40;X
L00224D: db $01;X
L00224E: db $40;X
L00224F: db $C7;X
L002250: db $18;X
L002251: db $EE;X
L002252: db $2A;X
L002253: db $FE;X
L002254: db $FF;X
L002255: db $28;X
L002256: db $14;X
L002257: db $C6;X
L002258: db $00;X
L002259: db $4F;X
L00225A: db $06;X
L00225B: db $C7;X
L00225C: db $2A;X
L00225D: db $87;X
L00225E: db $87;X
L00225F: db $5F;X
L002260: db $2A;X
L002261: db $02;X
L002262: db $0C;X
L002263: db $2A;X
L002264: db $02;X
L002265: db $0C;X
L002266: db $1D;X
L002267: db $20;X
L002268: db $F7;X
L002269: db $18;X
L00226A: db $E7;X
L00226B: db $C9;X
L00226C:;C
	ld   a, $01
	ld   [$C186], a
	call L00227F
	ld   a, $03
	ldh  [rTAC], a
	ldh  a, [$FF91]
	ldh  [rTMA], a
	ldh  [rTIMA], a
	ret
L00227F:;C
	call L00229B
	ld   a, $4F
	ld   [$C182], a
	ld   a, $5E
	ld   [$C183], a
	ret
L00228D:;C
	call L00229B
	ld   a, $76
	ld   [$C182], a
	ld   a, $5E
	ld   [$C183], a
	ret
L00229B:;C
	ldh  a, [rIE]
	and  $F3
	ldh  [rIE], a
	sub  a
	ld   [$C181], a
	inc  a
	ldh  [rSC], a
	ld   a, $05
	ld   [$C184], a
	ret
L0022AE:;C
	sub  a
	ldh  [rSC], a
	ld   a, [$C186]
	add  $90
	ldh  [rSB], a
	ld   a, $80
	ldh  [rSC], a
	call L000D98
	and  $0F
	add  $03
	ld   [$C184], a
	ret
L0022C7: db $97;X
L0022C8: db $E0;X
L0022C9: db $CF;X
L0022CA: db $E0;X
L0022CB: db $CE;X
L0022CC: db $E0;X
L0022CD: db $CD;X
L0022CE: db $E0;X
L0022CF: db $CC;X
L0022D0: db $C9;X
L0022D1:;C
	pop  hl
	ld   a, l
	ld   [$C182], a
	ld   a, h
	ld   [$C183], a
	jp   hl
L0022DB:;C
	pop  hl
	ld   a, l
	ld   [$C182], a
	ld   a, h
	ld   [$C183], a
	ret
L0022E5: db $CD;X
L0022E6: db $EC;X
L0022E7: db $22;X
L0022E8: db $C0;X
L0022E9: db $C3;X
L0022EA: db $2C;X
L0022EB: db $23;X
L0022EC: db $26;X
L0022ED: db $C3;X
L0022EE: db $FA;X
L0022EF: db $81;X
L0022F0: db $C1;X
L0022F1: db $CB;X
L0022F2: db $47;X
L0022F3: db $28;X
L0022F4: db $0C;X
L0022F5: db $F0;X
L0022F6: db $CE;X
L0022F7: db $6F;X
L0022F8: db $F0;X
L0022F9: db $CF;X
L0022FA: db $95;X
L0022FB: db $CB;X
L0022FC: db $3F;X
L0022FD: db $28;X
L0022FE: db $0D;X
L0022FF: db $3D;X
L002300: db $C9;X
L002301: db $FA;X
L002302: db $1A;X
L002303: db $C0;X
L002304: db $A7;X
L002305: db $C2;X
L002306: db $2C;X
L002307: db $23;X
L002308: db $2E;X
L002309: db $00;X
L00230A: db $37;X
L00230B: db $C9;X
L00230C: db $3E;X
L00230D: db $7F;X
L00230E: db $A7;X
L00230F: db $C9;X
L002310:;C
	ld   h, $C3
	ld   a, [$C181]
	bit  0, a
	jr   z, L002322
L002319: db $F0;X
L00231A: db $CD;X
L00231B: db $6F;X
L00231C: db $F0;X
L00231D: db $CC;X
L00231E: db $95;X
L00231F: db $CB;X
L002320: db $3F;X
L002321: db $C9;X
L002322:;R
	ld   a, [$C01A]
	and  a
	jr   nz, L00232C
	ld   l, $00
	scf  
	ret
L00232C: db $F3;X
L00232D: db $31;X
L00232E: db $00;X
L00232F: db $C3;X
L002330: db $CD;X
L002331: db $E0;X
L002332: db $05;X
L002333: db $CD;X
L002334: db $6C;X
L002335: db $22;X
L002336: db $CD;X
L002337: db $AE;X
L002338: db $1D;X
L002339: db $3E;X
L00233A: db $05;X
L00233B: db $E0;X
L00233C: db $90;X
L00233D: db $EA;X
L00233E: db $00;X
L00233F: db $20;X
L002340: db $CD;X
L002341: db $18;X
L002342: db $56;X
L002343: db $3E;X
L002344: db $55;X
L002345: db $EA;X
L002346: db $79;X
L002347: db $C0;X
L002348: db $3E;X
L002349: db $24;X
L00234A: db $EA;X
L00234B: db $78;X
L00234C: db $C0;X
L00234D: db $97;X
L00234E: db $EA;X
L00234F: db $7A;X
L002350: db $C0;X
L002351: db $EA;X
L002352: db $7B;X
L002353: db $C0;X
L002354: db $FB;X
L002355: db $3E;X
L002356: db $F1;X
L002357: db $CD;X
L002358: db $4E;X
L002359: db $3B;X
L00235A: db $C3;X
L00235B: db $68;X
L00235C: db $01;X
L00235D: db $CD;X
L00235E: db $EC;X
L00235F: db $22;X
L002360: db $28;X
L002361: db $CA;X
L002362: db $F0;X
L002363: db $B1;X
L002364: db $C6;X
L002365: db $28;X
L002366: db $5F;X
L002367: db $1A;X
L002368: db $A7;X
L002369: db $78;X
L00236A: db $28;X
L00236B: db $08;X
L00236C: db $F6;X
L00236D: db $18;X
L00236E: db $2C;X
L00236F: db $22;X
L002370: db $7D;X
L002371: db $E0;X
L002372: db $CE;X
L002373: db $C9;X
L002374: db $F6;X
L002375: db $10;X
L002376: db $2C;X
L002377: db $22;X
L002378: db $7D;X
L002379: db $E0;X
L00237A: db $CE;X
L00237B: db $C9;X
L00237C: db $F0;X
L00237D: db $B1;X
L00237E: db $C6;X
L00237F: db $28;X
L002380: db $5F;X
L002381: db $1A;X
L002382: db $A7;X
L002383: db $20;X
L002384: db $04;X
L002385: db $FA;X
L002386: db $89;X
L002387: db $C1;X
L002388: db $C9;X
L002389: db $FA;X
L00238A: db $88;X
L00238B: db $C1;X
L00238C: db $C9;X
L00238D: db $CB;X
L00238E: db $20;X
L00238F: db $CB;X
L002390: db $B8;X
L002391: db $CB;X
L002392: db $79;X
L002393: db $C8;X
L002394: db $CB;X
L002395: db $B9;X
L002396: db $CB;X
L002397: db $C0;X
L002398: db $C9;X
L002399: db $CB;X
L00239A: db $38;X
L00239B: db $D0;X
L00239C: db $CB;X
L00239D: db $F9;X
L00239E: db $C9;X
L00239F:;J
	ldh  a, [rIE]
	ldh  [$FFAD], a
	and  $08
	ldh  [rIE], a
	ld   a, $C6
	call $FF80
	ei   
	ldh  a, [rLY]
	cp   $90
	jr   c, L0023B8
	cp   $96
	call c, L000FE0
L0023B8:;R
	ldh  a, [$FFAD]
	and  $1E
	ldh  [rIE], a
	ldh  a, [$FF8B]
	ldh  [rBGP], a
	ldh  a, [$FF8C]
	ldh  [rOBP0], a
	ldh  a, [$FF8D]
	ldh  [rOBP1], a
	ldh  a, [$FF88]
	ldh  [rSCX], a
	ldh  a, [$FF89]
	ldh  [rSCY], a
	ldh  a, [hROMBank]
	push af
	ldh  a, [$FF8F]
	bit  2, a
	call nz, L0023F3
	call Sound_Do
	pop  af
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	ld   a, $01
	ld   [$C010], a
	ldh  a, [$FFAD]
	ldh  [rIE], a
	pop  hl
	pop  de
	pop  bc
	pop  af
	reti 
L0023F3: db $21;X
L0023F4: db $F8;X
L0023F5: db $FF;X
L0023F6: db $7E;X
L0023F7: db $A7;X
L0023F8: db $28;X
L0023F9: db $02;X
L0023FA: db $35;X
L0023FB: db $C0;X
L0023FC: db $2C;X
L0023FD: db $2A;X
L0023FE: db $A7;X
L0023FF: db $20;X
L002400: db $27;X
L002401: db $2A;X
L002402: db $BE;X
L002403: db $C8;X
L002404: db $6F;X
L002405: db $26;X
L002406: db $C4;X
L002407: db $C6;X
L002408: db $04;X
L002409: db $E6;X
L00240A: db $3F;X
L00240B: db $F6;X
L00240C: db $C0;X
L00240D: db $E0;X
L00240E: db $FA;X
L00240F: db $2A;X
L002410: db $E0;X
L002411: db $FC;X
L002412: db $4F;X
L002413: db $2A;X
L002414: db $E0;X
L002415: db $FD;X
L002416: db $47;X
L002417: db $2A;X
L002418: db $E0;X
L002419: db $FE;X
L00241A: db $E0;X
L00241B: db $90;X
L00241C: db $EA;X
L00241D: db $00;X
L00241E: db $20;X
L00241F: db $0A;X
L002420: db $E6;X
L002421: db $07;X
L002422: db $E0;X
L002423: db $F9;X
L002424: db $69;X
L002425: db $60;X
L002426: db $18;X
L002427: db $0C;X
L002428: db $21;X
L002429: db $FE;X
L00242A: db $FF;X
L00242B: db $3A;X
L00242C: db $E0;X
L00242D: db $90;X
L00242E: db $EA;X
L00242F: db $00;X
L002430: db $20;X
L002431: db $3A;X
L002432: db $6E;X
L002433: db $67;X
L002434: db $0E;X
L002435: db $00;X
L002436: db $3E;X
L002437: db $00;X
L002438: db $E2;X
L002439: db $3E;X
L00243A: db $30;X
L00243B: db $E2;X
L00243C: db $06;X
L00243D: db $10;X
L00243E: db $1E;X
L00243F: db $08;X
L002440: db $2A;X
L002441: db $57;X
L002442: db $CB;X
L002443: db $42;X
L002444: db $3E;X
L002445: db $10;X
L002446: db $20;X
L002447: db $02;X
L002448: db $3E;X
L002449: db $20;X
L00244A: db $E2;X
L00244B: db $3E;X
L00244C: db $30;X
L00244D: db $E2;X
L00244E: db $CB;X
L00244F: db $1A;X
L002450: db $1D;X
L002451: db $20;X
L002452: db $EF;X
L002453: db $05;X
L002454: db $20;X
L002455: db $E8;X
L002456: db $3E;X
L002457: db $20;X
L002458: db $E2;X
L002459: db $3E;X
L00245A: db $30;X
L00245B: db $E2;X
L00245C: db $7D;X
L00245D: db $E0;X
L00245E: db $FC;X
L00245F: db $7C;X
L002460: db $E0;X
L002461: db $FD;X
L002462: db $21;X
L002463: db $F8;X
L002464: db $FF;X
L002465: db $36;X
L002466: db $04;X
L002467: db $2C;X
L002468: db $35;X
L002469: db $C9;X
L00246A: db $F0;X
L00246B: db $FF;X
L00246C: db $E0;X
L00246D: db $AD;X
L00246E: db $E6;X
L00246F: db $08;X
L002470: db $E0;X
L002471: db $FF;X
L002472: db $F0;X
L002473: db $70;X
L002474: db $47;X
L002475: db $F0;X
L002476: db $4F;X
L002477: db $4F;X
L002478: db $C5;X
L002479: db $97;X
L00247A: db $E0;X
L00247B: db $4F;X
L00247C: db $3C;X
L00247D: db $E0;X
L00247E: db $70;X
L00247F: db $3E;X
L002480: db $C6;X
L002481: db $CD;X
L002482: db $80;X
L002483: db $FF;X
L002484: db $FB;X
L002485: db $F0;X
L002486: db $44;X
L002487: db $FE;X
L002488: db $90;X
L002489: db $38;X
L00248A: db $4A;X
L00248B: db $FE;X
L00248C: db $96;X
L00248D: db $30;X
L00248E: db $46;X
L00248F: db $FA;X
L002490: db $12;X
L002491: db $C0;X
L002492: db $A7;X
L002493: db $28;X
L002494: db $3D;X
L002495: db $21;X
L002496: db $80;X
L002497: db $C7;X
L002498: db $1E;X
L002499: db $08;X
L00249A: db $0E;X
L00249B: db $69;X
L00249C: db $3E;X
L00249D: db $80;X
L00249E: db $E0;X
L00249F: db $68;X
L0024A0: db $2A;X
L0024A1: db $E2;X
L0024A2: db $2A;X
L0024A3: db $E2;X
L0024A4: db $2A;X
L0024A5: db $E2;X
L0024A6: db $2A;X
L0024A7: db $E2;X
L0024A8: db $2A;X
L0024A9: db $E2;X
L0024AA: db $2A;X
L0024AB: db $E2;X
L0024AC: db $2A;X
L0024AD: db $E2;X
L0024AE: db $2A;X
L0024AF: db $E2;X
L0024B0: db $1D;X
L0024B1: db $20;X
L0024B2: db $ED;X
L0024B3: db $1E;X
L0024B4: db $08;X
L0024B5: db $0E;X
L0024B6: db $6B;X
L0024B7: db $3E;X
L0024B8: db $80;X
L0024B9: db $E0;X
L0024BA: db $6A;X
L0024BB: db $2A;X
L0024BC: db $E2;X
L0024BD: db $2A;X
L0024BE: db $E2;X
L0024BF: db $2A;X
L0024C0: db $E2;X
L0024C1: db $2A;X
L0024C2: db $E2;X
L0024C3: db $2A;X
L0024C4: db $E2;X
L0024C5: db $2A;X
L0024C6: db $E2;X
L0024C7: db $2A;X
L0024C8: db $E2;X
L0024C9: db $2A;X
L0024CA: db $E2;X
L0024CB: db $1D;X
L0024CC: db $20;X
L0024CD: db $ED;X
L0024CE: db $97;X
L0024CF: db $EA;X
L0024D0: db $12;X
L0024D1: db $C0;X
L0024D2: db $CD;X
L0024D3: db $B1;X
L0024D4: db $10;X
L0024D5: db $F0;X
L0024D6: db $AD;X
L0024D7: db $E6;X
L0024D8: db $1E;X
L0024D9: db $E0;X
L0024DA: db $FF;X
L0024DB: db $F0;X
L0024DC: db $88;X
L0024DD: db $E0;X
L0024DE: db $43;X
L0024DF: db $F0;X
L0024E0: db $89;X
L0024E1: db $E0;X
L0024E2: db $42;X
L0024E3: db $F0;X
L0024E4: db $90;X
L0024E5: db $F5;X
L0024E6: db $F0;X
L0024E7: db $8F;X
L0024E8: db $CB;X
L0024E9: db $57;X
L0024EA: db $C4;X
L0024EB: db $F3;X
L0024EC: db $23;X
L0024ED: db $CD;X
L0024EE: db $00;X
L0024EF: db $30;X
L0024F0: db $F1;X
L0024F1: db $E0;X
L0024F2: db $90;X
L0024F3: db $EA;X
L0024F4: db $00;X
L0024F5: db $20;X
L0024F6: db $3E;X
L0024F7: db $01;X
L0024F8: db $EA;X
L0024F9: db $10;X
L0024FA: db $C0;X
L0024FB: db $F0;X
L0024FC: db $AD;X
L0024FD: db $E0;X
L0024FE: db $FF;X
L0024FF: db $C1;X
L002500: db $79;X
L002501: db $E0;X
L002502: db $4F;X
L002503: db $78;X
L002504: db $E0;X
L002505: db $70;X
L002506: db $E1;X
L002507: db $D1;X
L002508: db $C1;X
L002509: db $F1;X
L00250A: db $D9;X
L00250B: db $0D
L00250C: db $12
L00250D: db $1A
L00250E: db $FE
L00250F: db $43
L002510: db $00
L002511: db $84
L002512: db $01
L002513: db $12
L002514: db $18
L002515: db $23
L002516: db $E6
L002517: db $32
L002518: db $00
L002519: db $3B
L00251A: db $01
L00251B: db $18
L00251C: db $19
L00251D: db $12
L00251E: db $09
L00251F: db $29
L002520: db $00
L002521: db $1A
L002522: db $01
L002523: db $0D
L002524: db $0B
L002525: db $1E
L002526: db $8D
L002527: db $20
L002528: db $00
L002529: db $8C
L00252A: db $00
L00252B: db $10
L00252C: db $1F
L00252D: db $10
L00252E: db $12
L00252F: db $11
L002530: db $00
L002531: db $65
L002532: db $00
L002533: db $13
L002534: db $18
L002535: db $0D
L002536: db $D9
L002537: db $42
L002538: db $00
L002539: db $72
L00253A: db $01
L00253B: db $16
L00253C: db $0B
L00253D: db $11
L00253E: db $37
L00253F: db $2C
L002540: db $00
L002541: db $1B
L002542: db $01
L002543: db $1D
L002544: db $15
L002545: db $23
L002546: db $D6
L002547: db $2B
L002548: db $00
L002549: db $08
L00254A: db $01
L00254B: db $0D
L00254C: db $0B
L00254D: db $1C
L00254E: db $48
L00254F: db $1F
L002550: db $00
L002551: db $93
L002552: db $00
L002553: db $15
L002554: db $15
L002555: db $23
L002556: db $0C
L002557: db $12
L002558: db $00
L002559: db $6D
L00255A: db $00
L00255B: db $1D
L00255C: db $0B
L00255D: db $1E
L00255E: db $A2
L00255F: db $48
L002560: db $00
L002561: db $A0
L002562: db $01
L002563: db $1C
L002564: db $1F
L002565: db $16
L002566: db $50
L002567: db $42
L002568: db $00
L002569: db $5C
L00256A: db $01
L00256B: db $17
L00256C: db $13
L00256D: db $18
L00256E: db $5E
L00256F: db $30
L002570: db $00
L002571: db $CC
L002572: db $00
L002573: db $21
L002574: db $13
L002575: db $1E
L002576: db $2C
L002577: db $24
L002578: db $00
L002579: db $89
L00257A: db $00
L00257B: db $18
L00257C: db $0B
L00257D: db $1D
L00257E: db $FA
L00257F: db $19
L002580: db $00
L002581: db $98
L002582: db $00
L002583: db $24
L002584: db $19
L002585: db $18
L002586: db $5E
L002587: db $A7
L002588: db $01
L002589: db $2E
L00258A: db $02
L00258B: db $12
L00258C: db $0B
L00258D: db $1A
L00258E: db $9F
L00258F: db $9B
L002590: db $01
L002591: db $F3
L002592: db $01
L002593: db $0E
L002594: db $1C
L002595: db $0B
L002596: db $34
L002597: db $94
L002598: db $01
L002599: db $80
L00259A: db $01
L00259B: db $1D
L00259C: db $12
L00259D: db $0F
L00259E: db $21
L00259F: db $86
L0025A0: db $01
L0025A1: db $95
L0025A2: db $01
L0025A3: db $24
L0025A4: db $19
L0025A5: db $12
L0025A6: db $B0
L0025A7: db $7B
L0025A8: db $01
L0025A9: db $6F
L0025AA: db $01
L0025AB: db $FF
L0025AC: db $7F
L0025AD: db $9F
L0025AE: db $2A
L0025AF: db $1B
L0025B0: db $34
L0025B1: db $00
L0025B2: db $00
L0025B3: db $FF
L0025B4: db $7F
L0025B5: db $A9
L0025B6: db $7C
L0025B7: db $7F
L0025B8: db $02
L0025B9: db $00
L0025BA: db $00
L0025BB: db $FF
L0025BC: db $7F
L0025BD: db $D3
L0025BE: db $0C
L0025BF: db $7F
L0025C0: db $02
L0025C1: db $00
L0025C2: db $00
L0025C3: db $FF
L0025C4: db $7F
L0025C5: db $CA
L0025C6: db $2A
L0025C7: db $80
L0025C8: db $01
L0025C9: db $00
L0025CA: db $00
L0025CB: db $FF
L0025CC: db $7F
L0025CD: db $80
L0025CE: db $01
L0025CF: db $BF
L0025D0: db $00
L0025D1: db $00
L0025D2: db $00
L0025D3: db $FF
L0025D4: db $7F
L0025D5: db $20
L0025D6: db $03
L0025D7: db $5A
L0025D8: db $08
L0025D9: db $00
L0025DA: db $00
L0025DB: db $FF
L0025DC: db $7F
L0025DD: db $14
L0025DE: db $7C
L0025DF: db $1C
L0025E0: db $03
L0025E1: db $00
L0025E2: db $00
L0025E3: db $FF
L0025E4: db $7F
L0025E5: db $00
L0025E6: db $54
L0025E7: db $00
L0025E8: db $72
L0025E9: db $00
L0025EA: db $00
L0025EB: db $FF
L0025EC: db $7F
L0025ED: db $9F
L0025EE: db $2A
L0025EF: db $1B
L0025F0: db $34
L0025F1: db $00
L0025F2: db $00
L0025F3: db $1F
L0025F4: db $7F
L0025F5: db $FF
L0025F6: db $7F
L0025F7: db $9F
L0025F8: db $2A
L0025F9: db $00
L0025FA: db $00
L0025FB: db $F8
L0025FC: db $7F
L0025FD: db $FF
L0025FE: db $7F
L0025FF: db $1F
L002600: db $03
L002601: db $00
L002602: db $00
L002603: db $FF
L002604: db $63
L002605: db $00
L002606: db $00
L002607: db $00
L002608: db $00
L002609: db $00
L00260A: db $00
L00260B: db $00
L00260C: db $00
L00260D: db $00
L00260E: db $00
L00260F: db $00
L002610: db $00
L002611: db $00
L002612: db $00
L002613: db $FF
L002614: db $7F
L002615: db $20
L002616: db $03
L002617: db $5A
L002618: db $08
L002619: db $00
L00261A: db $00
L00261B: db $FF
L00261C: db $7F
L00261D: db $14
L00261E: db $7C
L00261F: db $1C
L002620: db $03
L002621: db $00
L002622: db $00
L002623: db $FF
L002624: db $7F
L002625: db $00
L002626: db $54
L002627: db $00
L002628: db $72
L002629: db $00
L00262A: db $00
L00262B: db $00;X
L00262C: db $00;X
L00262D: db $00;X
L00262E: db $00;X
L00262F: db $00;X
L002630: db $00;X
L002631: db $00;X
L002632: db $00;X
L002633: db $00;X
L002634: db $00;X
L002635: db $00;X
L002636: db $00;X
L002637: db $00;X
L002638: db $00;X
L002639: db $00;X
L00263A: db $00;X
L00263B: db $00;X
L00263C: db $00;X
L00263D: db $00;X
L00263E: db $00;X
L00263F: db $00;X
L002640: db $00;X
L002641: db $00;X
L002642: db $00;X
L002643: db $00;X
L002644: db $00;X
L002645: db $00;X
L002646: db $00;X
L002647: db $00;X
L002648: db $00;X
L002649: db $00;X
L00264A: db $00;X
L00264B: db $00;X
L00264C: db $00;X
L00264D: db $00;X
L00264E: db $00;X
L00264F: db $00;X
L002650: db $00;X
L002651: db $00;X
L002652: db $00;X
L002653: db $00;X
L002654: db $00;X
L002655: db $00;X
L002656: db $00;X
L002657: db $00;X
L002658: db $00;X
L002659: db $00;X
L00265A: db $00;X
L00265B: db $00;X
L00265C: db $00;X
L00265D: db $00;X
L00265E: db $00;X
L00265F: db $00;X
L002660: db $00;X
L002661: db $00;X
L002662: db $00;X
L002663: db $00;X
L002664: db $00;X
L002665: db $00;X
L002666: db $00;X
L002667: db $00;X
L002668: db $00;X
L002669: db $00;X
L00266A: db $00;X
L00266B: db $00;X
L00266C: db $00;X
L00266D: db $00;X
L00266E: db $00;X
L00266F: db $00;X
L002670: db $00;X
L002671: db $00;X
L002672: db $00;X
L002673: db $00;X
L002674: db $00;X
L002675: db $00;X
L002676: db $00;X
L002677: db $00;X
L002678: db $00;X
L002679: db $00;X
L00267A: db $00;X
L00267B: db $00;X
L00267C: db $00;X
L00267D: db $00;X
L00267E: db $00;X
L00267F: db $00;X
L002680: db $00;X
L002681: db $00;X
L002682: db $00;X
L002683: db $00;X
L002684: db $00;X
L002685: db $00;X
L002686: db $00;X
L002687: db $00;X
L002688: db $00;X
L002689: db $00;X
L00268A: db $00;X
L00268B: db $00;X
L00268C: db $00;X
L00268D: db $00;X
L00268E: db $00;X
L00268F: db $00;X
L002690: db $00;X
L002691: db $00;X
L002692: db $00;X
L002693: db $00;X
L002694: db $00;X
L002695: db $00;X
L002696: db $00;X
L002697: db $00;X
L002698: db $00;X
L002699: db $00;X
L00269A: db $00;X
L00269B: db $00;X
L00269C: db $00;X
L00269D: db $00;X
L00269E: db $00;X
L00269F: db $00;X
L0026A0: db $00;X
L0026A1: db $00;X
L0026A2: db $00;X
L0026A3: db $00;X
L0026A4: db $00;X
L0026A5: db $00;X
L0026A6: db $00;X
L0026A7: db $00;X
L0026A8: db $00;X
L0026A9: db $00;X
L0026AA: db $00;X
L0026AB: db $00;X
L0026AC: db $00;X
L0026AD: db $00;X
L0026AE: db $00;X
L0026AF: db $00;X
L0026B0: db $00;X
L0026B1: db $00;X
L0026B2: db $00;X
L0026B3: db $00;X
L0026B4: db $00;X
L0026B5: db $00;X
L0026B6: db $00;X
L0026B7: db $00;X
L0026B8: db $00;X
L0026B9: db $00;X
L0026BA: db $00;X
L0026BB: db $00;X
L0026BC: db $00;X
L0026BD: db $00;X
L0026BE: db $00;X
L0026BF: db $00;X
L0026C0: db $00;X
L0026C1: db $00;X
L0026C2: db $00;X
L0026C3: db $00;X
L0026C4: db $00;X
L0026C5: db $00;X
L0026C6: db $00;X
L0026C7: db $00;X
L0026C8: db $00;X
L0026C9: db $00;X
L0026CA: db $00;X
L0026CB: db $00;X
L0026CC: db $00;X
L0026CD: db $00;X
L0026CE: db $00;X
L0026CF: db $00;X
L0026D0: db $00;X
L0026D1: db $00;X
L0026D2: db $00;X
L0026D3: db $00;X
L0026D4: db $00;X
L0026D5: db $00;X
L0026D6: db $00;X
L0026D7: db $00;X
L0026D8: db $00;X
L0026D9: db $00;X
L0026DA: db $00;X
L0026DB: db $00;X
L0026DC: db $00;X
L0026DD: db $00;X
L0026DE: db $00;X
L0026DF: db $00;X
L0026E0: db $00;X
L0026E1: db $00;X
L0026E2: db $00;X
L0026E3: db $00;X
L0026E4: db $00;X
L0026E5: db $00;X
L0026E6: db $00;X
L0026E7: db $00;X
L0026E8: db $00;X
L0026E9: db $00;X
L0026EA: db $00;X
L0026EB: db $00;X
L0026EC: db $00;X
L0026ED: db $00;X
L0026EE: db $00;X
L0026EF: db $00;X
L0026F0: db $00;X
L0026F1: db $00;X
L0026F2: db $00;X
L0026F3: db $00;X
L0026F4: db $00;X
L0026F5: db $00;X
L0026F6: db $00;X
L0026F7: db $00;X
L0026F8: db $00;X
L0026F9: db $00;X
L0026FA: db $00;X
L0026FB: db $00;X
L0026FC: db $00;X
L0026FD: db $00;X
L0026FE: db $00;X
L0026FF: db $00;X
L002700: db $00;X
L002701: db $00;X
L002702: db $00;X
L002703: db $00;X
L002704: db $00;X
L002705: db $00;X
L002706: db $00;X
L002707: db $00;X
L002708: db $00;X
L002709: db $00;X
L00270A: db $00;X
L00270B: db $00;X
L00270C: db $00;X
L00270D: db $00;X
L00270E: db $00;X
L00270F: db $00;X
L002710: db $00;X
L002711: db $00;X
L002712: db $00;X
L002713: db $00;X
L002714: db $00;X
L002715: db $00;X
L002716: db $00;X
L002717: db $00;X
L002718: db $00;X
L002719: db $00;X
L00271A: db $00;X
L00271B: db $00;X
L00271C: db $00;X
L00271D: db $00;X
L00271E: db $00;X
L00271F: db $00;X
L002720: db $00;X
L002721: db $00;X
L002722: db $00;X
L002723: db $00;X
L002724: db $00;X
L002725: db $00;X
L002726: db $00;X
L002727: db $00;X
L002728: db $00;X
L002729: db $00;X
L00272A: db $00;X
L00272B: db $00;X
L00272C: db $00;X
L00272D: db $00;X
L00272E: db $00;X
L00272F: db $00;X
L002730: db $00;X
L002731: db $00;X
L002732: db $00;X
L002733: db $00;X
L002734: db $00;X
L002735: db $00;X
L002736: db $00;X
L002737: db $00;X
L002738: db $00;X
L002739: db $00;X
L00273A: db $00;X
L00273B: db $00;X
L00273C: db $00;X
L00273D: db $00;X
L00273E: db $00;X
L00273F: db $00;X
L002740: db $00;X
L002741: db $00;X
L002742: db $00;X
L002743: db $00;X
L002744: db $00;X
L002745: db $00;X
L002746: db $00;X
L002747: db $00;X
L002748: db $00;X
L002749: db $00;X
L00274A: db $00;X
L00274B: db $00;X
L00274C: db $00;X
L00274D: db $00;X
L00274E: db $00;X
L00274F: db $00;X
L002750: db $00;X
L002751: db $00;X
L002752: db $00;X
L002753: db $00;X
L002754: db $00;X
L002755: db $00;X
L002756: db $00;X
L002757: db $00;X
L002758: db $00;X
L002759: db $00;X
L00275A: db $00;X
L00275B: db $00;X
L00275C: db $00;X
L00275D: db $00;X
L00275E: db $00;X
L00275F: db $00;X
L002760: db $00;X
L002761: db $00;X
L002762: db $00;X
L002763: db $00;X
L002764: db $00;X
L002765: db $00;X
L002766: db $00;X
L002767: db $00;X
L002768: db $00;X
L002769: db $00;X
L00276A: db $00;X
L00276B: db $00;X
L00276C: db $00;X
L00276D: db $00;X
L00276E: db $00;X
L00276F: db $00;X
L002770: db $00;X
L002771: db $00;X
L002772: db $00;X
L002773: db $00;X
L002774: db $00;X
L002775: db $00;X
L002776: db $00;X
L002777: db $00;X
L002778: db $00;X
L002779: db $00;X
L00277A: db $00;X
L00277B: db $00;X
L00277C: db $00;X
L00277D: db $00;X
L00277E: db $00;X
L00277F: db $00;X
L002780: db $00;X
L002781: db $00;X
L002782: db $00;X
L002783: db $00;X
L002784: db $00;X
L002785: db $00;X
L002786: db $00;X
L002787: db $00;X
L002788: db $00;X
L002789: db $00;X
L00278A: db $00;X
L00278B: db $00;X
L00278C: db $00;X
L00278D: db $00;X
L00278E: db $00;X
L00278F: db $00;X
L002790: db $00;X
L002791: db $00;X
L002792: db $00;X
L002793: db $00;X
L002794: db $00;X
L002795: db $00;X
L002796: db $00;X
L002797: db $00;X
L002798: db $00;X
L002799: db $00;X
L00279A: db $00;X
L00279B: db $00;X
L00279C: db $00;X
L00279D: db $00;X
L00279E: db $00;X
L00279F: db $00;X
L0027A0: db $00;X
L0027A1: db $00;X
L0027A2: db $00;X
L0027A3: db $00;X
L0027A4: db $00;X
L0027A5: db $00;X
L0027A6: db $00;X
L0027A7: db $00;X
L0027A8: db $00;X
L0027A9: db $00;X
L0027AA: db $00;X
L0027AB: db $00;X
L0027AC: db $00;X
L0027AD: db $00;X
L0027AE: db $00;X
L0027AF: db $00;X
L0027B0: db $00;X
L0027B1: db $00;X
L0027B2: db $00;X
L0027B3: db $00;X
L0027B4: db $00;X
L0027B5: db $00;X
L0027B6: db $00;X
L0027B7: db $00;X
L0027B8: db $00;X
L0027B9: db $00;X
L0027BA: db $00;X
L0027BB: db $00;X
L0027BC: db $00;X
L0027BD: db $00;X
L0027BE: db $00;X
L0027BF: db $00;X
L0027C0: db $00;X
L0027C1: db $00;X
L0027C2: db $00;X
L0027C3: db $00;X
L0027C4: db $00;X
L0027C5: db $00;X
L0027C6: db $00;X
L0027C7: db $00;X
L0027C8: db $00;X
L0027C9: db $00;X
L0027CA: db $00;X
L0027CB: db $00;X
L0027CC: db $00;X
L0027CD: db $00;X
L0027CE: db $00;X
L0027CF: db $00;X
L0027D0: db $00;X
L0027D1: db $00;X
L0027D2: db $00;X
L0027D3: db $00;X
L0027D4: db $00;X
L0027D5: db $00;X
L0027D6: db $00;X
L0027D7: db $00;X
L0027D8: db $00;X
L0027D9: db $00;X
L0027DA: db $00;X
L0027DB: db $00;X
L0027DC: db $00;X
L0027DD: db $00;X
L0027DE: db $00;X
L0027DF: db $00;X
L0027E0: db $00;X
L0027E1: db $00;X
L0027E2: db $00;X
L0027E3: db $00;X
L0027E4: db $00;X
L0027E5: db $00;X
L0027E6: db $00;X
L0027E7: db $00;X
L0027E8: db $00;X
L0027E9: db $00;X
L0027EA: db $00;X
L0027EB: db $00;X
L0027EC: db $00;X
L0027ED: db $00;X
L0027EE: db $00;X
L0027EF: db $00;X
L0027F0: db $00;X
L0027F1: db $00;X
L0027F2: db $00;X
L0027F3: db $00;X
L0027F4: db $00;X
L0027F5: db $00;X
L0027F6: db $00;X
L0027F7: db $00;X
L0027F8: db $00;X
L0027F9: db $00;X
L0027FA: db $00;X
L0027FB: db $00;X
L0027FC: db $00;X
L0027FD: db $00;X
L0027FE: db $00;X
L0027FF: db $00;X
L002800: db $00;X
L002801: db $00;X
L002802: db $00;X
L002803: db $00;X
L002804: db $00;X
L002805: db $00;X
L002806: db $00;X
L002807: db $00;X
L002808: db $00;X
L002809: db $00;X
L00280A: db $00;X
L00280B: db $00;X
L00280C: db $00;X
L00280D: db $00;X
L00280E: db $00;X
L00280F: db $00;X
L002810: db $00;X
L002811: db $00;X
L002812: db $00;X
L002813: db $00;X
L002814: db $00;X
L002815: db $00;X
L002816: db $00;X
L002817: db $00;X
L002818: db $00;X
L002819: db $00;X
L00281A: db $00;X
L00281B: db $00;X
L00281C: db $00;X
L00281D: db $00;X
L00281E: db $00;X
L00281F: db $00;X
L002820: db $00;X
L002821: db $00;X
L002822: db $00;X
L002823: db $00;X
L002824: db $00;X
L002825: db $00;X
L002826: db $00;X
L002827: db $00;X
L002828: db $00;X
L002829: db $00;X
L00282A: db $00;X
L00282B: db $00;X
L00282C: db $00;X
L00282D: db $00;X
L00282E: db $00;X
L00282F: db $00;X
L002830: db $00;X
L002831: db $00;X
L002832: db $00;X
L002833: db $00;X
L002834: db $00;X
L002835: db $00;X
L002836: db $00;X
L002837: db $00;X
L002838: db $00;X
L002839: db $00;X
L00283A: db $00;X
L00283B: db $00;X
L00283C: db $00;X
L00283D: db $00;X
L00283E: db $00;X
L00283F: db $00;X
L002840: db $00;X
L002841: db $00;X
L002842: db $00;X
L002843: db $00;X
L002844: db $00;X
L002845: db $00;X
L002846: db $00;X
L002847: db $00;X
L002848: db $00;X
L002849: db $00;X
L00284A: db $00;X
L00284B: db $00;X
L00284C: db $00;X
L00284D: db $00;X
L00284E: db $00;X
L00284F: db $00;X
L002850: db $00;X
L002851: db $00;X
L002852: db $00;X
L002853: db $00;X
L002854: db $00;X
L002855: db $00;X
L002856: db $00;X
L002857: db $00;X
L002858: db $00;X
L002859: db $00;X
L00285A: db $00;X
L00285B: db $00;X
L00285C: db $00;X
L00285D: db $00;X
L00285E: db $00;X
L00285F: db $00;X
L002860: db $00;X
L002861: db $00;X
L002862: db $00;X
L002863: db $00;X
L002864: db $00;X
L002865: db $00;X
L002866: db $00;X
L002867: db $00;X
L002868: db $00;X
L002869: db $00;X
L00286A: db $00;X
L00286B: db $00;X
L00286C: db $00;X
L00286D: db $00;X
L00286E: db $00;X
L00286F: db $00;X
L002870: db $00;X
L002871: db $00;X
L002872: db $00;X
L002873: db $00;X
L002874: db $00;X
L002875: db $00;X
L002876: db $00;X
L002877: db $00;X
L002878: db $00;X
L002879: db $00;X
L00287A: db $00;X
L00287B: db $00;X
L00287C: db $00;X
L00287D: db $00;X
L00287E: db $00;X
L00287F: db $00;X
L002880: db $00;X
L002881: db $00;X
L002882: db $00;X
L002883: db $00;X
L002884: db $00;X
L002885: db $00;X
L002886: db $00;X
L002887: db $00;X
L002888: db $00;X
L002889: db $00;X
L00288A: db $00;X
L00288B: db $00;X
L00288C: db $00;X
L00288D: db $00;X
L00288E: db $00;X
L00288F: db $00;X
L002890: db $00;X
L002891: db $00;X
L002892: db $00;X
L002893: db $00;X
L002894: db $00;X
L002895: db $00;X
L002896: db $00;X
L002897: db $00;X
L002898: db $00;X
L002899: db $00;X
L00289A: db $00;X
L00289B: db $00;X
L00289C: db $00;X
L00289D: db $00;X
L00289E: db $00;X
L00289F: db $00;X
L0028A0: db $00;X
L0028A1: db $00;X
L0028A2: db $00;X
L0028A3: db $00;X
L0028A4: db $00;X
L0028A5: db $00;X
L0028A6: db $00;X
L0028A7: db $00;X
L0028A8: db $00;X
L0028A9: db $00;X
L0028AA: db $00;X
L0028AB: db $00;X
L0028AC: db $00;X
L0028AD: db $00;X
L0028AE: db $00;X
L0028AF: db $00;X
L0028B0: db $00;X
L0028B1: db $00;X
L0028B2: db $00;X
L0028B3: db $00;X
L0028B4: db $00;X
L0028B5: db $00;X
L0028B6: db $00;X
L0028B7: db $00;X
L0028B8: db $00;X
L0028B9: db $00;X
L0028BA: db $00;X
L0028BB: db $00;X
L0028BC: db $00;X
L0028BD: db $00;X
L0028BE: db $00;X
L0028BF: db $00;X
L0028C0: db $00;X
L0028C1: db $00;X
L0028C2: db $00;X
L0028C3: db $00;X
L0028C4: db $00;X
L0028C5: db $00;X
L0028C6: db $00;X
L0028C7: db $00;X
L0028C8: db $00;X
L0028C9: db $00;X
L0028CA: db $00;X
L0028CB: db $00;X
L0028CC: db $00;X
L0028CD: db $00;X
L0028CE: db $00;X
L0028CF: db $00;X
L0028D0: db $00;X
L0028D1: db $00;X
L0028D2: db $00;X
L0028D3: db $00;X
L0028D4: db $00;X
L0028D5: db $00;X
L0028D6: db $00;X
L0028D7: db $00;X
L0028D8: db $00;X
L0028D9: db $00;X
L0028DA: db $00;X
L0028DB: db $00;X
L0028DC: db $00;X
L0028DD: db $00;X
L0028DE: db $00;X
L0028DF: db $00;X
L0028E0: db $00;X
L0028E1: db $00;X
L0028E2: db $00;X
L0028E3: db $00;X
L0028E4: db $00;X
L0028E5: db $00;X
L0028E6: db $00;X
L0028E7: db $00;X
L0028E8: db $00;X
L0028E9: db $00;X
L0028EA: db $00;X
L0028EB: db $00;X
L0028EC: db $00;X
L0028ED: db $00;X
L0028EE: db $00;X
L0028EF: db $00;X
L0028F0: db $00;X
L0028F1: db $00;X
L0028F2: db $00;X
L0028F3: db $00;X
L0028F4: db $00;X
L0028F5: db $00;X
L0028F6: db $00;X
L0028F7: db $00;X
L0028F8: db $00;X
L0028F9: db $00;X
L0028FA: db $00;X
L0028FB: db $00;X
L0028FC: db $00;X
L0028FD: db $00;X
L0028FE: db $00;X
L0028FF: db $00;X
L002900: db $00;X
L002901: db $00;X
L002902: db $00;X
L002903: db $00;X
L002904: db $00;X
L002905: db $00;X
L002906: db $00;X
L002907: db $00;X
L002908: db $00;X
L002909: db $00;X
L00290A: db $00;X
L00290B: db $00;X
L00290C: db $00;X
L00290D: db $00;X
L00290E: db $00;X
L00290F: db $00;X
L002910: db $00;X
L002911: db $00;X
L002912: db $00;X
L002913: db $00;X
L002914: db $00;X
L002915: db $00;X
L002916: db $00;X
L002917: db $00;X
L002918: db $00;X
L002919: db $00;X
L00291A: db $00;X
L00291B: db $00;X
L00291C: db $00;X
L00291D: db $00;X
L00291E: db $00;X
L00291F: db $00;X
L002920: db $00;X
L002921: db $00;X
L002922: db $00;X
L002923: db $00;X
L002924: db $00;X
L002925: db $00;X
L002926: db $00;X
L002927: db $00;X
L002928: db $00;X
L002929: db $00;X
L00292A: db $00;X
L00292B: db $00;X
L00292C: db $00;X
L00292D: db $00;X
L00292E: db $00;X
L00292F: db $00;X
L002930: db $00;X
L002931: db $00;X
L002932: db $00;X
L002933: db $00;X
L002934: db $00;X
L002935: db $00;X
L002936: db $00;X
L002937: db $00;X
L002938: db $00;X
L002939: db $00;X
L00293A: db $00;X
L00293B: db $00;X
L00293C: db $00;X
L00293D: db $00;X
L00293E: db $00;X
L00293F: db $00;X
L002940: db $00;X
L002941: db $00;X
L002942: db $00;X
L002943: db $00;X
L002944: db $00;X
L002945: db $00;X
L002946: db $00;X
L002947: db $00;X
L002948: db $00;X
L002949: db $00;X
L00294A: db $00;X
L00294B: db $00;X
L00294C: db $00;X
L00294D: db $00;X
L00294E: db $00;X
L00294F: db $00;X
L002950: db $00;X
L002951: db $00;X
L002952: db $00;X
L002953: db $00;X
L002954: db $00;X
L002955: db $00;X
L002956: db $00;X
L002957: db $00;X
L002958: db $00;X
L002959: db $00;X
L00295A: db $00;X
L00295B: db $00;X
L00295C: db $00;X
L00295D: db $00;X
L00295E: db $00;X
L00295F: db $00;X
L002960: db $00;X
L002961: db $00;X
L002962: db $00;X
L002963: db $00;X
L002964: db $00;X
L002965: db $00;X
L002966: db $00;X
L002967: db $00;X
L002968: db $00;X
L002969: db $00;X
L00296A: db $00;X
L00296B: db $00;X
L00296C: db $00;X
L00296D: db $00;X
L00296E: db $00;X
L00296F: db $00;X
L002970: db $00;X
L002971: db $00;X
L002972: db $00;X
L002973: db $00;X
L002974: db $00;X
L002975: db $00;X
L002976: db $00;X
L002977: db $00;X
L002978: db $00;X
L002979: db $00;X
L00297A: db $00;X
L00297B: db $00;X
L00297C: db $00;X
L00297D: db $00;X
L00297E: db $00;X
L00297F: db $00;X
L002980: db $00;X
L002981: db $00;X
L002982: db $00;X
L002983: db $00;X
L002984: db $00;X
L002985: db $00;X
L002986: db $00;X
L002987: db $00;X
L002988: db $00;X
L002989: db $00;X
L00298A: db $00;X
L00298B: db $00;X
L00298C: db $00;X
L00298D: db $00;X
L00298E: db $00;X
L00298F: db $00;X
L002990: db $00;X
L002991: db $00;X
L002992: db $00;X
L002993: db $00;X
L002994: db $00;X
L002995: db $00;X
L002996: db $00;X
L002997: db $00;X
L002998: db $00;X
L002999: db $00;X
L00299A: db $00;X
L00299B: db $00;X
L00299C: db $00;X
L00299D: db $00;X
L00299E: db $00;X
L00299F: db $00;X
L0029A0: db $00;X
L0029A1: db $00;X
L0029A2: db $00;X
L0029A3: db $00;X
L0029A4: db $00;X
L0029A5: db $00;X
L0029A6: db $00;X
L0029A7: db $00;X
L0029A8: db $00;X
L0029A9: db $00;X
L0029AA: db $00;X
L0029AB: db $00;X
L0029AC: db $00;X
L0029AD: db $00;X
L0029AE: db $00;X
L0029AF: db $00;X
L0029B0: db $00;X
L0029B1: db $00;X
L0029B2: db $00;X
L0029B3: db $00;X
L0029B4: db $00;X
L0029B5: db $00;X
L0029B6: db $00;X
L0029B7: db $00;X
L0029B8: db $00;X
L0029B9: db $00;X
L0029BA: db $00;X
L0029BB: db $00;X
L0029BC: db $00;X
L0029BD: db $00;X
L0029BE: db $00;X
L0029BF: db $00;X
L0029C0: db $00;X
L0029C1: db $00;X
L0029C2: db $00;X
L0029C3: db $00;X
L0029C4: db $00;X
L0029C5: db $00;X
L0029C6: db $00;X
L0029C7: db $00;X
L0029C8: db $00;X
L0029C9: db $00;X
L0029CA: db $00;X
L0029CB: db $00;X
L0029CC: db $00;X
L0029CD: db $00;X
L0029CE: db $00;X
L0029CF: db $00;X
L0029D0: db $00;X
L0029D1: db $00;X
L0029D2: db $00;X
L0029D3: db $00;X
L0029D4: db $00;X
L0029D5: db $00;X
L0029D6: db $00;X
L0029D7: db $00;X
L0029D8: db $00;X
L0029D9: db $00;X
L0029DA: db $00;X
L0029DB: db $00;X
L0029DC: db $00;X
L0029DD: db $00;X
L0029DE: db $00;X
L0029DF: db $00;X
L0029E0: db $00;X
L0029E1: db $00;X
L0029E2: db $00;X
L0029E3: db $00;X
L0029E4: db $00;X
L0029E5: db $00;X
L0029E6: db $00;X
L0029E7: db $00;X
L0029E8: db $00;X
L0029E9: db $00;X
L0029EA: db $00;X
L0029EB: db $00;X
L0029EC: db $00;X
L0029ED: db $00;X
L0029EE: db $00;X
L0029EF: db $00;X
L0029F0: db $00;X
L0029F1: db $00;X
L0029F2: db $00;X
L0029F3: db $00;X
L0029F4: db $00;X
L0029F5: db $00;X
L0029F6: db $00;X
L0029F7: db $00;X
L0029F8: db $00;X
L0029F9: db $00;X
L0029FA: db $00;X
L0029FB: db $00;X
L0029FC: db $00;X
L0029FD: db $00;X
L0029FE: db $00;X
L0029FF: db $00;X
L002A00: db $00;X
L002A01: db $00;X
L002A02: db $00;X
L002A03: db $00;X
L002A04: db $00;X
L002A05: db $00;X
L002A06: db $00;X
L002A07: db $00;X
L002A08: db $00;X
L002A09: db $00;X
L002A0A: db $00;X
L002A0B: db $00;X
L002A0C: db $00;X
L002A0D: db $00;X
L002A0E: db $00;X
L002A0F: db $00;X
L002A10: db $00;X
L002A11: db $00;X
L002A12: db $00;X
L002A13: db $00;X
L002A14: db $00;X
L002A15: db $00;X
L002A16: db $00;X
L002A17: db $00;X
L002A18: db $00;X
L002A19: db $00;X
L002A1A: db $00;X
L002A1B: db $00;X
L002A1C: db $00;X
L002A1D: db $00;X
L002A1E: db $00;X
L002A1F: db $00;X
L002A20: db $00;X
L002A21: db $00;X
L002A22: db $00;X
L002A23: db $00;X
L002A24: db $00;X
L002A25: db $00;X
L002A26: db $00;X
L002A27: db $00;X
L002A28: db $00;X
L002A29: db $00;X
L002A2A: db $00;X
L002A2B: db $00;X
L002A2C: db $00;X
L002A2D: db $00;X
L002A2E: db $00;X
L002A2F: db $00;X
L002A30: db $00;X
L002A31: db $00;X
L002A32: db $00;X
L002A33: db $00;X
L002A34: db $00;X
L002A35: db $00;X
L002A36: db $00;X
L002A37: db $00;X
L002A38: db $00;X
L002A39: db $00;X
L002A3A: db $00;X
L002A3B: db $00;X
L002A3C: db $00;X
L002A3D: db $00;X
L002A3E: db $00;X
L002A3F: db $00;X
L002A40: db $00;X
L002A41: db $00;X
L002A42: db $00;X
L002A43: db $00;X
L002A44: db $00;X
L002A45: db $00;X
L002A46: db $00;X
L002A47: db $00;X
L002A48: db $00;X
L002A49: db $00;X
L002A4A: db $00;X
L002A4B: db $00;X
L002A4C: db $00;X
L002A4D: db $00;X
L002A4E: db $00;X
L002A4F: db $00;X
L002A50: db $00;X
L002A51: db $00;X
L002A52: db $00;X
L002A53: db $00;X
L002A54: db $00;X
L002A55: db $00;X
L002A56: db $00;X
L002A57: db $00;X
L002A58: db $00;X
L002A59: db $00;X
L002A5A: db $00;X
L002A5B: db $00;X
L002A5C: db $00;X
L002A5D: db $00;X
L002A5E: db $00;X
L002A5F: db $00;X
L002A60: db $00;X
L002A61: db $00;X
L002A62: db $00;X
L002A63: db $00;X
L002A64: db $00;X
L002A65: db $00;X
L002A66: db $00;X
L002A67: db $00;X
L002A68: db $00;X
L002A69: db $00;X
L002A6A: db $00;X
L002A6B: db $00;X
L002A6C: db $00;X
L002A6D: db $00;X
L002A6E: db $00;X
L002A6F: db $00;X
L002A70: db $00;X
L002A71: db $00;X
L002A72: db $00;X
L002A73: db $00;X
L002A74: db $00;X
L002A75: db $00;X
L002A76: db $00;X
L002A77: db $00;X
L002A78: db $00;X
L002A79: db $00;X
L002A7A: db $00;X
L002A7B: db $00;X
L002A7C: db $00;X
L002A7D: db $00;X
L002A7E: db $00;X
L002A7F: db $00;X
L002A80: db $00;X
L002A81: db $00;X
L002A82: db $00;X
L002A83: db $00;X
L002A84: db $00;X
L002A85: db $00;X
L002A86: db $00;X
L002A87: db $00;X
L002A88: db $00;X
L002A89: db $00;X
L002A8A: db $00;X
L002A8B: db $00;X
L002A8C: db $00;X
L002A8D: db $00;X
L002A8E: db $00;X
L002A8F: db $00;X
L002A90: db $00;X
L002A91: db $00;X
L002A92: db $00;X
L002A93: db $00;X
L002A94: db $00;X
L002A95: db $00;X
L002A96: db $00;X
L002A97: db $00;X
L002A98: db $00;X
L002A99: db $00;X
L002A9A: db $00;X
L002A9B: db $00;X
L002A9C: db $00;X
L002A9D: db $00;X
L002A9E: db $00;X
L002A9F: db $00;X
L002AA0: db $00;X
L002AA1: db $00;X
L002AA2: db $00;X
L002AA3: db $00;X
L002AA4: db $00;X
L002AA5: db $00;X
L002AA6: db $00;X
L002AA7: db $00;X
L002AA8: db $00;X
L002AA9: db $00;X
L002AAA: db $00;X
L002AAB: db $00;X
L002AAC: db $00;X
L002AAD: db $00;X
L002AAE: db $00;X
L002AAF: db $00;X
L002AB0: db $00;X
L002AB1: db $00;X
L002AB2: db $00;X
L002AB3: db $00;X
L002AB4: db $00;X
L002AB5: db $00;X
L002AB6: db $00;X
L002AB7: db $00;X
L002AB8: db $00;X
L002AB9: db $00;X
L002ABA: db $00;X
L002ABB: db $00;X
L002ABC: db $00;X
L002ABD: db $00;X
L002ABE: db $00;X
L002ABF: db $00;X
L002AC0: db $00;X
L002AC1: db $00;X
L002AC2: db $00;X
L002AC3: db $00;X
L002AC4: db $00;X
L002AC5: db $00;X
L002AC6: db $00;X
L002AC7: db $00;X
L002AC8: db $00;X
L002AC9: db $00;X
L002ACA: db $00;X
L002ACB: db $00;X
L002ACC: db $00;X
L002ACD: db $00;X
L002ACE: db $00;X
L002ACF: db $00;X
L002AD0: db $00;X
L002AD1: db $00;X
L002AD2: db $00;X
L002AD3: db $00;X
L002AD4: db $00;X
L002AD5: db $00;X
L002AD6: db $00;X
L002AD7: db $00;X
L002AD8: db $00;X
L002AD9: db $00;X
L002ADA: db $00;X
L002ADB: db $00;X
L002ADC: db $00;X
L002ADD: db $00;X
L002ADE: db $00;X
L002ADF: db $00;X
L002AE0: db $00;X
L002AE1: db $00;X
L002AE2: db $00;X
L002AE3: db $00;X
L002AE4: db $00;X
L002AE5: db $00;X
L002AE6: db $00;X
L002AE7: db $00;X
L002AE8: db $00;X
L002AE9: db $00;X
L002AEA: db $00;X
L002AEB: db $00;X
L002AEC: db $00;X
L002AED: db $00;X
L002AEE: db $00;X
L002AEF: db $00;X
L002AF0: db $00;X
L002AF1: db $00;X
L002AF2: db $00;X
L002AF3: db $00;X
L002AF4: db $00;X
L002AF5: db $00;X
L002AF6: db $00;X
L002AF7: db $00;X
L002AF8: db $00;X
L002AF9: db $00;X
L002AFA: db $00;X
L002AFB: db $00;X
L002AFC: db $00;X
L002AFD: db $00;X
L002AFE: db $00;X
L002AFF: db $00;X
L002B00: db $00;X
L002B01: db $00;X
L002B02: db $00;X
L002B03: db $00;X
L002B04: db $00;X
L002B05: db $00;X
L002B06: db $00;X
L002B07: db $00;X
L002B08: db $00;X
L002B09: db $00;X
L002B0A: db $00;X
L002B0B: db $00;X
L002B0C: db $00;X
L002B0D: db $00;X
L002B0E: db $00;X
L002B0F: db $00;X
L002B10: db $00;X
L002B11: db $00;X
L002B12: db $00;X
L002B13: db $00;X
L002B14: db $00;X
L002B15: db $00;X
L002B16: db $00;X
L002B17: db $00;X
L002B18: db $00;X
L002B19: db $00;X
L002B1A: db $00;X
L002B1B: db $00;X
L002B1C: db $00;X
L002B1D: db $00;X
L002B1E: db $00;X
L002B1F: db $00;X
L002B20: db $00;X
L002B21: db $00;X
L002B22: db $00;X
L002B23: db $00;X
L002B24: db $00;X
L002B25: db $00;X
L002B26: db $00;X
L002B27: db $00;X
L002B28: db $00;X
L002B29: db $00;X
L002B2A: db $00;X
L002B2B: db $00;X
L002B2C: db $00;X
L002B2D: db $00;X
L002B2E: db $00;X
L002B2F: db $00;X
L002B30: db $00;X
L002B31: db $00;X
L002B32: db $00;X
L002B33: db $00;X
L002B34: db $00;X
L002B35: db $00;X
L002B36: db $00;X
L002B37: db $00;X
L002B38: db $00;X
L002B39: db $00;X
L002B3A: db $00;X
L002B3B: db $00;X
L002B3C: db $00;X
L002B3D: db $00;X
L002B3E: db $00;X
L002B3F: db $00;X
L002B40: db $00;X
L002B41: db $00;X
L002B42: db $00;X
L002B43: db $00;X
L002B44: db $00;X
L002B45: db $00;X
L002B46: db $00;X
L002B47: db $00;X
L002B48: db $00;X
L002B49: db $00;X
L002B4A: db $00;X
L002B4B: db $00;X
L002B4C: db $00;X
L002B4D: db $00;X
L002B4E: db $00;X
L002B4F: db $00;X
L002B50: db $00;X
L002B51: db $00;X
L002B52: db $00;X
L002B53: db $00;X
L002B54: db $00;X
L002B55: db $00;X
L002B56: db $00;X
L002B57: db $00;X
L002B58: db $00;X
L002B59: db $00;X
L002B5A: db $00;X
L002B5B: db $00;X
L002B5C: db $00;X
L002B5D: db $00;X
L002B5E: db $00;X
L002B5F: db $00;X
L002B60: db $00;X
L002B61: db $00;X
L002B62: db $00;X
L002B63: db $00;X
L002B64: db $00;X
L002B65: db $00;X
L002B66: db $00;X
L002B67: db $00;X
L002B68: db $00;X
L002B69: db $00;X
L002B6A: db $00;X
L002B6B: db $00;X
L002B6C: db $00;X
L002B6D: db $00;X
L002B6E: db $00;X
L002B6F: db $00;X
L002B70: db $00;X
L002B71: db $00;X
L002B72: db $00;X
L002B73: db $00;X
L002B74: db $00;X
L002B75: db $00;X
L002B76: db $00;X
L002B77: db $00;X
L002B78: db $00;X
L002B79: db $00;X
L002B7A: db $00;X
L002B7B: db $00;X
L002B7C: db $00;X
L002B7D: db $00;X
L002B7E: db $00;X
L002B7F: db $00;X
L002B80: db $00;X
L002B81: db $00;X
L002B82: db $00;X
L002B83: db $00;X
L002B84: db $00;X
L002B85: db $00;X
L002B86: db $00;X
L002B87: db $00;X
L002B88: db $00;X
L002B89: db $00;X
L002B8A: db $00;X
L002B8B: db $00;X
L002B8C: db $00;X
L002B8D: db $00;X
L002B8E: db $00;X
L002B8F: db $00;X
L002B90: db $00;X
L002B91: db $00;X
L002B92: db $00;X
L002B93: db $00;X
L002B94: db $00;X
L002B95: db $00;X
L002B96: db $00;X
L002B97: db $00;X
L002B98: db $00;X
L002B99: db $00;X
L002B9A: db $00;X
L002B9B: db $00;X
L002B9C: db $00;X
L002B9D: db $00;X
L002B9E: db $00;X
L002B9F: db $00;X
L002BA0: db $00;X
L002BA1: db $00;X
L002BA2: db $00;X
L002BA3: db $00;X
L002BA4: db $00;X
L002BA5: db $00;X
L002BA6: db $00;X
L002BA7: db $00;X
L002BA8: db $00;X
L002BA9: db $00;X
L002BAA: db $00;X
L002BAB: db $00;X
L002BAC: db $00;X
L002BAD: db $00;X
L002BAE: db $00;X
L002BAF: db $00;X
L002BB0: db $00;X
L002BB1: db $00;X
L002BB2: db $00;X
L002BB3: db $00;X
L002BB4: db $00;X
L002BB5: db $00;X
L002BB6: db $00;X
L002BB7: db $00;X
L002BB8: db $00;X
L002BB9: db $00;X
L002BBA: db $00;X
L002BBB: db $00;X
L002BBC: db $00;X
L002BBD: db $00;X
L002BBE: db $00;X
L002BBF: db $00;X
L002BC0: db $00;X
L002BC1: db $00;X
L002BC2: db $00;X
L002BC3: db $00;X
L002BC4: db $00;X
L002BC5: db $00;X
L002BC6: db $00;X
L002BC7: db $00;X
L002BC8: db $00;X
L002BC9: db $00;X
L002BCA: db $00;X
L002BCB: db $00;X
L002BCC: db $00;X
L002BCD: db $00;X
L002BCE: db $00;X
L002BCF: db $00;X
L002BD0: db $00;X
L002BD1: db $00;X
L002BD2: db $00;X
L002BD3: db $00;X
L002BD4: db $00;X
L002BD5: db $00;X
L002BD6: db $00;X
L002BD7: db $00;X
L002BD8: db $00;X
L002BD9: db $00;X
L002BDA: db $00;X
L002BDB: db $00;X
L002BDC: db $00;X
L002BDD: db $00;X
L002BDE: db $00;X
L002BDF: db $00;X
L002BE0: db $00;X
L002BE1: db $00;X
L002BE2: db $00;X
L002BE3: db $00;X
L002BE4: db $00;X
L002BE5: db $00;X
L002BE6: db $00;X
L002BE7: db $00;X
L002BE8: db $00;X
L002BE9: db $00;X
L002BEA: db $00;X
L002BEB: db $00;X
L002BEC: db $00;X
L002BED: db $00;X
L002BEE: db $00;X
L002BEF: db $00;X
L002BF0: db $00;X
L002BF1: db $00;X
L002BF2: db $00;X
L002BF3: db $00;X
L002BF4: db $00;X
L002BF5: db $00;X
L002BF6: db $00;X
L002BF7: db $00;X
L002BF8: db $00;X
L002BF9: db $00;X
L002BFA: db $00;X
L002BFB: db $00;X
L002BFC: db $00;X
L002BFD: db $00;X
L002BFE: db $00;X
L002BFF: db $00;X
L002C00: db $00;X
L002C01: db $00;X
L002C02: db $00;X
L002C03: db $00;X
L002C04: db $00;X
L002C05: db $00;X
L002C06: db $00;X
L002C07: db $00;X
L002C08: db $00;X
L002C09: db $00;X
L002C0A: db $00;X
L002C0B: db $00;X
L002C0C: db $00;X
L002C0D: db $00;X
L002C0E: db $00;X
L002C0F: db $00;X
L002C10: db $00;X
L002C11: db $00;X
L002C12: db $00;X
L002C13: db $00;X
L002C14: db $00;X
L002C15: db $00;X
L002C16: db $00;X
L002C17: db $00;X
L002C18: db $00;X
L002C19: db $00;X
L002C1A: db $00;X
L002C1B: db $00;X
L002C1C: db $00;X
L002C1D: db $00;X
L002C1E: db $00;X
L002C1F: db $00;X
L002C20: db $00;X
L002C21: db $00;X
L002C22: db $00;X
L002C23: db $00;X
L002C24: db $00;X
L002C25: db $00;X
L002C26: db $00;X
L002C27: db $00;X
L002C28: db $00;X
L002C29: db $00;X
L002C2A: db $00;X
L002C2B: db $00;X
L002C2C: db $00;X
L002C2D: db $00;X
L002C2E: db $00;X
L002C2F: db $00;X
L002C30: db $00;X
L002C31: db $00;X
L002C32: db $00;X
L002C33: db $00;X
L002C34: db $00;X
L002C35: db $00;X
L002C36: db $00;X
L002C37: db $00;X
L002C38: db $00;X
L002C39: db $00;X
L002C3A: db $00;X
L002C3B: db $00;X
L002C3C: db $00;X
L002C3D: db $00;X
L002C3E: db $00;X
L002C3F: db $00;X
L002C40: db $00;X
L002C41: db $00;X
L002C42: db $00;X
L002C43: db $00;X
L002C44: db $00;X
L002C45: db $00;X
L002C46: db $00;X
L002C47: db $00;X
L002C48: db $00;X
L002C49: db $00;X
L002C4A: db $00;X
L002C4B: db $00;X
L002C4C: db $00;X
L002C4D: db $00;X
L002C4E: db $00;X
L002C4F: db $00;X
L002C50: db $00;X
L002C51: db $00;X
L002C52: db $00;X
L002C53: db $00;X
L002C54: db $00;X
L002C55: db $00;X
L002C56: db $00;X
L002C57: db $00;X
L002C58: db $00;X
L002C59: db $00;X
L002C5A: db $00;X
L002C5B: db $00;X
L002C5C: db $00;X
L002C5D: db $00;X
L002C5E: db $00;X
L002C5F: db $00;X
L002C60: db $00;X
L002C61: db $00;X
L002C62: db $00;X
L002C63: db $00;X
L002C64: db $00;X
L002C65: db $00;X
L002C66: db $00;X
L002C67: db $00;X
L002C68: db $00;X
L002C69: db $00;X
L002C6A: db $00;X
L002C6B: db $00;X
L002C6C: db $00;X
L002C6D: db $00;X
L002C6E: db $00;X
L002C6F: db $00;X
L002C70: db $00;X
L002C71: db $00;X
L002C72: db $00;X
L002C73: db $00;X
L002C74: db $00;X
L002C75: db $00;X
L002C76: db $00;X
L002C77: db $00;X
L002C78: db $00;X
L002C79: db $00;X
L002C7A: db $00;X
L002C7B: db $00;X
L002C7C: db $00;X
L002C7D: db $00;X
L002C7E: db $00;X
L002C7F: db $00;X
L002C80: db $00;X
L002C81: db $00;X
L002C82: db $00;X
L002C83: db $00;X
L002C84: db $00;X
L002C85: db $00;X
L002C86: db $00;X
L002C87: db $00;X
L002C88: db $00;X
L002C89: db $00;X
L002C8A: db $00;X
L002C8B: db $00;X
L002C8C: db $00;X
L002C8D: db $00;X
L002C8E: db $00;X
L002C8F: db $00;X
L002C90: db $00;X
L002C91: db $00;X
L002C92: db $00;X
L002C93: db $00;X
L002C94: db $00;X
L002C95: db $00;X
L002C96: db $00;X
L002C97: db $00;X
L002C98: db $00;X
L002C99: db $00;X
L002C9A: db $00;X
L002C9B: db $00;X
L002C9C: db $00;X
L002C9D: db $00;X
L002C9E: db $00;X
L002C9F: db $00;X
L002CA0: db $00;X
L002CA1: db $00;X
L002CA2: db $00;X
L002CA3: db $00;X
L002CA4: db $00;X
L002CA5: db $00;X
L002CA6: db $00;X
L002CA7: db $00;X
L002CA8: db $00;X
L002CA9: db $00;X
L002CAA: db $00;X
L002CAB: db $00;X
L002CAC: db $00;X
L002CAD: db $00;X
L002CAE: db $00;X
L002CAF: db $00;X
L002CB0: db $00;X
L002CB1: db $00;X
L002CB2: db $00;X
L002CB3: db $00;X
L002CB4: db $00;X
L002CB5: db $00;X
L002CB6: db $00;X
L002CB7: db $00;X
L002CB8: db $00;X
L002CB9: db $00;X
L002CBA: db $00;X
L002CBB: db $00;X
L002CBC: db $00;X
L002CBD: db $00;X
L002CBE: db $00;X
L002CBF: db $00;X
L002CC0: db $00;X
L002CC1: db $00;X
L002CC2: db $00;X
L002CC3: db $00;X
L002CC4: db $00;X
L002CC5: db $00;X
L002CC6: db $00;X
L002CC7: db $00;X
L002CC8: db $00;X
L002CC9: db $00;X
L002CCA: db $00;X
L002CCB: db $00;X
L002CCC: db $00;X
L002CCD: db $00;X
L002CCE: db $00;X
L002CCF: db $00;X
L002CD0: db $00;X
L002CD1: db $00;X
L002CD2: db $00;X
L002CD3: db $00;X
L002CD4: db $00;X
L002CD5: db $00;X
L002CD6: db $00;X
L002CD7: db $00;X
L002CD8: db $00;X
L002CD9: db $00;X
L002CDA: db $00;X
L002CDB: db $00;X
L002CDC: db $00;X
L002CDD: db $00;X
L002CDE: db $00;X
L002CDF: db $00;X
L002CE0: db $00;X
L002CE1: db $00;X
L002CE2: db $00;X
L002CE3: db $00;X
L002CE4: db $00;X
L002CE5: db $00;X
L002CE6: db $00;X
L002CE7: db $00;X
L002CE8: db $00;X
L002CE9: db $00;X
L002CEA: db $00;X
L002CEB: db $00;X
L002CEC: db $00;X
L002CED: db $00;X
L002CEE: db $00;X
L002CEF: db $00;X
L002CF0: db $00;X
L002CF1: db $00;X
L002CF2: db $00;X
L002CF3: db $00;X
L002CF4: db $00;X
L002CF5: db $00;X
L002CF6: db $00;X
L002CF7: db $00;X
L002CF8: db $00;X
L002CF9: db $00;X
L002CFA: db $00;X
L002CFB: db $00;X
L002CFC: db $00;X
L002CFD: db $00;X
L002CFE: db $00;X
L002CFF: db $00;X
L002D00: db $00;X
L002D01: db $00;X
L002D02: db $00;X
L002D03: db $00;X
L002D04: db $00;X
L002D05: db $00;X
L002D06: db $00;X
L002D07: db $00;X
L002D08: db $00;X
L002D09: db $00;X
L002D0A: db $00;X
L002D0B: db $00;X
L002D0C: db $00;X
L002D0D: db $00;X
L002D0E: db $00;X
L002D0F: db $00;X
L002D10: db $00;X
L002D11: db $00;X
L002D12: db $00;X
L002D13: db $00;X
L002D14: db $00;X
L002D15: db $00;X
L002D16: db $00;X
L002D17: db $00;X
L002D18: db $00;X
L002D19: db $00;X
L002D1A: db $00;X
L002D1B: db $00;X
L002D1C: db $00;X
L002D1D: db $00;X
L002D1E: db $00;X
L002D1F: db $00;X
L002D20: db $00;X
L002D21: db $00;X
L002D22: db $00;X
L002D23: db $00;X
L002D24: db $00;X
L002D25: db $00;X
L002D26: db $00;X
L002D27: db $00;X
L002D28: db $00;X
L002D29: db $00;X
L002D2A: db $00;X
L002D2B: db $00;X
L002D2C: db $00;X
L002D2D: db $00;X
L002D2E: db $00;X
L002D2F: db $00;X
L002D30: db $00;X
L002D31: db $00;X
L002D32: db $00;X
L002D33: db $00;X
L002D34: db $00;X
L002D35: db $00;X
L002D36: db $00;X
L002D37: db $00;X
L002D38: db $00;X
L002D39: db $00;X
L002D3A: db $00;X
L002D3B: db $00;X
L002D3C: db $00;X
L002D3D: db $00;X
L002D3E: db $00;X
L002D3F: db $00;X
L002D40: db $00;X
L002D41: db $00;X
L002D42: db $00;X
L002D43: db $00;X
L002D44: db $00;X
L002D45: db $00;X
L002D46: db $00;X
L002D47: db $00;X
L002D48: db $00;X
L002D49: db $00;X
L002D4A: db $00;X
L002D4B: db $00;X
L002D4C: db $00;X
L002D4D: db $00;X
L002D4E: db $00;X
L002D4F: db $00;X
L002D50: db $00;X
L002D51: db $00;X
L002D52: db $00;X
L002D53: db $00;X
L002D54: db $00;X
L002D55: db $00;X
L002D56: db $00;X
L002D57: db $00;X
L002D58: db $00;X
L002D59: db $00;X
L002D5A: db $00;X
L002D5B: db $00;X
L002D5C: db $00;X
L002D5D: db $00;X
L002D5E: db $00;X
L002D5F: db $00;X
L002D60: db $00;X
L002D61: db $00;X
L002D62: db $00;X
L002D63: db $00;X
L002D64: db $00;X
L002D65: db $00;X
L002D66: db $00;X
L002D67: db $00;X
L002D68: db $00;X
L002D69: db $00;X
L002D6A: db $00;X
L002D6B: db $00;X
L002D6C: db $00;X
L002D6D: db $00;X
L002D6E: db $00;X
L002D6F: db $00;X
L002D70: db $00;X
L002D71: db $00;X
L002D72: db $00;X
L002D73: db $00;X
L002D74: db $00;X
L002D75: db $00;X
L002D76: db $00;X
L002D77: db $00;X
L002D78: db $00;X
L002D79: db $00;X
L002D7A: db $00;X
L002D7B: db $00;X
L002D7C: db $00;X
L002D7D: db $00;X
L002D7E: db $00;X
L002D7F: db $00;X
L002D80: db $00;X
L002D81: db $00;X
L002D82: db $00;X
L002D83: db $00;X
L002D84: db $00;X
L002D85: db $00;X
L002D86: db $00;X
L002D87: db $00;X
L002D88: db $00;X
L002D89: db $00;X
L002D8A: db $00;X
L002D8B: db $00;X
L002D8C: db $00;X
L002D8D: db $00;X
L002D8E: db $00;X
L002D8F: db $00;X
L002D90: db $00;X
L002D91: db $00;X
L002D92: db $00;X
L002D93: db $00;X
L002D94: db $00;X
L002D95: db $00;X
L002D96: db $00;X
L002D97: db $00;X
L002D98: db $00;X
L002D99: db $00;X
L002D9A: db $00;X
L002D9B: db $00;X
L002D9C: db $00;X
L002D9D: db $00;X
L002D9E: db $00;X
L002D9F: db $00;X
L002DA0: db $00;X
L002DA1: db $00;X
L002DA2: db $00;X
L002DA3: db $00;X
L002DA4: db $00;X
L002DA5: db $00;X
L002DA6: db $00;X
L002DA7: db $00;X
L002DA8: db $00;X
L002DA9: db $00;X
L002DAA: db $00;X
L002DAB: db $00;X
L002DAC: db $00;X
L002DAD: db $00;X
L002DAE: db $00;X
L002DAF: db $00;X
L002DB0: db $00;X
L002DB1: db $00;X
L002DB2: db $00;X
L002DB3: db $00;X
L002DB4: db $00;X
L002DB5: db $00;X
L002DB6: db $00;X
L002DB7: db $00;X
L002DB8: db $00;X
L002DB9: db $00;X
L002DBA: db $00;X
L002DBB: db $00;X
L002DBC: db $00;X
L002DBD: db $00;X
L002DBE: db $00;X
L002DBF: db $00;X
L002DC0: db $00;X
L002DC1: db $00;X
L002DC2: db $00;X
L002DC3: db $00;X
L002DC4: db $00;X
L002DC5: db $00;X
L002DC6: db $00;X
L002DC7: db $00;X
L002DC8: db $00;X
L002DC9: db $00;X
L002DCA: db $00;X
L002DCB: db $00;X
L002DCC: db $00;X
L002DCD: db $00;X
L002DCE: db $00;X
L002DCF: db $00;X
L002DD0: db $00;X
L002DD1: db $00;X
L002DD2: db $00;X
L002DD3: db $00;X
L002DD4: db $00;X
L002DD5: db $00;X
L002DD6: db $00;X
L002DD7: db $00;X
L002DD8: db $00;X
L002DD9: db $00;X
L002DDA: db $00;X
L002DDB: db $00;X
L002DDC: db $00;X
L002DDD: db $00;X
L002DDE: db $00;X
L002DDF: db $00;X
L002DE0: db $00;X
L002DE1: db $00;X
L002DE2: db $00;X
L002DE3: db $00;X
L002DE4: db $00;X
L002DE5: db $00;X
L002DE6: db $00;X
L002DE7: db $00;X
L002DE8: db $00;X
L002DE9: db $00;X
L002DEA: db $00;X
L002DEB: db $00;X
L002DEC: db $00;X
L002DED: db $00;X
L002DEE: db $00;X
L002DEF: db $00;X
L002DF0: db $00;X
L002DF1: db $00;X
L002DF2: db $00;X
L002DF3: db $00;X
L002DF4: db $00;X
L002DF5: db $00;X
L002DF6: db $00;X
L002DF7: db $00;X
L002DF8: db $00;X
L002DF9: db $00;X
L002DFA: db $00;X
L002DFB: db $00;X
L002DFC: db $00;X
L002DFD: db $00;X
L002DFE: db $00;X
L002DFF: db $00;X
L002E00: db $00;X
L002E01: db $00;X
L002E02: db $00;X
L002E03: db $00;X
L002E04: db $00;X
L002E05: db $00;X
L002E06: db $00;X
L002E07: db $00;X
L002E08: db $00;X
L002E09: db $00;X
L002E0A: db $00;X
L002E0B: db $00;X
L002E0C: db $00;X
L002E0D: db $00;X
L002E0E: db $00;X
L002E0F: db $00;X
L002E10: db $00;X
L002E11: db $00;X
L002E12: db $00;X
L002E13: db $00;X
L002E14: db $00;X
L002E15: db $00;X
L002E16: db $00;X
L002E17: db $00;X
L002E18: db $00;X
L002E19: db $00;X
L002E1A: db $00;X
L002E1B: db $00;X
L002E1C: db $00;X
L002E1D: db $00;X
L002E1E: db $00;X
L002E1F: db $00;X
L002E20: db $00;X
L002E21: db $00;X
L002E22: db $00;X
L002E23: db $00;X
L002E24: db $00;X
L002E25: db $00;X
L002E26: db $00;X
L002E27: db $00;X
L002E28: db $00;X
L002E29: db $00;X
L002E2A: db $00;X
L002E2B: db $00;X
L002E2C: db $00;X
L002E2D: db $00;X
L002E2E: db $00;X
L002E2F: db $00;X
L002E30: db $00;X
L002E31: db $00;X
L002E32: db $00;X
L002E33: db $00;X
L002E34: db $00;X
L002E35: db $00;X
L002E36: db $00;X
L002E37: db $00;X
L002E38: db $00;X
L002E39: db $00;X
L002E3A: db $00;X
L002E3B: db $00;X
L002E3C: db $00;X
L002E3D: db $00;X
L002E3E: db $00;X
L002E3F: db $00;X
L002E40: db $00;X
L002E41: db $00;X
L002E42: db $00;X
L002E43: db $00;X
L002E44: db $00;X
L002E45: db $00;X
L002E46: db $00;X
L002E47: db $00;X
L002E48: db $00;X
L002E49: db $00;X
L002E4A: db $00;X
L002E4B: db $00;X
L002E4C: db $00;X
L002E4D: db $00;X
L002E4E: db $00;X
L002E4F: db $00;X
L002E50: db $00;X
L002E51: db $00;X
L002E52: db $00;X
L002E53: db $00;X
L002E54: db $00;X
L002E55: db $00;X
L002E56: db $00;X
L002E57: db $00;X
L002E58: db $00;X
L002E59: db $00;X
L002E5A: db $00;X
L002E5B: db $00;X
L002E5C: db $00;X
L002E5D: db $00;X
L002E5E: db $00;X
L002E5F: db $00;X
L002E60: db $00;X
L002E61: db $00;X
L002E62: db $00;X
L002E63: db $00;X
L002E64: db $00;X
L002E65: db $00;X
L002E66: db $00;X
L002E67: db $00;X
L002E68: db $00;X
L002E69: db $00;X
L002E6A: db $00;X
L002E6B: db $00;X
L002E6C: db $00;X
L002E6D: db $00;X
L002E6E: db $00;X
L002E6F: db $00;X
L002E70: db $00;X
L002E71: db $00;X
L002E72: db $00;X
L002E73: db $00;X
L002E74: db $00;X
L002E75: db $00;X
L002E76: db $00;X
L002E77: db $00;X
L002E78: db $00;X
L002E79: db $00;X
L002E7A: db $00;X
L002E7B: db $00;X
L002E7C: db $00;X
L002E7D: db $00;X
L002E7E: db $00;X
L002E7F: db $00;X
L002E80: db $00;X
L002E81: db $00;X
L002E82: db $00;X
L002E83: db $00;X
L002E84: db $00;X
L002E85: db $00;X
L002E86: db $00;X
L002E87: db $00;X
L002E88: db $00;X
L002E89: db $00;X
L002E8A: db $00;X
L002E8B: db $00;X
L002E8C: db $00;X
L002E8D: db $00;X
L002E8E: db $00;X
L002E8F: db $00;X
L002E90: db $00;X
L002E91: db $00;X
L002E92: db $00;X
L002E93: db $00;X
L002E94: db $00;X
L002E95: db $00;X
L002E96: db $00;X
L002E97: db $00;X
L002E98: db $00;X
L002E99: db $00;X
L002E9A: db $00;X
L002E9B: db $00;X
L002E9C: db $00;X
L002E9D: db $00;X
L002E9E: db $00;X
L002E9F: db $00;X
L002EA0: db $00;X
L002EA1: db $00;X
L002EA2: db $00;X
L002EA3: db $00;X
L002EA4: db $00;X
L002EA5: db $00;X
L002EA6: db $00;X
L002EA7: db $00;X
L002EA8: db $00;X
L002EA9: db $00;X
L002EAA: db $00;X
L002EAB: db $00;X
L002EAC: db $00;X
L002EAD: db $00;X
L002EAE: db $00;X
L002EAF: db $00;X
L002EB0: db $00;X
L002EB1: db $00;X
L002EB2: db $00;X
L002EB3: db $00;X
L002EB4: db $00;X
L002EB5: db $00;X
L002EB6: db $00;X
L002EB7: db $00;X
L002EB8: db $00;X
L002EB9: db $00;X
L002EBA: db $00;X
L002EBB: db $00;X
L002EBC: db $00;X
L002EBD: db $00;X
L002EBE: db $00;X
L002EBF: db $00;X
L002EC0: db $00;X
L002EC1: db $00;X
L002EC2: db $00;X
L002EC3: db $00;X
L002EC4: db $00;X
L002EC5: db $00;X
L002EC6: db $00;X
L002EC7: db $00;X
L002EC8: db $00;X
L002EC9: db $00;X
L002ECA: db $00;X
L002ECB: db $00;X
L002ECC: db $00;X
L002ECD: db $00;X
L002ECE: db $00;X
L002ECF: db $00;X
L002ED0: db $00;X
L002ED1: db $00;X
L002ED2: db $00;X
L002ED3: db $00;X
L002ED4: db $00;X
L002ED5: db $00;X
L002ED6: db $00;X
L002ED7: db $00;X
L002ED8: db $00;X
L002ED9: db $00;X
L002EDA: db $00;X
L002EDB: db $00;X
L002EDC: db $00;X
L002EDD: db $00;X
L002EDE: db $00;X
L002EDF: db $00;X
L002EE0: db $00;X
L002EE1: db $00;X
L002EE2: db $00;X
L002EE3: db $00;X
L002EE4: db $00;X
L002EE5: db $00;X
L002EE6: db $00;X
L002EE7: db $00;X
L002EE8: db $00;X
L002EE9: db $00;X
L002EEA: db $00;X
L002EEB: db $00;X
L002EEC: db $00;X
L002EED: db $00;X
L002EEE: db $00;X
L002EEF: db $00;X
L002EF0: db $00;X
L002EF1: db $00;X
L002EF2: db $00;X
L002EF3: db $00;X
L002EF4: db $00;X
L002EF5: db $00;X
L002EF6: db $00;X
L002EF7: db $00;X
L002EF8: db $00;X
L002EF9: db $00;X
L002EFA: db $00;X
L002EFB: db $00;X
L002EFC: db $00;X
L002EFD: db $00;X
L002EFE: db $00;X
L002EFF: db $00;X
L002F00: db $00
L002F01: db $06;X
L002F02: db $0D
L002F03: db $13;X
L002F04: db $19
L002F05: db $1F
L002F06: db $26
L002F07: db $2C;X
L002F08: db $32
L002F09: db $38;X
L002F0A: db $3E
L002F0B: db $44;X
L002F0C: db $4A
L002F0D: db $50;X
L002F0E: db $56
L002F0F: db $5C;X
L002F10: db $62
L002F11: db $68;X
L002F12: db $6D
L002F13: db $73;X
L002F14: db $79
L002F15: db $7E
L002F16: db $84
L002F17: db $89;X
L002F18: db $8E
L002F19: db $93;X
L002F1A: db $98
L002F1B: db $9D;X
L002F1C: db $A2
L002F1D: db $A7;X
L002F1E: db $AC
L002F1F: db $B1;X
L002F20: db $B5
L002F21: db $B9;X
L002F22: db $BE
L002F23: db $C2;X
L002F24: db $C6
L002F25: db $CA
L002F26: db $CE
L002F27: db $D1;X
L002F28: db $D5
L002F29: db $D8;X
L002F2A: db $DC
L002F2B: db $DF;X
L002F2C: db $E2
L002F2D: db $E5;X
L002F2E: db $E7
L002F2F: db $EA;X
L002F30: db $ED
L002F31: db $EF
L002F32: db $F1
L002F33: db $F3
L002F34: db $F5
L002F35: db $F7
L002F36: db $F8
L002F37: db $FA
L002F38: db $FB
L002F39: db $FC;X
L002F3A: db $FD
L002F3B: db $FE;X
L002F3C: db $FF
L002F3D: db $FF;X
L002F3E: db $00
L002F3F: db $00;X
L002F40: db $00
L002F41: db $00;X
L002F42: db $00
L002F43: db $FF;X
L002F44: db $FF
L002F45: db $FE
L002F46: db $FD
L002F47: db $FC;X
L002F48: db $FB
L002F49: db $FA;X
L002F4A: db $F8
L002F4B: db $F7;X
L002F4C: db $F5
L002F4D: db $F3;X
L002F4E: db $F1
L002F4F: db $EF;X
L002F50: db $ED
L002F51: db $EA;X
L002F52: db $E7
L002F53: db $E5;X
L002F54: db $E2
L002F55: db $DF
L002F56: db $DC
L002F57: db $D8;X
L002F58: db $D5
L002F59: db $D1;X
L002F5A: db $CE
L002F5B: db $CA;X
L002F5C: db $C6
L002F5D: db $C2;X
L002F5E: db $BE
L002F5F: db $B9;X
L002F60: db $B5
L002F61: db $B1;X
L002F62: db $AC
L002F63: db $A7;X
L002F64: db $A2
L002F65: db $9D
L002F66: db $98
L002F67: db $93;X
L002F68: db $8E
L002F69: db $89;X
L002F6A: db $84
L002F6B: db $7E;X
L002F6C: db $79
L002F6D: db $73;X
L002F6E: db $6D
L002F6F: db $68;X
L002F70: db $62
L002F71: db $5C
L002F72: db $56
L002F73: db $50
L002F74: db $4A
L002F75: db $44
L002F76: db $3E
L002F77: db $38
L002F78: db $32
L002F79: db $2C;X
L002F7A: db $26
L002F7B: db $1F;X
L002F7C: db $19
L002F7D: db $13;X
L002F7E: db $0D
L002F7F: db $06;X
L002F80: db $00
L002F81: db $06;X
L002F82: db $0C
L002F83: db $12;X
L002F84: db $18
L002F85: db $1E;X
L002F86: db $23
L002F87: db $28;X
L002F88: db $2D
L002F89: db $31;X
L002F8A: db $35
L002F8B: db $38;X
L002F8C: db $3B
L002F8D: db $3D;X
L002F8E: db $3E
L002F8F: db $3F;X
L002F90: db $40
L002F91: db $3F;X
L002F92: db $3E
L002F93: db $3D;X
L002F94: db $3B
L002F95: db $38;X
L002F96: db $35
L002F97: db $31;X
L002F98: db $2D
L002F99: db $28;X
L002F9A: db $23
L002F9B: db $1E;X
L002F9C: db $18
L002F9D: db $12;X
L002F9E: db $0C
L002F9F: db $06;X
L002FA0: db $00
L002FA1: db $FA
L002FA2: db $F4
L002FA3: db $EE
L002FA4: db $E8
L002FA5: db $E2
L002FA6: db $DD
L002FA7: db $D8
L002FA8: db $D3
L002FA9: db $CF
L002FAA: db $CB
L002FAB: db $C8
L002FAC: db $C5
L002FAD: db $C3
L002FAE: db $C2
L002FAF: db $C1
L002FB0: db $C0
L002FB1: db $C1
L002FB2: db $C2
L002FB3: db $C3
L002FB4: db $C5
L002FB5: db $C8
L002FB6: db $CB
L002FB7: db $CF
L002FB8: db $D3
L002FB9: db $D8
L002FBA: db $DD
L002FBB: db $E2
L002FBC: db $E8
L002FBD: db $EE
L002FBE: db $F4
L002FBF: db $FA
L002FC0: db $10
L002FC1: db $00
L002FC2: db $50
L002FC3: db $40
L002FC4: db $30
L002FC5: db $28
L002FC6: db $23
L002FC7: db $04
L002FC8: db $C4
L002FC9: db $20
L002FCA: db $0C
L002FCB: db $14
L002FCC: db $0A
L002FCD: db $02
L002FCE: db $08
L002FCF: db $00
L002FD0: db $00
L002FD1: db $00
L002FD2: db $42
L002FD3: db $00
L002FD4: db $24
L002FD5: db $18
L002FD6: db $E4
L002FD7: db $C0
L002FD8: db $27
L002FD9: db $03
L002FDA: db $24
L002FDB: db $18
L002FDC: db $42
L002FDD: db $00
L002FDE: db $00
L002FDF: db $00
L002FE0: db $08
L002FE1: db $00
L002FE2: db $0A
L002FE3: db $02
L002FE4: db $2C
L002FE5: db $14
L002FE6: db $C4
L002FE7: db $20
L002FE8: db $23
L002FE9: db $04
L002FEA: db $34
L002FEB: db $28
L002FEC: db $50
L002FED: db $40
L002FEE: db $10
L002FEF: db $00
L002FF0: db $08
L002FF1: db $08
L002FF2: db $4A
L002FF3: db $08
L002FF4: db $3C
L002FF5: db $00
L002FF6: db $00
L002FF7: db $24
L002FF8: db $00
L002FF9: db $24
L002FFA: db $3C
L002FFB: db $00
L002FFC: db $52
L002FFD: db $10
L002FFE: db $10
L002FFF: db $10