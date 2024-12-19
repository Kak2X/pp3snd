L024000:;C
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	add  a
	add  a
	ld   c, a
	ld   b, $00
	ld   hl, $4017
	add  hl, bc
	ldi  a, [hl]
	ld   c, a
	ldi  a, [hl]
	ld   b, a
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	ret  
L024017: db $00
L024018: db $CC
L024019: db $A1
L02401A: db $DC
L02401B: db $00
L02401C: db $CE
L02401D: db $AD
L02401E: db $DC
L02401F:;C
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	add  a
	add  $35
	ld   l, a
	ld   a, $00
	adc  a, $40
	ld   h, a
	ldi  a, [hl]
	ldh  [$FFB6], a
	ldi  a, [hl]
	ldh  [$FFB7], a
	ret  
L024035: db $38
L024036: db $5C
L024037: db $A0
L024038: db $5C
L024039: db $A0
L02403A: db $D3
L02403B: db $D0
L02403C: db $D3
L02403D:;I
	ldh  a, [$FFC0]
	and  $0F
	jr   z, $405F
L024043: db $06;X
L024044: db $03;X
L024045: db $FA;X
L024046: db $E7;X
L024047: db $C0;X
L024048: db $FE;X
L024049: db $05;X
L02404A: db $38;X
L02404B: db $01;X
L02404C: db $05;X
L02404D: db $FA;X
L02404E: db $11;X
L02404F: db $B0;X
L024050: db $4F;X
L024051: db $78;X
L024052: db $91;X
L024053: db $28;X
L024054: db $02;X
L024055: db $30;X
L024056: db $02;X
L024057: db $3E;X
L024058: db $01;X
L024059: db $47;X
L02405A: db $EA;X
L02405B: db $B8;X
L02405C: db $C0;X
L02405D: db $18;X
L02405E: db $2E;X
L02405F:;R
	ld   b, $03
	ld   a, [$C082]
	and  a
	jr   z, $4089
L024067: db $FE;X
L024068: db $02;X
L024069: db $38;X
L02406A: db $10;X
L02406B: db $06;X
L02406C: db $04;X
L02406D: db $FA;X
L02406E: db $80;X
L02406F: db $C0;X
L024070: db $FE;X
L024071: db $08;X
L024072: db $28;X
L024073: db $15;X
L024074: db $FE;X
L024075: db $05;X
L024076: db $38;X
L024077: db $11;X
L024078: db $04;X
L024079: db $18;X
L02407A: db $0E;X
L02407B: db $06;X
L02407C: db $04;X
L02407D: db $FA;X
L02407E: db $80;X
L02407F: db $C0;X
L024080: db $FE;X
L024081: db $0D;X
L024082: db $28;X
L024083: db $05;X
L024084: db $FE;X
L024085: db $05;X
L024086: db $38;X
L024087: db $01;X
L024088: db $04;X
L024089:;R
	ld   a, b
	ld   [$C0B8], a
	call L0241C6
	ld   de, $D200
	call L0241E5
	ldh  a, [$FFC0]
	and  $0F
	ret  z
L02409B: db $04;X
L02409C: db $CD;X
L02409D: db $C6;X
L02409E: db $41;X
L02409F: db $11;X
L0240A0: db $80;X
L0240A1: db $D2;X
L0240A2: db $CD;X
L0240A3: db $E5;X
L0240A4: db $41;X
L0240A5: db $04;X
L0240A6: db $CD;X
L0240A7: db $C6;X
L0240A8: db $41;X
L0240A9: db $11;X
L0240AA: db $00;X
L0240AB: db $D3;X
L0240AC: db $CD;X
L0240AD: db $E5;X
L0240AE: db $41;X
L0240AF: db $FA;X
L0240B0: db $1A;X
L0240B1: db $C0;X
L0240B2: db $A7;X
L0240B3: db $CA;X
L0240B4: db $A7;X
L0240B5: db $41;X
L0240B6: db $97;X
L0240B7: db $EA;X
L0240B8: db $98;X
L0240B9: db $C1;X
L0240BA: db $EA;X
L0240BB: db $9B;X
L0240BC: db $C1;X
L0240BD: db $21;X
L0240BE: db $C6;X
L0240BF: db $40;X
L0240C0: db $06;X
L0240C1: db $02;X
L0240C2: db $CD;X
L0240C3: db $87;X
L0240C4: db $1E;X
L0240C5: db $C9;X
L0240C6: db $7B;X
L0240C7: db $C6;X
L0240C8: db $24;X
L0240C9: db $6F;X
L0240CA: db $62;X
L0240CB: db $36;X
L0240CC: db $00;X
L0240CD: db $3E;X
L0240CE: db $FF;X
L0240CF: db $EA;X
L0240D0: db $8F;X
L0240D1: db $C1;X
L0240D2: db $CD;X
L0240D3: db $EC;X
L0240D4: db $22;X
L0240D5: db $C8;X
L0240D6: db $3E;X
L0240D7: db $12;X
L0240D8: db $EA;X
L0240D9: db $40;X
L0240DA: db $C1;X
L0240DB: db $2C;X
L0240DC: db $22;X
L0240DD: db $7D;X
L0240DE: db $E0;X
L0240DF: db $CE;X
L0240E0: db $CD;X
L0240E1: db $26;X
L0240E2: db $1F;X
L0240E3: db $FA;X
L0240E4: db $88;X
L0240E5: db $C1;X
L0240E6: db $FE;X
L0240E7: db $02;X
L0240E8: db $C0;X
L0240E9: db $F0;X
L0240EA: db $C0;X
L0240EB: db $E6;X
L0240EC: db $0F;X
L0240ED: db $FE;X
L0240EE: db $04;X
L0240EF: db $0E;X
L0240F0: db $0D;X
L0240F1: db $28;X
L0240F2: db $02;X
L0240F3: db $0E;X
L0240F4: db $22;X
L0240F5: db $FA;X
L0240F6: db $B2;X
L0240F7: db $C0;X
L0240F8: db $B9;X
L0240F9: db $28;X
L0240FA: db $07;X
L0240FB: db $79;X
L0240FC: db $EA;X
L0240FD: db $B2;X
L0240FE: db $C0;X
L0240FF: db $CD;X
L024100: db $4E;X
L024101: db $3B;X
L024102: db $CD;X
L024103: db $26;X
L024104: db $1F;X
L024105: db $FA;X
L024106: db $8F;X
L024107: db $C1;X
L024108: db $FE;X
L024109: db $FF;X
L02410A: db $28;X
L02410B: db $15;X
L02410C: db $CD;X
L02410D: db $EC;X
L02410E: db $22;X
L02410F: db $C8;X
L024110: db $FA;X
L024111: db $40;X
L024112: db $C1;X
L024113: db $3C;X
L024114: db $EA;X
L024115: db $40;X
L024116: db $C1;X
L024117: db $2C;X
L024118: db $22;X
L024119: db $7D;X
L02411A: db $E0;X
L02411B: db $CE;X
L02411C: db $3E;X
L02411D: db $FF;X
L02411E: db $EA;X
L02411F: db $8F;X
L024120: db $C1;X
L024121: db $F0;X
L024122: db $B1;X
L024123: db $C6;X
L024124: db $24;X
L024125: db $5F;X
L024126: db $1A;X
L024127: db $E6;X
L024128: db $07;X
L024129: db $C6;X
L02412A: db $02;X
L02412B: db $4F;X
L02412C: db $FA;X
L02412D: db $88;X
L02412E: db $C1;X
L02412F: db $B9;X
L024130: db $C0;X
L024131: db $FA;X
L024132: db $80;X
L024133: db $C1;X
L024134: db $A7;X
L024135: db $20;X
L024136: db $26;X
L024137: db $79;X
L024138: db $FE;X
L024139: db $04;X
L02413A: db $28;X
L02413B: db $19;X
L02413C: db $CD;X
L02413D: db $EC;X
L02413E: db $22;X
L02413F: db $C8;X
L024140: db $FE;X
L024141: db $41;X
L024142: db $D8;X
L024143: db $F0;X
L024144: db $B1;X
L024145: db $C6;X
L024146: db $24;X
L024147: db $5F;X
L024148: db $1A;X
L024149: db $E6;X
L02414A: db $07;X
L02414B: db $01;X
L02414C: db $00;X
L02414D: db $D2;X
L02414E: db $28;X
L02414F: db $35;X
L024150: db $01;X
L024151: db $40;X
L024152: db $D2;X
L024153: db $18;X
L024154: db $30;X
L024155: db $FA;X
L024156: db $40;X
L024157: db $C1;X
L024158: db $FE;X
L024159: db $16;X
L02415A: db $C0;X
L02415B: db $18;X
L02415C: db $43;X
L02415D: db $79;X
L02415E: db $FE;X
L02415F: db $06;X
L024160: db $28;X
L024161: db $38;X
L024162: db $CD;X
L024163: db $EC;X
L024164: db $22;X
L024165: db $C8;X
L024166: db $FE;X
L024167: db $41;X
L024168: db $D8;X
L024169: db $F0;X
L02416A: db $B1;X
L02416B: db $C6;X
L02416C: db $24;X
L02416D: db $5F;X
L02416E: db $1A;X
L02416F: db $E6;X
L024170: db $07;X
L024171: db $01;X
L024172: db $80;X
L024173: db $D2;X
L024174: db $28;X
L024175: db $0F;X
L024176: db $FE;X
L024177: db $02;X
L024178: db $01;X
L024179: db $C0;X
L02417A: db $D2;X
L02417B: db $38;X
L02417C: db $08;X
L02417D: db $01;X
L02417E: db $00;X
L02417F: db $D3;X
L024180: db $28;X
L024181: db $03;X
L024182: db $01;X
L024183: db $40;X
L024184: db $D3;X
L024185: db $F6;X
L024186: db $08;X
L024187: db $2C;X
L024188: db $77;X
L024189: db $3C;X
L02418A: db $12;X
L02418B: db $2C;X
L02418C: db $1E;X
L02418D: db $40;X
L02418E: db $0A;X
L02418F: db $0C;X
L024190: db $2C;X
L024191: db $77;X
L024192: db $2C;X
L024193: db $1D;X
L024194: db $20;X
L024195: db $F8;X
L024196: db $7D;X
L024197: db $E0;X
L024198: db $CE;X
L024199: db $C9;X
L02419A: db $FA;X
L02419B: db $40;X
L02419C: db $C1;X
L02419D: db $FE;X
L02419E: db $14;X
L02419F: db $C0;X
L0241A0: db $97;X
L0241A1: db $EA;X
L0241A2: db $7B;X
L0241A3: db $C0;X
L0241A4: db $CD;X
L0241A5: db $CD;X
L0241A6: db $1E;X
L0241A7: db $FA;X
L0241A8: db $00;X
L0241A9: db $D2;X
L0241AA: db $EA;X
L0241AB: db $80;X
L0241AC: db $D2;X
L0241AD: db $EA;X
L0241AE: db $00;X
L0241AF: db $D3;X
L0241B0: db $FA;X
L0241B1: db $01;X
L0241B2: db $D2;X
L0241B3: db $EA;X
L0241B4: db $81;X
L0241B5: db $D2;X
L0241B6: db $EA;X
L0241B7: db $01;X
L0241B8: db $D3;X
L0241B9: db $FA;X
L0241BA: db $82;X
L0241BB: db $D2;X
L0241BC: db $EA;X
L0241BD: db $02;X
L0241BE: db $D3;X
L0241BF: db $FA;X
L0241C0: db $83;X
L0241C1: db $D2;X
L0241C2: db $EA;X
L0241C3: db $03;X
L0241C4: db $D3;X
L0241C5: db $C9;X
L0241C6:;C
	sub  a
	ld   hl, $CC00
L0241CA:;R
	ld   [hl], a
	inc  a
	cp   b
	jr   c, $41D0
	sub  a
L0241D0:;R
	inc  l
	jr   nz, $41CA
	ld   hl, $CC00
L0241D6:;R
	call L000D98
	ld   e, a
	ld   d, $CC
	ld   c, [hl]
	ld   a, [de]
	ld   [hl], a
	ld   a, c
	ld   [de], a
	inc  l
	jr   nz, $41D6
	ret  
L0241E5:;C
	ld   hl, $CC00
L0241E8:;R
	ldi  a, [hl]
	swap a
	or   [hl]
	ld   [de], a
	inc  e
	inc  l
	jr   nz, $41E8
	ret  
L0241F2:;I
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	add  a
	add  $39
	ld   l, a
	ld   a, $40
	adc  a, $00
	ld   h, a
	ld   a, e
	add  $0A
	ld   e, a
	ldi  a, [hl]
	ld   [de], a
	inc  e
	add  $04
	ld   h, [hl]
	ld   l, a
	ld   a, h
	ld   [de], a
	sub  a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ld   [hl], a
	ld   a, l
	add  $FD
	ld   l, a
	ldh  a, [$FFC0]
	and  $0F
	cp   $0C
	jr   nz, $4225
L024221: db $3E;X
L024222: db $FF;X
L024223: db $22;X
L024224: db $32;X
L024225:;R
	ld   a, l
	add  $FA
	ld   l, a
	ld   a, $02
L02422B:;R
	push af
	push hl
	call L024331
	pop  hl
	ld   [hl], b
	inc  l
	ld   [hl], c
	inc  l
	pop  af
	dec  a
	jr   nz, $422B
	ld   a, l
	add  $07
	ld   l, a
	ld   [hl], $01
	add  $05
	ld   l, a
	ld   a, $FF
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ld   a, l
	add  $08
	ld   l, a
	sub  a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ld   a, l
	add  $EC
	ld   l, a
	ld   [hl], $10
	add  $02
	ld   l, a
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	ld   [hl], a
	ld   bc, $42BC
	and  a
	jr   z, $426A
	ld   bc, $42BE
L02426A:;R
	ld   a, l
	add  $1A
	ld   l, a
	ld   a, [bc]
	ldi  [hl], a
	ldi  [hl], a
	inc  bc
	ld   a, [bc]
	inc  l
	inc  l
	ldi  [hl], a
	sub  $09
	ldi  [hl], a
	push de
	push hl
	ld   a, l
	add  $DE
	ld   e, a
	ld   d, h
	call L0243FB
	pop  hl
	ld   a, l
	add  $F2
	ld   l, a
	add  $0A
	ld   e, a
	ld   d, h
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ld   b, a
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ld   c, a
	ld   [hl], b
	inc  l
	ld   [hl], c
	inc  l
	inc  e
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ld   b, a
	ldi  a, [hl]
	ld   [de], a
	ld   c, a
	ld   [hl], b
	inc  l
	ld   [hl], c
	ld   a, l
	add  $01
	ld   l, a
	add  $F8
	ld   e, a
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	inc  l
	inc  l
	inc  e
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	pop  de
	ret  
L0242BC: db $4C
L0242BD: db $1E
L0242BE: db $5C
L0242BF: db $1E
L0242C0:;I
	push af
	ldh  a, [$FFB1]
	add  $32
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	add  $0C
	ld   l, a
	pop  af
	ldi  [hl], a
	ld   [hl], $00
	dec  l
	dec  l
	ld   a, [hl]
	and  a
	ret  z
	ld   [hl], $03
	ld   a, l
	add  $15
	ld   l, a
	add  $08
	ld   c, a
	ld   b, h
	ld   e, $08
L0242E1:;R
	ld   a, [bc]
	ldi  [hl], a
	inc  c
	dec  e
	jr   nz, $42E1
	ret  
L0242E8:;I
	ldh  a, [$FFB1]
	add  $32
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	add  $0B
	ld   l, a
	ld   a, [hl]
	and  a
	ret  z
	ld   [hl], $05
	inc  l
	ld   [hl], $10
	ld   a, l
	add  $1A
	ld   l, a
	ld   a, $C0
	ldi  [hl], a
	ld   [hl], a
	push de
	ld   a, l
	add  $E5
	ld   e, a
	ld   d, h
	call L0243FB
	pop  de
	ret  
L02430E:;I
	ldh  a, [$FFB1]
	add  $32
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	ld   b, [hl]
	inc  l
	ld   c, [hl]
	inc  l
	push bc
	push hl
	ld   e, [hl]
	inc  l
	ldd  a, [hl]
	dec  l
	ldd  [hl], a
	ld   [hl], e
	call L024331
	pop  hl
	ld   [hl], b
	inc  l
	ld   [hl], c
	inc  l
	inc  [hl]
	jr   nz, $432F
L02432E: db $34;X
L02432F:;R
	pop  bc
	ret  
L024331:;C
	ldh  a, [$FFC0]
	and  $0F
	jp   z, $43B2
L024338: db $FE;X
L024339: db $08;X
L02433A: db $DA;X
L02433B: db $D1;X
L02433C: db $43;X
L02433D: db $28;X
L02433E: db $12;X
L02433F: db $FE;X
L024340: db $0C;X
L024341: db $C2;X
L024342: db $D1;X
L024343: db $43;X
L024344: db $3E;X
L024345: db $04;X
L024346: db $CD;X
L024347: db $B6;X
L024348: db $0D;X
L024349: db $47;X
L02434A: db $3E;X
L02434B: db $04;X
L02434C: db $CD;X
L02434D: db $B6;X
L02434E: db $0D;X
L02434F: db $4F;X
L024350: db $C9;X
L024351: db $F0;X
L024352: db $B1;X
L024353: db $C6;X
L024354: db $29;X
L024355: db $5F;X
L024356: db $0E;X
L024357: db $05;X
L024358: db $1A;X
L024359: db $FE;X
L02435A: db $05;X
L02435B: db $30;X
L02435C: db $01;X
L02435D: db $0D;X
L02435E: db $79;X
L02435F: db $CD;X
L024360: db $B6;X
L024361: db $0D;X
L024362: db $47;X
L024363: db $79;X
L024364: db $CD;X
L024365: db $B6;X
L024366: db $0D;X
L024367: db $4F;X
L024368: db $FA;X
L024369: db $C1;X
L02436A: db $C0;X
L02436B: db $A7;X
L02436C: db $C8;X
L02436D: db $7B;X
L02436E: db $C6;X
L02436F: db $09;X
L024370: db $6F;X
L024371: db $62;X
L024372: db $C6;X
L024373: db $02;X
L024374: db $5F;X
L024375: db $2A;X
L024376: db $66;X
L024377: db $C6;X
L024378: db $07;X
L024379: db $6F;X
L02437A: db $3A;X
L02437B: db $2D;X
L02437C: db $BE;X
L02437D: db $28;X
L02437E: db $03;X
L02437F: db $38;X
L024380: db $07;X
L024381: db $C9;X
L024382: db $2C;X
L024383: db $3A;X
L024384: db $2D;X
L024385: db $BE;X
L024386: db $D0;X
L024387: db $2C;X
L024388: db $2D;X
L024389: db $97;X
L02438A: db $22;X
L02438B: db $22;X
L02438C: db $7E;X
L02438D: db $C6;X
L02438E: db $0C;X
L02438F: db $22;X
L024390: db $7E;X
L024391: db $CE;X
L024392: db $00;X
L024393: db $77;X
L024394: db $7D;X
L024395: db $C6;X
L024396: db $02;X
L024397: db $6F;X
L024398: db $36;X
L024399: db $00;X
L02439A: db $1A;X
L02439B: db $A7;X
L02439C: db $20;X
L02439D: db $0A;X
L02439E: db $CD;X
L02439F: db $98;X
L0243A0: db $0D;X
L0243A1: db $E6;X
L0243A2: db $01;X
L0243A3: db $C6;X
L0243A4: db $0E;X
L0243A5: db $47;X
L0243A6: db $4F;X
L0243A7: db $C9;X
L0243A8: db $FE;X
L0243A9: db $04;X
L0243AA: db $3E;X
L0243AB: db $0E;X
L0243AC: db $38;X
L0243AD: db $01;X
L0243AE: db $3C;X
L0243AF: db $47;X
L0243B0: db $4F;X
L0243B1: db $C9;X
L0243B2:;J
	ldh  a, [$FFB1]
	add  $32
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	add  $06
	ld   l, a
	ld   a, [hl]
	inc  [hl]
	and  $7F
	add  $00
	ld   l, a
	ld   h, $D2
	ld   a, [hl]
	and  $0F
	ld   c, a
	ld   a, [hl]
	swap a
	and  $0F
	ld   b, a
	ret  
L0243D1: db $F0;X
L0243D2: db $B1;X
L0243D3: db $C6;X
L0243D4: db $29;X
L0243D5: db $5F;X
L0243D6: db $C6;X
L0243D7: db $09;X
L0243D8: db $6F;X
L0243D9: db $62;X
L0243DA: db $2A;X
L0243DB: db $66;X
L0243DC: db $C6;X
L0243DD: db $06;X
L0243DE: db $6F;X
L0243DF: db $1A;X
L0243E0: db $FE;X
L0243E1: db $02;X
L0243E2: db $7E;X
L0243E3: db $38;X
L0243E4: db $D9;X
L0243E5: db $28;X
L0243E6: db $0A;X
L0243E7: db $34;X
L0243E8: db $E6;X
L0243E9: db $7F;X
L0243EA: db $C6;X
L0243EB: db $00;X
L0243EC: db $6F;X
L0243ED: db $26;X
L0243EE: db $D3;X
L0243EF: db $18;X
L0243F0: db $D5;X
L0243F1: db $34;X
L0243F2: db $E6;X
L0243F3: db $7F;X
L0243F4: db $C6;X
L0243F5: db $80;X
L0243F6: db $6F;X
L0243F7: db $26;X
L0243F8: db $D2;X
L0243F9: db $18;X
L0243FA: db $CB;X
L0243FB:;C
	ld   a, [de]
	add  a
	ld   c, a
	ld   b, $00
	ld   hl, $442A
	add  hl, bc
	ld   a, e
	add  $02
	ld   e, a
	ld   a, [de]
	and  a
	jr   z, $440F
	ld   c, $22
	add  hl, bc
L02440F:;R
	ld   a, e
	add  $1A
	ld   e, a
	ld   a, [de]
	add  [hl]
	res  3, e
	ld   [de], a
	inc  e
	ld   [de], a
	inc  e
	inc  e
	inc  e
	set  3, e
	inc  hl
	ld   a, [de]
	add  [hl]
	res  3, e
	ld   [de], a
	inc  e
	sub  $09
	ld   [de], a
	ret  
L02442A: db $00
L02442B: db $00
L02442C: db $00
L02442D: db $01
L02442E: db $00
L02442F: db $02
L024430: db $00
L024431: db $04
L024432: db $00
L024433: db $06
L024434: db $00
L024435: db $08
L024436: db $00
L024437: db $09
L024438: db $00
L024439: db $0B
L02443A: db $00
L02443B: db $0C
L02443C: db $00
L02443D: db $0E
L02443E: db $00
L02443F: db $0F
L024440: db $00
L024441: db $10
L024442: db $01
L024443: db $11
L024444: db $01
L024445: db $12
L024446: db $02
L024447: db $13
L024448: db $03
L024449: db $14
L02444A: db $04
L02444B: db $14
L02444C: db $00
L02444D: db $00
L02444E: db $00
L02444F: db $01
L024450: db $00
L024451: db $02
L024452: db $00
L024453: db $04
L024454: db $00
L024455: db $06
L024456: db $00
L024457: db $08
L024458: db $00
L024459: db $09
L02445A: db $00
L02445B: db $0B
L02445C: db $00
L02445D: db $0C
L02445E: db $00
L02445F: db $0E
L024460: db $00
L024461: db $0F
L024462: db $00
L024463: db $10
L024464: db $FF
L024465: db $11
L024466: db $FF
L024467: db $12
L024468: db $FE
L024469: db $13
L02446A: db $FD
L02446B: db $14
L02446C: db $FC
L02446D: db $14
L02446E:;I
	sub  a
	ld   [$C0FE], a
	ld   [$C0FF], a
	ld   [$D3AB], a
	ld   [$D3DB], a
	ld   [$C6A6], a
	ld   [$C6AE], a
	ld   a, $02
	ld   [$C02E], a
	ld   a, $44
	ld   [$C02D], a
	ld   a, $91
	ld   [$C02C], a
	ret  
L024491:;I
	ld   a, $A0
	ldh  [$FFB1], a
	ld   de, $D3AB
	ld   a, [de]
	and  a
	jr   z, $449F
	call L0244FC
L02449F:;R
	ld   a, $D0
	ldh  [$FFB1], a
	ld   de, $D3DB
	ld   a, [de]
	and  a
	jr   z, $44AD
	call L0244FC
L0244AD:;R
	ld   de, $C6A6
	ld   a, [de]
	and  a
	jr   z, $44B9
L0244B4: db $06;X
L0244B5: db $00;X
L0244B6: db $CD;X
L0244B7: db $0A;X
L0244B8: db $46;X
L0244B9:;R
	ld   de, $C6AE
	ld   a, [de]
	and  a
	jr   z, $44C5
	ld   b, $01
	call L02460A
L0244C5:;R
	ld   a, [$C0FE]
	and  a
	jr   z, $44FB
	dec  a
	jr   nz, $44F8
	ldh  a, [$FF92]
	sub  $0B
	jr   c, $44FB
	ldh  [$FF92], a
	ld   a, [$C0FF]
	inc  a
	and  $03
	ld   [$C0FF], a
	add  a
	add  a
	add  a
	add  a
	add  $C0
	ld   c, a
	ld   hl, $C6B4
	ld   [hl], $01
	dec  l
	ld   [hl], c
	dec  l
	ld   [hl], $2F
	dec  l
	ld   [hl], $80
	dec  l
	ld   [hl], $8D
	ld   a, $06
L0244F8:;R
	ld   [$C0FE], a
L0244FB:;R
	ret  
L0244FC:;C
	bit  1, a
	jr   z, $4523
	ld   a, e
	add  $02
	ld   l, a
	ld   h, d
	ld   a, [hl]
	xor  $80
	ldd  [hl], a
	jr   nz, $450C
	inc  [hl]
L02450C:;R
	ld   c, [hl]
	ld   a, l
	add  $19
	ld   l, a
	ld   a, [hl]
	sub  c
	ldd  [hl], a
	ld   a, [hl]
	sub  c
	ld   [hl], a
	cp   $10
	jr   nc, $4551
L02451B: db $7D;X
L02451C: db $C6;X
L02451D: db $E7;X
L02451E: db $6F;X
L02451F: db $36;X
L024520: db $01;X
L024521: db $18;X
L024522: db $2E;X
L024523:;R
	bit  2, a
	jr   z, $4551
	inc  e
	ld   a, [de]
	dec  a
	ld   [de], a
	push de
	call L0243FB
	pop  de
	ld   a, [de]
	and  a
	jr   nz, $4551
	ld   a, e
	add  $16
	ld   e, a
	add  $08
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	inc  l
	inc  l
	inc  e
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ld   a, [hl]
	ld   [de], a
	ld   a, l
	add  $DC
	ld   l, a
	ld   [hl], $01
L024551:;R
	ldh  a, [$FFB1]
	ld   e, a
L024554:;R
	push de
	ld   a, [de]
	cp   $05
	jr   nc, $4586
	add  a
	add  a
	ld   c, a
	add  a
	ld   c, a
	ld   b, $00
	ld   hl, $45A9
	add  hl, bc
	ldi  a, [hl]
	ldh  [$FFD2], a
	ldi  a, [hl]
	ldh  [$FFD3], a
	ld   a, e
	add  $20
	ld   e, a
	ld   a, [de]
	ldh  [$FFD0], a
	ld   a, e
	add  $04
	ld   e, a
	ld   a, [de]
	ldh  [$FFD1], a
	call L00210C
	pop  de
	inc  e
	ld   a, e
	and  $07
	cp   $04
	jr   nz, $4554
	ret  
L024586: db $E0;X
L024587: db $D2;X
L024588: db $CB;X
L024589: db $43;X
L02458A: db $20;X
L02458B: db $F0;X
L02458C: db $97;X
L02458D: db $E0;X
L02458E: db $D3;X
L02458F: db $7B;X
L024590: db $C6;X
L024591: db $20;X
L024592: db $5F;X
L024593: db $1A;X
L024594: db $C6;X
L024595: db $2C;X
L024596: db $E0;X
L024597: db $D0;X
L024598: db $7B;X
L024599: db $C6;X
L02459A: db $04;X
L02459B: db $5F;X
L02459C: db $1A;X
L02459D: db $C6;X
L02459E: db $24;X
L02459F: db $E0;X
L0245A0: db $D1;X
L0245A1: db $21;X
L0245A2: db $65;X
L0245A3: db $40;X
L0245A4: db $3E;X
L0245A5: db $05;X
L0245A6: db $C7;X
L0245A7: db $18;X
L0245A8: db $D3;X
L0245A9: db $E0
L0245AA: db $85
L0245AB: db $E0;X
L0245AC: db $85;X
L0245AD: db $E1;X
L0245AE: db $85;X
L0245AF: db $E2;X
L0245B0: db $85;X
L0245B1: db $E3
L0245B2: db $85
L0245B3: db $E3;X
L0245B4: db $85;X
L0245B5: db $E4;X
L0245B6: db $85;X
L0245B7: db $E5;X
L0245B8: db $85;X
L0245B9: db $E6
L0245BA: db $87
L0245BB: db $E6;X
L0245BC: db $87;X
L0245BD: db $E7;X
L0245BE: db $87;X
L0245BF: db $E8;X
L0245C0: db $87;X
L0245C1: db $E9;X
L0245C2: db $86;X
L0245C3: db $E9;X
L0245C4: db $86;X
L0245C5: db $EA;X
L0245C6: db $86;X
L0245C7: db $EB;X
L0245C8: db $86;X
L0245C9: db $EC;X
L0245CA: db $86;X
L0245CB: db $EC;X
L0245CC: db $86;X
L0245CD: db $ED;X
L0245CE: db $86;X
L0245CF: db $EE;X
L0245D0: db $86;X
L0245D1: db $F0;X
L0245D2: db $B1;X
L0245D3: db $C6;X
L0245D4: db $28;X
L0245D5: db $5F;X
L0245D6: db $1A;X
L0245D7: db $A7;X
L0245D8: db $20;X
L0245D9: db $08;X
L0245DA: db $EA;X
L0245DB: db $A6;X
L0245DC: db $C6;X
L0245DD: db $21;X
L0245DE: db $61;X
L0245DF: db $DC;X
L0245E0: db $18;X
L0245E1: db $19;X
L0245E2: db $97;X
L0245E3: db $EA;X
L0245E4: db $AE;X
L0245E5: db $C6;X
L0245E6: db $21;X
L0245E7: db $6E;X
L0245E8: db $DC;X
L0245E9: db $18;X
L0245EA: db $10;X
L0245EB:;I
	sub  a
	ld   [$C6A6], a
	ld   [$C6AE], a
	ld   hl, $DC61
	call L0245FB
	ld   hl, $DC6E
L0245FB:;C
	push hl
	ld   b, $06
	sub  a
L0245FF:;R
	ldi  [hl], a
	dec  b
	jr   nz, $45FF
	pop  hl
	ld   a, $06
	jp   L0006A2
L024609: db $C9;X
L02460A:;C
	add  $01
	ld   [de], a
	and  $7F
	ld   c, a
	and  $07
	jr   z, $4630
	inc  e
L024615:;R
	ld   a, c
	bit  0, b
	jr   nz, $461E
L02461A: db $C6;X
L02461B: db $08;X
L02461C: db $18;X
L02461D: db $02;X
L02461E:;R
	add  $68
	ldh  [$FFD0], a
	ld   a, $28
	ldh  [$FFD1], a
	ld   a, [de]
	ldh  [$FFD2], a
	ld   a, $80
	ldh  [$FFD3], a
	jp   L00210C
L024630:;R
	ld   hl, $DC61
	bit  0, b
	jr   z, $463A
	ld   hl, $DC6E
	push bc
	ld   a, c
	swap a
	rlca 
	and  $07
	ld   c, a
	dec  a
	add  l
	ld   l, a
	inc  e
	ld   a, [de]
	ld   [hl], a
	ld   a, $01
	call L0006A2
	ld   b, e
	ld   a, e
	sub  $07
	add  c
	ld   e, a
	ld   a, [de]
	ld   e, b
	ld   [de], a
	and  a
	jr   z, $4661
	ld   a, c
	cp   $06
	jr   z, $4661
	pop  bc
	jr   L024615
L024661:;R
	pop  bc
	dec  e
	sub  a
	ld   [de], a
	ret  
L024666:;C
	ld   a, [$C0B0]
	and  a
	ret  nz
	ld   a, e
	add  $36
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   d, [hl]
	ld   e, a
	jr   L024678
L024675:;I
	ldh  a, [$FFB1]
	ld   e, a
L024678:;R
	ld   a, e
	add  $14
	ld   e, a
	add  $26
	ld   l, a
	ld   h, d
	ld   a, [de]
	add  [hl]
	ld   c, a
	inc  e
	inc  l
	ld   a, [de]
	adc  a, [hl]
	ld   b, a
	ld   a, e
	cp   $80
	ld   hl, $C6A5
	jr   c, $4693
	ld   hl, $C6AD
L024693:;R
	sub  a
	ldd  [hl], a
	ldd  [hl], a
	ldd  [hl], a
	ldd  [hl], a
	ldd  [hl], a
	ld   [hl], a
	push hl
	push de
	ld   e, $06
	ld   a, b
	cp   $05
	ld   a, c
	jr   c, $46B9
L0246A4: db $20;X
L0246A5: db $04;X
L0246A6: db $FE;X
L0246A7: db $A0;X
L0246A8: db $38;X
L0246A9: db $0F;X
L0246AA: db $D6;X
L0246AB: db $A0;X
L0246AC: db $4F;X
L0246AD: db $78;X
L0246AE: db $DE;X
L0246AF: db $05;X
L0246B0: db $47;X
L0246B1: db $36;X
L0246B2: db $D0;X
L0246B3: db $2C;X
L0246B4: db $1D;X
L0246B5: db $20;X
L0246B6: db $E7;X
L0246B7: db $18;X
L0246B8: db $75;X
L0246B9:;R
	ld   a, b
	cp   $02
	ld   a, c
	jr   c, $46D4
L0246BF: db $20;X
L0246C0: db $04;X
L0246C1: db $FE;X
L0246C2: db $D0;X
L0246C3: db $38;X
L0246C4: db $0F;X
L0246C5: db $D6;X
L0246C6: db $D0;X
L0246C7: db $4F;X
L0246C8: db $78;X
L0246C9: db $DE;X
L0246CA: db $02;X
L0246CB: db $47;X
L0246CC: db $36;X
L0246CD: db $D1;X
L0246CE: db $2C;X
L0246CF: db $1D;X
L0246D0: db $20;X
L0246D1: db $E7;X
L0246D2: db $18;X
L0246D3: db $5A;X
L0246D4:;R
	ld   a, b
	cp   $01
	ld   a, c
	jr   c, $46EF
L0246DA: db $20;X
L0246DB: db $04;X
L0246DC: db $FE;X
L0246DD: db $68;X
L0246DE: db $38;X
L0246DF: db $0F;X
L0246E0: db $D6;X
L0246E1: db $68;X
L0246E2: db $4F;X
L0246E3: db $78;X
L0246E4: db $DE;X
L0246E5: db $01;X
L0246E6: db $47;X
L0246E7: db $36;X
L0246E8: db $D2;X
L0246E9: db $2C;X
L0246EA: db $1D;X
L0246EB: db $20;X
L0246EC: db $E7;X
L0246ED: db $18;X
L0246EE: db $3F;X
L0246EF:;R
	ld   a, b
	and  a
	ld   a, c
	jr   nz, $46F8
	cp   $B4
	jr   c, $4707
L0246F8: db $D6;X
L0246F9: db $B4;X
L0246FA: db $4F;X
L0246FB: db $78;X
L0246FC: db $DE;X
L0246FD: db $00;X
L0246FE: db $47;X
L0246FF: db $36;X
L024700: db $D3;X
L024701: db $2C;X
L024702: db $1D;X
L024703: db $20;X
L024704: db $EA;X
L024705: db $18;X
L024706: db $27;X
L024707:;R
	ld   a, c
	cp   $1E
	jr   c, $4716
L02470C: db $D6;X
L02470D: db $1E;X
L02470E: db $36;X
L02470F: db $D4;X
L024710: db $2C;X
L024711: db $1D;X
L024712: db $20;X
L024713: db $F4;X
L024714: db $18;X
L024715: db $18;X
L024716:;R
	cp   $06
	jr   c, $4724
	sub  $06
	ld   [hl], $D5
	inc  l
	dec  e
	jr   nz, $4716
L024722: db $18;X
L024723: db $0A;X
L024724:;R
	and  a
	jr   z, $472E
	dec  a
	ld   [hl], $D6
	inc  l
	dec  e
	jr   nz, $4716
L02472E:;R
	pop  de
	ld   a, e
	add  $13
	ld   e, a
	ld   a, [de]
	ld   hl, $DC61
	and  a
	jr   z, $473D
	ld   hl, $DC6E
L02473D:;R
	ld   c, l
	sub  a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ld   [hl], a
	ld   l, c
	ld   a, $06
	call L0006A2
	pop  hl
	ld   c, l
	ld   b, h
	ld   a, l
	add  $07
	ld   l, a
	ld   a, [bc]
	and  a
	jr   z, $475A
	ldd  [hl], a
	ld   [hl], $80
	ret  
L02475A:;R
	dec  l
	ld   [hl], a
	ret  
L02475D:;I
	ldh  a, [$FFC0]
	and  $0F
	cp   $08
	ret  z
	cp   $0C
	ret  z
	cp   $0E
	ret  z
	ld   b, $02
	ld   hl, $47BE
	call L001E87
	ld   c, e
	ldh  a, [$FFB1]
	ld   e, a
	ld   a, [de]
	ld   [hl], a
	ld   a, e
	add  $28
	ld   e, a
	ld   a, l
	add  $28
	ld   l, a
	add  $E0
	ld   b, a
	ld   a, [de]
	ld   [hl], a
	ldh  [$FFF0], a
	ld   l, b
	add  $10
	ld   [hl], a
	ld   a, l
	add  $22
	ld   l, a
	ld   [hl], c
	add  $0C
	ld   l, a
	ldh  a, [$FFB1]
	ldi  [hl], a
	ld   [hl], d
	ld   a, l
	add  $FB
	ld   l, a
	ld   [hl], $8C
	inc  l
	ld   [hl], $4A
	inc  l
	ld   [hl], $02
	add  $F7
	ld   l, a
	add  $E4
	ld   c, a
	add  $04
	ld   b, a
	ld   a, e
	add  $E1
	ld   e, a
	ld   a, [de]
	ld   [hl], a
	ld   l, c
	ld   a, [$C0A8]
	ld   [hl], a
	ld   c, a
	ld   l, b
	ld   a, [$C0A9]
	ld   [hl], a
	ret  
L0247BE:;I
	ld   a, e
	add  $2A
	ld   e, a
	ld   a, [de]
	and  a
	jp   z, $497E
	call L002027
	ldh  a, [$FFB1]
	add  $06
	ld   e, a
	ld   a, $8F
	ld   [de], a
	call L001EF3
L0247D5:;I
	ld   bc, $0008
	call L001EE8
L0247DB:;I
	call L002027
	call L001EF3
L0247E1:;I
	ld   a, e
	add  $2A
	ld   e, a
	ld   a, [de]
	cp   $02
	jp   c, $490A
L0247EB: db $01;X
L0247EC: db $0C;X
L0247ED: db $00;X
L0247EE: db $CD;X
L0247EF: db $E8;X
L0247F0: db $1E;X
L0247F1: db $CD;X
L0247F2: db $27;X
L0247F3: db $20;X
L0247F4: db $CD;X
L0247F5: db $F3;X
L0247F6: db $1E;X
L0247F7: db $7B;X
L0247F8: db $C6;X
L0247F9: db $28;X
L0247FA: db $6F;X
L0247FB: db $62;X
L0247FC: db $46;X
L0247FD: db $C6;X
L0247FE: db $FC;X
L0247FF: db $6F;X
L024800: db $C6;X
L024801: db $F7;X
L024802: db $5F;X
L024803: db $C6;X
L024804: db $04;X
L024805: db $4F;X
L024806: db $36;X
L024807: db $0F;X
L024808: db $78;X
L024809: db $A7;X
L02480A: db $3E;X
L02480B: db $4C;X
L02480C: db $28;X
L02480D: db $02;X
L02480E: db $3E;X
L02480F: db $B6;X
L024810: db $12;X
L024811: db $69;X
L024812: db $36;X
L024813: db $44;X
L024814: db $CD;X
L024815: db $17;X
L024816: db $4A;X
L024817: db $CD;X
L024818: db $27;X
L024819: db $20;X
L02481A: db $CD;X
L02481B: db $F3;X
L02481C: db $1E;X
L02481D: db $CD;X
L02481E: db $27;X
L02481F: db $20;X
L024820: db $F0;X
L024821: db $B1;X
L024822: db $C6;X
L024823: db $1B;X
L024824: db $5F;X
L024825: db $C6;X
L024826: db $F2;X
L024827: db $6F;X
L024828: db $62;X
L024829: db $1A;X
L02482A: db $77;X
L02482B: db $63;X
L02482C: db $E5;X
L02482D: db $CD;X
L02482E: db $6D;X
L02482F: db $1F;X
L024830: db $E1;X
L024831: db $5C;X
L024832: db $62;X
L024833: db $7E;X
L024834: db $12;X
L024835: db $7B;X
L024836: db $C6;X
L024837: db $0D;X
L024838: db $6F;X
L024839: db $46;X
L02483A: db $C6;X
L02483B: db $FC;X
L02483C: db $5F;X
L02483D: db $C6;X
L02483E: db $E9;X
L02483F: db $6F;X
L024840: db $0E;X
L024841: db $20;X
L024842: db $78;X
L024843: db $A7;X
L024844: db $28;X
L024845: db $02;X
L024846: db $0E;X
L024847: db $00;X
L024848: db $1A;X
L024849: db $87;X
L02484A: db $B1;X
L02484B: db $C6;X
L02484C: db $80;X
L02484D: db $4F;X
L02484E: db $06;X
L02484F: db $2F;X
L024850: db $0A;X
L024851: db $CB;X
L024852: db $2F;X
L024853: db $CB;X
L024854: db $2F;X
L024855: db $86;X
L024856: db $77;X
L024857: db $CD;X
L024858: db $F7;X
L024859: db $49;X
L02485A: db $1A;X
L02485B: db $3D;X
L02485C: db $12;X
L02485D: db $FE;X
L02485E: db $FF;X
L02485F: db $C0;X
L024860: db $D5;X
L024861: db $7B;X
L024862: db $C6;X
L024863: db $12;X
L024864: db $6F;X
L024865: db $62;X
L024866: db $5E;X
L024867: db $2C;X
L024868: db $56;X
L024869: db $CD;X
L02486A: db $78;X
L02486B: db $46;X
L02486C: db $D1;X
L02486D: db $06;X
L02486E: db $02;X
L02486F: db $21;X
L024870: db $71;X
L024871: db $4B;X
L024872: db $CD;X
L024873: db $64;X
L024874: db $1E;X
L024875: db $38;X
L024876: db $21;X
L024877: db $F0;X
L024878: db $B1;X
L024879: db $C6;X
L02487A: db $28;X
L02487B: db $5F;X
L02487C: db $7D;X
L02487D: db $C6;X
L02487E: db $28;X
L02487F: db $6F;X
L024880: db $1A;X
L024881: db $77;X
L024882: db $7B;X
L024883: db $C6;X
L024884: db $E5;X
L024885: db $5F;X
L024886: db $C6;X
L024887: db $04;X
L024888: db $4F;X
L024889: db $7D;X
L02488A: db $C6;X
L02488B: db $E5;X
L02488C: db $6F;X
L02488D: db $C6;X
L02488E: db $04;X
L02488F: db $47;X
L024890: db $1A;X
L024891: db $77;X
L024892: db $59;X
L024893: db $68;X
L024894: db $1A;X
L024895: db $C6;X
L024896: db $08;X
L024897: db $77;X
L024898: db $01;X
L024899: db $07;X
L02489A: db $00;X
L02489B: db $CD;X
L02489C: db $E8;X
L02489D: db $1E;X
L02489E: db $CD;X
L02489F: db $27;X
L0248A0: db $20;X
L0248A1: db $CD;X
L0248A2: db $F3;X
L0248A3: db $1E;X
L0248A4: db $CD;X
L0248A5: db $D9;X
L0248A6: db $49;X
L0248A7: db $F0;X
L0248A8: db $B1;X
L0248A9: db $C6;X
L0248AA: db $2A;X
L0248AB: db $5F;X
L0248AC: db $1A;X
L0248AD: db $FE;X
L0248AE: db $03;X
L0248AF: db $C2;X
L0248B0: db $73;X
L0248B1: db $49;X
L0248B2: db $7B;X
L0248B3: db $C6;X
L0248B4: db $FE;X
L0248B5: db $6F;X
L0248B6: db $62;X
L0248B7: db $46;X
L0248B8: db $C6;X
L0248B9: db $EC;X
L0248BA: db $6F;X
L0248BB: db $CB;X
L0248BC: db $40;X
L0248BD: db $01;X
L0248BE: db $40;X
L0248BF: db $03;X
L0248C0: db $28;X
L0248C1: db $03;X
L0248C2: db $01;X
L0248C3: db $C0;X
L0248C4: db $FC;X
L0248C5: db $71;X
L0248C6: db $2C;X
L0248C7: db $70;X
L0248C8: db $C6;X
L0248C9: db $FD;X
L0248CA: db $6F;X
L0248CB: db $C6;X
L0248CC: db $0E;X
L0248CD: db $5F;X
L0248CE: db $C6;X
L0248CF: db $E7;X
L0248D0: db $4F;X
L0248D1: db $C6;X
L0248D2: db $1E;X
L0248D3: db $47;X
L0248D4: db $7E;X
L0248D5: db $12;X
L0248D6: db $69;X
L0248D7: db $36;X
L0248D8: db $8A;X
L0248D9: db $68;X
L0248DA: db $36;X
L0248DB: db $1F;X
L0248DC: db $CD;X
L0248DD: db $F3;X
L0248DE: db $1E;X
L0248DF: db $CD;X
L0248E0: db $27;X
L0248E1: db $20;X
L0248E2: db $CD;X
L0248E3: db $6D;X
L0248E4: db $1F;X
L0248E5: db $F0;X
L0248E6: db $B1;X
L0248E7: db $C6;X
L0248E8: db $24;X
L0248E9: db $5F;X
L0248EA: db $1A;X
L0248EB: db $C6;X
L0248EC: db $80;X
L0248ED: db $4F;X
L0248EE: db $06;X
L0248EF: db $2F;X
L0248F0: db $7B;X
L0248F1: db $C6;X
L0248F2: db $FB;X
L0248F3: db $6F;X
L0248F4: db $C6;X
L0248F5: db $F2;X
L0248F6: db $5F;X
L0248F7: db $62;X
L0248F8: db $0A;X
L0248F9: db $CB;X
L0248FA: db $2F;X
L0248FB: db $86;X
L0248FC: db $12;X
L0248FD: db $CD;X
L0248FE: db $F7;X
L0248FF: db $49;X
L024900: db $7B;X
L024901: db $C6;X
L024902: db $13;X
L024903: db $6F;X
L024904: db $35;X
L024905: db $CB;X
L024906: db $7E;X
L024907: db $C8;X
L024908: db $18;X
L024909: db $69;X
L02490A:;J
	ld   a, e
	add  $FE
	ld   l, a
	ld   h, d
	ld   b, [hl]
	add  $FC
	ld   l, a
	add  $F7
	ld   e, a
	add  $04
	ld   c, a
	ld   [hl], $1F
	ld   a, b
	and  a
	ld   a, $B0
	jr   z, $4923
L024921: db $3E;X
L024922: db $50;X
L024923:;R
	ld   [de], a
	ld   l, c
	ld   [hl], $44
	call L024A17
	call L002027
	call L001EF3
L024930:;I
	call L002027
	ldh  a, [$FFB1]
	add  $1B
	ld   e, a
	add  $F2
	ld   l, a
	ld   h, d
	ld   a, [de]
	ld   [hl], a
	ld   h, e
	push hl
	call L001F6D
	pop  hl
	ld   e, h
	ld   h, d
	ld   a, [hl]
	ld   [de], a
	ld   a, e
	add  $0D
	ld   l, a
	ld   b, [hl]
	add  $FC
	ld   e, a
	add  $E9
	ld   l, a
	ld   c, $20
	ld   a, b
	and  a
	jr   z, $495B
L024959: db $0E;X
L02495A: db $00;X
L02495B:;R
	ld   a, [de]
	or   c
	add  $80
	ld   c, a
	ld   b, $2F
	ld   a, [bc]
	sra  a
	add  [hl]
	ld   [hl], a
	call L0249F7
	ld   a, [de]
	dec  a
	ld   [de], a
	cp   $FF
	ret  nz
	call L0249D9
	ldh  a, [$FFB1]
	add  $32
	ld   l, a
	ld   h, d
	ld   [hl], $9C
	inc  l
	ld   [hl], $4A
L02497E:;J
	ldh  a, [$FFB1]
	add  $36
	ld   l, a
	add  $D0
	ld   e, a
	push de
	ld   h, d
	ld   e, [hl]
	inc  l
	ld   d, [hl]
	call L024666
	pop  de
	ld   a, [de]
	and  a
	jr   z, $49A2
	call L001EF3
L024996:;I
	call L002027
	jr   nc, $49A5
	ldh  a, [$FFB1]
	add  $06
	ld   e, a
	sub  a
	ld   [de], a
L0249A2:;R
	call L001EF3
L0249A5:;RI
	ldh  a, [$FFB1]
	add  $29
	ld   e, a
	ld   a, [de]
	and  a
	jr   z, $49CF
	ld   b, a
	ld   a, e
	add  $0D
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	ld   e, a
	add  $09
	ld   l, a
	ld   a, [hl]
	and  a
	jr   nz, $49C6
	push de
	ld   d, h
	call L024BD1
	pop  de
	jr   L0249C8
L0249C6:;R
	cp   b
	ret  z
L0249C8:;R
	ldh  a, [$FFB1]
	add  $29
	ld   e, a
	sub  a
	ld   [de], a
L0249CF:;R
	ld   a, e
	add  $DD
	ld   e, a
	ld   a, [de]
	and  a
	ret  nz
	jp   L001ECD
L0249D9:;C
	ldh  a, [$FFB1]
	add  $29
	ld   e, a
	ld   a, [de]
	sub  $02
	ret  c
	cp   $04
	jr   c, $49E8
L0249E6: db $3E;X
L0249E7: db $03;X
L0249E8:;R
	ld   c, a
	ld   b, $00
	ld   hl, $49F3
	add  hl, bc
	ld   a, [hl]
	jp   Sound_ReqPlayId
L0249F3: db $47
L0249F4: db $48
L0249F5: db $49;X
L0249F6: db $50;X
L0249F7:;C
	ldh  a, [$FFB1]
	add  $0D
	ld   l, a
	ld   c, [hl]
	add  $04
	ld   l, a
	ld   b, [hl]
	add  $17
	ld   l, a
	ld   a, [hl]
	and  a
	ld   hl, $C0BC
	jr   z, $4A0D
L024A0B: db $2E;X
L024A0C: db $BE;X
L024A0D:;R
	ld   a, c
	sub  $2C
	ldi  [hl], a
	ld   a, b
	sub  $24
	ld   [hl], a
	ld   h, d
	ret  
L024A17:;C
	ldh  a, [$FFB1]
	add  $24
	ld   l, a
	ld   h, d
	ld   b, [hl]
	add  $E9
	ld   l, a
	add  $0E
	ld   e, a
	add  $FA
	ld   c, a
	ld   a, [de]
	sub  [hl]
	ld   l, c
	ld   c, $00
	sra  a
	rr   c
	sra  a
	rr   c
	sra  a
	rr   c
	sra  a
	rr   c
	bit  4, b
	jr   z, $4A4C
	sra  a
	rr   c
	bit  5, b
	jr   z, $4A4C
L024A48: db $CB;X
L024A49: db $2F;X
L024A4A: db $CB;X
L024A4B: db $19;X
L024A4C:;R
	ldd  [hl], a
	ld   [hl], c
	ld   a, e
	add  $F2
	ld   l, a
	ld   a, [hl]
	ld   [de], a
	ld   a, e
	add  $F6
	ld   l, a
	add  $0E
	ld   e, a
	add  $FA
	ld   c, a
	ld   a, [de]
	sub  [hl]
	ld   l, c
	ld   c, $00
	sra  a
	rr   c
	sra  a
	rr   c
	sra  a
	rr   c
	sra  a
	rr   c
	bit  4, b
	jr   z, $4A83
	sra  a
	rr   c
	bit  5, b
	jr   z, $4A83
L024A7F: db $CB;X
L024A80: db $2F;X
L024A81: db $CB;X
L024A82: db $19;X
L024A83:;R
	ldd  [hl], a
	ld   [hl], c
	ld   a, e
	add  $F2
	ld   l, a
	ld   a, [hl]
	ld   [de], a
	ret  
L024A8C: db $01
L024A8D: db $02
L024A8E: db $02
L024A8F: db $01
L024A90: db $03
L024A91: db $01
L024A92: db $04
L024A93: db $01
L024A94: db $03
L024A95: db $01
L024A96: db $02
L024A97: db $01
L024A98: db $00
L024A99: db $FF
L024A9A: db $8C
L024A9B: db $4A
L024A9C: db $01
L024A9D: db $00
L024A9E: db $02
L024A9F: db $00
L024AA0: db $03
L024AA1: db $01
L024AA2: db $04
L024AA3: db $02
L024AA4: db $03
L024AA5: db $01
L024AA6: db $02
L024AA7: db $00
L024AA8: db $01
L024AA9: db $00
L024AAA: db $00
L024AAB: db $01
L024AAC: db $01
L024AAD: db $01
L024AAE: db $02
L024AAF: db $01
L024AB0: db $03
L024AB1: db $01
L024AB2: db $04
L024AB3: db $01
L024AB4: db $05
L024AB5: db $01
L024AB6: db $06
L024AB7: db $02
L024AB8: db $07
L024AB9: db $02
L024ABA: db $00
L024ABB: db $FE
L024ABC:;I
	ld   hl, $4B06
	ld   b, $02
	call L001E64
	ret  c
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	inc  a
	ld   [hl], a
	ld   a, l
	add  $28
	ld   l, a
	ld   a, [de]
	ldi  [hl], a
	ld   a, e
	add  $E1
	ld   e, a
	ld   a, [de]
	ldd  [hl], a
	ld   a, [$C0F0]
	and  $7F
	jr   z, $4AF1
L024AE0: db $FE;X
L024AE1: db $03;X
L024AE2: db $30;X
L024AE3: db $0D;X
L024AE4: db $7E;X
L024AE5: db $C6;X
L024AE6: db $F2;X
L024AE7: db $4F;X
L024AE8: db $06;X
L024AE9: db $C0;X
L024AEA: db $0A;X
L024AEB: db $FE;X
L024AEC: db $FF;X
L024AED: db $28;X
L024AEE: db $02;X
L024AEF: db $2C;X
L024AF0: db $32;X
L024AF1:;R
	ld   a, l
	add  $E5
	ld   l, a
	add  $04
	ld   c, a
	ld   a, [$C0A8]
	sub  $2C
	ld   [hl], a
	ld   l, c
	ld   a, [$C0A9]
	sub  $24
	ld   [hl], a
	ret  
L024B06:;I
	ld   a, e
	add  $20
	ld   l, a
	ld   h, d
	add  $FF
	ld   e, a
	add  $FA
	ld   c, a
	add  $ED
	ld   b, a
	ld   [hl], $0C
	ld   l, e
	ld   [hl], $FF
	ld   l, c
	ld   [hl], $FE
	ld   l, b
	ld   [hl], $35
	ld   bc, $0032
	call L001EE8
L024B25:;I
	call L001F6D
	ldh  a, [$FFB1]
	add  $0D
	ld   l, a
	add  $04
	ld   e, a
	ld   h, d
	add  $18
	ld   c, a
	ld   a, [hl]
	ldh  [$FFD0], a
	ld   a, [de]
	ldh  [$FFD1], a
	ld   a, $10
	ldh  [$FFD3], a
	ld   l, c
	ld   a, [hl]
	cp   $0A
	jr   c, $4B64
L024B44: db $1E;X
L024B45: db $81;X
L024B46: db $FE;X
L024B47: db $14;X
L024B48: db $38;X
L024B49: db $04;X
L024B4A: db $1E;X
L024B4B: db $82;X
L024B4C: db $D6;X
L024B4D: db $0A;X
L024B4E: db $4F;X
L024B4F: db $F0;X
L024B50: db $D0;X
L024B51: db $47;X
L024B52: db $C5;X
L024B53: db $D6;X
L024B54: db $09;X
L024B55: db $E0;X
L024B56: db $D0;X
L024B57: db $7B;X
L024B58: db $E0;X
L024B59: db $D2;X
L024B5A: db $CD;X
L024B5B: db $0C;X
L024B5C: db $21;X
L024B5D: db $C1;X
L024B5E: db $78;X
L024B5F: db $E0;X
L024B60: db $D0;X
L024B61: db $79;X
L024B62: db $D6;X
L024B63: db $0A;X
L024B64:;R
	add  $80
	ldh  [$FFD2], a
	call L00210C
	call L001EF3
L024B6E:;I
	jp   L001ECD
L024B71: db $7B;X
L024B72: db $C6;X
L024B73: db $06;X
L024B74: db $6F;X
L024B75: db $C6;X
L024B76: db $1E;X
L024B77: db $5F;X
L024B78: db $62;X
L024B79: db $36;X
L024B7A: db $87;X
L024B7B: db $2C;X
L024B7C: db $2C;X
L024B7D: db $36;X
L024B7E: db $06;X
L024B7F: db $2C;X
L024B80: db $36;X
L024B81: db $15;X
L024B82: db $3E;X
L024B83: db $78;X
L024B84: db $12;X
L024B85: db $7B;X
L024B86: db $C6;X
L024B87: db $E9;X
L024B88: db $5F;X
L024B89: db $C6;X
L024B8A: db $07;X
L024B8B: db $6F;X
L024B8C: db $01;X
L024B8D: db $50;X
L024B8E: db $FF;X
L024B8F: db $1A;X
L024B90: db $FE;X
L024B91: db $80;X
L024B92: db $30;X
L024B93: db $03;X
L024B94: db $01;X
L024B95: db $B0;X
L024B96: db $00;X
L024B97: db $71;X
L024B98: db $2C;X
L024B99: db $70;X
L024B9A: db $7B;X
L024B9B: db $C6;X
L024B9C: db $0B;X
L024B9D: db $6F;X
L024B9E: db $36;X
L024B9F: db $B0;X
L024BA0: db $2C;X
L024BA1: db $36;X
L024BA2: db $FF;X
L024BA3: db $C6;X
L024BA4: db $08;X
L024BA5: db $6F;X
L024BA6: db $36;X
L024BA7: db $04;X
L024BA8: db $C6;X
L024BA9: db $FF;X
L024BAA: db $6F;X
L024BAB: db $36;X
L024BAC: db $FF;X
L024BAD: db $CD;X
L024BAE: db $F3;X
L024BAF: db $1E;X
L024BB0: db $F0;X
L024BB1: db $B1;X
L024BB2: db $C6;X
L024BB3: db $11;X
L024BB4: db $5F;X
L024BB5: db $1A;X
L024BB6: db $FE;X
L024BB7: db $60;X
L024BB8: db $DC;X
L024BB9: db $6D;X
L024BBA: db $1F;X
L024BBB: db $F0;X
L024BBC: db $B1;X
L024BBD: db $C6;X
L024BBE: db $24;X
L024BBF: db $6F;X
L024BC0: db $62;X
L024BC1: db $C6;X
L024BC2: db $E2;X
L024BC3: db $5F;X
L024BC4: db $35;X
L024BC5: db $CA;X
L024BC6: db $CD;X
L024BC7: db $1E;X
L024BC8: db $7E;X
L024BC9: db $FE;X
L024BCA: db $14;X
L024BCB: db $D0;X
L024BCC: db $1A;X
L024BCD: db $EE;X
L024BCE: db $80;X
L024BCF: db $12;X
L024BD0: db $C9;X
L024BD1:;C
	ldh  a, [$FFC0]
	and  $0F
	cp   $08
	ret  z
	cp   $0C
	ret  z
	cp   $0E
	ret  z
	ld   a, e
	add  $28
	ld   e, a
	ld   a, [de]
	and  a
	ld   hl, $D4BA
	jr   z, $4BEC
	ld   hl, $D47A
L024BEC:;R
	ldi  a, [hl]
	ld   c, a
	ld   a, [hl]
	ld   b, a
	or   c
	ret  z
	sub  a
	ldd  [hl], a
	ld   [hl], a
	ld   a, l
	add  $DA
	ld   l, a
	ld   a, [hl]
	add  c
	ldi  [hl], a
	ld   a, [hl]
	adc  a, b
	ldd  [hl], a
	ret  
L024C00:;I
	call L024000
	ld   hl, $0080
	add  hl, bc
	push hl
	call L024F1B
	ldh  [$FFD0], a
	push bc
	call L0269E5
	pop  bc
	ldh  a, [$FFC0]
	and  $80
	jr   nz, $4C20
	ldh  a, [$FFC0]
	and  $0F
	cp   $08
	jr   z, $4C2A
	ldh  a, [$FFB1]
	add  $12
	ld   e, a
	ld   l, c
	ld   h, $00
	jr   L024C5A
L024C2A: db $F0;X
L024C2B: db $B1;X
L024C2C: db $C6;X
L024C2D: db $29;X
L024C2E: db $6F;X
L024C2F: db $C6;X
L024C30: db $E9;X
L024C31: db $5F;X
L024C32: db $62;X
L024C33: db $1A;X
L024C34: db $0F;X
L024C35: db $0F;X
L024C36: db $0F;X
L024C37: db $E6;X
L024C38: db $1F;X
L024C39: db $81;X
L024C3A: db $E0;X
L024C3B: db $D0;X
L024C3C: db $7E;X
L024C3D: db $FE;X
L024C3E: db $0A;X
L024C3F: db $38;X
L024C40: db $02;X
L024C41: db $3E;X
L024C42: db $09;X
L024C43: db $3C;X
L024C44: db $D5;X
L024C45: db $CD;X
L024C46: db $D9;X
L024C47: db $0D;X
L024C48: db $D1;X
L024C49: db $7C;X
L024C4A: db $FE;X
L024C4B: db $19;X
L024C4C: db $38;X
L024C4D: db $0C;X
L024C4E: db $20;X
L024C4F: db $05;X
L024C50: db $7D;X
L024C51: db $FE;X
L024C52: db $99;X
L024C53: db $38;X
L024C54: db $05;X
L024C55: db $21;X
L024C56: db $FF;X
L024C57: db $FF;X
L024C58: db $18;X
L024C59: db $06;X
L024C5A:;R
	ld   c, l
	ld   b, h
	add  hl, hl
	add  hl, hl
	add  hl, bc
	add  hl, hl
	ld   a, [de]
	add  l
	ld   [de], a
	inc  e
	ld   a, [de]
	adc  a, h
	ld   [de], a
	pop  hl
	call L024D0D
	ldh  a, [$FFB1]
	add  $1F
	ld   l, a
	ld   h, d
	add  $EA
	ld   e, a
	ldd  a, [hl]
	or   [hl]
	jr   nz, $4C7A
	ld   [hl], $01
L024C7A:;R
	ldh  a, [$FFC0]
	and  $0F
	cp   $04
	jr   c, $4C98
L024C82: db $FE;X
L024C83: db $06;X
L024C84: db $30;X
L024C85: db $12;X
L024C86: db $1A;X
L024C87: db $4F;X
L024C88: db $FA;X
L024C89: db $DA;X
L024C8A: db $C0;X
L024C8B: db $B9;X
L024C8C: db $D8;X
L024C8D: db $7D;X
L024C8E: db $C6;X
L024C8F: db $F4;X
L024C90: db $5F;X
L024C91: db $97;X
L024C92: db $22;X
L024C93: db $77;X
L024C94: db $6B;X
L024C95: db $22;X
L024C96: db $77;X
L024C97: db $C9;X
L024C98:;R
	ldh  a, [$FFC0]
	and  $0F
	cp   $08
	ret  nz
L024C9F: db $7B;X
L024CA0: db $C6;X
L024CA1: db $15;X
L024CA2: db $6F;X
L024CA3: db $62;X
L024CA4: db $C6;X
L024CA5: db $E6;X
L024CA6: db $5F;X
L024CA7: db $4E;X
L024CA8: db $2C;X
L024CA9: db $46;X
L024CAA: db $F0;X
L024CAB: db $D0;X
L024CAC: db $D5;X
L024CAD: db $CD;X
L024CAE: db $FC;X
L024CAF: db $0D;X
L024CB0: db $D1;X
L024CB1: db $4F;X
L024CB2: db $1A;X
L024CB3: db $81;X
L024CB4: db $4F;X
L024CB5: db $30;X
L024CB6: db $04;X
L024CB7: db $2C;X
L024CB8: db $20;X
L024CB9: db $01;X
L024CBA: db $24;X
L024CBB: db $79;X
L024CBC: db $E6;X
L024CBD: db $0F;X
L024CBE: db $12;X
L024CBF: db $CB;X
L024CC0: db $3C;X
L024CC1: db $CB;X
L024CC2: db $1D;X
L024CC3: db $CB;X
L024CC4: db $19;X
L024CC5: db $CB;X
L024CC6: db $3C;X
L024CC7: db $CB;X
L024CC8: db $1D;X
L024CC9: db $CB;X
L024CCA: db $19;X
L024CCB: db $CB;X
L024CCC: db $3C;X
L024CCD: db $CB;X
L024CCE: db $1D;X
L024CCF: db $CB;X
L024CD0: db $19;X
L024CD1: db $CB;X
L024CD2: db $3C;X
L024CD3: db $CB;X
L024CD4: db $1D;X
L024CD5: db $CB;X
L024CD6: db $19;X
L024CD7: db $7C;X
L024CD8: db $45;X
L024CD9: db $A7;X
L024CDA: db $28;X
L024CDB: db $03;X
L024CDC: db $01;X
L024CDD: db $FF;X
L024CDE: db $FF;X
L024CDF: db $7B;X
L024CE0: db $C6;X
L024CE1: db $10;X
L024CE2: db $6F;X
L024CE3: db $62;X
L024CE4: db $7E;X
L024CE5: db $91;X
L024CE6: db $22;X
L024CE7: db $7E;X
L024CE8: db $98;X
L024CE9: db $32;X
L024CEA: db $30;X
L024CEB: db $1E;X
L024CEC: db $7D;X
L024CED: db $C6;X
L024CEE: db $24;X
L024CEF: db $5F;X
L024CF0: db $97;X
L024CF1: db $96;X
L024CF2: db $2C;X
L024CF3: db $4F;X
L024CF4: db $3E;X
L024CF5: db $00;X
L024CF6: db $9E;X
L024CF7: db $2B;X
L024CF8: db $20;X
L024CF9: db $08;X
L024CFA: db $1A;X
L024CFB: db $81;X
L024CFC: db $38;X
L024CFD: db $04;X
L024CFE: db $FE;X
L024CFF: db $2A;X
L024D00: db $38;X
L024D01: db $02;X
L024D02: db $3E;X
L024D03: db $2A;X
L024D04: db $12;X
L024D05: db $36;X
L024D06: db $00;X
L024D07: db $2C;X
L024D08: db $36;X
L024D09: db $00;X
L024D0A: db $C3;X
L024D0B: db $75;X
L024D0C: db $46;X
L024D0D:;C
	ld   a, [$C0EB]
	ld   c, a
	add  a
	add  c
	add  a
	add  a
	add  a
	ld   c, a
	ldh  a, [$FFB1]
	add  $09
	ld   e, a
	add  $15
	ld   b, a
	ld   a, [de]
	ld   e, b
	push de
	push hl
	dec  a
	cp   $18
	jr   c, $4D2A
L024D28: db $3E;X
L024D29: db $17;X
L024D2A:;R
	add  c
	ld   l, a
	ld   h, $00
	add  hl, hl
	ld   bc, $4DEB
	add  hl, bc
	ld   a, [de]
	add  [hl]
	ldh  [$FFF6], a
	inc  hl
	inc  e
	ld   a, [de]
	adc  a, [hl]
	ldh  [$FFF7], a
	ld   hl, $FFF0
	sub  a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	pop  hl
	push hl
	ld   a, e
	add  $05
	ld   e, a
	ld   a, [de]
	ldh  [$FFF5], a
	ld   b, a
	ld   e, $00
	inc  l
L024D53:;R
	ld   a, [hl]
	swap a
	add  $F0
	ld   c, a
	ld   a, [c]
	and  a
	jr   nz, $4D61
	inc  e
	ld   a, $01
	ld   [c], a
	inc  l
	inc  l
	dec  b
	jr   nz, $4D53
	ld   d, $00
	ld   hl, $4F0A
	add  hl, de
	ldh  a, [$FFF6]
	add  [hl]
	ldh  [$FFF6], a
	inc  hl
	ldh  a, [$FFF7]
	adc  a, $00
	ldh  [$FFF7], a
	pop  de
	sub  a
	ldh  [$FFF0], a
	ldh  [$FFF1], a
	ldh  a, [$FFF5]
	ld   b, a
	ld   c, $00
	ld   a, [$C0E7]
	cp   $04
	jr   nc, $4D8D
L024D8A: db $EE;X
L024D8B: db $02;X
L024D8C: db $4F;X
L024D8D:;R
	ld   a, [de]
	cp   $07
	jr   c, $4D96
L024D92: db $21;X
L024D93: db $F1;X
L024D94: db $FF;X
L024D95: db $35;X
L024D96:;R
	ld   l, a
	ldh  a, [$FFF0]
	add  l
	ldh  [$FFF0], a
	cp   $0B
	jr   c, $4DA4
L024DA0: db $3E;X
L024DA1: db $FF;X
L024DA2: db $E0;X
L024DA3: db $F1;X
L024DA4:;R
	ld   a, [de]
	cp   $0C
	jr   c, $4DAB
L024DA9: db $3E;X
L024DAA: db $0B;X
L024DAB:;R
	add  c
	add  $0F
	ld   l, a
	ld   a, $4F
	adc  a, $00
	ld   h, a
	ldh  a, [$FFF6]
	add  [hl]
	ldh  [$FFF6], a
	ldh  a, [$FFF7]
	adc  a, $00
	ldh  [$FFF7], a
	inc  e
	inc  e
	dec  b
	jr   nz, $4D8D
	pop  hl
	ld   d, h
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	add  $B6
	ld   c, a
	ld   b, $C0
	ldh  a, [$FFF1]
	ld   [bc], a
	ldh  a, [$FFF6]
	ldi  [hl], a
	ld   c, a
	ldh  a, [$FFF7]
	ldd  [hl], a
	cp   $27
	ret  c
L024DDE: db $20;X
L024DDF: db $05;X
L024DE0: db $79;X
L024DE1: db $FE;X
L024DE2: db $0F;X
L024DE3: db $D8;X
L024DE4: db $C8;X
L024DE5: db $36;X
L024DE6: db $0F;X
L024DE7: db $2C;X
L024DE8: db $36;X
L024DE9: db $27;X
L024DEA: db $C9;X
L024DEB: db $00;X
L024DEC: db $00;X
L024DED: db $08;X
L024DEE: db $00;X
L024DEF: db $10;X
L024DF0: db $00;X
L024DF1: db $20;X
L024DF2: db $00;X
L024DF3: db $40;X
L024DF4: db $00;X
L024DF5: db $80;X
L024DF6: db $00;X
L024DF7: db $00;X
L024DF8: db $01;X
L024DF9: db $00;X
L024DFA: db $02;X
L024DFB: db $00;X
L024DFC: db $04;X
L024DFD: db $00;X
L024DFE: db $04;X
L024DFF: db $00;X
L024E00: db $04;X
L024E01: db $00;X
L024E02: db $04;X
L024E03: db $00;X
L024E04: db $04;X
L024E05: db $00;X
L024E06: db $04;X
L024E07: db $00;X
L024E08: db $04;X
L024E09: db $00;X
L024E0A: db $04;X
L024E0B: db $00;X
L024E0C: db $04;X
L024E0D: db $00;X
L024E0E: db $04;X
L024E0F: db $00;X
L024E10: db $04;X
L024E11: db $00;X
L024E12: db $04;X
L024E13: db $00;X
L024E14: db $04;X
L024E15: db $00;X
L024E16: db $04;X
L024E17: db $00;X
L024E18: db $04;X
L024E19: db $00;X
L024E1A: db $04;X
L024E1B: db $00
L024E1C: db $00
L024E1D: db $08
L024E1E: db $00
L024E1F: db $10
L024E20: db $00
L024E21: db $20;X
L024E22: db $00;X
L024E23: db $40;X
L024E24: db $00;X
L024E25: db $60;X
L024E26: db $00;X
L024E27: db $80;X
L024E28: db $00;X
L024E29: db $A0;X
L024E2A: db $00;X
L024E2B: db $C0;X
L024E2C: db $00;X
L024E2D: db $E0;X
L024E2E: db $00;X
L024E2F: db $00;X
L024E30: db $01;X
L024E31: db $20;X
L024E32: db $01;X
L024E33: db $40;X
L024E34: db $01;X
L024E35: db $60;X
L024E36: db $01;X
L024E37: db $80;X
L024E38: db $01;X
L024E39: db $A0;X
L024E3A: db $01;X
L024E3B: db $C0;X
L024E3C: db $01;X
L024E3D: db $E0;X
L024E3E: db $01;X
L024E3F: db $00;X
L024E40: db $02;X
L024E41: db $20;X
L024E42: db $02;X
L024E43: db $40;X
L024E44: db $02;X
L024E45: db $60;X
L024E46: db $02;X
L024E47: db $80;X
L024E48: db $02;X
L024E49: db $A0;X
L024E4A: db $02;X
L024E4B: db $00;X
L024E4C: db $00;X
L024E4D: db $08;X
L024E4E: db $00;X
L024E4F: db $10;X
L024E50: db $00;X
L024E51: db $20;X
L024E52: db $00;X
L024E53: db $30;X
L024E54: db $00;X
L024E55: db $40;X
L024E56: db $00;X
L024E57: db $50;X
L024E58: db $00;X
L024E59: db $60;X
L024E5A: db $00;X
L024E5B: db $70;X
L024E5C: db $00;X
L024E5D: db $80;X
L024E5E: db $00;X
L024E5F: db $90;X
L024E60: db $00;X
L024E61: db $A0;X
L024E62: db $00;X
L024E63: db $F0;X
L024E64: db $00;X
L024E65: db $E0;X
L024E66: db $01;X
L024E67: db $20;X
L024E68: db $03;X
L024E69: db $B0;X
L024E6A: db $04;X
L024E6B: db $40;X
L024E6C: db $06;X
L024E6D: db $60;X
L024E6E: db $09;X
L024E6F: db $80;X
L024E70: db $0C;X
L024E71: db $C0;X
L024E72: db $12;X
L024E73: db $00;X
L024E74: db $19;X
L024E75: db $40;X
L024E76: db $1F;X
L024E77: db $10;X
L024E78: db $27;X
L024E79: db $10;X
L024E7A: db $27;X
L024E7B: db $04;X
L024E7C: db $00;X
L024E7D: db $14;X
L024E7E: db $00;X
L024E7F: db $18;X
L024E80: db $00;X
L024E81: db $20;X
L024E82: db $00;X
L024E83: db $30;X
L024E84: db $00;X
L024E85: db $60;X
L024E86: db $00;X
L024E87: db $A0;X
L024E88: db $00;X
L024E89: db $F0;X
L024E8A: db $00;X
L024E8B: db $40;X
L024E8C: db $01;X
L024E8D: db $E0;X
L024E8E: db $01;X
L024E8F: db $58;X
L024E90: db $02;X
L024E91: db $BC;X
L024E92: db $02;X
L024E93: db $20;X
L024E94: db $03;X
L024E95: db $84;X
L024E96: db $03;X
L024E97: db $E8;X
L024E98: db $03;X
L024E99: db $4C;X
L024E9A: db $04;X
L024E9B: db $B0;X
L024E9C: db $04;X
L024E9D: db $78;X
L024E9E: db $05;X
L024E9F: db $40;X
L024EA0: db $06;X
L024EA1: db $08;X
L024EA2: db $07;X
L024EA3: db $D0;X
L024EA4: db $07;X
L024EA5: db $98;X
L024EA6: db $08;X
L024EA7: db $60;X
L024EA8: db $09;X
L024EA9: db $F0;X
L024EAA: db $0A;X
L024EAB: db $00;X
L024EAC: db $00;X
L024EAD: db $02;X
L024EAE: db $00;X
L024EAF: db $03;X
L024EB0: db $00;X
L024EB1: db $04;X
L024EB2: db $00;X
L024EB3: db $05;X
L024EB4: db $00;X
L024EB5: db $06;X
L024EB6: db $00;X
L024EB7: db $07;X
L024EB8: db $00;X
L024EB9: db $08;X
L024EBA: db $00;X
L024EBB: db $0A;X
L024EBC: db $00;X
L024EBD: db $0C;X
L024EBE: db $00;X
L024EBF: db $0F;X
L024EC0: db $00;X
L024EC1: db $12;X
L024EC2: db $00;X
L024EC3: db $18;X
L024EC4: db $00;X
L024EC5: db $1E;X
L024EC6: db $00;X
L024EC7: db $28;X
L024EC8: db $00;X
L024EC9: db $32;X
L024ECA: db $00;X
L024ECB: db $3C;X
L024ECC: db $00;X
L024ECD: db $50;X
L024ECE: db $00;X
L024ECF: db $64;X
L024ED0: db $00;X
L024ED1: db $78;X
L024ED2: db $00;X
L024ED3: db $96;X
L024ED4: db $00;X
L024ED5: db $C8;X
L024ED6: db $00;X
L024ED7: db $2C;X
L024ED8: db $01;X
L024ED9: db $F4;X
L024EDA: db $01;X
L024EDB: db $00;X
L024EDC: db $00;X
L024EDD: db $02;X
L024EDE: db $00;X
L024EDF: db $04;X
L024EE0: db $00;X
L024EE1: db $06;X
L024EE2: db $00;X
L024EE3: db $08;X
L024EE4: db $00;X
L024EE5: db $0A;X
L024EE6: db $00;X
L024EE7: db $0C;X
L024EE8: db $00;X
L024EE9: db $0F;X
L024EEA: db $00;X
L024EEB: db $12;X
L024EEC: db $00;X
L024EED: db $16;X
L024EEE: db $00;X
L024EEF: db $1A;X
L024EF0: db $00;X
L024EF1: db $1E;X
L024EF2: db $00;X
L024EF3: db $24;X
L024EF4: db $00;X
L024EF5: db $2C;X
L024EF6: db $00;X
L024EF7: db $32;X
L024EF8: db $00;X
L024EF9: db $3C;X
L024EFA: db $00;X
L024EFB: db $50;X
L024EFC: db $00;X
L024EFD: db $78;X
L024EFE: db $00;X
L024EFF: db $96;X
L024F00: db $00;X
L024F01: db $C8;X
L024F02: db $00;X
L024F03: db $FA;X
L024F04: db $00;X
L024F05: db $2C;X
L024F06: db $01;X
L024F07: db $90;X
L024F08: db $01;X
L024F09: db $58;X
L024F0A: db $02;X
L024F0B: db $00
L024F0C: db $03
L024F0D: db $06;X
L024F0E: db $0C;X
L024F0F: db $18;X
L024F10: db $00;X
L024F11: db $00;X
L024F12: db $00;X
L024F13: db $00
L024F14: db $02
L024F15: db $03;X
L024F16: db $04;X
L024F17: db $05;X
L024F18: db $06;X
L024F19: db $07;X
L024F1A: db $0A;X
L024F1B:;C
	ldh  a, [$FFB1]
	add  $24
	ld   e, a
	ld   a, [de]
	push hl
	ld   b, a
	sub  a
L024F24:;R
	add  [hl]
	inc  l
	inc  l
	dec  b
	jr   nz, $4F24
	ld   c, a
	ld   a, e
	add  $F2
	ld   l, a
	ld   h, d
	ld   a, c
	add  [hl]
	ldi  [hl], a
	ld   b, a
	ld   a, [hl]
	adc  a, $00
	ldd  [hl], a
	cp   $27
	jr   c, $4F48
L024F3C: db $20;X
L024F3D: db $05;X
L024F3E: db $78;X
L024F3F: db $FE;X
L024F40: db $0F;X
L024F41: db $38;X
L024F42: db $05;X
L024F43: db $36;X
L024F44: db $0F;X
L024F45: db $2C;X
L024F46: db $36;X
L024F47: db $27;X
L024F48:;R
	ld   a, e
	add  $F4
	ld   l, a
	ld   h, d
	ld   a, c
	add  [hl]
	ldi  [hl], a
	ld   a, [hl]
	adc  a, $00
	ldd  [hl], a
	jr   nc, $4F5A
L024F56: db $3E;X
L024F57: db $FF;X
L024F58: db $22;X
L024F59: db $77;X
L024F5A:;R
	pop  hl
	ld   a, c
	ret  
L024F5D:;I
	ld   bc, $0000
	ldh  a, [$FFC0]
	and  $0F
	jr   nz, $4F71
	ld   a, [$C082]
	cp   $02
	jr   c, $4F7E
L024F6D: db $0E;X
L024F6E: db $02;X
L024F6F: db $18;X
L024F70: db $0D;X
L024F71: db $F0;X
L024F72: db $B1;X
L024F73: db $C6;X
L024F74: db $29;X
L024F75: db $5F;X
L024F76: db $1A;X
L024F77: db $4F;X
L024F78: db $FE;X
L024F79: db $05;X
L024F7A: db $38;X
L024F7B: db $02;X
L024F7C: db $0E;X
L024F7D: db $04;X
L024F7E:;R
	ld   hl, $4F84
	add  hl, bc
	ld   c, [hl]
	ret  
L024F84: db $0C
L024F85: db $08;X
L024F86: db $04;X
L024F87: db $02;X
L024F88: db $00;X
L024F89:;I
	ldh  a, [$FFC0]
	and  $0F
	cp   $0E
	ret  z
	cp   $0C
	ret  z
	call L024000
	ld   a, e
	add  $E1
	ld   e, a
	ld   a, [de]
	and  a
	ret  nz
	ld   a, c
	add  $08
	ld   l, a
	ld   h, b
	ld   c, $0C
L024FA4:;R
	ld   b, $06
L024FA6:;R
	ldi  a, [hl]
	and  a
	ret  nz
	dec  b
	jr   nz, $4FA6
	inc  l
	inc  l
	dec  c
	jr   nz, $4FA4
L024FB1: db $3E;X
L024FB2: db $59;X
L024FB3: db $CD;X
L024FB4: db $4E;X
L024FB5: db $3B;X
L024FB6: db $06;X
L024FB7: db $02;X
L024FB8: db $21;X
L024FB9: db $41;X
L024FBA: db $50;X
L024FBB: db $CD;X
L024FBC: db $64;X
L024FBD: db $1E;X
L024FBE: db $38;X
L024FBF: db $15;X
L024FC0: db $F0;X
L024FC1: db $B1;X
L024FC2: db $5F;X
L024FC3: db $1A;X
L024FC4: db $77;X
L024FC5: db $7D;X
L024FC6: db $C6;X
L024FC7: db $36;X
L024FC8: db $6F;X
L024FC9: db $73;X
L024FCA: db $2C;X
L024FCB: db $72;X
L024FCC: db $C6;X
L024FCD: db $F2;X
L024FCE: db $6F;X
L024FCF: db $7B;X
L024FD0: db $C6;X
L024FD1: db $28;X
L024FD2: db $5F;X
L024FD3: db $1A;X
L024FD4: db $77;X
L024FD5: db $F0;X
L024FD6: db $C0;X
L024FD7: db $E6;X
L024FD8: db $0F;X
L024FD9: db $FE;X
L024FDA: db $08;X
L024FDB: db $20;X
L024FDC: db $30;X
L024FDD: db $F0;X
L024FDE: db $B1;X
L024FDF: db $C6;X
L024FE0: db $38;X
L024FE1: db $5F;X
L024FE2: db $1A;X
L024FE3: db $C6;X
L024FE4: db $1E;X
L024FE5: db $FE;X
L024FE6: db $2A;X
L024FE7: db $38;X
L024FE8: db $02;X
L024FE9: db $3E;X
L024FEA: db $2A;X
L024FEB: db $12;X
L024FEC: db $F0;X
L024FED: db $B1;X
L024FEE: db $5F;X
L024FEF: db $CD;X
L024FF0: db $34;X
L024FF1: db $51;X
L024FF2: db $F0;X
L024FF3: db $B1;X
L024FF4: db $C6;X
L024FF5: db $29;X
L024FF6: db $5F;X
L024FF7: db $1A;X
L024FF8: db $3C;X
L024FF9: db $6F;X
L024FFA: db $26;X
L024FFB: db $00;X
L024FFC: db $4D;X
L024FFD: db $44;X
L024FFE: db $29;X
L024FFF: db $09;X
L025000: db $29;X
L025001: db $09;X
L025002: db $29;X
L025003: db $09;X
L025004: db $29;X
L025005: db $09;X
L025006: db $29;X
L025007: db $29;X
L025008: db $09;X
L025009: db $29;X
L02500A: db $29;X
L02500B: db $18;X
L02500C: db $0A;X
L02500D: db $FA;X
L02500E: db $EC;X
L02500F: db $C0;X
L025010: db $4F;X
L025011: db $FA;X
L025012: db $E8;X
L025013: db $C0;X
L025014: db $CD;X
L025015: db $D9;X
L025016: db $0D;X
L025017: db $4D;X
L025018: db $44;X
L025019: db $21;X
L02501A: db $4F;X
L02501B: db $50;X
L02501C: db $3E;X
L02501D: db $01;X
L02501E: db $C7;X
L02501F: db $FA;X
L025020: db $D9;X
L025021: db $C0;X
L025022: db $A7;X
L025023: db $C8;X
L025024: db $F0;X
L025025: db $C0;X
L025026: db $E6;X
L025027: db $0F;X
L025028: db $FE;X
L025029: db $08;X
L02502A: db $C8;X
L02502B: db $F0;X
L02502C: db $B1;X
L02502D: db $C6;X
L02502E: db $2F;X
L02502F: db $5F;X
L025030: db $C6;X
L025031: db $0D;X
L025032: db $6F;X
L025033: db $62;X
L025034: db $1A;X
L025035: db $3D;X
L025036: db $C8;X
L025037: db $87;X
L025038: db $86;X
L025039: db $FE;X
L02503A: db $1E;X
L02503B: db $38;X
L02503C: db $02;X
L02503D: db $3E;X
L02503E: db $1E;X
L02503F: db $77;X
L025040: db $C9;X
L025041: db $CD;X
L025042: db $1F;X
L025043: db $40;X
L025044: db $7B;X
L025045: db $C6;X
L025046: db $E5;X
L025047: db $5F;X
L025048: db $C6;X
L025049: db $04;X
L02504A: db $6F;X
L02504B: db $62;X
L02504C: db $F0;X
L02504D: db $B6;X
L02504E: db $C6;X
L02504F: db $14;X
L025050: db $12;X
L025051: db $3E;X
L025052: db $C8;X
L025053: db $77;X
L025054: db $7B;X
L025055: db $C6;X
L025056: db $F9;X
L025057: db $5F;X
L025058: db $C6;X
L025059: db $02;X
L02505A: db $6F;X
L02505B: db $3E;X
L02505C: db $91;X
L02505D: db $12;X
L02505E: db $36;X
L02505F: db $06;X
L025060: db $2C;X
L025061: db $36;X
L025062: db $04;X
L025063: db $7B;X
L025064: db $C6;X
L025065: db $13;X
L025066: db $5F;X
L025067: db $C6;X
L025068: db $07;X
L025069: db $6F;X
L02506A: db $3E;X
L02506B: db $FC;X
L02506C: db $12;X
L02506D: db $36;X
L02506E: db $10;X
L02506F: db $CD;X
L025070: db $F3;X
L025071: db $1E;X
L025072: db $CD;X
L025073: db $6D;X
L025074: db $1F;X
L025075: db $F0;X
L025076: db $B1;X
L025077: db $C6;X
L025078: db $18;X
L025079: db $6F;X
L02507A: db $62;X
L02507B: db $7E;X
L02507C: db $C6;X
L02507D: db $1A;X
L02507E: db $22;X
L02507F: db $7E;X
L025080: db $CE;X
L025081: db $00;X
L025082: db $77;X
L025083: db $CB;X
L025084: db $7F;X
L025085: db $C0;X
L025086: db $01;X
L025087: db $3C;X
L025088: db $00;X
L025089: db $CD;X
L02508A: db $E8;X
L02508B: db $1E;X
L02508C: db $CD;X
L02508D: db $F3;X
L02508E: db $1E;X
L02508F: db $7B;X
L025090: db $C6;X
L025091: db $06;X
L025092: db $5F;X
L025093: db $3E;X
L025094: db $95;X
L025095: db $12;X
L025096: db $CD;X
L025097: db $F3;X
L025098: db $1E;X
L025099: db $CD;X
L02509A: db $6D;X
L02509B: db $1F;X
L02509C: db $F0;X
L02509D: db $B1;X
L02509E: db $C6;X
L02509F: db $11;X
L0250A0: db $5F;X
L0250A1: db $1A;X
L0250A2: db $FE;X
L0250A3: db $40;X
L0250A4: db $38;X
L0250A5: db $04;X
L0250A6: db $CD;X
L0250A7: db $6D;X
L0250A8: db $1F;X
L0250A9: db $C9;X
L0250AA: db $F0;X
L0250AB: db $C0;X
L0250AC: db $E6;X
L0250AD: db $0F;X
L0250AE: db $FE;X
L0250AF: db $08;X
L0250B0: db $28;X
L0250B1: db $7F;X
L0250B2: db $3E;X
L0250B3: db $40;X
L0250B4: db $12;X
L0250B5: db $7B;X
L0250B6: db $C6;X
L0250B7: db $FC;X
L0250B8: db $6F;X
L0250B9: db $C6;X
L0250BA: db $FC;X
L0250BB: db $5F;X
L0250BC: db $C6;X
L0250BD: db $1F;X
L0250BE: db $4F;X
L0250BF: db $62;X
L0250C0: db $3E;X
L0250C1: db $05;X
L0250C2: db $12;X
L0250C3: db $59;X
L0250C4: db $1A;X
L0250C5: db $A7;X
L0250C6: db $0E;X
L0250C7: db $14;X
L0250C8: db $28;X
L0250C9: db $02;X
L0250CA: db $0E;X
L0250CB: db $1C;X
L0250CC: db $7E;X
L0250CD: db $91;X
L0250CE: db $77;X
L0250CF: db $CD;X
L0250D0: db $F3;X
L0250D1: db $1E;X
L0250D2: db $FA;X
L0250D3: db $B0;X
L0250D4: db $C0;X
L0250D5: db $A7;X
L0250D6: db $20;X
L0250D7: db $59;X
L0250D8: db $7B;X
L0250D9: db $C6;X
L0250DA: db $28;X
L0250DB: db $5F;X
L0250DC: db $C6;X
L0250DD: db $0E;X
L0250DE: db $6F;X
L0250DF: db $1A;X
L0250E0: db $C6;X
L0250E1: db $90;X
L0250E2: db $4F;X
L0250E3: db $06;X
L0250E4: db $C0;X
L0250E5: db $0A;X
L0250E6: db $A7;X
L0250E7: db $20;X
L0250E8: db $48;X
L0250E9: db $62;X
L0250EA: db $2A;X
L0250EB: db $66;X
L0250EC: db $C6;X
L0250ED: db $09;X
L0250EE: db $6F;X
L0250EF: db $7E;X
L0250F0: db $A7;X
L0250F1: db $20;X
L0250F2: db $1C;X
L0250F3: db $7B;X
L0250F4: db $C6;X
L0250F5: db $06;X
L0250F6: db $5F;X
L0250F7: db $1A;X
L0250F8: db $C6;X
L0250F9: db $06;X
L0250FA: db $12;X
L0250FB: db $F6;X
L0250FC: db $80;X
L0250FD: db $CD;X
L0250FE: db $D2;X
L0250FF: db $0E;X
L025100: db $69;X
L025101: db $60;X
L025102: db $29;X
L025103: db $29;X
L025104: db $29;X
L025105: db $F0;X
L025106: db $B1;X
L025107: db $C6;X
L025108: db $11;X
L025109: db $5F;X
L02510A: db $7C;X
L02510B: db $C6;X
L02510C: db $40;X
L02510D: db $12;X
L02510E: db $C9;X
L02510F: db $F0;X
L025110: db $B1;X
L025111: db $C6;X
L025112: db $28;X
L025113: db $5F;X
L025114: db $C6;X
L025115: db $F3;X
L025116: db $6F;X
L025117: db $62;X
L025118: db $C6;X
L025119: db $EB;X
L02511A: db $4F;X
L02511B: db $1A;X
L02511C: db $A7;X
L02511D: db $06;X
L02511E: db $FF;X
L02511F: db $28;X
L025120: db $02;X
L025121: db $06;X
L025122: db $00;X
L025123: db $70;X
L025124: db $2C;X
L025125: db $36;X
L025126: db $20;X
L025127: db $69;X
L025128: db $36;X
L025129: db $8A;X
L02512A: db $CD;X
L02512B: db $F3;X
L02512C: db $1E;X
L02512D: db $CD;X
L02512E: db $6D;X
L02512F: db $1F;X
L025130: db $D0;X
L025131: db $C3;X
L025132: db $CD;X
L025133: db $1E;X
L025134: db $7B;X
L025135: db $C6;X
L025136: db $38;X
L025137: db $5F;X
L025138: db $C6;X
L025139: db $DC;X
L02513A: db $6F;X
L02513B: db $1A;X
L02513C: db $A7;X
L02513D: db $C8;X
L02513E: db $4F;X
L02513F: db $62;X
L025140: db $7E;X
L025141: db $91;X
L025142: db $22;X
L025143: db $7E;X
L025144: db $DE;X
L025145: db $00;X
L025146: db $32;X
L025147: db $30;X
L025148: db $0E;X
L025149: db $97;X
L02514A: db $96;X
L02514B: db $FE;X
L02514C: db $2A;X
L02514D: db $38;X
L02514E: db $02;X
L02514F: db $3E;X
L025150: db $2A;X
L025151: db $12;X
L025152: db $97;X
L025153: db $22;X
L025154: db $77;X
L025155: db $18;X
L025156: db $02;X
L025157: db $97;X
L025158: db $12;X
L025159: db $7B;X
L02515A: db $D6;X
L02515B: db $38;X
L02515C: db $5F;X
L02515D: db $C3;X
L02515E: db $78;X
L02515F: db $46;X
L025160:;I
	ldh  a, [$FFB1]
	add  $18
	ld   e, a
	ld   h, d
	add  $04
	ld   l, a
	ld   a, [hl]
	cp   $FF
	ret  z
	ld   a, [de]
	cp   [hl]
	ret  c
	sub  a
	ld   [de], a
	ld   a, e
	add  $F0
	ld   l, a
	inc  [hl]
	ld   a, [hl]
	and  $07
	jr   nz, $51B9
L02517C: db $F0;X
L02517D: db $C0;X
L02517E: db $E6;X
L02517F: db $0F;X
L025180: db $28;X
L025181: db $37;X
L025182: db $3E;X
L025183: db $36;X
L025184: db $CD;X
L025185: db $4E;X
L025186: db $3B;X
L025187: db $7D;X
L025188: db $C6;X
L025189: db $21;X
L02518A: db $6F;X
L02518B: db $7E;X
L02518C: db $FE;X
L02518D: db $62;X
L02518E: db $30;X
L02518F: db $29;X
L025190: db $3C;X
L025191: db $77;X
L025192: db $EA;X
L025193: db $24;X
L025194: db $C1;X
L025195: db $FA;X
L025196: db $E2;X
L025197: db $C0;X
L025198: db $EA;X
L025199: db $22;X
L02519A: db $C1;X
L02519B: db $FA;X
L02519C: db $E3;X
L02519D: db $C0;X
L02519E: db $EA;X
L02519F: db $23;X
L0251A0: db $C1;X
L0251A1: db $7E;X
L0251A2: db $3D;X
L0251A3: db $E6;X
L0251A4: db $03;X
L0251A5: db $20;X
L0251A6: db $0D;X
L0251A7: db $7D;X
L0251A8: db $C6;X
L0251A9: db $09;X
L0251AA: db $6F;X
L0251AB: db $2A;X
L0251AC: db $66;X
L0251AD: db $C6;X
L0251AE: db $0A;X
L0251AF: db $6F;X
L0251B0: db $34;X
L0251B1: db $20;X
L0251B2: db $01;X
L0251B3: db $35;X
L0251B4: db $06;X
L0251B5: db $80;X
L0251B6: db $CD;X
L0251B7: db $FF;X
L0251B8: db $69;X
L0251B9:;RI
	ldh  a, [$FFB1]
	add  $08
	ld   e, a
	ldh  a, [$FFC0]
	and  $0F
	jr   z, $51D6
L0251C4: db $FE;X
L0251C5: db $04;X
L0251C6: db $28;X
L0251C7: db $57;X
L0251C8: db $FE;X
L0251C9: db $05;X
L0251CA: db $28;X
L0251CB: db $53;X
L0251CC: db $FE;X
L0251CD: db $0E;X
L0251CE: db $30;X
L0251CF: db $4F;X
L0251D0: db $FE;X
L0251D1: db $0C;X
L0251D2: db $28;X
L0251D3: db $35;X
L0251D4: db $18;X
L0251D5: db $6B;X
L0251D6:;R
	ld   a, [$C082]
	cp   $02
	jr   c, $51EF
L0251DD: db $FA;X
L0251DE: db $10;X
L0251DF: db $B0;X
L0251E0: db $EE;X
L0251E1: db $03;X
L0251E2: db $D6;X
L0251E3: db $02;X
L0251E4: db $30;X
L0251E5: db $01;X
L0251E6: db $97;X
L0251E7: db $4F;X
L0251E8: db $1A;X
L0251E9: db $91;X
L0251EA: db $30;X
L0251EB: db $0F;X
L0251EC: db $97;X
L0251ED: db $18;X
L0251EE: db $0C;X
L0251EF:;R
	ld   a, [$B010]
	xor  $03
	add  a
	ld   c, a
	ld   a, [de]
	sub  c
	jr   nc, $51FB
	sub  a
	add  a
	add  a
	ld   c, a
	ld   b, $00
	ld   hl, $5272
	ld   a, e
	add  $12
	ld   e, a
	jr   L025237
L025209: db $1A;X
L02520A: db $E6;X
L02520B: db $07;X
L02520C: db $4F;X
L02520D: db $7B;X
L02520E: db $C6;X
L02520F: db $21;X
L025210: db $5F;X
L025211: db $1A;X
L025212: db $87;X
L025213: db $87;X
L025214: db $B1;X
L025215: db $87;X
L025216: db $87;X
L025217: db $4F;X
L025218: db $06;X
L025219: db $00;X
L02521A: db $21;X
L02521B: db $32;X
L02521C: db $53;X
L02521D: db $18;X
L02521E: db $14;X
L02521F: db $1A;X
L025220: db $E6;X
L025221: db $07;X
L025222: db $4F;X
L025223: db $7B;X
L025224: db $C6;X
L025225: db $21;X
L025226: db $5F;X
L025227: db $1A;X
L025228: db $87;X
L025229: db $87;X
L02522A: db $B1;X
L02522B: db $87;X
L02522C: db $87;X
L02522D: db $4F;X
L02522E: db $06;X
L02522F: db $00;X
L025230: db $21;X
L025231: db $D2;X
L025232: db $52;X
L025233: db $7B;X
L025234: db $C6;X
L025235: db $F1;X
L025236: db $5F;X
L025237:;R
	add  hl, bc
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ldi  a, [hl]
	ld   [de], a
	ret  
L025241: db $1A;X
L025242: db $E6;X
L025243: db $07;X
L025244: db $F5;X
L025245: db $7B;X
L025246: db $C6;X
L025247: db $21;X
L025248: db $5F;X
L025249: db $1A;X
L02524A: db $FE;X
L02524B: db $0D;X
L02524C: db $38;X
L02524D: db $02;X
L02524E: db $3E;X
L02524F: db $0C;X
L025250: db $4F;X
L025251: db $06;X
L025252: db $00;X
L025253: db $21;X
L025254: db $65;X
L025255: db $52;X
L025256: db $09;X
L025257: db $F1;X
L025258: db $B6;X
L025259: db $6F;X
L02525A: db $26;X
L02525B: db $00;X
L02525C: db $29;X
L02525D: db $29;X
L02525E: db $4D;X
L02525F: db $44;X
L025260: db $21;X
L025261: db $92;X
L025262: db $53;X
L025263: db $18;X
L025264: db $CE;X
L025265: db $00;X
L025266: db $08;X
L025267: db $10;X
L025268: db $18;X
L025269: db $20;X
L02526A: db $28;X
L02526B: db $30;X
L02526C: db $38;X
L02526D: db $40;X
L02526E: db $48;X
L02526F: db $48;X
L025270: db $48;X
L025271: db $50;X
L025272: db $00
L025273: db $04
L025274: db $20
L025275: db $00;X
L025276: db $00;X
L025277: db $04;X
L025278: db $20;X
L025279: db $00;X
L02527A: db $00;X
L02527B: db $05;X
L02527C: db $20;X
L02527D: db $00;X
L02527E: db $00;X
L02527F: db $05;X
L025280: db $20;X
L025281: db $00;X
L025282: db $00;X
L025283: db $06;X
L025284: db $20;X
L025285: db $00;X
L025286: db $00;X
L025287: db $08;X
L025288: db $20;X
L025289: db $00;X
L02528A: db $00;X
L02528B: db $0A;X
L02528C: db $20;X
L02528D: db $00;X
L02528E: db $00;X
L02528F: db $0C;X
L025290: db $28;X
L025291: db $00;X
L025292: db $00;X
L025293: db $10;X
L025294: db $28;X
L025295: db $00;X
L025296: db $00;X
L025297: db $20;X
L025298: db $30;X
L025299: db $00;X
L02529A: db $00;X
L02529B: db $30;X
L02529C: db $30;X
L02529D: db $00;X
L02529E: db $00;X
L02529F: db $40;X
L0252A0: db $38;X
L0252A1: db $00;X
L0252A2: db $00;X
L0252A3: db $48;X
L0252A4: db $38;X
L0252A5: db $00;X
L0252A6: db $00;X
L0252A7: db $50;X
L0252A8: db $40;X
L0252A9: db $00;X
L0252AA: db $00;X
L0252AB: db $60;X
L0252AC: db $40;X
L0252AD: db $00;X
L0252AE: db $00;X
L0252AF: db $80;X
L0252B0: db $FF;X
L0252B1: db $FF;X
L0252B2: db $00;X
L0252B3: db $80;X
L0252B4: db $FF;X
L0252B5: db $FF;X
L0252B6: db $00;X
L0252B7: db $80;X
L0252B8: db $04;X
L0252B9: db $00;X
L0252BA: db $00;X
L0252BB: db $80;X
L0252BC: db $04;X
L0252BD: db $00;X
L0252BE: db $00;X
L0252BF: db $80;X
L0252C0: db $04;X
L0252C1: db $00;X
L0252C2: db $00;X
L0252C3: db $A0;X
L0252C4: db $04;X
L0252C5: db $00;X
L0252C6: db $00;X
L0252C7: db $C0;X
L0252C8: db $04;X
L0252C9: db $00;X
L0252CA: db $00;X
L0252CB: db $E0;X
L0252CC: db $04;X
L0252CD: db $00;X
L0252CE: db $00;X
L0252CF: db $FE;X
L0252D0: db $FF;X
L0252D1: db $FF;X
L0252D2: db $00;X
L0252D3: db $10;X
L0252D4: db $20;X
L0252D5: db $00;X
L0252D6: db $00;X
L0252D7: db $16;X
L0252D8: db $20;X
L0252D9: db $00;X
L0252DA: db $00;X
L0252DB: db $1A;X
L0252DC: db $20;X
L0252DD: db $00;X
L0252DE: db $00;X
L0252DF: db $20;X
L0252E0: db $20;X
L0252E1: db $00;X
L0252E2: db $00;X
L0252E3: db $25;X
L0252E4: db $20;X
L0252E5: db $00;X
L0252E6: db $00;X
L0252E7: db $30;X
L0252E8: db $20;X
L0252E9: db $00;X
L0252EA: db $00;X
L0252EB: db $34;X
L0252EC: db $20;X
L0252ED: db $00;X
L0252EE: db $00;X
L0252EF: db $40;X
L0252F0: db $FF;X
L0252F1: db $FF;X
L0252F2: db $00;X
L0252F3: db $10;X
L0252F4: db $20;X
L0252F5: db $00;X
L0252F6: db $00;X
L0252F7: db $16;X
L0252F8: db $20;X
L0252F9: db $00;X
L0252FA: db $00;X
L0252FB: db $1A;X
L0252FC: db $20;X
L0252FD: db $00;X
L0252FE: db $00;X
L0252FF: db $20;X
L025300: db $20;X
L025301: db $00;X
L025302: db $00;X
L025303: db $25;X
L025304: db $20;X
L025305: db $00;X
L025306: db $00;X
L025307: db $30;X
L025308: db $20;X
L025309: db $00;X
L02530A: db $00;X
L02530B: db $34;X
L02530C: db $20;X
L02530D: db $00;X
L02530E: db $00;X
L02530F: db $40;X
L025310: db $FF;X
L025311: db $FF;X
L025312: db $00;X
L025313: db $20;X
L025314: db $20;X
L025315: db $00;X
L025316: db $00;X
L025317: db $25;X
L025318: db $20;X
L025319: db $00;X
L02531A: db $00;X
L02531B: db $30;X
L02531C: db $20;X
L02531D: db $00;X
L02531E: db $00;X
L02531F: db $34;X
L025320: db $20;X
L025321: db $00;X
L025322: db $00;X
L025323: db $40;X
L025324: db $20;X
L025325: db $00;X
L025326: db $00;X
L025327: db $60;X
L025328: db $20;X
L025329: db $00;X
L02532A: db $00;X
L02532B: db $80;X
L02532C: db $FF;X
L02532D: db $FF;X
L02532E: db $00;X
L02532F: db $80;X
L025330: db $FF;X
L025331: db $FF;X
L025332: db $00;X
L025333: db $04;X
L025334: db $C0;X
L025335: db $00;X
L025336: db $00;X
L025337: db $06;X
L025338: db $C0;X
L025339: db $00;X
L02533A: db $00;X
L02533B: db $08;X
L02533C: db $C0;X
L02533D: db $00;X
L02533E: db $00;X
L02533F: db $0A;X
L025340: db $C0;X
L025341: db $00;X
L025342: db $00;X
L025343: db $0C;X
L025344: db $C0;X
L025345: db $00;X
L025346: db $00;X
L025347: db $0E;X
L025348: db $C0;X
L025349: db $00;X
L02534A: db $00;X
L02534B: db $0F;X
L02534C: db $C0;X
L02534D: db $00;X
L02534E: db $00;X
L02534F: db $10;X
L025350: db $FF;X
L025351: db $FF;X
L025352: db $00;X
L025353: db $08;X
L025354: db $80;X
L025355: db $00;X
L025356: db $00;X
L025357: db $0C;X
L025358: db $80;X
L025359: db $00;X
L02535A: db $00;X
L02535B: db $10;X
L02535C: db $80;X
L02535D: db $00;X
L02535E: db $00;X
L02535F: db $12;X
L025360: db $80;X
L025361: db $00;X
L025362: db $00;X
L025363: db $14;X
L025364: db $80;X
L025365: db $00;X
L025366: db $00;X
L025367: db $16;X
L025368: db $80;X
L025369: db $00;X
L02536A: db $00;X
L02536B: db $1A;X
L02536C: db $80;X
L02536D: db $00;X
L02536E: db $00;X
L02536F: db $20;X
L025370: db $FF;X
L025371: db $FF;X
L025372: db $00;X
L025373: db $10;X
L025374: db $80;X
L025375: db $00;X
L025376: db $00;X
L025377: db $16;X
L025378: db $80;X
L025379: db $00;X
L02537A: db $00;X
L02537B: db $1A;X
L02537C: db $80;X
L02537D: db $00;X
L02537E: db $00;X
L02537F: db $20;X
L025380: db $80;X
L025381: db $00;X
L025382: db $00;X
L025383: db $25;X
L025384: db $80;X
L025385: db $00;X
L025386: db $00;X
L025387: db $30;X
L025388: db $80;X
L025389: db $00;X
L02538A: db $00;X
L02538B: db $34;X
L02538C: db $80;X
L02538D: db $00;X
L02538E: db $00;X
L02538F: db $40;X
L025390: db $FF;X
L025391: db $FF;X
L025392: db $00;X
L025393: db $08;X
L025394: db $04;X
L025395: db $00;X
L025396: db $00;X
L025397: db $08;X
L025398: db $04;X
L025399: db $00;X
L02539A: db $00;X
L02539B: db $0B;X
L02539C: db $04;X
L02539D: db $00;X
L02539E: db $00;X
L02539F: db $0B;X
L0253A0: db $04;X
L0253A1: db $00;X
L0253A2: db $00;X
L0253A3: db $0B;X
L0253A4: db $04;X
L0253A5: db $00;X
L0253A6: db $00;X
L0253A7: db $10;X
L0253A8: db $04;X
L0253A9: db $00;X
L0253AA: db $00;X
L0253AB: db $10;X
L0253AC: db $04;X
L0253AD: db $00;X
L0253AE: db $00;X
L0253AF: db $10;X
L0253B0: db $04;X
L0253B1: db $00;X
L0253B2: db $00;X
L0253B3: db $0B;X
L0253B4: db $04;X
L0253B5: db $00;X
L0253B6: db $00;X
L0253B7: db $0B;X
L0253B8: db $04;X
L0253B9: db $00;X
L0253BA: db $00;X
L0253BB: db $0B;X
L0253BC: db $04;X
L0253BD: db $00;X
L0253BE: db $00;X
L0253BF: db $0C;X
L0253C0: db $04;X
L0253C1: db $00;X
L0253C2: db $00;X
L0253C3: db $0C;X
L0253C4: db $04;X
L0253C5: db $00;X
L0253C6: db $00;X
L0253C7: db $0D;X
L0253C8: db $04;X
L0253C9: db $00;X
L0253CA: db $00;X
L0253CB: db $10;X
L0253CC: db $04;X
L0253CD: db $00;X
L0253CE: db $00;X
L0253CF: db $10;X
L0253D0: db $04;X
L0253D1: db $00;X
L0253D2: db $00;X
L0253D3: db $10;X
L0253D4: db $04;X
L0253D5: db $00;X
L0253D6: db $00;X
L0253D7: db $16;X
L0253D8: db $04;X
L0253D9: db $00;X
L0253DA: db $00;X
L0253DB: db $20;X
L0253DC: db $04;X
L0253DD: db $00;X
L0253DE: db $00;X
L0253DF: db $30;X
L0253E0: db $04;X
L0253E1: db $00;X
L0253E2: db $00;X
L0253E3: db $34;X
L0253E4: db $08;X
L0253E5: db $00;X
L0253E6: db $00;X
L0253E7: db $40;X
L0253E8: db $08;X
L0253E9: db $00;X
L0253EA: db $00;X
L0253EB: db $60;X
L0253EC: db $08;X
L0253ED: db $00;X
L0253EE: db $00;X
L0253EF: db $60;X
L0253F0: db $08;X
L0253F1: db $00;X
L0253F2: db $00;X
L0253F3: db $20;X
L0253F4: db $04;X
L0253F5: db $00;X
L0253F6: db $00;X
L0253F7: db $20;X
L0253F8: db $04;X
L0253F9: db $00;X
L0253FA: db $00;X
L0253FB: db $30;X
L0253FC: db $04;X
L0253FD: db $00;X
L0253FE: db $00;X
L0253FF: db $30;X
L025400: db $04;X
L025401: db $00;X
L025402: db $00;X
L025403: db $34;X
L025404: db $04;X
L025405: db $00;X
L025406: db $00;X
L025407: db $34;X
L025408: db $04;X
L025409: db $00;X
L02540A: db $00;X
L02540B: db $40;X
L02540C: db $04;X
L02540D: db $00;X
L02540E: db $00;X
L02540F: db $40;X
L025410: db $04;X
L025411: db $00;X
L025412: db $00;X
L025413: db $40;X
L025414: db $04;X
L025415: db $00;X
L025416: db $00;X
L025417: db $40;X
L025418: db $04;X
L025419: db $00;X
L02541A: db $00;X
L02541B: db $60;X
L02541C: db $04;X
L02541D: db $00;X
L02541E: db $00;X
L02541F: db $60;X
L025420: db $04;X
L025421: db $00;X
L025422: db $00;X
L025423: db $80;X
L025424: db $04;X
L025425: db $00;X
L025426: db $00;X
L025427: db $80;X
L025428: db $04;X
L025429: db $00;X
L02542A: db $00;X
L02542B: db $80;X
L02542C: db $04;X
L02542D: db $00;X
L02542E: db $00;X
L02542F: db $80;X
L025430: db $04;X
L025431: db $00;X
L025432: db $00;X
L025433: db $30;X
L025434: db $04;X
L025435: db $00;X
L025436: db $00;X
L025437: db $30;X
L025438: db $04;X
L025439: db $00;X
L02543A: db $00;X
L02543B: db $34;X
L02543C: db $04;X
L02543D: db $00;X
L02543E: db $00;X
L02543F: db $34;X
L025440: db $04;X
L025441: db $00;X
L025442: db $00;X
L025443: db $40;X
L025444: db $04;X
L025445: db $00;X
L025446: db $00;X
L025447: db $40;X
L025448: db $04;X
L025449: db $00;X
L02544A: db $00;X
L02544B: db $60;X
L02544C: db $04;X
L02544D: db $00;X
L02544E: db $00;X
L02544F: db $60;X
L025450: db $04;X
L025451: db $00;X
L025452: db $00;X
L025453: db $60;X
L025454: db $04;X
L025455: db $00;X
L025456: db $00;X
L025457: db $60;X
L025458: db $04;X
L025459: db $00;X
L02545A: db $00;X
L02545B: db $80;X
L02545C: db $04;X
L02545D: db $00;X
L02545E: db $00;X
L02545F: db $80;X
L025460: db $04;X
L025461: db $00;X
L025462: db $00;X
L025463: db $80;X
L025464: db $04;X
L025465: db $00;X
L025466: db $00;X
L025467: db $80;X
L025468: db $04;X
L025469: db $00;X
L02546A: db $00;X
L02546B: db $80;X
L02546C: db $04;X
L02546D: db $00;X
L02546E: db $00;X
L02546F: db $80;X
L025470: db $04;X
L025471: db $00;X
L025472: db $00;X
L025473: db $34;X
L025474: db $04;X
L025475: db $00;X
L025476: db $00;X
L025477: db $34;X
L025478: db $04;X
L025479: db $00;X
L02547A: db $00;X
L02547B: db $40;X
L02547C: db $04;X
L02547D: db $00;X
L02547E: db $00;X
L02547F: db $40;X
L025480: db $04;X
L025481: db $00;X
L025482: db $00;X
L025483: db $60;X
L025484: db $04;X
L025485: db $00;X
L025486: db $00;X
L025487: db $60;X
L025488: db $04;X
L025489: db $00;X
L02548A: db $00;X
L02548B: db $80;X
L02548C: db $04;X
L02548D: db $00;X
L02548E: db $00;X
L02548F: db $80;X
L025490: db $04;X
L025491: db $00;X
L025492: db $00;X
L025493: db $80;X
L025494: db $04;X
L025495: db $00;X
L025496: db $00;X
L025497: db $80;X
L025498: db $04;X
L025499: db $00;X
L02549A: db $00;X
L02549B: db $A0;X
L02549C: db $04;X
L02549D: db $00;X
L02549E: db $00;X
L02549F: db $A0;X
L0254A0: db $04;X
L0254A1: db $00;X
L0254A2: db $00;X
L0254A3: db $C0;X
L0254A4: db $04;X
L0254A5: db $00;X
L0254A6: db $00;X
L0254A7: db $C0;X
L0254A8: db $04;X
L0254A9: db $00;X
L0254AA: db $00;X
L0254AB: db $E0;X
L0254AC: db $04;X
L0254AD: db $00;X
L0254AE: db $00;X
L0254AF: db $E0;X
L0254B0: db $04;X
L0254B1: db $00;X
L0254B2: db $00;X
L0254B3: db $80;X
L0254B4: db $04;X
L0254B5: db $00;X
L0254B6: db $00;X
L0254B7: db $80;X
L0254B8: db $04;X
L0254B9: db $00;X
L0254BA: db $00;X
L0254BB: db $A0;X
L0254BC: db $04;X
L0254BD: db $00;X
L0254BE: db $00;X
L0254BF: db $A0;X
L0254C0: db $04;X
L0254C1: db $00;X
L0254C2: db $00;X
L0254C3: db $C0;X
L0254C4: db $04;X
L0254C5: db $00;X
L0254C6: db $00;X
L0254C7: db $C0;X
L0254C8: db $04;X
L0254C9: db $00;X
L0254CA: db $00;X
L0254CB: db $E0;X
L0254CC: db $04;X
L0254CD: db $00;X
L0254CE: db $00;X
L0254CF: db $FE;X
L0254D0: db $08;X
L0254D1: db $00;X
L0254D2: db $00;X
L0254D3: db $FE;X
L0254D4: db $04;X
L0254D5: db $00;X
L0254D6: db $00;X
L0254D7: db $FE;X
L0254D8: db $04;X
L0254D9: db $00;X
L0254DA: db $00;X
L0254DB: db $FE;X
L0254DC: db $04;X
L0254DD: db $00;X
L0254DE: db $00;X
L0254DF: db $FE;X
L0254E0: db $04;X
L0254E1: db $00;X
L0254E2: db $00;X
L0254E3: db $FE;X
L0254E4: db $04;X
L0254E5: db $00;X
L0254E6: db $00;X
L0254E7: db $FE;X
L0254E8: db $04;X
L0254E9: db $00;X
L0254EA: db $00;X
L0254EB: db $FE;X
L0254EC: db $04;X
L0254ED: db $00;X
L0254EE: db $00;X
L0254EF: db $FE;X
L0254F0: db $04;X
L0254F1: db $00;X
L0254F2:;I
	sub  a
	ld   [$C094], a
	ld   a, $02
	ld   [$C095], a
	ldh  a, [$FFC0]
	bit  7, a
	jp   nz, L001ECD
	and  $0F
	jp   z, L001ECD
L025507: db $FE;X
L025508: db $04;X
L025509: db $CA;X
L02550A: db $23;X
L02550B: db $55;X
L02550C: db $FE;X
L02550D: db $05;X
L02550E: db $CA;X
L02550F: db $23;X
L025510: db $55;X
L025511: db $FE;X
L025512: db $08;X
L025513: db $CA;X
L025514: db $2F;X
L025515: db $5B;X
L025516: db $FE;X
L025517: db $0C;X
L025518: db $CA;X
L025519: db $12;X
L02551A: db $58;X
L02551B: db $FE;X
L02551C: db $0E;X
L02551D: db $CA;X
L02551E: db $5F;X
L02551F: db $58;X
L025520: db $C3;X
L025521: db $5F;X
L025522: db $58;X
L025523: db $CD;X
L025524: db $F3;X
L025525: db $1E;X
L025526: db $FA;X
L025527: db $06;X
L025528: db $B0;X
L025529: db $A7;X
L02552A: db $28;X
L02552B: db $21;X
L02552C: db $F0;X
L02552D: db $A8;X
L02552E: db $E6;X
L02552F: db $03;X
L025530: db $28;X
L025531: db $0C;X
L025532: db $3E;X
L025533: db $02;X
L025534: db $EA;X
L025535: db $7A;X
L025536: db $C0;X
L025537: db $97;X
L025538: db $EA;X
L025539: db $7B;X
L02553A: db $C0;X
L02553B: db $C3;X
L02553C: db $CD;X
L02553D: db $1E;X
L02553E: db $F0;X
L02553F: db $A8;X
L025540: db $CB;X
L025541: db $5F;X
L025542: db $28;X
L025543: db $09;X
L025544: db $3E;X
L025545: db $2B;X
L025546: db $CD;X
L025547: db $4E;X
L025548: db $3B;X
L025549: db $3E;X
L02554A: db $01;X
L02554B: db $18;X
L02554C: db $E7;X
L02554D: db $FA;X
L02554E: db $B0;X
L02554F: db $C0;X
L025550: db $A7;X
L025551: db $C8;X
L025552: db $97;X
L025553: db $EA;X
L025554: db $D2;X
L025555: db $C0;X
L025556: db $EA;X
L025557: db $D3;X
L025558: db $C0;X
L025559: db $FA;X
L02555A: db $B0;X
L02555B: db $C0;X
L02555C: db $CB;X
L02555D: db $77;X
L02555E: db $28;X
L02555F: db $0B;X
L025560: db $FA;X
L025561: db $AB;X
L025562: db $C0;X
L025563: db $F6;X
L025564: db $40;X
L025565: db $EA;X
L025566: db $AA;X
L025567: db $C0;X
L025568: db $C3;X
L025569: db $1E;X
L02556A: db $56;X
L02556B: db $F0;X
L02556C: db $B1;X
L02556D: db $C6;X
L02556E: db $28;X
L02556F: db $5F;X
L025570: db $FA;X
L025571: db $B0;X
L025572: db $C0;X
L025573: db $E6;X
L025574: db $01;X
L025575: db $12;X
L025576: db $F6;X
L025577: db $40;X
L025578: db $EA;X
L025579: db $AA;X
L02557A: db $C0;X
L02557B: db $CD;X
L02557C: db $0E;X
L02557D: db $60;X
L02557E: db $F0;X
L02557F: db $C0;X
L025580: db $E6;X
L025581: db $0F;X
L025582: db $FE;X
L025583: db $05;X
L025584: db $20;X
L025585: db $56;X
L025586: db $FA;X
L025587: db $9C;X
L025588: db $C0;X
L025589: db $4F;X
L02558A: db $FA;X
L02558B: db $9D;X
L02558C: db $C0;X
L02558D: db $B9;X
L02558E: db $20;X
L02558F: db $4C;X
L025590: db $FA;X
L025591: db $09;X
L025592: db $B0;X
L025593: db $6F;X
L025594: db $26;X
L025595: db $00;X
L025596: db $29;X
L025597: db $29;X
L025598: db $29;X
L025599: db $29;X
L02559A: db $01;X
L02559B: db $00;X
L02559C: db $B2;X
L02559D: db $09;X
L02559E: db $7E;X
L02559F: db $FE;X
L0255A0: db $64;X
L0255A1: db $30;X
L0255A2: db $01;X
L0255A3: db $34;X
L0255A4: db $E5;X
L0255A5: db $2C;X
L0255A6: db $2C;X
L0255A7: db $2C;X
L0255A8: db $FA;X
L0255A9: db $B0;X
L0255AA: db $C0;X
L0255AB: db $EE;X
L0255AC: db $01;X
L0255AD: db $CB;X
L0255AE: db $3F;X
L0255AF: db $1E;X
L0255B0: db $0D;X
L0255B1: db $CB;X
L0255B2: db $16;X
L0255B3: db $23;X
L0255B4: db $1D;X
L0255B5: db $20;X
L0255B6: db $FA;X
L0255B7: db $2B;X
L0255B8: db $7E;X
L0255B9: db $E6;X
L0255BA: db $0F;X
L0255BB: db $77;X
L0255BC: db $E1;X
L0255BD: db $E5;X
L0255BE: db $2C;X
L0255BF: db $2C;X
L0255C0: db $2C;X
L0255C1: db $06;X
L0255C2: db $0D;X
L0255C3: db $0E;X
L0255C4: db $00;X
L0255C5: db $1E;X
L0255C6: db $08;X
L0255C7: db $2A;X
L0255C8: db $CB;X
L0255C9: db $3F;X
L0255CA: db $30;X
L0255CB: db $01;X
L0255CC: db $0C;X
L0255CD: db $1D;X
L0255CE: db $20;X
L0255CF: db $F8;X
L0255D0: db $05;X
L0255D1: db $20;X
L0255D2: db $F2;X
L0255D3: db $E1;X
L0255D4: db $2A;X
L0255D5: db $71;X
L0255D6: db $2C;X
L0255D7: db $91;X
L0255D8: db $77;X
L0255D9: db $CD;X
L0255DA: db $5E;X
L0255DB: db $0D;X
L0255DC: db $FA;X
L0255DD: db $06;X
L0255DE: db $B0;X
L0255DF: db $A7;X
L0255E0: db $28;X
L0255E1: db $0C;X
L0255E2: db $21;X
L0255E3: db $88;X
L0255E4: db $C0;X
L0255E5: db $3E;X
L0255E6: db $63;X
L0255E7: db $BE;X
L0255E8: db $28;X
L0255E9: db $1E;X
L0255EA: db $2C;X
L0255EB: db $BE;X
L0255EC: db $28;X
L0255ED: db $1A;X
L0255EE: db $F0;X
L0255EF: db $B1;X
L0255F0: db $C6;X
L0255F1: db $28;X
L0255F2: db $5F;X
L0255F3: db $1A;X
L0255F4: db $C6;X
L0255F5: db $88;X
L0255F6: db $6F;X
L0255F7: db $26;X
L0255F8: db $C0;X
L0255F9: db $34;X
L0255FA: db $7E;X
L0255FB: db $FE;X
L0255FC: db $64;X
L0255FD: db $38;X
L0255FE: db $09;X
L0255FF: db $97;X
L025600: db $EA;X
L025601: db $88;X
L025602: db $C0;X
L025603: db $EA;X
L025604: db $89;X
L025605: db $C0;X
L025606: db $36;X
L025607: db $01;X
L025608: db $1A;X
L025609: db $EE;X
L02560A: db $01;X
L02560B: db $C6;X
L02560C: db $8A;X
L02560D: db $6F;X
L02560E: db $26;X
L02560F: db $C0;X
L025610: db $35;X
L025611: db $20;X
L025612: db $0B;X
L025613: db $21;X
L025614: db $B1;X
L025615: db $C0;X
L025616: db $CB;X
L025617: db $E6;X
L025618: db $21;X
L025619: db $86;X
L02561A: db $58;X
L02561B: db $3E;X
L02561C: db $05;X
L02561D: db $C7;X
L02561E: db $CD;X
L02561F: db $ED;X
L025620: db $5E;X
L025621: db $CD;X
L025622: db $F3;X
L025623: db $1E;X
L025624: db $FA;X
L025625: db $B1;X
L025626: db $C0;X
L025627: db $E6;X
L025628: db $03;X
L025629: db $FE;X
L02562A: db $03;X
L02562B: db $C0;X
L02562C: db $F0;X
L02562D: db $C0;X
L02562E: db $E6;X
L02562F: db $0F;X
L025630: db $FE;X
L025631: db $0E;X
L025632: db $30;X
L025633: db $0F;X
L025634: db $FA;X
L025635: db $AB;X
L025636: db $C0;X
L025637: db $CB;X
L025638: db $77;X
L025639: db $C8;X
L02563A: db $CB;X
L02563B: db $B7;X
L02563C: db $EA;X
L02563D: db $AB;X
L02563E: db $C0;X
L02563F: db $97;X
L025640: db $EA;X
L025641: db $AA;X
L025642: db $C0;X
L025643: db $CD;X
L025644: db $EB;X
L025645: db $45;X
L025646: db $3E;X
L025647: db $01;X
L025648: db $EA;X
L025649: db $AE;X
L02564A: db $C0;X
L02564B: db $CD;X
L02564C: db $1E;X
L02564D: db $5E;X
L02564E: db $FA;X
L02564F: db $B1;X
L025650: db $C0;X
L025651: db $CB;X
L025652: db $F7;X
L025653: db $EA;X
L025654: db $B1;X
L025655: db $C0;X
L025656: db $FA;X
L025657: db $1A;X
L025658: db $C0;X
L025659: db $A7;X
L02565A: db $28;X
L02565B: db $11;X
L02565C: db $F0;X
L02565D: db $B1;X
L02565E: db $C6;X
L02565F: db $28;X
L025660: db $5F;X
L025661: db $3E;X
L025662: db $01;X
L025663: db $12;X
L025664: db $CD;X
L025665: db $26;X
L025666: db $1F;X
L025667: db $FA;X
L025668: db $B1;X
L025669: db $C0;X
L02566A: db $CB;X
L02566B: db $7F;X
L02566C: db $C8;X
L02566D: db $FA;X
L02566E: db $B1;X
L02566F: db $C0;X
L025670: db $CB;X
L025671: db $67;X
L025672: db $20;X
L025673: db $49;X
L025674: db $97;X
L025675: db $EA;X
L025676: db $7A;X
L025677: db $C0;X
L025678: db $CD;X
L025679: db $F3;X
L02567A: db $1E;X
L02567B: db $FA;X
L02567C: db $1A;X
L02567D: db $C0;X
L02567E: db $A7;X
L02567F: db $28;X
L025680: db $17;X
L025681: db $FA;X
L025682: db $89;X
L025683: db $C1;X
L025684: db $FE;X
L025685: db $02;X
L025686: db $30;X
L025687: db $10;X
L025688: db $06;X
L025689: db $00;X
L02568A: db $CD;X
L02568B: db $5D;X
L02568C: db $23;X
L02568D: db $01;X
L02568E: db $0A;X
L02568F: db $00;X
L025690: db $CD;X
L025691: db $E8;X
L025692: db $1E;X
L025693: db $CD;X
L025694: db $F3;X
L025695: db $1E;X
L025696: db $18;X
L025697: db $1E;X
L025698: db $FA;X
L025699: db $B1;X
L02569A: db $C0;X
L02569B: db $E6;X
L02569C: db $03;X
L02569D: db $FE;X
L02569E: db $03;X
L02569F: db $C8;X
L0256A0: db $CD;X
L0256A1: db $F3;X
L0256A2: db $1E;X
L0256A3: db $FA;X
L0256A4: db $1A;X
L0256A5: db $C0;X
L0256A6: db $A7;X
L0256A7: db $28;X
L0256A8: db $0D;X
L0256A9: db $06;X
L0256AA: db $00;X
L0256AB: db $CD;X
L0256AC: db $5D;X
L0256AD: db $23;X
L0256AE: db $CD;X
L0256AF: db $26;X
L0256B0: db $1F;X
L0256B1: db $FA;X
L0256B2: db $89;X
L0256B3: db $C1;X
L0256B4: db $A7;X
L0256B5: db $C0;X
L0256B6: db $97;X
L0256B7: db $EA;X
L0256B8: db $7B;X
L0256B9: db $C0;X
L0256BA: db $C3;X
L0256BB: db $CD;X
L0256BC: db $1E;X
L0256BD: db $CD;X
L0256BE: db $8D;X
L0256BF: db $5E;X
L0256C0: db $97;X
L0256C1: db $EA;X
L0256C2: db $B2;X
L0256C3: db $C0;X
L0256C4: db $F0;X
L0256C5: db $B1;X
L0256C6: db $C6;X
L0256C7: db $26;X
L0256C8: db $6F;X
L0256C9: db $62;X
L0256CA: db $36;X
L0256CB: db $40;X
L0256CC: db $2C;X
L0256CD: db $36;X
L0256CE: db $05;X
L0256CF: db $01;X
L0256D0: db $E4;X
L0256D1: db $57;X
L0256D2: db $CD;X
L0256D3: db $80;X
L0256D4: db $07;X
L0256D5: db $CD;X
L0256D6: db $F3;X
L0256D7: db $1E;X
L0256D8: db $FA;X
L0256D9: db $B1;X
L0256DA: db $C0;X
L0256DB: db $E6;X
L0256DC: db $03;X
L0256DD: db $FE;X
L0256DE: db $03;X
L0256DF: db $20;X
L0256E0: db $79;X
L0256E1: db $FA;X
L0256E2: db $1A;X
L0256E3: db $C0;X
L0256E4: db $A7;X
L0256E5: db $28;X
L0256E6: db $1A;X
L0256E7: db $FA;X
L0256E8: db $89;X
L0256E9: db $C1;X
L0256EA: db $FE;X
L0256EB: db $01;X
L0256EC: db $CA;X
L0256ED: db $71;X
L0256EE: db $57;X
L0256EF: db $30;X
L0256F0: db $10;X
L0256F1: db $FA;X
L0256F2: db $B1;X
L0256F3: db $C0;X
L0256F4: db $E6;X
L0256F5: db $FC;X
L0256F6: db $EA;X
L0256F7: db $B1;X
L0256F8: db $C0;X
L0256F9: db $06;X
L0256FA: db $00;X
L0256FB: db $CD;X
L0256FC: db $5D;X
L0256FD: db $23;X
L0256FE: db $C3;X
L0256FF: db $90;X
L025700: db $57;X
L025701: db $7B;X
L025702: db $C6;X
L025703: db $26;X
L025704: db $6F;X
L025705: db $62;X
L025706: db $4E;X
L025707: db $2C;X
L025708: db $46;X
L025709: db $0B;X
L02570A: db $70;X
L02570B: db $2D;X
L02570C: db $71;X
L02570D: db $79;X
L02570E: db $B0;X
L02570F: db $CA;X
L025710: db $A6;X
L025711: db $57;X
L025712: db $FA;X
L025713: db $06;X
L025714: db $B0;X
L025715: db $A7;X
L025716: db $28;X
L025717: db $05;X
L025718: db $78;X
L025719: db $FE;X
L02571A: db $04;X
L02571B: db $38;X
L02571C: db $30;X
L02571D: db $79;X
L02571E: db $E6;X
L02571F: db $3F;X
L025720: db $FE;X
L025721: db $3F;X
L025722: db $20;X
L025723: db $18;X
L025724: db $CB;X
L025725: db $30;X
L025726: db $CB;X
L025727: db $31;X
L025728: db $79;X
L025729: db $E6;X
L02572A: db $0F;X
L02572B: db $4F;X
L02572C: db $78;X
L02572D: db $E6;X
L02572E: db $F0;X
L02572F: db $B1;X
L025730: db $0F;X
L025731: db $0F;X
L025732: db $E6;X
L025733: db $3F;X
L025734: db $E5;X
L025735: db $21;X
L025736: db $08;X
L025737: db $DE;X
L025738: db $CD;X
L025739: db $2C;X
L02573A: db $0A;X
L02573B: db $E1;X
L02573C: db $F0;X
L02573D: db $A8;X
L02573E: db $E6;X
L02573F: db $03;X
L025740: db $C8;X
L025741: db $3E;X
L025742: db $2A;X
L025743: db $CD;X
L025744: db $4E;X
L025745: db $3B;X
L025746: db $7E;X
L025747: db $E6;X
L025748: db $C0;X
L025749: db $F6;X
L02574A: db $01;X
L02574B: db $77;X
L02574C: db $C9;X
L02574D: db $3E;X
L02574E: db $2B;X
L02574F: db $CD;X
L025750: db $4E;X
L025751: db $3B;X
L025752: db $FA;X
L025753: db $B1;X
L025754: db $C0;X
L025755: db $E6;X
L025756: db $FC;X
L025757: db $EA;X
L025758: db $B1;X
L025759: db $C0;X
L02575A: db $FA;X
L02575B: db $1A;X
L02575C: db $C0;X
L02575D: db $A7;X
L02575E: db $28;X
L02575F: db $30;X
L025760: db $06;X
L025761: db $00;X
L025762: db $CD;X
L025763: db $5D;X
L025764: db $23;X
L025765: db $CD;X
L025766: db $26;X
L025767: db $1F;X
L025768: db $FA;X
L025769: db $89;X
L02576A: db $C1;X
L02576B: db $FE;X
L02576C: db $02;X
L02576D: db $D0;X
L02576E: db $A7;X
L02576F: db $28;X
L025770: db $1F;X
L025771: db $06;X
L025772: db $01;X
L025773: db $CD;X
L025774: db $5D;X
L025775: db $23;X
L025776: db $FA;X
L025777: db $B1;X
L025778: db $C0;X
L025779: db $F6;X
L02577A: db $20;X
L02577B: db $EA;X
L02577C: db $B1;X
L02577D: db $C0;X
L02577E: db $CD;X
L02577F: db $EB;X
L025780: db $57;X
L025781: db $97;X
L025782: db $EA;X
L025783: db $1A;X
L025784: db $C0;X
L025785: db $01;X
L025786: db $1E;X
L025787: db $00;X
L025788: db $CD;X
L025789: db $E8;X
L02578A: db $1E;X
L02578B: db $CD;X
L02578C: db $F3;X
L02578D: db $1E;X
L02578E: db $18;X
L02578F: db $39;X
L025790: db $CD;X
L025791: db $EB;X
L025792: db $57;X
L025793: db $CD;X
L025794: db $F3;X
L025795: db $1E;X
L025796: db $97;X
L025797: db $EA;X
L025798: db $7A;X
L025799: db $C0;X
L02579A: db $EA;X
L02579B: db $7B;X
L02579C: db $C0;X
L02579D: db $21;X
L02579E: db $CC;X
L02579F: db $57;X
L0257A0: db $3E;X
L0257A1: db $05;X
L0257A2: db $C7;X
L0257A3: db $C3;X
L0257A4: db $CD;X
L0257A5: db $1E;X
L0257A6: db $FA;X
L0257A7: db $B1;X
L0257A8: db $C0;X
L0257A9: db $F6;X
L0257AA: db $20;X
L0257AB: db $EA;X
L0257AC: db $B1;X
L0257AD: db $C0;X
L0257AE: db $CD;X
L0257AF: db $EB;X
L0257B0: db $57;X
L0257B1: db $FA;X
L0257B2: db $1A;X
L0257B3: db $C0;X
L0257B4: db $A7;X
L0257B5: db $28;X
L0257B6: db $12;X
L0257B7: db $06;X
L0257B8: db $01;X
L0257B9: db $CD;X
L0257BA: db $5D;X
L0257BB: db $23;X
L0257BC: db $CD;X
L0257BD: db $26;X
L0257BE: db $1F;X
L0257BF: db $FA;X
L0257C0: db $89;X
L0257C1: db $C1;X
L0257C2: db $FE;X
L0257C3: db $01;X
L0257C4: db $C0;X
L0257C5: db $97;X
L0257C6: db $EA;X
L0257C7: db $1A;X
L0257C8: db $C0;X
L0257C9: db $01;X
L0257CA: db $20;X
L0257CB: db $F3;X
L0257CC: db $CD;X
L0257CD: db $83;X
L0257CE: db $3B;X
L0257CF: db $01;X
L0257D0: db $3C;X
L0257D1: db $00;X
L0257D2: db $CD;X
L0257D3: db $E8;X
L0257D4: db $1E;X
L0257D5: db $CD;X
L0257D6: db $13;X
L0257D7: db $1F;X
L0257D8: db $3E;X
L0257D9: db $01;X
L0257DA: db $EA;X
L0257DB: db $7A;X
L0257DC: db $C0;X
L0257DD: db $97;X
L0257DE: db $EA;X
L0257DF: db $7B;X
L0257E0: db $C0;X
L0257E1: db $C3;X
L0257E2: db $CD;X
L0257E3: db $1E;X
L0257E4: db $E8;X
L0257E5: db $DD;X
L0257E6: db $54;X
L0257E7: db $49;X
L0257E8: db $4D;X
L0257E9: db $45;X
L0257EA: db $FF;X
L0257EB: db $F0;X
L0257EC: db $C0;X
L0257ED: db $E6;X
L0257EE: db $0F;X
L0257EF: db $FE;X
L0257F0: db $0E;X
L0257F1: db $01;X
L0257F2: db $FE;X
L0257F3: db $57;X
L0257F4: db $D2;X
L0257F5: db $80;X
L0257F6: db $07;X
L0257F7: db $21;X
L0257F8: db $BA;X
L0257F9: db $4C;X
L0257FA: db $3E;X
L0257FB: db $04;X
L0257FC: db $C7;X
L0257FD: db $C9;X
L0257FE: db $C8;X
L0257FF: db $DD;X
L025800: db $5F;X
L025801: db $5F;X
L025802: db $5F;X
L025803: db $5F;X
L025804: db $5F;X
L025805: db $FE;X
L025806: db $E8;X
L025807: db $DD;X
L025808: db $20;X
L025809: db $20;X
L02580A: db $20;X
L02580B: db $20;X
L02580C: db $FE;X
L02580D: db $09;X
L02580E: db $DE;X
L02580F: db $20;X
L025810: db $20;X
L025811: db $FF;X
L025812: db $97;X
L025813: db $EA;X
L025814: db $F4;X
L025815: db $C0;X
L025816: db $EA;X
L025817: db $F5;X
L025818: db $C0;X
L025819: db $EA;X
L02581A: db $F0;X
L02581B: db $C0;X
L02581C: db $EA;X
L02581D: db $F6;X
L02581E: db $C0;X
L02581F: db $CD;X
L025820: db $26;X
L025821: db $1F;X
L025822: db $FA;X
L025823: db $D2;X
L025824: db $C0;X
L025825: db $A7;X
L025826: db $C8;X
L025827: db $CD;X
L025828: db $21;X
L025829: db $59;X
L02582A: db $CD;X
L02582B: db $79;X
L02582C: db $59;X
L02582D: db $CD;X
L02582E: db $26;X
L02582F: db $1F;X
L025830: db $FA;X
L025831: db $D2;X
L025832: db $C0;X
L025833: db $CB;X
L025834: db $7F;X
L025835: db $C0;X
L025836: db $21;X
L025837: db $13;X
L025838: db $C1;X
L025839: db $35;X
L02583A: db $C0;X
L02583B: db $36;X
L02583C: db $3C;X
L02583D: db $2B;X
L02583E: db $7E;X
L02583F: db $A7;X
L025840: db $C8;X
L025841: db $35;X
L025842: db $C0;X
L025843: db $21;X
L025844: db $16;X
L025845: db $C1;X
L025846: db $2A;X
L025847: db $BE;X
L025848: db $C8;X
L025849: db $2B;X
L02584A: db $34;X
L02584B: db $FA;X
L02584C: db $14;X
L02584D: db $C1;X
L02584E: db $EA;X
L02584F: db $12;X
L025850: db $C1;X
L025851: db $3E;X
L025852: db $51;X
L025853: db $CD;X
L025854: db $4E;X
L025855: db $3B;X
L025856: db $FA;X
L025857: db $16;X
L025858: db $C1;X
L025859: db $21;X
L02585A: db $B0;X
L02585B: db $DD;X
L02585C: db $C3;X
L02585D: db $22;X
L02585E: db $0A;X
L02585F: db $97;X
L025860: db $EA;X
L025861: db $F6;X
L025862: db $C0;X
L025863: db $21;X
L025864: db $23;X
L025865: db $DC;X
L025866: db $01;X
L025867: db $2F;X
L025868: db $DC;X
L025869: db $97;X
L02586A: db $1E;X
L02586B: db $05;X
L02586C: db $22;X
L02586D: db $02;X
L02586E: db $0C;X
L02586F: db $1D;X
L025870: db $20;X
L025871: db $FA;X
L025872: db $21;X
L025873: db $23;X
L025874: db $DC;X
L025875: db $3E;X
L025876: db $05;X
L025877: db $CD;X
L025878: db $A2;X
L025879: db $06;X
L02587A: db $21;X
L02587B: db $2F;X
L02587C: db $DC;X
L02587D: db $3E;X
L02587E: db $05;X
L02587F: db $CD;X
L025880: db $A2;X
L025881: db $06;X
L025882: db $FA;X
L025883: db $1A;X
L025884: db $C0;X
L025885: db $A7;X
L025886: db $28;X
L025887: db $1E;X
L025888: db $CD;X
L025889: db $26;X
L02588A: db $1F;X
L02588B: db $21;X
L02588C: db $47;X
L02588D: db $D4;X
L02588E: db $CB;X
L02588F: db $56;X
L025890: db $C8;X
L025891: db $21;X
L025892: db $87;X
L025893: db $D4;X
L025894: db $CB;X
L025895: db $56;X
L025896: db $C8;X
L025897: db $FA;X
L025898: db $80;X
L025899: db $C1;X
L02589A: db $A7;X
L02589B: db $20;X
L02589C: db $09;X
L02589D: db $CD;X
L02589E: db $26;X
L02589F: db $1F;X
L0258A0: db $CD;X
L0258A1: db $EC;X
L0258A2: db $22;X
L0258A3: db $FE;X
L0258A4: db $08;X
L0258A5: db $D8;X
L0258A6: db $FA;X
L0258A7: db $1A;X
L0258A8: db $C0;X
L0258A9: db $A7;X
L0258AA: db $28;X
L0258AB: db $16;X
L0258AC: db $FA;X
L0258AD: db $80;X
L0258AE: db $C1;X
L0258AF: db $A7;X
L0258B0: db $28;X
L0258B1: db $10;X
L0258B2: db $CD;X
L0258B3: db $26;X
L0258B4: db $1F;X
L0258B5: db $FA;X
L0258B6: db $98;X
L0258B7: db $C1;X
L0258B8: db $A7;X
L0258B9: db $C8;X
L0258BA: db $CD;X
L0258BB: db $10;X
L0258BC: db $59;X
L0258BD: db $CD;X
L0258BE: db $E6;X
L0258BF: db $59;X
L0258C0: db $18;X
L0258C1: db $06;X
L0258C2: db $CD;X
L0258C3: db $21;X
L0258C4: db $59;X
L0258C5: db $CD;X
L0258C6: db $79;X
L0258C7: db $59;X
L0258C8: db $21;X
L0258C9: db $47;X
L0258CA: db $D4;X
L0258CB: db $CB;X
L0258CC: db $86;X
L0258CD: db $CB;X
L0258CE: db $96;X
L0258CF: db $21;X
L0258D0: db $87;X
L0258D1: db $D4;X
L0258D2: db $CB;X
L0258D3: db $86;X
L0258D4: db $CB;X
L0258D5: db $96;X
L0258D6: db $CD;X
L0258D7: db $26;X
L0258D8: db $1F;X
L0258D9: db $FA;X
L0258DA: db $B0;X
L0258DB: db $C0;X
L0258DC: db $A7;X
L0258DD: db $C8;X
L0258DE: db $21;X
L0258DF: db $41;X
L0258E0: db $4D;X
L0258E1: db $3E;X
L0258E2: db $04;X
L0258E3: db $C7;X
L0258E4: db $CD;X
L0258E5: db $26;X
L0258E6: db $1F;X
L0258E7: db $21;X
L0258E8: db $18;X
L0258E9: db $C4;X
L0258EA: db $1E;X
L0258EB: db $04;X
L0258EC: db $CB;X
L0258ED: db $7E;X
L0258EE: db $C0;X
L0258EF: db $2C;X
L0258F0: db $2C;X
L0258F1: db $1D;X
L0258F2: db $20;X
L0258F3: db $F8;X
L0258F4: db $2E;X
L0258F5: db $38;X
L0258F6: db $1E;X
L0258F7: db $03;X
L0258F8: db $CB;X
L0258F9: db $7E;X
L0258FA: db $C0;X
L0258FB: db $2C;X
L0258FC: db $2C;X
L0258FD: db $1D;X
L0258FE: db $20;X
L0258FF: db $F8;X
L025900: db $3E;X
L025901: db $01;X
L025902: db $EA;X
L025903: db $8A;X
L025904: db $C0;X
L025905: db $EA;X
L025906: db $8B;X
L025907: db $C0;X
L025908: db $21;X
L025909: db $B1;X
L02590A: db $C0;X
L02590B: db $CB;X
L02590C: db $E6;X
L02590D: db $C3;X
L02590E: db $52;X
L02590F: db $55;X
L025910: db $FA;X
L025911: db $98;X
L025912: db $C1;X
L025913: db $EA;X
L025914: db $FA;X
L025915: db $C0;X
L025916: db $FA;X
L025917: db $99;X
L025918: db $C1;X
L025919: db $EA;X
L02591A: db $FB;X
L02591B: db $C0;X
L02591C: db $97;X
L02591D: db $EA;X
L02591E: db $98;X
L02591F: db $C1;X
L025920: db $C9;X
L025921: db $21;X
L025922: db $5A;X
L025923: db $61;X
L025924: db $3E;X
L025925: db $05;X
L025926: db $C7;X
L025927: db $78;X
L025928: db $FE;X
L025929: db $04;X
L02592A: db $20;X
L02592B: db $03;X
L02592C: db $3E;X
L02592D: db $03;X
L02592E: db $4F;X
L02592F: db $EA;X
L025930: db $F7;X
L025931: db $C0;X
L025932: db $79;X
L025933: db $EA;X
L025934: db $F8;X
L025935: db $C0;X
L025936: db $7B;X
L025937: db $EA;X
L025938: db $F9;X
L025939: db $C0;X
L02593A: db $21;X
L02593B: db $5A;X
L02593C: db $61;X
L02593D: db $3E;X
L02593E: db $05;X
L02593F: db $C7;X
L025940: db $78;X
L025941: db $EA;X
L025942: db $FA;X
L025943: db $C0;X
L025944: db $79;X
L025945: db $EA;X
L025946: db $FB;X
L025947: db $C0;X
L025948: db $7B;X
L025949: db $EA;X
L02594A: db $FC;X
L02594B: db $C0;X
L02594C: db $FA;X
L02594D: db $1A;X
L02594E: db $C0;X
L02594F: db $A7;X
L025950: db $C8;X
L025951: db $FA;X
L025952: db $80;X
L025953: db $C1;X
L025954: db $A7;X
L025955: db $C0;X
L025956: db $CD;X
L025957: db $EC;X
L025958: db $22;X
L025959: db $3E;X
L02595A: db $03;X
L02595B: db $2C;X
L02595C: db $77;X
L02595D: db $2C;X
L02595E: db $FA;X
L02595F: db $F7;X
L025960: db $C0;X
L025961: db $2C;X
L025962: db $77;X
L025963: db $2C;X
L025964: db $FA;X
L025965: db $F8;X
L025966: db $C0;X
L025967: db $2C;X
L025968: db $77;X
L025969: db $2C;X
L02596A: db $FA;X
L02596B: db $FA;X
L02596C: db $C0;X
L02596D: db $2C;X
L02596E: db $77;X
L02596F: db $2C;X
L025970: db $FA;X
L025971: db $FB;X
L025972: db $C0;X
L025973: db $2C;X
L025974: db $22;X
L025975: db $7D;X
L025976: db $E0;X
L025977: db $CE;X
L025978: db $C9;X
L025979: db $01;X
L02597A: db $F0;X
L02597B: db $C0;X
L02597C: db $21;X
L02597D: db $F7;X
L02597E: db $C0;X
L02597F: db $2A;X
L025980: db $02;X
L025981: db $0C;X
L025982: db $2A;X
L025983: db $02;X
L025984: db $2A;X
L025985: db $EA;X
L025986: db $12;X
L025987: db $C1;X
L025988: db $EA;X
L025989: db $14;X
L02598A: db $C1;X
L02598B: db $01;X
L02598C: db $F7;X
L02598D: db $C0;X
L02598E: db $2A;X
L02598F: db $02;X
L025990: db $0C;X
L025991: db $2A;X
L025992: db $02;X
L025993: db $0C;X
L025994: db $2A;X
L025995: db $02;X
L025996: db $FA;X
L025997: db $1A;X
L025998: db $C0;X
L025999: db $A7;X
L02599A: db $20;X
L02599B: db $14;X
L02599C: db $21;X
L02599D: db $5A;X
L02599E: db $61;X
L02599F: db $3E;X
L0259A0: db $05;X
L0259A1: db $C7;X
L0259A2: db $78;X
L0259A3: db $EA;X
L0259A4: db $FA;X
L0259A5: db $C0;X
L0259A6: db $79;X
L0259A7: db $EA;X
L0259A8: db $FB;X
L0259A9: db $C0;X
L0259AA: db $7B;X
L0259AB: db $EA;X
L0259AC: db $FC;X
L0259AD: db $C0;X
L0259AE: db $18;X
L0259AF: db $2F;X
L0259B0: db $FA;X
L0259B1: db $80;X
L0259B2: db $C1;X
L0259B3: db $A7;X
L0259B4: db $20;X
L0259B5: db $29;X
L0259B6: db $21;X
L0259B7: db $5A;X
L0259B8: db $61;X
L0259B9: db $3E;X
L0259BA: db $05;X
L0259BB: db $C7;X
L0259BC: db $78;X
L0259BD: db $EA;X
L0259BE: db $FA;X
L0259BF: db $C0;X
L0259C0: db $79;X
L0259C1: db $EA;X
L0259C2: db $FB;X
L0259C3: db $C0;X
L0259C4: db $CD;X
L0259C5: db $EC;X
L0259C6: db $22;X
L0259C7: db $FE;X
L0259C8: db $03;X
L0259C9: db $DA;X
L0259CA: db $2C;X
L0259CB: db $23;X
L0259CC: db $3E;X
L0259CD: db $02;X
L0259CE: db $2C;X
L0259CF: db $77;X
L0259D0: db $2C;X
L0259D1: db $FA;X
L0259D2: db $FA;X
L0259D3: db $C0;X
L0259D4: db $2C;X
L0259D5: db $77;X
L0259D6: db $2C;X
L0259D7: db $FA;X
L0259D8: db $FB;X
L0259D9: db $C0;X
L0259DA: db $2C;X
L0259DB: db $22;X
L0259DC: db $7D;X
L0259DD: db $E0;X
L0259DE: db $CE;X
L0259DF: db $97;X
L0259E0: db $EA;X
L0259E1: db $F4;X
L0259E2: db $C0;X
L0259E3: db $EA;X
L0259E4: db $F5;X
L0259E5: db $C0;X
L0259E6: db $21;X
L0259E7: db $F0;X
L0259E8: db $C0;X
L0259E9: db $01;X
L0259EA: db $6A;X
L0259EB: db $DD;X
L0259EC: db $1E;X
L0259ED: db $00;X
L0259EE: db $CD;X
L0259EF: db $F9;X
L0259F0: db $59;X
L0259F1: db $21;X
L0259F2: db $F7;X
L0259F3: db $C0;X
L0259F4: db $01;X
L0259F5: db $EA;X
L0259F6: db $DD;X
L0259F7: db $1E;X
L0259F8: db $01;X
L0259F9: db $7E;X
L0259FA: db $E5;X
L0259FB: db $C5;X
L0259FC: db $87;X
L0259FD: db $4F;X
L0259FE: db $06;X
L0259FF: db $00;X
L025A00: db $7B;X
L025A01: db $A7;X
L025A02: db $21;X
L025A03: db $53;X
L025A04: db $5A;X
L025A05: db $28;X
L025A06: db $03;X
L025A07: db $21;X
L025A08: db $95;X
L025A09: db $5A;X
L025A0A: db $09;X
L025A0B: db $2A;X
L025A0C: db $46;X
L025A0D: db $4F;X
L025A0E: db $CD;X
L025A0F: db $D0;X
L025A10: db $09;X
L025A11: db $E1;X
L025A12: db $C1;X
L025A13: db $0A;X
L025A14: db $03;X
L025A15: db $FE;X
L025A16: db $04;X
L025A17: db $30;X
L025A18: db $15;X
L025A19: db $F0;X
L025A1A: db $8F;X
L025A1B: db $CB;X
L025A1C: db $7F;X
L025A1D: db $28;X
L025A1E: db $09;X
L025A1F: db $3E;X
L025A20: db $02;X
L025A21: db $E0;X
L025A22: db $70;X
L025A23: db $36;X
L025A24: db $00;X
L025A25: db $3D;X
L025A26: db $E0;X
L025A27: db $70;X
L025A28: db $0A;X
L025A29: db $2D;X
L025A2A: db $2D;X
L025A2B: db $C3;X
L025A2C: db $2C;X
L025A2D: db $0A;X
L025A2E: db $0A;X
L025A2F: db $E6;X
L025A30: db $07;X
L025A31: db $CB;X
L025A32: db $37;X
L025A33: db $F6;X
L025A34: db $80;X
L025A35: db $4F;X
L025A36: db $06;X
L025A37: db $3E;X
L025A38: db $0A;X
L025A39: db $77;X
L025A3A: db $F0;X
L025A3B: db $8F;X
L025A3C: db $CB;X
L025A3D: db $7F;X
L025A3E: db $28;X
L025A3F: db $0B;X
L025A40: db $3E;X
L025A41: db $02;X
L025A42: db $E0;X
L025A43: db $70;X
L025A44: db $04;X
L025A45: db $0A;X
L025A46: db $77;X
L025A47: db $3E;X
L025A48: db $01;X
L025A49: db $E0;X
L025A4A: db $70;X
L025A4B: db $2D;X
L025A4C: db $36;X
L025A4D: db $00;X
L025A4E: db $3E;X
L025A4F: db $02;X
L025A50: db $C3;X
L025A51: db $A2;X
L025A52: db $06;X
L025A53: db $5D;X
L025A54: db $5A;X
L025A55: db $5D;X
L025A56: db $5A;X
L025A57: db $6B;X
L025A58: db $5A;X
L025A59: db $79;X
L025A5A: db $5A;X
L025A5B: db $87;X
L025A5C: db $5A;X
L025A5D: db $89;X
L025A5E: db $DD;X
L025A5F: db $03;X
L025A60: db $B2;X
L025A61: db $B3;X
L025A62: db $B4;X
L025A63: db $A9;X
L025A64: db $DD;X
L025A65: db $03;X
L025A66: db $BA;X
L025A67: db $BB;X
L025A68: db $BC;X
L025A69: db $FF;X
L025A6A: db $FF;X
L025A6B: db $89;X
L025A6C: db $DD;X
L025A6D: db $03;X
L025A6E: db $BD;X
L025A6F: db $BE;X
L025A70: db $B4;X
L025A71: db $A9;X
L025A72: db $DD;X
L025A73: db $03;X
L025A74: db $C5;X
L025A75: db $C6;X
L025A76: db $BC;X
L025A77: db $FF;X
L025A78: db $FF;X
L025A79: db $89;X
L025A7A: db $DD;X
L025A7B: db $03;X
L025A7C: db $C1;X
L025A7D: db $C2;X
L025A7E: db $C3;X
L025A7F: db $A9;X
L025A80: db $DD;X
L025A81: db $03;X
L025A82: db $C9;X
L025A83: db $CA;X
L025A84: db $CB;X
L025A85: db $FF;X
L025A86: db $FF;X
L025A87: db $89;X
L025A88: db $DD;X
L025A89: db $03;X
L025A8A: db $BF;X
L025A8B: db $C0;X
L025A8C: db $B4;X
L025A8D: db $A9;X
L025A8E: db $DD;X
L025A8F: db $03;X
L025A90: db $C7;X
L025A91: db $C8;X
L025A92: db $BC;X
L025A93: db $FF;X
L025A94: db $FF;X
L025A95: db $9F;X
L025A96: db $5A;X
L025A97: db $9F;X
L025A98: db $5A;X
L025A99: db $A7;X
L025A9A: db $5A;X
L025A9B: db $AF;X
L025A9C: db $5A;X
L025A9D: db $B7;X
L025A9E: db $5A;X
L025A9F: db $09;X
L025AA0: db $DE;X
L025AA1: db $03;X
L025AA2: db $B2;X
L025AA3: db $B3;X
L025AA4: db $B4;X
L025AA5: db $FF;X
L025AA6: db $FF;X
L025AA7: db $09;X
L025AA8: db $DE;X
L025AA9: db $03;X
L025AAA: db $BD;X
L025AAB: db $BE;X
L025AAC: db $B4;X
L025AAD: db $FF;X
L025AAE: db $FF;X
L025AAF: db $09;X
L025AB0: db $DE;X
L025AB1: db $03;X
L025AB2: db $C1;X
L025AB3: db $C2;X
L025AB4: db $C3;X
L025AB5: db $FF;X
L025AB6: db $FF;X
L025AB7: db $09;X
L025AB8: db $DE;X
L025AB9: db $03;X
L025ABA: db $BF;X
L025ABB: db $C0;X
L025ABC: db $B4;X
L025ABD: db $FF;X
L025ABE: db $FF;X
L025ABF:;I
	ldh  a, [$FFC0]
	and  $0F
	cp   $0C
	ret  nz
L025AC6: db $FA;X
L025AC7: db $10;X
L025AC8: db $C1;X
L025AC9: db $87;X
L025ACA: db $4F;X
L025ACB: db $06;X
L025ACC: db $00;X
L025ACD: db $21;X
L025ACE: db $09;X
L025ACF: db $5B;X
L025AD0: db $09;X
L025AD1: db $2A;X
L025AD2: db $EA;X
L025AD3: db $17;X
L025AD4: db $C1;X
L025AD5: db $2A;X
L025AD6: db $EA;X
L025AD7: db $19;X
L025AD8: db $C1;X
L025AD9: db $97;X
L025ADA: db $EA;X
L025ADB: db $16;X
L025ADC: db $C1;X
L025ADD: db $EA;X
L025ADE: db $18;X
L025ADF: db $C1;X
L025AE0: db $FA;X
L025AE1: db $17;X
L025AE2: db $C1;X
L025AE3: db $21;X
L025AE4: db $B3;X
L025AE5: db $DD;X
L025AE6: db $CD;X
L025AE7: db $22;X
L025AE8: db $0A;X
L025AE9: db $FA;X
L025AEA: db $19;X
L025AEB: db $C1;X
L025AEC: db $21;X
L025AED: db $53;X
L025AEE: db $DD;X
L025AEF: db $CD;X
L025AF0: db $22;X
L025AF1: db $0A;X
L025AF2: db $FA;X
L025AF3: db $16;X
L025AF4: db $C1;X
L025AF5: db $21;X
L025AF6: db $B0;X
L025AF7: db $DD;X
L025AF8: db $CD;X
L025AF9: db $22;X
L025AFA: db $0A;X
L025AFB: db $FA;X
L025AFC: db $18;X
L025AFD: db $C1;X
L025AFE: db $21;X
L025AFF: db $50;X
L025B00: db $DD;X
L025B01: db $CD;X
L025B02: db $22;X
L025B03: db $0A;X
L025B04: db $06;X
L025B05: db $80;X
L025B06: db $C3;X
L025B07: db $57;X
L025B08: db $6A;X
L025B09: db $08;X
L025B0A: db $02;X
L025B0B: db $07;X
L025B0C: db $04;X
L025B0D: db $06;X
L025B0E: db $04;X
L025B0F: db $06;X
L025B10: db $04;X
L025B11: db $06;X
L025B12: db $04;X
L025B13: db $05;X
L025B14: db $04;X
L025B15: db $05;X
L025B16: db $04;X
L025B17: db $05;X
L025B18: db $04;X
L025B19: db $05;X
L025B1A: db $04;X
L025B1B: db $04;X
L025B1C: db $05;X
L025B1D: db $04;X
L025B1E: db $05;X
L025B1F: db $04;X
L025B20: db $05;X
L025B21: db $03;X
L025B22: db $06;X
L025B23: db $03;X
L025B24: db $06;X
L025B25: db $02;X
L025B26: db $06;X
L025B27: db $02;X
L025B28: db $07;X
L025B29: db $02;X
L025B2A: db $07;X
L025B2B: db $02;X
L025B2C: db $08;X
L025B2D: db $01;X
L025B2E: db $00;X
L025B2F: db $FA;X
L025B30: db $C2;X
L025B31: db $C0;X
L025B32: db $A7;X
L025B33: db $CA;X
L025B34: db $CD;X
L025B35: db $1E;X
L025B36: db $F0;X
L025B37: db $B1;X
L025B38: db $C6;X
L025B39: db $16;X
L025B3A: db $6F;X
L025B3B: db $62;X
L025B3C: db $36;X
L025B3D: db $00;X
L025B3E: db $CD;X
L025B3F: db $F3;X
L025B40: db $1E;X
L025B41: db $FA;X
L025B42: db $D2;X
L025B43: db $C0;X
L025B44: db $A7;X
L025B45: db $28;X
L025B46: db $EF;X
L025B47: db $CB;X
L025B48: db $7F;X
L025B49: db $C0;X
L025B4A: db $7B;X
L025B4B: db $C6;X
L025B4C: db $16;X
L025B4D: db $6F;X
L025B4E: db $62;X
L025B4F: db $2A;X
L025B50: db $A7;X
L025B51: db $20;X
L025B52: db $04;X
L025B53: db $36;X
L025B54: db $04;X
L025B55: db $18;X
L025B56: db $66;X
L025B57: db $7D;X
L025B58: db $C6;X
L025B59: db $F3;X
L025B5A: db $6F;X
L025B5B: db $C6;X
L025B5C: db $09;X
L025B5D: db $47;X
L025B5E: db $35;X
L025B5F: db $20;X
L025B60: db $27;X
L025B61: db $36;X
L025B62: db $1E;X
L025B63: db $2C;X
L025B64: db $35;X
L025B65: db $28;X
L025B66: db $29;X
L025B67: db $7E;X
L025B68: db $68;X
L025B69: db $BE;X
L025B6A: db $D0;X
L025B6B: db $D5;X
L025B6C: db $E5;X
L025B6D: db $E6;X
L025B6E: db $FE;X
L025B6F: db $4F;X
L025B70: db $06;X
L025B71: db $00;X
L025B72: db $21;X
L025B73: db $4B;X
L025B74: db $5D;X
L025B75: db $09;X
L025B76: db $2A;X
L025B77: db $4F;X
L025B78: db $46;X
L025B79: db $3E;X
L025B7A: db $23;X
L025B7B: db $02;X
L025B7C: db $69;X
L025B7D: db $60;X
L025B7E: db $3E;X
L025B7F: db $01;X
L025B80: db $CD;X
L025B81: db $A2;X
L025B82: db $06;X
L025B83: db $E1;X
L025B84: db $D1;X
L025B85: db $C3;X
L025B86: db $92;X
L025B87: db $5C;X
L025B88: db $2C;X
L025B89: db $7E;X
L025B8A: db $68;X
L025B8B: db $BE;X
L025B8C: db $D0;X
L025B8D: db $C3;X
L025B8E: db $92;X
L025B8F: db $5C;X
L025B90: db $CD;X
L025B91: db $6B;X
L025B92: db $5D;X
L025B93: db $F0;X
L025B94: db $B1;X
L025B95: db $C6;X
L025B96: db $1C;X
L025B97: db $5F;X
L025B98: db $1A;X
L025B99: db $21;X
L025B9A: db $78;X
L025B9B: db $D4;X
L025B9C: db $96;X
L025B9D: db $38;X
L025B9E: db $15;X
L025B9F: db $36;X
L025BA0: db $00;X
L025BA1: db $21;X
L025BA2: db $54;X
L025BA3: db $D4;X
L025BA4: db $86;X
L025BA5: db $22;X
L025BA6: db $7E;X
L025BA7: db $CE;X
L025BA8: db $00;X
L025BA9: db $77;X
L025BAA: db $D5;X
L025BAB: db $11;X
L025BAC: db $40;X
L025BAD: db $D4;X
L025BAE: db $CD;X
L025BAF: db $78;X
L025BB0: db $46;X
L025BB1: db $D1;X
L025BB2: db $18;X
L025BB3: db $09;X
L025BB4: db $2F;X
L025BB5: db $3C;X
L025BB6: db $FE;X
L025BB7: db $0C;X
L025BB8: db $38;X
L025BB9: db $02;X
L025BBA: db $3E;X
L025BBB: db $0C;X
L025BBC: db $77;X
L025BBD: db $F0;X
L025BBE: db $B1;X
L025BBF: db $C6;X
L025BC0: db $16;X
L025BC1: db $5F;X
L025BC2: db $3E;X
L025BC3: db $01;X
L025BC4: db $12;X
L025BC5: db $FA;X
L025BC6: db $74;X
L025BC7: db $D4;X
L025BC8: db $4F;X
L025BC9: db $06;X
L025BCA: db $00;X
L025BCB: db $21;X
L025BCC: db $24;X
L025BCD: db $5C;X
L025BCE: db $09;X
L025BCF: db $2A;X
L025BD0: db $66;X
L025BD1: db $6F;X
L025BD2: db $3E;X
L025BD3: db $10;X
L025BD4: db $CD;X
L025BD5: db $B6;X
L025BD6: db $0D;X
L025BD7: db $4F;X
L025BD8: db $09;X
L025BD9: db $7E;X
L025BDA: db $87;X
L025BDB: db $87;X
L025BDC: db $4F;X
L025BDD: db $21;X
L025BDE: db $5A;X
L025BDF: db $5C;X
L025BE0: db $09;X
L025BE1: db $F0;X
L025BE2: db $B1;X
L025BE3: db $C6;X
L025BE4: db $0A;X
L025BE5: db $5F;X
L025BE6: db $3E;X
L025BE7: db $1E;X
L025BE8: db $12;X
L025BE9: db $1C;X
L025BEA: db $2A;X
L025BEB: db $12;X
L025BEC: db $7B;X
L025BED: db $C6;X
L025BEE: db $08;X
L025BEF: db $5F;X
L025BF0: db $2A;X
L025BF1: db $12;X
L025BF2: db $1D;X
L025BF3: db $97;X
L025BF4: db $12;X
L025BF5: db $7B;X
L025BF6: db $C6;X
L025BF7: db $0A;X
L025BF8: db $5F;X
L025BF9: db $2A;X
L025BFA: db $12;X
L025BFB: db $1C;X
L025BFC: db $2A;X
L025BFD: db $12;X
L025BFE: db $7B;X
L025BFF: db $C6;X
L025C00: db $FA;X
L025C01: db $6F;X
L025C02: db $62;X
L025C03: db $C6;X
L025C04: db $F4;X
L025C05: db $5F;X
L025C06: db $35;X
L025C07: db $C0;X
L025C08: db $CD;X
L025C09: db $98;X
L025C0A: db $0D;X
L025C0B: db $E6;X
L025C0C: db $03;X
L025C0D: db $C6;X
L025C0E: db $04;X
L025C0F: db $77;X
L025C10: db $7B;X
L025C11: db $C6;X
L025C12: db $08;X
L025C13: db $6F;X
L025C14: db $3E;X
L025C15: db $0C;X
L025C16: db $12;X
L025C17: db $32;X
L025C18: db $36;X
L025C19: db $00;X
L025C1A: db $7D;X
L025C1B: db $C6;X
L025C1C: db $0A;X
L025C1D: db $6F;X
L025C1E: db $36;X
L025C1F: db $0C;X
L025C20: db $2C;X
L025C21: db $36;X
L025C22: db $02;X
L025C23: db $C9;X
L025C24: db $2A;X
L025C25: db $5C;X
L025C26: db $3A;X
L025C27: db $5C;X
L025C28: db $4A;X
L025C29: db $5C;X
L025C2A: db $00;X
L025C2B: db $00;X
L025C2C: db $00;X
L025C2D: db $01;X
L025C2E: db $01;X
L025C2F: db $02;X
L025C30: db $03;X
L025C31: db $03;X
L025C32: db $04;X
L025C33: db $04;X
L025C34: db $05;X
L025C35: db $05;X
L025C36: db $05;X
L025C37: db $06;X
L025C38: db $07;X
L025C39: db $08;X
L025C3A: db $00;X
L025C3B: db $01;X
L025C3C: db $01;X
L025C3D: db $02;X
L025C3E: db $02;X
L025C3F: db $03;X
L025C40: db $03;X
L025C41: db $03;X
L025C42: db $04;X
L025C43: db $05;X
L025C44: db $0B;X
L025C45: db $0C;X
L025C46: db $06;X
L025C47: db $07;X
L025C48: db $08;X
L025C49: db $09;X
L025C4A: db $01;X
L025C4B: db $02;X
L025C4C: db $02;X
L025C4D: db $02;X
L025C4E: db $03;X
L025C4F: db $03;X
L025C50: db $03;X
L025C51: db $04;X
L025C52: db $05;X
L025C53: db $06;X
L025C54: db $0A;X
L025C55: db $0B;X
L025C56: db $08;X
L025C57: db $0C;X
L025C58: db $0D;X
L025C59: db $09;X
L025C5A: db $0C;X
L025C5B: db $08;X
L025C5C: db $01;X
L025C5D: db $00;X
L025C5E: db $14;X
L025C5F: db $08;X
L025C60: db $02;X
L025C61: db $00;X
L025C62: db $1C;X
L025C63: db $0A;X
L025C64: db $03;X
L025C65: db $01;X
L025C66: db $24;X
L025C67: db $0C;X
L025C68: db $04;X
L025C69: db $01;X
L025C6A: db $26;X
L025C6B: db $0E;X
L025C6C: db $06;X
L025C6D: db $01;X
L025C6E: db $30;X
L025C6F: db $10;X
L025C70: db $08;X
L025C71: db $01;X
L025C72: db $36;X
L025C73: db $14;X
L025C74: db $0C;X
L025C75: db $02;X
L025C76: db $3C;X
L025C77: db $18;X
L025C78: db $12;X
L025C79: db $02;X
L025C7A: db $42;X
L025C7B: db $1C;X
L025C7C: db $18;X
L025C7D: db $03;X
L025C7E: db $46;X
L025C7F: db $20;X
L025C80: db $1E;X
L025C81: db $03;X
L025C82: db $14;X
L025C83: db $0C;X
L025C84: db $06;X
L025C85: db $01;X
L025C86: db $1A;X
L025C87: db $10;X
L025C88: db $0C;X
L025C89: db $02;X
L025C8A: db $1E;X
L025C8B: db $14;X
L025C8C: db $12;X
L025C8D: db $02;X
L025C8E: db $28;X
L025C8F: db $1C;X
L025C90: db $18;X
L025C91: db $03;X
L025C92: db $2D;X
L025C93: db $7E;X
L025C94: db $A7;X
L025C95: db $20;X
L025C96: db $34;X
L025C97: db $36;X
L025C98: db $01;X
L025C99: db $01;X
L025C9A: db $F8;X
L025C9B: db $5C;X
L025C9C: db $CD;X
L025C9D: db $80;X
L025C9E: db $07;X
L025C9F: db $F0;X
L025CA0: db $B1;X
L025CA1: db $C6;X
L025CA2: db $13;X
L025CA3: db $5F;X
L025CA4: db $1A;X
L025CA5: db $CB;X
L025CA6: db $3F;X
L025CA7: db $F5;X
L025CA8: db $5F;X
L025CA9: db $21;X
L025CAA: db $4B;X
L025CAB: db $5D;X
L025CAC: db $2A;X
L025CAD: db $4F;X
L025CAE: db $2A;X
L025CAF: db $47;X
L025CB0: db $3E;X
L025CB1: db $22;X
L025CB2: db $02;X
L025CB3: db $1D;X
L025CB4: db $20;X
L025CB5: db $F6;X
L025CB6: db $F1;X
L025CB7: db $FE;X
L025CB8: db $09;X
L025CB9: db $38;X
L025CBA: db $08;X
L025CBB: db $21;X
L025CBC: db $8B;X
L025CBD: db $DC;X
L025CBE: db $3E;X
L025CBF: db $08;X
L025CC0: db $CD;X
L025CC1: db $A2;X
L025CC2: db $06;X
L025CC3: db $21;X
L025CC4: db $6B;X
L025CC5: db $DC;X
L025CC6: db $3E;X
L025CC7: db $08;X
L025CC8: db $C3;X
L025CC9: db $A2;X
L025CCA: db $06;X
L025CCB: db $3D;X
L025CCC: db $77;X
L025CCD: db $E6;X
L025CCE: db $7F;X
L025CCF: db $C0;X
L025CD0: db $7E;X
L025CD1: db $EE;X
L025CD2: db $80;X
L025CD3: db $C6;X
L025CD4: db $0F;X
L025CD5: db $77;X
L025CD6: db $CB;X
L025CD7: db $7F;X
L025CD8: db $20;X
L025CD9: db $06;X
L025CDA: db $01;X
L025CDB: db $42;X
L025CDC: db $5D;X
L025CDD: db $C3;X
L025CDE: db $80;X
L025CDF: db $07;X
L025CE0: db $7B;X
L025CE1: db $C6;X
L025CE2: db $1D;X
L025CE3: db $5F;X
L025CE4: db $1A;X
L025CE5: db $87;X
L025CE6: db $4F;X
L025CE7: db $06;X
L025CE8: db $00;X
L025CE9: db $21;X
L025CEA: db $1C;X
L025CEB: db $5D;X
L025CEC: db $09;X
L025CED: db $2A;X
L025CEE: db $46;X
L025CEF: db $4F;X
L025CF0: db $CD;X
L025CF1: db $80;X
L025CF2: db $07;X
L025CF3: db $3E;X
L025CF4: db $52;X
L025CF5: db $C3;X
L025CF6: db $4E;X
L025CF7: db $3B;X
L025CF8: db $2B;X
L025CF9: db $DC;X
L025CFA: db $41;X
L025CFB: db $54;X
L025CFC: db $54;X
L025CFD: db $41;X
L025CFE: db $43;X
L025CFF: db $4B;X
L025D00: db $FE;X
L025D01: db $4C;X
L025D02: db $DC;X
L025D03: db $20;X
L025D04: db $20;X
L025D05: db $20;X
L025D06: db $20;X
L025D07: db $20;X
L025D08: db $20;X
L025D09: db $FE;X
L025D0A: db $6C;X
L025D0B: db $DC;X
L025D0C: db $20;X
L025D0D: db $20;X
L025D0E: db $20;X
L025D0F: db $20;X
L025D10: db $20;X
L025D11: db $20;X
L025D12: db $FE;X
L025D13: db $8C;X
L025D14: db $DC;X
L025D15: db $20;X
L025D16: db $20;X
L025D17: db $20;X
L025D18: db $20;X
L025D19: db $20;X
L025D1A: db $20;X
L025D1B: db $FF;X
L025D1C: db $24;X
L025D1D: db $5D;X
L025D1E: db $2A;X
L025D1F: db $5D;X
L025D20: db $33;X
L025D21: db $5D;X
L025D22: db $3A;X
L025D23: db $5D;X
L025D24: db $4D;X
L025D25: db $DC;X
L025D26: db $4C;X
L025D27: db $4F;X
L025D28: db $57;X
L025D29: db $FF;X
L025D2A: db $4D;X
L025D2B: db $DC;X
L025D2C: db $4D;X
L025D2D: db $49;X
L025D2E: db $44;X
L025D2F: db $44;X
L025D30: db $4C;X
L025D31: db $45;X
L025D32: db $FF;X
L025D33: db $4D;X
L025D34: db $DC;X
L025D35: db $48;X
L025D36: db $49;X
L025D37: db $47;X
L025D38: db $48;X
L025D39: db $FF;X
L025D3A: db $4D;X
L025D3B: db $DC;X
L025D3C: db $47;X
L025D3D: db $52;X
L025D3E: db $45;X
L025D3F: db $41;X
L025D40: db $54;X
L025D41: db $FF;X
L025D42: db $4D;X
L025D43: db $DC;X
L025D44: db $20;X
L025D45: db $20;X
L025D46: db $20;X
L025D47: db $20;X
L025D48: db $20;X
L025D49: db $20;X
L025D4A: db $FF;X
L025D4B: db $6B;X
L025D4C: db $DC;X
L025D4D: db $6C;X
L025D4E: db $DC;X
L025D4F: db $6D;X
L025D50: db $DC;X
L025D51: db $6E;X
L025D52: db $DC;X
L025D53: db $6F;X
L025D54: db $DC;X
L025D55: db $70;X
L025D56: db $DC;X
L025D57: db $71;X
L025D58: db $DC;X
L025D59: db $72;X
L025D5A: db $DC;X
L025D5B: db $8B;X
L025D5C: db $DC;X
L025D5D: db $8C;X
L025D5E: db $DC;X
L025D5F: db $8D;X
L025D60: db $DC;X
L025D61: db $8E;X
L025D62: db $DC;X
L025D63: db $8F;X
L025D64: db $DC;X
L025D65: db $90;X
L025D66: db $DC;X
L025D67: db $91;X
L025D68: db $DC;X
L025D69: db $92;X
L025D6A: db $DC;X
L025D6B: db $01;X
L025D6C: db $71;X
L025D6D: db $5D;X
L025D6E: db $C3;X
L025D6F: db $D0;X
L025D70: db $09;X
L025D71: db $2B;X
L025D72: db $DC;X
L025D73: db $08;X
L025D74: db $00;X
L025D75: db $00;X
L025D76: db $00;X
L025D77: db $00;X
L025D78: db $00;X
L025D79: db $00;X
L025D7A: db $00;X
L025D7B: db $00;X
L025D7C: db $4B;X
L025D7D: db $DC;X
L025D7E: db $08;X
L025D7F: db $00;X
L025D80: db $F0;X
L025D81: db $F1;X
L025D82: db $F0;X
L025D83: db $F1;X
L025D84: db $F0;X
L025D85: db $F1;X
L025D86: db $00;X
L025D87: db $6B;X
L025D88: db $DC;X
L025D89: db $08;X
L025D8A: db $00;X
L025D8B: db $F2;X
L025D8C: db $F3;X
L025D8D: db $F2;X
L025D8E: db $F3;X
L025D8F: db $F2;X
L025D90: db $F3;X
L025D91: db $00;X
L025D92: db $8B;X
L025D93: db $DC;X
L025D94: db $08;X
L025D95: db $00;X
L025D96: db $00;X
L025D97: db $00;X
L025D98: db $00;X
L025D99: db $00;X
L025D9A: db $00;X
L025D9B: db $00;X
L025D9C: db $00;X
L025D9D: db $FF;X
L025D9E: db $FF;X
L025D9F: db $21;X
L025DA0: db $B3;X
L025DA1: db $5D;X
L025DA2: db $06;X
L025DA3: db $02;X
L025DA4: db $CD;X
L025DA5: db $87;X
L025DA6: db $1E;X
L025DA7: db $F0;X
L025DA8: db $B1;X
L025DA9: db $C6;X
L025DAA: db $28;X
L025DAB: db $5F;X
L025DAC: db $7D;X
L025DAD: db $C6;X
L025DAE: db $28;X
L025DAF: db $6F;X
L025DB0: db $1A;X
L025DB1: db $77;X
L025DB2: db $C9;X
L025DB3: db $F0;X
L025DB4: db $C0;X
L025DB5: db $E6;X
L025DB6: db $0F;X
L025DB7: db $28;X
L025DB8: db $09;X
L025DB9: db $CD;X
L025DBA: db $26;X
L025DBB: db $1F;X
L025DBC: db $FA;X
L025DBD: db $AB;X
L025DBE: db $C0;X
L025DBF: db $CB;X
L025DC0: db $77;X
L025DC1: db $C8;X
L025DC2: db $CD;X
L025DC3: db $1F;X
L025DC4: db $40;X
L025DC5: db $7B;X
L025DC6: db $C6;X
L025DC7: db $E5;X
L025DC8: db $5F;X
L025DC9: db $F0;X
L025DCA: db $B6;X
L025DCB: db $C6;X
L025DCC: db $14;X
L025DCD: db $12;X
L025DCE: db $CD;X
L025DCF: db $F3;X
L025DD0: db $1E;X
L025DD1: db $7B;X
L025DD2: db $C6;X
L025DD3: db $0D;X
L025DD4: db $5F;X
L025DD5: db $C6;X
L025DD6: db $21;X
L025DD7: db $6F;X
L025DD8: db $62;X
L025DD9: db $7E;X
L025DDA: db $C6;X
L025DDB: db $04;X
L025DDC: db $77;X
L025DDD: db $F6;X
L025DDE: db $80;X
L025DDF: db $E5;X
L025DE0: db $CD;X
L025DE1: db $D2;X
L025DE2: db $0E;X
L025DE3: db $69;X
L025DE4: db $60;X
L025DE5: db $29;X
L025DE6: db $29;X
L025DE7: db $3E;X
L025DE8: db $74;X
L025DE9: db $84;X
L025DEA: db $E0;X
L025DEB: db $D1;X
L025DEC: db $1A;X
L025DED: db $E0;X
L025DEE: db $D0;X
L025DEF: db $3E;X
L025DF0: db $06;X
L025DF1: db $E0;X
L025DF2: db $D2;X
L025DF3: db $3E;X
L025DF4: db $1D;X
L025DF5: db $E0;X
L025DF6: db $D3;X
L025DF7: db $D5;X
L025DF8: db $21;X
L025DF9: db $65;X
L025DFA: db $40;X
L025DFB: db $3E;X
L025DFC: db $05;X
L025DFD: db $C7;X
L025DFE: db $D1;X
L025DFF: db $E1;X
L025E00: db $7E;X
L025E01: db $C6;X
L025E02: db $40;X
L025E03: db $F6;X
L025E04: db $80;X
L025E05: db $CD;X
L025E06: db $D2;X
L025E07: db $0E;X
L025E08: db $69;X
L025E09: db $60;X
L025E0A: db $29;X
L025E0B: db $29;X
L025E0C: db $3E;X
L025E0D: db $74;X
L025E0E: db $84;X
L025E0F: db $E0;X
L025E10: db $D1;X
L025E11: db $3E;X
L025E12: db $1E;X
L025E13: db $E0;X
L025E14: db $D3;X
L025E15: db $D5;X
L025E16: db $21;X
L025E17: db $65;X
L025E18: db $40;X
L025E19: db $3E;X
L025E1A: db $05;X
L025E1B: db $C7;X
L025E1C: db $D1;X
L025E1D: db $C9;X
L025E1E: db $FA;X
L025E1F: db $E4;X
L025E20: db $C0;X
L025E21: db $4F;X
L025E22: db $FA;X
L025E23: db $E5;X
L025E24: db $C0;X
L025E25: db $FE;X
L025E26: db $0A;X
L025E27: db $38;X
L025E28: db $04;X
L025E29: db $3E;X
L025E2A: db $09;X
L025E2B: db $0E;X
L025E2C: db $3B;X
L025E2D: db $47;X
L025E2E: db $C5;X
L025E2F: db $79;X
L025E30: db $CD;X
L025E31: db $C2;X
L025E32: db $0F;X
L025E33: db $21;X
L025E34: db $64;X
L025E35: db $5E;X
L025E36: db $06;X
L025E37: db $02;X
L025E38: db $CD;X
L025E39: db $64;X
L025E3A: db $1E;X
L025E3B: db $C1;X
L025E3C: db $D8;X
L025E3D: db $7D;X
L025E3E: db $C6;X
L025E3F: db $24;X
L025E40: db $6F;X
L025E41: db $78;X
L025E42: db $C6;X
L025E43: db $80;X
L025E44: db $22;X
L025E45: db $3E;X
L025E46: db $A6;X
L025E47: db $22;X
L025E48: db $F0;X
L025E49: db $C6;X
L025E4A: db $C6;X
L025E4B: db $80;X
L025E4C: db $22;X
L025E4D: db $F0;X
L025E4E: db $C7;X
L025E4F: db $C6;X
L025E50: db $80;X
L025E51: db $77;X
L025E52: db $7D;X
L025E53: db $C6;X
L025E54: db $F3;X
L025E55: db $6F;X
L025E56: db $01;X
L025E57: db $50;X
L025E58: db $48;X
L025E59: db $78;X
L025E5A: db $22;X
L025E5B: db $79;X
L025E5C: db $22;X
L025E5D: db $3E;X
L025E5E: db $04;X
L025E5F: db $22;X
L025E60: db $3E;X
L025E61: db $08;X
L025E62: db $77;X
L025E63: db $C9;X
L025E64: db $7B;X
L025E65: db $C6;X
L025E66: db $24;X
L025E67: db $5F;X
L025E68: db $62;X
L025E69: db $C6;X
L025E6A: db $F6;X
L025E6B: db $6F;X
L025E6C: db $3E;X
L025E6D: db $10;X
L025E6E: db $E0;X
L025E6F: db $D3;X
L025E70: db $2A;X
L025E71: db $E0;X
L025E72: db $D0;X
L025E73: db $2A;X
L025E74: db $E0;X
L025E75: db $D1;X
L025E76: db $46;X
L025E77: db $2C;X
L025E78: db $4E;X
L025E79: db $6B;X
L025E7A: db $2A;X
L025E7B: db $E0;X
L025E7C: db $D2;X
L025E7D: db $C5;X
L025E7E: db $E5;X
L025E7F: db $CD;X
L025E80: db $0C;X
L025E81: db $21;X
L025E82: db $E1;X
L025E83: db $C1;X
L025E84: db $F0;X
L025E85: db $D0;X
L025E86: db $81;X
L025E87: db $E0;X
L025E88: db $D0;X
L025E89: db $05;X
L025E8A: db $20;X
L025E8B: db $EE;X
L025E8C: db $C9;X
L025E8D: db $01;X
L025E8E: db $93;X
L025E8F: db $5E;X
L025E90: db $C3;X
L025E91: db $80;X
L025E92: db $07;X
L025E93: db $42;X
L025E94: db $DD;X
L025E95: db $47;X
L025E96: db $41;X
L025E97: db $4D;X
L025E98: db $45;X
L025E99: db $FE;X
L025E9A: db $62;X
L025E9B: db $DD;X
L025E9C: db $4F;X
L025E9D: db $56;X
L025E9E: db $45;X
L025E9F: db $52;X
L025EA0: db $FE;X
L025EA1: db $4F;X
L025EA2: db $DD;X
L025EA3: db $47;X
L025EA4: db $41;X
L025EA5: db $4D;X
L025EA6: db $45;X
L025EA7: db $FE;X
L025EA8: db $6F;X
L025EA9: db $DD;X
L025EAA: db $4F;X
L025EAB: db $56;X
L025EAC: db $45;X
L025EAD: db $52;X
L025EAE: db $FF;X
L025EAF:;I
	ld   hl, $5EB8
	ld   b, $02
	call L001E87
	ret  
L025EB8:;I
	call L001F26
L025EBB:;I
	ld   a, [$C0AB]
	bit  6, a
	ret  z
	ld   a, e
	add  $0D
	ld   e, a
	add  $04
	ld   l, a
	ld   h, d
	ld   a, $4C
	ld   [de], a
	ld   [hl], $70
	ld   a, e
	add  $F9
	ld   l, a
	ld   [hl], $80
	inc  l
	inc  l
	ld   [hl], $06
	inc  l
	ld   [hl], $1F
	call L001EF3
L025EDE:;I
	ld   a, e
	add  $06
	ld   e, a
	ld   a, [$C011]
	and  $08
	jr   z, $5EEB
	ld   a, $80
L025EEB:;R
	ld   [de], a
	ret  
L025EED: db $FA;X
L025EEE: db $88;X
L025EEF: db $C0;X
L025EF0: db $CD;X
L025EF1: db $C2;X
L025EF2: db $0F;X
L025EF3: db $21;X
L025EF4: db $C9;X
L025EF5: db $DC;X
L025EF6: db $F0;X
L025EF7: db $C7;X
L025EF8: db $F6;X
L025EF9: db $80;X
L025EFA: db $32;X
L025EFB: db $F0;X
L025EFC: db $C6;X
L025EFD: db $F6;X
L025EFE: db $80;X
L025EFF: db $77;X
L025F00: db $3E;X
L025F01: db $02;X
L025F02: db $CD;X
L025F03: db $A2;X
L025F04: db $06;X
L025F05: db $21;X
L025F06: db $E8;X
L025F07: db $DC;X
L025F08: db $36;X
L025F09: db $26;X
L025F0A: db $3E;X
L025F0B: db $01;X
L025F0C: db $CD;X
L025F0D: db $A2;X
L025F0E: db $06;X
L025F0F: db $FA;X
L025F10: db $89;X
L025F11: db $C0;X
L025F12: db $CD;X
L025F13: db $C2;X
L025F14: db $0F;X
L025F15: db $21;X
L025F16: db $CC;X
L025F17: db $DC;X
L025F18: db $F0;X
L025F19: db $C7;X
L025F1A: db $F6;X
L025F1B: db $80;X
L025F1C: db $32;X
L025F1D: db $F0;X
L025F1E: db $C6;X
L025F1F: db $F6;X
L025F20: db $80;X
L025F21: db $77;X
L025F22: db $3E;X
L025F23: db $02;X
L025F24: db $CD;X
L025F25: db $A2;X
L025F26: db $06;X
L025F27: db $21;X
L025F28: db $EC;X
L025F29: db $DC;X
L025F2A: db $36;X
L025F2B: db $26;X
L025F2C: db $3E;X
L025F2D: db $01;X
L025F2E: db $C3;X
L025F2F: db $A2;X
L025F30: db $06;X
L025F31:;I
	ld   a, $02
	ldh  [$FFD0], a
L025F35:;R
	ld   hl, $5F9B
	ld   b, $02
	call L001E64
	ret  c
	ld   a, l
	add  $08
	ld   l, a
	ld   [hl], $09
	inc  l
	ldh  a, [$FFD0]
	ld   [hl], a
	ld   a, l
	add  $1B
	ld   l, a
	call L000D98
	and  $0F
	ld   c, a
	ldh  a, [$FFD0]
	add  a
	add  a
	add  a
	add  a
	or   c
	ld   [hl], a
	ld   a, l
	add  $E9
	ld   l, a
	add  $0E
	ld   e, a
	add  $F6
	ld   c, a
	call L000D98
	and  $1F
	add  $40
	ld   [hl], a
	ld   l, e
	ld   [hl], a
	ld   l, c
	ld   [hl], $C0
	ld   a, l
	add  $04
	ld   l, a
	add  $0A
	ld   e, a
	add  $01
	ld   c, a
	add  $FC
	ld   b, a
	add  $FC
	ld   [hl], $01
	ld   l, e
	ld   [hl], $FF
	ld   l, c
	ld   [hl], $0A
	ld   l, b
	ld   [hl], $20
	ld   l, a
	ld   [hl], $80
	inc  l
	ld   [hl], $FD
	ldh  a, [$FFD0]
	dec  a
	ldh  [$FFD0], a
	cp   $FF
	jr   nz, $5F35
	ret  
L025F9B:;I
	ld   a, e
	add  $24
	ld   l, a
	ld   h, d
	dec  [hl]
	ret  nz
	add  $E2
	ld   l, a
	ld   [hl], $8F
	ld   bc, $0040
	call L001EE8
L025FAD:;I
	call L001F6D
	call L001EF3
L025FB3:;I
	ld   a, e
	add  $06
	ld   l, a
	ld   h, d
	ld   [hl], $00
	ld   bc, $0008
	call L001EE8
L025FC0:;I
	call L001EF3
L025FC3:;I
	ld   a, $07
	ldh  [$FFD3], a
L025FC7:;R
	call L001F46
	jr   c, $6006
	ld   [hl], $07
	inc  l
	inc  l
	ld   [hl], $03
	ldh  a, [$FFB1]
	add  $0D
	ld   e, a
	add  $04
	ld   c, a
	ld   a, l
	add  $05
	ld   l, a
	add  $04
	ld   b, a
	ld   a, [de]
	sub  $2C
	ld   [hl], a
	ld   e, c
	ld   l, b
	ld   a, [de]
	sub  $24
	ld   [hl], a
	ld   a, e
	add  $F8
	ld   e, a
	ld   a, l
	add  $0B
	ld   l, a
	ld   a, [de]
	ldi  [hl], a
	ldh  a, [$FFD3]
	add  a
	add  a
	add  a
	add  a
	add  a
	ld   [hl], a
	ldh  a, [$FFD3]
	dec  a
	ldh  [$FFD3], a
	cp   $FF
	jr   nz, $5FC7
	ld   a, $4C
	call Sound_ReqPlayId
	jp   L001ECD
L02600E: db $F0;X
L02600F: db $B1;X
L026010: db $C6;X
L026011: db $28;X
L026012: db $5F;X
L026013: db $1A;X
L026014: db $06;X
L026015: db $40;X
L026016: db $A7;X
L026017: db $28;X
L026018: db $02;X
L026019: db $06;X
L02601A: db $A0;X
L02601B: db $78;X
L02601C: db $E0;X
L02601D: db $D1;X
L02601E: db $3E;X
L02601F: db $02;X
L026020: db $E0;X
L026021: db $D0;X
L026022: db $21;X
L026023: db $69;X
L026024: db $60;X
L026025: db $06;X
L026026: db $02;X
L026027: db $CD;X
L026028: db $64;X
L026029: db $1E;X
L02602A: db $D8;X
L02602B: db $7D;X
L02602C: db $C6;X
L02602D: db $09;X
L02602E: db $6F;X
L02602F: db $F0;X
L026030: db $D0;X
L026031: db $77;X
L026032: db $7D;X
L026033: db $C6;X
L026034: db $04;X
L026035: db $6F;X
L026036: db $C6;X
L026037: db $04;X
L026038: db $47;X
L026039: db $CD;X
L02603A: db $98;X
L02603B: db $0D;X
L02603C: db $E6;X
L02603D: db $1F;X
L02603E: db $4F;X
L02603F: db $F0;X
L026040: db $D1;X
L026041: db $81;X
L026042: db $77;X
L026043: db $68;X
L026044: db $F0;X
L026045: db $D0;X
L026046: db $C6;X
L026047: db $66;X
L026048: db $4F;X
L026049: db $3E;X
L02604A: db $60;X
L02604B: db $CE;X
L02604C: db $00;X
L02604D: db $47;X
L02604E: db $0A;X
L02604F: db $77;X
L026050: db $7D;X
L026051: db $C6;X
L026052: db $13;X
L026053: db $6F;X
L026054: db $F0;X
L026055: db $D0;X
L026056: db $87;X
L026057: db $87;X
L026058: db $87;X
L026059: db $87;X
L02605A: db $3C;X
L02605B: db $77;X
L02605C: db $F0;X
L02605D: db $D0;X
L02605E: db $3D;X
L02605F: db $E0;X
L026060: db $D0;X
L026061: db $FE;X
L026062: db $FF;X
L026063: db $20;X
L026064: db $BD;X
L026065: db $C9;X
L026066: db $80;X
L026067: db $60;X
L026068: db $70;X
L026069: db $7B;X
L02606A: db $C6;X
L02606B: db $24;X
L02606C: db $6F;X
L02606D: db $62;X
L02606E: db $35;X
L02606F: db $C0;X
L026070: db $C3;X
L026071: db $C3;X
L026072: db $5F;X
L026073: db $21;X
L026074: db $91;X
L026075: db $60;X
L026076: db $06;X
L026077: db $02;X
L026078: db $CD;X
L026079: db $87;X
L02607A: db $1E;X
L02607B: db $18;X
L02607C: db $08;X
L02607D: db $21;X
L02607E: db $B5;X
L02607F: db $60;X
L026080: db $06;X
L026081: db $02;X
L026082: db $CD;X
L026083: db $87;X
L026084: db $1E;X
L026085: db $7D;X
L026086: db $C6;X
L026087: db $28;X
L026088: db $6F;X
L026089: db $F0;X
L02608A: db $B1;X
L02608B: db $C6;X
L02608C: db $28;X
L02608D: db $5F;X
L02608E: db $1A;X
L02608F: db $77;X
L026090: db $C9;X
L026091: db $CD;X
L026092: db $F7;X
L026093: db $60;X
L026094: db $36;X
L026095: db $06;X
L026096: db $CD;X
L026097: db $F3;X
L026098: db $1E;X
L026099: db $7B;X
L02609A: db $C6;X
L02609B: db $2E;X
L02609C: db $5F;X
L02609D: db $1A;X
L02609E: db $C6;X
L02609F: db $04;X
L0260A0: db $12;X
L0260A1: db $F6;X
L0260A2: db $80;X
L0260A3: db $0E;X
L0260A4: db $0C;X
L0260A5: db $CD;X
L0260A6: db $73;X
L0260A7: db $0E;X
L0260A8: db $F0;X
L0260A9: db $B1;X
L0260AA: db $C6;X
L0260AB: db $1F;X
L0260AC: db $5F;X
L0260AD: db $C6;X
L0260AE: db $F2;X
L0260AF: db $4F;X
L0260B0: db $1A;X
L0260B1: db $84;X
L0260B2: db $59;X
L0260B3: db $12;X
L0260B4: db $C9;X
L0260B5: db $CD;X
L0260B6: db $F7;X
L0260B7: db $60;X
L0260B8: db $36;X
L0260B9: db $07;X
L0260BA: db $69;X
L0260BB: db $7E;X
L0260BC: db $D6;X
L0260BD: db $08;X
L0260BE: db $77;X
L0260BF: db $CD;X
L0260C0: db $F3;X
L0260C1: db $1E;X
L0260C2: db $01;X
L0260C3: db $08;X
L0260C4: db $00;X
L0260C5: db $CD;X
L0260C6: db $E8;X
L0260C7: db $1E;X
L0260C8: db $7B;X
L0260C9: db $C6;X
L0260CA: db $0D;X
L0260CB: db $6F;X
L0260CC: db $62;X
L0260CD: db $35;X
L0260CE: db $CD;X
L0260CF: db $F3;X
L0260D0: db $1E;X
L0260D1: db $01;X
L0260D2: db $20;X
L0260D3: db $00;X
L0260D4: db $CD;X
L0260D5: db $E8;X
L0260D6: db $1E;X
L0260D7: db $CD;X
L0260D8: db $F3;X
L0260D9: db $1E;X
L0260DA: db $01;X
L0260DB: db $10;X
L0260DC: db $00;X
L0260DD: db $CD;X
L0260DE: db $E8;X
L0260DF: db $1E;X
L0260E0: db $7B;X
L0260E1: db $C6;X
L0260E2: db $0D;X
L0260E3: db $6F;X
L0260E4: db $62;X
L0260E5: db $34;X
L0260E6: db $CD;X
L0260E7: db $F3;X
L0260E8: db $1E;X
L0260E9: db $01;X
L0260EA: db $20;X
L0260EB: db $00;X
L0260EC: db $CD;X
L0260ED: db $E8;X
L0260EE: db $1E;X
L0260EF: db $CD;X
L0260F0: db $F3;X
L0260F1: db $1E;X
L0260F2: db $01;X
L0260F3: db $10;X
L0260F4: db $00;X
L0260F5: db $18;X
L0260F6: db $CE;X
L0260F7: db $CD;X
L0260F8: db $1F;X
L0260F9: db $40;X
L0260FA: db $7B;X
L0260FB: db $C6;X
L0260FC: db $E5;X
L0260FD: db $5F;X
L0260FE: db $C6;X
L0260FF: db $12;X
L026100: db $6F;X
L026101: db $62;X
L026102: db $C6;X
L026103: db $F2;X
L026104: db $4F;X
L026105: db $C6;X
L026106: db $F5;X
L026107: db $47;X
L026108: db $F0;X
L026109: db $B6;X
L02610A: db $C6;X
L02610B: db $14;X
L02610C: db $12;X
L02610D: db $F0;X
L02610E: db $B7;X
L02610F: db $C6;X
L026110: db $10;X
L026111: db $77;X
L026112: db $69;X
L026113: db $77;X
L026114: db $68;X
L026115: db $36;X
L026116: db $80;X
L026117: db $2C;X
L026118: db $2C;X
L026119: db $36;X
L02611A: db $06;X
L02611B: db $2C;X
L02611C: db $C9;X
L02611D: db $00
L02611E: db $01;X
L02611F: db $02;X
L026120: db $04;X
L026121: db $05;X
L026122: db $06;X
L026123: db $07;X
L026124: db $08;X
L026125: db $09;X
L026126: db $0A;X
L026127: db $0B;X
L026128: db $0C;X
L026129: db $0D;X
L02612A: db $0E;X
L02612B: db $0F;X
L02612C: db $10;X
L02612D: db $11;X
L02612E: db $07;X
L02612F: db $0A;X
L026130: db $0C;X
L026131: db $0E;X
L026132: db $0F;X
L026133: db $11;X
L026134: db $13;X
L026135: db $15;X
L026136: db $16;X
L026137:;I
	sub  a
	ld   [$C096], a
	ldh  a, [$FFC0]
	and  $0F
	jp   z, $6177
L026142: db $FE;X
L026143: db $0E;X
L026144: db $D2;X
L026145: db $A2;X
L026146: db $61;X
L026147: db $21;X
L026148: db $C5;X
L026149: db $61;X
L02614A: db $06;X
L02614B: db $02;X
L02614C: db $CD;X
L02614D: db $87;X
L02614E: db $1E;X
L02614F: db $7D;X
L026150: db $C6;X
L026151: db $36;X
L026152: db $6F;X
L026153: db $F0;X
L026154: db $B1;X
L026155: db $22;X
L026156: db $72;X
L026157: db $C6;X
L026158: db $28;X
L026159: db $5F;X
L02615A: db $7D;X
L02615B: db $C6;X
L02615C: db $F1;X
L02615D: db $6F;X
L02615E: db $1A;X
L02615F: db $77;X
L026160: db $E0;X
L026161: db $F0;X
L026162: db $7D;X
L026163: db $C6;X
L026164: db $DF;X
L026165: db $6F;X
L026166: db $36;X
L026167: db $FF;X
L026168: db $C6;X
L026169: db $1D;X
L02616A: db $6F;X
L02616B: db $36;X
L02616C: db $05;X
L02616D: db $F0;X
L02616E: db $F0;X
L02616F: db $A7;X
L026170: db $C0;X
L026171: db $3E;X
L026172: db $01;X
L026173: db $EA;X
L026174: db $93;X
L026175: db $C0;X
L026176: db $C9;X
L026177:;J
	ldh  a, [$FFB1]
	add  $07
	ld   l, a
	ld   h, d
	res  0, [hl]
	add  $01
	ld   e, a
	ld   a, [$C082]
	cp   $01
	jr   z, $6195
	jr   nc, $6190
	ld   hl, $611D
	jr   L026198
L026190: db $21;X
L026191: db $2E;X
L026192: db $61;X
L026193: db $18;X
L026194: db $03;X
L026195: db $21;X
L026196: db $20;X
L026197: db $61;X
L026198:;R
	ld   a, [$C080]
	ld   c, a
	ld   b, $00
	add  hl, bc
	ld   a, [hl]
	ld   [de], a
	ret  
L0261A2: db $F0;X
L0261A3: db $B1;X
L0261A4: db $C6;X
L0261A5: db $07;X
L0261A6: db $6F;X
L0261A7: db $62;X
L0261A8: db $FA;X
L0261A9: db $1A;X
L0261AA: db $C0;X
L0261AB: db $A7;X
L0261AC: db $28;X
L0261AD: db $04;X
L0261AE: db $CB;X
L0261AF: db $D6;X
L0261B0: db $18;X
L0261B1: db $02;X
L0261B2: db $CB;X
L0261B3: db $86;X
L0261B4: db $7D;X
L0261B5: db $C6;X
L0261B6: db $01;X
L0261B7: db $6F;X
L0261B8: db $36;X
L0261B9: db $00;X
L0261BA: db $C6;X
L0261BB: db $21;X
L0261BC: db $6F;X
L0261BD: db $36;X
L0261BE: db $02;X
L0261BF: db $C6;X
L0261C0: db $0B;X
L0261C1: db $6F;X
L0261C2: db $36;X
L0261C3: db $02;X
L0261C4: db $C9;X
L0261C5: db $21;X
L0261C6: db $90;X
L0261C7: db $45;X
L0261C8: db $3E;X
L0261C9: db $01;X
L0261CA: db $C7;X
L0261CB: db $7B;X
L0261CC: db $C6;X
L0261CD: db $07;X
L0261CE: db $6F;X
L0261CF: db $62;X
L0261D0: db $78;X
L0261D1: db $A7;X
L0261D2: db $28;X
L0261D3: db $02;X
L0261D4: db $3E;X
L0261D5: db $80;X
L0261D6: db $77;X
L0261D7: db $1A;X
L0261D8: db $A7;X
L0261D9: db $01;X
L0261DA: db $47;X
L0261DB: db $64;X
L0261DC: db $28;X
L0261DD: db $03;X
L0261DE: db $01;X
L0261DF: db $A0;X
L0261E0: db $64;X
L0261E1: db $CD;X
L0261E2: db $17;X
L0261E3: db $08;X
L0261E4: db $F0;X
L0261E5: db $C0;X
L0261E6: db $E6;X
L0261E7: db $0F;X
L0261E8: db $FE;X
L0261E9: db $08;X
L0261EA: db $28;X
L0261EB: db $05;X
L0261EC: db $FE;X
L0261ED: db $0C;X
L0261EE: db $C4;X
L0261EF: db $17;X
L0261F0: db $08;X
L0261F1: db $21;X
L0261F2: db $46;X
L0261F3: db $4E;X
L0261F4: db $3E;X
L0261F5: db $01;X
L0261F6: db $C7;X
L0261F7: db $F0;X
L0261F8: db $B1;X
L0261F9: db $C6;X
L0261FA: db $28;X
L0261FB: db $5F;X
L0261FC: db $C6;X
L0261FD: db $FC;X
L0261FE: db $6F;X
L0261FF: db $62;X
L026200: db $1A;X
L026201: db $C6;X
L026202: db $9C;X
L026203: db $4F;X
L026204: db $06;X
L026205: db $C0;X
L026206: db $0A;X
L026207: db $77;X
L026208: db $F0;X
L026209: db $C0;X
L02620A: db $E6;X
L02620B: db $0F;X
L02620C: db $FE;X
L02620D: db $08;X
L02620E: db $28;X
L02620F: db $10;X
L026210: db $FE;X
L026211: db $0C;X
L026212: db $28;X
L026213: db $0C;X
L026214: db $FA;X
L026215: db $06;X
L026216: db $B0;X
L026217: db $A7;X
L026218: db $28;X
L026219: db $06;X
L02621A: db $2C;X
L02621B: db $2C;X
L02621C: db $3E;X
L02621D: db $FF;X
L02621E: db $32;X
L02621F: db $2D;X
L026220: db $7B;X
L026221: db $C6;X
L026222: db $E5;X
L026223: db $4F;X
L026224: db $C6;X
L026225: db $F9;X
L026226: db $6F;X
L026227: db $1A;X
L026228: db $59;X
L026229: db $A7;X
L02622A: db $3E;X
L02622B: db $4A;X
L02622C: db $28;X
L02622D: db $02;X
L02622E: db $3E;X
L02622F: db $B2;X
L026230: db $12;X
L026231: db $36;X
L026232: db $80;X
L026233: db $2C;X
L026234: db $2C;X
L026235: db $36;X
L026236: db $06;X
L026237: db $2C;X
L026238: db $36;X
L026239: db $03;X
L02623A: db $CD;X
L02623B: db $26;X
L02623C: db $1F;X
L02623D: db $7B;X
L02623E: db $C6;X
L02623F: db $24;X
L026240: db $5F;X
L026241: db $C6;X
L026242: db $04;X
L026243: db $6F;X
L026244: db $62;X
L026245: db $FA;X
L026246: db $1A;X
L026247: db $C0;X
L026248: db $A7;X
L026249: db $28;X
L02624A: db $14;X
L02624B: db $7E;X
L02624C: db $A7;X
L02624D: db $28;X
L02624E: db $10;X
L02624F: db $1A;X
L026250: db $4F;X
L026251: db $FA;X
L026252: db $8C;X
L026253: db $C1;X
L026254: db $E6;X
L026255: db $07;X
L026256: db $B9;X
L026257: db $12;X
L026258: db $20;X
L026259: db $68;X
L02625A: db $01;X
L02625B: db $00;X
L02625C: db $00;X
L02625D: db $18;X
L02625E: db $68;X
L02625F: db $F0;X
L026260: db $A1;X
L026261: db $4F;X
L026262: db $06;X
L026263: db $00;X
L026264: db $FA;X
L026265: db $96;X
L026266: db $C0;X
L026267: db $BE;X
L026268: db $20;X
L026269: db $08;X
L02626A: db $A7;X
L02626B: db $28;X
L02626C: db $0D;X
L02626D: db $F0;X
L02626E: db $A8;X
L02626F: db $4F;X
L026270: db $18;X
L026271: db $08;X
L026272: db $A7;X
L026273: db $F0;X
L026274: db $A1;X
L026275: db $20;X
L026276: db $50;X
L026277: db $F0;X
L026278: db $A5;X
L026279: db $4F;X
L02627A: db $06;X
L02627B: db $01;X
L02627C: db $68;X
L02627D: db $F0;X
L02627E: db $C0;X
L02627F: db $E6;X
L026280: db $0F;X
L026281: db $FE;X
L026282: db $08;X
L026283: db $28;X
L026284: db $04;X
L026285: db $FE;X
L026286: db $0C;X
L026287: db $20;X
L026288: db $02;X
L026289: db $2E;X
L02628A: db $02;X
L02628B: db $CB;X
L02628C: db $71;X
L02628D: db $20;X
L02628E: db $0D;X
L02628F: db $CB;X
L026290: db $79;X
L026291: db $28;X
L026292: db $34;X
L026293: db $1A;X
L026294: db $FE;X
L026295: db $04;X
L026296: db $28;X
L026297: db $2F;X
L026298: db $85;X
L026299: db $12;X
L02629A: db $18;X
L02629B: db $06;X
L02629C: db $1A;X
L02629D: db $A7;X
L02629E: db $28;X
L02629F: db $27;X
L0262A0: db $95;X
L0262A1: db $12;X
L0262A2: db $FA;X
L0262A3: db $1A;X
L0262A4: db $C0;X
L0262A5: db $FE;X
L0262A6: db $01;X
L0262A7: db $20;X
L0262A8: db $19;X
L0262A9: db $CB;X
L0262AA: db $46;X
L0262AB: db $20;X
L0262AC: db $15;X
L0262AD: db $C5;X
L0262AE: db $CD;X
L0262AF: db $EC;X
L0262B0: db $22;X
L0262B1: db $FE;X
L0262B2: db $02;X
L0262B3: db $DA;X
L0262B4: db $2C;X
L0262B5: db $23;X
L0262B6: db $3E;X
L0262B7: db $20;X
L0262B8: db $2C;X
L0262B9: db $77;X
L0262BA: db $2C;X
L0262BB: db $1A;X
L0262BC: db $2C;X
L0262BD: db $22;X
L0262BE: db $7D;X
L0262BF: db $E0;X
L0262C0: db $CE;X
L0262C1: db $C1;X
L0262C2: db $3E;X
L0262C3: db $2A;X
L0262C4: db $CD;X
L0262C5: db $4E;X
L0262C6: db $3B;X
L0262C7: db $C5;X
L0262C8: db $7B;X
L0262C9: db $C6;X
L0262CA: db $FB;X
L0262CB: db $6F;X
L0262CC: db $62;X
L0262CD: db $1A;X
L0262CE: db $47;X
L0262CF: db $87;X
L0262D0: db $87;X
L0262D1: db $87;X
L0262D2: db $C6;X
L0262D3: db $83;X
L0262D4: db $77;X
L0262D5: db $4F;X
L0262D6: db $7B;X
L0262D7: db $C6;X
L0262D8: db $0A;X
L0262D9: db $5F;X
L0262DA: db $1A;X
L0262DB: db $80;X
L0262DC: db $C6;X
L0262DD: db $08;X
L0262DE: db $12;X
L0262DF: db $F6;X
L0262E0: db $80;X
L0262E1: db $C5;X
L0262E2: db $CD;X
L0262E3: db $D2;X
L0262E4: db $0E;X
L0262E5: db $69;X
L0262E6: db $60;X
L0262E7: db $C1;X
L0262E8: db $29;X
L0262E9: db $29;X
L0262EA: db $7B;X
L0262EB: db $C6;X
L0262EC: db $E3;X
L0262ED: db $5F;X
L0262EE: db $7C;X
L0262EF: db $81;X
L0262F0: db $12;X
L0262F1: db $C1;X
L0262F2: db $7B;X
L0262F3: db $C6;X
L0262F4: db $17;X
L0262F5: db $6F;X
L0262F6: db $62;X
L0262F7: db $C6;X
L0262F8: db $FE;X
L0262F9: db $5F;X
L0262FA: db $FA;X
L0262FB: db $1A;X
L0262FC: db $C0;X
L0262FD: db $FE;X
L0262FE: db $01;X
L0262FF: db $20;X
L026300: db $0E;X
L026301: db $CB;X
L026302: db $46;X
L026303: db $28;X
L026304: db $0A;X
L026305: db $FA;X
L026306: db $8C;X
L026307: db $C1;X
L026308: db $CB;X
L026309: db $67;X
L02630A: db $CA;X
L02630B: db $D8;X
L02630C: db $63;X
L02630D: db $18;X
L02630E: db $4A;X
L02630F: db $1A;X
L026310: db $A7;X
L026311: db $28;X
L026312: db $04;X
L026313: db $3D;X
L026314: db $12;X
L026315: db $28;X
L026316: db $24;X
L026317: db $78;X
L026318: db $A7;X
L026319: db $28;X
L02631A: db $05;X
L02631B: db $79;X
L02631C: db $E6;X
L02631D: db $0B;X
L02631E: db $20;X
L02631F: db $1B;X
L026320: db $F0;X
L026321: db $B1;X
L026322: db $C6;X
L026323: db $28;X
L026324: db $5F;X
L026325: db $C6;X
L026326: db $07;X
L026327: db $6F;X
L026328: db $62;X
L026329: db $CB;X
L02632A: db $7E;X
L02632B: db $28;X
L02632C: db $0B;X
L02632D: db $1A;X
L02632E: db $A7;X
L02632F: db $28;X
L026330: db $07;X
L026331: db $FA;X
L026332: db $47;X
L026333: db $D4;X
L026334: db $CB;X
L026335: db $47;X
L026336: db $28;X
L026337: db $03;X
L026338: db $C3;X
L026339: db $D8;X
L02633A: db $63;X
L02633B: db $FA;X
L02633C: db $1A;X
L02633D: db $C0;X
L02633E: db $FE;X
L02633F: db $01;X
L026340: db $20;X
L026341: db $17;X
L026342: db $CD;X
L026343: db $EC;X
L026344: db $22;X
L026345: db $FE;X
L026346: db $02;X
L026347: db $DA;X
L026348: db $2C;X
L026349: db $23;X
L02634A: db $3E;X
L02634B: db $20;X
L02634C: db $2C;X
L02634D: db $77;X
L02634E: db $2C;X
L02634F: db $1D;X
L026350: db $1D;X
L026351: db $1A;X
L026352: db $F6;X
L026353: db $10;X
L026354: db $2C;X
L026355: db $22;X
L026356: db $7D;X
L026357: db $E0;X
L026358: db $CE;X
L026359: db $3E;X
L02635A: db $2B;X
L02635B: db $CD;X
L02635C: db $4E;X
L02635D: db $3B;X
L02635E: db $CD;X
L02635F: db $D8;X
L026360: db $63;X
L026361: db $01;X
L026362: db $15;X
L026363: db $00;X
L026364: db $CD;X
L026365: db $E8;X
L026366: db $1E;X
L026367: db $7B;X
L026368: db $C6;X
L026369: db $07;X
L02636A: db $5F;X
L02636B: db $1A;X
L02636C: db $C6;X
L02636D: db $40;X
L02636E: db $12;X
L02636F: db $1D;X
L026370: db $E6;X
L026371: db $80;X
L026372: db $12;X
L026373: db $CD;X
L026374: db $D8;X
L026375: db $63;X
L026376: db $CD;X
L026377: db $F3;X
L026378: db $1E;X
L026379: db $21;X
L02637A: db $BA;X
L02637B: db $4D;X
L02637C: db $3E;X
L02637D: db $01;X
L02637E: db $C7;X
L02637F: db $F0;X
L026380: db $B1;X
L026381: db $C6;X
L026382: db $28;X
L026383: db $5F;X
L026384: db $C6;X
L026385: db $0E;X
L026386: db $6F;X
L026387: db $62;X
L026388: db $2A;X
L026389: db $66;X
L02638A: db $C6;X
L02638B: db $08;X
L02638C: db $6F;X
L02638D: db $36;X
L02638E: db $00;X
L02638F: db $C6;X
L026390: db $21;X
L026391: db $6F;X
L026392: db $1A;X
L026393: db $C6;X
L026394: db $9C;X
L026395: db $4F;X
L026396: db $06;X
L026397: db $C0;X
L026398: db $7B;X
L026399: db $C6;X
L02639A: db $FC;X
L02639B: db $5F;X
L02639C: db $1A;X
L02639D: db $02;X
L02639E: db $77;X
L02639F: db $EA;X
L0263A0: db $CE;X
L0263A1: db $C0;X
L0263A2: db $4F;X
L0263A3: db $7D;X
L0263A4: db $C6;X
L0263A5: db $0B;X
L0263A6: db $6F;X
L0263A7: db $71;X
L0263A8: db $C6;X
L0263A9: db $D3;X
L0263AA: db $6F;X
L0263AB: db $CB;X
L0263AC: db $86;X
L0263AD: db $F0;X
L0263AE: db $C0;X
L0263AF: db $E6;X
L0263B0: db $0F;X
L0263B1: db $FE;X
L0263B2: db $08;X
L0263B3: db $28;X
L0263B4: db $0E;X
L0263B5: db $FE;X
L0263B6: db $0C;X
L0263B7: db $28;X
L0263B8: db $0D;X
L0263B9: db $CD;X
L0263BA: db $26;X
L0263BB: db $1F;X
L0263BC: db $FA;X
L0263BD: db $93;X
L0263BE: db $C0;X
L0263BF: db $A7;X
L0263C0: db $C2;X
L0263C1: db $D8;X
L0263C2: db $63;X
L0263C3: db $C3;X
L0263C4: db $CD;X
L0263C5: db $1E;X
L0263C6: db $F0;X
L0263C7: db $B1;X
L0263C8: db $C6;X
L0263C9: db $36;X
L0263CA: db $6F;X
L0263CB: db $62;X
L0263CC: db $2A;X
L0263CD: db $66;X
L0263CE: db $C6;X
L0263CF: db $29;X
L0263D0: db $6F;X
L0263D1: db $7E;X
L0263D2: db $EA;X
L0263D3: db $10;X
L0263D4: db $C1;X
L0263D5: db $C3;X
L0263D6: db $CD;X
L0263D7: db $1E;X
L0263D8: db $FA;X
L0263D9: db $1A;X
L0263DA: db $C0;X
L0263DB: db $FE;X
L0263DC: db $01;X
L0263DD: db $C8;X
L0263DE: db $F0;X
L0263DF: db $C0;X
L0263E0: db $E6;X
L0263E1: db $0F;X
L0263E2: db $FE;X
L0263E3: db $08;X
L0263E4: db $C8;X
L0263E5: db $FE;X
L0263E6: db $0C;X
L0263E7: db $C8;X
L0263E8: db $FA;X
L0263E9: db $47;X
L0263EA: db $D4;X
L0263EB: db $4F;X
L0263EC: db $FA;X
L0263ED: db $87;X
L0263EE: db $D4;X
L0263EF: db $B1;X
L0263F0: db $CB;X
L0263F1: db $47;X
L0263F2: db $C8;X
L0263F3: db $F0;X
L0263F4: db $B1;X
L0263F5: db $C6;X
L0263F6: db $28;X
L0263F7: db $6F;X
L0263F8: db $62;X
L0263F9: db $C6;X
L0263FA: db $E5;X
L0263FB: db $5F;X
L0263FC: db $7E;X
L0263FD: db $A7;X
L0263FE: db $20;X
L0263FF: db $22;X
L026400: db $F0;X
L026401: db $A1;X
L026402: db $CB;X
L026403: db $6F;X
L026404: db $28;X
L026405: db $09;X
L026406: db $FA;X
L026407: db $96;X
L026408: db $C0;X
L026409: db $A7;X
L02640A: db $28;X
L02640B: db $16;X
L02640C: db $3D;X
L02640D: db $18;X
L02640E: db $0B;X
L02640F: db $CB;X
L026410: db $67;X
L026411: db $28;X
L026412: db $0F;X
L026413: db $FA;X
L026414: db $96;X
L026415: db $C0;X
L026416: db $A7;X
L026417: db $20;X
L026418: db $09;X
L026419: db $3C;X
L02641A: db $EA;X
L02641B: db $96;X
L02641C: db $C0;X
L02641D: db $3E;X
L02641E: db $3B;X
L02641F: db $CD;X
L026420: db $4E;X
L026421: db $3B;X
L026422: db $FA;X
L026423: db $96;X
L026424: db $C0;X
L026425: db $BE;X
L026426: db $C0;X
L026427: db $1A;X
L026428: db $D6;X
L026429: db $30;X
L02642A: db $E0;X
L02642B: db $D0;X
L02642C: db $7B;X
L02642D: db $C6;X
L02642E: db $12;X
L02642F: db $6F;X
L026430: db $7E;X
L026431: db $D6;X
L026432: db $23;X
L026433: db $E0;X
L026434: db $D1;X
L026435: db $3E;X
L026436: db $6C;X
L026437: db $E0;X
L026438: db $D2;X
L026439: db $FA;X
L02643A: db $11;X
L02643B: db $C0;X
L02643C: db $E6;X
L02643D: db $02;X
L02643E: db $28;X
L02643F: db $02;X
L026440: db $3E;X
L026441: db $11;X
L026442: db $E0;X
L026443: db $D3;X
L026444: db $C3;X
L026445: db $0C;X
L026446: db $21;X
L026447: db $C1;X
L026448: db $DC;X
L026449: db $53;X
L02644A: db $45;X
L02644B: db $4C;X
L02644C: db $45;X
L02644D: db $43;X
L02644E: db $54;X
L02644F: db $FE;X
L026450: db $02;X
L026451: db $DD;X
L026452: db $4C;X
L026453: db $45;X
L026454: db $56;X
L026455: db $45;X
L026456: db $4C;X
L026457: db $FE;X
L026458: db $22;X
L026459: db $DD;X
L02645A: db $1A;X
L02645B: db $1B;X
L02645C: db $1B;X
L02645D: db $1B;X
L02645E: db $1C;X
L02645F: db $FE;X
L026460: db $42;X
L026461: db $DD;X
L026462: db $1F;X
L026463: db $20;X
L026464: db $20;X
L026465: db $31;X
L026466: db $1F;X
L026467: db $FE;X
L026468: db $62;X
L026469: db $DD;X
L02646A: db $1F;X
L02646B: db $20;X
L02646C: db $20;X
L02646D: db $20;X
L02646E: db $1F;X
L02646F: db $FE;X
L026470: db $82;X
L026471: db $DD;X
L026472: db $1F;X
L026473: db $20;X
L026474: db $20;X
L026475: db $33;X
L026476: db $1F;X
L026477: db $FE;X
L026478: db $A2;X
L026479: db $DD;X
L02647A: db $1F;X
L02647B: db $20;X
L02647C: db $20;X
L02647D: db $20;X
L02647E: db $1F;X
L02647F: db $FE;X
L026480: db $C2;X
L026481: db $DD;X
L026482: db $1F;X
L026483: db $20;X
L026484: db $20;X
L026485: db $35;X
L026486: db $1F;X
L026487: db $FE;X
L026488: db $E2;X
L026489: db $DD;X
L02648A: db $1D;X
L02648B: db $1B;X
L02648C: db $1B;X
L02648D: db $1B;X
L02648E: db $1E;X
L02648F: db $FF;X
L026490: db $62;X
L026491: db $DD;X
L026492: db $1F;X
L026493: db $20;X
L026494: db $20;X
L026495: db $32;X
L026496: db $1F;X
L026497: db $FE;X
L026498: db $A2;X
L026499: db $DD;X
L02649A: db $1F;X
L02649B: db $20;X
L02649C: db $20;X
L02649D: db $34;X
L02649E: db $1F;X
L02649F: db $FF;X
L0264A0: db $CE;X
L0264A1: db $DC;X
L0264A2: db $53;X
L0264A3: db $45;X
L0264A4: db $4C;X
L0264A5: db $45;X
L0264A6: db $43;X
L0264A7: db $54;X
L0264A8: db $FE;X
L0264A9: db $0F;X
L0264AA: db $DD;X
L0264AB: db $4C;X
L0264AC: db $45;X
L0264AD: db $56;X
L0264AE: db $45;X
L0264AF: db $4C;X
L0264B0: db $FE;X
L0264B1: db $2F;X
L0264B2: db $DD;X
L0264B3: db $1A;X
L0264B4: db $1B;X
L0264B5: db $1B;X
L0264B6: db $1B;X
L0264B7: db $1C;X
L0264B8: db $FE;X
L0264B9: db $4F;X
L0264BA: db $DD;X
L0264BB: db $1F;X
L0264BC: db $20;X
L0264BD: db $20;X
L0264BE: db $31;X
L0264BF: db $1F;X
L0264C0: db $FE;X
L0264C1: db $6F;X
L0264C2: db $DD;X
L0264C3: db $1F;X
L0264C4: db $20;X
L0264C5: db $20;X
L0264C6: db $20;X
L0264C7: db $1F;X
L0264C8: db $FE;X
L0264C9: db $8F;X
L0264CA: db $DD;X
L0264CB: db $1F;X
L0264CC: db $20;X
L0264CD: db $20;X
L0264CE: db $33;X
L0264CF: db $1F;X
L0264D0: db $FE;X
L0264D1: db $AF;X
L0264D2: db $DD;X
L0264D3: db $1F;X
L0264D4: db $20;X
L0264D5: db $20;X
L0264D6: db $20;X
L0264D7: db $1F;X
L0264D8: db $FE;X
L0264D9: db $CF;X
L0264DA: db $DD;X
L0264DB: db $1F;X
L0264DC: db $20;X
L0264DD: db $20;X
L0264DE: db $35;X
L0264DF: db $1F;X
L0264E0: db $FE;X
L0264E1: db $EF;X
L0264E2: db $DD;X
L0264E3: db $1D;X
L0264E4: db $1B;X
L0264E5: db $1B;X
L0264E6: db $1B;X
L0264E7: db $1E;X
L0264E8: db $FF;X
L0264E9: db $6F;X
L0264EA: db $DD;X
L0264EB: db $1F;X
L0264EC: db $20;X
L0264ED: db $20;X
L0264EE: db $32;X
L0264EF: db $1F;X
L0264F0: db $FE;X
L0264F1: db $AF;X
L0264F2: db $DD;X
L0264F3: db $1F;X
L0264F4: db $20;X
L0264F5: db $20;X
L0264F6: db $34;X
L0264F7: db $1F;X
L0264F8: db $FF;X
L0264F9:;I
	call L024000
	push de
	ld   hl, $0100
	add  hl, bc
	push hl
	ld   hl, $0168
	add  hl, bc
	push hl
	ld   d, $08
	sub  a
L02650A:;R
	ldi  [hl], a
	dec  d
	jr   nz, $650A
	pop  de
	ld   a, c
	add  $08
	ld   l, a
	ld   h, b
	push hl
	ld   c, e
	sub  a
	ldh  [$FFF0], a
	ld   a, $0C
L02651B:;R
	ldh  [$FFF2], a
	ld   b, $06
L02651F:;R
	ldi  a, [hl]
	and  a
	jr   z, $6536
	swap a
	and  $07
	cp   $07
	jr   c, $652C
L02652B: db $3D;X
L02652C:;R
	add  c
	ld   e, a
	ld   a, [de]
	inc  a
	ld   [de], a
	ldh  a, [$FFF0]
	inc  a
	ldh  [$FFF0], a
L026536:;R
	dec  b
	jr   nz, $651F
	inc  l
	inc  l
	ldh  a, [$FFF2]
	dec  a
	jr   nz, $651B
	ld   a, c
	add  $07
	ld   e, a
	ldh  a, [$FFF0]
	ld   [de], a
	pop  hl
	pop  de
	ld   b, $06
L02654B:;R
	push hl
	ld   c, $00
L02654E:;R
	ld   a, [hl]
	and  a
	jr   nz, $655C
	inc  c
	ld   a, l
	add  $08
	ld   l, a
	ld   a, c
	cp   $0C
	jr   c, $654E
L02655C:;R
	ld   a, c
	ld   [de], a
	pop  hl
	inc  l
	inc  e
	dec  b
	jr   nz, $654B
	ld   h, d
	ld   a, e
	sub  $05
	ld   e, a
	dec  a
	ld   l, a
	ld   a, [de]
	and  a
	jr   nz, $6570
	ld   [hl], a
L026570:;R
	inc  e
	inc  e
	ld   l, e
	inc  l
	ld   a, [de]
	and  a
	jr   nz, $657C
L026578: db $22;X
L026579: db $77;X
L02657A: db $18;X
L02657B: db $07;X
L02657C:;R
	inc  e
	ld   a, [de]
	and  a
	jr   nz, $6583
L026581: db $2C;X
L026582: db $77;X
L026583:;R
	pop  de
	ret  
L026585:;I
	sub  a
	ldh  [$FFD0], a
	ld   [$C0B6], a
	call L024000
	ld   a, c
	add  $08
	ld   l, a
	ld   h, b
	ld   b, l
	ld   e, $60
L026596:;R
	ld   a, [hl]
	and  $F0
	ldi  [hl], a
	dec  e
	jr   nz, $6596
	ld   l, b
	inc  h
	ld   e, $60
	ld   a, $80
L0265A3:;R
	ldi  [hl], a
	dec  e
	jr   nz, $65A3
	ld   l, b
	push de
	ld   e, $0C
L0265AB:;R
	ld   d, $06
L0265AD:;R
	ld   a, [hl]
	and  $7F
	jr   nz, $65BD
	dec  h
	ld   a, [hl]
	and  a
	jr   z, $65BC
	cp   $D0
	call c, $664D
L0265BC:;R
	inc  h
L0265BD:;R
	inc  l
	dec  d
	jr   nz, $65AD
	inc  l
	inc  l
	dec  e
	jr   nz, $65AB
	pop  de
	ldh  a, [$FFB1]
	add  $24
	ld   e, a
	add  $04
	ld   c, a
	ldh  a, [$FFD0]
	ld   [de], a
	ld   e, c
	dec  h
	ld   l, $80
	and  a
	ret  z
	ld   b, a
	ld   a, [$C0F0]
	and  a
	ret  z
L0265DE: db $E6;X
L0265DF: db $7F;X
L0265E0: db $FE;X
L0265E1: db $02;X
L0265E2: db $28;X
L0265E3: db $0C;X
L0265E4: db $D0;X
L0265E5: db $0E;X
L0265E6: db $00;X
L0265E7: db $2A;X
L0265E8: db $81;X
L0265E9: db $4F;X
L0265EA: db $2C;X
L0265EB: db $05;X
L0265EC: db $20;X
L0265ED: db $F9;X
L0265EE: db $18;X
L0265EF: db $25;X
L0265F0: db $97;X
L0265F1: db $E0;X
L0265F2: db $F0;X
L0265F3: db $E0;X
L0265F4: db $F1;X
L0265F5: db $E0;X
L0265F6: db $F2;X
L0265F7: db $E0;X
L0265F8: db $F3;X
L0265F9: db $E0;X
L0265FA: db $F4;X
L0265FB: db $2C;X
L0265FC: db $2A;X
L0265FD: db $CB;X
L0265FE: db $37;X
L0265FF: db $C6;X
L026600: db $F0;X
L026601: db $4F;X
L026602: db $E2;X
L026603: db $05;X
L026604: db $20;X
L026605: db $F5;X
L026606: db $06;X
L026607: db $05;X
L026608: db $21;X
L026609: db $F0;X
L02660A: db $FF;X
L02660B: db $0E;X
L02660C: db $00;X
L02660D: db $2A;X
L02660E: db $A7;X
L02660F: db $28;X
L026610: db $01;X
L026611: db $0C;X
L026612: db $05;X
L026613: db $20;X
L026614: db $F8;X
L026615: db $1A;X
L026616: db $C6;X
L026617: db $F2;X
L026618: db $6F;X
L026619: db $26;X
L02661A: db $C0;X
L02661B: db $71;X
L02661C: db $FA;X
L02661D: db $1A;X
L02661E: db $C0;X
L02661F: db $A7;X
L026620: db $28;X
L026621: db $08;X
L026622: db $F0;X
L026623: db $B1;X
L026624: db $C6;X
L026625: db $28;X
L026626: db $5F;X
L026627: db $1A;X
L026628: db $A7;X
L026629: db $C0;X
L02662A: db $FA;X
L02662B: db $F0;X
L02662C: db $C0;X
L02662D: db $CB;X
L02662E: db $7F;X
L02662F: db $C0;X
L026630: db $FA;X
L026631: db $11;X
L026632: db $C1;X
L026633: db $A7;X
L026634: db $20;X
L026635: db $09;X
L026636: db $FA;X
L026637: db $F1;X
L026638: db $C0;X
L026639: db $B9;X
L02663A: db $28;X
L02663B: db $08;X
L02663C: db $38;X
L02663D: db $06;X
L02663E: db $C9;X
L02663F: db $FA;X
L026640: db $F1;X
L026641: db $C0;X
L026642: db $B9;X
L026643: db $C0;X
L026644: db $2C;X
L026645: db $2C;X
L026646: db $36;X
L026647: db $01;X
L026648: db $2E;X
L026649: db $F0;X
L02664A: db $CB;X
L02664B: db $FE;X
L02664C: db $C9;X
L02664D:;C
	push de
	push hl
	ld   a, h
	add  $01
	ld   d, a
	ld   e, $88
	ld   a, l
	ld   [de], a
	ld   a, e
	ldh  [$FFF0], a
	inc  e
L02665B:;J
	ld   c, a
	ld   b, d
	ld   a, [bc]
	ld   l, a
	and  $07
	ldh  [$FFF6], a
	ld   a, l
	sub  $08
	ldh  [$FFF7], a
	ld   a, [hl]
	ld   c, a
	and  $F0
	ld   b, a
	ldh  a, [$FFF6]
	and  a
	jr   z, $668A
	bit  3, c
	jr   nz, $668A
	dec  l
	ld   a, [hl]
	cp   b
	jr   nz, $6680
	ld   a, l
	ld   [de], a
	inc  e
	jr   L026685
L026680:;R
	and  $F0
	cp   b
	jr   nz, $6689
L026685:;R
	set  3, c
	set  2, [hl]
L026689:;R
	inc  l
L02668A:;R
	ldh  a, [$FFF6]
	cp   $06
	jr   nc, $66A8
	bit  2, c
	jr   nz, $66A8
	inc  l
	ld   a, [hl]
	cp   b
	jr   nz, $669E
	ld   a, l
	ld   [de], a
	inc  e
	jr   L0266A3
L02669E:;R
	and  $F0
	cp   b
	jr   nz, $66A7
L0266A3:;R
	set  2, c
	set  3, [hl]
L0266A7:;R
	dec  l
L0266A8:;R
	ldh  a, [$FFF7]
	cp   $08
	jr   c, $66CC
	bit  1, c
	jr   nz, $66CC
	ld   a, l
	sub  $08
	ld   l, a
	ld   a, [hl]
	cp   b
	jr   nz, $66BF
L0266BA: db $7D;X
L0266BB: db $12;X
L0266BC: db $1C;X
L0266BD: db $18;X
L0266BE: db $05;X
L0266BF:;R
	and  $F0
	cp   b
	jr   nz, $66C8
L0266C4: db $CB;X
L0266C5: db $C9;X
L0266C6: db $CB;X
L0266C7: db $C6;X
L0266C8:;R
	ld   a, l
	add  $08
	ld   l, a
L0266CC:;R
	ldh  a, [$FFF7]
	cp   $58
	jr   nc, $66F0
	bit  0, c
	jr   nz, $66F0
	ld   a, l
	add  $08
	ld   l, a
	ld   a, [hl]
	cp   b
	jr   nz, $66E3
	ld   a, l
	ld   [de], a
	inc  e
	jr   L0266E8
L0266E3:;R
	and  $F0
	cp   b
	jr   nz, $66EC
L0266E8:;R
	set  0, c
	set  1, [hl]
L0266EC:;R
	ld   a, l
	sub  $08
	ld   l, a
L0266F0:;R
	ld   [hl], c
	ldh  a, [$FFF0]
	inc  a
	ldh  [$FFF0], a
	cp   e
	jp   c, $665B
	ld   a, [$C0E7]
	ld   c, a
	ld   a, e
	sub  $88
	ld   b, a
	cp   c
	jr   nc, $6724
	cp   $02
	jr   nc, $6710
	pop  hl
	inc  h
	ld   [hl], $81
	dec  h
	pop  de
	ret  
L026710:;R
	or   $80
	ld   c, a
	ld   a, h
	add  $01
	ld   d, a
	ld   e, $88
	inc  h
L02671A:;R
	ld   a, [de]
	ld   l, a
	ld   [hl], c
	inc  e
	dec  b
	jr   nz, $671A
	pop  hl
	pop  de
	ret  
L026724:;R
	ld   c, b
	ld   a, h
	add  $01
	ld   d, a
	ld   e, $88
	inc  h
L02672C:;R
	ld   a, [de]
	ld   l, a
	ld   [hl], $01
	inc  e
	dec  b
	jr   nz, $672C
	dec  e
	ld   a, [de]
	ld   l, a
	dec  h
	ld   a, [hl]
	and  $70
	ld   e, a
	ld   d, h
	ld   hl, $FFD0
	ld   a, [hl]
	inc  [hl]
	add  a
	add  $80
	ld   l, a
	ld   h, d
	ld   [hl], c
	inc  l
	ld   [hl], e
	pop  hl
	pop  de
	ret  
L02674D:;I
	sub  a
	ldh  [$FFD1], a
	ldh  [$FFD2], a
	ldh  [$FFD3], a
	call L02401F
	call L024000
	ld   a, [de]
	ldh  [$FFD0], a
	ld   a, e
	add  $E1
	ld   l, a
	ld   h, d
	ld   e, $00
	ld   a, [$C0DB]
	and  a
	jr   z, $676F
L02676A: db $BE;X
L02676B: db $38;X
L02676C: db $02;X
L02676D: db $1E;X
L02676E: db $01;X
L02676F:;R
	ld   a, [hl]
	ldh  [$FFD4], a
	ld   a, c
	add  $08
	ld   l, a
	ld   h, b
	inc  h
	ld   bc, $0000
L02677B:;R
	ld   a, [hl]
	bit  7, a
	jr   nz, $6785
	cp   $01
	call z, $67F9
L026785:;R
	inc  l
	inc  b
	ld   a, b
	cp   $06
	jr   c, $677B
	inc  l
	inc  l
	ld   b, $00
	inc  c
	ld   a, c
	cp   $0C
	jr   c, $677B
	ldh  a, [$FFB1]
	add  $1E
	ld   l, a
	add  $F4
	ld   e, a
	ld   h, d
	ldh  a, [$FFD2]
	ldi  [hl], a
	ld   [hl], $00
	ld   a, [$C0E9]
	and  a
	jr   nz, $67AD
	ld   [de], a
	jr   L0267B8
L0267AD: db $4F;X
L0267AE: db $F0;X
L0267AF: db $D1;X
L0267B0: db $D5;X
L0267B1: db $CD;X
L0267B2: db $D9;X
L0267B3: db $0D;X
L0267B4: db $D1;X
L0267B5: db $7D;X
L0267B6: db $12;X
L0267B7: db $7C;X
L0267B8:;R
	inc  e
	ld   [de], a
	ldh  a, [$FFC0]
	and  $0F
	cp   $0F
	jr   c, $67D0
L0267C2: db $FA;X
L0267C3: db $24;X
L0267C4: db $B0;X
L0267C5: db $FE;X
L0267C6: db $02;X
L0267C7: db $F0;X
L0267C8: db $D4;X
L0267C9: db $4F;X
L0267CA: db $38;X
L0267CB: db $10;X
L0267CC: db $87;X
L0267CD: db $4F;X
L0267CE: db $18;X
L0267CF: db $0C;X
L0267D0:;R
	ldh  a, [$FFD4]
	dec  a
	ld   c, $03
	jr   z, $67DC
	ld   c, a
	add  a
	add  c
	add  a
	ld   c, a
L0267DC:;R
	ldh  a, [$FFD3]
	and  a
	jr   z, $67F0
L0267E1: db $CD;X
L0267E2: db $D9;X
L0267E3: db $0D;X
L0267E4: db $4D;X
L0267E5: db $44;X
L0267E6: db $F0;X
L0267E7: db $B1;X
L0267E8: db $C6;X
L0267E9: db $3E;X
L0267EA: db $6F;X
L0267EB: db $62;X
L0267EC: db $71;X
L0267ED: db $2C;X
L0267EE: db $70;X
L0267EF: db $C9;X
L0267F0:;R
	ld   a, e
	add  $2B
	ld   e, a
	sub  a
	ld   [de], a
	inc  e
	ld   [de], a
	ret  
L0267F9:;C
	ld   a, b
	and  a
	jr   z, $6823
	dec  l
	dec  h
	ld   a, [hl]
	inc  h
	cp   $D0
	jr   c, $6822
L026805: db $28;X
L026806: db $0E;X
L026807: db $FE;X
L026808: db $F0;X
L026809: db $20;X
L02680A: db $14;X
L02680B: db $CD;X
L02680C: db $C8;X
L02680D: db $68;X
L02680E: db $3E;X
L02680F: db $00;X
L026810: db $CC;X
L026811: db $E7;X
L026812: db $68;X
L026813: db $18;X
L026814: db $0D;X
L026815: db $CD;X
L026816: db $B0;X
L026817: db $68;X
L026818: db $3E;X
L026819: db $00;X
L02681A: db $CC;X
L02681B: db $9E;X
L02681C: db $69;X
L02681D: db $18;X
L02681E: db $03;X
L02681F: db $CD;X
L026820: db $BD;X
L026821: db $68;X
L026822:;R
	inc  l
L026823:;R
	ld   a, b
	cp   $05
	jr   z, $684E
	inc  l
	dec  h
	ld   a, [hl]
	inc  h
	cp   $D0
	jr   c, $684D
L026830: db $28;X
L026831: db $0E;X
L026832: db $FE;X
L026833: db $F0;X
L026834: db $20;X
L026835: db $14;X
L026836: db $CD;X
L026837: db $C8;X
L026838: db $68;X
L026839: db $3E;X
L02683A: db $02;X
L02683B: db $CC;X
L02683C: db $E7;X
L02683D: db $68;X
L02683E: db $18;X
L02683F: db $0D;X
L026840: db $CD;X
L026841: db $B0;X
L026842: db $68;X
L026843: db $3E;X
L026844: db $02;X
L026845: db $CC;X
L026846: db $9E;X
L026847: db $69;X
L026848: db $18;X
L026849: db $03;X
L02684A: db $CD;X
L02684B: db $BD;X
L02684C: db $68;X
L02684D:;R
	dec  l
L02684E:;R
	ld   a, c
	and  a
	jr   z, $687E
	ld   a, l
	sub  $08
	ld   l, a
	dec  h
	ld   a, [hl]
	inc  h
	cp   $D0
	jr   c, $687A
L02685D: db $28;X
L02685E: db $0E;X
L02685F: db $FE;X
L026860: db $F0;X
L026861: db $20;X
L026862: db $14;X
L026863: db $CD;X
L026864: db $C8;X
L026865: db $68;X
L026866: db $3E;X
L026867: db $04;X
L026868: db $CC;X
L026869: db $E7;X
L02686A: db $68;X
L02686B: db $18;X
L02686C: db $0D;X
L02686D: db $CD;X
L02686E: db $B0;X
L02686F: db $68;X
L026870: db $3E;X
L026871: db $04;X
L026872: db $CC;X
L026873: db $9E;X
L026874: db $69;X
L026875: db $18;X
L026876: db $03;X
L026877: db $CD;X
L026878: db $BD;X
L026879: db $68;X
L02687A:;R
	ld   a, l
	add  $08
	ld   l, a
	ld   a, c
	cp   $0B
	jr   z, $68AF
	ld   a, l
	add  $08
	ld   l, a
	dec  h
	ld   a, [hl]
	inc  h
	cp   $D0
	jr   c, $68AB
L02688E: db $28;X
L02688F: db $0E;X
L026890: db $FE;X
L026891: db $F0;X
L026892: db $20;X
L026893: db $14;X
L026894: db $CD;X
L026895: db $C8;X
L026896: db $68;X
L026897: db $3E;X
L026898: db $06;X
L026899: db $CC;X
L02689A: db $E7;X
L02689B: db $68;X
L02689C: db $18;X
L02689D: db $0D;X
L02689E: db $CD;X
L02689F: db $B0;X
L0268A0: db $68;X
L0268A1: db $3E;X
L0268A2: db $06;X
L0268A3: db $CC;X
L0268A4: db $9E;X
L0268A5: db $69;X
L0268A6: db $18;X
L0268A7: db $03;X
L0268A8: db $CD;X
L0268A9: db $BD;X
L0268AA: db $68;X
L0268AB:;R
	ld   a, l
	sub  $08
	ld   l, a
L0268AF:;R
	ret  
L0268B0: db $3E;X
L0268B1: db $80;X
L0268B2: db $BE;X
L0268B3: db $C0;X
L0268B4: db $36;X
L0268B5: db $04;X
L0268B6: db $F0;X
L0268B7: db $D3;X
L0268B8: db $3C;X
L0268B9: db $E0;X
L0268BA: db $D3;X
L0268BB: db $97;X
L0268BC: db $C9;X
L0268BD: db $3E;X
L0268BE: db $02;X
L0268BF: db $BE;X
L0268C0: db $C8;X
L0268C1: db $77;X
L0268C2: db $F0;X
L0268C3: db $D1;X
L0268C4: db $3C;X
L0268C5: db $E0;X
L0268C6: db $D1;X
L0268C7: db $C9;X
L0268C8: db $CB;X
L0268C9: db $43;X
L0268CA: db $C0;X
L0268CB: db $3E;X
L0268CC: db $03;X
L0268CD: db $BE;X
L0268CE: db $28;X
L0268CF: db $08;X
L0268D0: db $D0;X
L0268D1: db $77;X
L0268D2: db $F0;X
L0268D3: db $D1;X
L0268D4: db $3C;X
L0268D5: db $E0;X
L0268D6: db $D1;X
L0268D7: db $C9;X
L0268D8: db $36;X
L0268D9: db $02;X
L0268DA: db $F0;X
L0268DB: db $D1;X
L0268DC: db $C6;X
L0268DD: db $05;X
L0268DE: db $E0;X
L0268DF: db $D1;X
L0268E0: db $F0;X
L0268E1: db $D2;X
L0268E2: db $3C;X
L0268E3: db $E0;X
L0268E4: db $D2;X
L0268E5: db $97;X
L0268E6: db $C9;X
L0268E7: db $E5;X
L0268E8: db $D5;X
L0268E9: db $C5;X
L0268EA: db $F5;X
L0268EB: db $06;X
L0268EC: db $02;X
L0268ED: db $21;X
L0268EE: db $37;X
L0268EF: db $69;X
L0268F0: db $CD;X
L0268F1: db $64;X
L0268F2: db $1E;X
L0268F3: db $38;X
L0268F4: db $3D;X
L0268F5: db $7D;X
L0268F6: db $C6;X
L0268F7: db $28;X
L0268F8: db $6F;X
L0268F9: db $F0;X
L0268FA: db $D0;X
L0268FB: db $77;X
L0268FC: db $7D;X
L0268FD: db $C6;X
L0268FE: db $0E;X
L0268FF: db $6F;X
L026900: db $F0;X
L026901: db $B1;X
L026902: db $22;X
L026903: db $72;X
L026904: db $7D;X
L026905: db $C6;X
L026906: db $D6;X
L026907: db $6F;X
L026908: db $F1;X
L026909: db $C6;X
L02690A: db $96;X
L02690B: db $4F;X
L02690C: db $3E;X
L02690D: db $69;X
L02690E: db $CE;X
L02690F: db $00;X
L026910: db $47;X
L026911: db $0A;X
L026912: db $57;X
L026913: db $03;X
L026914: db $0A;X
L026915: db $5F;X
L026916: db $C1;X
L026917: db $78;X
L026918: db $87;X
L026919: db $87;X
L02691A: db $87;X
L02691B: db $82;X
L02691C: db $57;X
L02691D: db $79;X
L02691E: db $87;X
L02691F: db $87;X
L026920: db $87;X
L026921: db $83;X
L026922: db $5F;X
L026923: db $F0;X
L026924: db $B6;X
L026925: db $82;X
L026926: db $77;X
L026927: db $7D;X
L026928: db $C6;X
L026929: db $04;X
L02692A: db $6F;X
L02692B: db $F0;X
L02692C: db $B7;X
L02692D: db $83;X
L02692E: db $77;X
L02692F: db $D1;X
L026930: db $E1;X
L026931: db $C9;X
L026932: db $F1;X
L026933: db $C1;X
L026934: db $D1;X
L026935: db $E1;X
L026936: db $C9;X
L026937: db $7B;X
L026938: db $C6;X
L026939: db $0D;X
L02693A: db $5F;X
L02693B: db $C6;X
L02693C: db $0E;X
L02693D: db $6F;X
L02693E: db $62;X
L02693F: db $1A;X
L026940: db $77;X
L026941: db $7D;X
L026942: db $C6;X
L026943: db $05;X
L026944: db $6F;X
L026945: db $36;X
L026946: db $0A;X
L026947: db $01;X
L026948: db $1A;X
L026949: db $00;X
L02694A: db $CD;X
L02694B: db $E8;X
L02694C: db $1E;X
L02694D: db $CD;X
L02694E: db $F3;X
L02694F: db $1E;X
L026950: db $7B;X
L026951: db $C6;X
L026952: db $06;X
L026953: db $6F;X
L026954: db $62;X
L026955: db $36;X
L026956: db $85;X
L026957: db $2C;X
L026958: db $2C;X
L026959: db $36;X
L02695A: db $06;X
L02695B: db $2C;X
L02695C: db $36;X
L02695D: db $17;X
L02695E: db $01;X
L02695F: db $20;X
L026960: db $00;X
L026961: db $CD;X
L026962: db $E8;X
L026963: db $1E;X
L026964: db $CD;X
L026965: db $F3;X
L026966: db $1E;X
L026967: db $CD;X
L026968: db $6D;X
L026969: db $1F;X
L02696A: db $F0;X
L02696B: db $B1;X
L02696C: db $C6;X
L02696D: db $2E;X
L02696E: db $6F;X
L02696F: db $C6;X
L026970: db $E3;X
L026971: db $5F;X
L026972: db $1A;X
L026973: db $FE;X
L026974: db $54;X
L026975: db $DA;X
L026976: db $CD;X
L026977: db $1E;X
L026978: db $7D;X
L026979: db $C6;X
L02697A: db $ED;X
L02697B: db $5F;X
L02697C: db $62;X
L02697D: db $7E;X
L02697E: db $C6;X
L02697F: db $0B;X
L026980: db $77;X
L026981: db $D6;X
L026982: db $0B;X
L026983: db $D5;X
L026984: db $CD;X
L026985: db $D2;X
L026986: db $0E;X
L026987: db $D1;X
L026988: db $69;X
L026989: db $60;X
L02698A: db $29;X
L02698B: db $29;X
L02698C: db $29;X
L02698D: db $7B;X
L02698E: db $C6;X
L02698F: db $F2;X
L026990: db $6F;X
L026991: db $1A;X
L026992: db $84;X
L026993: db $62;X
L026994: db $77;X
L026995: db $C9;X
L026996: db $F8;X
L026997: db $00;X
L026998: db $08;X
L026999: db $00;X
L02699A: db $00;X
L02699B: db $F8;X
L02699C: db $00;X
L02699D: db $08;X
L02699E: db $E5;X
L02699F: db $D5;X
L0269A0: db $C5;X
L0269A1: db $F5;X
L0269A2: db $CD;X
L0269A3: db $46;X
L0269A4: db $1F;X
L0269A5: db $38;X
L0269A6: db $39;X
L0269A7: db $F0;X
L0269A8: db $D0;X
L0269A9: db $3C;X
L0269AA: db $22;X
L0269AB: db $2C;X
L0269AC: db $36;X
L0269AD: db $07;X
L0269AE: db $F1;X
L0269AF: db $C6;X
L0269B0: db $96;X
L0269B1: db $4F;X
L0269B2: db $3E;X
L0269B3: db $69;X
L0269B4: db $CE;X
L0269B5: db $00;X
L0269B6: db $47;X
L0269B7: db $0A;X
L0269B8: db $57;X
L0269B9: db $03;X
L0269BA: db $0A;X
L0269BB: db $5F;X
L0269BC: db $C1;X
L0269BD: db $78;X
L0269BE: db $87;X
L0269BF: db $87;X
L0269C0: db $87;X
L0269C1: db $82;X
L0269C2: db $57;X
L0269C3: db $79;X
L0269C4: db $87;X
L0269C5: db $87;X
L0269C6: db $87;X
L0269C7: db $83;X
L0269C8: db $5F;X
L0269C9: db $7D;X
L0269CA: db $C6;X
L0269CB: db $05;X
L0269CC: db $6F;X
L0269CD: db $F0;X
L0269CE: db $B6;X
L0269CF: db $82;X
L0269D0: db $D6;X
L0269D1: db $2C;X
L0269D2: db $77;X
L0269D3: db $7D;X
L0269D4: db $C6;X
L0269D5: db $04;X
L0269D6: db $6F;X
L0269D7: db $F0;X
L0269D8: db $B7;X
L0269D9: db $83;X
L0269DA: db $D6;X
L0269DB: db $24;X
L0269DC: db $77;X
L0269DD: db $D1;X
L0269DE: db $E1;X
L0269DF: db $C9;X
L0269E0: db $F1;X
L0269E1: db $C1;X
L0269E2: db $D1;X
L0269E3: db $E1;X
L0269E4: db $C9;X
L0269E5:;CI
	ldh  a, [$FFC0]
	and  $0F
	cp   $08
	ret  nz
L0269EC: db $F0;X
L0269ED: db $B1;X
L0269EE: db $C6;X
L0269EF: db $16;X
L0269F0: db $6F;X
L0269F1: db $62;X
L0269F2: db $2A;X
L0269F3: db $E0;X
L0269F4: db $B3;X
L0269F5: db $4F;X
L0269F6: db $2A;X
L0269F7: db $E0;X
L0269F8: db $B4;X
L0269F9: db $21;X
L0269FA: db $50;X
L0269FB: db $DD;X
L0269FC: db $C3;X
L0269FD: db $76;X
L0269FE: db $0A;X
L0269FF:;I
	ldh  a, [$FFC0]
	and  $0F
	cp   $08
	ret  nz
L026A06: db $C5;X
L026A07: db $21;X
L026A08: db $1E;X
L026A09: db $6A;X
L026A0A: db $06;X
L026A0B: db $02;X
L026A0C: db $CD;X
L026A0D: db $87;X
L026A0E: db $1E;X
L026A0F: db $C1;X
L026A10: db $7D;X
L026A11: db $C6;X
L026A12: db $0A;X
L026A13: db $6F;X
L026A14: db $70;X
L026A15: db $2C;X
L026A16: db $F0;X
L026A17: db $B1;X
L026A18: db $C6;X
L026A19: db $29;X
L026A1A: db $5F;X
L026A1B: db $1A;X
L026A1C: db $77;X
L026A1D: db $C9;X
L026A1E: db $7B;X
L026A1F: db $C6;X
L026A20: db $0A;X
L026A21: db $5F;X
L026A22: db $1A;X
L026A23: db $FE;X
L026A24: db $01;X
L026A25: db $30;X
L026A26: db $06;X
L026A27: db $CD;X
L026A28: db $49;X
L026A29: db $6A;X
L026A2A: db $C3;X
L026A2B: db $CD;X
L026A2C: db $1E;X
L026A2D: db $20;X
L026A2E: db $06;X
L026A2F: db $CD;X
L026A30: db $40;X
L026A31: db $6A;X
L026A32: db $C3;X
L026A33: db $CD;X
L026A34: db $1E;X
L026A35: db $4F;X
L026A36: db $3D;X
L026A37: db $12;X
L026A38: db $79;X
L026A39: db $E6;X
L026A3A: db $03;X
L026A3B: db $C0;X
L026A3C: db $CB;X
L026A3D: db $51;X
L026A3E: db $20;X
L026A3F: db $09;X
L026A40: db $1C;X
L026A41: db $1A;X
L026A42: db $3C;X
L026A43: db $21;X
L026A44: db $F1;X
L026A45: db $DC;X
L026A46: db $C3;X
L026A47: db $51;X
L026A48: db $0A;X
L026A49: db $21;X
L026A4A: db $F1;X
L026A4B: db $DC;X
L026A4C: db $E5;X
L026A4D: db $97;X
L026A4E: db $22;X
L026A4F: db $22;X
L026A50: db $77;X
L026A51: db $E1;X
L026A52: db $3E;X
L026A53: db $03;X
L026A54: db $C3;X
L026A55: db $A2;X
L026A56: db $06;X
L026A57: db $C5;X
L026A58: db $21;X
L026A59: db $1E;X
L026A5A: db $6A;X
L026A5B: db $06;X
L026A5C: db $02;X
L026A5D: db $CD;X
L026A5E: db $87;X
L026A5F: db $1E;X
L026A60: db $C1;X
L026A61: db $7D;X
L026A62: db $C6;X
L026A63: db $0A;X
L026A64: db $6F;X
L026A65: db $70;X
L026A66: db $2C;X
L026A67: db $FA;X
L026A68: db $10;X
L026A69: db $C1;X
L026A6A: db $77;X
L026A6B: db $C9;X
L026A6C:;I
	ld   hl, $C12C
	ld   b, $14
	sub  a
L026A72:;R
	ldi  [hl], a
	dec  b
	jr   nz, $6A72
	ret  
L026A77:;I
	call L0270BE
	call L024000
	ld   a, c
	ldh  [$FFB2], a
	ld   a, b
	ldh  [$FFB3], a
	ld   a, $80
	ldh  [$FFB4], a
	ldh  a, [$FFB1]
	add  $32
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	ldi  a, [hl]
	cp   $05
	jr   c, $6A9E
L026A95: db $CD;X
L026A96: db $98;X
L026A97: db $0D;X
L026A98: db $E6;X
L026A99: db $03;X
L026A9A: db $E0;X
L026A9B: db $D6;X
L026A9C: db $18;X
L026A9D: db $03;X
L026A9E:;R
	ldh  [$FFD6], a
	ld   a, [hl]
	ldh  [$FFD7], a
	call L026EFA
	ldh  [$FFD3], a
	call L027227
	call L026F5A
	call L0270F8
	ld   hl, $C148
	sub  a
	ldh  [$FFD0], a
L026AB7:;R
	ldh  a, [$FFD6]
	call L026B68
	ldh  a, [$FFD7]
	call L026B68
	ldh  a, [$FFD0]
	inc  a
	ldh  [$FFD0], a
	cp   $0C
	jr   c, $6AB7
	push de
	ld   e, $16
	ld   d, $00
	sub  a
	ldh  [$FFF0], a
	ld   hl, $6B10
L026AD5:;R
	ldi  a, [hl]
	ld   b, a
	ldi  a, [hl]
	push hl
	ld   l, a
	ld   h, $C1
	ld   a, [hl]
	and  a
	jr   z, $6AF2
	ld   c, a
	ld   l, b
	ld   a, [hl]
	and  a
	jr   z, $6AF2
	add  c
	jr   nc, $6AEB
L026AE9: db $3E;X
L026AEA: db $FF;X
L026AEB:;R
	cp   d
	jr   c, $6AF2
	ld   d, a
	ld   a, e
	ldh  [$FFF0], a
L026AF2:;R
	pop  hl
	dec  e
	jr   nz, $6AD5
	pop  de
	ldh  a, [$FFF0]
	dec  a
	add  a
	ld   c, a
	ld   b, $00
	ld   hl, $6B3C
	add  hl, bc
	ldh  a, [$FFB1]
	add  $20
	ld   e, a
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ld   a, [$C01B]
	and  [hl]
	ld   [de], a
	ret  
L026B10: db $5B
L026B11: db $5E
L026B12: db $57
L026B13: db $5A
L026B14: db $53
L026B15: db $56
L026B16: db $4F
L026B17: db $52
L026B18: db $4B
L026B19: db $4E
L026B1A: db $5F
L026B1B: db $5A
L026B1C: db $5B
L026B1D: db $56
L026B1E: db $57
L026B1F: db $52
L026B20: db $53
L026B21: db $4E
L026B22: db $4F
L026B23: db $4A
L026B24: db $5F
L026B25: db $5C
L026B26: db $5B
L026B27: db $58
L026B28: db $57
L026B29: db $54
L026B2A: db $53
L026B2B: db $50
L026B2C: db $4F
L026B2D: db $4C
L026B2E: db $4B
L026B2F: db $48
L026B30: db $5D
L026B31: db $5E
L026B32: db $59
L026B33: db $5A
L026B34: db $55
L026B35: db $56
L026B36: db $51
L026B37: db $52
L026B38: db $4D
L026B39: db $4E
L026B3A: db $49
L026B3B: db $4A
L026B3C: db $00
L026B3D: db $00
L026B3E: db $01
L026B3F: db $00
L026B40: db $02
L026B41: db $00
L026B42: db $03
L026B43: db $00
L026B44: db $04;X
L026B45: db $00;X
L026B46: db $05
L026B47: db $00
L026B48: db $00;X
L026B49: db $02;X
L026B4A: db $01;X
L026B4B: db $02;X
L026B4C: db $02;X
L026B4D: db $02;X
L026B4E: db $03;X
L026B4F: db $02;X
L026B50: db $04;X
L026B51: db $02;X
L026B52: db $05;X
L026B53: db $02;X
L026B54: db $00;X
L026B55: db $01;X
L026B56: db $01
L026B57: db $01
L026B58: db $02;X
L026B59: db $01;X
L026B5A: db $03;X
L026B5B: db $01;X
L026B5C: db $04;X
L026B5D: db $01;X
L026B5E: db $01
L026B5F: db $03
L026B60: db $02
L026B61: db $03
L026B62: db $03;X
L026B63: db $03;X
L026B64: db $04
L026B65: db $03
L026B66: db $05;X
L026B67: db $03;X
L026B68:;C
	ldh  [$FFD1], a
	push hl
	call L026BB1
	call L026BD6
	call L026C39
	call L026C59
	pop  hl
	ld   a, [$C140]
	ld   c, a
	ld   a, [$C141]
	ld   b, a
	ld   a, [$C142]
	ld   e, a
	ld   a, [$C01B]
	bit  7, a
	jr   nz, $6B9C
	bit  6, a
	jr   z, $6B94
L026B8F: db $F0;X
L026B90: db $D3;X
L026B91: db $A7;X
L026B92: db $20;X
L026B93: db $05;X
L026B94:;R
	ld   a, c
	add  b
	add  e
	ldi  [hl], a
	ret  
L026B99: db $FA;X
L026B9A: db $1B;X
L026B9B: db $C0;X
L026B9C: db $CB;X
L026B9D: db $57;X
L026B9E: db $20;X
L026B9F: db $0B;X
L026BA0: db $78;X
L026BA1: db $87;X
L026BA2: db $87;X
L026BA3: db $87;X
L026BA4: db $81;X
L026BA5: db $4F;X
L026BA6: db $7B;X
L026BA7: db $87;X
L026BA8: db $81;X
L026BA9: db $22;X
L026BAA: db $C9;X
L026BAB: db $78;X
L026BAC: db $87;X
L026BAD: db $83;X
L026BAE: db $81;X
L026BAF: db $22;X
L026BB0: db $C9;X
L026BB1:;C
	ldh  a, [$FFD3]
	and  a
	jr   z, $6BBB
	sub  a
	ld   [$C147], a
	ret  
L026BBB: db $F0;X
L026BBC: db $D0;X
L026BBD: db $CB;X
L026BBE: db $3F;X
L026BBF: db $3C;X
L026BC0: db $47;X
L026BC1: db $F0;X
L026BC2: db $B6;X
L026BC3: db $C6;X
L026BC4: db $05;X
L026BC5: db $6F;X
L026BC6: db $F0;X
L026BC7: db $B7;X
L026BC8: db $CE;X
L026BC9: db $00;X
L026BCA: db $67;X
L026BCB: db $7E;X
L026BCC: db $87;X
L026BCD: db $05;X
L026BCE: db $20;X
L026BCF: db $FC;X
L026BD0: db $E6;X
L026BD1: db $80;X
L026BD2: db $EA;X
L026BD3: db $47;X
L026BD4: db $C1;X
L026BD5: db $C9;X
L026BD6:;C
	ldh  a, [$FFD1]
	ld   b, a
	ld   hl, $FFB4
	ldh  a, [$FFD0]
	ld   c, a
	add  a
	add  a
	add  c
	add  [hl]
	ldh  [$FFD4], a
	dec  l
	ld   h, [hl]
	add  b
	ld   l, a
	ldh  [$FFD5], a
	ld   a, [hl]
	and  $0F
	ld   [$C140], a
	ld   a, [hl]
	swap a
	and  $0F
	ld   [$C143], a
	call L026C1E
	ld   [$C144], a
	ldh  a, [$FFD4]
	add  $40
	ldh  [$FFD4], a
	ldh  a, [$FFD5]
	add  $40
	ldh  [$FFD5], a
	ld   l, a
	ldh  a, [$FFB3]
	ld   h, a
	ld   a, [hl]
	swap a
	and  $0F
	ld   [$C145], a
	call L026C1E
	ld   [$C146], a
	ret  
L026C1E:;C
	ld   e, $00
	ld   b, $05
	ld   c, l
	ldh  a, [$FFD4]
	ld   l, a
L026C26:;R
	ld   a, l
	cp   c
	jr   z, $6C2F
	ld   a, [hl]
	cp   e
	jr   c, $6C2F
	ld   e, a
L026C2F:;R
	inc  l
	dec  b
	jr   nz, $6C26
	ld   a, e
	swap a
	and  $0F
	ret  
L026C39:;C
	ld   a, [$C140]
	cp   $04
	ret  nc
	ld   a, [$C0E7]
	ld   b, a
	ld   a, [$C143]
	cp   c
	jr   c, $6C50
L026C49: db $79;X
L026C4A: db $C6;X
L026C4B: db $03;X
L026C4C: db $EA;X
L026C4D: db $40;X
L026C4E: db $C1;X
L026C4F: db $C9;X
L026C50:;R
	ld   a, $01
	ld   [$C143], a
	ld   [$C145], a
	ret  
L026C59:;C
	sub  a
	ld   [$C141], a
	ld   [$C142], a
	call L026C9B
	ld   a, [$C145]
	dec  a
	cp   $04
	jr   c, $6C6D
L026C6B: db $3E;X
L026C6C: db $03;X
L026C6D:;R
	ld   c, a
	ld   a, [$C146]
	dec  a
	cp   $04
	jr   c, $6C78
L026C76: db $3E;X
L026C77: db $03;X
L026C78:;R
	add  a
	add  a
	add  c
	ld   c, a
	ld   a, [$C01B]
	bit  2, a
	jr   z, $6C87
	ld   a, c
	add  $20
	ld   c, a
	ld   b, $00
	ld   hl, $6CE7
	add  hl, bc
	ld   a, [hl]
	bit  7, a
	jr   z, $6C97
	ld   a, [$C145]
	add  a
	inc  a
L026C97:;R
	ld   [$C142], a
	ret  
L026C9B:;C
	ld   a, [$C143]
	dec  a
	cp   $04
	jr   c, $6CA5
L026CA3: db $3E;X
L026CA4: db $03;X
L026CA5:;R
	ld   c, a
	ld   a, [$C144]
	dec  a
	cp   $04
	jr   c, $6CB0
L026CAE: db $3E;X
L026CAF: db $03;X
L026CB0:;R
	add  a
	add  a
	add  c
	ld   c, a
	ld   a, [$C147]
	bit  7, a
	jr   z, $6CC1
L026CBB: db $79;X
L026CBC: db $C6;X
L026CBD: db $10;X
L026CBE: db $4F;X
L026CBF: db $18;X
L026CC0: db $0B;X
L026CC1:;R
	ld   a, [$C01B]
	bit  2, a
	jr   z, $6CCC
	ld   a, c
	add  $20
	ld   c, a
	ld   b, $00
	ld   hl, $6CE7
	add  hl, bc
	ld   a, [hl]
	bit  7, a
	jr   z, $6CE3
	ld   a, [$C143]
	cp   $06
	jr   c, $6CE0
L026CDE: db $3E;X
L026CDF: db $06;X
L026CE0:;R
	add  a
	add  $01
L026CE3:;R
	ld   [$C141], a
	ret  
L026CE7: db $03;X
L026CE8: db $05;X
L026CE9: db $07;X
L026CEA: db $FF;X
L026CEB: db $02;X
L026CEC: db $04;X
L026CED: db $06;X
L026CEE: db $FF;X
L026CEF: db $01;X
L026CF0: db $03;X
L026CF1: db $05;X
L026CF2: db $FF;X
L026CF3: db $00;X
L026CF4: db $00;X
L026CF5: db $04;X
L026CF6: db $FF;X
L026CF7: db $03;X
L026CF8: db $05;X
L026CF9: db $07;X
L026CFA: db $00;X
L026CFB: db $02;X
L026CFC: db $04;X
L026CFD: db $06;X
L026CFE: db $00;X
L026CFF: db $01;X
L026D00: db $03;X
L026D01: db $05;X
L026D02: db $00;X
L026D03: db $04;X
L026D04: db $06;X
L026D05: db $08;X
L026D06: db $00;X
L026D07: db $03
L026D08: db $05
L026D09: db $08
L026D0A: db $FF
L026D0B: db $02
L026D0C: db $04
L026D0D: db $08
L026D0E: db $FF
L026D0F: db $01
L026D10: db $03
L026D11: db $08;X
L026D12: db $FF;X
L026D13: db $00
L026D14: db $00;X
L026D15: db $04;X
L026D16: db $FF;X
L026D17:;I
	call L0270BE
	call L024000
	ld   a, c
	ldh  [$FFB2], a
	ld   a, b
	ldh  [$FFB3], a
	ld   a, [$C127]
	and  a
	ld   a, $80
	jr   z, $6D2D
	ld   a, $C0
L026D2D:;R
	ldh  [$FFB4], a
	ldh  a, [$FFB1]
	add  $32
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	ldi  a, [hl]
	ldh  [$FFD6], a
	ld   a, [hl]
	ldh  [$FFD7], a
	sub  a
	ldh  [$FFD0], a
L026D41:;R
	call L026D57
	call L026E79
	ldh  a, [$FFB4]
	add  $05
	ldh  [$FFB4], a
	ldh  a, [$FFD0]
	inc  a
	ldh  [$FFD0], a
	cp   $0C
	jr   c, $6D41
	ret  
L026D57:;C
	ldh  a, [$FFD0]
	and  $01
	ldh  [$FFD3], a
	ldh  a, [$FFD0]
	srl  a
	ldh  [$FFD2], a
	ld   c, a
	ldh  a, [$FFB2]
	add  $00
	add  c
	ld   c, a
	ldh  a, [$FFB3]
	add  $01
	ld   b, a
	ld   a, [bc]
	ld   c, a
	ldh  a, [$FFD3]
	add  c
	ldh  [$FFD3], a
	ld   a, [$C127]
	and  a
	call nz, $6E27
	jr   c, $6DA0
	ldh  a, [$FFD2]
	add  a
	ld   c, a
	ld   b, $00
	ld   hl, $6DAD
	ld   a, [$C01B]
	bit  2, a
	jr   z, $6D92
	ld   hl, $6DB9
	add  hl, bc
	ldh  a, [$FFD3]
	add  [hl]
	ld   c, a
	inc  hl
	ld   a, [hl]
	adc  a, $00
	ld   b, a
	ld   a, [bc]
	add  $10
	ld   c, a
L026DA0:;R
	ldh  a, [$FFB4]
	ld   l, a
	ldh  a, [$FFB3]
	ld   h, a
	ld   a, c
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ld   [hl], a
	ret  
L026DAD: db $C5;X
L026DAE: db $6D;X
L026DAF: db $D3;X
L026DB0: db $6D;X
L026DB1: db $E1;X
L026DB2: db $6D;X
L026DB3: db $D3;X
L026DB4: db $6D;X
L026DB5: db $D3;X
L026DB6: db $6D;X
L026DB7: db $C5;X
L026DB8: db $6D;X
L026DB9: db $EF
L026DBA: db $6D
L026DBB: db $0B
L026DBC: db $6E
L026DBD: db $19
L026DBE: db $6E
L026DBF: db $0B
L026DC0: db $6E
L026DC1: db $FD
L026DC2: db $6D
L026DC3: db $EF
L026DC4: db $6D
L026DC5: db $00;X
L026DC6: db $00;X
L026DC7: db $04;X
L026DC8: db $05;X
L026DC9: db $06;X
L026DCA: db $07;X
L026DCB: db $08;X
L026DCC: db $09;X
L026DCD: db $0A;X
L026DCE: db $0B;X
L026DCF: db $0C;X
L026DD0: db $0D;X
L026DD1: db $0E;X
L026DD2: db $0F;X
L026DD3: db $00;X
L026DD4: db $00;X
L026DD5: db $02;X
L026DD6: db $05;X
L026DD7: db $06;X
L026DD8: db $07;X
L026DD9: db $08;X
L026DDA: db $09;X
L026DDB: db $0A;X
L026DDC: db $0B;X
L026DDD: db $0C;X
L026DDE: db $0D;X
L026DDF: db $0E;X
L026DE0: db $0F;X
L026DE1: db $00;X
L026DE2: db $00;X
L026DE3: db $01;X
L026DE4: db $03;X
L026DE5: db $05;X
L026DE6: db $07;X
L026DE7: db $08;X
L026DE8: db $09;X
L026DE9: db $0A;X
L026DEA: db $0B;X
L026DEB: db $0C;X
L026DEC: db $0D;X
L026DED: db $0E;X
L026DEE: db $0F;X
L026DEF: db $00
L026DF0: db $05
L026DF1: db $05
L026DF2: db $06
L026DF3: db $07
L026DF4: db $08;X
L026DF5: db $09
L026DF6: db $0A
L026DF7: db $0B
L026DF8: db $0C
L026DF9: db $0D
L026DFA: db $0E
L026DFB: db $0F
L026DFC: db $0F
L026DFD: db $00;X
L026DFE: db $03
L026DFF: db $04
L026E00: db $06
L026E01: db $07;X
L026E02: db $08;X
L026E03: db $09
L026E04: db $0A
L026E05: db $0B
L026E06: db $0C;X
L026E07: db $0D
L026E08: db $0E
L026E09: db $0F
L026E0A: db $0F
L026E0B: db $00
L026E0C: db $02
L026E0D: db $02
L026E0E: db $05
L026E0F: db $06
L026E10: db $07
L026E11: db $09
L026E12: db $0A
L026E13: db $0B
L026E14: db $0C
L026E15: db $0D
L026E16: db $0E;X
L026E17: db $0F
L026E18: db $0F
L026E19: db $00
L026E1A: db $00
L026E1B: db $00
L026E1C: db $03;X
L026E1D: db $04
L026E1E: db $06
L026E1F: db $09
L026E20: db $0A
L026E21: db $0B
L026E22: db $0C
L026E23: db $0D
L026E24: db $0E
L026E25: db $0F
L026E26: db $0F
L026E27:;C
	ld   hl, $FFD3
	ldh  a, [$FFD0]
	bit  0, a
	jr   nz, $6E3F
	ld   a, [hl]
	cp   $0B
	jr   c, $6E39
	ld   [hl], $0D
	jr   L026E75
L026E39:;R
	add  $02
	ld   [hl], a
	dec  a
	jr   L026E4A
L026E3F:;R
	ld   a, [hl]
	cp   $0C
	jr   c, $6E49
	jr   nz, $6E75
L026E46: db $34;X
L026E47: db $18;X
L026E48: db $2C;X
L026E49:;R
	inc  [hl]
L026E4A:;R
	add  a
	add  a
	add  a
	dec  l
	add  [hl]
	ld   c, a
	ld   hl, $FFB3
	ld   b, [hl]
	add  $08
	ld   l, a
	ld   h, b
	ld   a, [bc]
	and  $F0
	cp   $D0
	jr   nc, $6E73
	ld   c, a
L026E60:;R
	ld   a, [hl]
	and  $F0
	cp   c
	jr   nz, $6E73
	ld   a, l
	add  $08
	ld   l, a
	ldh  a, [$FFD3]
	inc  a
	ldh  [$FFD3], a
	cp   $0D
	jr   c, $6E60
L026E73:;R
	and  a
	ret  
L026E75:;R
	ld   c, $1F
	scf  
	ret  
L026E79:;C
	ldh  a, [$FFD3]
	sub  $02
	ldh  [$FFD3], a
	ret  c
	ld   hl, $FFB2
	add  a
	add  a
	add  a
	add  $08
	add  [hl]
	ld   c, a
	ldh  a, [$FFD2]
	add  c
	ld   c, a
	inc  l
	ld   b, [hl]
	ld   e, $FF
	call L026EC3
	ld   e, $01
	call L026EC3
	ldh  a, [$FFD3]
	cp   $0B
	ret  z
	ld   a, c
	add  $08
	ld   c, a
	ld   a, [bc]
	ld   e, a
	and  $F0
	ret  z
	cp   $D0
	ret  nc
	ld   a, e
	and  $0C
	ld   e, a
	inc  c
	ld   a, [bc]
	add  a
	and  $04
	and  e
	ret  nz
	dec  c
	dec  c
	ld   a, [bc]
	add  a
	add  a
	and  e
	ret  nz
	inc  c
	ld   l, c
	ld   h, b
	ld   a, [hl]
	jr   L026ED0
L026EC3:;C
	ldh  a, [$FFD2]
	add  e
	cp   $06
	ret  nc
	ld   a, c
	add  e
	ld   l, a
	ld   h, b
	ld   a, [hl]
	and  a
	ret  z
L026ED0:;R
	swap a
	and  $07
	cp   $05
	ret  nc
	ld   e, a
	inc  h
	ld   a, [hl]
	and  $7F
	cp   $10
	jr   c, $6EE2
L026EE0: db $3E;X
L026EE1: db $0F;X
L026EE2:;R
	add  a
	add  a
	add  a
	add  a
	ldh  [$FFF0], a
	ld   hl, $FFB4
	ldd  a, [hl]
	ld   h, [hl]
	add  e
	ld   l, a
	ldh  a, [$FFF0]
	add  [hl]
	jr   nc, $6EF8
L026EF4: db $E6;X
L026EF5: db $0F;X
L026EF6: db $F6;X
L026EF7: db $F0;X
L026EF8:;R
	ld   [hl], a
	ret  
L026EFA:;C
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	ld   bc, $C12C
	and  a
	jr   z, $6F09
	ld   bc, $C136
	ldh  a, [$FFC0]
	and  $0F
	cp   $08
	jr   nc, $6F22
	ld   a, [$B006]
	and  a
	jr   nz, $6F22
	ld   a, [$C0E5]
	cp   $02
	jr   c, $6F22
L026F1E: db $3E;X
L026F1F: db $01;X
L026F20: db $02;X
L026F21: db $C9;X
L026F22:;R
	ld   a, [bc]
	push bc
	ld   e, a
	ldh  a, [$FFB2]
	ld   c, a
	ldh  a, [$FFB3]
	ld   b, a
	ld   hl, $016F
	add  hl, bc
	ld   c, l
	ld   b, h
	ldh  a, [$FFB6]
	add  $03
	ld   l, a
	ldh  a, [$FFB7]
	adc  a, $00
	ld   h, a
	ld   a, e
	and  a
	jr   nz, $6F4E
	ld   a, [bc]
	cp   [hl]
	jr   c, $6F57
	pop  bc
	ld   a, $01
	ld   [bc], a
	inc  c
	sub  a
	ld   [bc], a
	dec  c
	ld   a, $01
	ret  
L026F4E:;R
	ld   a, [bc]
	inc  hl
	cp   [hl]
	jr   nc, $6F57
L026F53: db $C1;X
L026F54: db $97;X
L026F55: db $02;X
L026F56: db $C9;X
L026F57:;R
	pop  bc
	ld   a, [bc]
	ret  
L026F5A:;C
	ldh  a, [$FFB1]
	add  $2F
	ld   e, a
	ld   a, [de]
	add  a
	ld   c, a
	ld   b, $00
	ld   hl, $6F6C
	add  hl, bc
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	jp   hl
L026F6C: db $B0;X
L026F6D: db $6F;X
L026F6E: db $B0;X
L026F6F: db $6F;X
L026F70: db $B1;X
L026F71: db $6F;X
L026F72: db $B0;X
L026F73: db $6F;X
L026F74: db $B0
L026F75: db $6F
L026F76: db $B0;X
L026F77: db $6F;X
L026F78: db $B0;X
L026F79: db $6F;X
L026F7A: db $B0;X
L026F7B: db $6F;X
L026F7C: db $B0;X
L026F7D: db $6F;X
L026F7E: db $B0;X
L026F7F: db $6F;X
L026F80: db $B0;X
L026F81: db $6F;X
L026F82: db $B0;X
L026F83: db $6F;X
L026F84: db $B0;X
L026F85: db $6F;X
L026F86: db $B0;X
L026F87: db $6F;X
L026F88: db $E9;X
L026F89: db $6F;X
L026F8A: db $B0;X
L026F8B: db $6F;X
L026F8C: db $B0;X
L026F8D: db $6F;X
L026F8E: db $B0;X
L026F8F: db $6F;X
L026F90: db $8B;X
L026F91: db $70;X
L026F92: db $B0;X
L026F93: db $6F;X
L026F94: db $6B;X
L026F95: db $70;X
L026F96: db $B0;X
L026F97: db $6F;X
L026F98: db $B0;X
L026F99: db $6F;X
L026F9A: db $B0;X
L026F9B: db $6F;X
L026F9C: db $B0;X
L026F9D: db $6F;X
L026F9E: db $B0;X
L026F9F: db $6F;X
L026FA0: db $B0;X
L026FA1: db $6F;X
L026FA2: db $B0;X
L026FA3: db $6F;X
L026FA4: db $B0;X
L026FA5: db $6F;X
L026FA6: db $B0;X
L026FA7: db $6F;X
L026FA8: db $B0;X
L026FA9: db $6F;X
L026FAA: db $B0;X
L026FAB: db $6F;X
L026FAC: db $F5;X
L026FAD: db $6F;X
L026FAE: db $B0;X
L026FAF: db $6F;X
L026FB0:;I
	ret  
L026FB1: db $F0;X
L026FB2: db $B3;X
L026FB3: db $C6;X
L026FB4: db $01;X
L026FB5: db $67;X
L026FB6: db $2E;X
L026FB7: db $03;X
L026FB8: db $7E;X
L026FB9: db $A7;X
L026FBA: db $C8;X
L026FBB: db $4F;X
L026FBC: db $2C;X
L026FBD: db $7E;X
L026FBE: db $A7;X
L026FBF: db $20;X
L026FC0: db $04;X
L026FC1: db $06;X
L026FC2: db $03;X
L026FC3: db $18;X
L026FC4: db $0D;X
L026FC5: db $4F;X
L026FC6: db $2C;X
L026FC7: db $7E;X
L026FC8: db $A7;X
L026FC9: db $20;X
L026FCA: db $04;X
L026FCB: db $06;X
L026FCC: db $04;X
L026FCD: db $18;X
L026FCE: db $03;X
L026FCF: db $4F;X
L026FD0: db $06;X
L026FD1: db $05;X
L026FD2: db $7B;X
L026FD3: db $C6;X
L026FD4: db $F1;X
L026FD5: db $5F;X
L026FD6: db $78;X
L026FD7: db $12;X
L026FD8: db $1C;X
L026FD9: db $79;X
L026FDA: db $FE;X
L026FDB: db $03;X
L026FDC: db $3E;X
L026FDD: db $00;X
L026FDE: db $38;X
L026FDF: db $05;X
L026FE0: db $CD;X
L026FE1: db $98;X
L026FE2: db $0D;X
L026FE3: db $E6;X
L026FE4: db $02;X
L026FE5: db $12;X
L026FE6: db $C3;X
L026FE7: db $24;X
L026FE8: db $70;X
L026FE9: db $01;X
L026FEA: db $EE;X
L026FEB: db $6F;X
L026FEC: db $18;X
L026FED: db $16;X
L026FEE: db $03;X
L026FEF: db $09;X
L026FF0: db $04;X
L026FF1: db $06;X
L026FF2: db $05;X
L026FF3: db $06;X
L026FF4: db $FF;X
L026FF5: db $F0;X
L026FF6: db $C0;X
L026FF7: db $E6;X
L026FF8: db $0F;X
L026FF9: db $C8;X
L026FFA: db $01;X
L026FFB: db $FF;X
L026FFC: db $6F;X
L026FFD: db $18;X
L026FFE: db $05;X
L026FFF: db $05;X
L027000: db $06;X
L027001: db $00;X
L027002: db $06;X
L027003: db $FF;X
L027004: db $F0;X
L027005: db $B3;X
L027006: db $C6;X
L027007: db $01;X
L027008: db $67;X
L027009: db $0A;X
L02700A: db $CB;X
L02700B: db $7F;X
L02700C: db $C0;X
L02700D: db $03;X
L02700E: db $6F;X
L02700F: db $0A;X
L027010: db $03;X
L027011: db $BE;X
L027012: db $30;X
L027013: db $F5;X
L027014: db $F0;X
L027015: db $B1;X
L027016: db $C6;X
L027017: db $20;X
L027018: db $5F;X
L027019: db $7D;X
L02701A: db $D6;X
L02701B: db $00;X
L02701C: db $12;X
L02701D: db $1C;X
L02701E: db $CD;X
L02701F: db $98;X
L027020: db $0D;X
L027021: db $E6;X
L027022: db $02;X
L027023: db $12;X
L027024: db $F1;X
L027025: db $F0;X
L027026: db $B1;X
L027027: db $C6;X
L027028: db $28;X
L027029: db $5F;X
L02702A: db $1A;X
L02702B: db $A7;X
L02702C: db $28;X
L02702D: db $29;X
L02702E: db $FA;X
L02702F: db $06;X
L027030: db $B0;X
L027031: db $A7;X
L027032: db $20;X
L027033: db $23;X
L027034: db $F0;X
L027035: db $C0;X
L027036: db $E6;X
L027037: db $0F;X
L027038: db $20;X
L027039: db $1D;X
L02703A: db $FA;X
L02703B: db $82;X
L02703C: db $C0;X
L02703D: db $FE;X
L02703E: db $01;X
L02703F: db $28;X
L027040: db $0C;X
L027041: db $30;X
L027042: db $14;X
L027043: db $FA;X
L027044: db $80;X
L027045: db $C0;X
L027046: db $FE;X
L027047: db $05;X
L027048: db $30;X
L027049: db $0D;X
L02704A: db $C3;X
L02704B: db $F8;X
L02704C: db $70;X
L02704D: db $FA;X
L02704E: db $80;X
L02704F: db $C0;X
L027050: db $FE;X
L027051: db $02;X
L027052: db $30;X
L027053: db $03;X
L027054: db $C3;X
L027055: db $F8;X
L027056: db $70;X
L027057: db $F0;X
L027058: db $B1;X
L027059: db $C6;X
L02705A: db $24;X
L02705B: db $6F;X
L02705C: db $62;X
L02705D: db $36;X
L02705E: db $00;X
L02705F: db $2C;X
L027060: db $36;X
L027061: db $00;X
L027062: db $C6;X
L027063: db $06;X
L027064: db $6F;X
L027065: db $36;X
L027066: db $05;X
L027067: db $2C;X
L027068: db $36;X
L027069: db $FF;X
L02706A: db $C9;X
L02706B: db $F0;X
L02706C: db $B3;X
L02706D: db $C6;X
L02706E: db $01;X
L02706F: db $67;X
L027070: db $2E;X
L027071: db $00;X
L027072: db $7E;X
L027073: db $4F;X
L027074: db $2E;X
L027075: db $05;X
L027076: db $B6;X
L027077: db $C8;X
L027078: db $7B;X
L027079: db $C6;X
L02707A: db $F2;X
L02707B: db $5F;X
L02707C: db $97;X
L02707D: db $12;X
L02707E: db $1D;X
L02707F: db $12;X
L027080: db $79;X
L027081: db $BE;X
L027082: db $D2;X
L027083: db $24;X
L027084: db $70;X
L027085: db $3E;X
L027086: db $05;X
L027087: db $12;X
L027088: db $C3;X
L027089: db $24;X
L02708A: db $70;X
L02708B: db $F0;X
L02708C: db $B3;X
L02708D: db $C6;X
L02708E: db $01;X
L02708F: db $67;X
L027090: db $2E;X
L027091: db $6F;X
L027092: db $7E;X
L027093: db $FE;X
L027094: db $18;X
L027095: db $D0;X
L027096: db $F0;X
L027097: db $B3;X
L027098: db $C6;X
L027099: db $01;X
L02709A: db $67;X
L02709B: db $2E;X
L02709C: db $05;X
L02709D: db $1E;X
L02709E: db $06;X
L02709F: db $0E;X
L0270A0: db $00;X
L0270A1: db $7E;X
L0270A2: db $B9;X
L0270A3: db $38;X
L0270A4: db $02;X
L0270A5: db $4F;X
L0270A6: db $45;X
L0270A7: db $2D;X
L0270A8: db $1D;X
L0270A9: db $20;X
L0270AA: db $F6;X
L0270AB: db $F0;X
L0270AC: db $B1;X
L0270AD: db $C6;X
L0270AE: db $20;X
L0270AF: db $5F;X
L0270B0: db $78;X
L0270B1: db $D6;X
L0270B2: db $00;X
L0270B3: db $12;X
L0270B4: db $1C;X
L0270B5: db $CD;X
L0270B6: db $98;X
L0270B7: db $0D;X
L0270B8: db $E6;X
L0270B9: db $02;X
L0270BA: db $12;X
L0270BB: db $C3;X
L0270BC: db $24;X
L0270BD: db $70;X
L0270BE:;C
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	add  $07
	ld   l, a
	ld   h, d
	ld   a, [de]
	and  a
	jr   nz, $70D0
L0270CB: db $FA;X
L0270CC: db $12;X
L0270CD: db $B0;X
L0270CE: db $18;X
L0270CF: db $0E;X
L0270D0:;R
	ldh  a, [$FFC0]
	and  $0F
	jr   nz, $70DB
	ld   a, [$C081]
	jr   L0270DE
L0270DB: db $FA;X
L0270DC: db $13;X
L0270DD: db $B0;X
L0270DE:;R
	ld   [hl], a
	add  a
	ld   c, a
	ld   b, $00
	ld   hl, $747C
	add  hl, bc
	ldi  a, [hl]
	ldh  [$FFB6], a
	add  $07
	ld   c, a
	ld   a, [hl]
	ldh  [$FFB7], a
	adc  a, $00
	ld   b, a
	ld   a, [bc]
	ld   [$C01B], a
	ret  
L0270F8:;C
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	and  a
	jp   z, $7197
	ldh  a, [$FFC0]
	and  $0F
	jp   nz, $7197
	ld   a, [$C082]
	cp   $01
	jr   z, $7129
	jp   nc, $7197
	ld   a, [$C080]
	ld   c, a
	ld   a, [$B010]
	ld   b, a
	cp   $03
	jr   z, $7197
	ld   a, c
	and  a
	jr   z, $7135
L027123: db $FE;X
L027124: db $01;X
L027125: db $28;X
L027126: db $31;X
L027127: db $18;X
L027128: db $50;X
L027129: db $FA;X
L02712A: db $80;X
L02712B: db $C0;X
L02712C: db $4F;X
L02712D: db $FE;X
L02712E: db $01;X
L02712F: db $38;X
L027130: db $27;X
L027131: db $28;X
L027132: db $46;X
L027133: db $18;X
L027134: db $62;X
L027135:;R
	ld   a, [$B010]
	cp   $02
	jr   z, $715F
	jr   nc, $7197
	call L0271BE
	ld   a, $78
	call L0271CA
	call L0271D2
	call L0271DD
	ld   [de], a
	inc  hl
	inc  hl
	ld   a, [hl]
	cp   $03
	jr   c, $71AE
	ld   a, $03
	jr   L0271AE
L027158: db $FA;X
L027159: db $10;X
L02715A: db $B0;X
L02715B: db $FE;X
L02715C: db $02;X
L02715D: db $30;X
L02715E: db $38;X
L02715F: db $CD;X
L027160: db $BE;X
L027161: db $71;X
L027162: db $3E;X
L027163: db $1E;X
L027164: db $CD;X
L027165: db $CA;X
L027166: db $71;X
L027167: db $CD;X
L027168: db $D2;X
L027169: db $71;X
L02716A: db $CD;X
L02716B: db $DD;X
L02716C: db $71;X
L02716D: db $12;X
L02716E: db $23;X
L02716F: db $23;X
L027170: db $7E;X
L027171: db $FE;X
L027172: db $06;X
L027173: db $38;X
L027174: db $39;X
L027175: db $3E;X
L027176: db $06;X
L027177: db $18;X
L027178: db $35;X
L027179: db $FA;X
L02717A: db $10;X
L02717B: db $B0;X
L02717C: db $FE;X
L02717D: db $02;X
L02717E: db $30;X
L02717F: db $17;X
L027180: db $CD;X
L027181: db $BE;X
L027182: db $71;X
L027183: db $3E;X
L027184: db $19;X
L027185: db $CD;X
L027186: db $CA;X
L027187: db $71;X
L027188: db $CD;X
L027189: db $D2;X
L02718A: db $71;X
L02718B: db $12;X
L02718C: db $23;X
L02718D: db $23;X
L02718E: db $7E;X
L02718F: db $FE;X
L027190: db $08;X
L027191: db $38;X
L027192: db $1B;X
L027193: db $3E;X
L027194: db $08;X
L027195: db $18;X
L027196: db $17;X
L027197: db $CD;X
L027198: db $BE;X
L027199: db $71;X
L02719A: db $E5;X
L02719B: db $F0;X
L02719C: db $D3;X
L02719D: db $85;X
L02719E: db $6F;X
L02719F: db $7E;X
L0271A0: db $CD;X
L0271A1: db $CA;X
L0271A2: db $71;X
L0271A3: db $CD;X
L0271A4: db $D2;X
L0271A5: db $71;X
L0271A6: db $CD;X
L0271A7: db $DD;X
L0271A8: db $71;X
L0271A9: db $12;X
L0271AA: db $E1;X
L0271AB: db $23;X
L0271AC: db $23;X
L0271AD: db $7E;X
L0271AE:;R
	call L0271D2
	inc  e
	ld   [de], a
	ld   a, e
	add  $F9
	ld   l, a
	ld   h, d
	ld   [hl], $00
	inc  l
	ld   [hl], $00
	ret  
L0271BE:;C
	ldh  a, [$FFB6]
	ld   l, a
	ldh  a, [$FFB7]
	ld   h, a
	ldh  a, [$FFB1]
	add  $2A
	ld   e, a
	ret  
L0271CA:;C
	ld   c, a
	ld   a, [$C09B]
	add  c
	ret  nc
L0271D0: db $3E;X
L0271D1: db $FF;X
L0271D2:;C
	cp   $FF
	ret  z
	srl  a
	ld   c, a
	call L000DCA
	add  c
	ret  
L0271DD:;C
	cp   $04
	ret  nc
L0271E0: db $3E;X
L0271E1: db $04;X
L0271E2: db $C9;X
L0271E3:;I
	push bc
	push hl
	ld   b, e
	ldh  [$FFF0], a
	ld   hl, $C12D
	ld   c, $34
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	and  a
	jr   z, $71FB
	ld   hl, $C137
	ld   c, $3E
	ld   a, [hl]
	and  a
	jr   z, $7211
L0271FF: db $69;X
L027200: db $F0;X
L027201: db $F0;X
L027202: db $BE;X
L027203: db $38;X
L027204: db $0C;X
L027205: db $2C;X
L027206: db $BE;X
L027207: db $28;X
L027208: db $02;X
L027209: db $30;X
L02720A: db $06;X
L02720B: db $7D;X
L02720C: db $D6;X
L02720D: db $08;X
L02720E: db $6F;X
L02720F: db $36;X
L027210: db $00;X
L027211:;R
	ld   e, b
	pop  hl
	pop  bc
	ret  
L027215:;I
	ld   hl, $C12D
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	and  a
	jr   z, $7224
	ld   hl, $C137
L027224:;R
	ld   [hl], $00
	ret  
L027227:;C
	ld   a, [$C01B]
	bit  3, a
	ret  z
L02722D: db $F0;X
L02722E: db $C0;X
L02722F: db $E6;X
L027230: db $0F;X
L027231: db $C0;X
L027232: db $F0;X
L027233: db $D3;X
L027234: db $A7;X
L027235: db $C0;X
L027236: db $79;X
L027237: db $C6;X
L027238: db $03;X
L027239: db $6F;X
L02723A: db $60;X
L02723B: db $7E;X
L02723C: db $FE;X
L02723D: db $03;X
L02723E: db $30;X
L02723F: db $02;X
L027240: db $34;X
L027241: db $C9;X
L027242: db $2D;X
L027243: db $2D;X
L027244: db $7E;X
L027245: db $A7;X
L027246: db $CA;X
L027247: db $81;X
L027248: db $72;X
L027249: db $87;X
L02724A: db $38;X
L02724B: db $06;X
L02724C: db $F1;X
L02724D: db $36;X
L02724E: db $FF;X
L02724F: db $C3;X
L027250: db $F8;X
L027251: db $70;X
L027252: db $F1;X
L027253: db $79;X
L027254: db $C6;X
L027255: db $04;X
L027256: db $6F;X
L027257: db $7E;X
L027258: db $4F;X
L027259: db $3C;X
L02725A: db $22;X
L02725B: db $46;X
L02725C: db $20;X
L02725D: db $01;X
L02725E: db $34;X
L02725F: db $7D;X
L027260: db $D6;X
L027261: db $03;X
L027262: db $6F;X
L027263: db $F0;X
L027264: db $B1;X
L027265: db $C6;X
L027266: db $20;X
L027267: db $5F;X
L027268: db $0A;X
L027269: db $CB;X
L02726A: db $37;X
L02726B: db $E6;X
L02726C: db $0F;X
L02726D: db $86;X
L02726E: db $12;X
L02726F: db $1C;X
L027270: db $0A;X
L027271: db $E6;X
L027272: db $0F;X
L027273: db $12;X
L027274: db $03;X
L027275: db $0A;X
L027276: db $FE;X
L027277: db $FF;X
L027278: db $C2;X
L027279: db $F8;X
L02727A: db $70;X
L02727B: db $2D;X
L02727C: db $36;X
L02727D: db $00;X
L02727E: db $C3;X
L02727F: db $F8;X
L027280: db $70;X
L027281: db $F0;X
L027282: db $B6;X
L027283: db $C6;X
L027284: db $06;X
L027285: db $6F;X
L027286: db $F0;X
L027287: db $B7;X
L027288: db $CE;X
L027289: db $00;X
L02728A: db $67;X
L02728B: db $7E;X
L02728C: db $CD;X
L02728D: db $B6;X
L02728E: db $0D;X
L02728F: db $87;X
L027290: db $C6;X
L027291: db $B4;X
L027292: db $6F;X
L027293: db $3E;X
L027294: db $73;X
L027295: db $CE;X
L027296: db $00;X
L027297: db $67;X
L027298: db $2A;X
L027299: db $66;X
L02729A: db $6F;X
L02729B: db $CD;X
L02729C: db $AA;X
L02729D: db $72;X
L02729E: db $D8;X
L02729F: db $F1;X
L0272A0: db $CD;X
L0272A1: db $40;X
L0272A2: db $73;X
L0272A3: db $0C;X
L0272A4: db $3E;X
L0272A5: db $01;X
L0272A6: db $02;X
L0272A7: db $C3;X
L0272A8: db $F8;X
L0272A9: db $70;X
L0272AA: db $C5;X
L0272AB: db $FA;X
L0272AC: db $A6;X
L0272AD: db $D3;X
L0272AE: db $4F;X
L0272AF: db $FA;X
L0272B0: db $D6;X
L0272B1: db $D3;X
L0272B2: db $47;X
L0272B3: db $F0;X
L0272B4: db $B1;X
L0272B5: db $C6;X
L0272B6: db $28;X
L0272B7: db $5F;X
L0272B8: db $1A;X
L0272B9: db $A7;X
L0272BA: db $20;X
L0272BB: db $04;X
L0272BC: db $78;X
L0272BD: db $91;X
L0272BE: db $18;X
L0272BF: db $02;X
L0272C0: db $79;X
L0272C1: db $90;X
L0272C2: db $FE;X
L0272C3: db $FE;X
L0272C4: db $38;X
L0272C5: db $03;X
L0272C6: db $C1;X
L0272C7: db $37;X
L0272C8: db $C9;X
L0272C9: db $2A;X
L0272CA: db $E0;X
L0272CB: db $F6;X
L0272CC: db $5E;X
L0272CD: db $0E;X
L0272CE: db $FF;X
L0272CF: db $06;X
L0272D0: db $00;X
L0272D1: db $E5;X
L0272D2: db $2E;X
L0272D3: db $00;X
L0272D4: db $F0;X
L0272D5: db $B3;X
L0272D6: db $C6;X
L0272D7: db $01;X
L0272D8: db $67;X
L0272D9: db $7E;X
L0272DA: db $BB;X
L0272DB: db $38;X
L0272DC: db $0A;X
L0272DD: db $04;X
L0272DE: db $B9;X
L0272DF: db $28;X
L0272E0: db $06;X
L0272E1: db $4F;X
L0272E2: db $06;X
L0272E3: db $01;X
L0272E4: db $7D;X
L0272E5: db $E0;X
L0272E6: db $F0;X
L0272E7: db $F0;X
L0272E8: db $F6;X
L0272E9: db $B8;X
L0272EA: db $28;X
L0272EB: db $0A;X
L0272EC: db $2C;X
L0272ED: db $7D;X
L0272EE: db $FE;X
L0272EF: db $06;X
L0272F0: db $38;X
L0272F1: db $E7;X
L0272F2: db $E1;X
L0272F3: db $C1;X
L0272F4: db $37;X
L0272F5: db $C9;X
L0272F6: db $F0;X
L0272F7: db $F0;X
L0272F8: db $4F;X
L0272F9: db $80;X
L0272FA: db $47;X
L0272FB: db $3D;X
L0272FC: db $E0;X
L0272FD: db $F1;X
L0272FE: db $2E;X
L0272FF: db $00;X
L027300: db $1E;X
L027301: db $00;X
L027302: db $7D;X
L027303: db $B9;X
L027304: db $38;X
L027305: db $03;X
L027306: db $B8;X
L027307: db $38;X
L027308: db $08;X
L027309: db $7E;X
L02730A: db $BB;X
L02730B: db $38;X
L02730C: db $04;X
L02730D: db $5F;X
L02730E: db $7D;X
L02730F: db $E0;X
L027310: db $F2;X
L027311: db $2C;X
L027312: db $7D;X
L027313: db $FE;X
L027314: db $06;X
L027315: db $38;X
L027316: db $EB;X
L027317: db $F0;X
L027318: db $B1;X
L027319: db $C6;X
L02731A: db $20;X
L02731B: db $5F;X
L02731C: db $F0;X
L02731D: db $F2;X
L02731E: db $D6;X
L02731F: db $00;X
L027320: db $12;X
L027321: db $1C;X
L027322: db $97;X
L027323: db $12;X
L027324: db $E1;X
L027325: db $C1;X
L027326: db $23;X
L027327: db $79;X
L027328: db $C6;X
L027329: db $08;X
L02732A: db $5F;X
L02732B: db $0C;X
L02732C: db $0C;X
L02732D: db $F0;X
L02732E: db $F0;X
L02732F: db $D6;X
L027330: db $00;X
L027331: db $02;X
L027332: db $4B;X
L027333: db $02;X
L027334: db $0C;X
L027335: db $F0;X
L027336: db $F1;X
L027337: db $D6;X
L027338: db $00;X
L027339: db $02;X
L02733A: db $79;X
L02733B: db $D6;X
L02733C: db $09;X
L02733D: db $4F;X
L02733E: db $A7;X
L02733F: db $C9;X
L027340: db $C5;X
L027341: db $E5;X
L027342: db $21;X
L027343: db $B2;X
L027344: db $FF;X
L027345: db $36;X
L027346: db $00;X
L027347: db $2C;X
L027348: db $36;X
L027349: db $01;X
L02734A: db $2C;X
L02734B: db $36;X
L02734C: db $02;X
L02734D: db $2C;X
L02734E: db $36;X
L02734F: db $03;X
L027350: db $2C;X
L027351: db $36;X
L027352: db $04;X
L027353: db $FA;X
L027354: db $B8;X
L027355: db $C0;X
L027356: db $E0;X
L027357: db $F1;X
L027358: db $01;X
L027359: db $B2;X
L02735A: db $FF;X
L02735B: db $FA;X
L02735C: db $B8;X
L02735D: db $C0;X
L02735E: db $CD;X
L02735F: db $B6;X
L027360: db $0D;X
L027361: db $C6;X
L027362: db $B2;X
L027363: db $6F;X
L027364: db $26;X
L027365: db $FF;X
L027366: db $5E;X
L027367: db $0A;X
L027368: db $77;X
L027369: db $7B;X
L02736A: db $02;X
L02736B: db $0C;X
L02736C: db $21;X
L02736D: db $F1;X
L02736E: db $FF;X
L02736F: db $35;X
L027370: db $20;X
L027371: db $E9;X
L027372: db $F0;X
L027373: db $B1;X
L027374: db $C6;X
L027375: db $32;X
L027376: db $6F;X
L027377: db $62;X
L027378: db $2A;X
L027379: db $66;X
L02737A: db $C6;X
L02737B: db $06;X
L02737C: db $6F;X
L02737D: db $7E;X
L02737E: db $C6;X
L02737F: db $00;X
L027380: db $4F;X
L027381: db $06;X
L027382: db $D2;X
L027383: db $E1;X
L027384: db $D5;X
L027385: db $16;X
L027386: db $FF;X
L027387: db $2A;X
L027388: db $FE;X
L027389: db $FF;X
L02738A: db $28;X
L02738B: db $1A;X
L02738C: db $C5;X
L02738D: db $47;X
L02738E: db $CB;X
L02738F: db $37;X
L027390: db $E6;X
L027391: db $07;X
L027392: db $C6;X
L027393: db $B2;X
L027394: db $5F;X
L027395: db $1A;X
L027396: db $CB;X
L027397: db $37;X
L027398: db $4F;X
L027399: db $78;X
L02739A: db $E6;X
L02739B: db $07;X
L02739C: db $C6;X
L02739D: db $B2;X
L02739E: db $5F;X
L02739F: db $1A;X
L0273A0: db $B1;X
L0273A1: db $C1;X
L0273A2: db $02;X
L0273A3: db $0C;X
L0273A4: db $18;X
L0273A5: db $E1;X
L0273A6: db $D1;X
L0273A7: db $C1;X
L0273A8: db $59;X
L0273A9: db $79;X
L0273AA: db $C6;X
L0273AB: db $04;X
L0273AC: db $4F;X
L0273AD: db $7D;X
L0273AE: db $02;X
L0273AF: db $0C;X
L0273B0: db $7C;X
L0273B1: db $02;X
L0273B2: db $4B;X
L0273B3: db $C9;X
L0273B4: db $46;X
L0273B5: db $74;X
L0273B6: db $52;X
L0273B7: db $74;X
L0273B8: db $60;X
L0273B9: db $74;X
L0273BA: db $6E;X
L0273BB: db $74;X
L0273BC: db $0A;X
L0273BD: db $74;X
L0273BE: db $18;X
L0273BF: db $74;X
L0273C0: db $28;X
L0273C1: db $74;X
L0273C2: db $38;X
L0273C3: db $74;X
L0273C4: db $FA;X
L0273C5: db $73;X
L0273C6: db $EA;X
L0273C7: db $73;X
L0273C8: db $DA;X
L0273C9: db $73;X
L0273CA: db $CC;X
L0273CB: db $73;X
L0273CC: db $03;X
L0273CD: db $05;X
L0273CE: db $00;X
L0273CF: db $22;X
L0273D0: db $10;X
L0273D1: db $10;X
L0273D2: db $11;X
L0273D3: db $FF;X
L0273D4: db $10;X
L0273D5: db $00;X
L0273D6: db $13;X
L0273D7: db $23;X
L0273D8: db $22;X
L0273D9: db $FF;X
L0273DA: db $03;X
L0273DB: db $06;X
L0273DC: db $22;X
L0273DD: db $01;X
L0273DE: db $10;X
L0273DF: db $31;X
L0273E0: db $00;X
L0273E1: db $21;X
L0273E2: db $FF;X
L0273E3: db $11;X
L0273E4: db $01;X
L0273E5: db $23;X
L0273E6: db $13;X
L0273E7: db $02;X
L0273E8: db $22;X
L0273E9: db $FF;X
L0273EA: db $03;X
L0273EB: db $06;X
L0273EC: db $00;X
L0273ED: db $01;X
L0273EE: db $12;X
L0273EF: db $34;X
L0273F0: db $10;X
L0273F1: db $12;X
L0273F2: db $FF;X
L0273F3: db $02;X
L0273F4: db $10;X
L0273F5: db $11;X
L0273F6: db $22;X
L0273F7: db $10;X
L0273F8: db $00;X
L0273F9: db $FF;X
L0273FA: db $03;X
L0273FB: db $06;X
L0273FC: db $00;X
L0273FD: db $23;X
L0273FE: db $12;X
L0273FF: db $10;X
L027400: db $10;X
L027401: db $31;X
L027402: db $FF;X
L027403: db $00;X
L027404: db $13;X
L027405: db $22;X
L027406: db $10;X
L027407: db $23;X
L027408: db $11;X
L027409: db $FF;X
L02740A: db $03;X
L02740B: db $05;X
L02740C: db $00;X
L02740D: db $11;X
L02740E: db $02;X
L02740F: db $31;X
L027410: db $10;X
L027411: db $FF;X
L027412: db $11;X
L027413: db $22;X
L027414: db $00;X
L027415: db $01;X
L027416: db $23;X
L027417: db $FF;X
L027418: db $03;X
L027419: db $05;X
L02741A: db $11;X
L02741B: db $21;X
L02741C: db $00;X
L02741D: db $03;X
L02741E: db $30;X
L02741F: db $21;X
L027420: db $FF;X
L027421: db $11;X
L027422: db $11;X
L027423: db $00;X
L027424: db $13;X
L027425: db $01;X
L027426: db $20;X
L027427: db $FF;X
L027428: db $03;X
L027429: db $05;X
L02742A: db $00;X
L02742B: db $21;X
L02742C: db $01;X
L02742D: db $01;X
L02742E: db $30;X
L02742F: db $13;X
L027430: db $FF;X
L027431: db $01;X
L027432: db $13;X
L027433: db $11;X
L027434: db $11;X
L027435: db $02;X
L027436: db $00;X
L027437: db $FF;X
L027438: db $03;X
L027439: db $05;X
L02743A: db $01;X
L02743B: db $22;X
L02743C: db $10;X
L02743D: db $01;X
L02743E: db $10;X
L02743F: db $FF;X
L027440: db $23;X
L027441: db $22;X
L027442: db $01;X
L027443: db $13;X
L027444: db $00;X
L027445: db $FF;X
L027446: db $02;X
L027447: db $06;X
L027448: db $01;X
L027449: db $01;X
L02744A: db $00;X
L02744B: db $11;X
L02744C: db $FF;X
L02744D: db $00;X
L02744E: db $01;X
L02744F: db $00;X
L027450: db $10;X
L027451: db $FF;X
L027452: db $02;X
L027453: db $06;X
L027454: db $20;X
L027455: db $10;X
L027456: db $01;X
L027457: db $01;X
L027458: db $13;X
L027459: db $FF;X
L02745A: db $12;X
L02745B: db $13;X
L02745C: db $01;X
L02745D: db $02;X
L02745E: db $13;X
L02745F: db $FF;X
L027460: db $02;X
L027461: db $06;X
L027462: db $00;X
L027463: db $01;X
L027464: db $12;X
L027465: db $13;X
L027466: db $10;X
L027467: db $FF;X
L027468: db $02;X
L027469: db $00;X
L02746A: db $12;X
L02746B: db $13;X
L02746C: db $10;X
L02746D: db $FF;X
L02746E: db $02;X
L02746F: db $06;X
L027470: db $00;X
L027471: db $11;X
L027472: db $00;X
L027473: db $21;X
L027474: db $13;X
L027475: db $FF;X
L027476: db $01;X
L027477: db $10;X
L027478: db $13;X
L027479: db $13;X
L02747A: db $00;X
L02747B: db $FF;X
L02747C: db $30;X
L02747D: db $75;X
L02747E: db $38;X
L02747F: db $75;X
L027480: db $D0;X
L027481: db $74;X
L027482: db $70;X
L027483: db $75;X
L027484: db $C0
L027485: db $74
L027486: db $48;X
L027487: db $75;X
L027488: db $70;X
L027489: db $75;X
L02748A: db $50;X
L02748B: db $75;X
L02748C: db $58;X
L02748D: db $75;X
L02748E: db $60;X
L02748F: db $75;X
L027490: db $40;X
L027491: db $75;X
L027492: db $70;X
L027493: db $75;X
L027494: db $70;X
L027495: db $75;X
L027496: db $70;X
L027497: db $75;X
L027498: db $D8;X
L027499: db $74;X
L02749A: db $70;X
L02749B: db $75;X
L02749C: db $70;X
L02749D: db $75;X
L02749E: db $70;X
L02749F: db $75;X
L0274A0: db $F0;X
L0274A1: db $74;X
L0274A2: db $C8;X
L0274A3: db $74;X
L0274A4: db $E0;X
L0274A5: db $74;X
L0274A6: db $70;X
L0274A7: db $75;X
L0274A8: db $70;X
L0274A9: db $75;X
L0274AA: db $E8;X
L0274AB: db $74;X
L0274AC: db $70;X
L0274AD: db $75;X
L0274AE: db $00;X
L0274AF: db $75;X
L0274B0: db $18;X
L0274B1: db $75;X
L0274B2: db $F8;X
L0274B3: db $74;X
L0274B4: db $08;X
L0274B5: db $75;X
L0274B6: db $70;X
L0274B7: db $75;X
L0274B8: db $10;X
L0274B9: db $75;X
L0274BA: db $68;X
L0274BB: db $75;X
L0274BC: db $20;X
L0274BD: db $75;X
L0274BE: db $28;X
L0274BF: db $75;X
L0274C0: db $00;X
L0274C1: db $20;X
L0274C2: db $03
L0274C3: db $00
L0274C4: db $00
L0274C5: db $00;X
L0274C6: db $FF;X
L0274C7: db $04
L0274C8: db $10;X
L0274C9: db $00;X
L0274CA: db $FF;X
L0274CB: db $24;X
L0274CC: db $0C;X
L0274CD: db $4E;X
L0274CE: db $FF;X
L0274CF: db $87;X
L0274D0: db $00;X
L0274D1: db $00;X
L0274D2: db $FF;X
L0274D3: db $0C;X
L0274D4: db $06;X
L0274D5: db $00;X
L0274D6: db $FF;X
L0274D7: db $87;X
L0274D8: db $00;X
L0274D9: db $00;X
L0274DA: db $FF;X
L0274DB: db $18;X
L0274DC: db $06;X
L0274DD: db $0E;X
L0274DE: db $FF;X
L0274DF: db $47;X
L0274E0: db $00;X
L0274E1: db $08;X
L0274E2: db $18;X
L0274E3: db $1E;X
L0274E4: db $06;X
L0274E5: db $24;X
L0274E6: db $FF;X
L0274E7: db $87;X
L0274E8: db $10;X
L0274E9: db $00;X
L0274EA: db $FF;X
L0274EB: db $30;X
L0274EC: db $0C;X
L0274ED: db $4E;X
L0274EE: db $FF;X
L0274EF: db $83;X
L0274F0: db $10;X
L0274F1: db $08;X
L0274F2: db $FF;X
L0274F3: db $1E;X
L0274F4: db $06;X
L0274F5: db $40;X
L0274F6: db $FF;X
L0274F7: db $87;X
L0274F8: db $00;X
L0274F9: db $00;X
L0274FA: db $FF;X
L0274FB: db $2A;X
L0274FC: db $1E;X
L0274FD: db $66;X
L0274FE: db $FF;X
L0274FF: db $87;X
L027500: db $10;X
L027501: db $00;X
L027502: db $FF;X
L027503: db $18;X
L027504: db $06;X
L027505: db $7E;X
L027506: db $FF;X
L027507: db $87;X
L027508: db $00;X
L027509: db $00;X
L02750A: db $FF;X
L02750B: db $18;X
L02750C: db $06;X
L02750D: db $4A;X
L02750E: db $FF;X
L02750F: db $83;X
L027510: db $00;X
L027511: db $00;X
L027512: db $FF;X
L027513: db $1E;X
L027514: db $06;X
L027515: db $7E;X
L027516: db $FF;X
L027517: db $83;X
L027518: db $00;X
L027519: db $00;X
L02751A: db $FF;X
L02751B: db $24;X
L02751C: db $12;X
L02751D: db $62;X
L02751E: db $08;X
L02751F: db $8B;X
L027520: db $00;X
L027521: db $00;X
L027522: db $FF;X
L027523: db $24;X
L027524: db $06;X
L027525: db $66;X
L027526: db $08;X
L027527: db $8F;X
L027528: db $00;X
L027529: db $00;X
L02752A: db $FF;X
L02752B: db $24;X
L02752C: db $06;X
L02752D: db $6E;X
L02752E: db $FF;X
L02752F: db $87;X
L027530: db $00;X
L027531: db $00;X
L027532: db $FF;X
L027533: db $18;X
L027534: db $0C;X
L027535: db $7E;X
L027536: db $FF;X
L027537: db $87;X
L027538: db $30;X
L027539: db $0C;X
L02753A: db $FF;X
L02753B: db $18;X
L02753C: db $06;X
L02753D: db $7E;X
L02753E: db $FF;X
L02753F: db $83;X
L027540: db $10;X
L027541: db $00;X
L027542: db $FF;X
L027543: db $2A;X
L027544: db $06;X
L027545: db $3E;X
L027546: db $FF;X
L027547: db $87;X
L027548: db $10;X
L027549: db $00;X
L02754A: db $FF;X
L02754B: db $1E;X
L02754C: db $06;X
L02754D: db $42;X
L02754E: db $FF;X
L02754F: db $84;X
L027550: db $18;X
L027551: db $00;X
L027552: db $FF;X
L027553: db $18;X
L027554: db $06;X
L027555: db $70;X
L027556: db $FF;X
L027557: db $83;X
L027558: db $08;X
L027559: db $00;X
L02755A: db $FF;X
L02755B: db $30;X
L02755C: db $06;X
L02755D: db $7E;X
L02755E: db $FF;X
L02755F: db $87;X
L027560: db $06;X
L027561: db $0C;X
L027562: db $FF;X
L027563: db $18;X
L027564: db $0C;X
L027565: db $56;X
L027566: db $FF;X
L027567: db $83;X
L027568: db $00;X
L027569: db $00;X
L02756A: db $FF;X
L02756B: db $1E;X
L02756C: db $0C;X
L02756D: db $7E;X
L02756E: db $FF;X
L02756F: db $87;X
L027570: db $10;X
L027571: db $00;X
L027572: db $FF;X
L027573: db $18;X
L027574: db $06;X
L027575: db $7E;X
L027576: db $FF;X
L027577: db $87;X
