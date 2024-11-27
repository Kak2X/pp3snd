L014000:;I
	sub  a
	ld   [$C07A], a
	ld   [$C090], a
	ld   [$C091], a
	ld   [$C0B0], a
	ld   [$C0B1], a
	ld   [$CD6F], a
	ld   [$CF6F], a
	ld   [$C18E], a
	ld   [$C0D1], a
	ld   bc, $DC21
	ld   hl, $C0A6
	ld   [hl], c
	inc  l
	ld   [hl], b
	ldh  a, [$FFC0]
	and  $8F
	jr   nz, $4033
	ld   a, $FF
	ld   [$C0B2], a
	call L0143DD
	call L014060
	call L01406E
	ld   a, $06
	ld   [$C0FE], a
	ld   hl, $50BF
	ld   a, $04
	rst  $00
	ld   hl, $6A6C
	ld   a, $02
	rst  $00
	ld   a, [$C01A]
	and  a
	ret  z
L01404F: db $3E;X
L014050: db $E1;X
L014051: db $EA;X
L014052: db $42;X
L014053: db $D4;X
L014054: db $EA;X
L014055: db $82;X
L014056: db $D4;X
L014057: db $3E;X
L014058: db $60;X
L014059: db $EA;X
L01405A: db $43;X
L01405B: db $D4;X
L01405C: db $EA;X
L01405D: db $83;X
L01405E: db $D4;X
L01405F: db $C9;X
L014060:;C
	ld   hl, $D400
	ld   de, $54F2
	ld   b, $02
	call L0140C5
	ld   [hl], $C7
	ret  
L01406E:;C
	ld   hl, $D440
	ld   de, $40F2
	ld   b, $01
	call L0140C5
	ld   [hl], $C1
	ld   hl, $D480
	ld   de, $40F2
	ld   b, $01
	call L0140C5
	ld   [hl], $C2
	ld   a, $01
	ld   [$D4A8], a
	ld   a, $03
	ld   [$D447], a
	ld   [$D487], a
	ld   a, $40
	ld   [$D4B6], a
	ld   a, $80
	ld   [$D476], a
	ld   a, $D4
	ld   [$D4B7], a
	ld   [$D477], a
	ldh  a, [$FFC0]
	and  $8F
	jr   nz, $40C4
	ld   hl, $C0A0
	ldi  a, [hl]
	ld   [$D44A], a
	ldi  a, [hl]
	ld   [$D44B], a
	ldi  a, [hl]
	ld   [$D44C], a
	ldi  a, [hl]
	ld   [$D456], a
	ld   a, [hl]
	ld   [$D457], a
	ret  
L0140C5:;C
	push hl
	ld   [hl], $87
	inc  l
	ld   [hl], b
	inc  l
	ld   [hl], e
	inc  l
	ld   [hl], d
	pop  hl
	ret  
L0140D0:;C
	ldh  a, [$FFC0]
	and  $80
	jr   nz, $40F1
	ldh  a, [$FFC0]
	and  $0F
	cp   $08
	jr   z, $40E4
	ld   a, [$B006]
	and  a
	jr   nz, $40F1
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	add  $D2
	ld   l, a
	ld   h, $C0
	ld   [hl], $7F
	ret  
L0140F2:;I
	ldh  a, [$FFC0]
	and  $0F
	cp   $08
	jr   z, $40FE
	cp   $0C
	jr   nz, $4108
L0140FE: db $F0;X
L0140FF: db $B1;X
L014100: db $C6;X
L014101: db $28;X
L014102: db $5F;X
L014103: db $1A;X
L014104: db $A7;X
L014105: db $C2;X
L014106: db $CD;X
L014107: db $1E;X
L014108:;R
	ld   hl, $41F2
	ld   a, $02
	rst  $00
	ldh  a, [$FFB1]
	add  $09
	ld   l, a
	ld   h, d
	ld   [hl], $FF
	add  $1F
	ld   e, a
	ld   a, [de]
	add  $90
	ld   l, a
	ld   h, $C0
	ld   [hl], $00
	call L01440D
	call L015052
	ld   hl, $69E5
	ld   a, $02
	rst  $00
	call L01509F
	ldh  a, [$FFB1]
	add  $04
	ld   e, a
	sub  a
	ld   [de], a
	ldh  a, [$FFB1]
	add  $07
	ld   l, a
	ld   h, d
	set  0, [hl]
	ld   hl, $6137
	ld   a, $02
	rst  $00
	call L001EF3
L014148:;I
	ld   a, e
	add  $07
	ld   l, a
	ld   h, d
	bit  0, [hl]
	ret  nz
	call L014DBA
	ld   hl, $51B9
	ld   a, $02
	rst  $00
	call L0155BD
	ld   b, $01
	ld   hl, $69FF
	ld   a, $02
	rst  $00
	ld   hl, $5ABF
	ld   a, $02
	rst  $00
	call L001EF3
L01416D:;I
	ldh  a, [$FFB1]
	add  $07
	ld   l, a
	ld   h, d
	bit  1, [hl]
	ret  nz
	call L0140D0
	call L0150AF
L01417C:;J
	ld   hl, $4F89
	ld   a, $02
	rst  $00
	call L0159F0
	call L001EF3
L014188:;I
	ld   a, e
	add  $07
	ld   l, a
	ld   h, d
	bit  2, [hl]
	jp   nz, $5F16
	ld   hl, $42C0
	ld   a, $02
	rst  $00
	ld   hl, $64F9
	ld   a, $02
	rst  $00
	call L016D22
	call L0143A6
	call L001EF3
L0141A7:;I
	ldh  a, [$FFB1]
	add  $2E
	ld   l, a
	ld   h, d
	push hl
	call L014599
	pop  hl
	jr   c, $41BB
	ld   [hl], $00
	call L001EF3
L0141B9:;I
	jr   L0141D5
L0141BB:;R
	ld   [hl], $80
	sub  a
	ld   [$C127], a
	ld   hl, $6D17
	ld   a, $02
	rst  $00
	call L001EF3
L0141CA:;I
	ld   a, $FF
	ld   [$C127], a
	ld   hl, $6D17
	ld   a, $02
	rst  $00
L0141D5:;R
	call L001EF3
L0141D8:;I
	ld   a, e
	add  $28
	ld   e, a
	ld   a, [de]
	add  $28
	ld   l, a
	ld   h, $C1
	ld   [hl], $00
	ld   a, e
	add  $06
	ld   e, a
	ld   a, [de]
	and  a
	jr   z, $420B
	ld   hl, $6A77
	ld   a, $02
	rst  $00
	ldh  a, [$FFC0]
	and  $0F
	cp   $04
	jr   c, $420B
L0141FA: db $FE;X
L0141FB: db $06;X
L0141FC: db $30;X
L0141FD: db $0D;X
L0141FE: db $FA;X
L0141FF: db $FD;X
L014200: db $00;X
L014201: db $A7;X
L014202: db $28;X
L014203: db $07;X
L014204: db $F0;X
L014205: db $A0;X
L014206: db $FE;X
L014207: db $03;X
L014208: db $CA;X
L014209: db $41;X
L01420A: db $65;X
L01420B:;R
	call L001EF3
L01420E:;I
	ld   hl, $42E8
	ld   a, $02
	rst  $00
	call L0145D2
	jp   c, $6541
	call L001EF3
L01421D:;I
	call L016C22
	ldh  a, [$FFB1]
	add  $24
	ld   l, a
	ld   h, d
	inc  [hl]
	add  $E3
	ld   l, a
	bit  3, [hl]
	jr   z, $4235
	res  3, [hl]
	push hl
	call L014FC4
	pop  hl
L014235:;R
	ld   a, [hl]
	and  $03
	ret  nz
	ld   a, l
	add  $02
	ld   l, a
	ld   a, [hl]
	and  a
	jr   z, $426B
	ld   [hl], $00
	call L01540D
	jr   nc, $426B
L014248: db $F0;X
L014249: db $B1;X
L01424A: db $C6;X
L01424B: db $07;X
L01424C: db $6F;X
L01424D: db $62;X
L01424E: db $CB;X
L01424F: db $E6;X
L014250: db $FA;X
L014251: db $11;X
L014252: db $C0;X
L014253: db $E6;X
L014254: db $01;X
L014255: db $CC;X
L014256: db $F3;X
L014257: db $1E;X
L014258: db $CD;X
L014259: db $F3;X
L01425A: db $1E;X
L01425B: db $7B;X
L01425C: db $C6;X
L01425D: db $07;X
L01425E: db $6F;X
L01425F: db $62;X
L014260: db $CB;X
L014261: db $66;X
L014262: db $C2;X
L014263: db $6E;X
L014264: db $54;X
L014265: db $FA;X
L014266: db $11;X
L014267: db $C0;X
L014268: db $E6;X
L014269: db $01;X
L01426A: db $C0;X
L01426B:;JR
	call L016CAE
	call L001EF3
L014271:;I
	ld   hl, $6585
	ld   a, $02
	rst  $00
	call L001EF3
L01427A:;I
	call L014DBA
	call L001EF3
L014280:;I
	ld   a, e
	add  $24
	ld   e, a
	ld   a, [de]
	and  a
	jp   nz, $42AF
	call L015698
	ld   hl, $4F5D
	ld   a, $02
	rst  $00
	call L001EE8
L014295:;I
	call L001EF3
L014298:;I
	ld   a, e
	add  $09
	ld   l, a
	ld   h, d
	ld   c, [hl]
	ld   [hl], $00
	add  $26
	ld   l, a
	ld   [hl], c
	ld   a, c
	and  a
	call nz, $5052
	call L014374
	jp   L01417C
L0142AF:;J
	ld   a, e
	add  $04
	ld   l, a
	ld   h, d
	ld   c, [hl]
	add  $E1
	ld   l, a
	inc  [hl]
	ld   a, c
	and  a
	jr   nz, $42CA
	ld   a, [$C0CA]
	cp   [hl]
	jr   nc, $42CA
	ld   a, [hl]
	ld   [$C0CA], a
	call L01509F
L0142CA:;R
	ld   hl, $7215
	ld   a, $02
	rst  $00
	ld   hl, $674D
	ld   a, $02
	rst  $00
	call L001EF3
L0142D9:;I
	ld   hl, $4C00
	ld   a, $02
	rst  $00
	call L014F2B
	call L014EBE
	call L01565C
	call L0143F4
	call L001EF3
L0142EE:;I
	call L01517B
	ld   bc, $0018
	call L001EE8
L0142F7:;I
	call L0151A6
	call L001EF3
L0142FD:;I
	call L015F2D
	push af
	call L014364
	call L01523D
	pop  af
	ld   e, a
	ld   hl, $475D
	ld   a, $02
	rst  $00
	ld   hl, $4ABC
	ld   a, $02
	rst  $00
	ldh  a, [$FFB1]
	add  $22
	ld   e, a
	ld   a, $19
	ld   [de], a
	call L001F26
L014320:;I
	ld   a, e
	add  $22
	ld   e, a
	ld   a, [de]
	cp   $08
	call z, $4F61
	call L015310
	call L001EF3
L014330:;I
	call L01540D
	jr   nc, $4358
	ldh  a, [$FFB1]
	add  $07
	ld   l, a
	ld   h, d
	set  4, [hl]
	ld   a, [$C011]
	and  $01
	call z, L001EF3
L014345:;I
	call L001EF3
L014348:;I
	ld   a, e
	add  $07
	ld   l, a
	ld   h, d
	bit  4, [hl]
	jp   nz, $546E
	ld   a, [$C011]
	and  $01
	ret  nz
L014358:;R
	ld   hl, $5160
	ld   a, $02
	rst  $00
	call L001EF3
L014361:;I
	jp   L01426B
L014364:;C
	cp   $02
	ret  c
L014367: db $FA;X
L014368: db $D9;X
L014369: db $C0;X
L01436A: db $A7;X
L01436B: db $C8;X
L01436C: db $F0;X
L01436D: db $B1;X
L01436E: db $C6;X
L01436F: db $3D;X
L014370: db $6F;X
L014371: db $62;X
L014372: db $34;X
L014373: db $C9;X
L014374:;C
	ld   a, [$C0D9]
	and  a
	ret  z
	ldh  a, [$FFB1]
	add  $3D
	ld   e, a
	add  $EB
	ld   b, a
	ld   a, [de]
	and  a
	ret  z
L014384: db $4F;X
L014385: db $97;X
L014386: db $12;X
L014387: db $1D;X
L014388: db $1A;X
L014389: db $81;X
L01438A: db $FE;X
L01438B: db $1E;X
L01438C: db $38;X
L01438D: db $02;X
L01438E: db $3E;X
L01438F: db $1E;X
L014390: db $12;X
L014391: db $58;X
L014392: db $1A;X
L014393: db $A7;X
L014394: db $21;X
L014395: db $BC;X
L014396: db $D4;X
L014397: db $28;X
L014398: db $03;X
L014399: db $21;X
L01439A: db $7C;X
L01439B: db $D4;X
L01439C: db $7E;X
L01439D: db $81;X
L01439E: db $FE;X
L01439F: db $1E;X
L0143A0: db $38;X
L0143A1: db $02;X
L0143A2: db $3E;X
L0143A3: db $1E;X
L0143A4: db $77;X
L0143A5: db $C9;X
L0143A6:;C
	ld   a, [$B006]
	and  a
	ret  nz
	ldh  a, [$FFC0]
	and  $8F
	ret  nz
	ldh  a, [$FFB1]
	add  $28
	ld   a, e
	ld   a, [de]
	and  a
	ret  nz
	ld   a, [$C081]
	cp   $20
	jr   z, $43DD
	cp   $21
	jr   z, $43DD
	ld   a, [$C0B2]
	cp   $11
	jr   z, $43D7
	ld   a, [$CD6F]
	cp   $3C
	ret  c
L0143D0: db $3E;X
L0143D1: db $11;X
L0143D2: db $EA;X
L0143D3: db $B2;X
L0143D4: db $C0;X
L0143D5: db $18;X
L0143D6: db $12;X
L0143D7: db $FA;X
L0143D8: db $6F;X
L0143D9: db $CD;X
L0143DA: db $FE;X
L0143DB: db $36;X
L0143DC: db $D0;X
L0143DD:;C
	ld   a, [$C0B2]
	ld   b, a
	ld   a, [$C0B3]
	cp   b
	ret  z
	ld   [$C0B2], a
	ld   a, $F2
	call SoundDataCmd_8B
	ld   a, [$C0B2]
	jp   SoundDataCmd_8B
L0143F4:;C
	ldh  a, [$FFC0]
	and  $0F
	jr   z, $4401
L0143FA: db $FE;X
L0143FB: db $04;X
L0143FC: db $28;X
L0143FD: db $03;X
L0143FE: db $FE;X
L0143FF: db $05;X
L014400: db $C0;X
L014401:;R
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	or   $80
	ld   [$C0AA], a
	ret  
L01440D:;C
	call L014434
	push bc
	ld   e, $0D
	ld   l, c
	ld   h, b
	sub  a
L014416:;R
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	dec  e
	jr   nz, $4416
	pop  bc
	ld   hl, $0108
	add  hl, bc
	ld   e, $0C
L014428:;R
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	dec  e
	jr   nz, $4428
	ret  
L014434:;C
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	add  a
	add  a
	ld   c, a
	ld   b, $00
	ld   hl, $444B
	add  hl, bc
	ldi  a, [hl]
	ld   c, a
	ldi  a, [hl]
	ld   b, a
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	ret  
L01444B: db $00
L01444C: db $CC
L01444D: db $A1
L01444E: db $DC
L01444F: db $00
L014450: db $CE
L014451: db $AE
L014452: db $DC
L014453:;C
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	add  a
	add  $69
	ld   l, a
	ld   a, $00
	adc  a, $44
	ld   h, a
	ldi  a, [hl]
	ldh  [$FFB6], a
	ldi  a, [hl]
	ldh  [$FFB7], a
	ret  
L014469: db $38
L01446A: db $5C
L01446B: db $A0
L01446C: db $5C
L01446D: db $F0;X
L01446E: db $B1;X
L01446F: db $C6;X
L014470: db $28;X
L014471: db $5F;X
L014472: db $18;X
L014473: db $06;X
L014474:;C
	call L014599
	jp   c, $44B4
	ld   hl, $FFA0
	ld   a, [de]
	and  a
	jr   z, $448A
L014481: db $F0;X
L014482: db $8F;X
L014483: db $CB;X
L014484: db $57;X
L014485: db $28;X
L014486: db $03;X
L014487: db $21;X
L014488: db $A4;X
L014489: db $FF;X
L01448A:;R
	ld   bc, $FFAA
	ldi  a, [hl]
	ld   [bc], a
	inc  c
	ldi  a, [hl]
	ld   [bc], a
	inc  c
	ldi  a, [hl]
	ld   [bc], a
	ld   a, [de]
	and  a
	jr   nz, $44AD
	ld   a, [$B00A]
	and  a
	ret  z
L01449E: db $F0;X
L01449F: db $AB;X
L0144A0: db $4F;X
L0144A1: db $E6;X
L0144A2: db $03;X
L0144A3: db $C8;X
L0144A4: db $FE;X
L0144A5: db $03;X
L0144A6: db $C8;X
L0144A7: db $79;X
L0144A8: db $EE;X
L0144A9: db $03;X
L0144AA: db $E0;X
L0144AB: db $AB;X
L0144AC: db $C9;X
L0144AD: db $FA;X
L0144AE: db $0B;X
L0144AF: db $B0;X
L0144B0: db $A7;X
L0144B1: db $C8;X
L0144B2: db $18;X
L0144B3: db $EA;X
L0144B4:;J
	ld   hl, $FFAA
	sub  a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldh  a, [$FFB1]
	add  $36
	ld   l, a
	ld   h, d
	add  $E4
	ld   e, a
	ldi  a, [hl]
	ldh  [$FFD6], a
	ld   h, [hl]
	add  $28
	ld   l, a
	ld   a, [hl]
	add  $28
	ld   c, a
	ldh  [$FFD4], a
	ld   a, h
	ldh  [$FFD7], a
	ld   b, $C1
	ld   a, [bc]
	inc  a
	jr   z, $44DB
	ld   [bc], a
L0144DB:;R
	call L014569
	ld   b, [hl]
	ld   a, l
	add  $F8
	ld   l, a
	ld   a, [de]
	cp   [hl]
	jr   z, $452C
	jr   nc, $44ED
	ld   a, $10
	jr   L0144EF
L0144ED:;R
	ld   a, $20
L0144EF:;R
	ldh  [$FFAC], a
	ld   a, b
	and  a
	jr   z, $452C
	ldh  a, [$FFC0]
	and  $0F
	jr   nz, $452C
	ld   a, [$C082]
	cp   $01
	jr   z, $450D
	jr   nc, $452C
	ld   a, [$C080]
	cp   $02
	jr   c, $4514
L01450B: db $18;X
L01450C: db $1F;X
L01450D: db $FA;X
L01450E: db $80;X
L01450F: db $C0;X
L014510: db $FE;X
L014511: db $02;X
L014512: db $30;X
L014513: db $18;X
L014514:;R
	ld   a, [$B010]
	cp   $02
	jr   nc, $4521
	ld   a, [$C080]
	and  a
	jr   z, $4529
L014521: db $7D;X
L014522: db $C6;X
L014523: db $05;X
L014524: db $6F;X
L014525: db $CB;X
L014526: db $7E;X
L014527: db $20;X
L014528: db $03;X
L014529:;R
	call L014549
L01452C:;R
	ldh  a, [$FFD6]
	add  $21
	ld   l, a
	ldh  a, [$FFB1]
	add  $29
	ld   e, a
	ld   a, [de]
	sub  [hl]
	jr   z, $4548
L01453A: db $E6;X
L01453B: db $03;X
L01453C: db $FE;X
L01453D: db $02;X
L01453E: db $38;X
L01453F: db $04;X
L014540: db $3E;X
L014541: db $01;X
L014542: db $18;X
L014543: db $02;X
L014544: db $3E;X
L014545: db $02;X
L014546: db $E0;X
L014547: db $AB;X
L014548:;R
	ret  
L014549:;C
	ldh  a, [$FFD4]
	ld   c, a
	ld   b, $C1
	ld   a, [bc]
	cp   $FF
	ret  z
	and  $0F
	jr   z, $455A
	sub  a
	ldh  [$FFAC], a
	ret  
L01455A:;R
	call L000D98
	and  $10
	ret  z
	ldh  a, [$FFAC]
	and  a
	ret  z
	xor  $30
	ldh  [$FFAC], a
	ret  
L014569:;C
	push hl
	ld   a, l
	add  $FC
	ld   c, a
	ld   l, a
	inc  l
	add  $06
	ld   b, a
	ld   a, [hl]
	ld   l, b
	and  a
	jr   z, $4579
	inc  l
L014579:;R
	ld   a, [hl]
	ld   l, c
	cp   [hl]
	jr   nc, $4586
	ld   [hl], $00
	inc  l
	ld   a, [hl]
	xor  $80
	ld   [hl], a
	dec  l
L014586:;R
	inc  l
	bit  7, [hl]
	pop  hl
	ret  z
	ld   a, $80
	ldh  [$FFAA], a
	ret  
L014590: db $CD;X
L014591: db $99;X
L014592: db $45;X
L014593: db $06;X
L014594: db $00;X
L014595: db $D0;X
L014596: db $06;X
L014597: db $01;X
L014598: db $C9;X
L014599:;C
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [$C01A]
	and  a
	jr   z, $45A7
L0145A4: db $1A;X
L0145A5: db $A7;X
L0145A6: db $C8;X
L0145A7:;R
	ld   a, [$B006]
	and  a
	jr   nz, $45D0
	ldh  a, [$FFC0]
	bit  7, a
	jr   nz, $45D0
	ld   hl, $B014
	and  $0F
	jr   z, $45CB
L0145BA: db $FE;X
L0145BB: db $05;X
L0145BC: db $28;X
L0145BD: db $0D;X
L0145BE: db $F0;X
L0145BF: db $8F;X
L0145C0: db $CB;X
L0145C1: db $57;X
L0145C2: db $1A;X
L0145C3: db $20;X
L0145C4: db $03;X
L0145C5: db $A7;X
L0145C6: db $20;X
L0145C7: db $08;X
L0145C8: db $BE;X
L0145C9: db $3F;X
L0145CA: db $C9;X
L0145CB:;R
	ld   a, [de]
	and  a
	jr   nz, $45D0
	cp   [hl]
L0145D0:;R
	ccf  
	ret  
L0145D2:;C
	ld   hl, $430E
	ld   a, $02
	rst  $00
	ld   a, b
	cp   $0E
	jp   z, $6DD9
	cp   $0F
	jp   z, $6FEE
	push bc
	call L014434
	ld   a, c
	add  $0A
	ld   c, a
	ld   a, [bc]
	pop  bc
	and  a
	scf  
	ret  nz
	push bc
	ld   hl, $46AA
	ld   b, $01
	call L001E87
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
	ld   a, [de]
	ld   [hl], a
	ld   a, e
	add  $E1
	ld   e, a
	ld   a, l
	add  $0D
	ld   l, a
	ld   a, [de]
	ldd  [hl], a
	ld   [hl], $01
	dec  l
	ld   [hl], $46
	dec  l
	ld   [hl], $96
	ld   a, l
	add  $04
	ld   l, a
	ldh  a, [$FFB1]
	ldi  [hl], a
	ld   [hl], d
	ld   a, l
	add  $E3
	ld   l, a
	ld   [hl], $02
	inc  l
	ld   [hl], $02
	add  $0C
	ld   l, a
	ld   [hl], $21
	add  $E2
	ld   l, a
	pop  bc
	ld   [hl], b
	ld   a, e
	add  $FE
	ld   e, a
	ld   a, [de]
	or   $03
	ld   [de], a
	ld   a, e
	and  $C0
	ld   e, a
	push bc
	ld   a, l
	and  $C0
	ld   l, a
	push hl
	ld   hl, $4B15
	ld   b, $01
	call L001E87
	ld   a, [de]
	ld   [hl], a
	ld   a, e
	add  $28
	ld   e, a
	ld   a, l
	add  $28
	ld   l, a
	ld   a, [de]
	ld   [hl], a
	ld   a, e
	add  $E1
	ld   e, a
	ld   a, l
	add  $0D
	ld   l, a
	ld   a, [de]
	ldd  [hl], a
	ld   [hl], $01
	dec  l
	ld   [hl], $46
	dec  l
	ld   [hl], $96
	ld   a, l
	add  $04
	ld   l, a
	pop  bc
	ld   [hl], c
	inc  l
	ld   [hl], b
	ld   a, c
	add  $2F
	ld   c, a
	ld   a, h
	ld   [bc], a
	dec  c
	ld   a, l
	and  $C0
	ld   [bc], a
	add  $08
	ld   l, a
	pop  bc
	ld   [hl], c
	ret  
L014686: db $02
L014687: db $01
L014688: db $00
L014689: db $00
L01468A: db $03
L01468B: db $02
L01468C: db $00
L01468D: db $01
L01468E: db $02
L01468F: db $01
L014690: db $00
L014691: db $00
L014692: db $03
L014693: db $02
L014694: db $00
L014695: db $00
L014696: db $00
L014697: db $FE
L014698: db $01;X
L014699: db $02;X
L01469A: db $00;X
L01469B: db $01;X
L01469C: db $02;X
L01469D: db $03;X
L01469E: db $00;X
L01469F: db $01;X
L0146A0: db $01;X
L0146A1: db $03;X
L0146A2: db $00;X
L0146A3: db $01;X
L0146A4: db $02;X
L0146A5: db $02;X
L0146A6: db $00;X
L0146A7: db $01;X
L0146A8: db $00;X
L0146A9: db $FE;X
L0146AA:;I
	ld   a, e
	add  $06
	ld   e, a
	ld   a, $80
	ld   [de], a
	call L014AB3
	call L014C32
	call L001EF3
L0146BA:;I
	ld   a, e
	add  $28
	ld   e, a
	add  $0E
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	add  $07
	ld   l, a
	bit  0, [hl]
	jr   z, $4711
	ld   a, [$C01A]
	cp   $01
	jr   nz, $46D7
L0146D2: db $1A;X
L0146D3: db $A7;X
L0146D4: db $C2;X
L0146D5: db $B7;X
L0146D6: db $47;X
L0146D7:;R
	call L002027
	call L014474
	call L01484B
	call L014A0C
	call L01489E
	jr   c, $4725
	call L014AB3
	ret  nz
L0146EC: db $FA;X
L0146ED: db $8A;X
L0146EE: db $C1;X
L0146EF: db $B9;X
L0146F0: db $20;X
L0146F1: db $05;X
L0146F2: db $FA;X
L0146F3: db $8B;X
L0146F4: db $C1;X
L0146F5: db $B8;X
L0146F6: db $C8;X
L0146F7: db $CD;X
L0146F8: db $EC;X
L0146F9: db $22;X
L0146FA: db $C8;X
L0146FB: db $FE;X
L0146FC: db $02;X
L0146FD: db $D8;X
L0146FE: db $78;X
L0146FF: db $EA;X
L014700: db $8B;X
L014701: db $C1;X
L014702: db $F6;X
L014703: db $20;X
L014704: db $2C;X
L014705: db $77;X
L014706: db $2C;X
L014707: db $79;X
L014708: db $EA;X
L014709: db $8A;X
L01470A: db $C1;X
L01470B: db $2C;X
L01470C: db $22;X
L01470D: db $7D;X
L01470E: db $E0;X
L01470F: db $CE;X
L014710: db $C9;X
L014711:;R
	ldh  a, [$FFB1]
	add  $06
	ld   l, a
	ld   h, d
	ld   [hl], $00
	add  $28
	ld   l, a
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	call L001ED1
	jp   L001ECD
L014725:;R
	call L014AB3
	jr   nz, $4744
L01472A: db $CD;X
L01472B: db $E5;X
L01472C: db $22;X
L01472D: db $FE;X
L01472E: db $02;X
L01472F: db $DA;X
L014730: db $2C;X
L014731: db $23;X
L014732: db $78;X
L014733: db $EA;X
L014734: db $8B;X
L014735: db $C1;X
L014736: db $F6;X
L014737: db $24;X
L014738: db $2C;X
L014739: db $77;X
L01473A: db $2C;X
L01473B: db $79;X
L01473C: db $EA;X
L01473D: db $8A;X
L01473E: db $C1;X
L01473F: db $2C;X
L014740: db $22;X
L014741: db $7D;X
L014742: db $E0;X
L014743: db $CE;X
L014744:;R
	ldh  a, [$FFB1]
	add  $07
	ld   e, a
	push de
	call L014D05
	pop  de
	set  2, a
	ld   [de], a
	bit  0, a
	jr   nz, $4785
	ld   a, e
	add  $0A
	ld   e, a
	add  $0F
	ld   l, a
	ld   h, d
	ld   a, [de]
	sub  $07
	ldi  [hl], a
	ld   [hl], $20
	ld   a, e
	add  $08
	ld   l, a
	ld   [hl], $01
	add  $F0
	ld   l, a
	ld   [hl], $00
	call L001EF3
L014771:;I
	call L014D5F
	ret  nc
	ld   a, $2E
	call SoundDataCmd_8B
	ldh  a, [$FFB1]
	add  $32
	ld   l, a
	ld   h, d
	ld   [hl], $86
	inc  l
	ld   [hl], $46
L014785:;R
	ldh  a, [$FFB1]
	add  $2C
	ld   e, a
	sub  a
	ld   [de], a
	call L001EF3
L01478F:;I
	call L002027
	ret  nc
	ldh  a, [$FFB1]
	add  $36
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	add  $07
	ld   l, a
	ld   a, [hl]
	and  $FE
	ld   [hl], a
	call L014E5E
	ldh  a, [$FFB1]
	ld   l, a
	ld   h, d
	res  7, [hl]
	ld   bc, $0002
	call L001EE8
L0147B1:;I
	call L001EF3
L0147B4:;I
	jp   L001ECD
L0147B7: db $F0;X
L0147B8: db $B1;X
L0147B9: db $C6;X
L0147BA: db $1E;X
L0147BB: db $6F;X
L0147BC: db $62;X
L0147BD: db $7E;X
L0147BE: db $A7;X
L0147BF: db $28;X
L0147C0: db $02;X
L0147C1: db $36;X
L0147C2: db $00;X
L0147C3: db $2C;X
L0147C4: db $2C;X
L0147C5: db $2C;X
L0147C6: db $CB;X
L0147C7: db $7E;X
L0147C8: db $20;X
L0147C9: db $02;X
L0147CA: db $CB;X
L0147CB: db $FE;X
L0147CC: db $7D;X
L0147CD: db $C6;X
L0147CE: db $F9;X
L0147CF: db $6F;X
L0147D0: db $FA;X
L0147D1: db $8C;X
L0147D2: db $C1;X
L0147D3: db $4F;X
L0147D4: db $CB;X
L0147D5: db $37;X
L0147D6: db $E6;X
L0147D7: db $07;X
L0147D8: db $BE;X
L0147D9: db $28;X
L0147DA: db $19;X
L0147DB: db $46;X
L0147DC: db $77;X
L0147DD: db $5F;X
L0147DE: db $7D;X
L0147DF: db $C6;X
L0147E0: db $04;X
L0147E1: db $6F;X
L0147E2: db $7B;X
L0147E3: db $B8;X
L0147E4: db $3E;X
L0147E5: db $04;X
L0147E6: db $38;X
L0147E7: db $02;X
L0147E8: db $3E;X
L0147E9: db $FC;X
L0147EA: db $77;X
L0147EB: db $7D;X
L0147EC: db $C6;X
L0147ED: db $FC;X
L0147EE: db $6F;X
L0147EF: db $3E;X
L0147F0: db $3E;X
L0147F1: db $CD;X
L0147F2: db $4E;X
L0147F3: db $3B;X
L0147F4: db $2C;X
L0147F5: db $79;X
L0147F6: db $E6;X
L0147F7: db $0F;X
L0147F8: db $BE;X
L0147F9: db $28;X
L0147FA: db $07;X
L0147FB: db $77;X
L0147FC: db $7D;X
L0147FD: db $C6;X
L0147FE: db $06;X
L0147FF: db $6F;X
L014800: db $36;X
L014801: db $00;X
L014802: db $F0;X
L014803: db $B1;X
L014804: db $C6;X
L014805: db $29;X
L014806: db $6F;X
L014807: db $FA;X
L014808: db $8D;X
L014809: db $C1;X
L01480A: db $BE;X
L01480B: db $28;X
L01480C: db $24;X
L01480D: db $46;X
L01480E: db $77;X
L01480F: db $5F;X
L014810: db $7D;X
L014811: db $C6;X
L014812: db $05;X
L014813: db $6F;X
L014814: db $2A;X
L014815: db $66;X
L014816: db $C6;X
L014817: db $30;X
L014818: db $6F;X
L014819: db $7B;X
L01481A: db $90;X
L01481B: db $E6;X
L01481C: db $03;X
L01481D: db $87;X
L01481E: db $FE;X
L01481F: db $06;X
L014820: db $38;X
L014821: db $02;X
L014822: db $3E;X
L014823: db $FE;X
L014824: db $32;X
L014825: db $CB;X
L014826: db $33;X
L014827: db $73;X
L014828: db $2D;X
L014829: db $CB;X
L01482A: db $30;X
L01482B: db $70;X
L01482C: db $3E;X
L01482D: db $2C;X
L01482E: db $CD;X
L01482F: db $4E;X
L014830: db $3B;X
L014831: db $CB;X
L014832: db $79;X
L014833: db $CA;X
L014834: db $B3;X
L014835: db $4A;X
L014836: db $F0;X
L014837: db $B1;X
L014838: db $C6;X
L014839: db $1E;X
L01483A: db $6F;X
L01483B: db $36;X
L01483C: db $00;X
L01483D: db $2C;X
L01483E: db $2C;X
L01483F: db $2C;X
L014840: db $36;X
L014841: db $80;X
L014842: db $CD;X
L014843: db $B3;X
L014844: db $4A;X
L014845: db $CD;X
L014846: db $32;X
L014847: db $4C;X
L014848: db $C3;X
L014849: db $44;X
L01484A: db $47;X
L01484B:;C
	ldh  a, [$FFB1]
	add  $1E
	ld   e, a
	ld   a, [de]
	and  a
	jr   z, $4857
	sub  a
	ld   [de], a
	ret  
L014857:;R
	ld   a, e
	add  $E9
	ld   l, a
	ld   h, d
	bit  3, [hl]
	ret  nz
	ldh  a, [$FFAC]
	bit  5, a
	jr   nz, $486F
	bit  4, a
	ret  z
	ld   bc, $FC01
	ld   a, $01
	jr   L014874
L01486F:;R
	ld   bc, $04FF
	ld   a, $03
L014874:;R
	call L014C47
	and  a
	jr   z, $488B
	and  $01
	ret  nz
	ldh  a, [$FFB1]
	add  $08
	ld   e, a
	add  $12
	ld   l, a
	ld   a, [de]
	cp   $0E
	ret  nz
L014889: db $18;X
L01488A: db $05;X
L01488B:;R
	ldh  a, [$FFB1]
	add  $1A
	ld   l, a
	ld   a, [hl]
	add  c
	ldi  [hl], a
	inc  l
	ld   a, [hl]
	add  c
	ldi  [hl], a
	inc  l
	ld   [hl], b
	ld   a, $3E
	jp   SoundDataCmd_8B
L01489E:;C
	ldh  a, [$FFB1]
	add  $07
	ld   e, a
	ld   a, [de]
	bit  3, a
	jp   nz, $4942
	ld   a, e
	add  $2F
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	add  $1A
	ld   l, a
	ld   c, [hl]
	inc  l
	ld   b, [hl]
	ld   a, b
	cp   $80
	jr   c, $48C3
L0148BB: db $C2;X
L0148BC: db $5E;X
L0148BD: db $49;X
L0148BE: db $79;X
L0148BF: db $A7;X
L0148C0: db $C2;X
L0148C1: db $5E;X
L0148C2: db $49;X
L0148C3:;R
	ldh  a, [$FFAA]
	and  $B0
	cp   $80
	jr   nz, $48DB
	ld   a, [$C011]
	and  $01
	jr   z, $48D8
	ld   a, l
	add  $EC
	ld   l, a
	set  3, [hl]
L0148D8:;R
	ld   bc, $8000
L0148DB:;R
	ld   a, e
	add  $19
	ld   l, a
	ld   h, d
	ld   a, c
	add  [hl]
	ld   c, [hl]
	ldi  [hl], a
	ld   a, b
	adc  a, [hl]
	ld   b, [hl]
	ld   [hl], a
	jr   c, $4916
	xor  b
	and  $80
	ret  z
	call L014D05
	and  a
	ret  z
	bit  0, a
	jr   z, $4900
	push af
	call L0149BB
	pop  af
	bit  1, a
	jr   z, $4903
L014900:;R
	call L0149E0
L014903:;R
	ld   a, $2E
	call SoundDataCmd_8B
	ldh  a, [$FFB1]
	add  $24
	ld   e, a
	ld   a, [de]
	inc  a
	ld   [de], a
	cp   $08
	jr   nc, $4942
	and  a
	ret  
L014916:;R
	call L014D05
	and  a
	jr   nz, $4929
	ldh  a, [$FFB1]
	add  $1B
	ld   l, a
	ld   h, d
	inc  [hl]
	inc  l
	ld   a, [hl]
	add  $08
	ld   [hl], a
	ret  
L014929:;R
	ldh  a, [$FFB1]
	add  $20
	ld   l, a
	ld   h, d
	ld   [hl], c
	inc  l
	ld   [hl], b
	add  $06
	ld   l, a
	dec  [hl]
	jr   z, $4942
	ldh  a, [$FFAA]
	and  $B0
	cp   $80
	jr   z, $4942
	and  a
	ret  
L014942:;R
	ldh  a, [$FFB1]
	add  $07
	ld   l, a
	ld   h, d
	set  3, [hl]
	add  $17
	ld   l, a
	ld   a, [hl]
	and  a
	ret  nz
	ld   a, l
	add  $10
	ld   l, a
	ldi  a, [hl]
	ld   b, [hl]
	add  $30
	ld   c, a
	ld   a, [bc]
	and  a
	ret  nz
	scf  
	ret  
L01495E: db $7B;X
L01495F: db $C6;X
L014960: db $19;X
L014961: db $6F;X
L014962: db $62;X
L014963: db $79;X
L014964: db $86;X
L014965: db $4E;X
L014966: db $22;X
L014967: db $78;X
L014968: db $8E;X
L014969: db $46;X
L01496A: db $77;X
L01496B: db $D0;X
L01496C: db $CD;X
L01496D: db $05;X
L01496E: db $4D;X
L01496F: db $A7;X
L014970: db $20;X
L014971: db $14;X
L014972: db $F0;X
L014973: db $B1;X
L014974: db $C6;X
L014975: db $1B;X
L014976: db $6F;X
L014977: db $62;X
L014978: db $34;X
L014979: db $2C;X
L01497A: db $7E;X
L01497B: db $C6;X
L01497C: db $08;X
L01497D: db $77;X
L01497E: db $7D;X
L01497F: db $C6;X
L014980: db $04;X
L014981: db $6F;X
L014982: db $CB;X
L014983: db $86;X
L014984: db $A7;X
L014985: db $C9;X
L014986: db $5F;X
L014987: db $78;X
L014988: db $B9;X
L014989: db $20;X
L01498A: db $05;X
L01498B: db $FE;X
L01498C: db $FF;X
L01498D: db $CA;X
L01498E: db $29;X
L01498F: db $49;X
L014990: db $01;X
L014991: db $FF;X
L014992: db $FF;X
L014993: db $3E;X
L014994: db $2E;X
L014995: db $CD;X
L014996: db $4E;X
L014997: db $3B;X
L014998: db $CB;X
L014999: db $43;X
L01499A: db $28;X
L01499B: db $09;X
L01499C: db $D5;X
L01499D: db $CD;X
L01499E: db $BB;X
L01499F: db $49;X
L0149A0: db $D1;X
L0149A1: db $CB;X
L0149A2: db $4B;X
L0149A3: db $28;X
L0149A4: db $03;X
L0149A5: db $CD;X
L0149A6: db $E0;X
L0149A7: db $49;X
L0149A8: db $7D;X
L0149A9: db $C6;X
L0149AA: db $04;X
L0149AB: db $5F;X
L0149AC: db $1A;X
L0149AD: db $3C;X
L0149AE: db $12;X
L0149AF: db $FE;X
L0149B0: db $08;X
L0149B1: db $DA;X
L0149B2: db $29;X
L0149B3: db $49;X
L0149B4: db $3E;X
L0149B5: db $FF;X
L0149B6: db $32;X
L0149B7: db $77;X
L0149B8: db $C3;X
L0149B9: db $42;X
L0149BA: db $49;X
L0149BB:;C
	ldh  a, [$FFB1]
	add  $08
	ld   e, a
	ld   a, [de]
	cp   $0E
	ret  z
	cp   $0F
	jr   z, $49D4
	ld   a, e
	add  $2A
	ld   e, a
	ld   a, $86
	ld   [de], a
	inc  e
	ld   a, $46
	ld   [de], a
	ret  
L0149D4: db $7B;X
L0149D5: db $C6;X
L0149D6: db $2A;X
L0149D7: db $5F;X
L0149D8: db $3E;X
L0149D9: db $98;X
L0149DA: db $12;X
L0149DB: db $1C;X
L0149DC: db $3E;X
L0149DD: db $46;X
L0149DE: db $12;X
L0149DF: db $C9;X
L0149E0:;C
	ldh  a, [$FFB1]
	add  $08
	ld   e, a
	ld   a, [de]
	cp   $0E
	ret  z
	cp   $0F
	jr   z, $4A00
	push hl
	ld   a, e
	add  $26
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	add  $32
	ld   l, a
	ld   a, $86
	ldi  [hl], a
	ld   a, $46
	ld   [hl], a
	pop  hl
	ret  
L014A00: db $7B;X
L014A01: db $C6;X
L014A02: db $2A;X
L014A03: db $5F;X
L014A04: db $3E;X
L014A05: db $98;X
L014A06: db $12;X
L014A07: db $1C;X
L014A08: db $3E;X
L014A09: db $46;X
L014A0A: db $12;X
L014A0B: db $C9;X
L014A0C:;C
	ldh  a, [$FFB1]
	add  $07
	ld   e, a
	ld   a, [de]
	bit  3, a
	ret  nz
	ldh  a, [$FFAB]
	bit  0, a
	jr   nz, $4A23
	bit  1, a
	ret  z
L014A1E: db $01;X
L014A1F: db $FF;X
L014A20: db $FE;X
L014A21: db $18;X
L014A22: db $03;X
L014A23:;R
	ld   bc, $0201
	ld   a, e
	add  $22
	ld   e, a
	ld   a, [de]
	add  c
	and  $03
	ld   c, a
	call L014CD2
	jp   nc, $4A83
	ld   a, c
	xor  $02
	call L014CD2
	jr   nc, $4A58
L014A3D: db $CB;X
L014A3E: db $41;X
L014A3F: db $C8;X
L014A40: db $F0;X
L014A41: db $B1;X
L014A42: db $C6;X
L014A43: db $04;X
L014A44: db $5F;X
L014A45: db $1A;X
L014A46: db $FE;X
L014A47: db $3C;X
L014A48: db $D0;X
L014A49: db $3C;X
L014A4A: db $12;X
L014A4B: db $CB;X
L014A4C: db $47;X
L014A4D: db $C0;X
L014A4E: db $79;X
L014A4F: db $EE;X
L014A50: db $03;X
L014A51: db $CB;X
L014A52: db $20;X
L014A53: db $30;X
L014A54: db $02;X
L014A55: db $EE;X
L014A56: db $02;X
L014A57: db $4F;X
L014A58:;R
	ld   a, c
	add  a
	add  a
	add  $A3
	ld   l, a
	ld   a, $4A
	adc  a, $00
	ld   h, a
	ldh  a, [$FFB1]
	add  $1A
	ld   e, a
	ld   a, [de]
	add  [hl]
	ld   [de], a
	inc  hl
	inc  e
	ld   a, [de]
	add  [hl]
	ld   [de], a
	inc  hl
	inc  e
	ld   a, [de]
	add  [hl]
	ld   [de], a
	bit  0, c
	jr   nz, $4A83
L014A79: db $7B;X
L014A7A: db $C6;X
L014A7B: db $04;X
L014A7C: db $6F;X
L014A7D: db $62;X
L014A7E: db $36;X
L014A7F: db $FE;X
L014A80: db $2C;X
L014A81: db $36;X
L014A82: db $7F;X
L014A83:;JR
	ldh  a, [$FFB1]
	add  $29
	ld   l, a
	ld   h, d
	add  $05
	ld   e, a
	ld   a, [hl]
	ld   [hl], c
	ld   l, e
	ld   e, a
	ldi  a, [hl]
	ld   h, [hl]
	add  $2E
	ld   l, a
	swap e
	ld   [hl], e
	inc  l
	swap c
	ld   [hl], c
	inc  l
	ld   [hl], b
	ld   a, $2C
	jp   SoundDataCmd_8B
L014AA3: db $00;X
L014AA4: db $01;X
L014AA5: db $08;X
L014AA6: db $00;X
L014AA7: db $FF
L014AA8: db $00
L014AA9: db $FF
L014AAA: db $00;X
L014AAB: db $00;X
L014AAC: db $FF;X
L014AAD: db $F8;X
L014AAE: db $00;X
L014AAF: db $01;X
L014AB0: db $00;X
L014AB1: db $01;X
L014AB2: db $00;X
L014AB3:;C
	call L014453
	ld   hl, $FFB6
	ldh  a, [$FFB1]
	add  $1A
	ld   e, a
	ld   a, [de]
	ldh  [$FFF0], a
	add  a
	add  a
	add  a
	add  [hl]
	ld   c, a
	inc  e
	inc  l
	ld   a, [de]
	ldh  [$FFF1], a
	add  a
	add  a
	add  a
	add  [hl]
	sub  $14
	ld   b, a
	ld   a, e
	add  $06
	ld   e, a
	add  $F0
	ld   l, a
	ld   h, d
	ld   a, [$B00C]
	cp   $01
	jr   z, $4AED
	jr   nc, $4AE9
	ldh  a, [$FF8F]
	bit  2, a
	jr   nz, $4AED
	ld   a, $04
	jr   L014AF3
L014AED: db $1A;X
L014AEE: db $CB;X
L014AEF: db $37;X
L014AF0: db $0F;X
L014AF1: db $E6;X
L014AF2: db $04;X
L014AF3:;R
	add  b
	ld   [hl], a
	ld   a, l
	add  $FC
	ld   l, a
	dec  e
	dec  e
	dec  e
	ld   a, [de]
	add  c
	ld   [hl], a
	ld   a, [$C01A]
	cp   $01
	ret  nz
L014B05: db $7B;X
L014B06: db $C6;X
L014B07: db $0B;X
L014B08: db $6F;X
L014B09: db $46;X
L014B0A: db $F0;X
L014B0B: db $F0;X
L014B0C: db $CB;X
L014B0D: db $37;X
L014B0E: db $4F;X
L014B0F: db $F0;X
L014B10: db $F1;X
L014B11: db $B1;X
L014B12: db $4F;X
L014B13: db $97;X
L014B14: db $C9;X
L014B15:;I
	ld   a, e
	add  $06
	ld   e, a
	ld   a, $80
	ld   [de], a
	call L014BF0
	call L001EF3
L014B22:;I
	call L002027
	call L014BDC
	call L014BF0
	ldh  a, [$FFB1]
	add  $36
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	add  $07
	ld   l, a
	ld   a, [hl]
	bit  2, a
	ret  z
	push af
	ld   a, l
	add  $13
	ld   l, a
	ldi  a, [hl]
	ldh  [$FFF0], a
	ld   a, [hl]
	ldh  [$FFF1], a
	ld   a, l
	add  $0E
	ld   l, a
	ld   a, [hl]
	push hl
	add  a
	add  a
	ld   c, a
	ld   b, $00
	ld   hl, $4CC2
	add  hl, bc
	ldh  a, [$FFB1]
	add  $1A
	ld   e, a
	ldh  a, [$FFF0]
	add  [hl]
	ld   [de], a
	inc  hl
	inc  e
	ldh  a, [$FFF1]
	add  [hl]
	ld   [de], a
	ld   a, e
	add  $1B
	ld   e, a
	pop  hl
	ld   a, l
	add  $0D
	ld   l, a
	ldi  a, [hl]
	ld   [de], a
	inc  e
	ld   a, [hl]
	ld   [de], a
	ld   a, e
	add  $D0
	ld   e, a
	pop  af
	ld   [de], a
	push af
	call L014C32
	pop  af
	bit  1, a
	jr   nz, $4BB1
	ldh  a, [$FFB1]
	add  $11
	ld   e, a
	add  $0F
	ld   l, a
	ld   h, d
	ld   a, [de]
	sub  $07
	ldi  [hl], a
	ld   [hl], $20
	ld   a, e
	add  $08
	ld   l, a
	ld   [hl], $01
	add  $F0
	ld   l, a
	ld   [hl], $00
	call L001EF3
L014B9D:;I
	call L014D5F
	ret  nc
	ld   a, $2E
	call SoundDataCmd_8B
	ldh  a, [$FFB1]
	add  $32
	ld   l, a
	ld   h, d
	ld   [hl], $86
	inc  l
	ld   [hl], $46
L014BB1:;R
	call L001EF3
L014BB4:;I
	call L002027
	ret  nc
	ldh  a, [$FFB1]
	add  $36
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	add  $07
	ld   l, a
	ld   a, [hl]
	and  $FD
	ld   [hl], a
	call L014E5E
	ldh  a, [$FFB1]
	ld   l, a
	ld   h, d
	res  7, [hl]
	ld   bc, $0002
	call L001EE8
L014BD6:;I
	call L001EF3
L014BD9:;I
	jp   L001ECD
L014BDC:;C
	ldh  a, [$FFB1]
	add  $30
	ld   l, a
	ld   h, d
	ldd  a, [hl]
	and  a
	ret  z
	dec  l
	add  [hl]
	and  $3F
	ldi  [hl], a
	cp   [hl]
	ret  nz
	inc  l
	ld   [hl], $00
	ret  
L014BF0:;C
	ldh  a, [$FFB1]
	add  $2E
	ld   e, a
	ld   a, [de]
	and  $3F
	ld   l, a
	ld   h, $00
	ld   bc, $2F80
	add  hl, bc
	ld   e, [hl]
	sra  e
	sra  e
	add  $30
	and  $3F
	ld   l, a
	ld   h, $00
	add  hl, bc
	ld   b, e
	ld   c, [hl]
	sra  c
	sra  c
	ldh  a, [$FFB1]
	add  $36
	ld   l, a
	add  $D7
	ld   e, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	add  $0D
	ld   l, a
	sra  b
	ldi  a, [hl]
	add  b
	ld   [de], a
	inc  l
	inc  l
	inc  l
	inc  e
	inc  e
	inc  e
	inc  e
	sra  c
	ld   a, [hl]
	add  c
	ld   [de], a
	ret  
L014C32:;C
	call L014434
	ldh  a, [$FFB1]
	add  $1A
	ld   l, a
	ld   h, d
	ld   e, [hl]
	inc  l
	ldi  a, [hl]
	dec  a
	add  a
	add  a
	add  a
	add  c
	add  e
	ldi  [hl], a
	ld   [hl], b
	ret  
L014C47:;C
	push bc
	push hl
	add  a
	add  a
	ld   l, a
	ld   h, $00
	ld   bc, $4CC2
	add  hl, bc
	ldh  a, [$FFB1]
	add  $1A
	ld   e, a
	ld   a, [de]
	add  [hl]
	ldh  [$FFF0], a
	inc  e
	inc  hl
	ld   a, [de]
	add  [hl]
	ldh  [$FFF1], a
	inc  e
	inc  hl
	ld   a, [de]
	add  [hl]
	ldh  [$FFF2], a
	inc  e
	ld   a, [de]
	ldh  [$FFF3], a
	ld   a, $03
	ldh  [$FFF4], a
	ld   hl, $FFF0
	ldi  a, [hl]
	cp   $06
	jr   nc, $4C8C
	ldi  a, [hl]
	cp   $0E
	jr   nc, $4C8C
	and  a
	jr   z, $4C8C
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	ld   a, [hl]
	and  a
	jr   nz, $4C8C
	ldh  a, [$FFF4]
	and  $FE
	ldh  [$FFF4], a
L014C8C:;R
	ld   a, e
	add  $0C
	ld   e, a
	ld   a, [de]
	add  a
	add  a
	ld   l, a
	ld   h, $00
	add  hl, bc
	ld   bc, $FFF0
	ld   a, [bc]
	add  [hl]
	cp   $06
	jr   nc, $4CBD
	inc  c
	inc  hl
	ld   a, [bc]
	add  [hl]
	jr   z, $4CBD
	cp   $0E
	jr   nc, $4CBD
	inc  c
	inc  hl
	ld   a, [bc]
	add  [hl]
	ld   l, a
	inc  c
	ld   a, [bc]
	ld   h, a
	ld   a, [hl]
	and  a
	jr   nz, $4CBD
	ldh  a, [$FFF4]
	and  $FD
	pop  hl
	pop  bc
	ret  
L014CBD:;R
	ldh  a, [$FFF4]
	pop  hl
	pop  bc
	ret  
L014CC2: db $00
L014CC3: db $FF
L014CC4: db $F8
L014CC5: db $00;X
L014CC6: db $01
L014CC7: db $00
L014CC8: db $01
L014CC9: db $00;X
L014CCA: db $00
L014CCB: db $01
L014CCC: db $08
L014CCD: db $00;X
L014CCE: db $FF
L014CCF: db $00
L014CD0: db $FF
L014CD1: db $00;X
L014CD2:;C
	push bc
	push hl
	add  a
	add  a
	ld   l, a
	ld   h, $00
	ld   bc, $4CC2
	add  hl, bc
	ldh  a, [$FFB1]
	add  $1A
	ld   e, a
	ld   a, [de]
	add  [hl]
	cp   $06
	jr   nc, $4D01
	inc  e
	inc  hl
	ld   a, [de]
	add  [hl]
	jr   z, $4D01
	cp   $0E
	jr   nc, $4D01
	inc  e
	inc  hl
	ld   a, [de]
	add  [hl]
	ld   c, a
	inc  e
	ld   a, [de]
	ld   b, a
	ld   a, [bc]
	pop  hl
	pop  bc
	and  a
	ret  z
L014CFF: db $37;X
L014D00: db $C9;X
L014D01:;R
	pop  hl
	pop  bc
	scf  
	ret  
L014D05:;C
	push bc
	push hl
	ldh  a, [$FFB1]
	add  $29
	ld   e, a
	add  $F2
	ld   l, a
	ld   h, d
	ld   b, [hl]
	inc  l
	ldi  a, [hl]
	add  $08
	ld   c, a
	ld   a, [de]
	ld   e, $03
	and  a
	jr   z, $4D3D
	cp   $02
	jr   z, $4D4B
	cpl  
	add  e
	add  c
	ld   c, a
	ld   a, b
	cp   $0D
	jr   nc, $4D5B
	ld   b, [hl]
	ld   a, [bc]
	and  a
	jr   nz, $4D30
	res  1, e
L014D30:;R
	dec  l
	ld   a, [hl]
	add  $08
	ld   c, a
	ld   a, [bc]
	and  a
	jr   nz, $4D5B
	res  0, e
	jr   L014D5B
L014D3D:;R
	ld   a, b
	cp   $0D
	jr   nc, $4D5B
	ld   b, [hl]
	ld   a, [bc]
	and  a
	jr   nz, $4D5B
	ld   e, $00
	jr   L014D5B
L014D4B:;R
	ld   a, b
	cp   $0C
	jr   nc, $4D5B
	ld   b, [hl]
	ld   a, c
	add  $08
	ld   c, a
	ld   a, [bc]
	and  a
	jr   nz, $4D5B
	ld   e, $00
L014D5B:;R
	pop  hl
	pop  bc
	ld   a, e
	ret  
L014D5F:;C
	ldh  a, [$FFB1]
	add  $18
	ld   e, a
	add  $F8
	ld   l, a
	ld   h, d
	add  $10
	ld   b, a
	ld   a, [de]
	add  [hl]
	ldi  [hl], a
	inc  e
	ld   c, [hl]
	ld   a, [de]
	adc  a, [hl]
	ld   [hl], a
	ld   l, b
	sub  [hl]
	ld   b, a
	ld   a, c
	sub  [hl]
	xor  b
	and  $08
	jr   z, $4DA3
	ld   a, l
	add  $FB
	ld   l, a
	ldi  a, [hl]
	cp   $0D
	jr   nc, $4D8F
	ldi  a, [hl]
	add  $08
	ld   c, a
	ld   b, [hl]
	ld   a, [bc]
	and  a
	jr   z, $4D9D
L014D8F:;R
	ld   a, e
	add  $F8
	ld   e, a
	ld   a, [de]
	sub  $04
	and  $F8
	add  $04
	ld   [de], a
	scf  
	ret  
L014D9D:;R
	dec  l
	ld   a, [hl]
	add  $08
	ldd  [hl], a
	inc  [hl]
L014DA3:;R
	ld   l, e
	dec  l
	ld   a, e
	add  $08
	ld   e, a
	ld   a, [de]
	add  [hl]
	ldi  [hl], a
	ld   a, [hl]
	adc  a, $00
	ldd  [hl], a
	cp   $07
	jr   c, $4DB8
L014DB4: db $97;X
L014DB5: db $22;X
L014DB6: db $36;X
L014DB7: db $07;X
L014DB8:;R
	and  a
	ret  
L014DBA:;C
	call L014434
	push de
	ld   a, c
	add  $08
	ld   c, a
	ld   d, $3E
	ld   a, $0C
L014DC6:;R
	ldh  [$FFF1], a
	ld   a, [bc]
	ld   e, a
	ld   a, [de]
	ldi  [hl], a
	inc  c
	ld   a, [bc]
	ld   e, a
	ld   a, [de]
	ldi  [hl], a
	inc  c
	ld   a, [bc]
	ld   e, a
	ld   a, [de]
	ldi  [hl], a
	inc  c
	ld   a, [bc]
	ld   e, a
	ld   a, [de]
	ldi  [hl], a
	inc  c
	ld   a, [bc]
	ld   e, a
	ld   a, [de]
	ldi  [hl], a
	inc  c
	ld   a, [bc]
	ld   e, a
	ld   a, [de]
	ld   [hl], a
	ldh  a, [$FF8F]
	bit  7, a
	jr   z, $4E23
L014DEB: db $14;X
L014DEC: db $3E;X
L014DED: db $02;X
L014DEE: db $E0;X
L014DEF: db $70;X
L014DF0: db $0A;X
L014DF1: db $5F;X
L014DF2: db $1A;X
L014DF3: db $32;X
L014DF4: db $0D;X
L014DF5: db $0A;X
L014DF6: db $5F;X
L014DF7: db $1A;X
L014DF8: db $32;X
L014DF9: db $0D;X
L014DFA: db $0A;X
L014DFB: db $5F;X
L014DFC: db $1A;X
L014DFD: db $32;X
L014DFE: db $0D;X
L014DFF: db $0A;X
L014E00: db $5F;X
L014E01: db $1A;X
L014E02: db $32;X
L014E03: db $0D;X
L014E04: db $0A;X
L014E05: db $5F;X
L014E06: db $1A;X
L014E07: db $32;X
L014E08: db $0D;X
L014E09: db $0A;X
L014E0A: db $5F;X
L014E0B: db $1A;X
L014E0C: db $77;X
L014E0D: db $3E;X
L014E0E: db $01;X
L014E0F: db $E0;X
L014E10: db $70;X
L014E11: db $15;X
L014E12: db $79;X
L014E13: db $C6;X
L014E14: db $08;X
L014E15: db $4F;X
L014E16: db $7D;X
L014E17: db $C6;X
L014E18: db $20;X
L014E19: db $6F;X
L014E1A: db $38;X
L014E1B: db $10;X
L014E1C: db $F0;X
L014E1D: db $F1;X
L014E1E: db $3D;X
L014E1F: db $20;X
L014E20: db $A5;X
L014E21: db $18;X
L014E22: db $0F;X
L014E23:;R
	inc  c
	inc  c
	inc  c
	ld   a, l
	add  $1B
	ld   l, a
	jr   nc, $4E2D
	inc  h
L014E2D:;R
	ldh  a, [$FFF1]
	dec  a
	jr   nz, $4DC6
	pop  de
	ld   a, [de]
	and  a
	ld   l, a
	jr   z, $4E3A
	ld   l, $20
L014E3A:;R
	ld   h, $C4
	ld   b, $0C
L014E3E:;R
	set  7, [hl]
	inc  l
	inc  l
	dec  b
	jr   nz, $4E3E
	ret  
L014E46: db $F0;X
L014E47: db $B1;X
L014E48: db $C6;X
L014E49: db $28;X
L014E4A: db $5F;X
L014E4B: db $1A;X
L014E4C: db $A7;X
L014E4D: db $6F;X
L014E4E: db $28;X
L014E4F: db $02;X
L014E50: db $2E;X
L014E51: db $20;X
L014E52: db $26;X
L014E53: db $C4;X
L014E54: db $06;X
L014E55: db $0C;X
L014E56: db $CB;X
L014E57: db $FE;X
L014E58: db $2C;X
L014E59: db $2C;X
L014E5A: db $05;X
L014E5B: db $20;X
L014E5C: db $F9;X
L014E5D: db $C9;X
L014E5E:;C
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	ld   l, a
	add  $90
	ld   c, a
	ld   b, $C0
	ld   a, [bc]
	and  a
	ret  nz
	ld   a, l
	add  a
	add  a
	add  a
	add  a
	ldh  [$FFF0], a
	ld   a, e
	add  $E0
	ld   e, a
	add  $14
	ld   l, a
	ld   h, d
	ld   c, [hl]
	inc  l
	ld   b, [hl]
	ld   a, [de]
	swap a
	or   $80
	ld   [bc], a
	ld   e, a
	dec  l
	dec  l
	ldd  a, [hl]
	sub  $02
	ret  c
	ld   c, l
	ld   b, h
	ld   l, a
	ldh  a, [$FFF0]
	add  l
	add  a
	ld   l, a
	ld   h, $C4
	ld   a, [bc]
	ld   b, [hl]
	inc  l
	add  [hl]
	ld   c, a
	dec  l
	set  7, b
	ld   h, d
	ld   d, $3E
	ld   a, [de]
	ld   [bc], a
	ldh  a, [$FF8F]
	bit  7, a
	jr   nz, $4EAE
	ld   d, h
	ld   h, $C4
	ld   [hl], b
	ret  
L014EAE: db $3E;X
L014EAF: db $02;X
L014EB0: db $E0;X
L014EB1: db $70;X
L014EB2: db $14;X
L014EB3: db $1A;X
L014EB4: db $02;X
L014EB5: db $3E;X
L014EB6: db $01;X
L014EB7: db $E0;X
L014EB8: db $70;X
L014EB9: db $54;X
L014EBA: db $26;X
L014EBB: db $C4;X
L014EBC: db $70;X
L014EBD: db $C9;X
L014EBE:;C
	ldh  a, [$FFB1]
	add  $1E
	ld   l, a
	add  $F4
	ld   e, a
	ld   h, d
	ldi  a, [hl]
	ld   b, [hl]
	ld   c, a
	or   b
	ret  z
	push de
	ld   l, e
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	call L000E11
	pop  de
	ld   a, e
	add  $F8
	ld   e, a
	ld   l, a
	ld   h, d
	ldh  a, [$FFD3]
	and  a
	jr   nz, $4F03
	ldh  a, [$FFD0]
	add  [hl]
	ldi  [hl], a
	ldh  a, [$FFD1]
	adc  a, [hl]
	ldi  [hl], a
	ldh  a, [$FFD2]
	adc  a, [hl]
	ld   [hl], a
	jr   c, $4F03
	ldd  a, [hl]
	cp   $98
	jr   c, $4F0D
L014EF3: db $20;X
L014EF4: db $0E;X
L014EF5: db $3A;X
L014EF6: db $FE;X
L014EF7: db $96;X
L014EF8: db $38;X
L014EF9: db $13;X
L014EFA: db $20;X
L014EFB: db $07;X
L014EFC: db $7E;X
L014EFD: db $FE;X
L014EFE: db $7F;X
L014EFF: db $38;X
L014F00: db $0C;X
L014F01: db $28;X
L014F02: db $0A;X
L014F03: db $6B;X
L014F04: db $3E;X
L014F05: db $7F;X
L014F06: db $22;X
L014F07: db $3E;X
L014F08: db $96;X
L014F09: db $22;X
L014F0A: db $3E;X
L014F0B: db $98;X
L014F0C: db $77;X
L014F0D:;R
	ld   a, e
	add  $04
	ld   e, a
	ld   l, a
	ldh  a, [$FFD3]
	and  a
	jr   nz, $4F25
	ldh  a, [$FFD2]
	and  a
	jr   nz, $4F25
	ldh  a, [$FFD0]
	add  [hl]
	ldi  [hl], a
	ldh  a, [$FFD1]
	adc  a, [hl]
	ld   [hl], a
	ret  nc
L014F25: db $6B;X
L014F26: db $3E;X
L014F27: db $FF;X
L014F28: db $22;X
L014F29: db $77;X
L014F2A: db $C9;X
L014F2B:;C
	ldh  a, [$FFC0]
	and  $0F
	cp   $0C
	ret  nc
	ldh  a, [$FFB1]
	add  $12
	call L014FA4
	push hl
	ld   bc, $FFC3
	ld   e, $05
L014F3F:;R
	ld   a, [bc]
	and  a
	jr   nz, $4F4F
	ldi  [hl], a
	inc  c
	dec  e
	jr   nz, $4F3F
L014F48: db $2B;X
L014F49: db $36;X
L014F4A: db $80;X
L014F4B: db $2C;X
L014F4C: db $18;X
L014F4D: db $08;X
L014F4E:;R
	ld   a, [bc]
L014F4F:;R
	add  $80
	ldi  [hl], a
	inc  c
	dec  e
	jr   nz, $4F4E
	ld   [hl], $25
	inc  l
	ld   [hl], $00
	pop  hl
	ld   a, $07
	jp   L0006A2
L014F61:;C
	ldh  a, [$FFC0]
	and  $0F
	cp   $0C
	ret  nc
	ldh  a, [$FFB1]
	add  $1E
	call L014FA4
	push hl
	push de
	ld   [hl], $00
	inc  l
	ld   [hl], $00
	inc  l
	ld   [hl], $00
	ld   d, l
	inc  l
	ld   bc, $FFC4
	ld   e, $04
L014F80:;R
	ld   a, [bc]
	and  a
	jr   nz, $4F93
	ldi  [hl], a
	inc  d
	inc  c
	dec  e
	jr   nz, $4F80
L014F8A: db $2D;X
L014F8B: db $36;X
L014F8C: db $80;X
L014F8D: db $2D;X
L014F8E: db $36;X
L014F8F: db $25;X
L014F90: db $18;X
L014F91: db $0B;X
L014F92:;R
	ld   a, [bc]
L014F93:;R
	add  $80
	ldi  [hl], a
	inc  c
	dec  e
	jr   nz, $4F92
	ld   l, d
	ld   [hl], $25
	pop  de
	pop  hl
	ld   a, $07
	jp   L0006A2
L014FA4:;C
	ld   e, a
	ld   hl, $FFB3
	ld   a, [de]
	ldi  [hl], a
	inc  e
	ld   a, [de]
	ldi  [hl], a
	ld   [hl], $00
	call L000EF8
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	and  a
	ld   hl, $DC2D
	ret  nz
	ld   hl, $C0A6
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	ret  
L014FC4:;C
	ld   bc, $0001
	call L01500E
	ldh  a, [$FFC0]
	and  $0F
	cp   $0C
	ret  nc
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	and  a
	ld   hl, $DC33
	jr   nz, $4FE5
	ld   hl, $C0A6
	ldi  a, [hl]
	ld   h, [hl]
	add  $06
	ld   l, a
L014FE5:;R
	ld   c, $01
	ld   b, $07
L014FE9:;R
	ld   a, [hl]
	and  a
	jr   nz, $4FF1
	ld   [hl], $81
	jr   L01500A
L014FF1:;R
	inc  a
	cp   $8A
	jr   nc, $4FF9
	ld   [hl], a
	jr   L01500A
L014FF9:;R
	ld   a, $80
	ldd  [hl], a
	inc  c
	dec  b
	jr   nz, $4FE9
L015000: db $23;X
L015001: db $06;X
L015002: db $07;X
L015003: db $3E;X
L015004: db $89;X
L015005: db $22;X
L015006: db $05;X
L015007: db $20;X
L015008: db $FC;X
L015009: db $C9;X
L01500A:;R
	ld   a, c
	jp   L0006A2
L01500E:;C
	push bc
	ldh  a, [$FFB1]
	add  $0A
	ld   l, a
	add  $04
	ld   e, a
	ld   h, d
	ld   a, c
	add  [hl]
	ldi  [hl], a
	ld   c, a
	ld   a, b
	adc  a, [hl]
	ldi  [hl], a
	ld   b, a
	ld   a, $00
	adc  a, [hl]
	ld   [hl], a
	jr   c, $5038
	cp   $98
	jr   c, $5040
L01502A: db $20;X
L01502B: db $0C;X
L01502C: db $78;X
L01502D: db $FE;X
L01502E: db $96;X
L01502F: db $38;X
L015030: db $0F;X
L015031: db $20;X
L015032: db $05;X
L015033: db $79;X
L015034: db $FE;X
L015035: db $80;X
L015036: db $38;X
L015037: db $08;X
L015038: db $36;X
L015039: db $98;X
L01503A: db $2D;X
L01503B: db $36;X
L01503C: db $96;X
L01503D: db $2D;X
L01503E: db $36;X
L01503F: db $7F;X
L015040:;R
	ld   l, e
	pop  bc
	ld   a, c
	add  [hl]
	ldi  [hl], a
	ld   a, b
	adc  a, [hl]
	ld   [hl], a
	ret  nc
L015049: db $36;X
L01504A: db $FF;X
L01504B: db $2D;X
L01504C: db $36;X
L01504D: db $FF;X
L01504E: db $C9;X
L01504F: db $CD;X
L015050: db $0E;X
L015051: db $50;X
L015052:;C
	ldh  a, [$FFC0]
	and  $0F
	cp   $0C
	ret  nc
	ldh  a, [$FFB1]
	add  $0A
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ldh  [$FFB3], a
	ldi  a, [hl]
	ldh  [$FFB4], a
	ldi  a, [hl]
	ldh  [$FFB5], a
	call L000EF8
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	and  a
	ld   hl, $DC2D
	jr   nz, $507D
	ld   hl, $C0A6
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
L01507D:;R
	push hl
	ld   bc, $FFC1
	ld   e, $07
L015083:;R
	ld   a, [bc]
	and  a
	jr   nz, $5092
	ldi  [hl], a
	inc  c
	dec  e
	jr   nz, $5083
	dec  hl
	ld   [hl], $80
	jr   L015099
L015091:;R
	ld   a, [bc]
L015092:;R
	add  $80
	ldi  [hl], a
	inc  c
	dec  e
	jr   nz, $5091
L015099:;R
	pop  hl
	ld   a, $07
	jp   L0006A2
L01509F:;C
	ldh  a, [$FFC0]
	and  $0F
	cp   $08
	ret  nz
L0150A6: db $21;X
L0150A7: db $B1;X
L0150A8: db $DD;X
L0150A9: db $FA;X
L0150AA: db $CA;X
L0150AB: db $C0;X
L0150AC: db $C3;X
L0150AD: db $51;X
L0150AE: db $0A;X
L0150AF:;C
	ldh  a, [$FFC0]
	and  $0F
	cp   $08
	jr   z, $50BA
	cp   $0C
	ret  nz
L0150BA: db $21;X
L0150BB: db $C3;X
L0150BC: db $50;X
L0150BD: db $06;X
L0150BE: db $01;X
L0150BF: db $CD;X
L0150C0: db $87;X
L0150C1: db $1E;X
L0150C2: db $C9;X
L0150C3: db $F0;X
L0150C4: db $B1;X
L0150C5: db $C6;X
L0150C6: db $28;X
L0150C7: db $6F;X
L0150C8: db $62;X
L0150C9: db $3E;X
L0150CA: db $FF;X
L0150CB: db $22;X
L0150CC: db $22;X
L0150CD: db $CD;X
L0150CE: db $F3;X
L0150CF: db $1E;X
L0150D0: db $FA;X
L0150D1: db $90;X
L0150D2: db $C0;X
L0150D3: db $A7;X
L0150D4: db $C0;X
L0150D5: db $F0;X
L0150D6: db $C0;X
L0150D7: db $E6;X
L0150D8: db $0F;X
L0150D9: db $FE;X
L0150DA: db $0C;X
L0150DB: db $28;X
L0150DC: db $65;X
L0150DD: db $7B;X
L0150DE: db $C6;X
L0150DF: db $28;X
L0150E0: db $6F;X
L0150E1: db $62;X
L0150E2: db $FA;X
L0150E3: db $E5;X
L0150E4: db $C0;X
L0150E5: db $BE;X
L0150E6: db $28;X
L0150E7: db $36;X
L0150E8: db $22;X
L0150E9: db $FA;X
L0150EA: db $E4;X
L0150EB: db $C0;X
L0150EC: db $CD;X
L0150ED: db $2F;X
L0150EE: db $51;X
L0150EF: db $FA;X
L0150F0: db $E5;X
L0150F1: db $C0;X
L0150F2: db $CD;X
L0150F3: db $C2;X
L0150F4: db $0F;X
L0150F5: db $21;X
L0150F6: db $0E;X
L0150F7: db $DE;X
L0150F8: db $01;X
L0150F9: db $C5;X
L0150FA: db $FF;X
L0150FB: db $1E;X
L0150FC: db $03;X
L0150FD: db $0A;X
L0150FE: db $A7;X
L0150FF: db $20;X
L015100: db $0C;X
L015101: db $22;X
L015102: db $0C;X
L015103: db $1D;X
L015104: db $20;X
L015105: db $F7;X
L015106: db $2D;X
L015107: db $36;X
L015108: db $80;X
L015109: db $2C;X
L01510A: db $18;X
L01510B: db $08;X
L01510C: db $0A;X
L01510D: db $C6;X
L01510E: db $80;X
L01510F: db $22;X
L015110: db $0C;X
L015111: db $1D;X
L015112: db $20;X
L015113: db $F8;X
L015114: db $36;X
L015115: db $A6;X
L015116: db $21;X
L015117: db $0E;X
L015118: db $DE;X
L015119: db $3E;X
L01511A: db $06;X
L01511B: db $C3;X
L01511C: db $A2;X
L01511D: db $06;X
L01511E: db $2C;X
L01511F: db $FA;X
L015120: db $E4;X
L015121: db $C0;X
L015122: db $BE;X
L015123: db $C8;X
L015124: db $CD;X
L015125: db $2F;X
L015126: db $51;X
L015127: db $21;X
L015128: db $12;X
L015129: db $DE;X
L01512A: db $3E;X
L01512B: db $02;X
L01512C: db $C3;X
L01512D: db $A2;X
L01512E: db $06;X
L01512F: db $77;X
L015130: db $CD;X
L015131: db $C2;X
L015132: db $0F;X
L015133: db $F0;X
L015134: db $C6;X
L015135: db $C6;X
L015136: db $80;X
L015137: db $EA;X
L015138: db $12;X
L015139: db $DE;X
L01513A: db $F0;X
L01513B: db $C7;X
L01513C: db $C6;X
L01513D: db $80;X
L01513E: db $EA;X
L01513F: db $13;X
L015140: db $DE;X
L015141: db $C9;X
L015142: db $7B;X
L015143: db $C6;X
L015144: db $29;X
L015145: db $6F;X
L015146: db $62;X
L015147: db $FA;X
L015148: db $12;X
L015149: db $C1;X
L01514A: db $BE;X
L01514B: db $C8;X
L01514C: db $77;X
L01514D: db $4F;X
L01514E: db $06;X
L01514F: db $00;X
L015150: db $D6;X
L015151: db $3C;X
L015152: db $04;X
L015153: db $30;X
L015154: db $FB;X
L015155: db $05;X
L015156: db $C6;X
L015157: db $3C;X
L015158: db $0E;X
L015159: db $00;X
L01515A: db $D6;X
L01515B: db $0A;X
L01515C: db $0C;X
L01515D: db $30;X
L01515E: db $FB;X
L01515F: db $0D;X
L015160: db $C6;X
L015161: db $0A;X
L015162: db $C6;X
L015163: db $80;X
L015164: db $EA;X
L015165: db $13;X
L015166: db $DE;X
L015167: db $79;X
L015168: db $C6;X
L015169: db $80;X
L01516A: db $EA;X
L01516B: db $12;X
L01516C: db $DE;X
L01516D: db $78;X
L01516E: db $C6;X
L01516F: db $80;X
L015170: db $EA;X
L015171: db $10;X
L015172: db $DE;X
L015173: db $21;X
L015174: db $10;X
L015175: db $DE;X
L015176: db $3E;X
L015177: db $04;X
L015178: db $C3;X
L015179: db $A2;X
L01517A: db $06;X
L01517B:;C
	call L014434
	inc  b
	ld   a, c
	add  $08
	ld   c, a
	push de
	ld   e, $0C
L015186:;R
	ld   d, $06
L015188:;R
	ld   a, [bc]
	cp   $04
	set  7, c
	ldi  a, [hl]
	jr   nz, $5191
L015190: db $97;X
L015191:;R
	ld   [bc], a
	res  7, c
	inc  c
	dec  d
	jr   nz, $5188
	inc  c
	inc  c
	ld   a, l
	add  $1A
	ld   l, a
	jr   nc, $51A1
	inc  h
L0151A1:;R
	dec  e
	jr   nz, $5186
	pop  de
	ret  
L0151A6:;C
	call L014434
	push de
	inc  b
	ld   a, c
	add  $08
	ld   c, a
	push hl
	ld   a, [de]
	ld   l, a
	ld   a, [$C011]
	xor  l
	and  $01
	jr   z, $51BD
	pop  hl
	pop  de
	ret  
L0151BD:;R
	ld   a, e
	add  $FA
	ld   e, a
	ld   a, [de]
	dec  a
	pop  de
	ld   h, a
	ld   a, l
	and  a
	jr   z, $51CB
	ld   a, $20
L0151CB:;R
	ldh  [$FFF0], a
	bit  1, h
	jr   nz, $5209
L0151D1:;R
	ld   hl, $0600
L0151D4:;R
	ld   a, [bc]
	bit  7, a
	jr   nz, $51E4
	cp   $03
	ld   a, $00
	jr   nz, $51E2
L0151DF: db $FA;X
L0151E0: db $E0;X
L0151E1: db $3E;X
L0151E2:;R
	ld   [de], a
	inc  l
L0151E4:;R
	inc  c
	inc  e
	dec  h
	jr   nz, $51D4
	inc  c
	inc  c
	ld   a, e
	add  $1A
	ld   e, a
	jr   nc, $51F2
	inc  d
L0151F2:;R
	ld   a, l
	and  a
	ldh  a, [$FFF0]
	jr   z, $51FD
	ld   l, a
	ld   h, $C4
	set  7, [hl]
L0151FD:;R
	add  $02
	ldh  [$FFF0], a
	and  $1F
	cp   $18
	jr   c, $51D1
	pop  de
	ret  
L015209:;R
	ld   hl, $0600
L01520C:;R
	ld   a, [bc]
	bit  7, a
	jr   nz, $5218
	set  7, c
	ld   a, [bc]
	res  7, c
	ld   [de], a
	inc  l
L015218:;R
	inc  c
	inc  e
	dec  h
	jr   nz, $520C
	inc  c
	inc  c
	ld   a, e
	add  $1A
	ld   e, a
	jr   nc, $5226
	inc  d
L015226:;R
	ld   a, l
	and  a
	ldh  a, [$FFF0]
	jr   z, $5231
	ld   l, a
	ld   h, $C4
	set  7, [hl]
L015231:;R
	add  $02
	ldh  [$FFF0], a
	and  $1F
	cp   $18
	jr   c, $5209
	pop  de
	ret  
L01523D:;C
	call L014453
	call L014434
	ld   a, [de]
	and  a
	jr   z, $5249
	ld   a, $20
L015249:;R
	ldh  [$FFD0], a
	ld   a, c
	add  $08
	ld   c, a
	inc  b
	push de
	push hl
	add  $80
	ld   l, a
	ld   h, b
	ld   e, $60
	sub  a
	ldh  [$FFD1], a
L01525B:;R
	ldi  [hl], a
	dec  e
	jr   nz, $525B
	pop  de
L015260:;J
	ld   hl, $0600
L015263:;R
	ld   a, [bc]
	bit  7, a
	jr   nz, $52BB
	cp   $02
	jr   c, $528E
L01526C: db $28;X
L01526D: db $14;X
L01526E: db $FE;X
L01526F: db $04;X
L015270: db $30;X
L015271: db $0A;X
L015272: db $3E;X
L015273: db $81;X
L015274: db $02;X
L015275: db $05;X
L015276: db $3E;X
L015277: db $E0;X
L015278: db $02;X
L015279: db $04;X
L01527A: db $18;X
L01527B: db $3F;X
L01527C: db $05;X
L01527D: db $97;X
L01527E: db $02;X
L01527F: db $04;X
L015280: db $18;X
L015281: db $39;X
L015282: db $3E;X
L015283: db $C6;X
L015284: db $CB;X
L015285: db $F9;X
L015286: db $02;X
L015287: db $CB;X
L015288: db $B9;X
L015289: db $FA;X
L01528A: db $E0;X
L01528B: db $3E;X
L01528C: db $18;X
L01528D: db $2B;X
L01528E:;R
	ldh  a, [$FFD1]
	add  $04
	ldh  [$FFD1], a
	sub  $04
	and  $0F
	jr   nz, $529B
	inc  a
L01529B:;R
	or   $70
	set  7, c
	ld   [bc], a
	res  7, c
	ldh  a, [$FFB6]
	ld   [$C0A8], a
	ldh  a, [$FFB7]
	ld   [$C0A9], a
	dec  b
	ld   a, [bc]
	inc  b
	and  $70
	or   $07
	push bc
	ld   c, a
	ld   b, $3E
	ld   a, [bc]
	pop  bc
	ld   [de], a
	inc  l
L0152BB:;R
	ldh  a, [$FFB6]
	add  $08
	ldh  [$FFB6], a
	inc  e
	inc  c
	dec  h
	jr   nz, $5263
	inc  c
	inc  c
	ld   a, e
	add  $1A
	ld   e, a
	jr   nc, $52CF
	inc  d
L0152CF:;R
	ldh  a, [$FFB6]
	sub  $30
	ldh  [$FFB6], a
	ldh  a, [$FFB7]
	add  $08
	ldh  [$FFB7], a
	ld   a, l
	and  a
	ldh  a, [$FFD0]
	jr   z, $52E6
	ld   l, a
	ld   h, $C4
	set  7, [hl]
L0152E6:;R
	add  $02
	ldh  [$FFD0], a
	and  $1F
	cp   $18
	jp   c, $5260
	pop  de
	ldh  a, [$FFB1]
	add  $09
	ld   e, a
	ld   a, [de]
	cp   $07
	jr   c, $52FE
L0152FC: db $3E;X
L0152FD: db $06;X
L0152FE:;R
	ld   c, a
	ld   b, $00
	ld   hl, $5308
	add  hl, bc
	ld   a, [hl]
	jp   SoundDataCmd_8B
L015309: db $2F
L01530A: db $30
L01530B: db $31
L01530C: db $32;X
L01530D: db $33;X
L01530E: db $34;X
L01530F: db $35;X
L015310:;C
	call L000D98
	ldh  [$FFD1], a
	call L014453
	call L014434
	ld   a, [de]
	ldh  [$FFD0], a
	and  a
	jr   z, $5323
	ld   a, $20
L015323:;R
	ldh  [$FFD2], a
	inc  b
	ld   a, c
	add  $88
	ld   c, a
	push de
	ld   e, l
	ld   d, h
L01532D:;J
	ld   hl, $0600
L015330:;R
	ld   a, [bc]
	and  a
	jr   z, $5391
	bit  7, a
	jp   z, $5353
L015339: db $3D;X
L01533A: db $02;X
L01533B: db $E6;X
L01533C: db $0F;X
L01533D: db $20;X
L01533E: db $52;X
L01533F: db $0A;X
L015340: db $C6;X
L015341: db $16;X
L015342: db $38;X
L015343: db $42;X
L015344: db $02;X
L015345: db $CB;X
L015346: db $37;X
L015347: db $E6;X
L015348: db $03;X
L015349: db $F6;X
L01534A: db $60;X
L01534B: db $C5;X
L01534C: db $4F;X
L01534D: db $06;X
L01534E: db $3E;X
L01534F: db $0A;X
L015350: db $C1;X
L015351: db $18;X
L015352: db $3C;X
L015353:;J
	dec  a
	ld   [bc], a
	and  $0F
	jr   nz, $5391
	ld   a, [bc]
	cp   $70
	jr   c, $5366
	ld   a, $67
	ld   [bc], a
	call L0153C9
	jr   L015391
L015366:;R
	sub  $0E
	ld   [bc], a
	cp   $30
	jr   c, $5386
	sub  $32
	swap a
	xor  $03
	push de
	ld   e, a
	res  7, c
	dec  b
	ld   a, [bc]
	and  $70
	or   e
	inc  b
	set  7, c
	ld   e, a
	ld   d, $3E
	ld   a, [de]
	pop  de
	jr   L01538F
L015386:;R
	sub  a
	ld   [bc], a
	dec  b
	res  7, c
	ld   [bc], a
	set  7, c
	inc  b
L01538F:;R
	ld   [de], a
	inc  l
L015391:;R
	ldh  a, [$FFB6]
	add  $08
	ldh  [$FFB6], a
	inc  e
	inc  c
	dec  h
	jr   nz, $5330
	inc  c
	inc  c
	ld   a, e
	add  $1A
	ld   e, a
	jr   nc, $53A5
	inc  d
L0153A5:;R
	ldh  a, [$FFB6]
	sub  $30
	ldh  [$FFB6], a
	ldh  a, [$FFB7]
	add  $08
	ldh  [$FFB7], a
	ld   a, l
	and  a
	ldh  a, [$FFD2]
	jr   z, $53BC
	ld   l, a
	ld   h, $C4
	set  7, [hl]
L0153BC:;R
	add  $02
	ldh  [$FFD2], a
	and  $1F
	cp   $18
	jp   c, $532D
	pop  de
	ret  
L0153C9:;C
	push de
	push hl
	push bc
	res  7, c
	dec  b
	ld   a, [bc]
	swap a
	and  $07
	ldh  [$FFD4], a
	ldh  a, [$FFD1]
	inc  a
	ldh  [$FFD1], a
	and  $07
	add  $70
	ldh  [$FFD5], a
	call L001F46
	jr   c, $5409
	ldh  a, [$FFD0]
	inc  a
	ldi  [hl], a
	inc  l
	ld   [hl], $02
	ld   a, l
	add  $05
	ld   l, a
	ldh  a, [$FFB6]
	sub  $2C
	ld   [hl], a
	ld   a, l
	add  $04
	ld   l, a
	ldh  a, [$FFB7]
	sub  $24
	ld   [hl], a
	ld   a, l
	add  $0B
	ld   l, a
	ldh  a, [$FFD4]
	ldi  [hl], a
	ldh  a, [$FFD5]
	ld   [hl], a
	pop  bc
	pop  hl
	pop  de
	ret  
L01540D:;C
	call L014434
	ld   a, c
	add  $88
	ld   l, a
	ld   h, b
	inc  h
	push de
	ld   e, $60
	sub  a
L01541A:;R
	ldi  [hl], a
	dec  e
	jr   nz, $541A
	ld   h, $00
	ld   a, c
	add  $60
	ld   c, a
	ldh  [$FFF0], a
L015426:;R
	ld   e, c
	ld   d, $00
L015429:;R
	ld   a, [bc]
	and  a
	jr   nz, $5430
	inc  d
	jr   L015456
L015430:;R
	ld   a, d
	and  a
	jr   z, $5452
	ld   a, c
	add  $88
	ld   l, a
	ld   h, b
	inc  h
	ld   [hl], d
	ld   a, [bc]
	and  $F0
	res  7, l
	ld   [hl], a
	sub  a
	ld   [bc], a
	ld   c, e
	ld   a, [hl]
	ld   [bc], a
	ld   a, e
	sub  $08
	ld   e, a
	ld   a, l
	sub  $10
	ld   c, a
	jr   nc, $5429
L015450: db $18;X
L015451: db $0A;X
L015452:;R
	ld   a, e
	sub  $08
	ld   e, a
L015456:;R
	ld   a, c
	sub  $08
	ld   c, a
	jr   nc, $5429
	ldh  a, [$FFF0]
	inc  a
	ldh  [$FFF0], a
	ld   c, a
	and  $07
	cp   $06
	jr   c, $5426
	pop  de
	ld   a, h
	and  a
	ret  z
	scf  
	ret  
L01546E:;J
	sub  a
	ldh  [$FFD3], a
	call L014434
	ld   a, [de]
	ld   l, a
	ld   a, [$C011]
	xor  l
	and  $01
	ret  nz
	push de
	ld   a, [de]
	and  a
	jr   z, $5484
L015482: db $3E;X
L015483: db $20;X
L015484:;R
	or   $16
	ldh  [$FFD0], a
	ldh  [$FFD1], a
	ld   l, a
	ld   h, $C4
	ld   a, c
	add  $E0
	ld   c, a
	inc  b
	ldh  [$FFD2], a
	and  $07
L015496:;J
	ld   d, [hl]
	set  7, d
	inc  l
	add  [hl]
	ld   e, a
L01549C:;JR
	ld   a, [bc]
	and  a
	jp   z, $5557
	bit  7, a
	jr   nz, $5510
	dec  a
	jr   nz, $54AA
	ld   a, $80
L0154AA:;R
	push af
	push bc
	ld   a, $01
	ldh  [$FFD3], a
	res  7, c
	ld   a, [bc]
	ld   c, a
	ld   b, $3F
	ldh  a, [$FF8F]
	bit  7, a
	jr   z, $54C6
L0154BC: db $3E;X
L0154BD: db $02;X
L0154BE: db $E0;X
L0154BF: db $70;X
L0154C0: db $0A;X
L0154C1: db $12;X
L0154C2: db $3E;X
L0154C3: db $01;X
L0154C4: db $E0;X
L0154C5: db $70;X
L0154C6:;R
	dec  b
	ld   a, [bc]
	ld   [de], a
	pop  bc
	ldh  a, [$FFD0]
	ld   l, a
	set  7, [hl]
	dec  l
	dec  l
	xor  l
	bit  5, a
	jr   nz, $54E1
	ld   a, e
	sub  $20
	ld   e, a
	jr   nc, $54DD
	dec  d
L0154DD:;R
	sub  a
	ld   [de], a
	set  7, [hl]
	ld   l, c
	ld   a, c
	add  $08
	ld   c, a
	pop  af
	bit  7, a
	jr   z, $54EF
	ld   c, l
	ld   [bc], a
	jr   L0154FE
L0154EF:;R
	ld   [bc], a
	ld   h, c
	ld   c, l
	sub  a
	ld   [bc], a
	res  7, c
	ld   a, [bc]
	ld   c, h
	res  7, c
	ld   [bc], a
	ld   h, $C4
	ld   c, l
L0154FE:;R
	ld   a, c
	sub  $08
	ld   c, a
	ldh  a, [$FFD0]
	ld   l, a
	sub  $02
	ldh  [$FFD0], a
	xor  l
	bit  5, a
	jr   z, $549C
L01550E: db $18;X
L01550F: db $5F;X
L015510:;R
	inc  a
	ld   [bc], a
	push bc
	push hl
	and  $7F
	ld   l, a
	ld   h, $00
	res  7, c
	ld   a, [bc]
	and  $70
	cp   $50
	jr   c, $5527
L015522: db $01;X
L015523: db $BA;X
L015524: db $55;X
L015525: db $18;X
L015526: db $15;X
L015527:;R
	cp   $20
	jr   c, $5539
	cp   $40
	jr   nc, $5534
	ld   bc, $559C
	jr   L01553C
L015534: db $01;X
L015535: db $AC;X
L015536: db $55;X
L015537: db $18;X
L015538: db $03;X
L015539:;R
	ld   bc, $558E
L01553C:;R
	add  hl, bc
	or   [hl]
	pop  hl
	bit  7, a
	jr   z, $5548
	pop  bc
	sub  a
	ld   [bc], a
	jr   L015557
L015548:;R
	ld   c, a
	ld   b, $3E
	ld   a, [bc]
	pop  bc
	ld   [de], a
	ldh  a, [$FFD0]
	ld   l, a
	set  7, [hl]
	ld   a, $01
	ldh  [$FFD3], a
L015557:;JR
	ld   a, e
	sub  $20
	ld   e, a
	jr   nc, $555E
	dec  d
L01555E:;R
	ld   a, c
	sub  $08
	ld   c, a
	ldh  a, [$FFD0]
	ld   l, a
	sub  $02
	ldh  [$FFD0], a
	xor  l
	and  $20
	jp   z, $549C
	ldh  a, [$FFD1]
	ldh  [$FFD0], a
	ld   l, a
	ldh  a, [$FFD2]
	inc  a
	ldh  [$FFD2], a
	ld   c, a
	and  $07
	cp   $06
	jp   c, $5496
	pop  de
	ldh  a, [$FFD3]
	and  a
	ret  nz
	ldh  a, [$FFB1]
	add  $07
	ld   l, a
	ld   h, d
	res  4, [hl]
	ret  
L01558F: db $04
L015590: db $05
L015591: db $05
L015592: db $04
L015593: db $06
L015594: db $04
L015595: db $05
L015596: db $04
L015597: db $04
L015598: db $06
L015599: db $04
L01559A: db $05
L01559B: db $04
L01559C: db $FF
L01559D: db $04
L01559E: db $05
L01559F: db $05
L0155A0: db $04
L0155A1: db $06
L0155A2: db $04
L0155A3: db $05
L0155A4: db $04
L0155A5: db $06
L0155A6: db $04
L0155A7: db $05
L0155A8: db $04
L0155A9: db $06
L0155AA: db $04
L0155AB: db $05
L0155AC: db $FF
L0155AD: db $04;X
L0155AE: db $05;X
L0155AF: db $05;X
L0155B0: db $05;X
L0155B1: db $06;X
L0155B2: db $05;X
L0155B3: db $05;X
L0155B4: db $05;X
L0155B5: db $06;X
L0155B6: db $05;X
L0155B7: db $04;X
L0155B8: db $06;X
L0155B9: db $04;X
L0155BA: db $FF;X
L0155BB: db $04;X
L0155BC: db $FF;X
L0155BD:;C
	ldh  a, [$FFC0]
	and  $0F
	ret  z
L0155C2: db $FE;X
L0155C3: db $08;X
L0155C4: db $CA;X
L0155C5: db $F6;X
L0155C6: db $55;X
L0155C7: db $FE;X
L0155C8: db $04;X
L0155C9: db $28;X
L0155CA: db $03;X
L0155CB: db $FE;X
L0155CC: db $05;X
L0155CD: db $C0;X
L0155CE: db $F0;X
L0155CF: db $B1;X
L0155D0: db $C6;X
L0155D1: db $29;X
L0155D2: db $5F;X
L0155D3: db $1A;X
L0155D4: db $87;X
L0155D5: db $4F;X
L0155D6: db $06;X
L0155D7: db $00;X
L0155D8: db $21;X
L0155D9: db $EC;X
L0155DA: db $55;X
L0155DB: db $09;X
L0155DC: db $7B;X
L0155DD: db $C6;X
L0155DE: db $EB;X
L0155DF: db $5F;X
L0155E0: db $2A;X
L0155E1: db $12;X
L0155E2: db $1C;X
L0155E3: db $7E;X
L0155E4: db $12;X
L0155E5: db $21;X
L0155E6: db $75;X
L0155E7: db $46;X
L0155E8: db $3E;X
L0155E9: db $02;X
L0155EA: db $C7;X
L0155EB: db $C9;X
L0155EC: db $00;X
L0155ED: db $00;X
L0155EE: db $0C;X
L0155EF: db $00;X
L0155F0: db $00;X
L0155F1: db $00;X
L0155F2: db $00;X
L0155F3: db $00;X
L0155F4: db $0C;X
L0155F5: db $00;X
L0155F6: db $F0;X
L0155F7: db $B1;X
L0155F8: db $C6;X
L0155F9: db $29;X
L0155FA: db $5F;X
L0155FB: db $C6;X
L0155FC: db $09;X
L0155FD: db $6F;X
L0155FE: db $62;X
L0155FF: db $2A;X
L015600: db $46;X
L015601: db $C6;X
L015602: db $06;X
L015603: db $4F;X
L015604: db $1A;X
L015605: db $E0;X
L015606: db $F0;X
L015607: db $87;X
L015608: db $87;X
L015609: db $C6;X
L01560A: db $44;X
L01560B: db $6F;X
L01560C: db $3E;X
L01560D: db $56;X
L01560E: db $CE;X
L01560F: db $00;X
L015610: db $67;X
L015611: db $7B;X
L015612: db $C6;X
L015613: db $E1;X
L015614: db $5F;X
L015615: db $2A;X
L015616: db $12;X
L015617: db $1C;X
L015618: db $2A;X
L015619: db $12;X
L01561A: db $1C;X
L01561B: db $2A;X
L01561C: db $12;X
L01561D: db $2C;X
L01561E: db $59;X
L01561F: db $2A;X
L015620: db $02;X
L015621: db $0C;X
L015622: db $2A;X
L015623: db $02;X
L015624: db $79;X
L015625: db $C6;X
L015626: db $03;X
L015627: db $4F;X
L015628: db $2A;X
L015629: db $02;X
L01562A: db $79;X
L01562B: db $C6;X
L01562C: db $FE;X
L01562D: db $4F;X
L01562E: db $7E;X
L01562F: db $02;X
L015630: db $FA;X
L015631: db $C2;X
L015632: db $C0;X
L015633: db $A7;X
L015634: db $20;X
L015635: db $0B;X
L015636: db $F0;X
L015637: db $F0;X
L015638: db $A7;X
L015639: db $20;X
L01563A: db $06;X
L01563B: db $4B;X
L01563C: db $3E;X
L01563D: db $FF;X
L01563E: db $02;X
L01563F: db $0C;X
L015640: db $02;X
L015641: db $C3;X
L015642: db $52;X
L015643: db $50;X
L015644: db $00;X
L015645: db $00;X
L015646: db $00;X
L015647: db $00;X
L015648: db $18;X
L015649: db $00;X
L01564A: db $04;X
L01564B: db $00;X
L01564C: db $40;X
L01564D: db $9C;X
L01564E: db $00;X
L01564F: db $00;X
L015650: db $28;X
L015651: db $00;X
L015652: db $03;X
L015653: db $00;X
L015654: db $90;X
L015655: db $5F;X
L015656: db $01;X
L015657: db $00;X
L015658: db $24;X
L015659: db $00;X
L01565A: db $02;X
L01565B: db $00;X
L01565C:;C
	ld   a, [$C0DB]
	and  a
	ret  z
L015661: db $F0;X
L015662: db $B1;X
L015663: db $C6;X
L015664: db $28;X
L015665: db $5F;X
L015666: db $1A;X
L015667: db $C6;X
L015668: db $B6;X
L015669: db $6F;X
L01566A: db $26;X
L01566B: db $C0;X
L01566C: db $CB;X
L01566D: db $7E;X
L01566E: db $C8;X
L01566F: db $CD;X
L015670: db $34;X
L015671: db $44;X
L015672: db $79;X
L015673: db $C6;X
L015674: db $08;X
L015675: db $6F;X
L015676: db $60;X
L015677: db $1E;X
L015678: db $00;X
L015679: db $0E;X
L01567A: db $0C;X
L01567B: db $06;X
L01567C: db $06;X
L01567D: db $7E;X
L01567E: db $FE;X
L01567F: db $F0;X
L015680: db $20;X
L015681: db $05;X
L015682: db $24;X
L015683: db $36;X
L015684: db $02;X
L015685: db $25;X
L015686: db $1C;X
L015687: db $2C;X
L015688: db $05;X
L015689: db $20;X
L01568A: db $F2;X
L01568B: db $2C;X
L01568C: db $2C;X
L01568D: db $0D;X
L01568E: db $20;X
L01568F: db $EB;X
L015690: db $7B;X
L015691: db $A7;X
L015692: db $C8;X
L015693: db $3E;X
L015694: db $3C;X
L015695: db $C3;X
L015696: db $4E;X
L015697: db $3B;X
L015698:;C
	ldh  a, [$FFC0]
	and  $0F
	cp   $08
	jr   nz, $56E0
L0156A0: db $F0;X
L0156A1: db $B1;X
L0156A2: db $C6;X
L0156A3: db $09;X
L0156A4: db $5F;X
L0156A5: db $1A;X
L0156A6: db $A7;X
L0156A7: db $C8;X
L0156A8: db $FE;X
L0156A9: db $08;X
L0156AA: db $38;X
L0156AB: db $02;X
L0156AC: db $3E;X
L0156AD: db $08;X
L0156AE: db $FE;X
L0156AF: db $02;X
L0156B0: db $30;X
L0156B1: db $10;X
L0156B2: db $21;X
L0156B3: db $20;X
L0156B4: db $C1;X
L0156B5: db $7E;X
L0156B6: db $D6;X
L0156B7: db $01;X
L0156B8: db $22;X
L0156B9: db $7E;X
L0156BA: db $DE;X
L0156BB: db $00;X
L0156BC: db $77;X
L0156BD: db $D0;X
L0156BE: db $97;X
L0156BF: db $32;X
L0156C0: db $77;X
L0156C1: db $C9;X
L0156C2: db $C8;X
L0156C3: db $4F;X
L0156C4: db $06;X
L0156C5: db $00;X
L0156C6: db $21;X
L0156C7: db $D7;X
L0156C8: db $56;X
L0156C9: db $09;X
L0156CA: db $7E;X
L0156CB: db $21;X
L0156CC: db $20;X
L0156CD: db $C1;X
L0156CE: db $86;X
L0156CF: db $22;X
L0156D0: db $7E;X
L0156D1: db $CE;X
L0156D2: db $00;X
L0156D3: db $77;X
L0156D4: db $D0;X
L0156D5: db $3E;X
L0156D6: db $FF;X
L0156D7: db $32;X
L0156D8: db $77;X
L0156D9: db $C9;X
L0156DA: db $0A;X
L0156DB: db $14;X
L0156DC: db $28;X
L0156DD: db $3C;X
L0156DE: db $50;X
L0156DF: db $64;X
L0156E0:;R
	ld   a, [$C0F6]
	and  a
	jp   nz, $575C
	ld   a, [$C0F0]
	bit  7, a
	jr   z, $56FF
L0156EE: db $F0;X
L0156EF: db $B1;X
L0156F0: db $C6;X
L0156F1: db $28;X
L0156F2: db $5F;X
L0156F3: db $1A;X
L0156F4: db $C6;X
L0156F5: db $F4;X
L0156F6: db $6F;X
L0156F7: db $26;X
L0156F8: db $C0;X
L0156F9: db $7E;X
L0156FA: db $A7;X
L0156FB: db $28;X
L0156FC: db $5F;X
L0156FD: db $18;X
L0156FE: db $54;X
L0156FF:;R
	cp   $03
	jr   c, $575C
L015703: db $20;X
L015704: db $1E;X
L015705: db $F0;X
L015706: db $B1;X
L015707: db $C6;X
L015708: db $09;X
L015709: db $6F;X
L01570A: db $62;X
L01570B: db $FA;X
L01570C: db $11;X
L01570D: db $C1;X
L01570E: db $A7;X
L01570F: db $20;X
L015710: db $0A;X
L015711: db $FA;X
L015712: db $F1;X
L015713: db $C0;X
L015714: db $BE;X
L015715: db $28;X
L015716: db $2B;X
L015717: db $38;X
L015718: db $29;X
L015719: db $18;X
L01571A: db $41;X
L01571B: db $FA;X
L01571C: db $F1;X
L01571D: db $C0;X
L01571E: db $BE;X
L01571F: db $20;X
L015720: db $3B;X
L015721: db $18;X
L015722: db $1F;X
L015723: db $CD;X
L015724: db $34;X
L015725: db $44;X
L015726: db $69;X
L015727: db $60;X
L015728: db $06;X
L015729: db $0D;X
L01572A: db $FA;X
L01572B: db $F1;X
L01572C: db $C0;X
L01572D: db $CB;X
L01572E: db $37;X
L01572F: db $F6;X
L015730: db $80;X
L015731: db $5F;X
L015732: db $0E;X
L015733: db $06;X
L015734: db $2A;X
L015735: db $E6;X
L015736: db $F0;X
L015737: db $BB;X
L015738: db $28;X
L015739: db $22;X
L01573A: db $0D;X
L01573B: db $20;X
L01573C: db $F7;X
L01573D: db $2C;X
L01573E: db $2C;X
L01573F: db $05;X
L015740: db $20;X
L015741: db $F0;X
L015742: db $F0;X
L015743: db $B1;X
L015744: db $C6;X
L015745: db $28;X
L015746: db $5F;X
L015747: db $1A;X
L015748: db $C6;X
L015749: db $F4;X
L01574A: db $6F;X
L01574B: db $26;X
L01574C: db $C0;X
L01574D: db $36;X
L01574E: db $01;X
L01574F: db $2E;X
L015750: db $F0;X
L015751: db $CB;X
L015752: db $FE;X
L015753: db $FA;X
L015754: db $1A;X
L015755: db $C0;X
L015756: db $A7;X
L015757: db $28;X
L015758: db $06;X
L015759: db $06;X
L01575A: db $00;X
L01575B: db $C9;X
L01575C:;R
	ld   b, $05
	ret  
L01575F: db $21;X
L015760: db $79;X
L015761: db $59;X
L015762: db $3E;X
L015763: db $02;X
L015764: db $C7;X
L015765: db $F0;X
L015766: db $C0;X
L015767: db $E6;X
L015768: db $0F;X
L015769: db $FE;X
L01576A: db $0C;X
L01576B: db $20;X
L01576C: db $36;X
L01576D: db $21;X
L01576E: db $19;X
L01576F: db $C1;X
L015770: db $3A;X
L015771: db $A7;X
L015772: db $CA;X
L015773: db $0A;X
L015774: db $58;X
L015775: db $34;X
L015776: db $2A;X
L015777: db $BE;X
L015778: db $38;X
L015779: db $21;X
L01577A: db $3E;X
L01577B: db $59;X
L01577C: db $CD;X
L01577D: db $4E;X
L01577E: db $3B;X
L01577F: db $FA;X
L015780: db $10;X
L015781: db $C1;X
L015782: db $3C;X
L015783: db $EA;X
L015784: db $10;X
L015785: db $C1;X
L015786: db $21;X
L015787: db $CC;X
L015788: db $C0;X
L015789: db $01;X
L01578A: db $16;X
L01578B: db $C1;X
L01578C: db $0A;X
L01578D: db $86;X
L01578E: db $22;X
L01578F: db $03;X
L015790: db $0A;X
L015791: db $86;X
L015792: db $77;X
L015793: db $21;X
L015794: db $BF;X
L015795: db $5A;X
L015796: db $3E;X
L015797: db $02;X
L015798: db $C7;X
L015799: db $18;X
L01579A: db $6F;X
L01579B: db $21;X
L01579C: db $50;X
L01579D: db $DD;X
L01579E: db $CD;X
L01579F: db $22;X
L0157A0: db $0A;X
L0157A1: db $18;X
L0157A2: db $67;X
L0157A3: db $FA;X
L0157A4: db $F6;X
L0157A5: db $C0;X
L0157A6: db $A7;X
L0157A7: db $C0;X
L0157A8: db $F0;X
L0157A9: db $B1;X
L0157AA: db $C6;X
L0157AB: db $28;X
L0157AC: db $5F;X
L0157AD: db $1A;X
L0157AE: db $C6;X
L0157AF: db $1E;X
L0157B0: db $6F;X
L0157B1: db $26;X
L0157B2: db $C1;X
L0157B3: db $3A;X
L0157B4: db $2D;X
L0157B5: db $A7;X
L0157B6: db $28;X
L0157B7: db $52;X
L0157B8: db $34;X
L0157B9: db $E5;X
L0157BA: db $1A;X
L0157BB: db $A7;X
L0157BC: db $7E;X
L0157BD: db $21;X
L0157BE: db $23;X
L0157BF: db $DC;X
L0157C0: db $28;X
L0157C1: db $03;X
L0157C2: db $21;X
L0157C3: db $2F;X
L0157C4: db $DC;X
L0157C5: db $FE;X
L0157C6: db $06;X
L0157C7: db $38;X
L0157C8: db $24;X
L0157C9: db $36;X
L0157CA: db $00;X
L0157CB: db $2C;X
L0157CC: db $2C;X
L0157CD: db $36;X
L0157CE: db $00;X
L0157CF: db $2C;X
L0157D0: db $FE;X
L0157D1: db $0A;X
L0157D2: db $38;X
L0157D3: db $11;X
L0157D4: db $06;X
L0157D5: db $80;X
L0157D6: db $D6;X
L0157D7: db $0A;X
L0157D8: db $04;X
L0157D9: db $30;X
L0157DA: db $FB;X
L0157DB: db $05;X
L0157DC: db $C6;X
L0157DD: db $0A;X
L0157DE: db $70;X
L0157DF: db $2C;X
L0157E0: db $C6;X
L0157E1: db $80;X
L0157E2: db $22;X
L0157E3: db $18;X
L0157E4: db $10;X
L0157E5: db $36;X
L0157E6: db $00;X
L0157E7: db $2C;X
L0157E8: db $C6;X
L0157E9: db $80;X
L0157EA: db $22;X
L0157EB: db $18;X
L0157EC: db $08;X
L0157ED: db $47;X
L0157EE: db $7D;X
L0157EF: db $C6;X
L0157F0: db $05;X
L0157F1: db $90;X
L0157F2: db $6F;X
L0157F3: db $36;X
L0157F4: db $26;X
L0157F5: db $1A;X
L0157F6: db $A7;X
L0157F7: db $21;X
L0157F8: db $23;X
L0157F9: db $DC;X
L0157FA: db $28;X
L0157FB: db $03;X
L0157FC: db $21;X
L0157FD: db $2F;X
L0157FE: db $DC;X
L0157FF: db $3E;X
L015800: db $05;X
L015801: db $CD;X
L015802: db $A2;X
L015803: db $06;X
L015804: db $E1;X
L015805: db $2A;X
L015806: db $2C;X
L015807: db $BE;X
L015808: db $30;X
L015809: db $23;X
L01580A: db $3E;X
L01580B: db $36;X
L01580C: db $CD;X
L01580D: db $4E;X
L01580E: db $3B;X
L01580F: db $21;X
L015810: db $63;X
L015811: db $58;X
L015812: db $06;X
L015813: db $01;X
L015814: db $CD;X
L015815: db $87;X
L015816: db $1E;X
L015817: db $F0;X
L015818: db $B1;X
L015819: db $5F;X
L01581A: db $1A;X
L01581B: db $77;X
L01581C: db $7D;X
L01581D: db $C6;X
L01581E: db $36;X
L01581F: db $6F;X
L015820: db $73;X
L015821: db $2C;X
L015822: db $72;X
L015823: db $C6;X
L015824: db $F2;X
L015825: db $6F;X
L015826: db $7B;X
L015827: db $C6;X
L015828: db $28;X
L015829: db $5F;X
L01582A: db $1A;X
L01582B: db $77;X
L01582C: db $C9;X
L01582D: db $3E;X
L01582E: db $01;X
L01582F: db $EA;X
L015830: db $94;X
L015831: db $C0;X
L015832: db $EA;X
L015833: db $F6;X
L015834: db $C0;X
L015835: db $FA;X
L015836: db $1A;X
L015837: db $C0;X
L015838: db $A7;X
L015839: db $CA;X
L01583A: db $4B;X
L01583B: db $6C;X
L01583C: db $F0;X
L01583D: db $B1;X
L01583E: db $C6;X
L01583F: db $28;X
L015840: db $5F;X
L015841: db $1A;X
L015842: db $A7;X
L015843: db $20;X
L015844: db $10;X
L015845: db $06;X
L015846: db $06;X
L015847: db $CD;X
L015848: db $5D;X
L015849: db $23;X
L01584A: db $F0;X
L01584B: db $B1;X
L01584C: db $C6;X
L01584D: db $2F;X
L01584E: db $5F;X
L01584F: db $3E;X
L015850: db $06;X
L015851: db $12;X
L015852: db $C3;X
L015853: db $4B;X
L015854: db $6C;X
L015855: db $C1;X
L015856: db $CD;X
L015857: db $26;X
L015858: db $1F;X
L015859: db $CD;X
L01585A: db $7C;X
L01585B: db $23;X
L01585C: db $FE;X
L01585D: db $06;X
L01585E: db $C0;X
L01585F: db $C5;X
L015860: db $C3;X
L015861: db $4B;X
L015862: db $6C;X
L015863: db $CD;X
L015864: db $53;X
L015865: db $44;X
L015866: db $7B;X
L015867: db $C6;X
L015868: db $E5;X
L015869: db $5F;X
L01586A: db $C6;X
L01586B: db $04;X
L01586C: db $6F;X
L01586D: db $62;X
L01586E: db $F0;X
L01586F: db $B6;X
L015870: db $C6;X
L015871: db $14;X
L015872: db $12;X
L015873: db $3E;X
L015874: db $C8;X
L015875: db $77;X
L015876: db $7B;X
L015877: db $C6;X
L015878: db $F9;X
L015879: db $5F;X
L01587A: db $C6;X
L01587B: db $02;X
L01587C: db $6F;X
L01587D: db $3E;X
L01587E: db $91;X
L01587F: db $12;X
L015880: db $36;X
L015881: db $06;X
L015882: db $2C;X
L015883: db $36;X
L015884: db $06;X
L015885: db $7B;X
L015886: db $C6;X
L015887: db $13;X
L015888: db $5F;X
L015889: db $C6;X
L01588A: db $07;X
L01588B: db $6F;X
L01588C: db $3E;X
L01588D: db $FC;X
L01588E: db $12;X
L01588F: db $36;X
L015890: db $20;X
L015891: db $CD;X
L015892: db $F3;X
L015893: db $1E;X
L015894: db $CD;X
L015895: db $6D;X
L015896: db $1F;X
L015897: db $F0;X
L015898: db $B1;X
L015899: db $C6;X
L01589A: db $18;X
L01589B: db $6F;X
L01589C: db $62;X
L01589D: db $7E;X
L01589E: db $C6;X
L01589F: db $1A;X
L0158A0: db $22;X
L0158A1: db $7E;X
L0158A2: db $CE;X
L0158A3: db $00;X
L0158A4: db $77;X
L0158A5: db $CB;X
L0158A6: db $7F;X
L0158A7: db $C0;X
L0158A8: db $01;X
L0158A9: db $1E;X
L0158AA: db $00;X
L0158AB: db $CD;X
L0158AC: db $E8;X
L0158AD: db $1E;X
L0158AE: db $CD;X
L0158AF: db $F3;X
L0158B0: db $1E;X
L0158B1: db $7B;X
L0158B2: db $C6;X
L0158B3: db $06;X
L0158B4: db $5F;X
L0158B5: db $F0;X
L0158B6: db $C0;X
L0158B7: db $FE;X
L0158B8: db $0C;X
L0158B9: db $28;X
L0158BA: db $06;X
L0158BB: db $FA;X
L0158BC: db $23;X
L0158BD: db $B0;X
L0158BE: db $A7;X
L0158BF: db $20;X
L0158C0: db $18;X
L0158C1: db $3E;X
L0158C2: db $95;X
L0158C3: db $12;X
L0158C4: db $CD;X
L0158C5: db $F3;X
L0158C6: db $1E;X
L0158C7: db $CD;X
L0158C8: db $6D;X
L0158C9: db $1F;X
L0158CA: db $F0;X
L0158CB: db $B1;X
L0158CC: db $C6;X
L0158CD: db $11;X
L0158CE: db $5F;X
L0158CF: db $1A;X
L0158D0: db $FE;X
L0158D1: db $20;X
L0158D2: db $DA;X
L0158D3: db $CD;X
L0158D4: db $1E;X
L0158D5: db $CD;X
L0158D6: db $6D;X
L0158D7: db $1F;X
L0158D8: db $C9;X
L0158D9: db $3E;X
L0158DA: db $03;X
L0158DB: db $12;X
L0158DC: db $CD;X
L0158DD: db $26;X
L0158DE: db $1F;X
L0158DF: db $7B;X
L0158E0: db $C6;X
L0158E1: db $25;X
L0158E2: db $5F;X
L0158E3: db $1A;X
L0158E4: db $FE;X
L0158E5: db $10;X
L0158E6: db $28;X
L0158E7: db $05;X
L0158E8: db $3C;X
L0158E9: db $12;X
L0158EA: db $C3;X
L0158EB: db $9C;X
L0158EC: db $59;X
L0158ED: db $7B;X
L0158EE: db $C6;X
L0158EF: db $03;X
L0158F0: db $5F;X
L0158F1: db $C6;X
L0158F2: db $F3;X
L0158F3: db $6F;X
L0158F4: db $C6;X
L0158F5: db $04;X
L0158F6: db $4F;X
L0158F7: db $C6;X
L0158F8: db $05;X
L0158F9: db $47;X
L0158FA: db $62;X
L0158FB: db $1A;X
L0158FC: db $A7;X
L0158FD: db $3E;X
L0158FE: db $AC;X
L0158FF: db $28;X
L015900: db $02;X
L015901: db $3E;X
L015902: db $48;X
L015903: db $77;X
L015904: db $69;X
L015905: db $36;X
L015906: db $50;X
L015907: db $68;X
L015908: db $36;X
L015909: db $3F;X
L01590A: db $21;X
L01590B: db $17;X
L01590C: db $4A;X
L01590D: db $3E;X
L01590E: db $02;X
L01590F: db $C7;X
L015910: db $CD;X
L015911: db $26;X
L015912: db $1F;X
L015913: db $F0;X
L015914: db $B1;X
L015915: db $C6;X
L015916: db $1B;X
L015917: db $5F;X
L015918: db $C6;X
L015919: db $F2;X
L01591A: db $6F;X
L01591B: db $62;X
L01591C: db $1A;X
L01591D: db $77;X
L01591E: db $63;X
L01591F: db $E5;X
L015920: db $CD;X
L015921: db $6D;X
L015922: db $1F;X
L015923: db $E1;X
L015924: db $5C;X
L015925: db $62;X
L015926: db $7E;X
L015927: db $12;X
L015928: db $7B;X
L015929: db $C6;X
L01592A: db $0D;X
L01592B: db $6F;X
L01592C: db $46;X
L01592D: db $C6;X
L01592E: db $FC;X
L01592F: db $5F;X
L015930: db $C6;X
L015931: db $E9;X
L015932: db $6F;X
L015933: db $0E;X
L015934: db $20;X
L015935: db $78;X
L015936: db $A7;X
L015937: db $28;X
L015938: db $02;X
L015939: db $0E;X
L01593A: db $00;X
L01593B: db $1A;X
L01593C: db $CB;X
L01593D: db $3F;X
L01593E: db $B1;X
L01593F: db $C6;X
L015940: db $80;X
L015941: db $4F;X
L015942: db $06;X
L015943: db $2F;X
L015944: db $0A;X
L015945: db $CB;X
L015946: db $2F;X
L015947: db $86;X
L015948: db $77;X
L015949: db $1C;X
L01594A: db $1A;X
L01594B: db $3C;X
L01594C: db $12;X
L01594D: db $1D;X
L01594E: db $D5;X
L01594F: db $CD;X
L015950: db $9C;X
L015951: db $59;X
L015952: db $D1;X
L015953: db $1A;X
L015954: db $3D;X
L015955: db $12;X
L015956: db $FE;X
L015957: db $FF;X
L015958: db $C0;X
L015959: db $CD;X
L01595A: db $F3;X
L01595B: db $1E;X
L01595C: db $7B;X
L01595D: db $C6;X
L01595E: db $25;X
L01595F: db $5F;X
L015960: db $1A;X
L015961: db $FE;X
L015962: db $70;X
L015963: db $28;X
L015964: db $05;X
L015965: db $3C;X
L015966: db $12;X
L015967: db $C3;X
L015968: db $9C;X
L015969: db $59;X
L01596A: db $F0;X
L01596B: db $B1;X
L01596C: db $C6;X
L01596D: db $28;X
L01596E: db $5F;X
L01596F: db $1A;X
L015970: db $A7;X
L015971: db $01;X
L015972: db $40;X
L015973: db $D4;X
L015974: db $21;X
L015975: db $94;X
L015976: db $D4;X
L015977: db $28;X
L015978: db $06;X
L015979: db $01;X
L01597A: db $80;X
L01597B: db $D4;X
L01597C: db $21;X
L01597D: db $54;X
L01597E: db $D4;X
L01597F: db $FA;X
L015980: db $23;X
L015981: db $B0;X
L015982: db $FE;X
L015983: db $02;X
L015984: db $3E;X
L015985: db $12;X
L015986: db $30;X
L015987: db $02;X
L015988: db $3E;X
L015989: db $06;X
L01598A: db $86;X
L01598B: db $22;X
L01598C: db $30;X
L01598D: db $01;X
L01598E: db $34;X
L01598F: db $D5;X
L015990: db $59;X
L015991: db $50;X
L015992: db $21;X
L015993: db $66;X
L015994: db $46;X
L015995: db $3E;X
L015996: db $02;X
L015997: db $C7;X
L015998: db $D1;X
L015999: db $C3;X
L01599A: db $CD;X
L01599B: db $1E;X
L01599C: db $F0;X
L01599D: db $B1;X
L01599E: db $C6;X
L01599F: db $0D;X
L0159A0: db $5F;X
L0159A1: db $C6;X
L0159A2: db $04;X
L0159A3: db $6F;X
L0159A4: db $C6;X
L0159A5: db $14;X
L0159A6: db $4F;X
L0159A7: db $1A;X
L0159A8: db $C6;X
L0159A9: db $DC;X
L0159AA: db $67;X
L0159AB: db $5D;X
L0159AC: db $1A;X
L0159AD: db $C6;X
L0159AE: db $D4;X
L0159AF: db $6F;X
L0159B0: db $59;X
L0159B1: db $1A;X
L0159B2: db $1E;X
L0159B3: db $08;X
L0159B4: db $EA;X
L0159B5: db $62;X
L0159B6: db $C1;X
L0159B7: db $E6;X
L0159B8: db $3F;X
L0159B9: db $C6;X
L0159BA: db $80;X
L0159BB: db $4F;X
L0159BC: db $06;X
L0159BD: db $2F;X
L0159BE: db $0A;X
L0159BF: db $CB;X
L0159C0: db $2F;X
L0159C1: db $CB;X
L0159C2: db $2F;X
L0159C3: db $84;X
L0159C4: db $E0;X
L0159C5: db $D0;X
L0159C6: db $FA;X
L0159C7: db $62;X
L0159C8: db $C1;X
L0159C9: db $C6;X
L0159CA: db $10;X
L0159CB: db $E6;X
L0159CC: db $3F;X
L0159CD: db $C6;X
L0159CE: db $80;X
L0159CF: db $4F;X
L0159D0: db $0A;X
L0159D1: db $CB;X
L0159D2: db $2F;X
L0159D3: db $CB;X
L0159D4: db $2F;X
L0159D5: db $CB;X
L0159D6: db $2F;X
L0159D7: db $85;X
L0159D8: db $E0;X
L0159D9: db $D1;X
L0159DA: db $3E;X
L0159DB: db $6D;X
L0159DC: db $E0;X
L0159DD: db $D2;X
L0159DE: db $3E;X
L0159DF: db $05;X
L0159E0: db $E0;X
L0159E1: db $D3;X
L0159E2: db $E5;X
L0159E3: db $CD;X
L0159E4: db $0C;X
L0159E5: db $21;X
L0159E6: db $E1;X
L0159E7: db $FA;X
L0159E8: db $62;X
L0159E9: db $C1;X
L0159EA: db $C6;X
L0159EB: db $08;X
L0159EC: db $1D;X
L0159ED: db $20;X
L0159EE: db $C5;X
L0159EF: db $C9;X
L0159F0:;C
	sub  a
	ld   [$C171], a
	ld   a, [$C01A]
	cp   $01
	jr   nz, $5A5A
L0159FB: db $F0;X
L0159FC: db $B1;X
L0159FD: db $C6;X
L0159FE: db $28;X
L0159FF: db $5F;X
L015A00: db $1A;X
L015A01: db $A7;X
L015A02: db $28;X
L015A03: db $56;X
L015A04: db $F0;X
L015A05: db $B1;X
L015A06: db $C6;X
L015A07: db $14;X
L015A08: db $5F;X
L015A09: db $C6;X
L015A0A: db $26;X
L015A0B: db $6F;X
L015A0C: db $62;X
L015A0D: db $FA;X
L015A0E: db $8F;X
L015A0F: db $C1;X
L015A10: db $FE;X
L015A11: db $05;X
L015A12: db $28;X
L015A13: db $18;X
L015A14: db $7D;X
L015A15: db $C6;X
L015A16: db $02;X
L015A17: db $6F;X
L015A18: db $FA;X
L015A19: db $92;X
L015A1A: db $C1;X
L015A1B: db $77;X
L015A1C: db $EA;X
L015A1D: db $6C;X
L015A1E: db $C1;X
L015A1F: db $97;X
L015A20: db $EA;X
L015A21: db $6D;X
L015A22: db $C1;X
L015A23: db $3E;X
L015A24: db $01;X
L015A25: db $EA;X
L015A26: db $71;X
L015A27: db $C1;X
L015A28: db $6B;X
L015A29: db $C3;X
L015A2A: db $CD;X
L015A2B: db $5A;X
L015A2C: db $FA;X
L015A2D: db $94;X
L015A2E: db $C1;X
L015A2F: db $4F;X
L015A30: db $FA;X
L015A31: db $95;X
L015A32: db $C1;X
L015A33: db $47;X
L015A34: db $CD;X
L015A35: db $99;X
L015A36: db $23;X
L015A37: db $71;X
L015A38: db $2C;X
L015A39: db $70;X
L015A3A: db $6B;X
L015A3B: db $FA;X
L015A3C: db $92;X
L015A3D: db $C1;X
L015A3E: db $4F;X
L015A3F: db $FA;X
L015A40: db $93;X
L015A41: db $C1;X
L015A42: db $47;X
L015A43: db $CD;X
L015A44: db $99;X
L015A45: db $23;X
L015A46: db $79;X
L015A47: db $22;X
L015A48: db $EA;X
L015A49: db $6C;X
L015A4A: db $C1;X
L015A4B: db $78;X
L015A4C: db $32;X
L015A4D: db $EA;X
L015A4E: db $6D;X
L015A4F: db $C1;X
L015A50: db $B1;X
L015A51: db $20;X
L015A52: db $7A;X
L015A53: db $21;X
L015A54: db $75;X
L015A55: db $46;X
L015A56: db $3E;X
L015A57: db $02;X
L015A58: db $C7;X
L015A59: db $C9;X
L015A5A:;R
	ldh  a, [$FFB1]
	add  $14
	ld   e, a
	add  $28
	ld   l, a
	ld   h, d
	ld   c, [hl]
	add  $FE
	ld   l, a
	ld   a, c
	and  a
	jr   z, $5A79
L015A6B: db $EA;X
L015A6C: db $6C;X
L015A6D: db $C1;X
L015A6E: db $97;X
L015A6F: db $EA;X
L015A70: db $6D;X
L015A71: db $C1;X
L015A72: db $3C;X
L015A73: db $EA;X
L015A74: db $71;X
L015A75: db $C1;X
L015A76: db $6B;X
L015A77: db $18;X
L015A78: db $54;X
L015A79:;R
	ldi  a, [hl]
	ld   [$C172], a
	ld   a, [hl]
	ld   [$C173], a
	ld   l, e
	ldi  a, [hl]
	ld   [$C16C], a
	ldd  a, [hl]
	ld   [$C16D], a
	or   [hl]
	jr   nz, $5ACD
	ld   a, [$C01A]
	cp   $01
	ret  nz
L015A93: db $CD;X
L015A94: db $E5;X
L015A95: db $22;X
L015A96: db $FE;X
L015A97: db $06;X
L015A98: db $DA;X
L015A99: db $2C;X
L015A9A: db $23;X
L015A9B: db $3E;X
L015A9C: db $0D;X
L015A9D: db $2C;X
L015A9E: db $77;X
L015A9F: db $2C;X
L015AA0: db $97;X
L015AA1: db $2C;X
L015AA2: db $77;X
L015AA3: db $2C;X
L015AA4: db $FA;X
L015AA5: db $6C;X
L015AA6: db $C1;X
L015AA7: db $4F;X
L015AA8: db $FA;X
L015AA9: db $6D;X
L015AAA: db $C1;X
L015AAB: db $47;X
L015AAC: db $CD;X
L015AAD: db $8D;X
L015AAE: db $23;X
L015AAF: db $79;X
L015AB0: db $2C;X
L015AB1: db $77;X
L015AB2: db $2C;X
L015AB3: db $78;X
L015AB4: db $2C;X
L015AB5: db $77;X
L015AB6: db $2C;X
L015AB7: db $FA;X
L015AB8: db $72;X
L015AB9: db $C1;X
L015ABA: db $4F;X
L015ABB: db $FA;X
L015ABC: db $73;X
L015ABD: db $C1;X
L015ABE: db $47;X
L015ABF: db $CD;X
L015AC0: db $8D;X
L015AC1: db $23;X
L015AC2: db $79;X
L015AC3: db $2C;X
L015AC4: db $77;X
L015AC5: db $2C;X
L015AC6: db $78;X
L015AC7: db $2C;X
L015AC8: db $22;X
L015AC9: db $7D;X
L015ACA: db $E0;X
L015ACB: db $CE;X
L015ACC: db $C9;X
L015ACD:;R
	push hl
	call L014434
	ld   a, [de]
	ld   [$C16E], a
	ld   e, $06
	ld   hl, $C160
L015ADA:;R
	push bc
	ld   d, $00
L015ADD:;R
	ld   a, [bc]
	and  a
	jr   nz, $5AEB
	ld   a, c
	add  $08
	ld   c, a
	inc  d
	ld   a, d
	cp   $05
	jr   c, $5ADD
L015AEB:;R
	ld   [hl], d
	inc  l
	pop  bc
	inc  c
	dec  e
	jr   nz, $5ADA
	ld   a, [$C16C]
	cp   $1F
	jr   nc, $5B00
	ld   b, a
	ld   a, [$C16D]
	and  a
	jr   z, $5B02
L015B00: db $06;X
L015B01: db $1E;X
L015B02:;R
	ld   a, b
	ld   [$C16F], a
	ld   c, $00
L015B08:;R
	inc  c
	sub  $06
	jr   nc, $5B08
	add  $06
	dec  c
	ld   b, a
	ld   a, c
	ld   hl, $C166
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ldi  [hl], a
	ld   [hl], a
	ld   a, b
	and  a
	jr   nz, $5B40
L015B1F: db $FA;X
L015B20: db $1A;X
L015B21: db $C0;X
L015B22: db $FE;X
L015B23: db $01;X
L015B24: db $C2;X
L015B25: db $BD;X
L015B26: db $5B;X
L015B27: db $FA;X
L015B28: db $6E;X
L015B29: db $C1;X
L015B2A: db $A7;X
L015B2B: db $C2;X
L015B2C: db $BD;X
L015B2D: db $5B;X
L015B2E: db $FA;X
L015B2F: db $71;X
L015B30: db $C1;X
L015B31: db $A7;X
L015B32: db $C2;X
L015B33: db $3B;X
L015B34: db $5B;X
L015B35: db $CD;X
L015B36: db $93;X
L015B37: db $5A;X
L015B38: db $C3;X
L015B39: db $BD;X
L015B3A: db $5B;X
L015B3B: db $CD;X
L015B3C: db $53;X
L015B3D: db $5C;X
L015B3E: db $18;X
L015B3F: db $7D;X
L015B40:;R
	ld   a, [$C01A]
	cp   $01
	jr   nz, $5B5C
L015B47: db $FA;X
L015B48: db $6E;X
L015B49: db $C1;X
L015B4A: db $A7;X
L015B4B: db $28;X
L015B4C: db $0F;X
L015B4D: db $06;X
L015B4E: db $06;X
L015B4F: db $FA;X
L015B50: db $91;X
L015B51: db $C1;X
L015B52: db $0F;X
L015B53: db $30;X
L015B54: db $01;X
L015B55: db $34;X
L015B56: db $2D;X
L015B57: db $05;X
L015B58: db $20;X
L015B59: db $F8;X
L015B5A: db $18;X
L015B5B: db $61;X
L015B5C:;R
	inc  [hl]
	dec  l
	dec  b
	jr   nz, $5B40
	push bc
	ld   hl, $C166
L015B65:;R
	ld   a, $06
	call L000DB6
	add  $66
	ld   c, a
	ld   b, $C1
	ld   e, [hl]
	ld   a, [bc]
	ld   [hl], a
	ld   a, e
	ld   [bc], a
	inc  l
	ld   a, l
	cp   $6C
	jr   c, $5B65
	pop  bc
	ld   a, [$C01A]
	cp   $01
	jr   nz, $5BBD
L015B82: db $06;X
L015B83: db $06;X
L015B84: db $1E;X
L015B85: db $00;X
L015B86: db $79;X
L015B87: db $2E;X
L015B88: db $66;X
L015B89: db $CB;X
L015B8A: db $23;X
L015B8B: db $BE;X
L015B8C: db $28;X
L015B8D: db $01;X
L015B8E: db $1C;X
L015B8F: db $2C;X
L015B90: db $05;X
L015B91: db $20;X
L015B92: db $F6;X
L015B93: db $FA;X
L015B94: db $71;X
L015B95: db $C1;X
L015B96: db $A7;X
L015B97: db $20;X
L015B98: db $13;X
L015B99: db $CD;X
L015B9A: db $E5;X
L015B9B: db $22;X
L015B9C: db $FE;X
L015B9D: db $06;X
L015B9E: db $DA;X
L015B9F: db $2C;X
L015BA0: db $23;X
L015BA1: db $3E;X
L015BA2: db $0D;X
L015BA3: db $2C;X
L015BA4: db $77;X
L015BA5: db $2C;X
L015BA6: db $7B;X
L015BA7: db $CD;X
L015BA8: db $A1;X
L015BA9: db $5A;X
L015BAA: db $18;X
L015BAB: db $11;X
L015BAC: db $CD;X
L015BAD: db $E5;X
L015BAE: db $22;X
L015BAF: db $FE;X
L015BB0: db $03;X
L015BB1: db $DA;X
L015BB2: db $2C;X
L015BB3: db $23;X
L015BB4: db $3E;X
L015BB5: db $0E;X
L015BB6: db $2C;X
L015BB7: db $77;X
L015BB8: db $2C;X
L015BB9: db $7B;X
L015BBA: db $CD;X
L015BBB: db $61;X
L015BBC: db $5C;X
L015BBD:;R
	ld   hl, $C160
	ld   bc, $C166
	ld   e, $00
L015BC5:;R
	ld   a, [bc]
	cp   [hl]
	jr   c, $5BCD
	jr   z, $5BCD
L015BCB: db $7E;X
L015BCC: db $02;X
L015BCD:;R
	add  e
	ld   e, a
	inc  c
	inc  l
	ld   a, l
	cp   $66
	jr   c, $5BC5
	ld   a, [$C16F]
	ld   c, a
	pop  hl
	ld   d, h
	ld   a, [$C171]
	and  a
	jr   z, $5BEC
L015BE2: db $7D;X
L015BE3: db $C6;X
L015BE4: db $28;X
L015BE5: db $6F;X
L015BE6: db $36;X
L015BE7: db $00;X
L015BE8: db $C6;X
L015BE9: db $CB;X
L015BEA: db $18;X
L015BEB: db $0E;X
L015BEC:;R
	ld   a, [$C16C]
	sub  c
	ldi  [hl], a
	ld   a, [$C16D]
	sbc  $00
	ld   [hl], a
	ld   a, l
	add  $F2
	ld   l, a
	set  2, [hl]
	ldh  a, [$FFC0]
	and  $0F
	ld   a, $00
	jr   nz, $5C11
	ld   a, [$C082]
	cp   $02
	ld   a, $03
	jr   z, $5C1A
	ld   a, [$B010]
	add  $6D
	ld   c, a
	ld   a, $5C
	adc  a, $00
	ld   b, a
	ld   a, [bc]
	ld   [$C16F], a
	sub  a
	ld   [$C16C], a
	call L014453
	ld   bc, $C166
L015C27:;R
	ld   a, [bc]
	and  a
	call nz, $5C71
	ldh  a, [$FFB6]
	add  $08
	ldh  [$FFB6], a
	inc  c
	ld   a, c
	cp   $6C
	jr   c, $5C27
	ldh  a, [$FFB1]
	add  $1E
	ld   l, a
	ld   h, d
	add  $11
	ld   e, a
	ld   a, [$C16C]
	ldi  [hl], a
	ld   [hl], a
	ld   [de], a
	ld   a, [$C171]
	and  a
	ret  nz
	ld   hl, $4675
	ld   a, $02
	rst  $00
	ret  
L015C53: db $CD;X
L015C54: db $E5;X
L015C55: db $22;X
L015C56: db $FE;X
L015C57: db $03;X
L015C58: db $DA;X
L015C59: db $2C;X
L015C5A: db $23;X
L015C5B: db $3E;X
L015C5C: db $0E;X
L015C5D: db $2C;X
L015C5E: db $77;X
L015C5F: db $2C;X
L015C60: db $97;X
L015C61: db $2C;X
L015C62: db $77;X
L015C63: db $2C;X
L015C64: db $FA;X
L015C65: db $6C;X
L015C66: db $C1;X
L015C67: db $2C;X
L015C68: db $22;X
L015C69: db $7D;X
L015C6A: db $E0;X
L015C6B: db $CE;X
L015C6C: db $C9;X
L015C6D: db $00;X
L015C6E: db $00
L015C6F: db $01;X
L015C70: db $02;X
L015C71:;C
	ld   hl, $C16C
	inc  [hl]
	push bc
	ld   b, $01
	ld   hl, $5D02
	call L001E87
	ld   a, [$C16E]
	ld   c, a
	inc  a
	or   $80
	ld   [hl], a
	ld   a, l
	add  $28
	ld   l, a
	ld   [hl], c
	add  $DE
	ld   l, a
	ld   [hl], $85
	inc  l
	inc  l
	ld   [hl], $06
	inc  l
	pop  bc
	ld   e, $1F
	ld   a, [$C171]
	and  a
	jr   nz, $5CAD
	ld   e, $07
	ld   a, [$C0EA]
	cp   $01
	jr   c, $5CAD
L015CA7: db $1E;X
L015CA8: db $0F;X
L015CA9: db $28;X
L015CAA: db $02;X
L015CAB: db $1E;X
L015CAC: db $17;X
L015CAD:;R
	ld   a, [bc]
	add  e
	ldi  [hl], a
	ld   [hl], a
	ld   a, l
	add  $10
	ld   l, a
	ld   a, c
	sub  $66
	ldi  [hl], a
	ld   [hl], $01
	ld   a, l
	add  $F2
	ld   l, a
	add  $04
	ld   e, a
	ldh  a, [$FFB6]
	ld   [hl], a
	ld   l, e
	ld   a, e
	add  $0F
	ld   e, a
	ldh  a, [$FFB7]
	sub  $08
	ld   [hl], a
	ld   l, e
	sub  $07
	ldi  [hl], a
	push bc
	ld   a, c
	sub  $66
	add  $FC
	ld   c, a
	ld   a, $5C
	adc  a, $00
	ld   b, a
	ld   a, [bc]
	pop  bc
	ld   [hl], a
	ld   a, l
	add  $F8
	ld   l, a
	add  $1D
	ld   e, a
	ld   a, [$C16F]
	ld   [hl], a
	ld   l, e
	ldh  a, [$FFB1]
	ldi  [hl], a
	ld   [hl], d
	ld   a, c
	sub  $66
	ld   hl, $71E3
	ld   a, $02
	rst  $00
	ret  
L015CFC: db $14
L015CFD: db $16
L015CFE: db $12
L015CFF: db $19
L015D00: db $13
L015D01: db $18
L015D02:;I
	call L014C32
	call L001F26
L015D08:;I
	ld   a, [$C0B0]
	and  a
	jp   nz, $5EC4
	call L015ED3
	call L014D5F
	ret  nc
	ldh  a, [$FFB1]
	add  $36
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	add  $1E
	ld   e, a
	add  $11
	ld   l, a
	ld   a, [hl]
	ld   l, e
	cp   [hl]
	jr   nz, $5D3A
	ldh  a, [$FFB1]
	add  $09
	ld   e, a
	ld   a, [de]
	cp   $08
	ld   a, $43
	jr   z, $5D37
	ld   a, $44
L015D37:;R
	call SoundDataCmd_8B
L015D3A:;R
	dec  [hl]
	ld   a, l
	add  $11
	ld   l, a
	ldh  a, [$FFB1]
	add  $31
	ld   e, a
	ld   a, [hl]
	ld   [de], a
	ld   a, e
	add  $E0
	ld   e, a
	ld   a, [de]
	dec  e
	ld   [de], a
	call L001EF3
L015D50:;I
	ld   a, [$C0B0]
	and  a
	jp   nz, $5EC4
	ldh  a, [$FFB1]
	add  $36
	ld   l, a
	ld   h, d
	add  $E4
	ld   e, a
	ldi  a, [hl]
	ld   h, [hl]
	add  $2E
	ld   l, a
	ld   a, [de]
	add  a
	add  a
	add  a
	add  a
	add  a
	add  [hl]
	ld   l, a
	ld   a, e
	add  $16
	ld   e, a
	push de
	ld   a, [de]
	sub  $40
	ld   [de], a
	inc  e
	ld   a, [de]
	sbc  $00
	ld   [de], a
	ld   c, a
	ld   a, l
	or   $80
	call L000E73
	ldh  a, [$FFB1]
	add  $10
	ld   e, a
	ld   a, [de]
	inc  e
	add  h
	ld   [de], a
	pop  hl
	ldi  a, [hl]
	or   [hl]
	jp   nz, $5ED3
	ld   a, l
	add  $E9
	ld   l, a
	ldi  a, [hl]
	ldh  [$FFB6], a
	ldi  a, [hl]
	ldh  [$FFB7], a
	ldi  a, [hl]
	ld   b, [hl]
	ld   c, a
	ld   a, l
	add  $0B
	ld   e, a
	add  $E2
	ld   l, a
	ld   a, [hl]
	ldh  [$FFD1], a
	and  $07
	ldh  [$FFD0], a
	push de
	ld   a, [de]
	and  a
	jr   z, $5DB3
	ld   a, $20
	ld   e, a
	ldh  a, [$FFB7]
	sub  $02
	add  a
	add  e
	ld   l, a
	ld   h, $C4
	ld   d, [hl]
	inc  l
	ldh  a, [$FFB6]
	add  [hl]
	ld   e, a
	set  7, d
	dec  l
	ldh  a, [$FFD0]
	and  a
	jp   z, $5E60
	ldh  a, [$FFD1]
	cp   $20
	jr   c, $5E00
L015DD2: db $F0;X
L015DD3: db $B7;X
L015DD4: db $FE;X
L015DD5: db $01;X
L015DD6: db $20;X
L015DD7: db $06;X
L015DD8: db $3E;X
L015DD9: db $D0;X
L015DDA: db $02;X
L015DDB: db $C3;X
L015DDC: db $97;X
L015DDD: db $5E;X
L015DDE: db $3D;X
L015DDF: db $E0;X
L015DE0: db $B7;X
L015DE1: db $3E;X
L015DE2: db $D0;X
L015DE3: db $02;X
L015DE4: db $FA;X
L015DE5: db $D0;X
L015DE6: db $3E;X
L015DE7: db $12;X
L015DE8: db $CB;X
L015DE9: db $FE;X
L015DEA: db $7B;X
L015DEB: db $D6;X
L015DEC: db $20;X
L015DED: db $5F;X
L015DEE: db $30;X
L015DEF: db $01;X
L015DF0: db $15;X
L015DF1: db $2D;X
L015DF2: db $2D;X
L015DF3: db $79;X
L015DF4: db $D6;X
L015DF5: db $08;X
L015DF6: db $4F;X
L015DF7: db $F0;X
L015DF8: db $D0;X
L015DF9: db $3D;X
L015DFA: db $E0;X
L015DFB: db $D0;X
L015DFC: db $20;X
L015DFD: db $D4;X
L015DFE: db $18;X
L015DFF: db $60;X
L015E00:;R
	ld   a, [$C0EA]
	cp   $01
	jr   z, $5E35
L015E07:;R
	ldh  a, [$FFB7]
	cp   $01
	jr   nz, $5E13
L015E0D: db $3E;X
L015E0E: db $E0;X
L015E0F: db $02;X
L015E10: db $C3;X
L015E11: db $97;X
L015E12: db $5E;X
L015E13:;R
	dec  a
	ldh  [$FFB7], a
	ld   a, $E0
	ld   [bc], a
	ld   a, [$3EE0]
	ld   [de], a
	set  7, [hl]
	ld   a, e
	sub  $20
	ld   e, a
	jr   nc, $5E26
	dec  d
L015E26:;R
	dec  l
	dec  l
	ld   a, c
	sub  $08
	ld   c, a
	ldh  a, [$FFD0]
	dec  a
	ldh  [$FFD0], a
	jr   nz, $5E07
	jr   L015E60
L015E35: db $F0;X
L015E36: db $B7;X
L015E37: db $FE;X
L015E38: db $01;X
L015E39: db $20;X
L015E3A: db $05;X
L015E3B: db $3E;X
L015E3C: db $F0;X
L015E3D: db $02;X
L015E3E: db $18;X
L015E3F: db $57;X
L015E40: db $3D;X
L015E41: db $E0;X
L015E42: db $B7;X
L015E43: db $3E;X
L015E44: db $F0;X
L015E45: db $02;X
L015E46: db $FA;X
L015E47: db $F0;X
L015E48: db $3E;X
L015E49: db $12;X
L015E4A: db $CB;X
L015E4B: db $FE;X
L015E4C: db $7B;X
L015E4D: db $D6;X
L015E4E: db $20;X
L015E4F: db $5F;X
L015E50: db $30;X
L015E51: db $01;X
L015E52: db $15;X
L015E53: db $2D;X
L015E54: db $2D;X
L015E55: db $79;X
L015E56: db $D6;X
L015E57: db $08;X
L015E58: db $4F;X
L015E59: db $F0;X
L015E5A: db $D0;X
L015E5B: db $3D;X
L015E5C: db $E0;X
L015E5D: db $D0;X
L015E5E: db $20;X
L015E5F: db $D5;X
L015E60:;JR
	ldh  a, [$FFD1]
	cp   $20
	jr   c, $5E74
L015E66: db $3E;X
L015E67: db $D0;X
L015E68: db $02;X
L015E69: db $F0;X
L015E6A: db $B7;X
L015E6B: db $FE;X
L015E6C: db $02;X
L015E6D: db $38;X
L015E6E: db $28;X
L015E6F: db $FA;X
L015E70: db $D0;X
L015E71: db $3E;X
L015E72: db $18;X
L015E73: db $20;X
L015E74:;R
	ld   a, [$C0EA]
	and  a
	jr   nz, $5E88
	ld   a, $E0
	ld   [bc], a
	ldh  a, [$FFB7]
	cp   $02
	jr   c, $5E97
	ld   a, [$3EE0]
	jr   L015E94
L015E88: db $3E;X
L015E89: db $F0;X
L015E8A: db $02;X
L015E8B: db $F0;X
L015E8C: db $B7;X
L015E8D: db $FE;X
L015E8E: db $02;X
L015E8F: db $38;X
L015E90: db $06;X
L015E91: db $FA;X
L015E92: db $F0;X
L015E93: db $3E;X
L015E94:;R
	ld   [de], a
	set  7, [hl]
L015E97:;R
	pop  de
	ld   a, e
	add  $0E
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	add  $1F
	ld   l, a
	dec  [hl]
	ld   bc, $0002
	call L001EE8
L015EA9:;I
	ld   a, e
	add  $08
	ld   e, a
	ldh  a, [$FF97]
	cp   $A0
	ld   a, $07
	jr   nz, $5EBD
L015EB5: db $FA;X
L015EB6: db $11;X
L015EB7: db $C0;X
L015EB8: db $E6;X
L015EB9: db $02;X
L015EBA: db $0F;X
L015EBB: db $C6;X
L015EBC: db $07;X
L015EBD:;R
	ld   [de], a
	call L001EF3
L015EC1:;I
	jp   L001ECD
L015EC4: db $F0;X
L015EC5: db $B1;X
L015EC6: db $C6;X
L015EC7: db $36;X
L015EC8: db $6F;X
L015EC9: db $62;X
L015ECA: db $2A;X
L015ECB: db $66;X
L015ECC: db $C6;X
L015ECD: db $1F;X
L015ECE: db $6F;X
L015ECF: db $35;X
L015ED0: db $C3;X
L015ED1: db $CD;X
L015ED2: db $1E;X
L015ED3:;JC
	ldh  a, [$FFB1]
	add  $11
	ld   e, a
	add  $F9
	ld   l, a
	ld   h, d
	ld   a, [hl]
	ld   b, a
	dec  l
	and  $07
	ld   c, a
	ld   a, [de]
	sub  $54
	jr   nc, $5EED
L015EE7: db $2D;X
L015EE8: db $2D;X
L015EE9: db $2D;X
L015EEA: db $CB;X
L015EEB: db $BE;X
L015EEC: db $C9;X
L015EED:;R
	srl  a
	srl  a
	srl  a
	cp   c
	jr   nc, $5EFD
	ld   c, a
	ld   a, b
	and  $F8
	or   c
	jr   L015EFE
L015EFD:;R
	ld   a, b
L015EFE:;R
	ld   [hl], a
	dec  l
	ldh  a, [$FF97]
	cp   $A0
	ld   a, $06
	jr   nz, $5F10
	ld   a, [$C011]
	and  $02
	rrca 
	add  $07
L015F10:;R
	ld   [hl], a
	dec  l
	dec  l
	set  7, [hl]
	ret  
L015F16:;J
	ldh  a, [$FFB1]
	add  $2E
	ld   l, a
	add  $F1
	ld   e, a
	ld   h, d
	ld   a, [hl]
	add  $18
	ld   [hl], a
	ld   a, [de]
	and  a
	ret  nz
	ld   a, l
	add  $D9
	ld   l, a
	res  2, [hl]
	ret  
L015F2D:;C
	ldh  a, [$FFC0]
	and  $0F
	cp   $08
	jr   z, $5F3D
	cp   $0C
	jr   z, $5F3D
	cp   $0E
	jr   nz, $5F3F
L015F3D:;R
	sub  a
	ret  
L015F3F:;R
	cp   $04
	jr   nz, $5F50
L015F43: db $F0;X
L015F44: db $B1;X
L015F45: db $C6;X
L015F46: db $09;X
L015F47: db $5F;X
L015F48: db $1A;X
L015F49: db $4F;X
L015F4A: db $FA;X
L015F4B: db $DA;X
L015F4C: db $C0;X
L015F4D: db $B9;X
L015F4E: db $30;X
L015F4F: db $ED;X
L015F50:;R
	call L015FDC
	ld   a, $03
	ldh  [$FFD6], a
	sub  a
	ldh  [$FFF7], a
	ld   a, b
	or   c
	jr   z, $5F3D
	ld   a, [$C0D8]
	and  a
	jp   z, $5FD6
	ldh  a, [$FFB1]
	add  $14
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   e, [hl]
	or   e
	ld   e, a
	ld   a, l
	add  $25
	ld   l, a
	ldi  a, [hl]
	or   e
	or   [hl]
	jr   z, $5FD6
L015F78: db $F0;X
L015F79: db $B1;X
L015F7A: db $C6;X
L015F7B: db $14;X
L015F7C: db $6F;X
L015F7D: db $62;X
L015F7E: db $79;X
L015F7F: db $96;X
L015F80: db $4F;X
L015F81: db $2C;X
L015F82: db $78;X
L015F83: db $9E;X
L015F84: db $47;X
L015F85: db $30;X
L015F86: db $0B;X
L015F87: db $2D;X
L015F88: db $97;X
L015F89: db $91;X
L015F8A: db $22;X
L015F8B: db $3E;X
L015F8C: db $00;X
L015F8D: db $98;X
L015F8E: db $77;X
L015F8F: db $3E;X
L015F90: db $02;X
L015F91: db $C9;X
L015F92: db $36;X
L015F93: db $00;X
L015F94: db $2D;X
L015F95: db $36;X
L015F96: db $00;X
L015F97: db $B1;X
L015F98: db $28;X
L015F99: db $F5;X
L015F9A: db $7D;X
L015F9B: db $C6;X
L015F9C: db $26;X
L015F9D: db $6F;X
L015F9E: db $79;X
L015F9F: db $96;X
L015FA0: db $4F;X
L015FA1: db $36;X
L015FA2: db $00;X
L015FA3: db $2C;X
L015FA4: db $78;X
L015FA5: db $9E;X
L015FA6: db $47;X
L015FA7: db $36;X
L015FA8: db $00;X
L015FA9: db $38;X
L015FAA: db $05;X
L015FAB: db $B1;X
L015FAC: db $20;X
L015FAD: db $0C;X
L015FAE: db $18;X
L015FAF: db $DF;X
L015FB0: db $2D;X
L015FB1: db $97;X
L015FB2: db $91;X
L015FB3: db $22;X
L015FB4: db $3E;X
L015FB5: db $00;X
L015FB6: db $98;X
L015FB7: db $77;X
L015FB8: db $18;X
L015FB9: db $D5;X
L015FBA:;R
	ld   hl, $C160
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	bit  7, h
	jr   z, $5FD3
	ld   a, c
	add  [hl]
	ldi  [hl], a
	ld   a, b
	adc  a, [hl]
	ld   [hl], a
	cp   $40
	jr   c, $5FD3
L015FCE: db $36;X
L015FCF: db $3F;X
L015FD0: db $2D;X
L015FD1: db $36;X
L015FD2: db $FF;X
L015FD3:;R
	ldh  a, [$FFD6]
	ret  
L015FD6:;R
	ld   a, $01
	ldh  [$FFD6], a
	jr   L015FBA
L015FDC:;C
	ldh  a, [$FFB1]
	ld   e, a
	call L0160AD
	ld   a, [$C0E2]
	swap a
	and  $0F
	ld   c, a
	ld   a, [$C0E3]
	swap a
	ld   b, a
	and  $F0
	or   c
	ld   c, a
	ld   a, b
	and  $0F
	jr   z, $5FFB
L015FF9: db $0E;X
L015FFA: db $FF;X
L015FFB:;R
	ld   a, [$C0DC]
	ld   b, a
	ldh  a, [$FFC0]
	and  $0F
	jr   nz, $601E
	ld   a, [$C082]
	cp   $01
	jr   z, $601C
	jr   nc, $6029
	ld   a, [$C080]
	cp   $03
	jr   c, $6063
L016015: db $79;X
L016016: db $D6;X
L016017: db $04;X
L016018: db $30;X
L016019: db $10;X
L01601A: db $18;X
L01601B: db $47;X
L01601C: db $18;X
L01601D: db $0C;X
L01601E: db $FE;X
L01601F: db $0E;X
L016020: db $30;X
L016021: db $41;X
L016022: db $79;X
L016023: db $D6;X
L016024: db $02;X
L016025: db $30;X
L016026: db $03;X
L016027: db $18;X
L016028: db $3A;X
L016029: db $79;X
L01602A: db $90;X
L01602B: db $38;X
L01602C: db $36;X
L01602D: db $FE;X
L01602E: db $1A;X
L01602F: db $38;X
L016030: db $02;X
L016031: db $3E;X
L016032: db $1A;X
L016033: db $C6;X
L016034: db $92;X
L016035: db $4F;X
L016036: db $3E;X
L016037: db $60;X
L016038: db $CE;X
L016039: db $00;X
L01603A: db $47;X
L01603B: db $0A;X
L01603C: db $CB;X
L01603D: db $7F;X
L01603E: db $28;X
L01603F: db $14;X
L016040: db $E6;X
L016041: db $7F;X
L016042: db $47;X
L016043: db $FA;X
L016044: db $E8;X
L016045: db $C0;X
L016046: db $CB;X
L016047: db $3F;X
L016048: db $05;X
L016049: db $20;X
L01604A: db $FB;X
L01604B: db $4F;X
L01604C: db $CB;X
L01604D: db $3F;X
L01604E: db $81;X
L01604F: db $20;X
L016050: db $15;X
L016051: db $3C;X
L016052: db $18;X
L016053: db $12;X
L016054: db $47;X
L016055: db $FA;X
L016056: db $E8;X
L016057: db $C0;X
L016058: db $CB;X
L016059: db $3F;X
L01605A: db $05;X
L01605B: db $20;X
L01605C: db $FB;X
L01605D: db $A7;X
L01605E: db $20;X
L01605F: db $06;X
L016060: db $3C;X
L016061: db $18;X
L016062: db $03;X
L016063:;R
	ld   a, [$C0E8]
	ld   [$C0E6], a
	ldh  a, [$FFB1]
	add  $0E
	ld   e, a
	ld   l, a
	ld   h, d
	ld   c, [hl]
	inc  l
	ld   b, [hl]
	dec  l
	ld   a, [$C0E6]
	call L000E50
	ld   [de], a
	inc  e
	sub  a
	ld   [de], a
	ld   a, e
	add  $2F
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	add  c
	ld   c, a
	ld   a, [hl]
	adc  a, b
	ld   b, a
	jr   c, $608E
	cp   $40
	ret  c
L01608E: db $01;X
L01608F: db $FF;X
L016090: db $3F;X
L016091: db $C9;X
L016092: db $81;X
L016093: db $81;X
L016094: db $01;X
L016095: db $01;X
L016096: db $82;X
L016097: db $82;X
L016098: db $02;X
L016099: db $02;X
L01609A: db $83;X
L01609B: db $83;X
L01609C: db $03;X
L01609D: db $03;X
L01609E: db $84;X
L01609F: db $04;X
L0160A0: db $04;X
L0160A1: db $04;X
L0160A2: db $85;X
L0160A3: db $05;X
L0160A4: db $05;X
L0160A5: db $05;X
L0160A6: db $86;X
L0160A7: db $86;X
L0160A8: db $06;X
L0160A9: db $06;X
L0160AA: db $87;X
L0160AB: db $87;X
L0160AC: db $07;X
L0160AD:;C
	push de
	ld   a, e
	add  $28
	ld   e, a
	ld   hl, $60DD
	ld   a, [de]
	and  a
	jr   z, $60BC
	ld   hl, $60DF
L0160BC:;R
	ld   bc, $C160
	ldi  a, [hl]
	ld   [bc], a
	inc  c
	ldi  a, [hl]
	ld   [bc], a
	ld   a, [de]
	pop  de
	and  a
	jr   nz, $60D0
	ld   a, [$C091]
	and  a
	ret  z
L0160CE: db $18;X
L0160CF: db $05;X
L0160D0:;R
	ld   a, [$C090]
	and  a
	ret  z
L0160D5: db $97;X
L0160D6: db $EA;X
L0160D7: db $60;X
L0160D8: db $C1;X
L0160D9: db $EA;X
L0160DA: db $61;X
L0160DB: db $C1;X
L0160DC: db $C9;X
L0160DD: db $BA
L0160DE: db $D4
L0160DF: db $7A
L0160E0: db $D4
L0160E1: db $21;X
L0160E2: db $F2;X
L0160E3: db $41;X
L0160E4: db $3E;X
L0160E5: db $02;X
L0160E6: db $C7;X
L0160E7: db $F0;X
L0160E8: db $B1;X
L0160E9: db $C6;X
L0160EA: db $09;X
L0160EB: db $6F;X
L0160EC: db $62;X
L0160ED: db $36;X
L0160EE: db $FF;X
L0160EF: db $C6;X
L0160F0: db $1F;X
L0160F1: db $5F;X
L0160F2: db $1A;X
L0160F3: db $C6;X
L0160F4: db $90;X
L0160F5: db $6F;X
L0160F6: db $26;X
L0160F7: db $C0;X
L0160F8: db $36;X
L0160F9: db $00;X
L0160FA: db $CD;X
L0160FB: db $0D;X
L0160FC: db $44;X
L0160FD: db $CD;X
L0160FE: db $52;X
L0160FF: db $50;X
L016100: db $06;X
L016101: db $04;X
L016102: db $CD;X
L016103: db $5D;X
L016104: db $23;X
L016105: db $FA;X
L016106: db $9D;X
L016107: db $C0;X
L016108: db $EA;X
L016109: db $8C;X
L01610A: db $C1;X
L01610B: db $CD;X
L01610C: db $26;X
L01610D: db $1F;X
L01610E: db $CD;X
L01610F: db $7C;X
L016110: db $23;X
L016111: db $FE;X
L016112: db $04;X
L016113: db $C0;X
L016114: db $F0;X
L016115: db $B1;X
L016116: db $C6;X
L016117: db $07;X
L016118: db $6F;X
L016119: db $62;X
L01611A: db $CB;X
L01611B: db $C6;X
L01611C: db $21;X
L01611D: db $37;X
L01611E: db $61;X
L01611F: db $3E;X
L016120: db $02;X
L016121: db $C7;X
L016122: db $CD;X
L016123: db $F3;X
L016124: db $1E;X
L016125: db $7B;X
L016126: db $C6;X
L016127: db $07;X
L016128: db $6F;X
L016129: db $62;X
L01612A: db $CB;X
L01612B: db $46;X
L01612C: db $C0;X
L01612D: db $CD;X
L01612E: db $BA;X
L01612F: db $4D;X
L016130: db $21;X
L016131: db $B9;X
L016132: db $51;X
L016133: db $3E;X
L016134: db $02;X
L016135: db $C7;X
L016136: db $CD;X
L016137: db $BD;X
L016138: db $55;X
L016139: db $CD;X
L01613A: db $F3;X
L01613B: db $1E;X
L01613C: db $7B;X
L01613D: db $C6;X
L01613E: db $28;X
L01613F: db $5F;X
L016140: db $1A;X
L016141: db $A7;X
L016142: db $20;X
L016143: db $17;X
L016144: db $FA;X
L016145: db $88;X
L016146: db $C1;X
L016147: db $FE;X
L016148: db $04;X
L016149: db $20;X
L01614A: db $10;X
L01614B: db $F0;X
L01614C: db $A0;X
L01614D: db $E6;X
L01614E: db $03;X
L01614F: db $28;X
L016150: db $0D;X
L016151: db $06;X
L016152: db $05;X
L016153: db $CD;X
L016154: db $5D;X
L016155: db $23;X
L016156: db $3E;X
L016157: db $05;X
L016158: db $EA;X
L016159: db $89;X
L01615A: db $C1;X
L01615B: db $CD;X
L01615C: db $26;X
L01615D: db $1F;X
L01615E: db $F0;X
L01615F: db $B1;X
L016160: db $C6;X
L016161: db $07;X
L016162: db $6F;X
L016163: db $62;X
L016164: db $CB;X
L016165: db $4E;X
L016166: db $C0;X
L016167: db $06;X
L016168: db $00;X
L016169: db $CD;X
L01616A: db $5D;X
L01616B: db $23;X
L01616C: db $CD;X
L01616D: db $26;X
L01616E: db $1F;X
L01616F: db $CD;X
L016170: db $7C;X
L016171: db $23;X
L016172: db $A7;X
L016173: db $C0;X
L016174: db $CD;X
L016175: db $D0;X
L016176: db $40;X
L016177: db $21;X
L016178: db $89;X
L016179: db $4F;X
L01617A: db $3E;X
L01617B: db $02;X
L01617C: db $C7;X
L01617D: db $F0;X
L01617E: db $B1;X
L01617F: db $C6;X
L016180: db $28;X
L016181: db $5F;X
L016182: db $1A;X
L016183: db $A7;X
L016184: db $20;X
L016185: db $13;X
L016186: db $CD;X
L016187: db $F0;X
L016188: db $59;X
L016189: db $06;X
L01618A: db $01;X
L01618B: db $CD;X
L01618C: db $5D;X
L01618D: db $23;X
L01618E: db $3E;X
L01618F: db $22;X
L016190: db $EA;X
L016191: db $8A;X
L016192: db $C1;X
L016193: db $97;X
L016194: db $EA;X
L016195: db $8B;X
L016196: db $C1;X
L016197: db $18;X
L016198: db $1E;X
L016199: db $97;X
L01619A: db $EA;X
L01619B: db $90;X
L01619C: db $C1;X
L01619D: db $3E;X
L01619E: db $22;X
L01619F: db $EA;X
L0161A0: db $8C;X
L0161A1: db $C1;X
L0161A2: db $97;X
L0161A3: db $EA;X
L0161A4: db $8D;X
L0161A5: db $C1;X
L0161A6: db $CD;X
L0161A7: db $26;X
L0161A8: db $1F;X
L0161A9: db $CD;X
L0161AA: db $7C;X
L0161AB: db $23;X
L0161AC: db $FE;X
L0161AD: db $01;X
L0161AE: db $C0;X
L0161AF: db $06;X
L0161B0: db $01;X
L0161B1: db $CD;X
L0161B2: db $5D;X
L0161B3: db $23;X
L0161B4: db $CD;X
L0161B5: db $F0;X
L0161B6: db $59;X
L0161B7: db $CD;X
L0161B8: db $F3;X
L0161B9: db $1E;X
L0161BA: db $7B;X
L0161BB: db $C6;X
L0161BC: db $07;X
L0161BD: db $6F;X
L0161BE: db $62;X
L0161BF: db $CB;X
L0161C0: db $56;X
L0161C1: db $C2;X
L0161C2: db $16;X
L0161C3: db $5F;X
L0161C4: db $21;X
L0161C5: db $C0;X
L0161C6: db $42;X
L0161C7: db $3E;X
L0161C8: db $02;X
L0161C9: db $C7;X
L0161CA: db $21;X
L0161CB: db $F9;X
L0161CC: db $64;X
L0161CD: db $3E;X
L0161CE: db $02;X
L0161CF: db $C7;X
L0161D0: db $CD;X
L0161D1: db $F3;X
L0161D2: db $1E;X
L0161D3: db $7B;X
L0161D4: db $C6;X
L0161D5: db $2E;X
L0161D6: db $5F;X
L0161D7: db $97;X
L0161D8: db $12;X
L0161D9: db $CD;X
L0161DA: db $F3;X
L0161DB: db $1E;X
L0161DC: db $CD;X
L0161DD: db $F3;X
L0161DE: db $1E;X
L0161DF: db $CD;X
L0161E0: db $F3;X
L0161E1: db $1E;X
L0161E2: db $7B;X
L0161E3: db $C6;X
L0161E4: db $28;X
L0161E5: db $5F;X
L0161E6: db $1A;X
L0161E7: db $A7;X
L0161E8: db $20;X
L0161E9: db $28;X
L0161EA: db $CD;X
L0161EB: db $7C;X
L0161EC: db $23;X
L0161ED: db $FE;X
L0161EE: db $01;X
L0161EF: db $C0;X
L0161F0: db $21;X
L0161F1: db $E8;X
L0161F2: db $42;X
L0161F3: db $3E;X
L0161F4: db $02;X
L0161F5: db $C7;X
L0161F6: db $CD;X
L0161F7: db $D2;X
L0161F8: db $45;X
L0161F9: db $30;X
L0161FA: db $10;X
L0161FB: db $06;X
L0161FC: db $07;X
L0161FD: db $CD;X
L0161FE: db $5D;X
L0161FF: db $23;X
L016200: db $F0;X
L016201: db $B1;X
L016202: db $C6;X
L016203: db $2F;X
L016204: db $5F;X
L016205: db $3E;X
L016206: db $07;X
L016207: db $12;X
L016208: db $C3;X
L016209: db $41;X
L01620A: db $65;X
L01620B: db $06;X
L01620C: db $03;X
L01620D: db $CD;X
L01620E: db $5D;X
L01620F: db $23;X
L016210: db $18;X
L016211: db $19;X
L016212: db $CD;X
L016213: db $26;X
L016214: db $1F;X
L016215: db $CD;X
L016216: db $7C;X
L016217: db $23;X
L016218: db $FE;X
L016219: db $01;X
L01621A: db $C8;X
L01621B: db $FE;X
L01621C: db $07;X
L01621D: db $20;X
L01621E: db $03;X
L01621F: db $C3;X
L016220: db $41;X
L016221: db $65;X
L016222: db $21;X
L016223: db $E8;X
L016224: db $42;X
L016225: db $3E;X
L016226: db $02;X
L016227: db $C7;X
L016228: db $CD;X
L016229: db $D2;X
L01622A: db $45;X
L01622B: db $CD;X
L01622C: db $F3;X
L01622D: db $1E;X
L01622E: db $CD;X
L01622F: db $ED;X
L016230: db $6B;X
L016231: db $F0;X
L016232: db $B1;X
L016233: db $C6;X
L016234: db $28;X
L016235: db $5F;X
L016236: db $C6;X
L016237: db $DF;X
L016238: db $6F;X
L016239: db $62;X
L01623A: db $1A;X
L01623B: db $A7;X
L01623C: db $28;X
L01623D: db $25;X
L01623E: db $FA;X
L01623F: db $90;X
L016240: db $C1;X
L016241: db $A7;X
L016242: db $28;X
L016243: db $0E;X
L016244: db $E5;X
L016245: db $CD;X
L016246: db $C4;X
L016247: db $4F;X
L016248: db $FA;X
L016249: db $90;X
L01624A: db $C1;X
L01624B: db $3D;X
L01624C: db $EA;X
L01624D: db $90;X
L01624E: db $C1;X
L01624F: db $20;X
L016250: db $F4;X
L016251: db $E1;X
L016252: db $7E;X
L016253: db $E6;X
L016254: db $03;X
L016255: db $C0;X
L016256: db $CD;X
L016257: db $7C;X
L016258: db $23;X
L016259: db $FE;X
L01625A: db $04;X
L01625B: db $C0;X
L01625C: db $06;X
L01625D: db $04;X
L01625E: db $CD;X
L01625F: db $5D;X
L016260: db $23;X
L016261: db $18;X
L016262: db $1E;X
L016263: db $CB;X
L016264: db $5E;X
L016265: db $28;X
L016266: db $11;X
L016267: db $CB;X
L016268: db $9E;X
L016269: db $E5;X
L01626A: db $CD;X
L01626B: db $C4;X
L01626C: db $4F;X
L01626D: db $CD;X
L01626E: db $E5;X
L01626F: db $22;X
L016270: db $3E;X
L016271: db $01;X
L016272: db $2C;X
L016273: db $22;X
L016274: db $7D;X
L016275: db $E0;X
L016276: db $CE;X
L016277: db $E1;X
L016278: db $7E;X
L016279: db $E6;X
L01627A: db $03;X
L01627B: db $C0;X
L01627C: db $06;X
L01627D: db $04;X
L01627E: db $CD;X
L01627F: db $5D;X
L016280: db $23;X
L016281: db $F0;X
L016282: db $B1;X
L016283: db $C6;X
L016284: db $09;X
L016285: db $6F;X
L016286: db $62;X
L016287: db $7E;X
L016288: db $A7;X
L016289: db $28;X
L01628A: db $2A;X
L01628B: db $36;X
L01628C: db $00;X
L01628D: db $CD;X
L01628E: db $0D;X
L01628F: db $54;X
L016290: db $30;X
L016291: db $23;X
L016292: db $F0;X
L016293: db $B1;X
L016294: db $C6;X
L016295: db $07;X
L016296: db $6F;X
L016297: db $62;X
L016298: db $CB;X
L016299: db $E6;X
L01629A: db $FA;X
L01629B: db $11;X
L01629C: db $C0;X
L01629D: db $E6;X
L01629E: db $01;X
L01629F: db $CC;X
L0162A0: db $F3;X
L0162A1: db $1E;X
L0162A2: db $CD;X
L0162A3: db $F3;X
L0162A4: db $1E;X
L0162A5: db $7B;X
L0162A6: db $C6;X
L0162A7: db $07;X
L0162A8: db $6F;X
L0162A9: db $62;X
L0162AA: db $CB;X
L0162AB: db $66;X
L0162AC: db $C2;X
L0162AD: db $6E;X
L0162AE: db $54;X
L0162AF: db $FA;X
L0162B0: db $11;X
L0162B1: db $C0;X
L0162B2: db $E6;X
L0162B3: db $01;X
L0162B4: db $C0;X
L0162B5: db $CD;X
L0162B6: db $AE;X
L0162B7: db $6C;X
L0162B8: db $CD;X
L0162B9: db $F3;X
L0162BA: db $1E;X
L0162BB: db $21;X
L0162BC: db $85;X
L0162BD: db $65;X
L0162BE: db $3E;X
L0162BF: db $02;X
L0162C0: db $C7;X
L0162C1: db $CD;X
L0162C2: db $F3;X
L0162C3: db $1E;X
L0162C4: db $CD;X
L0162C5: db $BA;X
L0162C6: db $4D;X
L0162C7: db $CD;X
L0162C8: db $F3;X
L0162C9: db $1E;X
L0162CA: db $7B;X
L0162CB: db $C6;X
L0162CC: db $28;X
L0162CD: db $5F;X
L0162CE: db $1A;X
L0162CF: db $A7;X
L0162D0: db $20;X
L0162D1: db $09;X
L0162D2: db $CD;X
L0162D3: db $26;X
L0162D4: db $1F;X
L0162D5: db $CD;X
L0162D6: db $7C;X
L0162D7: db $23;X
L0162D8: db $FE;X
L0162D9: db $04;X
L0162DA: db $C0;X
L0162DB: db $F0;X
L0162DC: db $B1;X
L0162DD: db $C6;X
L0162DE: db $24;X
L0162DF: db $5F;X
L0162E0: db $1A;X
L0162E1: db $A7;X
L0162E2: db $C2;X
L0162E3: db $55;X
L0162E4: db $64;X
L0162E5: db $7B;X
L0162E6: db $C6;X
L0162E7: db $04;X
L0162E8: db $5F;X
L0162E9: db $1A;X
L0162EA: db $A7;X
L0162EB: db $20;X
L0162EC: db $6B;X
L0162ED: db $CD;X
L0162EE: db $98;X
L0162EF: db $56;X
L0162F0: db $78;X
L0162F1: db $A7;X
L0162F2: db $20;X
L0162F3: db $3C;X
L0162F4: db $CD;X
L0162F5: db $5D;X
L0162F6: db $23;X
L0162F7: db $3E;X
L0162F8: db $01;X
L0162F9: db $EA;X
L0162FA: db $9B;X
L0162FB: db $C1;X
L0162FC: db $CD;X
L0162FD: db $F3;X
L0162FE: db $1E;X
L0162FF: db $CD;X
L016300: db $7C;X
L016301: db $23;X
L016302: db $A7;X
L016303: db $C8;X
L016304: db $FE;X
L016305: db $03;X
L016306: db $D0;X
L016307: db $FE;X
L016308: db $01;X
L016309: db $CA;X
L01630A: db $F7;X
L01630B: db $63;X
L01630C: db $21;X
L01630D: db $79;X
L01630E: db $59;X
L01630F: db $3E;X
L016310: db $02;X
L016311: db $C7;X
L016312: db $FA;X
L016313: db $80;X
L016314: db $C1;X
L016315: db $A7;X
L016316: db $C4;X
L016317: db $48;X
L016318: db $64;X
L016319: db $06;X
L01631A: db $05;X
L01631B: db $CD;X
L01631C: db $5D;X
L01631D: db $23;X
L01631E: db $97;X
L01631F: db $EA;X
L016320: db $9B;X
L016321: db $C1;X
L016322: db $CD;X
L016323: db $F3;X
L016324: db $1E;X
L016325: db $CD;X
L016326: db $7C;X
L016327: db $23;X
L016328: db $FE;X
L016329: db $05;X
L01632A: db $C0;X
L01632B: db $CD;X
L01632C: db $65;X
L01632D: db $57;X
L01632E: db $18;X
L01632F: db $10;X
L016330: db $CD;X
L016331: db $5D;X
L016332: db $23;X
L016333: db $97;X
L016334: db $EA;X
L016335: db $9B;X
L016336: db $C1;X
L016337: db $CD;X
L016338: db $F3;X
L016339: db $1E;X
L01633A: db $CD;X
L01633B: db $7C;X
L01633C: db $23;X
L01633D: db $FE;X
L01633E: db $05;X
L01633F: db $C0;X
L016340: db $F0;X
L016341: db $B1;X
L016342: db $C6;X
L016343: db $09;X
L016344: db $6F;X
L016345: db $62;X
L016346: db $4E;X
L016347: db $36;X
L016348: db $00;X
L016349: db $C6;X
L01634A: db $26;X
L01634B: db $6F;X
L01634C: db $71;X
L01634D: db $79;X
L01634E: db $A7;X
L01634F: db $C4;X
L016350: db $52;X
L016351: db $50;X
L016352: db $CD;X
L016353: db $74;X
L016354: db $43;X
L016355: db $C3;X
L016356: db $77;X
L016357: db $61;X
L016358: db $CD;X
L016359: db $26;X
L01635A: db $1F;X
L01635B: db $CD;X
L01635C: db $7C;X
L01635D: db $23;X
L01635E: db $A7;X
L01635F: db $28;X
L016360: db $0B;X
L016361: db $FE;X
L016362: db $05;X
L016363: db $C0;X
L016364: db $06;X
L016365: db $05;X
L016366: db $CD;X
L016367: db $5D;X
L016368: db $23;X
L016369: db $C3;X
L01636A: db $40;X
L01636B: db $63;X
L01636C: db $21;X
L01636D: db $79;X
L01636E: db $59;X
L01636F: db $3E;X
L016370: db $02;X
L016371: db $C7;X
L016372: db $FA;X
L016373: db $9B;X
L016374: db $C1;X
L016375: db $A7;X
L016376: db $20;X
L016377: db $35;X
L016378: db $21;X
L016379: db $F0;X
L01637A: db $C0;X
L01637B: db $CB;X
L01637C: db $FE;X
L01637D: db $2E;X
L01637E: db $F4;X
L01637F: db $36;X
L016380: db $00;X
L016381: db $2C;X
L016382: db $36;X
L016383: db $01;X
L016384: db $06;X
L016385: db $02;X
L016386: db $CD;X
L016387: db $5D;X
L016388: db $23;X
L016389: db $CD;X
L01638A: db $F3;X
L01638B: db $1E;X
L01638C: db $CD;X
L01638D: db $7C;X
L01638E: db $23;X
L01638F: db $FE;X
L016390: db $05;X
L016391: db $C0;X
L016392: db $21;X
L016393: db $F0;X
L016394: db $C0;X
L016395: db $CB;X
L016396: db $BE;X
L016397: db $2E;X
L016398: db $F5;X
L016399: db $36;X
L01639A: db $00;X
L01639B: db $FA;X
L01639C: db $80;X
L01639D: db $C1;X
L01639E: db $A7;X
L01639F: db $C4;X
L0163A0: db $48;X
L0163A1: db $64;X
L0163A2: db $06;X
L0163A3: db $05;X
L0163A4: db $CD;X
L0163A5: db $5D;X
L0163A6: db $23;X
L0163A7: db $CD;X
L0163A8: db $65;X
L0163A9: db $57;X
L0163AA: db $C3;X
L0163AB: db $40;X
L0163AC: db $63;X
L0163AD: db $21;X
L0163AE: db $9B;X
L0163AF: db $C1;X
L0163B0: db $CB;X
L0163B1: db $FE;X
L0163B2: db $06;X
L0163B3: db $01;X
L0163B4: db $CD;X
L0163B5: db $5D;X
L0163B6: db $23;X
L0163B7: db $CD;X
L0163B8: db $F3;X
L0163B9: db $1E;X
L0163BA: db $CD;X
L0163BB: db $7C;X
L0163BC: db $23;X
L0163BD: db $FE;X
L0163BE: db $04;X
L0163BF: db $C0;X
L0163C0: db $FA;X
L0163C1: db $80;X
L0163C2: db $C1;X
L0163C3: db $A7;X
L0163C4: db $C4;X
L0163C5: db $48;X
L0163C6: db $64;X
L0163C7: db $FA;X
L0163C8: db $9B;X
L0163C9: db $C1;X
L0163CA: db $A7;X
L0163CB: db $C0;X
L0163CC: db $FA;X
L0163CD: db $F5;X
L0163CE: db $C0;X
L0163CF: db $A7;X
L0163D0: db $28;X
L0163D1: db $14;X
L0163D2: db $CD;X
L0163D3: db $26;X
L0163D4: db $1F;X
L0163D5: db $CD;X
L0163D6: db $7C;X
L0163D7: db $23;X
L0163D8: db $FE;X
L0163D9: db $05;X
L0163DA: db $C0;X
L0163DB: db $06;X
L0163DC: db $05;X
L0163DD: db $CD;X
L0163DE: db $5D;X
L0163DF: db $23;X
L0163E0: db $CD;X
L0163E1: db $65;X
L0163E2: db $57;X
L0163E3: db $C3;X
L0163E4: db $40;X
L0163E5: db $63;X
L0163E6: db $CD;X
L0163E7: db $26;X
L0163E8: db $1F;X
L0163E9: db $CD;X
L0163EA: db $7C;X
L0163EB: db $23;X
L0163EC: db $FE;X
L0163ED: db $05;X
L0163EE: db $C0;X
L0163EF: db $06;X
L0163F0: db $05;X
L0163F1: db $CD;X
L0163F2: db $5D;X
L0163F3: db $23;X
L0163F4: db $C3;X
L0163F5: db $40;X
L0163F6: db $63;X
L0163F7: db $21;X
L0163F8: db $9B;X
L0163F9: db $C1;X
L0163FA: db $34;X
L0163FB: db $FA;X
L0163FC: db $80;X
L0163FD: db $C1;X
L0163FE: db $A7;X
L0163FF: db $C4;X
L016400: db $48;X
L016401: db $64;X
L016402: db $06;X
L016403: db $04;X
L016404: db $CD;X
L016405: db $5D;X
L016406: db $23;X
L016407: db $CD;X
L016408: db $26;X
L016409: db $1F;X
L01640A: db $FA;X
L01640B: db $9B;X
L01640C: db $C1;X
L01640D: db $FE;X
L01640E: db $82;X
L01640F: db $C0;X
L016410: db $FA;X
L016411: db $9A;X
L016412: db $C1;X
L016413: db $3C;X
L016414: db $EA;X
L016415: db $9A;X
L016416: db $C1;X
L016417: db $E6;X
L016418: db $01;X
L016419: db $28;X
L01641A: db $20;X
L01641B: db $21;X
L01641C: db $F4;X
L01641D: db $C0;X
L01641E: db $36;X
L01641F: db $00;X
L016420: db $2C;X
L016421: db $36;X
L016422: db $00;X
L016423: db $06;X
L016424: db $05;X
L016425: db $CD;X
L016426: db $5D;X
L016427: db $23;X
L016428: db $97;X
L016429: db $EA;X
L01642A: db $9B;X
L01642B: db $C1;X
L01642C: db $CD;X
L01642D: db $F3;X
L01642E: db $1E;X
L01642F: db $CD;X
L016430: db $7C;X
L016431: db $23;X
L016432: db $FE;X
L016433: db $05;X
L016434: db $C0;X
L016435: db $CD;X
L016436: db $65;X
L016437: db $57;X
L016438: db $C3;X
L016439: db $40;X
L01643A: db $63;X
L01643B: db $21;X
L01643C: db $F4;X
L01643D: db $C0;X
L01643E: db $36;X
L01643F: db $00;X
L016440: db $2C;X
L016441: db $36;X
L016442: db $01;X
L016443: db $06;X
L016444: db $05;X
L016445: db $C3;X
L016446: db $30;X
L016447: db $63;X
L016448: db $FA;X
L016449: db $98;X
L01644A: db $C1;X
L01644B: db $EA;X
L01644C: db $FA;X
L01644D: db $C0;X
L01644E: db $FA;X
L01644F: db $99;X
L016450: db $C1;X
L016451: db $EA;X
L016452: db $FB;X
L016453: db $C0;X
L016454: db $C9;X
L016455: db $7B;X
L016456: db $C6;X
L016457: db $04;X
L016458: db $6F;X
L016459: db $62;X
L01645A: db $4E;X
L01645B: db $C6;X
L01645C: db $E1;X
L01645D: db $6F;X
L01645E: db $34;X
L01645F: db $21;X
L016460: db $4D;X
L016461: db $67;X
L016462: db $3E;X
L016463: db $02;X
L016464: db $C7;X
L016465: db $CD;X
L016466: db $F3;X
L016467: db $1E;X
L016468: db $21;X
L016469: db $00;X
L01646A: db $4C;X
L01646B: db $3E;X
L01646C: db $02;X
L01646D: db $C7;X
L01646E: db $CD;X
L01646F: db $2B;X
L016470: db $4F;X
L016471: db $CD;X
L016472: db $BE;X
L016473: db $4E;X
L016474: db $CD;X
L016475: db $5C;X
L016476: db $56;X
L016477: db $CD;X
L016478: db $F4;X
L016479: db $43;X
L01647A: db $CD;X
L01647B: db $F3;X
L01647C: db $1E;X
L01647D: db $CD;X
L01647E: db $7B;X
L01647F: db $51;X
L016480: db $01;X
L016481: db $18;X
L016482: db $00;X
L016483: db $CD;X
L016484: db $E8;X
L016485: db $1E;X
L016486: db $CD;X
L016487: db $A6;X
L016488: db $51;X
L016489: db $CD;X
L01648A: db $F3;X
L01648B: db $1E;X
L01648C: db $CD;X
L01648D: db $2D;X
L01648E: db $5F;X
L01648F: db $47;X
L016490: db $F0;X
L016491: db $B1;X
L016492: db $C6;X
L016493: db $04;X
L016494: db $6F;X
L016495: db $62;X
L016496: db $C6;X
L016497: db $24;X
L016498: db $5F;X
L016499: db $70;X
L01649A: db $1A;X
L01649B: db $A7;X
L01649C: db $20;X
L01649D: db $07;X
L01649E: db $06;X
L01649F: db $06;X
L0164A0: db $CD;X
L0164A1: db $5D;X
L0164A2: db $23;X
L0164A3: db $18;X
L0164A4: db $0E;X
L0164A5: db $CD;X
L0164A6: db $26;X
L0164A7: db $1F;X
L0164A8: db $CD;X
L0164A9: db $7C;X
L0164AA: db $23;X
L0164AB: db $FE;X
L0164AC: db $06;X
L0164AD: db $C0;X
L0164AE: db $06;X
L0164AF: db $06;X
L0164B0: db $CD;X
L0164B1: db $5D;X
L0164B2: db $23;X
L0164B3: db $CD;X
L0164B4: db $3D;X
L0164B5: db $52;X
L0164B6: db $F0;X
L0164B7: db $B1;X
L0164B8: db $C6;X
L0164B9: db $04;X
L0164BA: db $5F;X
L0164BB: db $1A;X
L0164BC: db $F5;X
L0164BD: db $CD;X
L0164BE: db $64;X
L0164BF: db $43;X
L0164C0: db $F1;X
L0164C1: db $5F;X
L0164C2: db $21;X
L0164C3: db $5D;X
L0164C4: db $47;X
L0164C5: db $3E;X
L0164C6: db $02;X
L0164C7: db $C7;X
L0164C8: db $21;X
L0164C9: db $BC;X
L0164CA: db $4A;X
L0164CB: db $3E;X
L0164CC: db $02;X
L0164CD: db $C7;X
L0164CE: db $F0;X
L0164CF: db $B1;X
L0164D0: db $C6;X
L0164D1: db $22;X
L0164D2: db $5F;X
L0164D3: db $3E;X
L0164D4: db $19;X
L0164D5: db $12;X
L0164D6: db $CD;X
L0164D7: db $26;X
L0164D8: db $1F;X
L0164D9: db $7B;X
L0164DA: db $C6;X
L0164DB: db $22;X
L0164DC: db $5F;X
L0164DD: db $1A;X
L0164DE: db $FE;X
L0164DF: db $08;X
L0164E0: db $CC;X
L0164E1: db $61;X
L0164E2: db $4F;X
L0164E3: db $CD;X
L0164E4: db $10;X
L0164E5: db $53;X
L0164E6: db $CD;X
L0164E7: db $F3;X
L0164E8: db $1E;X
L0164E9: db $CD;X
L0164EA: db $0D;X
L0164EB: db $54;X
L0164EC: db $30;X
L0164ED: db $23;X
L0164EE: db $F0;X
L0164EF: db $B1;X
L0164F0: db $C6;X
L0164F1: db $07;X
L0164F2: db $6F;X
L0164F3: db $62;X
L0164F4: db $CB;X
L0164F5: db $E6;X
L0164F6: db $FA;X
L0164F7: db $11;X
L0164F8: db $C0;X
L0164F9: db $E6;X
L0164FA: db $01;X
L0164FB: db $CC;X
L0164FC: db $F3;X
L0164FD: db $1E;X
L0164FE: db $CD;X
L0164FF: db $F3;X
L016500: db $1E;X
L016501: db $7B;X
L016502: db $C6;X
L016503: db $07;X
L016504: db $6F;X
L016505: db $62;X
L016506: db $CB;X
L016507: db $66;X
L016508: db $C2;X
L016509: db $6E;X
L01650A: db $54;X
L01650B: db $FA;X
L01650C: db $11;X
L01650D: db $C0;X
L01650E: db $E6;X
L01650F: db $01;X
L016510: db $C0;X
L016511: db $CD;X
L016512: db $52;X
L016513: db $50;X
L016514: db $21;X
L016515: db $60;X
L016516: db $51;X
L016517: db $3E;X
L016518: db $02;X
L016519: db $C7;X
L01651A: db $CD;X
L01651B: db $F3;X
L01651C: db $1E;X
L01651D: db $7B;X
L01651E: db $C6;X
L01651F: db $28;X
L016520: db $5F;X
L016521: db $1A;X
L016522: db $A7;X
L016523: db $20;X
L016524: db $0E;X
L016525: db $CD;X
L016526: db $7C;X
L016527: db $23;X
L016528: db $FE;X
L016529: db $06;X
L01652A: db $C0;X
L01652B: db $06;X
L01652C: db $04;X
L01652D: db $CD;X
L01652E: db $5D;X
L01652F: db $23;X
L016530: db $C3;X
L016531: db $B5;X
L016532: db $62;X
L016533: db $CD;X
L016534: db $7C;X
L016535: db $23;X
L016536: db $FE;X
L016537: db $04;X
L016538: db $C0;X
L016539: db $06;X
L01653A: db $04;X
L01653B: db $CD;X
L01653C: db $5D;X
L01653D: db $23;X
L01653E: db $C3;X
L01653F: db $B5;X
L016540: db $62;X
L016541:;J
	ld   hl, $C116
	inc  [hl]
	ldh  a, [$FFC0]
	and  $0F
	jr   z, $6553
L01654B: db $FE;X
L01654C: db $08;X
L01654D: db $28;X
L01654E: db $04;X
L01654F: db $FE;X
L016550: db $0C;X
L016551: db $20;X
L016552: db $05;X
L016553:;R
	ld   a, $F1
	call SoundDataCmd_8B
	call L0165AB
	call L016A92
	call L001EF3
L016561:;I
	ld   a, e
	add  $24
	ld   e, a
	ld   a, [de]
	and  a
	ret  nz
	call L01440D
	call L014DBA
	call L001EF3
L016571:;I
	ld   a, [$C0B1]
	ld   c, a
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	inc  a
	or   c
	ld   [$C0B1], a
	ldh  a, [$FFC0]
	bit  7, a
	jp   nz, $6625
	and  $0F
	jp   z, $683F
L01658C: db $FE;X
L01658D: db $04;X
L01658E: db $CA;X
L01658F: db $E5;X
L016590: db $68;X
L016591: db $FE;X
L016592: db $05;X
L016593: db $CA;X
L016594: db $E5;X
L016595: db $68;X
L016596: db $FE;X
L016597: db $08;X
L016598: db $CA;X
L016599: db $71;X
L01659A: db $6A;X
L01659B: db $FE;X
L01659C: db $0C;X
L01659D: db $CA;X
L01659E: db $71;X
L01659F: db $6A;X
L0165A0: db $C3;X
L0165A1: db $DD;X
L0165A2: db $68;X
L0165A3: db $01;X
L0165A4: db $02;X
L0165A5: db $04;X
L0165A6: db $08;X
L0165A7: db $10;X
L0165A8: db $20;X
L0165A9: db $40;X
L0165AA: db $80;X
L0165AB:;C
	ldh  a, [$FFC0]
	bit  7, a
	jp   nz, $65CE
	and  $0F
	jp   z, $663A
L0165B7: db $FE;X
L0165B8: db $04;X
L0165B9: db $CA;X
L0165BA: db $F0;X
L0165BB: db $67;X
L0165BC: db $FE;X
L0165BD: db $05;X
L0165BE: db $CA;X
L0165BF: db $F0;X
L0165C0: db $67;X
L0165C1: db $FE;X
L0165C2: db $08;X
L0165C3: db $CA;X
L0165C4: db $28;X
L0165C5: db $68;X
L0165C6: db $FE;X
L0165C7: db $0C;X
L0165C8: db $CA;X
L0165C9: db $28;X
L0165CA: db $68;X
L0165CB: db $C3;X
L0165CC: db $F0;X
L0165CD: db $67;X
L0165CE: db $3E;X
L0165CF: db $FF;X
L0165D0: db $EA;X
L0165D1: db $90;X
L0165D2: db $C0;X
L0165D3: db $EA;X
L0165D4: db $91;X
L0165D5: db $C0;X
L0165D6: db $F0;X
L0165D7: db $B1;X
L0165D8: db $C6;X
L0165D9: db $28;X
L0165DA: db $5F;X
L0165DB: db $1A;X
L0165DC: db $EE;X
L0165DD: db $01;X
L0165DE: db $F6;X
L0165DF: db $80;X
L0165E0: db $EA;X
L0165E1: db $B0;X
L0165E2: db $C0;X
L0165E3: db $F6;X
L0165E4: db $40;X
L0165E5: db $EA;X
L0165E6: db $AA;X
L0165E7: db $C0;X
L0165E8: db $3E;X
L0165E9: db $3A;X
L0165EA: db $CD;X
L0165EB: db $4E;X
L0165EC: db $3B;X
L0165ED: db $FA;X
L0165EE: db $06;X
L0165EF: db $B0;X
L0165F0: db $A7;X
L0165F1: db $28;X
L0165F2: db $25;X
L0165F3: db $FA;X
L0165F4: db $88;X
L0165F5: db $C0;X
L0165F6: db $4F;X
L0165F7: db $FE;X
L0165F8: db $63;X
L0165F9: db $FA;X
L0165FA: db $89;X
L0165FB: db $C0;X
L0165FC: db $47;X
L0165FD: db $28;X
L0165FE: db $19;X
L0165FF: db $FE;X
L016600: db $63;X
L016601: db $28;X
L016602: db $15;X
L016603: db $04;X
L016604: db $1A;X
L016605: db $A7;X
L016606: db $28;X
L016607: db $02;X
L016608: db $05;X
L016609: db $0C;X
L01660A: db $79;X
L01660B: db $EA;X
L01660C: db $88;X
L01660D: db $C0;X
L01660E: db $78;X
L01660F: db $EA;X
L016610: db $89;X
L016611: db $C0;X
L016612: db $21;X
L016613: db $ED;X
L016614: db $5E;X
L016615: db $3E;X
L016616: db $02;X
L016617: db $C7;X
L016618: db $F0;X
L016619: db $B1;X
L01661A: db $C6;X
L01661B: db $36;X
L01661C: db $6F;X
L01661D: db $62;X
L01661E: db $2A;X
L01661F: db $66;X
L016620: db $6F;X
L016621: db $CD;X
L016622: db $D1;X
L016623: db $1E;X
L016624: db $C9;X
L016625: db $01;X
L016626: db $78;X
L016627: db $00;X
L016628: db $CD;X
L016629: db $E8;X
L01662A: db $1E;X
L01662B: db $CD;X
L01662C: db $F3;X
L01662D: db $1E;X
L01662E: db $3E;X
L01662F: db $03;X
L016630: db $EA;X
L016631: db $7A;X
L016632: db $C0;X
L016633: db $97;X
L016634: db $EA;X
L016635: db $7B;X
L016636: db $C0;X
L016637: db $C3;X
L016638: db $CD;X
L016639: db $1E;X
L01663A:;J
	sub  a
	ld   [$D3AB], a
	ld   [$D3DB], a
	ld   [$C0D2], a
	ld   [$C0D3], a
	dec  a
	ld   [$C090], a
	ld   [$C091], a
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	xor  $01
	ld   [$C07A], a
	or   $80
	ld   [$C0B0], a
	or   $40
	ld   [$C0AA], a
	ld   a, [de]
	and  a
	jp   nz, $66F6
L016668: db $21;X
L016669: db $C3;X
L01666A: db $C0;X
L01666B: db $21;X
L01666C: db $A0;X
L01666D: db $C0;X
L01666E: db $F0;X
L01666F: db $B1;X
L016670: db $C6;X
L016671: db $0A;X
L016672: db $5F;X
L016673: db $1A;X
L016674: db $1C;X
L016675: db $96;X
L016676: db $EA;X
L016677: db $D4;X
L016678: db $C0;X
L016679: db $2C;X
L01667A: db $1A;X
L01667B: db $1C;X
L01667C: db $9E;X
L01667D: db $EA;X
L01667E: db $D5;X
L01667F: db $C0;X
L016680: db $2C;X
L016681: db $1A;X
L016682: db $9E;X
L016683: db $EA;X
L016684: db $D6;X
L016685: db $C0;X
L016686: db $21;X
L016687: db $C3;X
L016688: db $C0;X
L016689: db $FA;X
L01668A: db $D4;X
L01668B: db $C0;X
L01668C: db $86;X
L01668D: db $22;X
L01668E: db $4F;X
L01668F: db $FA;X
L016690: db $D5;X
L016691: db $C0;X
L016692: db $8E;X
L016693: db $22;X
L016694: db $47;X
L016695: db $FA;X
L016696: db $D6;X
L016697: db $C0;X
L016698: db $8E;X
L016699: db $77;X
L01669A: db $FE;X
L01669B: db $98;X
L01669C: db $38;X
L01669D: db $16;X
L01669E: db $20;X
L01669F: db $0C;X
L0166A0: db $78;X
L0166A1: db $FE;X
L0166A2: db $96;X
L0166A3: db $38;X
L0166A4: db $0F;X
L0166A5: db $20;X
L0166A6: db $05;X
L0166A7: db $79;X
L0166A8: db $FE;X
L0166A9: db $7F;X
L0166AA: db $38;X
L0166AB: db $08;X
L0166AC: db $36;X
L0166AD: db $98;X
L0166AE: db $2D;X
L0166AF: db $36;X
L0166B0: db $96;X
L0166B1: db $2D;X
L0166B2: db $36;X
L0166B3: db $7F;X
L0166B4: db $21;X
L0166B5: db $C6;X
L0166B6: db $C0;X
L0166B7: db $FA;X
L0166B8: db $E2;X
L0166B9: db $C0;X
L0166BA: db $86;X
L0166BB: db $22;X
L0166BC: db $FA;X
L0166BD: db $E3;X
L0166BE: db $C0;X
L0166BF: db $8E;X
L0166C0: db $77;X
L0166C1: db $30;X
L0166C2: db $05;X
L0166C3: db $36;X
L0166C4: db $FF;X
L0166C5: db $2D;X
L0166C6: db $36;X
L0166C7: db $FF;X
L0166C8: db $F0;X
L0166C9: db $B1;X
L0166CA: db $C6;X
L0166CB: db $16;X
L0166CC: db $5F;X
L0166CD: db $21;X
L0166CE: db $C8;X
L0166CF: db $C0;X
L0166D0: db $1A;X
L0166D1: db $1C;X
L0166D2: db $86;X
L0166D3: db $22;X
L0166D4: db $1A;X
L0166D5: db $8E;X
L0166D6: db $77;X
L0166D7: db $30;X
L0166D8: db $05;X
L0166D9: db $36;X
L0166DA: db $FF;X
L0166DB: db $2D;X
L0166DC: db $36;X
L0166DD: db $FF;X
L0166DE: db $FA;X
L0166DF: db $CB;X
L0166E0: db $C0;X
L0166E1: db $3C;X
L0166E2: db $EA;X
L0166E3: db $CB;X
L0166E4: db $C0;X
L0166E5: db $F0;X
L0166E6: db $B1;X
L0166E7: db $C6;X
L0166E8: db $36;X
L0166E9: db $6F;X
L0166EA: db $62;X
L0166EB: db $2A;X
L0166EC: db $66;X
L0166ED: db $6F;X
L0166EE: db $CD;X
L0166EF: db $D1;X
L0166F0: db $1E;X
L0166F1: db $3E;X
L0166F2: db $3A;X
L0166F3: db $C3;X
L0166F4: db $4E;X
L0166F5: db $3B;X
L0166F6:;J
	sub  a
	ld   [$C14A], a
	ld   [$C14D], a
	ld   a, [$C0E2]
	ld   c, a
	ld   a, [$C0E3]
	ld   b, a
	cp   $03
	jr   c, $6713
L016709: db $20;X
L01670A: db $05;X
L01670B: db $79;X
L01670C: db $FE;X
L01670D: db $E8;X
L01670E: db $38;X
L01670F: db $03;X
L016710: db $01;X
L016711: db $E7;X
L016712: db $03;X
L016713:;R
	ld   a, c
	ld   [$C148], a
	ld   a, b
	ld   [$C149], a
	call L016CCD
	ld   a, c
	ld   [$C14B], a
	ld   a, b
	ld   [$C14C], a
	ldh  a, [$FFB1]
	add  $36
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   b, [hl]
	add  $0A
	ld   c, a
	ld   hl, $C0A0
	ld   a, [bc]
	ld   [$C14E], a
	sub  [hl]
	ld   [$C0D4], a
	inc  l
	inc  c
	ld   a, [bc]
	ld   [$C14F], a
	sbc  [hl]
	ld   [$C0D5], a
	inc  l
	inc  c
	ld   a, [bc]
	ld   [$C150], a
	sbc  [hl]
	ld   [$C0D6], a
	dec  c
	dec  c
	ld   l, c
	ld   h, b
	ld   a, [$C14B]
	add  [hl]
	ld   [$C0A0], a
	ld   c, a
	inc  l
	ld   a, [$C14C]
	adc  a, [hl]
	ld   [$C0A1], a
	ld   b, a
	inc  l
	ld   a, [hl]
	adc  a, $00
	ld   [$C0A2], a
	cp   $98
	jr   c, $678D
L016770: db $20;X
L016771: db $0C;X
L016772: db $78;X
L016773: db $FE;X
L016774: db $96;X
L016775: db $38;X
L016776: db $16;X
L016777: db $20;X
L016778: db $05;X
L016779: db $79;X
L01677A: db $FE;X
L01677B: db $7F;X
L01677C: db $38;X
L01677D: db $0F;X
L01677E: db $3E;X
L01677F: db $98;X
L016780: db $EA;X
L016781: db $A2;X
L016782: db $C0;X
L016783: db $3E;X
L016784: db $96;X
L016785: db $EA;X
L016786: db $A1;X
L016787: db $C0;X
L016788: db $3E;X
L016789: db $7F;X
L01678A: db $EA;X
L01678B: db $A0;X
L01678C: db $C0;X
L01678D:;R
	ld   a, l
	and  $C0
	ld   l, a
	push hl
	add  $16
	ld   l, a
	ldi  a, [hl]
	ld   [$C0A3], a
	ldi  a, [hl]
	ld   [$C0A4], a
	ld   hl, $C0C3
	ld   a, [$C0D4]
	add  [hl]
	ldi  [hl], a
	ld   c, a
	ld   a, [$C0D5]
	adc  a, [hl]
	ldi  [hl], a
	ld   b, a
	ld   a, [$C0D6]
	adc  a, [hl]
	ld   [hl], a
	cp   $98
	jr   c, $67CB
L0167B5: db $20;X
L0167B6: db $0C;X
L0167B7: db $78;X
L0167B8: db $FE;X
L0167B9: db $96;X
L0167BA: db $38;X
L0167BB: db $0F;X
L0167BC: db $20;X
L0167BD: db $05;X
L0167BE: db $79;X
L0167BF: db $FE;X
L0167C0: db $7F;X
L0167C1: db $38;X
L0167C2: db $08;X
L0167C3: db $36;X
L0167C4: db $98;X
L0167C5: db $2D;X
L0167C6: db $36;X
L0167C7: db $96;X
L0167C8: db $2D;X
L0167C9: db $36;X
L0167CA: db $7F;X
L0167CB:;R
	pop  hl
	call L001ED1
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	sub  a
	ld   [de], a
	call L01440D
	call L014DBA
	ld   a, $01
	ld   [de], a
	ld   hl, $5EAF
	ld   a, $02
	rst  $00
	ld   hl, $5F31
	ld   a, $02
	rst  $00
	ld   a, $1F
	jp   SoundDataCmd_8B
L0167F0: db $FA;X
L0167F1: db $95;X
L0167F2: db $C0;X
L0167F3: db $3D;X
L0167F4: db $EA;X
L0167F5: db $95;X
L0167F6: db $C0;X
L0167F7: db $4F;X
L0167F8: db $20;X
L0167F9: db $07;X
L0167FA: db $0E;X
L0167FB: db $01;X
L0167FC: db $3E;X
L0167FD: db $FF;X
L0167FE: db $EA;X
L0167FF: db $B0;X
L016800: db $C0;X
L016801: db $F0;X
L016802: db $B1;X
L016803: db $C6;X
L016804: db $1A;X
L016805: db $5F;X
L016806: db $79;X
L016807: db $12;X
L016808: db $F0;X
L016809: db $B1;X
L01680A: db $C6;X
L01680B: db $28;X
L01680C: db $5F;X
L01680D: db $1A;X
L01680E: db $C6;X
L01680F: db $90;X
L016810: db $6F;X
L016811: db $26;X
L016812: db $C0;X
L016813: db $36;X
L016814: db $FF;X
L016815: db $FA;X
L016816: db $1A;X
L016817: db $C0;X
L016818: db $A7;X
L016819: db $20;X
L01681A: db $08;X
L01681B: db $1A;X
L01681C: db $C6;X
L01681D: db $D2;X
L01681E: db $6F;X
L01681F: db $26;X
L016820: db $C0;X
L016821: db $36;X
L016822: db $00;X
L016823: db $3E;X
L016824: db $3A;X
L016825: db $C3;X
L016826: db $4E;X
L016827: db $3B;X
L016828: db $F0;X
L016829: db $B1;X
L01682A: db $C6;X
L01682B: db $29;X
L01682C: db $5F;X
L01682D: db $1A;X
L01682E: db $EA;X
L01682F: db $CB;X
L016830: db $C0;X
L016831: db $3E;X
L016832: db $FF;X
L016833: db $EA;X
L016834: db $90;X
L016835: db $C0;X
L016836: db $97;X
L016837: db $EA;X
L016838: db $D2;X
L016839: db $C0;X
L01683A: db $3E;X
L01683B: db $3A;X
L01683C: db $C3;X
L01683D: db $4E;X
L01683E: db $3B;X
L01683F:;J
	ld   hl, $45EB
	ld   a, $02
	rst  $00
	ldh  a, [$FFB1]
	add  $28
	ld   e, a
	ld   a, [de]
	and  a
	jp   nz, $6887
L01684F: db $21;X
L016850: db $9F;X
L016851: db $5D;X
L016852: db $3E;X
L016853: db $02;X
L016854: db $C7;X
L016855: db $01;X
L016856: db $80;X
L016857: db $00;X
L016858: db $CD;X
L016859: db $E8;X
L01685A: db $1E;X
L01685B: db $CD;X
L01685C: db $13;X
L01685D: db $1F;X
L01685E: db $CD;X
L01685F: db $6D;X
L016860: db $68;X
L016861: db $3E;X
L016862: db $01;X
L016863: db $EA;X
L016864: db $7A;X
L016865: db $C0;X
L016866: db $97;X
L016867: db $EA;X
L016868: db $7B;X
L016869: db $C0;X
L01686A: db $C3;X
L01686B: db $CD;X
L01686C: db $1E;X
L01686D: db $F0;X
L01686E: db $B1;X
L01686F: db $C6;X
L016870: db $0A;X
L016871: db $5F;X
L016872: db $C6;X
L016873: db $0C;X
L016874: db $4F;X
L016875: db $21;X
L016876: db $A0;X
L016877: db $C0;X
L016878: db $1A;X
L016879: db $22;X
L01687A: db $1C;X
L01687B: db $1A;X
L01687C: db $22;X
L01687D: db $1C;X
L01687E: db $1A;X
L01687F: db $22;X
L016880: db $59;X
L016881: db $1A;X
L016882: db $22;X
L016883: db $1C;X
L016884: db $1A;X
L016885: db $77;X
L016886: db $C9;X
L016887:;J
	ld   bc, $0096
	call L001EE8
L01688D:;I
	call L001F13
L016890:;I
	ld   a, [$C0B1]
	or   $01
	ld   [$C0B1], a
	ld   a, [$C080]
	ld   c, a
	add  a
	add  c
	add  a
	add  $00
	ld   l, a
	ld   h, $C3
	ld   a, [$C148]
	ldi  [hl], a
	ld   c, a
	ld   a, [$C0C6]
	add  c
	ld   [$C0C6], a
	ld   a, [$C149]
	ldi  [hl], a
	ld   b, a
	ld   a, [$C0C7]
	adc  a, b
	jr   nc, $68C0
L0168BB: db $3E;X
L0168BC: db $FF;X
L0168BD: db $EA;X
L0168BE: db $C6;X
L0168BF: db $C0;X
L0168C0:;R
	ld   [$C0C7], a
	ld   a, [$C0D4]
	ldi  [hl], a
	ld   a, [$C0D5]
	ldi  [hl], a
	ld   a, [$C0D6]
	ldi  [hl], a
	ld   a, [$C081]
	ldi  [hl], a
	sub  a
	ld   [$C07A], a
	ld   [$C07B], a
	jp   L001ECD
L0168DD: db $F0;X
L0168DE: db $C0;X
L0168DF: db $E6;X
L0168E0: db $0F;X
L0168E1: db $FE;X
L0168E2: db $0F;X
L0168E3: db $20;X
L0168E4: db $06;X
L0168E5: db $21;X
L0168E6: db $D1;X
L0168E7: db $45;X
L0168E8: db $3E;X
L0168E9: db $02;X
L0168EA: db $C7;X
L0168EB: db $CD;X
L0168EC: db $F3;X
L0168ED: db $1E;X
L0168EE: db $FA;X
L0168EF: db $B0;X
L0168F0: db $C0;X
L0168F1: db $A7;X
L0168F2: db $C8;X
L0168F3: db $CD;X
L0168F4: db $F3;X
L0168F5: db $1E;X
L0168F6: db $FA;X
L0168F7: db $B1;X
L0168F8: db $C0;X
L0168F9: db $CB;X
L0168FA: db $77;X
L0168FB: db $C8;X
L0168FC: db $CD;X
L0168FD: db $F3;X
L0168FE: db $1E;X
L0168FF: db $21;X
L016900: db $7D;X
L016901: db $60;X
L016902: db $3E;X
L016903: db $02;X
L016904: db $C7;X
L016905: db $FA;X
L016906: db $1A;X
L016907: db $C0;X
L016908: db $FE;X
L016909: db $01;X
L01690A: db $20;X
L01690B: db $0E;X
L01690C: db $F0;X
L01690D: db $B1;X
L01690E: db $C6;X
L01690F: db $28;X
L016910: db $5F;X
L016911: db $1A;X
L016912: db $A7;X
L016913: db $28;X
L016914: db $05;X
L016915: db $06;X
L016916: db $07;X
L016917: db $CD;X
L016918: db $5D;X
L016919: db $23;X
L01691A: db $F0;X
L01691B: db $B1;X
L01691C: db $C6;X
L01691D: db $29;X
L01691E: db $5F;X
L01691F: db $C6;X
L016920: db $FF;X
L016921: db $6F;X
L016922: db $62;X
L016923: db $97;X
L016924: db $12;X
L016925: db $FA;X
L016926: db $1A;X
L016927: db $C0;X
L016928: db $A7;X
L016929: db $28;X
L01692A: db $1B;X
L01692B: db $7E;X
L01692C: db $A7;X
L01692D: db $20;X
L01692E: db $17;X
L01692F: db $CD;X
L016930: db $26;X
L016931: db $1F;X
L016932: db $7B;X
L016933: db $C6;X
L016934: db $2F;X
L016935: db $6F;X
L016936: db $62;X
L016937: db $E5;X
L016938: db $CD;X
L016939: db $7C;X
L01693A: db $23;X
L01693B: db $E1;X
L01693C: db $BE;X
L01693D: db $C0;X
L01693E: db $FA;X
L01693F: db $B1;X
L016940: db $C0;X
L016941: db $CB;X
L016942: db $FF;X
L016943: db $EA;X
L016944: db $B1;X
L016945: db $C0;X
L016946: db $FA;X
L016947: db $B1;X
L016948: db $C0;X
L016949: db $CB;X
L01694A: db $67;X
L01694B: db $CA;X
L01694C: db $DD;X
L01694D: db $69;X
L01694E: db $01;X
L01694F: db $14;X
L016950: db $00;X
L016951: db $CD;X
L016952: db $E8;X
L016953: db $1E;X
L016954: db $CD;X
L016955: db $13;X
L016956: db $1F;X
L016957: db $FA;X
L016958: db $B1;X
L016959: db $C0;X
L01695A: db $CB;X
L01695B: db $6F;X
L01695C: db $20;X
L01695D: db $56;X
L01695E: db $FA;X
L01695F: db $1A;X
L016960: db $C0;X
L016961: db $A7;X
L016962: db $28;X
L016963: db $09;X
L016964: db $F0;X
L016965: db $B1;X
L016966: db $C6;X
L016967: db $28;X
L016968: db $5F;X
L016969: db $1A;X
L01696A: db $A7;X
L01696B: db $20;X
L01696C: db $09;X
L01696D: db $CD;X
L01696E: db $6D;X
L01696F: db $44;X
L016970: db $F0;X
L016971: db $AB;X
L016972: db $CB;X
L016973: db $5F;X
L016974: db $20;X
L016975: db $44;X
L016976: db $FA;X
L016977: db $B1;X
L016978: db $C0;X
L016979: db $E6;X
L01697A: db $03;X
L01697B: db $FE;X
L01697C: db $03;X
L01697D: db $20;X
L01697E: db $3B;X
L01697F: db $F0;X
L016980: db $B1;X
L016981: db $C6;X
L016982: db $28;X
L016983: db $6F;X
L016984: db $62;X
L016985: db $FA;X
L016986: db $11;X
L016987: db $C0;X
L016988: db $4F;X
L016989: db $E6;X
L01698A: db $0F;X
L01698B: db $C0;X
L01698C: db $CB;X
L01698D: db $61;X
L01698E: db $20;X
L01698F: db $0E;X
L016990: db $01;X
L016991: db $30;X
L016992: db $6A;X
L016993: db $CB;X
L016994: db $46;X
L016995: db $CA;X
L016996: db $80;X
L016997: db $07;X
L016998: db $01;X
L016999: db $5B;X
L01699A: db $6A;X
L01699B: db $C3;X
L01699C: db $80;X
L01699D: db $07;X
L01699E: db $FA;X
L01699F: db $B1;X
L0169A0: db $C0;X
L0169A1: db $E6;X
L0169A2: db $03;X
L0169A3: db $FE;X
L0169A4: db $03;X
L0169A5: db $C0;X
L0169A6: db $01;X
L0169A7: db $1B;X
L0169A8: db $6A;X
L0169A9: db $CB;X
L0169AA: db $46;X
L0169AB: db $CA;X
L0169AC: db $80;X
L0169AD: db $07;X
L0169AE: db $01;X
L0169AF: db $46;X
L0169B0: db $6A;X
L0169B1: db $C3;X
L0169B2: db $80;X
L0169B3: db $07;X
L0169B4: db $CD;X
L0169B5: db $BA;X
L0169B6: db $4D;X
L0169B7: db $C3;X
L0169B8: db $CD;X
L0169B9: db $1E;X
L0169BA: db $CD;X
L0169BB: db $BA;X
L0169BC: db $4D;X
L0169BD: db $3E;X
L0169BE: db $2B;X
L0169BF: db $CD;X
L0169C0: db $4E;X
L0169C1: db $3B;X
L0169C2: db $F0;X
L0169C3: db $B1;X
L0169C4: db $C6;X
L0169C5: db $28;X
L0169C6: db $5F;X
L0169C7: db $1A;X
L0169C8: db $4F;X
L0169C9: db $06;X
L0169CA: db $00;X
L0169CB: db $21;X
L0169CC: db $A3;X
L0169CD: db $65;X
L0169CE: db $09;X
L0169CF: db $7E;X
L0169D0: db $EE;X
L0169D1: db $FF;X
L0169D2: db $4F;X
L0169D3: db $FA;X
L0169D4: db $B1;X
L0169D5: db $C0;X
L0169D6: db $A1;X
L0169D7: db $EA;X
L0169D8: db $B1;X
L0169D9: db $C0;X
L0169DA: db $C3;X
L0169DB: db $CD;X
L0169DC: db $1E;X
L0169DD: db $CD;X
L0169DE: db $26;X
L0169DF: db $1F;X
L0169E0: db $FA;X
L0169E1: db $B1;X
L0169E2: db $C0;X
L0169E3: db $CB;X
L0169E4: db $77;X
L0169E5: db $C8;X
L0169E6: db $01;X
L0169E7: db $B4;X
L0169E8: db $00;X
L0169E9: db $CD;X
L0169EA: db $E8;X
L0169EB: db $1E;X
L0169EC: db $FA;X
L0169ED: db $B1;X
L0169EE: db $C0;X
L0169EF: db $E6;X
L0169F0: db $03;X
L0169F1: db $FE;X
L0169F2: db $03;X
L0169F3: db $20;X
L0169F4: db $03;X
L0169F5: db $CD;X
L0169F6: db $13;X
L0169F7: db $1F;X
L0169F8: db $7B;X
L0169F9: db $C6;X
L0169FA: db $22;X
L0169FB: db $6F;X
L0169FC: db $62;X
L0169FD: db $97;X
L0169FE: db $22;X
L0169FF: db $77;X
L016A00: db $C3;X
L016A01: db $C2;X
L016A02: db $69;X
L016A03: db $02;X
L016A04: db $DC;X
L016A05: db $53;X
L016A06: db $54;X
L016A07: db $45;X
L016A08: db $50;X
L016A09: db $31;X
L016A0A: db $FF;X
L016A0B: db $02;X
L016A0C: db $DC;X
L016A0D: db $53;X
L016A0E: db $54;X
L016A0F: db $45;X
L016A10: db $50;X
L016A11: db $32;X
L016A12: db $FF;X
L016A13: db $02;X
L016A14: db $DC;X
L016A15: db $53;X
L016A16: db $54;X
L016A17: db $45;X
L016A18: db $50;X
L016A19: db $33;X
L016A1A: db $FF;X
L016A1B: db $A1;X
L016A1C: db $DD;X
L016A1D: db $50;X
L016A1E: db $52;X
L016A1F: db $45;X
L016A20: db $53;X
L016A21: db $53;X
L016A22: db $FE;X
L016A23: db $C3;X
L016A24: db $DD;X
L016A25: db $31;X
L016A26: db $50;X
L016A27: db $FE;X
L016A28: db $E2;X
L016A29: db $DD;X
L016A2A: db $53;X
L016A2B: db $54;X
L016A2C: db $41;X
L016A2D: db $52;X
L016A2E: db $54;X
L016A2F: db $FF;X
L016A30: db $A1;X
L016A31: db $DD;X
L016A32: db $20;X
L016A33: db $20;X
L016A34: db $20;X
L016A35: db $20;X
L016A36: db $20;X
L016A37: db $20;X
L016A38: db $FE;X
L016A39: db $C3;X
L016A3A: db $DD;X
L016A3B: db $20;X
L016A3C: db $20;X
L016A3D: db $FE;X
L016A3E: db $E2;X
L016A3F: db $DD;X
L016A40: db $20;X
L016A41: db $20;X
L016A42: db $20;X
L016A43: db $20;X
L016A44: db $20;X
L016A45: db $FF;X
L016A46: db $AE;X
L016A47: db $DD;X
L016A48: db $50;X
L016A49: db $52;X
L016A4A: db $45;X
L016A4B: db $53;X
L016A4C: db $53;X
L016A4D: db $FE;X
L016A4E: db $D0;X
L016A4F: db $DD;X
L016A50: db $32;X
L016A51: db $50;X
L016A52: db $FE;X
L016A53: db $EF;X
L016A54: db $DD;X
L016A55: db $53;X
L016A56: db $54;X
L016A57: db $41;X
L016A58: db $52;X
L016A59: db $54;X
L016A5A: db $FF;X
L016A5B: db $AE;X
L016A5C: db $DD;X
L016A5D: db $20;X
L016A5E: db $20;X
L016A5F: db $20;X
L016A60: db $20;X
L016A61: db $20;X
L016A62: db $20;X
L016A63: db $FE;X
L016A64: db $D0;X
L016A65: db $DD;X
L016A66: db $20;X
L016A67: db $20;X
L016A68: db $FE;X
L016A69: db $EF;X
L016A6A: db $DD;X
L016A6B: db $20;X
L016A6C: db $20;X
L016A6D: db $20;X
L016A6E: db $20;X
L016A6F: db $20;X
L016A70: db $FF;X
L016A71: db $21;X
L016A72: db $9F;X
L016A73: db $5D;X
L016A74: db $3E;X
L016A75: db $02;X
L016A76: db $C7;X
L016A77: db $01;X
L016A78: db $C0;X
L016A79: db $00;X
L016A7A: db $CD;X
L016A7B: db $E8;X
L016A7C: db $1E;X
L016A7D: db $CD;X
L016A7E: db $13;X
L016A7F: db $1F;X
L016A80: db $7B;X
L016A81: db $C6;X
L016A82: db $29;X
L016A83: db $5F;X
L016A84: db $1A;X
L016A85: db $EA;X
L016A86: db $96;X
L016A87: db $C0;X
L016A88: db $CD;X
L016A89: db $6D;X
L016A8A: db $68;X
L016A8B: db $97;X
L016A8C: db $EA;X
L016A8D: db $7B;X
L016A8E: db $C0;X
L016A8F: db $C3;X
L016A90: db $CD;X
L016A91: db $1E;X
L016A92:;C
	call L014434
	ld   hl, $D3AB
	ld   a, [de]
	and  a
	jr   z, $6A9F
	ld   hl, $D3DB
	ld   [hl], $00
	push bc
	ld   a, c
	add  $08
	ld   c, a
	ld   l, $60
L016AA8:;R
	ld   a, [bc]
	and  $F0
	ld   [bc], a
	inc  c
	dec  l
	jr   nz, $6AA8
	call L014DBA
	call L014453
	pop  bc
	ld   a, c
	ldh  [$FFD0], a
	ld   a, b
	ldh  [$FFD1], a
	ld   a, [de]
	ldh  [$FFD2], a
	sub  a
	ldh  [$FFD3], a
L016AC3:;R
	ld   hl, $6B17
	ld   b, $01
	call L001E87
	ldh  a, [$FFD2]
	inc  a
	or   $84
	ld   [hl], a
	ld   a, l
	add  $0D
	ld   l, a
	add  $1B
	ld   c, a
	add  $FC
	ld   e, a
	add  $12
	ld   b, a
	ldh  a, [$FFB6]
	sub  $2C
	ld   [hl], a
	add  $34
	ldh  [$FFB6], a
	ld   a, l
	add  $04
	ld   l, a
	ldh  a, [$FFB7]
	sub  $2C
	ld   [hl], a
	ld   l, e
	ldh  a, [$FFD0]
	ldi  [hl], a
	inc  a
	ldh  [$FFD0], a
	ldh  a, [$FFD1]
	ld   [hl], a
	ld   l, b
	ldh  a, [$FFB1]
	ldi  [hl], a
	ld   a, d
	ld   [hl], a
	ld   l, c
	ldh  a, [$FFD2]
	ldi  [hl], a
	ldh  a, [$FFD3]
	ld   [hl], a
	inc  a
	ldh  [$FFD3], a
	cp   $06
	jr   c, $6AC3
	ldh  a, [$FFB1]
	add  $24
	ld   e, a
	ldh  a, [$FFD3]
	ld   [de], a
	ret  
L016B17:;I
	ld   a, e
	add  $29
	ld   e, a
	ld   a, [de]
	ld   c, a
	ld   b, $00
	ld   hl, $6BE7
	add  hl, bc
	ld   c, [hl]
	ld   b, $00
	call L001EE8
L016B29:;I
	call L001EF3
L016B2C:;I
	ld   a, e
	add  $24
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	ld   e, $0C
	ld   bc, $0008
	add  hl, bc
L016B3A:;R
	ld   a, [hl]
	ld   [hl], $00
	inc  h
	ld   [hl], a
	dec  h
	add  hl, bc
	dec  e
	jr   nz, $6B3A
	call L014DBA
	ldh  a, [$FFB1]
	add  $06
	ld   l, a
	ld   h, d
	ld   [hl], $35
	add  $19
	ld   l, a
	ld   [hl], $FF
	inc  l
	ld   [hl], $40
	call L001F26
L016B5A:;I
	call L001F6D
	ldh  a, [$FFB1]
	add  $0D
	ld   l, a
	ld   h, d
	add  $04
	ld   e, a
	add  $13
	ld   c, a
	ld   a, [hl]
	ldh  [$FFD0], a
	ld   a, [de]
	ldh  [$FFD1], a
	cp   $98
	jr   nc, $6BA1
	ld   l, c
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	ld   e, $0D
	ld   b, $3E
L016B7B:;R
	ld   c, [hl]
	ld   a, [bc]
	and  a
	jr   z, $6B8E
	ldh  [$FFD2], a
	inc  b
	ld   a, [bc]
	or   $80
	ldh  [$FFD3], a
	dec  b
	push hl
	call L00210C
	pop  hl
L016B8E:;R
	set  0, h
	ld   a, l
	add  $08
	ld   l, a
	ldh  a, [$FFD1]
	add  $08
	ldh  [$FFD1], a
	cp   $98
	ret  nc
	dec  e
	jr   nz, $6B7B
L016BA0: db $C9;X
L016BA1:;R
	ld   a, $97
	ld   [de], a
	ld   a, e
	add  $07
	ld   l, a
	add  $08
	ld   e, a
	call L000D98
	ldi  [hl], a
	ld   [hl], $FD
	ld   a, $20
	ld   [de], a
	call L001F26
L016BB7:;I
	call L001F6D
	ldh  a, [$FFB1]
	add  $11
	ld   e, a
	add  $FC
	ld   l, a
	ld   h, d
	ld   a, [de]
	cp   $98
	jr   nc, $6BD8
	ldh  [$FFD1], a
	ld   a, [hl]
	ldh  [$FFD0], a
	ld   a, $6D
	ldh  [$FFD2], a
	ld   a, $80
	ldh  [$FFD3], a
	jp   L00210C
L016BD8:;R
	ldh  a, [$FFB1]
	add  $36
	ld   l, a
	ld   h, d
	ldi  a, [hl]
	ld   h, [hl]
	add  $24
	ld   l, a
	dec  [hl]
	jp   L001ECD
L016BE7: db $1C
L016BE8: db $10
L016BE9: db $04
L016BEA: db $10
L016BEB: db $1C
L016BEC: db $28
L016BED: db $F0;X
L016BEE: db $B1;X
L016BEF: db $C6;X
L016BF0: db $28;X
L016BF1: db $5F;X
L016BF2: db $F0;X
L016BF3: db $C0;X
L016BF4: db $E6;X
L016BF5: db $0F;X
L016BF6: db $FE;X
L016BF7: db $0E;X
L016BF8: db $38;X
L016BF9: db $07;X
L016BFA: db $FA;X
L016BFB: db $94;X
L016BFC: db $C0;X
L016BFD: db $A7;X
L016BFE: db $C2;X
L016BFF: db $BA;X
L016C00: db $6C;X
L016C01: db $1A;X
L016C02: db $A7;X
L016C03: db $20;X
L016C04: db $15;X
L016C05: db $FA;X
L016C06: db $95;X
L016C07: db $C0;X
L016C08: db $FE;X
L016C09: db $01;X
L016C0A: db $C0;X
L016C0B: db $06;X
L016C0C: db $06;X
L016C0D: db $CD;X
L016C0E: db $5D;X
L016C0F: db $23;X
L016C10: db $F0;X
L016C11: db $B1;X
L016C12: db $C6;X
L016C13: db $2F;X
L016C14: db $5F;X
L016C15: db $3E;X
L016C16: db $06;X
L016C17: db $12;X
L016C18: db $18;X
L016C19: db $31;X
L016C1A: db $CD;X
L016C1B: db $7C;X
L016C1C: db $23;X
L016C1D: db $FE;X
L016C1E: db $06;X
L016C1F: db $C0;X
L016C20: db $18;X
L016C21: db $29;X
L016C22:;C
	ldh  a, [$FFC0]
	and  $0F
	cp   $04
	jr   z, $6C45
	cp   $05
	jr   z, $6C45
	cp   $0E
	jr   nc, $6C3E
	cp   $0C
	ret  nz
L016C35: db $21;X
L016C36: db $16;X
L016C37: db $C1;X
L016C38: db $2A;X
L016C39: db $BE;X
L016C3A: db $D8;X
L016C3B: db $C3;X
L016C3C: db $BA;X
L016C3D: db $6C;X
L016C3E: db $FA;X
L016C3F: db $94;X
L016C40: db $C0;X
L016C41: db $A7;X
L016C42: db $C2;X
L016C43: db $BA;X
L016C44: db $6C;X
L016C45: db $FA;X
L016C46: db $95;X
L016C47: db $C0;X
L016C48: db $FE;X
L016C49: db $01;X
L016C4A: db $C0;X
L016C4B: db $C1;X
L016C4C: db $F0;X
L016C4D: db $B1;X
L016C4E: db $C6;X
L016C4F: db $1A;X
L016C50: db $6F;X
L016C51: db $62;X
L016C52: db $36;X
L016C53: db $00;X
L016C54: db $C6;X
L016C55: db $0E;X
L016C56: db $5F;X
L016C57: db $C6;X
L016C58: db $DF;X
L016C59: db $6F;X
L016C5A: db $1A;X
L016C5B: db $F6;X
L016C5C: db $80;X
L016C5D: db $EA;X
L016C5E: db $B0;X
L016C5F: db $C0;X
L016C60: db $7E;X
L016C61: db $E6;X
L016C62: db $FC;X
L016C63: db $77;X
L016C64: db $21;X
L016C65: db $AB;X
L016C66: db $D3;X
L016C67: db $1A;X
L016C68: db $A7;X
L016C69: db $28;X
L016C6A: db $03;X
L016C6B: db $21;X
L016C6C: db $DB;X
L016C6D: db $D3;X
L016C6E: db $36;X
L016C6F: db $00;X
L016C70: db $CD;X
L016C71: db $0D;X
L016C72: db $44;X
L016C73: db $CD;X
L016C74: db $BA;X
L016C75: db $4D;X
L016C76: db $1A;X
L016C77: db $C6;X
L016C78: db $90;X
L016C79: db $6F;X
L016C7A: db $26;X
L016C7B: db $C0;X
L016C7C: db $36;X
L016C7D: db $FF;X
L016C7E: db $1A;X
L016C7F: db $3C;X
L016C80: db $4F;X
L016C81: db $FA;X
L016C82: db $B1;X
L016C83: db $C0;X
L016C84: db $B1;X
L016C85: db $EA;X
L016C86: db $B1;X
L016C87: db $C0;X
L016C88: db $CD;X
L016C89: db $F3;X
L016C8A: db $1E;X
L016C8B: db $FA;X
L016C8C: db $B1;X
L016C8D: db $C0;X
L016C8E: db $CB;X
L016C8F: db $77;X
L016C90: db $C8;X
L016C91: db $21;X
L016C92: db $73;X
L016C93: db $60;X
L016C94: db $3E;X
L016C95: db $02;X
L016C96: db $C7;X
L016C97: db $FA;X
L016C98: db $1A;X
L016C99: db $C0;X
L016C9A: db $A7;X
L016C9B: db $28;X
L016C9C: db $0E;X
L016C9D: db $F0;X
L016C9E: db $B1;X
L016C9F: db $C6;X
L016CA0: db $28;X
L016CA1: db $5F;X
L016CA2: db $1A;X
L016CA3: db $A7;X
L016CA4: db $28;X
L016CA5: db $05;X
L016CA6: db $06;X
L016CA7: db $06;X
L016CA8: db $CD;X
L016CA9: db $5D;X
L016CAA: db $23;X
L016CAB: db $C3;X
L016CAC: db $1A;X
L016CAD: db $69;X
L016CAE:;C
	ldh  a, [$FFC0]
	and  $0F
	cp   $0E
	ret  c
L016CB5: db $FA;X
L016CB6: db $94;X
L016CB7: db $C0;X
L016CB8: db $A7;X
L016CB9: db $C8;X
L016CBA: db $C1;X
L016CBB: db $F0;X
L016CBC: db $B1;X
L016CBD: db $C6;X
L016CBE: db $07;X
L016CBF: db $5F;X
L016CC0: db $C6;X
L016CC1: db $28;X
L016CC2: db $6F;X
L016CC3: db $62;X
L016CC4: db $1A;X
L016CC5: db $E6;X
L016CC6: db $FC;X
L016CC7: db $12;X
L016CC8: db $36;X
L016CC9: db $07;X
L016CCA: db $C3;X
L016CCB: db $45;X
L016CCC: db $65;X
L016CCD:;C
	ld   bc, $0000
	ld   a, [$C149]
	and  a
	ret  nz
	ld   a, [$C148]
	cp   $8C
	ret  nc
	ld   c, a
	ld   a, $8C
	sub  c
	cp   $32
	jr   nc, $6CED
L016CE3: db $6F;X
L016CE4: db $4F;X
L016CE5: db $60;X
L016CE6: db $29;X
L016CE7: db $29;X
L016CE8: db $09;X
L016CE9: db $29;X
L016CEA: db $4D;X
L016CEB: db $44;X
L016CEC: db $C9;X
L016CED:;R
	sub  $32
	cp   $1E
	jr   nc, $6D00
	ld   bc, $0064
	call L000DEB
	ld   bc, $01F4
	add  hl, bc
	ld   c, l
	ld   b, h
	ret  
L016D00: db $D6;X
L016D01: db $1E;X
L016D02: db $FE;X
L016D03: db $14;X
L016D04: db $30;X
L016D05: db $0D;X
L016D06: db $01;X
L016D07: db $2C;X
L016D08: db $01;X
L016D09: db $CD;X
L016D0A: db $EB;X
L016D0B: db $0D;X
L016D0C: db $01;X
L016D0D: db $AC;X
L016D0E: db $0D;X
L016D0F: db $09;X
L016D10: db $4D;X
L016D11: db $44;X
L016D12: db $C9;X
L016D13: db $D6;X
L016D14: db $14;X
L016D15: db $01;X
L016D16: db $F4;X
L016D17: db $01;X
L016D18: db $CD;X
L016D19: db $EB;X
L016D1A: db $0D;X
L016D1B: db $01;X
L016D1C: db $1C;X
L016D1D: db $25;X
L016D1E: db $09;X
L016D1F: db $4D;X
L016D20: db $44;X
L016D21: db $C9;X
L016D22:;C
	ldh  a, [$FFC0]
	and  $0F
	cp   $08
	ret  nz
L016D29: db $FA;X
L016D2A: db $C1;X
L016D2B: db $C0;X
L016D2C: db $A7;X
L016D2D: db $C8;X
L016D2E: db $FA;X
L016D2F: db $C2;X
L016D30: db $C0;X
L016D31: db $A7;X
L016D32: db $20;X
L016D33: db $08;X
L016D34: db $F0;X
L016D35: db $B1;X
L016D36: db $C6;X
L016D37: db $29;X
L016D38: db $5F;X
L016D39: db $1A;X
L016D3A: db $A7;X
L016D3B: db $C0;X
L016D3C: db $F0;X
L016D3D: db $B1;X
L016D3E: db $C6;X
L016D3F: db $32;X
L016D40: db $6F;X
L016D41: db $62;X
L016D42: db $2A;X
L016D43: db $C6;X
L016D44: db $0A;X
L016D45: db $66;X
L016D46: db $6F;X
L016D47: db $C6;X
L016D48: db $FF;X
L016D49: db $4F;X
L016D4A: db $7E;X
L016D4B: db $A7;X
L016D4C: db $C8;X
L016D4D: db $69;X
L016D4E: db $7E;X
L016D4F: db $3C;X
L016D50: db $28;X
L016D51: db $04;X
L016D52: db $77;X
L016D53: db $FE;X
L016D54: db $02;X
L016D55: db $D8;X
L016D56: db $CD;X
L016D57: db $34;X
L016D58: db $44;X
L016D59: db $78;X
L016D5A: db $C6;X
L016D5B: db $01;X
L016D5C: db $67;X
L016D5D: db $2E;X
L016D5E: db $6F;X
L016D5F: db $7E;X
L016D60: db $FE;X
L016D61: db $36;X
L016D62: db $30;X
L016D63: db $1D;X
L016D64: db $7C;X
L016D65: db $C6;X
L016D66: db $FF;X
L016D67: db $2E;X
L016D68: db $00;X
L016D69: db $06;X
L016D6A: db $06;X
L016D6B: db $0E;X
L016D6C: db $FE;X
L016D6D: db $FA;X
L016D6E: db $C2;X
L016D6F: db $C0;X
L016D70: db $A7;X
L016D71: db $28;X
L016D72: db $02;X
L016D73: db $0E;X
L016D74: db $FD;X
L016D75: db $2A;X
L016D76: db $FE;X
L016D77: db $03;X
L016D78: db $30;X
L016D79: db $03;X
L016D7A: db $0C;X
L016D7B: db $28;X
L016D7C: db $04;X
L016D7D: db $05;X
L016D7E: db $20;X
L016D7F: db $F5;X
L016D80: db $C9;X
L016D81: db $F0;X
L016D82: db $B1;X
L016D83: db $C6;X
L016D84: db $32;X
L016D85: db $6F;X
L016D86: db $62;X
L016D87: db $2A;X
L016D88: db $66;X
L016D89: db $4F;X
L016D8A: db $C6;X
L016D8B: db $08;X
L016D8C: db $6F;X
L016D8D: db $7E;X
L016D8E: db $A7;X
L016D8F: db $20;X
L016D90: db $0A;X
L016D91: db $CD;X
L016D92: db $98;X
L016D93: db $0D;X
L016D94: db $E6;X
L016D95: db $01;X
L016D96: db $F6;X
L016D97: db $80;X
L016D98: db $77;X
L016D99: db $18;X
L016D9A: db $12;X
L016D9B: db $EE;X
L016D9C: db $01;X
L016D9D: db $36;X
L016D9E: db $00;X
L016D9F: db $47;X
L016DA0: db $FA;X
L016DA1: db $C2;X
L016DA2: db $C0;X
L016DA3: db $A7;X
L016DA4: db $20;X
L016DA5: db $06;X
L016DA6: db $79;X
L016DA7: db $C6;X
L016DA8: db $0A;X
L016DA9: db $6F;X
L016DAA: db $36;X
L016DAB: db $01;X
L016DAC: db $78;X
L016DAD: db $E6;X
L016DAE: db $01;X
L016DAF: db $C6;X
L016DB0: db $0E;X
L016DB1: db $47;X
L016DB2: db $79;X
L016DB3: db $C6;X
L016DB4: db $02;X
L016DB5: db $6F;X
L016DB6: db $70;X
L016DB7: db $2C;X
L016DB8: db $70;X
L016DB9: db $79;X
L016DBA: db $C6;X
L016DBB: db $09;X
L016DBC: db $6F;X
L016DBD: db $36;X
L016DBE: db $00;X
L016DBF: db $79;X
L016DC0: db $C6;X
L016DC1: db $0A;X
L016DC2: db $6F;X
L016DC3: db $35;X
L016DC4: db $C9;X
L016DC5: db $F0;X
L016DC6: db $B1;X
L016DC7: db $5F;X
L016DC8: db $D5;X
L016DC9: db $C6;X
L016DCA: db $36;X
L016DCB: db $6F;X
L016DCC: db $62;X
L016DCD: db $2A;X
L016DCE: db $E0;X
L016DCF: db $B1;X
L016DD0: db $56;X
L016DD1: db $CD;X
L016DD2: db $4F;X
L016DD3: db $50;X
L016DD4: db $D1;X
L016DD5: db $7B;X
L016DD6: db $E0;X
L016DD7: db $B1;X
L016DD8: db $C9;X
L016DD9: db $21;X
L016DDA: db $18;X
L016DDB: db $6E;X
L016DDC: db $06;X
L016DDD: db $01;X
L016DDE: db $CD;X
L016DDF: db $87;X
L016DE0: db $1E;X
L016DE1: db $F0;X
L016DE2: db $B1;X
L016DE3: db $5F;X
L016DE4: db $C6;X
L016DE5: db $28;X
L016DE6: db $4F;X
L016DE7: db $1A;X
L016DE8: db $77;X
L016DE9: db $59;X
L016DEA: db $7D;X
L016DEB: db $C6;X
L016DEC: db $28;X
L016DED: db $6F;X
L016DEE: db $1A;X
L016DEF: db $77;X
L016DF0: db $7D;X
L016DF1: db $C6;X
L016DF2: db $E0;X
L016DF3: db $6F;X
L016DF4: db $C6;X
L016DF5: db $12;X
L016DF6: db $4F;X
L016DF7: db $C6;X
L016DF8: db $18;X
L016DF9: db $47;X
L016DFA: db $36;X
L016DFB: db $0E;X
L016DFC: db $69;X
L016DFD: db $36;X
L016DFE: db $02;X
L016DFF: db $2C;X
L016E00: db $36;X
L016E01: db $01;X
L016E02: db $78;X
L016E03: db $C6;X
L016E04: db $F4;X
L016E05: db $6F;X
L016E06: db $36;X
L016E07: db $21;X
L016E08: db $78;X
L016E09: db $C6;X
L016E0A: db $04;X
L016E0B: db $6F;X
L016E0C: db $F0;X
L016E0D: db $B1;X
L016E0E: db $22;X
L016E0F: db $72;X
L016E10: db $C6;X
L016E11: db $07;X
L016E12: db $5F;X
L016E13: db $1A;X
L016E14: db $CB;X
L016E15: db $C7;X
L016E16: db $12;X
L016E17: db $C9;X
L016E18: db $7B;X
L016E19: db $C6;X
L016E1A: db $06;X
L016E1B: db $5F;X
L016E1C: db $3E;X
L016E1D: db $80;X
L016E1E: db $12;X
L016E1F: db $CD;X
L016E20: db $B3;X
L016E21: db $4A;X
L016E22: db $CD;X
L016E23: db $32;X
L016E24: db $4C;X
L016E25: db $CD;X
L016E26: db $F3;X
L016E27: db $1E;X
L016E28: db $7B;X
L016E29: db $C6;X
L016E2A: db $36;X
L016E2B: db $6F;X
L016E2C: db $62;X
L016E2D: db $2A;X
L016E2E: db $66;X
L016E2F: db $C6;X
L016E30: db $07;X
L016E31: db $6F;X
L016E32: db $CB;X
L016E33: db $46;X
L016E34: db $CA;X
L016E35: db $CD;X
L016E36: db $1E;X
L016E37: db $CD;X
L016E38: db $74;X
L016E39: db $44;X
L016E3A: db $CD;X
L016E3B: db $4B;X
L016E3C: db $48;X
L016E3D: db $CD;X
L016E3E: db $9E;X
L016E3F: db $48;X
L016E40: db $38;X
L016E41: db $03;X
L016E42: db $C3;X
L016E43: db $B3;X
L016E44: db $4A;X
L016E45: db $CD;X
L016E46: db $B3;X
L016E47: db $4A;X
L016E48: db $3E;X
L016E49: db $2E;X
L016E4A: db $CD;X
L016E4B: db $4E;X
L016E4C: db $3B;X
L016E4D: db $F0;X
L016E4E: db $B1;X
L016E4F: db $C6;X
L016E50: db $1B;X
L016E51: db $6F;X
L016E52: db $62;X
L016E53: db $7E;X
L016E54: db $FE;X
L016E55: db $0D;X
L016E56: db $CA;X
L016E57: db $2B;X
L016E58: db $6F;X
L016E59: db $3C;X
L016E5A: db $22;X
L016E5B: db $7E;X
L016E5C: db $C6;X
L016E5D: db $08;X
L016E5E: db $22;X
L016E5F: db $4F;X
L016E60: db $46;X
L016E61: db $7D;X
L016E62: db $C6;X
L016E63: db $11;X
L016E64: db $6F;X
L016E65: db $0A;X
L016E66: db $E6;X
L016E67: db $F0;X
L016E68: db $FE;X
L016E69: db $D0;X
L016E6A: db $38;X
L016E6B: db $0E;X
L016E6C: db $FA;X
L016E6D: db $10;X
L016E6E: db $B0;X
L016E6F: db $FE;X
L016E70: db $03;X
L016E71: db $38;X
L016E72: db $05;X
L016E73: db $0A;X
L016E74: db $E6;X
L016E75: db $F0;X
L016E76: db $18;X
L016E77: db $02;X
L016E78: db $3E;X
L016E79: db $80;X
L016E7A: db $22;X
L016E7B: db $36;X
L016E7C: db $01;X
L016E7D: db $F0;X
L016E7E: db $B1;X
L016E7F: db $C6;X
L016E80: db $26;X
L016E81: db $5F;X
L016E82: db $3E;X
L016E83: db $10;X
L016E84: db $12;X
L016E85: db $CD;X
L016E86: db $F3;X
L016E87: db $1E;X
L016E88: db $7B;X
L016E89: db $C6;X
L016E8A: db $26;X
L016E8B: db $6F;X
L016E8C: db $62;X
L016E8D: db $C6;X
L016E8E: db $09;X
L016E8F: db $5F;X
L016E90: db $C6;X
L016E91: db $DE;X
L016E92: db $4F;X
L016E93: db $C6;X
L016E94: db $04;X
L016E95: db $47;X
L016E96: db $35;X
L016E97: db $28;X
L016E98: db $19;X
L016E99: db $CB;X
L016E9A: db $46;X
L016E9B: db $C8;X
L016E9C: db $3E;X
L016E9D: db $37;X
L016E9E: db $CD;X
L016E9F: db $4E;X
L016EA0: db $3B;X
L016EA1: db $1A;X
L016EA2: db $CB;X
L016EA3: db $47;X
L016EA4: db $28;X
L016EA5: db $03;X
L016EA6: db $68;X
L016EA7: db $34;X
L016EA8: db $C9;X
L016EA9: db $69;X
L016EAA: db $CB;X
L016EAB: db $4F;X
L016EAC: db $28;X
L016EAD: db $02;X
L016EAE: db $34;X
L016EAF: db $C9;X
L016EB0: db $35;X
L016EB1: db $C9;X
L016EB2: db $7D;X
L016EB3: db $C6;X
L016EB4: db $F6;X
L016EB5: db $6F;X
L016EB6: db $2A;X
L016EB7: db $46;X
L016EB8: db $4F;X
L016EB9: db $1D;X
L016EBA: db $0A;X
L016EBB: db $A7;X
L016EBC: db $28;X
L016EBD: db $18;X
L016EBE: db $FE;X
L016EBF: db $D0;X
L016EC0: db $28;X
L016EC1: db $14;X
L016EC2: db $1A;X
L016EC3: db $4F;X
L016EC4: db $7B;X
L016EC5: db $C6;X
L016EC6: db $DA;X
L016EC7: db $5F;X
L016EC8: db $79;X
L016EC9: db $CB;X
L016ECA: db $37;X
L016ECB: db $E6;X
L016ECC: db $07;X
L016ECD: db $12;X
L016ECE: db $D5;X
L016ECF: db $CD;X
L016ED0: db $5E;X
L016ED1: db $4E;X
L016ED2: db $D1;X
L016ED3: db $3E;X
L016ED4: db $0E;X
L016ED5: db $12;X
L016ED6: db $CD;X
L016ED7: db $83;X
L016ED8: db $6F;X
L016ED9: db $30;X
L016EDA: db $A2;X
L016EDB: db $F0;X
L016EDC: db $B1;X
L016EDD: db $C6;X
L016EDE: db $06;X
L016EDF: db $5F;X
L016EE0: db $C6;X
L016EE1: db $30;X
L016EE2: db $6F;X
L016EE3: db $62;X
L016EE4: db $2A;X
L016EE5: db $C6;X
L016EE6: db $07;X
L016EE7: db $66;X
L016EE8: db $6F;X
L016EE9: db $CB;X
L016EEA: db $86;X
L016EEB: db $6B;X
L016EEC: db $62;X
L016EED: db $36;X
L016EEE: db $AF;X
L016EEF: db $7D;X
L016EF0: db $C6;X
L016EF1: db $2C;X
L016EF2: db $6F;X
L016EF3: db $36;X
L016EF4: db $77;X
L016EF5: db $2C;X
L016EF6: db $36;X
L016EF7: db $6F;X
L016EF8: db $2C;X
L016EF9: db $36;X
L016EFA: db $01;X
L016EFB: db $C6;X
L016EFC: db $DB;X
L016EFD: db $5F;X
L016EFE: db $C6;X
L016EFF: db $0E;X
L016F00: db $6F;X
L016F01: db $1A;X
L016F02: db $22;X
L016F03: db $36;X
L016F04: db $10;X
L016F05: db $2C;X
L016F06: db $97;X
L016F07: db $22;X
L016F08: db $2C;X
L016F09: db $22;X
L016F0A: db $36;X
L016F0B: db $06;X
L016F0C: db $2C;X
L016F0D: db $77;X
L016F0E: db $7D;X
L016F0F: db $C6;X
L016F10: db $F3;X
L016F11: db $6F;X
L016F12: db $C6;X
L016F13: db $04;X
L016F14: db $5F;X
L016F15: db $36;X
L016F16: db $00;X
L016F17: db $2C;X
L016F18: db $36;X
L016F19: db $02;X
L016F1A: db $97;X
L016F1B: db $6B;X
L016F1C: db $22;X
L016F1D: db $77;X
L016F1E: db $CD;X
L016F1F: db $F3;X
L016F20: db $1E;X
L016F21: db $CD;X
L016F22: db $27;X
L016F23: db $20;X
L016F24: db $CD;X
L016F25: db $6D;X
L016F26: db $1F;X
L016F27: db $D0;X
L016F28: db $C3;X
L016F29: db $CD;X
L016F2A: db $1E;X
L016F2B: db $01;X
L016F2C: db $24;X
L016F2D: db $00;X
L016F2E: db $CD;X
L016F2F: db $E8;X
L016F30: db $1E;X
L016F31: db $CD;X
L016F32: db $F3;X
L016F33: db $1E;X
L016F34: db $7B;X
L016F35: db $C6;X
L016F36: db $06;X
L016F37: db $6F;X
L016F38: db $62;X
L016F39: db $36;X
L016F3A: db $82;X
L016F3B: db $C6;X
L016F3C: db $0E;X
L016F3D: db $6F;X
L016F3E: db $36;X
L016F3F: db $00;X
L016F40: db $2C;X
L016F41: db $36;X
L016F42: db $FF;X
L016F43: db $C6;X
L016F44: db $1E;X
L016F45: db $6F;X
L016F46: db $36;X
L016F47: db $6B;X
L016F48: db $2C;X
L016F49: db $36;X
L016F4A: db $6F;X
L016F4B: db $2C;X
L016F4C: db $36;X
L016F4D: db $01;X
L016F4E: db $C6;X
L016F4F: db $04;X
L016F50: db $6F;X
L016F51: db $2A;X
L016F52: db $66;X
L016F53: db $C6;X
L016F54: db $07;X
L016F55: db $6F;X
L016F56: db $CB;X
L016F57: db $86;X
L016F58: db $01;X
L016F59: db $10;X
L016F5A: db $27;X
L016F5B: db $CD;X
L016F5C: db $C5;X
L016F5D: db $6D;X
L016F5E: db $CD;X
L016F5F: db $F3;X
L016F60: db $1E;X
L016F61: db $CD;X
L016F62: db $27;X
L016F63: db $20;X
L016F64: db $CD;X
L016F65: db $6D;X
L016F66: db $1F;X
L016F67: db $D0;X
L016F68: db $C3;X
L016F69: db $CD;X
L016F6A: db $1E;X
L016F6B: db $04;X
L016F6C: db $02;X
L016F6D: db $09;X
L016F6E: db $02;X
L016F6F: db $0A;X
L016F70: db $02;X
L016F71: db $08;X
L016F72: db $02;X
L016F73: db $00;X
L016F74: db $FF;X
L016F75: db $6B;X
L016F76: db $6F;X
L016F77: db $04;X
L016F78: db $01;X
L016F79: db $08;X
L016F7A: db $01;X
L016F7B: db $0A;X
L016F7C: db $01;X
L016F7D: db $09;X
L016F7E: db $01;X
L016F7F: db $00;X
L016F80: db $FF;X
L016F81: db $77;X
L016F82: db $6F;X
L016F83: db $CD;X
L016F84: db $98;X
L016F85: db $0D;X
L016F86: db $E6;X
L016F87: db $02;X
L016F88: db $CD;X
L016F89: db $AC;X
L016F8A: db $6F;X
L016F8B: db $D0;X
L016F8C: db $F0;X
L016F8D: db $B1;X
L016F8E: db $C6;X
L016F8F: db $2F;X
L016F90: db $5F;X
L016F91: db $C6;X
L016F92: db $EC;X
L016F93: db $6F;X
L016F94: db $62;X
L016F95: db $7E;X
L016F96: db $FE;X
L016F97: db $0D;X
L016F98: db $30;X
L016F99: db $10;X
L016F9A: db $3C;X
L016F9B: db $22;X
L016F9C: db $7E;X
L016F9D: db $C6;X
L016F9E: db $08;X
L016F9F: db $77;X
L016FA0: db $3E;X
L016FA1: db $01;X
L016FA2: db $12;X
L016FA3: db $7B;X
L016FA4: db $C6;X
L016FA5: db $DA;X
L016FA6: db $5F;X
L016FA7: db $97;X
L016FA8: db $12;X
L016FA9: db $C9;X
L016FAA: db $37;X
L016FAB: db $C9;X
L016FAC: db $E0;X
L016FAD: db $F0;X
L016FAE: db $3D;X
L016FAF: db $4F;X
L016FB0: db $F0;X
L016FB1: db $B1;X
L016FB2: db $C6;X
L016FB3: db $2E;X
L016FB4: db $5F;X
L016FB5: db $C6;X
L016FB6: db $EC;X
L016FB7: db $6F;X
L016FB8: db $62;X
L016FB9: db $2A;X
L016FBA: db $81;X
L016FBB: db $FE;X
L016FBC: db $06;X
L016FBD: db $30;X
L016FBE: db $2D;X
L016FBF: db $E0;X
L016FC0: db $F1;X
L016FC1: db $2C;X
L016FC2: db $2A;X
L016FC3: db $81;X
L016FC4: db $4F;X
L016FC5: db $46;X
L016FC6: db $0A;X
L016FC7: db $A7;X
L016FC8: db $28;X
L016FC9: db $22;X
L016FCA: db $E6;X
L016FCB: db $F0;X
L016FCC: db $67;X
L016FCD: db $1A;X
L016FCE: db $BC;X
L016FCF: db $28;X
L016FD0: db $1B;X
L016FD1: db $62;X
L016FD2: db $2D;X
L016FD3: db $71;X
L016FD4: db $2D;X
L016FD5: db $2D;X
L016FD6: db $F0;X
L016FD7: db $F1;X
L016FD8: db $77;X
L016FD9: db $1C;X
L016FDA: db $F0;X
L016FDB: db $F0;X
L016FDC: db $12;X
L016FDD: db $06;X
L016FDE: db $09;X
L016FDF: db $FE;X
L016FE0: db $01;X
L016FE1: db $30;X
L016FE2: db $02;X
L016FE3: db $06;X
L016FE4: db $08;X
L016FE5: db $7B;X
L016FE6: db $C6;X
L016FE7: db $DA;X
L016FE8: db $6F;X
L016FE9: db $70;X
L016FEA: db $A7;X
L016FEB: db $C9;X
L016FEC: db $37;X
L016FED: db $C9;X
L016FEE: db $21;X
L016FEF: db $3E;X
L016FF0: db $70;X
L016FF1: db $06;X
L016FF2: db $01;X
L016FF3: db $CD;X
L016FF4: db $87;X
L016FF5: db $1E;X
L016FF6: db $F0;X
L016FF7: db $B1;X
L016FF8: db $5F;X
L016FF9: db $C6;X
L016FFA: db $28;X
L016FFB: db $4F;X
L016FFC: db $1A;X
L016FFD: db $77;X
L016FFE: db $59;X
L016FFF: db $7D;X
L017000: db $C6;X
L017001: db $28;X
L017002: db $6F;X
L017003: db $1A;X
L017004: db $77;X
L017005: db $7D;X
L017006: db $C6;X
L017007: db $E0;X
L017008: db $6F;X
L017009: db $C6;X
L01700A: db $12;X
L01700B: db $4F;X
L01700C: db $C6;X
L01700D: db $18;X
L01700E: db $47;X
L01700F: db $36;X
L017010: db $0F;X
L017011: db $69;X
L017012: db $36;X
L017013: db $02;X
L017014: db $2C;X
L017015: db $36;X
L017016: db $01;X
L017017: db $78;X
L017018: db $C6;X
L017019: db $F4;X
L01701A: db $6F;X
L01701B: db $36;X
L01701C: db $21;X
L01701D: db $78;X
L01701E: db $C6;X
L01701F: db $F7;X
L017020: db $6F;X
L017021: db $36;X
L017022: db $01;X
L017023: db $68;X
L017024: db $36;X
L017025: db $3C;X
L017026: db $2C;X
L017027: db $36;X
L017028: db $70;X
L017029: db $2C;X
L01702A: db $36;X
L01702B: db $01;X
L01702C: db $78;X
L01702D: db $C6;X
L01702E: db $04;X
L01702F: db $6F;X
L017030: db $F0;X
L017031: db $B1;X
L017032: db $22;X
L017033: db $72;X
L017034: db $C6;X
L017035: db $07;X
L017036: db $5F;X
L017037: db $1A;X
L017038: db $CB;X
L017039: db $C7;X
L01703A: db $12;X
L01703B: db $C9;X
L01703C: db $00;X
L01703D: db $FE;X
L01703E: db $7B;X
L01703F: db $C6;X
L017040: db $06;X
L017041: db $5F;X
L017042: db $3E;X
L017043: db $80;X
L017044: db $12;X
L017045: db $CD;X
L017046: db $B3;X
L017047: db $4A;X
L017048: db $F0;X
L017049: db $B1;X
L01704A: db $C6;X
L01704B: db $0D;X
L01704C: db $5F;X
L01704D: db $1A;X
L01704E: db $C6;X
L01704F: db $04;X
L017050: db $12;X
L017051: db $CD;X
L017052: db $32;X
L017053: db $4C;X
L017054: db $CD;X
L017055: db $F3;X
L017056: db $1E;X
L017057: db $7B;X
L017058: db $C6;X
L017059: db $36;X
L01705A: db $6F;X
L01705B: db $62;X
L01705C: db $2A;X
L01705D: db $66;X
L01705E: db $C6;X
L01705F: db $07;X
L017060: db $6F;X
L017061: db $CB;X
L017062: db $46;X
L017063: db $CA;X
L017064: db $CD;X
L017065: db $1E;X
L017066: db $CD;X
L017067: db $27;X
L017068: db $20;X
L017069: db $CD;X
L01706A: db $74;X
L01706B: db $44;X
L01706C: db $CD;X
L01706D: db $4B;X
L01706E: db $48;X
L01706F: db $CD;X
L017070: db $9E;X
L017071: db $48;X
L017072: db $38;X
L017073: db $0D;X
L017074: db $CD;X
L017075: db $B3;X
L017076: db $4A;X
L017077: db $F0;X
L017078: db $B1;X
L017079: db $C6;X
L01707A: db $0D;X
L01707B: db $5F;X
L01707C: db $1A;X
L01707D: db $C6;X
L01707E: db $04;X
L01707F: db $12;X
L017080: db $C9;X
L017081: db $CD;X
L017082: db $F3;X
L017083: db $1E;X
L017084: db $CD;X
L017085: db $27;X
L017086: db $20;X
L017087: db $D0;X
L017088: db $F0;X
L017089: db $B1;X
L01708A: db $C6;X
L01708B: db $1B;X
L01708C: db $6F;X
L01708D: db $62;X
L01708E: db $7E;X
L01708F: db $FE;X
L017090: db $0D;X
L017091: db $DA;X
L017092: db $A5;X
L017093: db $70;X
L017094: db $7D;X
L017095: db $C6;X
L017096: db $FD;X
L017097: db $6F;X
L017098: db $36;X
L017099: db $00;X
L01709A: db $2C;X
L01709B: db $36;X
L01709C: db $01;X
L01709D: db $01;X
L01709E: db $E0;X
L01709F: db $2E;X
L0170A0: db $CD;X
L0170A1: db $C5;X
L0170A2: db $6D;X
L0170A3: db $18;X
L0170A4: db $55;X
L0170A5: db $7D;X
L0170A6: db $C6;X
L0170A7: db $13;X
L0170A8: db $6F;X
L0170A9: db $C6;X
L0170AA: db $E3;X
L0170AB: db $5F;X
L0170AC: db $1A;X
L0170AD: db $22;X
L0170AE: db $36;X
L0170AF: db $00;X
L0170B0: db $7D;X
L0170B1: db $C6;X
L0170B2: db $E9;X
L0170B3: db $6F;X
L0170B4: db $C6;X
L0170B5: db $EE;X
L0170B6: db $5F;X
L0170B7: db $97;X
L0170B8: db $22;X
L0170B9: db $77;X
L0170BA: db $3E;X
L0170BB: db $81;X
L0170BC: db $12;X
L0170BD: db $CD;X
L0170BE: db $F3;X
L0170BF: db $1E;X
L0170C0: db $CD;X
L0170C1: db $6D;X
L0170C2: db $1F;X
L0170C3: db $F0;X
L0170C4: db $B1;X
L0170C5: db $C6;X
L0170C6: db $18;X
L0170C7: db $6F;X
L0170C8: db $7E;X
L0170C9: db $C6;X
L0170CA: db $12;X
L0170CB: db $22;X
L0170CC: db $7E;X
L0170CD: db $CE;X
L0170CE: db $00;X
L0170CF: db $77;X
L0170D0: db $FE;X
L0170D1: db $03;X
L0170D2: db $38;X
L0170D3: db $05;X
L0170D4: db $3E;X
L0170D5: db $03;X
L0170D6: db $32;X
L0170D7: db $36;X
L0170D8: db $00;X
L0170D9: db $CD;X
L0170DA: db $55;X
L0170DB: db $71;X
L0170DC: db $F0;X
L0170DD: db $B1;X
L0170DE: db $C6;X
L0170DF: db $11;X
L0170E0: db $5F;X
L0170E1: db $1A;X
L0170E2: db $FE;X
L0170E3: db $B4;X
L0170E4: db $D8;X
L0170E5: db $3E;X
L0170E6: db $B4;X
L0170E7: db $12;X
L0170E8: db $7B;X
L0170E9: db $C6;X
L0170EA: db $21;X
L0170EB: db $6F;X
L0170EC: db $62;X
L0170ED: db $36;X
L0170EE: db $98;X
L0170EF: db $2C;X
L0170F0: db $36;X
L0170F1: db $46;X
L0170F2: db $2C;X
L0170F3: db $36;X
L0170F4: db $01;X
L0170F5: db $3E;X
L0170F6: db $38;X
L0170F7: db $CD;X
L0170F8: db $4E;X
L0170F9: db $3B;X
L0170FA: db $F0;X
L0170FB: db $B1;X
L0170FC: db $C6;X
L0170FD: db $36;X
L0170FE: db $6F;X
L0170FF: db $62;X
L017100: db $D5;X
L017101: db $5E;X
L017102: db $2C;X
L017103: db $56;X
L017104: db $21;X
L017105: db $34;X
L017106: db $51;X
L017107: db $3E;X
L017108: db $02;X
L017109: db $C7;X
L01710A: db $D1;X
L01710B: db $F0;X
L01710C: db $B1;X
L01710D: db $C6;X
L01710E: db $06;X
L01710F: db $6F;X
L017110: db $C6;X
L017111: db $12;X
L017112: db $5F;X
L017113: db $62;X
L017114: db $36;X
L017115: db $B7;X
L017116: db $6B;X
L017117: db $97;X
L017118: db $96;X
L017119: db $22;X
L01711A: db $3E;X
L01711B: db $00;X
L01711C: db $96;X
L01711D: db $77;X
L01711E: db $7D;X
L01711F: db $C6;X
L017120: db $06;X
L017121: db $6F;X
L017122: db $C6;X
L017123: db $F5;X
L017124: db $5F;X
L017125: db $36;X
L017126: db $FF;X
L017127: db $2C;X
L017128: db $36;X
L017129: db $28;X
L01712A: db $2C;X
L01712B: db $36;X
L01712C: db $00;X
L01712D: db $6B;X
L01712E: db $36;X
L01712F: db $C0;X
L017130: db $2C;X
L017131: db $36;X
L017132: db $FF;X
L017133: db $CD;X
L017134: db $F3;X
L017135: db $1E;X
L017136: db $CD;X
L017137: db $27;X
L017138: db $20;X
L017139: db $CD;X
L01713A: db $6D;X
L01713B: db $1F;X
L01713C: db $F0;X
L01713D: db $B1;X
L01713E: db $C6;X
L01713F: db $11;X
L017140: db $5F;X
L017141: db $1A;X
L017142: db $FE;X
L017143: db $C8;X
L017144: db $D8;X
L017145: db $F0;X
L017146: db $B1;X
L017147: db $C6;X
L017148: db $36;X
L017149: db $6F;X
L01714A: db $62;X
L01714B: db $2A;X
L01714C: db $66;X
L01714D: db $C6;X
L01714E: db $07;X
L01714F: db $6F;X
L017150: db $CB;X
L017151: db $86;X
L017152: db $C3;X
L017153: db $CD;X
L017154: db $1E;X
L017155: db $F0;X
L017156: db $B1;X
L017157: db $C6;X
L017158: db $11;X
L017159: db $5F;X
L01715A: db $C6;X
L01715B: db $1D;X
L01715C: db $6F;X
L01715D: db $62;X
L01715E: db $1A;X
L01715F: db $96;X
L017160: db $2C;X
L017161: db $0F;X
L017162: db $0F;X
L017163: db $0F;X
L017164: db $E6;X
L017165: db $1F;X
L017166: db $BE;X
L017167: db $C8;X
L017168: db $77;X
L017169: db $7D;X
L01716A: db $C6;X
L01716B: db $EC;X
L01716C: db $6F;X
L01716D: db $34;X
L01716E: db $2C;X
L01716F: db $7E;X
L017170: db $C6;X
L017171: db $08;X
L017172: db $22;X
L017173: db $4F;X
L017174: db $46;X
L017175: db $C5;X
L017176: db $CD;X
L017177: db $91;X
L017178: db $71;X
L017179: db $E1;X
L01717A: db $7E;X
L01717B: db $FE;X
L01717C: db $D0;X
L01717D: db $28;X
L01717E: db $02;X
L01717F: db $36;X
L017180: db $00;X
L017181: db $2C;X
L017182: db $7E;X
L017183: db $FE;X
L017184: db $D0;X
L017185: db $28;X
L017186: db $02;X
L017187: db $36;X
L017188: db $00;X
L017189: db $CD;X
L01718A: db $BA;X
L01718B: db $4D;X
L01718C: db $3E;X
L01718D: db $3B;X
L01718E: db $C3;X
L01718F: db $4E;X
L017190: db $3B;X
L017191: db $F0;X
L017192: db $B1;X
L017193: db $C6;X
L017194: db $0D;X
L017195: db $5F;X
L017196: db $C6;X
L017197: db $04;X
L017198: db $6F;X
L017199: db $62;X
L01719A: db $7E;X
L01719B: db $D6;X
L01719C: db $24;X
L01719D: db $E0;X
L01719E: db $D1;X
L01719F: db $1A;X
L0171A0: db $D6;X
L0171A1: db $30;X
L0171A2: db $E0;X
L0171A3: db $D0;X
L0171A4: db $97;X
L0171A5: db $E0;X
L0171A6: db $D5;X
L0171A7: db $3E;X
L0171A8: db $02;X
L0171A9: db $E0;X
L0171AA: db $D3;X
L0171AB: db $0A;X
L0171AC: db $A7;X
L0171AD: db $28;X
L0171AE: db $31;X
L0171AF: db $FE;X
L0171B0: db $D0;X
L0171B1: db $28;X
L0171B2: db $2D;X
L0171B3: db $CB;X
L0171B4: db $37;X
L0171B5: db $E6;X
L0171B6: db $07;X
L0171B7: db $E0;X
L0171B8: db $D2;X
L0171B9: db $C5;X
L0171BA: db $CD;X
L0171BB: db $46;X
L0171BC: db $1F;X
L0171BD: db $38;X
L0171BE: db $1B;X
L0171BF: db $36;X
L0171C0: db $04;X
L0171C1: db $2C;X
L0171C2: db $2C;X
L0171C3: db $36;X
L0171C4: db $04;X
L0171C5: db $7D;X
L0171C6: db $C6;X
L0171C7: db $05;X
L0171C8: db $6F;X
L0171C9: db $F0;X
L0171CA: db $D0;X
L0171CB: db $77;X
L0171CC: db $7D;X
L0171CD: db $C6;X
L0171CE: db $04;X
L0171CF: db $6F;X
L0171D0: db $F0;X
L0171D1: db $D1;X
L0171D2: db $77;X
L0171D3: db $7D;X
L0171D4: db $C6;X
L0171D5: db $0B;X
L0171D6: db $6F;X
L0171D7: db $F0;X
L0171D8: db $D2;X
L0171D9: db $77;X
L0171DA: db $C1;X
L0171DB: db $F0;X
L0171DC: db $D5;X
L0171DD: db $3C;X
L0171DE: db $E0;X
L0171DF: db $D5;X
L0171E0: db $0C;X
L0171E1: db $F0;X
L0171E2: db $D0;X
L0171E3: db $C6;X
L0171E4: db $08;X
L0171E5: db $E0;X
L0171E6: db $D0;X
L0171E7: db $F0;X
L0171E8: db $D3;X
L0171E9: db $3D;X
L0171EA: db $E0;X
L0171EB: db $D3;X
L0171EC: db $20;X
L0171ED: db $BD;X
L0171EE: db $F0;X
L0171EF: db $B1;X
L0171F0: db $C6;X
L0171F1: db $36;X
L0171F2: db $6F;X
L0171F3: db $62;X
L0171F4: db $2A;X
L0171F5: db $66;X
L0171F6: db $C6;X
L0171F7: db $38;X
L0171F8: db $6F;X
L0171F9: db $F0;X
L0171FA: db $D5;X
L0171FB: db $86;X
L0171FC: db $FE;X
L0171FD: db $2A;X
L0171FE: db $38;X
L0171FF: db $02;X
L017200: db $3E;X
L017201: db $2A;X
L017202: db $77;X
L017203: db $F0;X
L017204: db $D5;X
L017205: db $A7;X
L017206: db $C8;X
L017207: db $7D;X
L017208: db $C6;X
L017209: db $F1;X
L01720A: db $6F;X
L01720B: db $7E;X
L01720C: db $3C;X
L01720D: db $6F;X
L01720E: db $26;X
L01720F: db $00;X
L017210: db $4D;X
L017211: db $44;X
L017212: db $29;X
L017213: db $29;X
L017214: db $09;X
L017215: db $29;X
L017216: db $F0;X
L017217: db $D5;X
L017218: db $FE;X
L017219: db $01;X
L01721A: db $28;X
L01721B: db $01;X
L01721C: db $29;X
L01721D: db $4D;X
L01721E: db $44;X
L01721F: db $C3;X
L017220: db $C5;X
L017221: db $6D;X
