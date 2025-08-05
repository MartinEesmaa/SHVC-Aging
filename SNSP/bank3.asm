.BANK 3 SLOT 0
.ORG $0000

.SECTION "Bank3" FORCE

	lsr $0000.w		; 4E 00 00
	rol $FF00.w,X		; 3E 00 FF
	cpx #$B8.b		; E0 B8
	ora [$A8.b]		; 07 A8
	ora ($FF.b,X)		; 01 FF
	cpx #$B8.b		; E0 B8
	ora [$A8.b]		; 07 A8
	cop $FF.b		; 02 FF
	cpx #$B8.b		; E0 B8
	ora [$A8.b]		; 07 A8
	ora $FB.b,S		; 03 FB
	cpx #$B8.b		; E0 B8
	cop $00.b		; 02 00
	tsb $FF.b		; 04 FF
	cpx #$B8.b		; E0 B8
	cop $00.b		; 02 00
	ora $FC.b		; 05 FC
	sbc ($B8.b),Y		; F1 B8
	phd		; 0B
	brk $06.b		; 00 06
	sbc $0BB8F1.l,X		; FF F1 B8 0B
	brk $07.b		; 00 07
	sbc $04B8E0.l,X		; FF E0 B8 04
	brk $08.b		; 00 08
	sbc $03B8EE.l,X		; FF EE B8 03
	brk $09.b		; 00 09
	sbc $02B8E0.l,X		; FF E0 B8 02
	brk $0A.b		; 00 0A
	jsr ($B8F1.w,X)		; FC F1 B8
	tsb $00.b		; 04 00
	phd		; 0B
	sbc $04B8E0.l,X		; FF E0 B8 04
	brk $0C.b		; 00 0C
	sbc $0AB8E0.l,X		; FF E0 B8 0A
	brk $64.b		; 00 64
	brk $00.b		; 00 00
	and $7F6532.l,X		; 3F 32 65 7F
	tya		; 98
	lda ($CB.b)		; B2 CB
	sbc $FC.b		; E5 FC
	ora $4C32.w,Y		; 19 32 4C
	adc $72.b		; 65 72
	adc $A5988C.l,X		; 7F 8C 98 A5
	lda ($BF.b)		; B2 BF
	wai		; CB
	cld		; D8
	sbc $F2.b		; E5 F2
	jsr ($AAE8.w,X)		; FC E8 AA
	cmp $F4.b		; C5 F4
	brk $E8.b		; 00 E8
	tyx		; BB
	cmp $F5.b		; C5 F5
	brk $E5.b		; 00 E5
	pea $6800.w		; F4 00 68
	cpy $F9D0.w		; CC D0 F9
	and $F4EC20.l		; 2F 20 EC F4
	brk $D0.b		; 00 D0
	xce		; FB
	lsr $00F4.w,X		; 5E F4 00
	.db $D0, $0F		; D0 0F
	sbc $F5.b		; E5 F5
	brk $CC.b		; 00 CC
	pea $D700.w		; F4 00 D7
	trb $FC.b		; 14 FC
	.db $D0, $F0		; D0 F0
	plb		; AB
	ora $2F.b,X		; 15 2F
	cpx $EA10.w		; EC 10 EA
	lsr $00F4.w,X		; 5E F4 00
	.db $10, $E5		; 10 E5
	sbc $F6.b		; E5 F6
	brk $EC.b		; 00 EC
	sbc [$00.b],Y		; F7 00
	phx		; DA
	trb $EC.b		; 14 EC
	pea $E500.w		; F4 00 E5
	sbc $00.b,X		; F5 00
	cpy $00F4.w		; CC F4 00
	.db $D0, $CD		; D0 CD
	cmp $C931.w		; CD 31 C9
	sbc ($00.b),Y		; F1 00
	adc $00191C.l		; 6F 1C 19 00
	php		; 08
	jsr $CFCD.w		; 20 CD CF
	lda $00E8.w,X		; BD E8 00
	eor $C8AF.w,X		; 5D AF C8
	cpx #$D0.b		; E0 D0
	xce		; FB
	ldy $3A3F.w,X		; BC 3F 3A
	ora ($A2.b),Y		; 11 A2
	pha		; 48
	inx		; E8
	.db $F0, $C5		; F0 C5
	sbc ($00.b),Y		; F1 00
	inx		; E8
	.db $10, $C5		; 10 C5
	plx		; FA
	brk $C4.b		; 00 C4
	eor ($E8.b,S),Y		; 53 E8
	ora ($C5.b,X)		; 01 C5
	sbc ($00.b),Y		; F1 00
	cpx $1B.b		; E4 1B
	.db $D0, $51		; D0 51
	sta $AD0A.w		; 8D 0A AD
	ora $F0.b		; 05 F0
	ora [$B0.b]		; 07 B0
	php		; 08
	adc #$4C4D.w		; 69 4D 4C
	.db $D0, $11		; D0 11
	sbc $4C.b,S		; E3 4C
	asl $27F6.w		; 0E F6 27
	ora $C5.b,X		; 15 C5
	sbc ($00.b)		; F2 00
	inc $31.b,X		; F6 31
	ora $5D.b,X		; 15 5D
	inc $C5.b		; E6 C5
	sbc ($00.b,S),Y		; F3 00
	inc $CBE2.w,X		; FE E2 CB
	eor $CB.b		; 45 CB
	lsr $E4.b		; 46 E4
	clc		; 18
	mvp $5C,$19		; 44 19 5C
	jmp $186BED.l		; 5C ED 6B 18
	rtl		; 6B

	ora $FDEC.w,Y		; 19 EC FD
	brk $F0.b		; 00 F0
	xce		; FB
	adc $20E8.w		; 6D E8 20
	cmp $438460.l		; CF 60 84 43
	cpy $43.b		; C4 43
	.db $90, $07		; 90 07
	adc #$4C4D.w		; 69 4D 4C
	.db $F0, $02		; F0 02
	plb		; AB
	jmp $53E4.w		; 4C E4 53
	inc $60CF.w		; EE CF 60
	sty $51.b		; 84 51
	cpy $51.b		; C4 51
	.db $90, $46		; 90 46
	and $E40E20.l,X		; 3F 20 0E E4
	brk $28.b		; 00 28
	.db $F0, $F0		; F0 F0
	ora [$68.b]		; 07 68
	.db $F0, $F0		; F0 F0
	ora $3F.b,S		; 03 3F
	.db $82, $09, $CD		; 82 09 CD
	brk $3F.b		; 00 3F
	phb		; 8B
	tsb $1DE4.w		; 0C E4 1D
	.db $F0, $0C		; F0 0C
	sei		; 78
	adc $04B01C.l,X		; 7F 1C B0 04
	plb		; AB
	trb $032F.w		; 1C 2F 03
	sta $E41D00.l		; 8F 00 1D E4
	trb $0C8D.w		; 1C 8D 0C
	and $E40D90.l,X		; 3F 90 0D E4
	ora $780CF0.l,X		; 1F F0 0C 78
	adc $04B01E.l,X		; 7F 1E B0 04
	plb		; AB
	asl $032F.w,X		; 1E 2F 03
	sta $E41F00.l		; 8F 00 1F E4
	asl $1C8D.w,X		; 1E 8D 1C
	and $5F0D90.l,X		; 3F 90 0D 5F
	and $08.b,S		; 23 08
	cpx $04.b		; E4 04
	.db $F0, $12		; F0 12
	cmp $8F00.w		; CD 00 8F
	ora ($47.b,X)		; 01 47
	pea $F031.w		; F4 31 F0
	ora $3F.b,S		; 03 3F
	.db $50, $14		; 50 14
	and $0B3D.w,X		; 3D 3D 0B
	eor [$D0.b]		; 47 D0
	sbc ($5F.b,S),Y		; F3 5F
	and $08.b,S		; 23 08
	inx		; E8
	brk $8D.b		; 00 8D
	ora ($DA.b,X)		; 01 DA
	trb $8D.b		; 14 8D
	brk $F7.b		; 00 F7
	trb $C4.b		; 14 C4
	and $D7AAE8.l		; 2F E8 AA D7
	trb $77.b		; 14 77
	trb $D0.b		; 14 D0
	bit $E8.b		; 24 E8
	eor $D7.b,X		; 55 D7
	trb $77.b		; 14 77
	trb $D0.b		; 14 D0
	trb $CCE8.w		; 1C E8 CC
	cmp [$14.b],Y		; D7 14
	adc [$14.b],Y		; 77 14
	.db $D0, $14		; D0 14
	inx		; E8
	bit $14D7.w,X		; 3C D7 14
	adc [$14.b],Y		; 77 14
	.db $D0, $0C		; D0 0C
	cpx $2F.b		; E4 2F
	cmp [$14.b],Y		; D7 14
	jsr ($D5D0.w,X)		; FC D0 D5
	plb		; AB
	ora $D0.b,X		; 15 D0
	cmp ($6F.b),Y		; D1 6F
	dec A		; 3A
	jsr $F02F.w		; 20 2F F0
	dec A		; 3A
	jsr $242F.w		; 20 2F 24
	sta $E800.w		; 8D 00 E8
	brk $DA.b		; 00 DA
	jsr $00CD.w		; 20 CD 00
	inc $C5.b		; E6 C5
	brk $01.b		; 00 01
	inx		; E8
	tax		; AA
	dec $66.b		; C6 66
	.db $D0, $EA		; D0 EA
	inx		; E8
	eor $C6.b,X		; 55 C6
	ror $D0.b		; 66 D0
	cpx $E8.b		; E4 E8
	cpy $66C6.w		; CC C6 66
	.db $D0, $DE		; D0 DE
	inx		; E8
	bit $66C6.w,X		; 3C C6 66
	.db $D0, $D8		; D0 D8
	sbc $00.b		; E5 00
	ora ($AF.b,X)		; 01 AF
	iny		; C8
	.db $F0, $D0		; F0 D0
	jmp.w [$D7E8]		; DC E8 D7
	inx		; E8
	cmp [$8D.b],Y		; D7 8D
	php		; 08
	phx		; DA
	trb $8D.b		; 14 8D
	brk $CD.b		; 00 CD
	.db $80, $F7		; 80 F7
	trb $AF.b		; 14 AF
	jsr ($41AD.w,X)		; FC AD 41
	.db $D0, $F8		; D0 F8
	and $E80080.l,X		; 3F 80 00 E8
	brk $CD.b		; 00 CD
	.db $80, $AF		; 80 AF
	iny		; C8
	cmp ($D0.b,X)		; C1 D0
	xce		; FB
	cpx $20.b		; E4 20
	cmp $F6.b		; C5 F6
	brk $E4.b		; 00 E4
	and ($C5.b,X)		; 21 C5
	sbc [$00.b],Y		; F7 00
	cpx $20.b		; E4 20
	tsb $21.b		; 04 21
	.db $F0, $02		; F0 02
	cop $2A.b		; 02 2A
	adc $C531E8.l		; 6F E8 31 C5
	sbc ($00.b),Y		; F1 00
	sta $3F0003.l		; 8F 03 00 3F
	jsr $6F0E.w		; 20 0E 6F
	adc #$0900.w		; 69 00 09
	.db $F0, $3C		; F0 3C
	cpx $00.b		; E4 00
	.db $10, $38		; 10 38
	ldx #$48.b		; A2 48
	cpx $48.b		; E4 48
	sta $3F6C.w		; 8D 6C 3F
	.db $90, $0D		; 90 0D
	inx		; E8
	brk $C4.b		; 00 C4
	tsb $C4.b		; 04 C4
	adc ($8D.b,X)		; 61 8D
	bit $903F.w		; 2C 3F 90
	ora $61C4.w		; 0D C4 61
	sta $3F3C.w		; 8D 3C 3F
	.db $90, $0D		; 90 0D
	inx		; E8
	sbc $3F5C8D.l,X		; FF 8D 5C 3F
	.db $90, $0D		; 90 0D
	cpx $00.b		; E4 00
	pla		; 68
	.db $80, $F0		; 80 F0
	inc A		; 1A
	pla		; 68
	.db $90, $F0		; 90 F0
	ora ($68.b,S),Y		; 13 68
	sta ($F0.b),Y		; 91 F0
	ora #$9268.w		; 09 68 92
	.db $F0, $08		; F0 08
	pla		; 68
	sta ($F0.b,S),Y		; 93 F0
	bit $6F.b		; 24 6F
	eor $5F0A65.l,X		; 5F 65 0A 5F
	adc $0B.b,S		; 63 0B
	eor $E80917.l,X		; 5F 17 09 E8
	eor $C5.b,X		; 55 C5
	sbc $00.b,X		; F5 00
	sta $3F2A00.l		; 8F 00 2A 3F
	ora [$09.b],Y		; 17 09
	and $3F0A65.l,X		; 3F 65 0A 3F
	adc $0B.b,S		; 63 0B
	and $E409E7.l,X		; 3F E7 09 E4
	rol A		; 2A
	cmp $F5.b		; C5 F5
	brk $6F.b		; 00 6F
	sec		; 38
	sta $00E82A.l		; 8F 2A E8 00
	sta $DA00.w		; 8D 00 DA
	jsl $28028F.l		; 22 8F 02 28
	sta $8F29A0.l		; 8F A0 29 8F
	jsr $8F12.w		; 20 12 8F
	php		; 08
	ora ($8F.b,S),Y		; 13 8F
	.db $80, $10		; 80 10
	sta $3F1180.l		; 8F 80 11 3F
	tay		; A8
	asl A		; 0A
	cpx $23.b		; E4 23
	pla		; 68
	ora [$F0.b]		; 07 F0
	asl $68.b		; 06 68
	php		; 08
	.db $F0, $02		; F0 02
	.db $82, $2A, $E8		; 82 2A E8
	brk $C5.b		; 00 C5
	sbc ($00.b),Y		; F1 00
	inx		; E8
	.db $10, $C5		; 10 C5
	plx		; FA
	brk $E8.b		; 00 E8
	cop $C5.b		; 02 C5
	xce		; FB
	brk $E8.b		; 00 E8
	ora $C5.b,S		; 03 C5
	sbc ($00.b),Y		; F1 00
	sbc $FD.b		; E5 FD
	brk $F0.b		; 00 F0
	xce		; FB
	sbc $FE.b		; E5 FE
	brk $68.b		; 00 68
	php		; 08
	.db $F0, $06		; F0 06
	pla		; 68
	ora [$F0.b]		; 07 F0
	cop $A2.b		; 02 A2
	rol A		; 2A
	inx		; E8
	brk $C5.b		; 00 C5
	sbc ($00.b),Y		; F1 00
	inx		; E8
	.db $10, $C5		; 10 C5
	plx		; FA
	brk $E8.b		; 00 E8
	.db $10, $C5		; 10 C5
	jsr ($E800.w,X)		; FC 00 E8
	ora $C5.b		; 05 C5
	sbc ($00.b),Y		; F1 00
	sbc $FD.b		; E5 FD
	brk $F0.b		; 00 F0
	xce		; FB
	sbc $FF.b		; E5 FF
	brk $68.b		; 00 68
	php		; 08
	.db $F0, $06		; F0 06
	pla		; 68
	ora [$F0.b]		; 07 F0
	cop $C2.b		; 02 C2
	rol A		; 2A
	cpx $2A.b		; E4 2A
	plp		; 28
	.db $70, $C5		; 70 C5
	sbc [$00.b],Y		; F7 00
	adc $8D00E8.l		; 6F E8 00 8D
	brk $DA.b		; 00 DA
	jsl $28018F.l		; 22 8F 01 28
	sta $8F297F.l		; 8F 7F 29 8F
	rti		; 40

	ora ($8F.b)		; 12 8F
	ora #$8F13.w		; 09 13 8F
	adc $878F10.l,X		; 7F 10 8F 87
	ora ($3F.b),Y		; 11 3F
	tay		; A8
	asl A		; 0A
	sta $8F280E.l		; 8F 0E 28 8F
	.db $80, $29		; 80 29
	sta $8F1201.l		; 8F 01 12 8F
	adc ($13.b),Y		; 71 13
	sta $8F1080.l		; 8F 80 10 8F
	.db $F0, $11		; F0 11
	and $E40AA8.l,X		; 3F A8 0A E4
	jsl $00F6C5.l		; 22 C5 F6 00
	cpx $23.b		; E4 23
	cmp $F7.b		; C5 F7
	brk $E4.b		; 00 E4
	jsl $F02304.l		; 22 04 23 F0
	cop $22.b		; 02 22
	rol A		; 2A
	adc $E448A2.l		; 6F A2 48 E4
	pha		; 48
	sta $3F6C.w		; 8D 6C 3F
	.db $90, $0D		; 90 0D
	inx		; E8
	brk $8D.b		; 00 8D
	eor $903F.w		; 4D 3F 90
	ora $00E8.w		; 0D E8 00
	sta $3F0D.w		; 8D 0D 3F
	.db $90, $0D		; 90 0D
	cpx $28.b		; E4 28
	sta $3F7D.w		; 8D 7D 3F
	.db $90, $0D		; 90 0D
	cpx $29.b		; E4 29
	sta $3F6D.w		; 8D 6D 3F
	.db $90, $0D		; 90 0D
	and $E80B4F.l,X		; 3F 4F 0B E8
	brk $C5.b		; 00 C5
	sbc ($00.b),Y		; F1 00
	inx		; E8
	.db $10, $C5		; 10 C5
	plx		; FA
	brk $E8.b		; 00 E8
	ora ($C5.b,X)		; 01 C5
	sbc ($00.b),Y		; F1 00
	sbc $FD.b		; E5 FD
	brk $F0.b		; 00 F0
	xce		; FB
	ror $F812.w		; 6E 12 F8
	lda ($48.b)		; B2 48
	cpx $48.b		; E4 48
	sta $3F6C.w		; 8D 6C 3F
	.db $90, $0D		; 90 0D
	sbc $FD.b		; E5 FD
	brk $F0.b		; 00 F0
	xce		; FB
	ror $F813.w		; 6E 13 F8
	ldx #$48.b		; A2 48
	cpx $48.b		; E4 48
	sta $3F6C.w		; 8D 6C 3F
	.db $90, $0D		; 90 0D
	inx		; E8
	ora ($8D.b,X)		; 01 8D
	adc $903F.w,X		; 7D 3F 90
	ora $C0E8.w		; 0D E8 C0
	sta $3F6D.w		; 8D 6D 3F
	.db $90, $0D		; 90 0D
	inx		; E8
	brk $8D.b		; 00 8D
	adc $8D14DA.l,X		; 7F DA 14 8D
	brk $2F.b		; 00 2F
	ora $14F7.w		; 0D F7 14
	pla		; 68
	dey		; 88
	.db $F0, $02		; F0 02
	dec A		; 3A
	jsl $F5D0FC.l		; 22 FC D0 F5
	plb		; AB
	ora $69.b,X		; 15 69
	.db $10, $15		; 10 15
	.db $D0, $EE		; D0 EE
	and $14F70B.l		; 2F 0B F7 14
	.db $F0, $02		; F0 02
	dec A		; 3A
	jsl $F7D0FC.l		; 22 FC D0 F7
	plb		; AB
	ora $69.b,X		; 15 69
	ora ($15.b),Y		; 11 15
	.db $D0, $F0		; D0 F0
	sbc [$14.b],Y		; F7 14
	pla		; 68
	dey		; 88
	.db $F0, $02		; F0 02
	dec A		; 3A
	jsl $F5D0FC.l		; 22 FC D0 F5
	plb		; AB
	ora $E4.b,X		; 15 E4
	ora $D0.b,X		; 15 D0
	sbc $00E86F.l		; EF 6F E8 00
	sta $DA7F.w		; 8D 7F DA
	trb $E8.b		; 14 E8
	dey		; 88
	sta $D700.w		; 8D 00 D7
	trb $FC.b		; 14 FC
	.db $D0, $FB		; D0 FB
	plb		; AB
	ora $D0.b,X		; 15 D0
	sbc [$6F.b],Y		; F7 6F
	sta $CD2C00.l		; 8F 00 2C CD
	brk $8D.b		; 00 8D
	brk $3F.b		; 00 3F
	adc $018D0C.l,X		; 7F 0C 8D 01
	and $CD0C7F.l,X		; 3F 7F 0C CD
	sbc #$058D.w		; E9 8D 05
	and $CD0C7F.l,X		; 3F 7F 0C CD
	ror $068D.w,X		; 7E 8D 06
	and $8D0C7F.l,X		; 3F 7F 0C 8D
	brk $F6.b		; 00 F6
	sbc $289F0B.l,X		; FF 0B 9F 28
	ora [$5D.b]		; 07 5D
	sbc $F7.b,X		; F5 F7
	phd		; 0B
	dec $80.b,X		; D6 80
	ora [$5C.b]		; 07 5C
	stx $FF.b,Y		; 96 FF
	phd		; 0B
	dec $00.b,X		; D6 00
	ora [$FC.b]		; 07 FC
	.db $10, $E9		; 10 E9
	inx		; E8
	brk $C5.b		; 00 C5
	sbc ($00.b),Y		; F1 00
	inx		; E8
	rti		; 40

	cmp $FC.b		; C5 FC
	brk $E8.b		; 00 E8
	ora $C5.b		; 05 C5
	sbc ($00.b),Y		; F1 00
	inx		; E8
	brk $8D.b		; 00 8D
	jmp $0D903F.l		; 5C 3F 90 0D
	sbc $FF.b		; E5 FF
	brk $F0.b		; 00 F0
	xce		; FB
	inx		; E8
	sbc $3F4C8D.l,X		; FF 8D 4C 3F
	.db $90, $0D		; 90 0D
	sta $8D1400.l		; 8F 00 14 8D
	brk $CD.b		; 00 CD
	php		; 08
	sta $8F1580.l		; 8F 80 15 8F
	ora ($47.b,X)		; 01 47
	sbc $FF.b		; E5 FF
	brk $F0.b		; 00 F0
	xce		; FB
	cmp #$00F2.w		; C9 F2 00
	inc $00.b,X		; F6 00
	ora [$80.b]		; 07 80
	lda $F3.b		; A5 F3
	brk $90.b		; 00 90
	ora $76.b		; 05 76
	.db $80, $07		; 80 07
	.db $90, $03		; 90 03
	ora #$2C47.w		; 09 47 2C
	phd		; 0B
	eor [$7D.b]		; 47 7D
	rts		; 60

	dey		; 88
	.db $10, $5D		; 10 5D
	.db $10, $E3		; 10 E3
	jsr ($D310.w,X)		; FC 10 D3
	cpx $2C.b		; E4 2C
	cmp $F6.b		; C5 F6
	brk $F0.b		; 00 F0
	cop $42.b		; 02 42
	rol A		; 2A
	adc $0A0808.l		; 6F 08 08 0A
	tsb $0E0C.w		; 0C 0C 0E
	.db $10, $10		; 10 10
	cop $04.b		; 02 04
	asl $08.b		; 06 08
	asl A		; 0A
	tsb $100E.w		; 0C 0E 10
	ora ($14.b)		; 12 14
	asl $18.b,X		; 16 18
	inc A		; 1A
	trb $201E.w		; 1C 1E 20
	jsl $282624.l		; 22 24 26 28
	rol A		; 2A
	bit $302E.w		; 2C 2E 30
	and ($34.b)		; 32 34
	rol $38.b,X		; 36 38
	dec A		; 3A
	bit $403E.w,X		; 3C 3E 40
	.db $42, $44		; 42 44
	lsr $48.b		; 46 48
	lsr A		; 4A
	jmp $504E.w		; 4C 4E 50
	eor ($54.b)		; 52 54
	lsr $58.b,X		; 56 58
	phy		; 5A
	jmp $62605E.l		; 5C 5E 60 62
	stz $66.b		; 64 66
	pla		; 68
	ror A		; 6A
	jmp ($706E.w)		; 6C 6E 70
	adc ($74.b)		; 72 74
	ror $78.b,X		; 76 78
	ply		; 7A
	jmp ($767A.w,X)		; 7C 7A 76
	adc ($6E.b)		; 72 6E
	rtl		; 6B

	adc [$64.b]		; 67 64
	rts		; 60

	eor $575A.w,X		; 5D 5A 57
	mvn $4E,$51		; 54 51 4E
	jmp $4749.w		; 4C 49 47
	mvp $3F,$42		; 44 42 3F
	tsa		; 3B
	and [$33.b],Y		; 37 33
	and $26292C.l		; 2F 2C 29 26
	and $20.b,S		; 23 20
	asl $1A1C.w,X		; 1E 1C 1A
	clc		; 18
	asl $14.b,X		; 16 14
	ora ($10.b)		; 12 10
	ora $0C0D0E.l		; 0F 0E 0D 0C
	phd		; 0B
	asl A		; 0A
	ora #$0708.w		; 09 08 07
	asl $05.b		; 06 05
	tsb $03.b		; 04 03
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $903F.w,X		; 7D 3F 90
	ora $60DD.w		; 0D DD 60
	dey		; 88
	.db $10, $FD		; 10 FD
	.db $10, $F5		; 10 F5
	adc $D504F4.l		; 6F F4 04 D5
	pea $F500.w		; F4 00 F5
	pea $7500.w		; F4 00 75
	pea $D000.w		; F4 00 D0
	sed		; F8
	pei ($00.b)		; D4 00
	adc $90CAAD.l		; 6F AD CA 90
	ora $3F.b		; 05 3F
	phb		; 8B
	ora $ADA48D.l		; 0F 8D A4 AD
	iny		; C8
	.db $B0, $F2		; B0 F2
	cpx $1A.b		; E4 1A
	bit $47.b		; 24 47
	.db $D0, $EC		; D0 EC
	cmp $7F28.w,X		; DD 28 7F
	rts		; 60

	sty $50.b		; 84 50
	rts		; 60

	sta $F0.b,X		; 95 F0
	cop $D5.b		; 02 D5
	adc ($03.b,X)		; 61 03
	sbc $81.b,X		; F5 81
	ora $D5.b,S		; 03 D5
	rts		; 60

	ora $F5.b,S		; 03 F5
	lda ($02.b),Y		; B1 02
	jmp $7C00E8.l		; 5C E8 00 7C
	cmp $A0.b,X		; D5 A0
	cop $E8.b		; 02 E8
	brk $D4.b		; 00 D4
	.db $B0, $D5		; B0 D5
	brk $01.b		; 00 01
	cmp $D0.b,X		; D5 D0
	cop $D4.b		; 02 D4
	cpy #$09.b		; C0 09
	eor [$5E.b]		; 47 5E
	ora #$4547.w		; 09 47 45
	sbc $80.b,X		; F5 80
	cop $D4.b		; 02 D4
	ldy #$F0.b		; A0 F0
	asl $81F5.w,X		; 1E F5 81
	cop $D4.b		; 02 D4
	lda ($F5.b,X)		; A1 F5
	.db $90, $02		; 90 02
	.db $D0, $0A		; D0 0A
	sbc $61.b,X		; F5 61
	ora $80.b,S		; 03 80
	lda $91.b,X		; B5 91
	cop $D5.b		; 02 D5
	adc ($03.b,X)		; 61 03
	sbc $91.b,X		; F5 91
	cop $60.b		; 02 60
	sta $61.b,X		; 95 61
	ora $3F.b,S		; 03 3F
	ora $3F12.w,X		; 1D 12 3F
	and $12.b,X		; 35 12
	sta $E400.w		; 8D 00 E4
	ora ($80.b),Y		; 11 80
	tay		; A8
	bit $B0.b,X		; 34 B0
	ora #$11E4.w		; 09 E4 11
	.db $80, $A8		; 80 A8
	ora ($B0.b,S),Y		; 13 B0
	asl $DC.b		; 06 DC
	trb $107A.w		; 1C 7A 10
	phx		; DA
	.db $10, $4D		; 10 4D
	cpx $11.b		; E4 11
	trb $008D.w		; 1C 8D 00
	cmp $9E18.w		; CD 18 9E
	eor $3DF6.w,X		; 5D F6 3D
	ora $C4.b,X		; 15 C4
	ora $F6.b,X		; 15 F6
	bit $C415.w,X		; 3C 15 C4
	trb $F6.b		; 14 F6
	and $F62D15.l,X		; 3F 15 2D F6
	rol $EE15.w,X		; 3E 15 EE
	txs		; 9A
	trb $EB.b		; 14 EB
	.db $10, $CF		; 10 CF
	cmp $008D.w,X		; DD 8D 00
	ply		; 7A
	trb $CB.b		; 14 CB
	ora $1C.b,X		; 15 1C
	pld		; 2B
	ora $C4.b,X		; 15 C4
	trb $2F.b		; 14 2F
	tsb $4B.b		; 04 4B
	ora $7C.b,X		; 15 7C
	and $06C8.w,X		; 3D C8 06
	.db $D0, $F8		; D0 F8
	cpy $14.b		; C4 14
	dec $20F5.w		; CE F5 20
	cop $EB.b		; 02 EB
	ora $CF.b,X		; 15 CF
	phx		; DA
	asl $F5.b,X		; 16 F5
	jsr $EB02.w		; 20 02 EB
	trb $CF.b		; 14 CF
	adc $21F5.w		; 6D F5 21
	cop $EB.b		; 02 EB
	trb $CF.b		; 14 CF
	ply		; 7A
	asl $DA.b,X		; 16 DA
	asl $F5.b,X		; 16 F5
	and ($02.b,X)		; 21 02
	xba		; EB
	ora $CF.b,X		; 15 CF
	sbc $7AAE.w,X		; FD AE 7A
	asl $DA.b,X		; 16 DA
	asl $7D.b,X		; 16 7D
	sta $02085C.l,X		; 9F 5C 08 02
	sbc $16E4.w,X		; FD E4 16
	and $FC0D88.l,X		; 3F 88 0D FC
	cpx $17.b		; E4 17
	and $47E4.w		; 2D E4 47
	bit $1A.b		; 24 1A
	ldx $06D0.w		; AE D0 06
	cpy $00F2.w		; CC F2 00
	cmp $F3.b		; C5 F3
	brk $6F.b		; 00 6F
	cpy $1D.b		; C4 1D
	cpy $1F.b		; C4 1F
	sta $8F1C60.l		; 8F 60 1C 8F
	rts		; 60

	asl $3CE8.w,X		; 1E E8 3C
	sta $3F5D.w		; 8D 5D 3F
	.db $90, $0D		; 90 0D
	adc $F7008D.l		; 6F 8D 00 F7
	rti		; 40

	dec A		; 3A
	rti		; 40

	and $40F7.w		; 2D F7 40
	dec A		; 3A
	rti		; 40

	sbc $6FAE.w,X		; FD AE 6F
	and $C43F18.l,X		; 3F 18 3F C4
	php		; 08
	sbc $0110.w,X		; FD 10 01
	adc $1C04C4.l		; 6F C4 04 1C
	eor $55F5.w,X		; 5D F5 55
	ora $FD.b,X		; 15 FD
	sbc $54.b,X		; F5 54
	ora $DA.b,X		; 15 DA
	rti		; 40

	tsb $41.b		; 04 41
	.db $D0, $06		; D0 06
	cpy $04.b		; C4 04
	sbc $113F.w,X		; FD 3F 11
	ora ($8F.b),Y		; 11 8F
	cop $0C.b		; 02 0C
	cpx $1A.b		; E4 1A
	pha		; 48
	sbc $00460E.l,X		; FF 0E 46 00
	adc $8F0ECD.l		; 6F CD 0E 8F
	.db $80, $47		; 80 47
	inx		; E8
	sbc $0301D5.l,X		; FF D5 01 03
	inx		; E8
	asl A		; 0A
	and $D50FE4.l,X		; 3F E4 0F D5
	ora ($02.b),Y		; 11 02
	cmp $81.b,X		; D5 81
	ora $D5.b,S		; 03 D5
	.db $F0, $02		; F0 02
	cmp $80.b,X		; D5 80
	cop $D5.b		; 02 D5
	brk $04.b		; 00 04
	pei ($B1.b)		; D4 B1
	pei ($C1.b)		; D4 C1
	ora $4B1D.w,X		; 1D 1D 4B
	eor [$D0.b]		; 47 D0
	cmp $5AC4.w,X		; DD C4 5A
	cpy $68.b		; C4 68
	cpy $54.b		; C4 54
	cpy $50.b		; C4 50
	cpy $42.b		; C4 42
	cpy $5F.b		; C4 5F
	and $8F0D97.l,X		; 3F 97 0D 8F
	cpy #$59.b		; C0 59
	sta $6F5320.l		; 8F 20 53 6F
	xba		; EB
	php		; 08
	wai		; CB
	ora #$00E4.w		; 09 E4 00
	cpy $08.b		; C4 08
	pla		; 68
	.db $F0, $F0		; F0 F0
	ldx $F168.w		; AE 68 F1
	.db $F0, $08		; F0 08
	pla		; 68
	sbc $7E83F0.l,X		; FF F0 83 7E
	brk $D0.b		; 00 D0
	sty $E4.b		; 84 E4
	tsb $F0.b		; 04 F0
	sbc $E4.b,S		; E3 E4
	tsb $5DF0.w		; 0C F0 5D
	ror $9F0C.w		; 6E 0C 9F
	and $D00DA9.l,X		; 3F A9 0D D0
	and $FD.b		; 25 FD
	.db $D0, $03		; D0 03
	eor $680DC0.l,X		; 5F C0 0D 68
	.db $80, $F0		; 80 F0
	asl $68.b		; 06 68
	sta ($D0.b,X)		; 81 D0
	asl $E8.b		; 06 E8
	brk $C4.b		; 00 C4
	tas		; 1B
	and $428BE7.l		; 2F E7 8B 42
	.db $10, $02		; 10 02
	cpy $42.b		; C4 42
	and $F80DA9.l,X		; 3F A9 0D F8
	.db $42, $F0		; 42 F0
	phx		; DA
	phx		; DA
	rti		; 40

	and $16DAD6.l		; 2F D6 DA 16
	sta $F70F.w		; 8D 0F F7
	asl $D6.b,X		; 16 D6
	.db $30, $00		; 30 00
	jmp.w [$F810]		; DC 10 F8
	cmp $8F00.w		; CD 00 8F
	ora ($47.b,X)		; 01 47
	pea $F031.w		; F4 31 F0
	asl A		; 0A
	sbc $11.b,X		; F5 11
	cop $D0.b		; 02 D0
	ora $E8.b		; 05 E8
	brk $3F.b		; 00 3F
	phb		; 8B
	ora $D400E8.l		; 0F E8 00 D4
	.db $80, $D4		; 80 D4
	.db $90, $D4		; 90 D4
	sta ($BC.b),Y		; 91 BC
	pei ($70.b)		; D4 70
	and $0B3D.w,X		; 3D 3D 0B
	eor [$D0.b]		; 47 D0
	sbc ($CD.b,X)		; E1 CD
	brk $D8.b		; 00 D8
	lsr $018F.w,X		; 5E 8F 01
	eor [$D8.b]		; 47 D8
	mvp $31,$F4		; 44 F4 31
	.db $F0, $72		; F0 72
	txy		; 9B
	.db $70, $D0		; 70 D0
	stz $3F.b		; 64 3F
	sta ($0F.b,X)		; 81 0F
	.db $D0, $17		; D0 17
	pea $F080.w		; F4 80 F0
	sty $D23F.w		; 8C 3F D2
	.db $10, $9B		; 10 9B
	.db $80, $D0		; 80 D0
	.db $F0, $F5		; F0 F5
	.db $30, $02		; 30 02
	pei ($30.b)		; D4 30
	sbc $31.b,X		; F5 31
	cop $D4.b		; 02 D4
	and ($2F.b),Y		; 31 2F
	cpx $30.b		; E4 30
	jsr $00D5.w		; 20 D5 00
	cop $3F.b		; 02 3F
	sta ($0F.b,X)		; 81 0F
	.db $30, $18		; 30 18
	and $289F.w		; 2D 9F 28
	ora [$FD.b]		; 07 FD
	inc $00.b,X		; F6 00
	and $0201D5.l,X		; 3F D5 01 02
	ldx $0F28.w		; AE 28 0F
	sbc $08F6.w,X		; FD F6 08
	and $0210D5.l,X		; 3F D5 10 02
	and $680F81.l,X		; 3F 81 0F 68
	dec $0590.w,X		; DE 90 05
	and $2F0F6F.l,X		; 3F 6F 0F 2F
	lda $00F5.w,Y		; B9 F5 00
	tsb $04.b		; 04 04
	tas		; 1B
	.db $D0, $04		; D0 04
	cmp $9B3F.w,X		; DD 3F 9B
	tsb $00F5.w		; 0C F5 00
	cop $D4.b		; 02 D4
	.db $70, $FD		; 70 FD
	sbc $01.b,X		; F5 01
	cop $CF.b		; 02 CF
	cmp $01D0.w,X		; DD D0 01
	ldy $71D4.w,X		; BC D4 71
	and $1BE407.l		; 2F 07 E4 1B
	.db $D0, $06		; D0 06
	and $3F1379.l,X		; 3F 79 13 3F
	sbc $3D11.w,X		; FD 11 3D
	and $470B.w,X		; 3D 0B 47
	.db $D0, $82		; D0 82
	cpx $54.b		; E4 54
	.db $F0, $0B		; F0 0B
	tsx		; BA
	lsr $7A.b,X		; 56 7A
	eor ($6E.b)		; 52 6E
	mvn $BA,$02		; 54 02 BA
	mvn $52,$DA		; 54 DA 52
	cpx $68.b		; E4 68
	.db $F0, $15		; F0 15
	tsx		; BA
	stz $7A.b		; 64 7A
	rts		; 60

	phx		; DA
	rts		; 60

	tsx		; BA
	ror $7A.b		; 66 7A
	.db $62, $6E, $68		; 62 6E 68
	asl $BA.b		; 06 BA
	pla		; 68
	phx		; DA
	rts		; 60

	xba		; EB
	ror A		; 6A
	phx		; DA
	.db $62, $E4, $5A		; 62 E4 5A
	.db $F0, $0E		; F0 0E
	tsx		; BA
	jmp $6E587A.l		; 5C 7A 58 6E
	phy		; 5A
	cop $BA.b		; 02 BA
	phy		; 5A
	phx		; DA
	cli		; 58
	sta $CD5EFF.l		; 8F FF 5E CD
	brk $8F.b		; 00 8F
	ora ($47.b,X)		; 01 47
	pea $F031.w		; F4 31 F0
	ora $3F.b,S		; 03 3F
.INDEX 16
	rep #$12		; C2 12
	and $0B3D.w,X		; 3D 3D 0B
	eor [$D0.b]		; 47 D0
	sbc ($6F.b,S),Y		; F3 6F
	trb $F6FD.w		; 1C FD F6
	lda ($11.b,X)		; A1 11
	and $A0F6.w		; 2D F6 A0
	ora ($2D.b),Y		; 11 2D
	cmp $FD5C.w,X		; DD 5C FD
	inc $42.b,X		; F6 42
	ora ($F0.b)		; 12 F0
	php		; 08
	sbc [$30.b]		; E7 30
	tyx		; BB
	.db $30, $D0		; 30 D0
	cop $BB.b		; 02 BB
	and ($FD.b),Y		; 31 FD
	adc $0211D5.l		; 6F D5 11 02
	sbc $0610.w,X		; FD 10 06
	.db $80, $A8		; 80 A8
	dex		; CA
	rts		; 60

	sty $5F.b		; 84 5F
	sta $CF06.w		; 8D 06 CF
	phx		; DA
	trb $60.b		; 14 60
	tya		; 98
	brk $14.b		; 00 14
	tya		; 98
	rol $E415.w,X		; 3E 15 E4
	inc A		; 1A
	bit $47.b		; 24 47
	.db $D0, $3A		; D0 3A
	eor $9F7D.w		; 4D 7D 9F
	jmp $5D0408.l		; 5C 08 04 5D
	sta $F700.w		; 8D 00 F7
	trb $10.b		; 14 10
	asl $1F28.w		; 0E 28 1F
	sec		; 38
	jsr $0E48.w		; 20 48 0E
	pha		; 48
	brk $09.b		; 00 09
	eor [$49.b]		; 47 49
	cmp $072F.w,X		; DD 2F 07
	cpx $47.b		; E4 47
	lsr $0049.w		; 4E 49 00
	sbc [$14.b],Y		; F7 14
	cmp #$00F2.w		; C9 F2 00
	cmp $F3.b		; C5 F3
	brk $3D.b		; 00 3D
	jsr ($04AD.w,X)		; FC AD 04
	.db $D0, $F2		; D0 F2
	dec $14F7.w		; CE F7 14
	cmp $21.b,X		; D5 21
	cop $FC.b		; 02 FC
	sbc [$14.b],Y		; F7 14
	cmp $20.b,X		; D5 20
	cop $6F.b		; 02 6F
	cmp $51.b,X		; D5 51
	ora $28.b,S		; 03 28
	ora $0331D5.l,X		; 1F D5 31 03
	inx		; E8
	brk $D5.b		; 00 D5
	.db $30, $03		; 30 03
	adc $2D91D4.l		; 6F D4 91 2D
	and $D50F81.l,X		; 3F 81 0F D5
	.db $50, $03		; 50 03
	.db $80, $B5		; 80 B5
	and ($03.b),Y		; 31 03
	dec $403F.w		; CE 3F 40
	ora ($D5.b)		; 12 D5
	rti		; 40

	ora $DD.b,S		; 03 DD
	cmp $41.b,X		; D5 41
	ora $6F.b,S		; 03 6F
	cmp $B0.b,X		; D5 B0
	cop $3F.b		; 02 3F
	sta ($0F.b,X)		; 81 0F
	cmp $A1.b,X		; D5 A1
	cop $3F.b		; 02 3F
	sta ($0F.b,X)		; 81 0F
	pei ($B1.b)		; D4 B1
	cmp $C1.b,X		; D5 C1
	cop $E8.b		; 02 E8
	brk $D5.b		; 00 D5
	lda ($02.b),Y		; B1 02
	adc $02B1D5.l		; 6F D5 B1 02
	and $008D.w		; 2D 8D 00
	pea $CEB1.w		; F4 B1 CE
	stz $44F8.w,X		; 9E F8 44
	cmp $C0.b,X		; D5 C0
	cop $6F.b		; 02 6F
	inx		; E8
	brk $DA.b		; 00 DA
	cli		; 58
	adc $3F5AC4.l		; 6F C4 5A 3F
	sta ($0F.b,X)		; 81 0F
	cpy $5B.b		; C4 5B
	.db $80, $A4		; 80 A4
	eor $5AF8.w,Y		; 59 F8 5A
	and $DA1240.l,X		; 3F 40 12 DA
	jmp $00E86F.l		; 5C 6F E8 00
	phx		; DA
	eor ($6F.b)		; 52 6F
	cpy $54.b		; C4 54
	and $C40F81.l,X		; 3F 81 0F C4
	eor $80.b,X		; 55 80
	ldy $53.b		; A4 53
	sed		; F8
	mvn $40,$3F		; 54 3F 40
	ora ($DA.b)		; 12 DA
	lsr $6F.b,X		; 56 6F
	cpy $50.b		; C4 50
	adc $02F0D5.l		; 6F D5 F0 02
	adc $02E0D5.l		; 6F D5 E0 02
	and $D50F81.l,X		; 3F 81 0F D5
	cmp ($02.b),Y		; D1 02
	and $D40F81.l,X		; 3F 81 0F D4
	cmp ($6F.b,X)		; C1 6F
	inx		; E8
	ora ($2F.b,X)		; 01 2F
	cop $E8.b		; 02 E8
	brk $D5.b		; 00 D5
	.db $90, $02		; 90 02
	cmp $81D5.w,X		; DD D5 81
	cop $3F.b		; 02 3F
	sta ($0F.b,X)		; 81 0F
	cmp $80.b,X		; D5 80
	cop $3F.b		; 02 3F
	sta ($0F.b,X)		; 81 0F
	cmp $91.b,X		; D5 91
	cop $6F.b		; 02 6F
	cmp $80.b,X		; D5 80
	cop $6F.b		; 02 6F
	cmp $01.b,X		; D5 01
	ora $E8.b,S		; 03 E8
	brk $D5.b		; 00 D5
	brk $03.b		; 00 03
	adc $2D90D4.l		; 6F D4 90 2D
	and $D50F81.l,X		; 3F 81 0F D5
	jsr $8003.w		; 20 03 80
	lda $01.b,X		; B5 01
	ora $CE.b,S		; 03 CE
	and $D51240.l,X		; 3F 40 12 D5
	.db $10, $03		; 10 03
	cmp $11D5.w,X		; DD D5 11
	ora $6F.b,S		; 03 6F
	cmp $81.b,X		; D5 81
	ora $6F.b,S		; 03 6F
	cmp $40.b,X		; D5 40
	cop $3F.b		; 02 3F
	sta ($0F.b,X)		; 81 0F
	cmp $41.b,X		; D5 41
	cop $3F.b		; 02 3F
	sta ($0F.b,X)		; 81 0F
	pei ($80.b)		; D4 80
	pea $D530.w		; F4 30 D5
	.db $30, $02		; 30 02
	pea $D531.w		; F4 31 D5
	and ($02.b),Y		; 31 02
	sbc $40.b,X		; F5 40
	cop $D4.b		; 02 D4
	.db $30, $F5		; 30 F5
	eor ($02.b,X)		; 41 02
	pei ($31.b)		; D4 31
	adc $3F4AC4.l		; 6F C4 4A 3F
	sta ($0F.b,X)		; 81 0F
	inx		; E8
	brk $DA.b		; 00 DA
	rts		; 60

	and $E80F81.l,X		; 3F 81 0F E8
	brk $DA.b		; 00 DA
	.db $62, $B2, $48		; 62 B2 48
	adc $3F68C4.l		; 6F C4 68 3F
	sta ($0F.b,X)		; 81 0F
	cpy $69.b		; C4 69
	.db $80, $A4		; 80 A4
	adc ($F8.b,X)		; 61 F8
	pla		; 68
	and $DA1240.l,X		; 3F 40 12 DA
	stz $3F.b		; 64 3F
	sta ($0F.b,X)		; 81 0F
	cpy $6A.b		; C4 6A
	.db $80, $A4		; 80 A4
	adc $F8.b,S		; 63 F8
	pla		; 68
	and $DA1240.l,X		; 3F 40 12 DA
	ror $6F.b		; 66 6F
	phx		; DA
	rts		; 60

	phx		; DA
	.db $62, $A2, $48		; 62 A2 48
	adc $113A3F.l		; 6F 3F 3A 11
	and $C40F81.l,X		; 3F 81 0F C4
	lsr $813F.w		; 4E 3F 81
	ora $CF088D.l		; 0F 8D 08 CF
	eor $0F8D.w,X		; 5D 8D 0F
	sbc $08.b,X		; F5 08
	ora $3F.b,X		; 15 3F
	.db $90, $0D		; 90 0D
	and $60DD.w,X		; 3D DD 60
	dey		; 88
	.db $10, $FD		; 10 FD
	.db $10, $F2		; 10 F2
	sed		; F8
	mvp $C4,$6F		; 44 6F C4
	eor $7D8D.w		; 4D 8D 7D
	cpy $00F2.w		; CC F2 00
	sbc $F3.b		; E5 F3
	brk $64.b		; 00 64
	eor $2BF0.w		; 4D F0 2B
	plp		; 28
	ora $F3FF48.l		; 0F 48 FF F3
	jmp $6003.w		; 4C 03 60
	sty $4C.b		; 84 4C
	cpy $4C.b		; C4 4C
	sta $F604.w		; 8D 04 F6
	and [$15.b]		; 27 15
	cmp $F2.b		; C5 F2
	brk $E8.b		; 00 E8
	brk $C5.b		; 00 C5
	sbc ($00.b,S),Y		; F3 00
	inc $E4F3.w,X		; FE F3 E4
	pha		; 48
	php		; 08
	jsr $6C8D.w		; 20 8D 6C
	and $E40D90.l,X		; 3F 90 0D E4
	eor $7D8D.w		; 4D 8D 7D
	and $1C0D90.l,X		; 3F 90 0D 1C
	trb $481C.w		; 1C 1C 48
	sbc $D08880.l,X		; FF 80 88 D0
	sta $5F6D.w		; 8D 6D 5F
	.db $90, $0D		; 90 0D
	cpy $5F.b		; C4 5F
	adc $D01CC4.l		; 6F C4 1C D0
	tsb $AB.b		; 04 AB
	ora $072F.w,X		; 1D 2F 07
	pla		; 68
	sbc $8F03D0.l,X		; FF D0 03 8F
	brk $1C.b		; 00 1C
	and $C40F81.l,X		; 3F 81 0F C4
	asl $03D0.w,X		; 1E D0 03
	plb		; AB
	ora $FF686F.l,X		; 1F 6F 68 FF
	.db $D0, $03		; D0 03
	sta $6F1E00.l		; 8F 00 1E 6F
	plp		; 28
	ora $482038.l,X		; 1F 38 20 48
	asl $0048.w		; 0E 48 00
	ora #$4947.w		; 09 47 49
	adc $8DC3E8.l		; 6F E8 C3 8D
	eor $903F.w,X		; 5D 3F 90
	ora $3C8D.w		; 0D 8D 3C
	inx		; E8
	brk $DA.b		; 00 DA
	trb $8D.b		; 14 8D
	cmp $E8.b,S		; C3 E8
	brk $DA.b		; 00 DA
	plp		; 28
	sta $F700.w		; 8D 00 F7
	trb $60.b		; 14 60
	dey		; 88
	sbc $FC28D7.l,X		; FF D7 28 FC
	sbc [$14.b],Y		; F7 14
	dey		; 88
	sta $FC28D7.l,X		; 9F D7 28 FC
	lda $D00C.w		; AD 0C D0
	sbc $408D.w		; ED 8D 40
	inx		; E8
	brk $DA.b		; 00 DA
	trb $8D.b		; 14 8D
	cmp $DAFFE8.l,X		; DF E8 FF DA
	plp		; 28
	sta $F700.w		; 8D 00 F7
	trb $D7.b		; 14 D7
	plp		; 28
	jsr ($F9D0.w,X)		; FC D0 F9
	adc $0F833F.l		; 6F 3F 83 0F
	adc $00D5BC.l		; 6F BC D5 00
	tsb $6F.b		; 04 6F
	ldy $1BC4.w,X		; BC C4 1B
	eor $F40DDA.l,X		; 5F DA 0D F4
	ldy #$33D0.w		; A0 D0 33
	sbc [$30.b]		; E7 30
	pla		; 68
	sbc [$D0.b],Y		; F7 D0
	and $833F.w		; 2D 3F 83
	ora $0F813F.l		; 0F 3F 81 0F
	pei ($A1.b)		; D4 A1
	and $D40F81.l,X		; 3F 81 0F D4
	ldy #$813F.w		; A0 3F 81
	ora $508460.l		; 0F 60 84 50
	sta $F0.b,X		; 95 F0
	cop $28.b		; 02 28
	adc $0380D5.l,X		; 7F D5 80 03
	.db $80, $B5		; 80 B5
	adc ($03.b,X)		; 61 03
	xce		; FB
	ldy #$CE6D.w		; A0 6D CE
	and $D51240.l,X		; 3F 40 12 D5
	.db $70, $03		; 70 03
	cmp $71D5.w,X		; DD D5 71
	ora $6F.b,S		; 03 6F
	sbc $61.b,X		; F5 61
	ora $C4.b,S		; 03 C4
	ora ($F5.b),Y		; 11 F5
	rts		; 60

	ora $C4.b,S		; 03 C4
	.db $10, $6F		; 10 6F
	sbc $126B.w		; ED 6B 12
	.db $10, $03		; 10 03
	pha		; 48
	sbc $008DBC.l,X		; FF BC 8D 00
	stz $E82D.w,X		; 9E 2D E8
	brk $9E.b		; 00 9E
	inc $44F8.w		; EE F8 44
	sbc ($12.b,S),Y		; F3 12
	asl $DA.b		; 06 DA
	trb $BA.b		; 14 BA
	asl $149A.w		; 0E 9A 14
	adc $E40F8B.l		; 6F 8B 0F E4
	ora $0B0FF2.l		; 0F F2 0F 0B
	.db $10, $17		; 10 17
	.db $10, $32		; 10 32
	.db $10, $37		; 10 37
	.db $10, $49		; 10 49
	.db $10, $4E		; 10 4E
	.db $10, $60		; 10 60
	.db $10, $63		; 10 63
	.db $10, $67		; 10 67
	.db $10, $73		; 10 73
	.db $10, $94		; 10 94
	.db $10, $9D		; 10 9D
	.db $10, $BA		; 10 BA
	.db $10, $22		; 10 22
	.db $10, $76		; 10 76
	.db $10, $7A		; 10 7A
	.db $10, $90		; 10 90
	.db $10, $B6		; 10 B6
	.db $10, $DD		; 10 DD
	.db $10, $11		; 10 11
	ora ($18.b),Y		; 11 18
	ora ($F0.b),Y		; 11 F0
	.db $10, $0D		; 10 0D
	ora ($80.b)		; 12 80
	ora ($EE.b),Y		; 11 EE
	ora ($F2.b),Y		; 11 F2
	ora ($F7.b),Y		; 11 F7
	ora ($F8.b),Y		; 11 F8
	ora ($83.b),Y		; 11 83
	ora ($A4.b),Y		; 11 A4
	ora ($B0.b),Y		; 11 B0
	ora ($01.b),Y		; 11 01
	ora ($02.b,X)		; 01 02
	ora $00.b,S		; 03 00
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	ora ($02.b,X)		; 01 02
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	brk $F4.b		; 00 F4
	.db $90, $F0		; 90 F0
	ora #$00E8.w		; 09 E8 00
	sta $9B03.w		; 8D 03 9B
	.db $90, $3F		; 90 3F
	eor $13.b,X		; 55 13
	xce		; FB
	cmp ($F0.b,X)		; C1 F0
	and $F5.b,S		; 23 F5
	cpx #$DE02.w		; E0 02 DE
	cpy #$091B.w		; C0 1B 09
	eor [$5E.b]		; 47 5E
	sbc $D0.b,X		; F5 D0
	cop $10.b		; 02 10
	ora [$FC.b]		; 07 FC
	.db $D0, $04		; D0 04
	inx		; E8
	.db $80, $2F		; 80 2F
	tsb $60.b		; 04 60
	sta $D1.b,X		; 95 D1
	cop $D5.b		; 02 D5
	.db $D0, $02		; D0 02
	and $2F14D6.l,X		; 3F D6 14 2F
	ora [$BB.b]		; 07 BB
	cpy #$FFE8.w		; C0 E8 FF
	and $F414E1.l,X		; 3F E1 14 F4
	sta ($F0.b),Y		; 91 F0
	ora #$30E8.w		; 09 E8 30
	sta $9B03.w		; 8D 03 9B
	sta ($3F.b),Y		; 91 3F
	eor $13.b,X		; 55 13
	cpx $47.b		; E4 47
	bit $5E.b		; 24 5E
	.db $F0, $46		; F0 46
	sbc $31.b,X		; F5 31
	ora $FD.b,S		; 03 FD
	sbc $30.b,X		; F5 30
	ora $DA.b,S		; 03 DA
	.db $10, $7D		; 10 7D
	sta $12C45C.l,X		; 9F 5C C4 12
	xba		; EB
	ora ($F6.b),Y		; 11 F6
	pea $8014.w		; F4 14 80
	ldx $F3.b,Y		; B6 F3
	trb $EB.b		; 14 EB
	.db $10, $CF		; 10 CF
	cmp $11EB.w,X		; DD EB 11
	rts		; 60

	stx $F3.b,Y		; 96 F3
	trb $FD.b		; 14 FD
	sbc $21.b,X		; F5 21
	ora $CF.b,S		; 03 CF
	sbc $51.b,X		; F5 51
	ora $1C.b,S		; 03 1C
	ora ($12.b,S),Y		; 13 12
	ora ($1C.b,X)		; 01 1C
	cmp $0390.w,X		; DD 90 03
	pha		; 48
	sbc $12EBBC.l,X		; FF BC EB 12
	and $8D0D88.l,X		; 3F 88 0D 8D
	trb $E8.b		; 14 E8
	brk $9A.b		; 00 9A
	.db $10, $DA		; 10 DA
	.db $10, $AB		; 10 AB
	ora ($33.b)		; 12 33
	ora ($C8.b)		; 12 C8
	adc $5E4709.l		; 6F 09 47 5E
	phx		; DA
	trb $DA.b		; 14 DA
	asl $4D.b,X		; 16 4D
	inc $D060.w		; EE 60 D0
	asl A		; 0A
	tya		; 98
	ora $00E816.l,X		; 1F 16 E8 00
	cmp [$14.b],Y		; D7 14
	jsr ($092F.w,X)		; FC 2F 09
	tya		; 98
	.db $10, $16		; 10 16
	and $FC1372.l,X		; 3F 72 13 FC
	sbc [$14.b],Y		; F7 14
	sta [$16.b],Y		; 97 16
	cmp [$14.b],Y		; D7 14
	adc $F071F4.l		; 6F F4 71 F0
	adc $9B.b,S		; 63 9B
	adc ($F0.b),Y		; 71 F0
	ora $E8.b		; 05 E8
	cop $DE.b		; 02 DE
	.db $70, $5A		; 70 5A
	pea $C480.w		; F4 80 C4
	ora [$F4.b],Y		; 17 F4
	.db $30, $FB		; 30 FB
	and ($DA.b),Y		; 31 DA
	trb $8D.b		; 14 8D
	brk $F7.b		; 00 F7
	trb $F0.b		; 14 F0
	trb $0530.w		; 1C 30 05
	jsr ($14F7.w,X)		; FC F7 14
	.db $10, $FB		; 10 FB
	pla		; 68
	iny		; C8
	.db $F0, $3F		; F0 3F
	pla		; 68
	sbc $29F0.w		; ED F0 29
	pla		; 68
	dec $3090.w,X		; DE 90 30
	adc $AEFD.w		; 6D FD AE
	stx $C2.b,Y		; 96 C2
	ora ($FD.b),Y		; 11 FD
	and $17E4E0.l		; 2F E0 E4 17
	.db $F0, $23		; F0 23
	phb		; 8B
	ora [$D0.b],Y		; 17 D0
	asl A		; 0A
	sbc $31.b,X		; F5 31
	cop $2D.b		; 02 2D
	sbc $30.b,X		; F5 30
	cop $EE.b		; 02 EE
	and $41F5CA.l		; 2F CA F5 41
	cop $2D.b		; 02 2D
	sbc $40.b,X		; F5 40
	cop $EE.b		; 02 EE
	and $F7FCC0.l		; 2F C0 FC F7
	trb $2D.b		; 14 2D
	jsr ($14F7.w,X)		; FC F7 14
	sbc $2FAE.w,X		; FD AE 2F
	lda $E4.b,X		; B5 E4
	eor [$8D.b]		; 47 8D
	jmp $0D883F.l		; 5C 3F 88 0D
	sbc ($13.b)		; F2 13
	pea $F0A0.w		; F4 A0 F0
	ora ($F4.b,S),Y		; 13 F4
	lda ($F0.b,X)		; A1 F0
	tsb $9B.b		; 04 9B
	lda ($2F.b,X)		; A1 2F
	phd		; 0B
.INDEX 8
	sep #$13		; E2 13
	inx		; E8
	rts		; 60

	sta $9B03.w		; 8D 03 9B
	ldy #$3F.b		; A0 3F
	cli		; 58
	ora ($3F.b,S),Y		; 13 3F
	and $12.b,X		; 35 12
	pea $F0B1.w		; F4 B1 F0
	jmp $B0F5.w		; 4C F5 B0
	cop $DE.b		; 02 DE
	.db $B0, $44		; B0 44
	sbc $00.b,X		; F5 00
	ora ($75.b,X)		; 01 75
	lda ($02.b),Y		; B1 02
	.db $D0, $05		; D0 05
	sbc $C1.b,X		; F5 C1
	cop $2F.b		; 02 2F
	ora $BB40.w		; 0D 40 BB
	brk $20.b		; 00 20
	sbc $02F0.w,X		; FD F0 02
	pea $60B1.w		; F4 B1 60
	sta $C0.b,X		; 95 C0
	cop $D4.b		; 02 D4
	lda ($F5.b),Y		; B1 F5
	ldy #$02.b		; A0 02
	rts		; 60

	sta $A1.b,X		; 95 A1
	cop $D5.b		; 02 D5
	ldy #$02.b		; A0 02
	cpy $12.b		; C4 12
	trb $901C.w		; 1C 1C 90
	cop $48.b		; 02 48
	sbc $B1F4FD.l,X		; FF FD F4 B1
	pla		; 68
	sbc ($90.b),Y		; F1 90
	ora $28.b		; 05 28
	ora $042FCF.l		; 0F CF 2F 04
	cmp $008DDD.l		; CF DD 8D 00
	and $5F14C1.l,X		; 3F C1 14 5F
	ora $0D.b		; 05 0D
	tyx		; BB
	.db $B0, $E3		; B0 E3
	ora ($F8.b,S),Y		; 13 F8
	adc $F413F2.l		; 6F F2 13 F4
	cmp ($F0.b,X)		; C1 F0
	ora #$E0F5.w		; 09 F5 E0
	cop $DE.b		; 02 DE
	cpy #$03.b		; C0 03
	and $F514C9.l,X		; 3F C9 14 F5
	and ($03.b),Y		; 31 03
	sbc $30F5.w,X		; FD F5 30
	ora $DA.b,S		; 03 DA
	.db $10, $F4		; 10 F4
	sta ($F0.b),Y		; 91 F0
	asl A		; 0A
	sbc $41.b,X		; F5 41
	ora $FD.b,S		; 03 FD
	sbc $40.b,X		; F5 40
	ora $3F.b,S		; 03 3F
	plb		; AB
	trb $F3.b		; 14 F3
	ora ($03.b,S),Y		; 13 03
	and $F21317.l,X		; 3F 17 13 F2
	ora ($3F.b,S),Y		; 13 3F
	and $12.b,X		; 35 12
	pea $F0A0.w		; F4 A0 F0
	asl $A1F4.w		; 0E F4 A1
	.db $D0, $0A		; D0 0A
	sbc $71.b,X		; F5 71
	ora $FD.b,S		; 03 FD
	sbc $70.b,X		; F5 70
	ora $3F.b,S		; 03 3F
	plb		; AB
	trb $F4.b		; 14 F4
	lda ($F0.b),Y		; B1 F0
	lda $F5.b,X		; B5 F5
	.db $B0, $02		; B0 02
	dec $AFB0.w,X		; DE B0 AF
	xba		; EB
	eor ($F5.b),Y		; 51 F5
	lda ($02.b,X)		; A1 02
	cmp $9560DD.l		; CF DD 60 95
	ldy #$02.b		; A0 02
	eor $E2142C.l,X		; 5F 2C 14 E2
	ora ($CB.b,S),Y		; 13 CB
	ora ($3F.b)		; 12 3F
	eor ($12.b)		; 52 12
	adc $51EB.w		; 6D EB 51
	cmp $8F14CB.l		; CF CB 14 8F
	brk $15.b		; 00 15
	xba		; EB
	eor ($AE.b),Y		; 51 AE
	cmp $3F147A.l		; CF 7A 14 3F
	eor ($12.b)		; 52 12
	ply		; 7A
	.db $10, $DA		; 10 DA
	.db $10, $6F		; 10 6F
.INDEX 8
	sep #$13		; E2 13
	xba		; EB
	eor ($F5.b),Y		; 51 F5
	cmp ($02.b),Y		; D1 02
	cmp $9560DD.l		; CF DD 60 95
	.db $D0, $02		; D0 02
	trb $0290.w		; 1C 90 02
	pha		; 48
	sbc $CFC1FB.l,X		; FF FB C1 CF
	cmp $FF48.w,X		; DD 48 FF
	xba		; EB
	eor $F5CF.w,Y		; 59 CF F5
	.db $10, $02		; 10 02
	cmp $0301F5.l		; CF F5 01 03
	cmp $DDCFDD.l		; CF DD CF DD
	cmp $21.b,X		; D5 21
	ora $6F.b,S		; 03 6F
	brk $01.b		; 00 01
	ora $07.b,S		; 03 07
	ora $1E15.w		; 0D 15 1E
	and #$4234.w		; 29 34 42
	eor ($5E.b),Y		; 51 5E
	adc [$6E.b]		; 67 6E
	adc ($77.b,S),Y		; 73 77
	ply		; 7A
	jmp ($7E7D.w,X)		; 7C 7D 7E
	adc $00007F.l,X		; 7F 7F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	lda $FEF0DB.l,X		; BF DB F0 FE
	ora [$0C.b]		; 07 0C
	tsb BG34NBA.w		; 0C 0C 21
	pld		; 2B
	pld		; 2B
	ora ($FE.b,S),Y		; 13 FE
	sbc ($F9.b,S),Y		; F3 F9
	bit $33.b,X		; 34 33
	brk $D9.b		; 00 D9
	sbc $01.b		; E5 01
	jsr ($2CEB.w,X)		; FC EB 2C
	bit $4D0D.w,X		; 3C 0D 4D
	jmp ($5C4C.w)		; 6C 4C 5C
	and $5C2D.w,X		; 3D 2D 5C
	adc ($63.b,X)		; 61 63
	lsr $484A.w		; 4E 4A 48
	eor $0E.b		; 45 0E
	eor #$464B.w		; 49 4B 46
	eor $08DE08.l,X		; 5F 08 DE 08
	adc $09.b		; 65 09
	pea $8C09.w		; F4 09 8C
	asl A		; 0A
	bit $D60B.w		; 2C 0B D6
	phd		; 0B
	phb		; 8B
	tsb $0D4A.w		; 0C 4A 0D
	trb $0E.b		; 14 0E
	nop		; EA
	asl $0FCD.w		; 0E CD 0F
	ldx $7610.w,Y		; BE 10 76
	ora $FB.b,X		; 15 FB
	asl $FE.b,X		; 16 FE
	ora [$0F.b],Y		; 17 0F
	ora $198F.w,Y		; 19 8F 19
	sta ($19.b,S),Y		; 93 19
	brk $00.b		; 00 00
	lda ($1A.b,S),Y		; B3 1A
	adc $B020.w		; 6D 20 B0
	jsr $20D6.w		; 20 D6 20
	sbc $0020.w,Y		; F9 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7A.b		; 00 7A
	ora $00.b,X		; 15 00
	brk $8A.b		; 00 8A
	ora $BB.b,X		; 15 BB
	ora $EA.b,X		; 15 EA
	ora $19.b,X		; 15 19
	asl $48.b,X		; 16 48
	asl $77.b,X		; 16 77
	asl $A6.b,X		; 16 A6
	asl $D5.b,X		; 16 D5
	asl $F8.b,X		; 16 F8
	ora $F4.b,S		; 03 F4
	sbc $21.b		; E5 21
	sbc $FF.b,S		; E3 FF
	sbc $8080.w,X		; FD 80 80
	dec $DF02.w,X		; DE 02 DF
	brk $EB.b		; 00 EB
	brk $EC.b		; 00 EC
	plp		; 28
	sbc $A47F2A.l,X		; FF 2A 7F A4
	cmp $00EB14.l,X		; DF 14 EB 00
	cpx $FF28.w		; EC 28 FF
	ldy $0C.b		; A4 0C
	cmp #$00EB.w		; C9 EB 00
	cmp $02DE0A.l,X		; DF 0A DE 02
	inc $601E.w,X		; FE 1E 60
	.db $80, $80		; 80 80
	.db $80, $80		; 80 80
	.db $80, $80		; 80 80
	.db $80, $00		; 80 00
	xba		; EB
	brk $DF.b		; 00 DF
	asl A		; 0A
	dec $FE02.w,X		; DE 02 FE
	asl $7F60.w,X		; 1E 60 7F
	.db $80, $DE		; 80 DE
	cop $DF.b		; 02 DF
	brk $EB.b		; 00 EB
	brk $EC.b		; 00 EC
	plp		; 28
	sbc $DFA42A.l,X		; FF 2A A4 DF
	trb $EB.b		; 14 EB
	brk $EC.b		; 00 EC
	plp		; 28
	sbc $C90CA4.l,X		; FF A4 0C C9
	xba		; EB
	brk $DF.b		; 00 DF
	asl A		; 0A
	dec $FE02.w,X		; DE 02 FE
	asl $8060.w,X		; 1E 60 80
	.db $80, $80		; 80 80
	.db $80, $80		; 80 80
	.db $80, $EB		; 80 EB
	brk $DF.b		; 00 DF
	asl A		; 0A
	dec $FE02.w,X		; DE 02 FE
	asl $7F60.w,X		; 1E 60 7F
	.db $80, $80		; 80 80
	dec $DF02.w,X		; DE 02 DF
	brk $EB.b		; 00 EB
	brk $EC.b		; 00 EC
	plp		; 28
	sbc $DFA42A.l,X		; FF 2A A4 DF
	trb $EB.b		; 14 EB
	brk $EC.b		; 00 EC
	plp		; 28
	sbc $C90CA4.l,X		; FF A4 0C C9
	xba		; EB
	brk $DF.b		; 00 DF
	asl A		; 0A
	dec $FE02.w,X		; DE 02 FE
	asl $8060.w,X		; 1E 60 80
	.db $80, $80		; 80 80
	.db $80, $80		; 80 80
	xba		; EB
	brk $DF.b		; 00 DF
	asl A		; 0A
	dec $FE02.w,X		; DE 02 FE
	asl $7F60.w,X		; 1E 60 7F
	.db $80, $80		; 80 80
	.db $80, $DE		; 80 DE
	cop $DF.b		; 02 DF
	brk $EB.b		; 00 EB
	brk $EC.b		; 00 EC
	plp		; 28
	sbc $DFA42A.l,X		; FF 2A A4 DF
	trb $EB.b		; 14 EB
	brk $EC.b		; 00 EC
	plp		; 28
	sbc $C90CA4.l,X		; FF A4 0C C9
	xba		; EB
	brk $DF.b		; 00 DF
	asl A		; 0A
	dec $FE02.w,X		; DE 02 FE
	asl $8060.w,X		; 1E 60 80
	.db $80, $80		; 80 80
	.db $80, $EB		; 80 EB
	brk $DF.b		; 00 DF
	asl A		; 0A
	dec $FE02.w,X		; DE 02 FE
	asl $7F60.w,X		; 1E 60 7F
	.db $80, $80		; 80 80
	.db $80, $80		; 80 80
	dec $DF02.w,X		; DE 02 DF
	brk $EB.b		; 00 EB
	brk $EC.b		; 00 EC
	plp		; 28
	sbc $DFA42A.l,X		; FF 2A A4 DF
	trb $EB.b		; 14 EB
	brk $EC.b		; 00 EC
	plp		; 28
	sbc $C90CA4.l,X		; FF A4 0C C9
	xba		; EB
	brk $DF.b		; 00 DF
	asl A		; 0A
	dec $FE02.w,X		; DE 02 FE
	asl $8060.w,X		; 1E 60 80
	.db $80, $80		; 80 80
	xba		; EB
	brk $DF.b		; 00 DF
	asl A		; 0A
	dec $FE02.w,X		; DE 02 FE
	asl $7F60.w,X		; 1E 60 7F
	.db $80, $80		; 80 80
	.db $80, $80		; 80 80
	.db $80, $DE		; 80 DE
	cop $DF.b		; 02 DF
	brk $EB.b		; 00 EB
	brk $EC.b		; 00 EC
	plp		; 28
	sbc $DFA42A.l,X		; FF 2A A4 DF
	trb $EB.b		; 14 EB
	brk $EC.b		; 00 EC
	plp		; 28
	sbc $C90CA4.l,X		; FF A4 0C C9
	xba		; EB
	brk $DF.b		; 00 DF
	asl A		; 0A
	dec $FE02.w,X		; DE 02 FE
	asl $8060.w,X		; 1E 60 80
	.db $80, $EB		; 80 EB
	brk $DF.b		; 00 DF
	asl A		; 0A
	dec $FE02.w,X		; DE 02 FE
	asl $7F60.w,X		; 1E 60 7F
	.db $80, $80		; 80 80
	.db $80, $80		; 80 80
	.db $80, $80		; 80 80
	dec $DF02.w,X		; DE 02 DF
	brk $EB.b		; 00 EB
	brk $EC.b		; 00 EC
	plp		; 28
	sbc $DFA42A.l,X		; FF 2A A4 DF
	trb $EB.b		; 14 EB
	brk $EC.b		; 00 EC
	plp		; 28
	sbc $C90CA4.l,X		; FF A4 0C C9
	xba		; EB
	brk $DF.b		; 00 DF
	asl A		; 0A
	dec $FE02.w,X		; DE 02 FE
	asl $8060.w,X		; 1E 60 80
	xba		; EB
	brk $DF.b		; 00 DF
	asl A		; 0A
	dec $FE02.w,X		; DE 02 FE
	asl $7F60.w,X		; 1E 60 7F
	.db $80, $80		; 80 80
	.db $80, $80		; 80 80
	.db $80, $80		; 80 80
	.db $80, $DE		; 80 DE
	cop $DF.b		; 02 DF
	brk $EB.b		; 00 EB
	brk $EC.b		; 00 EC
	plp		; 28
	sbc $DFA42A.l,X		; FF 2A A4 DF
	trb $EB.b		; 14 EB
	brk $EC.b		; 00 EC
	plp		; 28
	sbc $C90CA4.l,X		; FF A4 0C C9
	sbc $000016.l,X		; FF 16 00 00
	ora $173317.l		; 0F 17 33 17
	.db $50, $17		; 50 17
	adc $8A17.w		; 6D 17 8A
	ora [$A8.b],Y		; 17 A8
	ora [$C5.b],Y		; 17 C5
	ora [$E2.b],Y		; 17 E2
	ora [$F8.b],Y		; 17 F8
	ora $F4.b,S		; 03 F4
	sbc $21.b		; E5 21
	sbc $FF.b,S		; E3 FF
	xba		; EB
	sbc $2A02DE.l,X		; FF DE 02 2A
	adc $00F78C.l,X		; 7F 8C F7 00
	rol A		; 2A
	ldy $DE.b		; A4 DE
	brk $8C.b		; 00 8C
	sbc [$00.b],Y		; F7 00
	rol A		; 2A
	ldy $0C.b		; A4 0C
	cmp #$C960.w		; C9 60 C9
	cmp #$C9C9.w		; C9 C9 C9
	cmp #$C9C9.w		; C9 C9 C9
	brk $60.b		; 00 60
	cmp #$FFEB.w		; C9 EB FF
	dec $2A02.w,X		; DE 02 2A
	adc $00F78C.l,X		; 7F 8C F7 00
	rol A		; 2A
	ldy $DE.b		; A4 DE
	brk $8C.b		; 00 8C
	sbc [$00.b],Y		; F7 00
	rol A		; 2A
	ldy $0C.b		; A4 0C
	cmp #$C960.w		; C9 60 C9
	cmp #$C9C9.w		; C9 C9 C9
	cmp #$60C9.w		; C9 C9 60
	cmp #$EBC9.w		; C9 C9 EB
	sbc $2A02DE.l,X		; FF DE 02 2A
	adc $00F78C.l,X		; 7F 8C F7 00
	rol A		; 2A
	ldy $DE.b		; A4 DE
	brk $8C.b		; 00 8C
	sbc [$00.b],Y		; F7 00
	rol A		; 2A
	ldy $0C.b		; A4 0C
	cmp #$C960.w		; C9 60 C9
	cmp #$C9C9.w		; C9 C9 C9
	cmp #$C960.w		; C9 60 C9
	cmp #$EBC9.w		; C9 C9 EB
	sbc $2A02DE.l,X		; FF DE 02 2A
	adc $00F78C.l,X		; 7F 8C F7 00
	rol A		; 2A
	ldy $DE.b		; A4 DE
	brk $8C.b		; 00 8C
	sbc [$00.b],Y		; F7 00
	rol A		; 2A
	ldy $0C.b		; A4 0C
	cmp #$C960.w		; C9 60 C9
	cmp #$C9C9.w		; C9 C9 C9
	rts		; 60

	cmp #$C9C9.w		; C9 C9 C9
	cmp #$EBFF.w		; C9 FF EB
	sbc $2A02DE.l,X		; FF DE 02 2A
	adc $00F78C.l,X		; 7F 8C F7 00
	rol A		; 2A
	ldy $DE.b		; A4 DE
	brk $8C.b		; 00 8C
	sbc [$00.b],Y		; F7 00
	rol A		; 2A
	ldy $0C.b		; A4 0C
	cmp #$C960.w		; C9 60 C9
	cmp #$60C9.w		; C9 C9 60
	cmp #$C9C9.w		; C9 C9 C9
	cmp #$EBC9.w		; C9 C9 EB
	sbc $2A02DE.l,X		; FF DE 02 2A
	adc $00F78C.l,X		; 7F 8C F7 00
	rol A		; 2A
	ldy $DE.b		; A4 DE
	brk $8C.b		; 00 8C
	sbc [$00.b],Y		; F7 00
	rol A		; 2A
	ldy $0C.b		; A4 0C
	cmp #$C960.w		; C9 60 C9
	cmp #$C960.w		; C9 60 C9
	cmp #$C9C9.w		; C9 C9 C9
	cmp #$EBC9.w		; C9 C9 EB
	sbc $2A02DE.l,X		; FF DE 02 2A
	adc $00F78C.l,X		; 7F 8C F7 00
	rol A		; 2A
	ldy $DE.b		; A4 DE
	brk $8C.b		; 00 8C
	sbc [$00.b],Y		; F7 00
	rol A		; 2A
	ldy $0C.b		; A4 0C
	cmp #$C960.w		; C9 60 C9
	rts		; 60

	cmp #$C9C9.w		; C9 C9 C9
	cmp #$C9C9.w		; C9 C9 C9
	cmp #$FFEB.w		; C9 EB FF
	dec $2A02.w,X		; DE 02 2A
	adc $00F78C.l,X		; 7F 8C F7 00
	rol A		; 2A
	ldy $DE.b		; A4 DE
	brk $8C.b		; 00 8C
	sbc [$00.b],Y		; F7 00
	rol A		; 2A
	ldy $0C.b		; A4 0C
	cmp #$1802.w		; C9 02 18
	brk $00.b		; 00 00
	ora ($18.b)		; 12 18
	eor ($18.b)		; 52 18
	adc $8818.w		; 6D 18 88
	clc		; 18
	lda $18.b,S		; A3 18
	ldx $D918.w,Y		; BE 18 D9
	clc		; 18
	pea $F818.w		; F4 18 F8
	ora $E5.b,S		; 03 E5
	and $A8E3.w,Y		; 39 E3 A8
	sbc $04.b,X		; F5 04
	brk $00.b		; 00 00
	sbc ($FF.b,S),Y		; F3 FF
	brk $00.b		; 00 00
	dec $FD02.w,X		; DE 02 FD
	brk $FF.b		; 00 FF
	adc $0CA47F.l,X		; 7F 7F A4 0C
	iny		; C8
	clc		; 18
	cmp #$FFFD.w		; C9 FD FF
	brk $7F.b		; 00 7F
	ldy $0C.b		; A4 0C
	iny		; C8
	clc		; 18
	cmp #$FFFD.w		; C9 FD FF
	sbc $7F7FF6.l,X		; FF F6 7F 7F
	brk $7F.b		; 00 7F
	ldy $0C.b		; A4 0C
	iny		; C8
	clc		; 18
	cmp #$FFF3.w		; C9 F3 FF
	brk $00.b		; 00 00
	inc $7F.b,X		; F6 7F
	brk $7F.b		; 00 7F
	adc $C80CA4.l,X		; 7F A4 0C C8
	clc		; 18
	cmp #$00F4.w		; C9 F4 00
	dec $7F02.w,X		; DE 02 7F
	adc $C80CA4.l,X		; 7F A4 0C C8
	clc		; 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$02DE.w		; C9 DE 02
	adc $0CA47F.l,X		; 7F 7F A4 0C
	iny		; C8
	clc		; 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$02DE.w		; C9 DE 02
	adc $0CA47F.l,X		; 7F 7F A4 0C
	iny		; C8
	clc		; 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$02DE.w		; C9 DE 02
	adc $0CA47F.l,X		; 7F 7F A4 0C
	iny		; C8
	clc		; 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$02DE.w		; C9 DE 02
	adc $0CA47F.l,X		; 7F 7F A4 0C
	iny		; C8
	clc		; 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$02DE.w		; C9 DE 02
	adc $0CA47F.l,X		; 7F 7F A4 0C
	iny		; C8
	clc		; 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$02DE.w		; C9 DE 02
	adc $0CA47F.l,X		; 7F 7F A4 0C
	iny		; C8
	clc		; 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$A47F.w		; C9 7F A4
	tsb $18C8.w		; 0C C8 18
	cmp #$1913.w		; C9 13 19
	brk $00.b		; 00 00
	and $19.b,S		; 23 19
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	ora $F4.b,S		; 03 F4
	sbc $29.b		; E5 29
	sbc $FF.b,S		; E3 FF
	xba		; EB
	sbc $FE02DE.l,X		; FF DE 02 FE
	ora $807F0C.l,X		; 1F 0C 7F 80
	inc $C81D.w,X		; FE 1D C8
	inc $C81C.w,X		; FE 1C C8
	inc $C81B.w,X		; FE 1B C8
	inc $C81A.w,X		; FE 1A C8
	inc $C819.w,X		; FE 19 C8
	inc $C818.w,X		; FE 18 C8
	inc $C817.w,X		; FE 17 C8
	inc $8016.w,X		; FE 16 80
	inc $C815.w,X		; FE 15 C8
	inc $C814.w,X		; FE 14 C8
	inc $C813.w,X		; FE 13 C8
	inc $C812.w,X		; FE 12 C8
	inc $C811.w,X		; FE 11 C8
	inc $C810.w,X		; FE 10 C8
	inc $C80F.w,X		; FE 0F C8
	inc $800E.w,X		; FE 0E 80
	inc $C80D.w,X		; FE 0D C8
	inc $C80C.w,X		; FE 0C C8
	inc $C80B.w,X		; FE 0B C8
	inc $C80A.w,X		; FE 0A C8
	inc $C809.w,X		; FE 09 C8
	inc $C808.w,X		; FE 08 C8
	inc $C807.w,X		; FE 07 C8
	inc $8006.w,X		; FE 06 80
	inc $C805.w,X		; FE 05 C8
	inc $C804.w,X		; FE 04 C8
	inc $C803.w,X		; FE 03 C8
	inc $C802.w,X		; FE 02 C8
	inc $C801.w,X		; FE 01 C8
	inc $1800.w,X		; FE 00 18
	cmp #$A700.w		; C9 00 A7
	ora $0000.w,Y		; 19 00 00
	sta [$19.b],Y		; 97 19
	brk $00.b		; 00 00
	lda [$19.b],Y		; B7 19
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
.INDEX 8
	sep #$19		; E2 19
	and $1A.b		; 25 1A
	dec A		; 3A
	inc A		; 1A
	eor $1A641A.l		; 4F 1A 64 1A
	adc $8E1A.w,Y		; 79 1A 8E
	inc A		; 1A
	lda $1A.b,S		; A3 1A
	sbc $21.b		; E5 21
	sbc $FF.b,S		; E3 FF
	xba		; EB
	sbc $0000FD.l,X		; FF FD 00 00
	dec $FE02.w,X		; DE 02 FE
	asl $04F5.w,X		; 1E F5 04
	brk $00.b		; 00 00
	sbc ($FF.b,S),Y		; F3 FF
	adc $7F187F.l,X		; 7F 7F 18 7F
	.db $80, $F5		; 80 F5
	tsb $00.b		; 04 00
	ora ($C8.b,X)		; 01 C8
	sbc $04.b,X		; F5 04
	brk $02.b		; 00 02
	.db $80, $F5		; 80 F5
	tsb $00.b		; 04 00
	ora $80.b,S		; 03 80
	tsb $F4C9.w		; 0C C9 F4
	brk $F8.b		; 00 F8
	ora $E5.b,S		; 03 E5
	and ($E3.b,X)		; 21 E3
	sbc $FDFFEB.l,X		; FF EB FF FD
	sbc $02F5FF.l,X		; FF FF F5 02
	brk $00.b		; 00 00
	tsb $F3C9.w		; 0C C9 F3
	ora ($7F.b,X)		; 01 7F
	adc $FE02DE.l,X		; 7F DE 02 FE
	asl $7F0C.w,X		; 1E 0C 7F
	sty $02F3.w		; 8C F3 02
	adc $00DE7F.l,X		; 7F 7F DE 00
	sty $04F3.w		; 8C F3 04
	adc $F38C7F.l,X		; 7F 7F 8C F3
	php		; 08
	adc $F38C7F.l,X		; 7F 7F 8C F3
	.db $10, $7F		; 10 7F
	adc $20F38C.l,X		; 7F 8C F3 20
	adc $F38C7F.l,X		; 7F 7F 8C F3
	rti		; 40

	adc $F38C7F.l,X		; 7F 7F 8C F3
	.db $80, $7F		; 80 7F
	adc $00F48C.l,X		; 7F 8C F4 00
	tsb $EBC9.w		; 0C C9 EB
	sbc $0C00DE.l,X		; FF DE 00 0C
	adc $02DE8C.l,X		; 7F 8C DE 02
	inc $0C1E.w,X		; FE 1E 0C
	eor $00DE80.l,X		; 5F 80 DE 00
	pha		; 48
	adc $C90C8C.l,X		; 7F 8C 0C C9
	xba		; EB
	sbc $1800DE.l,X		; FF DE 00 18
	adc $02DE8C.l,X		; 7F 8C DE 02
	inc $0C1E.w,X		; FE 1E 0C
	eor $00DE80.l,X		; 5F 80 DE 00
	bit $8C7F.w,X		; 3C 7F 8C
	tsb $EBC9.w		; 0C C9 EB
	sbc $2400DE.l,X		; FF DE 00 24
	adc $02DE8C.l,X		; 7F 8C DE 02
	inc $0C1E.w,X		; FE 1E 0C
	eor $00DE80.l,X		; 5F 80 DE 00
	.db $30, $7F		; 30 7F
	sty $C90C.w		; 8C 0C C9
	xba		; EB
	sbc $3000DE.l,X		; FF DE 00 30
	adc $02DE8C.l,X		; 7F 8C DE 02
	inc $0C1E.w,X		; FE 1E 0C
	eor $00DE80.l,X		; 5F 80 DE 00
	bit $7F.b		; 24 7F
	sty $C90C.w		; 8C 0C C9
	xba		; EB
	sbc $3C00DE.l,X		; FF DE 00 3C
	adc $02DE8C.l,X		; 7F 8C DE 02
	inc $0C1E.w,X		; FE 1E 0C
	eor $00DE80.l,X		; 5F 80 DE 00
	clc		; 18
	adc $C90C8C.l,X		; 7F 8C 0C C9
	xba		; EB
	sbc $4800DE.l,X		; FF DE 00 48
	adc $02DE8C.l,X		; 7F 8C DE 02
	inc $0C1E.w,X		; FE 1E 0C
	eor $00DE80.l,X		; 5F 80 DE 00
	tsb $8C7F.w		; 0C 7F 8C
	tsb $EBC9.w		; 0C C9 EB
	sbc $5400DE.l,X		; FF DE 00 54
	adc $02DE8C.l,X		; 7F 8C DE 02
	inc $0C1E.w,X		; FE 1E 0C
	eor $1ACF80.l,X		; 5F 80 CF 1A
	cmp $1AEF1A.l,X		; DF 1A EF 1A
	sbc $1B4F1A.l,X		; FF 1A 4F 1B
	sbc $1B0F1A.l		; EF 1A 0F 1B
	ora $1B2F1B.l,X		; 1F 1B 2F 1B
	eor $1B3F1B.l,X		; 5F 1B 3F 1B
	sbc $1AB500.l,X		; FF 00 B5 1A
	brk $00.b		; 00 00
	adc $1B8D1B.l		; 6F 1B 8D 1B
	txs		; 9A
	tas		; 1B
	lda [$1B.b]		; A7 1B
	ldy $1B.b,X		; B4 1B
	cmp ($1B.b,X)		; C1 1B
	dec $001B.w		; CE 1B 00
	brk $DB.b		; 00 DB
	tas		; 1B
	asl $1C.b,X		; 16 1C
	rol $4A1C.w		; 2E 1C 4A
	trb $1C63.w		; 1C 63 1C
	adc $00001C.l,X		; 7F 1C 00 00
	brk $00.b		; 00 00
	lda $B61C.w		; AD 1C B6
	trb $1CBE.w		; 1C BE 1C
	cmp #$001C.w		; C9 1C 00
	brk $DB.b		; 00 DB
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	nop		; EA
	trb $1CFB.w		; 1C FB 1C
	tsb $1D.b		; 04 1D
	ora $161D.w		; 0D 1D 16
	ora $1D1D.w,X		; 1D 1D 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsl $1D311D.l		; 22 1D 31 1D
	bit $1D.b,X		; 34 1D
	and [$1D.b],Y		; 37 1D
	brk $00.b		; 00 00
	bit $001D.w,X		; 3C 1D 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	ora $1D57.w,X		; 1D 57 1D
	ror $811D.w		; 6E 1D 81
	ora $1D8D.w,X		; 1D 8D 1D
	sta $B91D.w,X		; 9D 1D B9
	ora $1DCD.w,X		; 1D CD 1D
	jmp.w [$F41D]		; DC 1D F4
	ora $1E07.w,X		; 1D 07 1E
	ora [$1E.b],Y		; 17 1E
	and #$3A1E.w		; 29 1E 3A
	asl $1E5E.w,X		; 1E 5E 1E
	adc $1E831E.l		; 6F 1E 83 1E
	stx $1E.b,Y		; 96 1E
	ldy #$1E.b		; A0 1E
	ldy $001E.w		; AC 1E 00
	brk $BF.b		; 00 BF
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	dec $1E.b,X		; D6 1E
	xce		; FB
	asl $1F13.w,X		; 1E 13 1F
	and $1F481F.l		; 2F 1F 48 1F
	stz $1F.b		; 64 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $B21F.w		; 8D 1F B2
	ora $E61FCA.l,X		; 1F CA 1F E6
	ora $1B1FFF.l,X		; 1F FF 1F 1B
	jsr $0000.w		; 20 00 00
	eor $20.b		; 45 20
	sed		; F8
	ora $C8E3.w		; 0D E3 C8
	sbc $14.b		; E5 14
	dec $EB08.w,X		; DE 08 EB
	stx $F3.b,Y		; 96 F3
	sbc $F50000.l,X		; FF 00 00 F5
	ora $32.b,S		; 03 32
	cop $DF.b		; 02 DF
	ora $7F32.w		; 0D 32 7F
	tya		; 98
	inc $4C.b,X		; F6 4C
	.db $50, $50		; 50 50
	lsr $0098.w		; 4E 98 00
	dec $EB08.w,X		; DE 08 EB
	stx $DF.b,Y		; 96 DF
	tsb $C903.w		; 0C 03 C9
	and ($7F.b)		; 32 7F
	sta $DE9F4B.l,X		; 9F 4B 9F DE
	php		; 08
	xba		; EB
	stx $DF.b,Y		; 96 DF
	phd		; 0B
	asl $C9.b		; 06 C9
	and ($7F.b)		; 32 7F
	ldy $48.b		; A4 48
	ldy $DE.b		; A4 DE
	php		; 08
	xba		; EB
	stx $DF.b,Y		; 96 DF
	asl A		; 0A
	ora #$32C9.w		; 09 C9 32
	adc $A845A8.l,X		; 7F A8 45 A8
	dec $EB08.w,X		; DE 08 EB
	stx $DF.b,Y		; 96 DF
	ora #$C90C.w		; 09 0C C9
	and ($7F.b)		; 32 7F
	plb		; AB
	.db $42, $AB		; 42 AB
	dec $EB08.w,X		; DE 08 EB
	stx $DF.b,Y		; 96 DF
	php		; 08
	ora $7F32C9.l		; 0F C9 32 7F
	ldx $AE3F.w		; AE 3F AE
	dec $EB08.w,X		; DE 08 EB
	stx $DF.b,Y		; 96 DF
	ora [$12.b]		; 07 12
	cmp #$7F32.w		; C9 32 7F
	lda ($3C.b)		; B2 3C
	ldy $E3.b,X		; B4 E3
	ldy $E5.b,X		; B4 E5
	ora ($DE.b)		; 12 DE
	ora $E1.b		; 05 E1
	trb $37.b		; 14 37
	stz $F3.b		; 64 F3
	sbc $F55050.l,X		; FF 50 50 F5
	ora $32.b,S		; 03 32
	cop $EB.b		; 02 EB
	sbc ($DF.b,X)		; E1 DF
	tsb $7F0C.w		; 0C 0C 7F
	sta $8C.b		; 85 8C
	clc		; 18
	sta $0C.b,X		; 95 0C
	.db $82, $89, $18		; 82 89 18
	sta ($0C.b)		; 92 0C
	sta [$8E.b]		; 87 8E
	stx $95.b,Y		; 96 95
	clc		; 18
	sta ($91.b,S),Y		; 93 91
	tsb $878C.w		; 0C 8C 87
	clc		; 18
	.db $90, $0C		; 90 0C
	sta [$90.b]		; 87 90
	clc		; 18
	tya		; 98
	sty $95.b,X		; 94 95
	tsb $9698.w		; 0C 98 96
	sta $93.b,X		; 95 93
	brk $DE.b		; 00 DE
	php		; 08
	xba		; EB
	ror $7F30.w		; 6E 30 7F
	ldy $A4.b		; A4 A4
	and $A931A6.l		; 2F A6 31 A9
	ora $C9.b,S		; 03 C9
	and $18A8.w		; 2D A8 18
	plb		; AB
	tay		; A8
	lda #$A919.w		; A9 19 A9
	and $08DEAD.l		; 2F AD DE 08
	xba		; EB
	ror $C918.w		; 6E 18 C9
	ora $A97F.w,Y		; 19 7F A9
	and $AA18AA.l		; 2F AA 18 AA
	inc A		; 1A
	plb		; AB
	rol $18AE.w		; 2E AE 18
	cmp #$AB1A.w		; C9 1A AB
	clc		; 18
	ldx $A8AE.w		; AE AE A8
	lda $A92E.w		; AD 2E A9
	dec $EB08.w,X		; DE 08 EB
	ror $C91A.w		; 6E 1A C9
	clc		; 18
	adc $C92EAD.l,X		; 7F AD 2E C9
	rts		; 60

	cmp #$C91A.w		; C9 1A C9
	clc		; 18
	ldx $C92E.w		; AE 2E C9
	clc		; 18
	ldy $AD1B.w		; AC 1B AD
	and $DEB0.w		; 2D B0 DE
	php		; 08
	xba		; EB
	ror $C91B.w		; 6E 1B C9
	clc		; 18
	adc $ADAEB0.l,X		; 7F B0 AE AD
	.db $30, $C9		; 30 C9
	and $1BB2.w		; 2D B2 1B
	cmp #$B418.w		; C9 18 B4
	lda ($17.b)		; B2 17
	.db $B0, $18		; B0 18
	lda $2DB019.l		; AF 19 B0 2D
	lda $DE.b,X		; B5 DE
	ora #$A0EB.w		; 09 EB A0
	sbc ($10.b,X)		; E1 10
	asl $DF50.w,X		; 1E 50 DF
	php		; 08
	clc		; 18
	adc $24B0A4.l,X		; 7F A4 B0 24
	ldx $6F0C.w		; AE 0C 6F
	lda $7F18.w		; AD 18 7F
	tax		; AA
	clc		; 18
	tda		; 7B
	plb		; AB
	.db $30, $7F		; 30 7F
	lda ($18.b)		; B2 18
	tay		; A8
	clc		; 18
	rtl		; 6B

	ldy $24.b,X		; B4 24
	adc $B00CB2.l,X		; 7F B2 0C B0
	clc		; 18
	lda $B06B18.l		; AF 18 6B B0
	.db $30, $7B		; 30 7B
	lda $30.b,X		; B5 30
	adc $939691.l,X		; 7F 91 96 93
	sty $8C87.w		; 8C 87 8C
	brk $30.b		; 00 30
	adc $A6A9AD.l,X		; 7F AD A9 A6
	ldx #$A9.b		; A2 A9
	ldx #$02.b		; A2 02
	cmp #$7F30.w		; C9 30 7F
	.db $B0, $AF		; B0 AF
	plb		; AB
	tay		; A8
	ldx $A82E.w		; AE 2E A8
	ora $C9.b,S		; 03 C9
	ora $7F.b,X		; 15 7F
	lda [$1B.b],Y		; B7 1B
	lda $18.b,X		; B5 18
	ldy $B2.b,X		; B4 B2
	.db $B0, $AE		; B0 AE
	lda $30AB.w		; AD AB 30
	lda ($2D.b)		; B2 2D
	cmp #$08DF.w		; C9 DF 08
	clc		; 18
	adc $B4B5B7.l,X		; 7F B7 B5 B4
	lda ($B0.b)		; B2 B0
	ldx $ABAD.w		; AE AD AB
	.db $30, $B2		; 30 B2
	tay		; A8
	tsb $857F.w		; 0C 7F 85
	tsb $8C7D.w		; 0C 7D 8C
	sta ($95.b),Y		; 91 95
	tsb $967F.w		; 0C 7F 96
	tsb $957D.w		; 0C 7D 95
	sta ($95.b,S),Y		; 93 95
	brk $03.b		; 00 03
	cmp #$7F30.w		; C9 30 7F
	lda #$A618.w		; A9 18 A6
	ora $A2.b,X		; 15 A2
	ora ($C9.b,X)		; 01 C9
	.db $30, $7F		; 30 7F
	lda $A918.w		; AD 18 A9
	ora [$A4.b],Y		; 17 A4
	cop $C9.b		; 02 C9
	.db $30, $7F		; 30 7F
	.db $B0, $18		; B0 18
	lda $A816.w		; AD 16 A8
	and ($C9.b)		; 32 C9
	clc		; 18
	adc $AB16AE.l,X		; 7F AE 16 AB
	pha		; 48
	adc $C918B0.l,X		; 7F B0 18 C9
	tsb $857F.w		; 0C 7F 85
	tsb $8C7D.w		; 0C 7D 8C
	sta ($93.b),Y		; 91 93
	bit $7F.b		; 24 7F
	sta ($0C.b),Y		; 91 0C
	tda		; 7B
	sta ($00.b),Y		; 91 00
	rts		; 60

	adc $7F60A1.l,X		; 7F A1 60 7F
	ldy $03.b		; A4 03
	cmp #$7F5D.w		; C9 5D 7F
	lda #$60EC.w		; A9 EC 60
	stz $5E.b		; 64 5E
	adc $C902A9.l,X		; 7F A9 02 C9
	.db $30, $7F		; 30 7F
	txa		; 8A
	sty $1885.w		; 8C 85 18
	sta $86.b		; 85 86
	.db $30, $87		; 30 87
	clc		; 18
	sty $858C.w		; 8C 8C 85
	.db $30, $85		; 30 85
	clc		; 18
	sta $00.b		; 85 00
	clc		; 18
	cmp #$7F30.w		; C9 30 7F
	sta $C918.w,X		; 9D 18 C9
	cmp #$9D9D.w		; C9 9D 9D
	sta $9A30.w,X		; 9D 30 9A
	tsb $9A9B.w		; 0C 9B 9A
	tya		; 98
	sty $C918.w		; 8C 18 C9
	tya		; 98
	txs		; 9A
	tya		; 98
	clc		; 18
	cmp #$7F30.w		; C9 30 7F
	sta $C9C918.l,X		; 9F 18 C9 C9
	lda ($A1.b,X)		; A1 A1
	lda ($30.b,X)		; A1 30
	sta $18C9.w,X		; 9D C9 18
	cmp #$A1A1.w		; C9 A1 A1
	lda ($30.b,X)		; A1 30
	adc $18A2A5.l,X		; 7F A5 A2 18
	cmp #$A6A8.w		; C9 A8 A6
	ldy $30.b		; A4 30
	sta $7F30C9.l,X		; 9F C9 30 7F
	lda #$60A8.w		; A9 A8 60
	lda #$C930.w		; A9 30 C9
	clc		; 18
	tax		; AA
	plb		; AB
	tsb $C9A9.w		; 0C A9 C9
	pha		; 48
	lda #$07DE.w		; A9 DE 07
	xba		; EB
	cmp ($E1.b)		; D2 E1
	ora $641E.w		; 0D 1E 64
	cmp $7F300B.l,X		; DF 0B 30 7F
	lda [$B9.b],Y		; B7 B9
	lsr $02BC.w,X		; 5E BC 02
	cmp #$C918.w		; C9 18 C9
	lda [$B9.b],Y		; B7 B9
	tsx		; BA
	tsb $BEBB.w		; 0C BB BE
	pha		; 48
	ldy $08DE.w,X		; BC DE 08
	xba		; EB
	phy		; 5A
	.db $30, $7F		; 30 7F
	plb		; AB
	lda $AD60.w		; AD 60 AD
	clc		; 18
	cmp #$ADAB.w		; C9 AB AD
	ldx $AB0C.w		; AE 0C AB
	cmp #$AD48.w		; C9 48 AD
	dec $EB08.w,X		; DE 08 EB
	phy		; 5A
	rts		; 60

	cmp #$7F60.w		; C9 60 7F
	.db $B0, $C9		; B0 C9
	tsb $B2AF.w		; 0C AF B2
	pha		; 48
	.db $B0, $18		; B0 18
	adc $8E308E.l,X		; 7F 8E 30 8E
	clc		; 18
	stx $870C.w		; 8E 0C 87
	sta ($18.b,S),Y		; 93 18
	sta [$30.b]		; 87 30
	sta [$60.b]		; 87 60
	txa		; 8A
	clc		; 18
	cmp #$2493.w		; C9 93 24
	sty $C90C.w		; 8C 0C C9
	brk $18.b		; 00 18
	cmp #$7F30.w		; C9 30 7F
	txs		; 9A
	clc		; 18
	lda #$9AC9.w		; A9 C9 9A
	.db $30, $9A		; 30 9A
	bit $24C9.w,X		; 3C C9 24
	lda $48.b		; A5 48
	plb		; AB
	clc		; 18
	cmp #$C918.w		; C9 18 C9
	pha		; 48
	adc $C9189D.l,X		; 7F 9D 18 C9
	sta $9D30.w,X		; 9D 30 9D
	cmp #$48A9.w		; C9 A9 48
	ldx $C918.w		; AE 18 C9
	clc		; 18
	cmp #$7F48.w		; C9 48 7F
	lda ($18.b,X)		; A1 18
	cmp #$309F.w		; C9 9F 30
	sta $3CC924.l,X		; 9F 24 C9 3C
	plb		; AB
	pha		; 48
	.db $B0, $18		; B0 18
	cmp #$C918.w		; C9 18 C9
	pha		; 48
	adc $C918A4.l,X		; 7F A4 18 C9
	lda $30.b,S		; A3 30
	lda $18.b,S		; A3 18
	cmp #$AE48.w		; C9 48 AE
	ldy $18.b,X		; B4 18
	cmp #$A0EB.w		; C9 EB A0
	cmp $03DE09.l,X		; DF 09 DE 03
	sbc ($0F.b,X)		; E1 0F
	plp		; 28
	phk		; 4B
	clc		; 18
	cmp #$7F18.w		; C9 18 7F
	lda $B0AF.w		; AD AF B0
	tsb $B4B1.w		; 0C B1 B4
	bit $5F.b		; 24 5F
	lda ($0C.b)		; B2 0C
	adc $B5B4B2.l,X		; 7F B2 B4 B5
	rts		; 60

	lda $EC.b,X		; B5 EC
	pha		; 48
	stz $60.b		; 64 60
	eor $C918B4.l,X		; 5F B4 18 C9
	clc		; 18
	adc $ADA9A9.l,X		; 7F A9 A9 AD
	rts		; 60

	plb		; AB
	tsb $48C9.w		; 0C C9 48
	lda ($0C.b),Y		; B1 0C
	sta $18C960.l,X		; 9F 60 C9 18
	cmp #$7F18.w		; C9 18 7F
	lda $B0AD.w		; AD AD B0
	.db $30, $AF		; 30 AF
	tsb $B2C9.w		; 0C C9 B2
	ldy $B5.b,X		; B4 B5
	pha		; 48
	lda $18.b,X		; B5 18
	ldx #$60.b		; A2 60
	cmp #$7F30.w		; C9 30 7F
	sta ($96.b),Y		; 91 96
	pha		; 48
	sta ($18.b,S),Y		; 93 18
	sta [$30.b]		; 87 30
	sta [$8C.b]		; 87 8C
	tsb $8C85.w		; 0C 85 8C
	sta ($93.b),Y		; 91 93
	.db $30, $95		; 30 95
	brk $30.b		; 00 30
	adc $A6A9AD.l,X		; 7F AD A9 A6
	ldx #$A9.b		; A2 A9
	plb		; AB
	rts		; 60

	lda $C902.w		; AD 02 C9
	.db $30, $7F		; 30 7F
	.db $B0, $AF		; B0 AF
	plb		; AB
	tay		; A8
	ldx $5EAE.w		; AE AE 5E
	.db $B0, $03		; B0 03
	cmp #$7F15.w		; C9 15 7F
	lda [$1B.b],Y		; B7 1B
	lda $18.b,X		; B5 18
	ldy $B2.b,X		; B4 B2
	.db $B0, $AE		; B0 AE
	lda $30AB.w		; AD AB 30
	lda ($B4.b)		; B2 B4
	eor $DEB5.w,X		; 5D B5 DE
	ora #$08DF.w		; 09 DF 08
	clc		; 18
	adc $B4B5B7.l,X		; 7F B7 B5 B4
	lda ($B0.b)		; B2 B0
	ldx $ABAD.w		; AE AD AB
	.db $30, $B2		; 30 B2
	ldy $EC.b,X		; B4 EC
	phy		; 5A
	ldy #$60.b		; A0 60
	adc $7F0CB5.l		; 6F B5 0C 7F
	sta $8C.b		; 85 8C
	clc		; 18
	sta $0C.b,X		; 95 0C
	.db $82, $89, $18		; 82 89 18
	sta ($0C.b)		; 92 0C
	sta [$8E.b]		; 87 8E
	stx $95.b,Y		; 96 95
	clc		; 18
	sta ($91.b,S),Y		; 93 91
	tsb $878C.w		; 0C 8C 87
	clc		; 18
	.db $90, $0C		; 90 0C
	sta [$90.b]		; 87 90
	clc		; 18
	tya		; 98
	sty $95.b,X		; 94 95
	tsb $9698.w		; 0C 98 96
	sta $93.b,X		; 95 93
	brk $DE.b		; 00 DE
	php		; 08
	xba		; EB
	ror $7F30.w		; 6E 30 7F
	ldy $A4.b		; A4 A4
	and $A931A6.l		; 2F A6 31 A9
	ora $C9.b,S		; 03 C9
	and $18A8.w		; 2D A8 18
	plb		; AB
	tay		; A8
	lda #$A919.w		; A9 19 A9
	and $08DEAD.l		; 2F AD DE 08
	xba		; EB
	ror $C918.w		; 6E 18 C9
	ora $A97F.w,Y		; 19 7F A9
	and $AA18AA.l		; 2F AA 18 AA
	inc A		; 1A
	plb		; AB
	rol $18AE.w		; 2E AE 18
	cmp #$AB1A.w		; C9 1A AB
	clc		; 18
	ldx $A8AE.w		; AE AE A8
	lda $A92E.w		; AD 2E A9
	dec $EB08.w,X		; DE 08 EB
	ror $C91A.w		; 6E 1A C9
	clc		; 18
	adc $C92EAD.l,X		; 7F AD 2E C9
	rts		; 60

	cmp #$C91A.w		; C9 1A C9
	clc		; 18
	ldx $C92E.w		; AE 2E C9
	clc		; 18
	ldy $AD1B.w		; AC 1B AD
	and $DEB0.w		; 2D B0 DE
	php		; 08
	xba		; EB
	ror $C91B.w		; 6E 1B C9
	clc		; 18
	adc $ADAEB0.l,X		; 7F B0 AE AD
	.db $30, $C9		; 30 C9
	and $1BB2.w		; 2D B2 1B
	cmp #$B418.w		; C9 18 B4
	lda ($17.b)		; B2 17
	.db $B0, $18		; B0 18
	lda $2DB019.l		; AF 19 B0 2D
	lda $EB.b,X		; B5 EB
	ldy $DF.b,X		; B4 DF
	tsb $7F18.w		; 0C 18 7F
	tya		; 98
	ldy $22.b		; A4 22
	ldx #$0E.b		; A2 0E
	adc $7F18A1.l		; 6F A1 18 7F
	stz $7B18.w,X		; 9E 18 7B
	sta $A67F30.l,X		; 9F 30 7F A6
	clc		; 18
	stz $6B18.w		; 9C 18 6B
	tay		; A8
	jsl $0EA67F.l		; 22 7F A6 0E
	ldy $30.b		; A4 30
	lda $F7.b,S		; A3 F7
	asl $A410.w		; 0E 10 A4
	.db $30, $7B		; 30 7B
	lda #$7F0C.w		; A9 0C 7F
	sta $8C.b		; 85 8C
	clc		; 18
	sta $0C.b,X		; 95 0C
	.db $82, $89, $18		; 82 89 18
	sta ($0C.b)		; 92 0C
	sta [$8E.b]		; 87 8E
	stx $95.b,Y		; 96 95
	clc		; 18
	sta ($91.b,S),Y		; 93 91
	tsb $878C.w		; 0C 8C 87
	clc		; 18
	.db $90, $0C		; 90 0C
	sta [$90.b]		; 87 90
	clc		; 18
	tya		; 98
	sty $95.b,X		; 94 95
	tsb $9698.w		; 0C 98 96
	sta $93.b,X		; 95 93
	brk $DE.b		; 00 DE
	php		; 08
	xba		; EB
	ror $7F30.w		; 6E 30 7F
	ldy $A4.b		; A4 A4
	and $A931A6.l		; 2F A6 31 A9
	ora $C9.b,S		; 03 C9
	and $18A8.w		; 2D A8 18
	plb		; AB
	tay		; A8
	lda #$A919.w		; A9 19 A9
	and $08DEAD.l		; 2F AD DE 08
	xba		; EB
	ror $C918.w		; 6E 18 C9
	ora $A97F.w,Y		; 19 7F A9
	and $AA18AA.l		; 2F AA 18 AA
	inc A		; 1A
	plb		; AB
	rol $18AE.w		; 2E AE 18
	cmp #$AB1A.w		; C9 1A AB
	clc		; 18
	ldx $A8AE.w		; AE AE A8
	lda $A92E.w		; AD 2E A9
	dec $EB08.w,X		; DE 08 EB
	ror $C91A.w		; 6E 1A C9
	clc		; 18
	adc $C92EAD.l,X		; 7F AD 2E C9
	rts		; 60

	cmp #$C91A.w		; C9 1A C9
	clc		; 18
	ldx $C92E.w		; AE 2E C9
	clc		; 18
	ldy $AD1B.w		; AC 1B AD
	and $DEB0.w		; 2D B0 DE
	php		; 08
	xba		; EB
	ror $C91B.w		; 6E 1B C9
	clc		; 18
	adc $ADAEB0.l,X		; 7F B0 AE AD
	.db $30, $C9		; 30 C9
	and $1BB2.w		; 2D B2 1B
	cmp #$B418.w		; C9 18 B4
	lda ($17.b)		; B2 17
	.db $B0, $18		; B0 18
	lda $2DB019.l		; AF 19 B0 2D
	lda $DE.b,X		; B5 DE
	ora #$0CDF.w		; 09 DF 0C
	xba		; EB
	ldy $18.b,X		; B4 18
	adc $30A498.l,X		; 7F 98 A4 30
	ldx #$F7.b		; A2 F7
	clc		; 18
	ora $F79EA1.l		; 0F A1 9E F7
	ora $A69F0F.l		; 0F 0F 9F A6
	clc		; 18
	stz $6B18.w		; 9C 18 6B
	tay		; A8
	.db $30, $7F		; 30 7F
	ldx $F7.b		; A6 F7
	trb $0F.b		; 14 0F
	ldy $A3.b		; A4 A3
	sbc [$0E.b],Y		; F7 0E
	.db $10, $A4		; 10 A4
	.db $30, $7B		; 30 7B
	lda #$09DE.w		; A9 DE 09
	xba		; EB
	ldy #$DF.b		; A0 DF
	php		; 08
	clc		; 18
	adc $24B0A4.l,X		; 7F A4 B0 24
	ldx $6F0C.w		; AE 0C 6F
	lda $7F18.w		; AD 18 7F
	tax		; AA
	clc		; 18
	tda		; 7B
	plb		; AB
	.db $30, $7F		; 30 7F
	lda ($18.b)		; B2 18
	tay		; A8
	clc		; 18
	rtl		; 6B

	ldy $24.b,X		; B4 24
	adc $B00CB2.l,X		; 7F B2 0C B0
	clc		; 18
	lda $7B30B0.l		; AF B0 30 7B
	lda $71.b,X		; B5 71
	jsr $0000.w		; 20 00 00
	sta ($20.b,X)		; 81 20
	stz $0020.w		; 9C 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	ora $E3F4.w		; 0D F4 E3
	sbc $EB19E5.l,X		; FF E5 19 EB
	sbc $DF0ADE.l,X		; FF DE 0A DF
	tsb $7F08.w		; 0C 08 7F
	lda $08C904.l		; AF 04 C9 08
	lda $08C904.l		; AF 04 C9 08
	lda $00C922.l		; AF 22 C9 00
	pea $FFEB.w		; F4 EB FF
	dec $DF0A.w,X		; DE 0A DF
	php		; 08
	asl $C9.b		; 06 C9
	php		; 08
	adc $C904AB.l,X		; 7F AB 04 C9
	php		; 08
	plb		; AB
	tsb $C9.b		; 04 C9
	bit $AB.b		; 24 AB
	ldy $20.b,X		; B4 20
	brk $00.b		; 00 00
	cpy $20.b		; C4 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	ora $E3F4.w		; 0D F4 E3
	sbc $E5FFEB.l,X		; FF EB FF E5
	trb $DE.b		; 14 DE
	tsb $4F0C.w		; 0C 0C 4F
	tya		; 98
	tya		; 98
	.db $30, $98		; 30 98
	brk $DA.b		; 00 DA
	jsr $0000.w		; 20 00 00
	nop		; EA
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	ora $E3F4.w		; 0D F4 E3
	sbc $E5FFEB.l,X		; FF EB FF E5
	trb $DE.b		; 14 DE
	tsb $4F60.w		; 0C 60 4F
	tya		; 98
	brk $FD.b		; 00 FD
	jsr $0000.w		; 20 00 00
	ora $0021.w		; 0D 21 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	ora $E3F4.w		; 0D F4 E3
	sbc $E5FFEB.l,X		; FF EB FF E5
	trb $DE.b		; 14 DE
	tsb $4F60.w		; 0C 60 4F
	tya		; 98
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bit $4000.w,X		; 3C 00 40
	and $3640.w		; 2D 40 36
	rti		; 40

	jmp ($7E40.w)		; 6C 40 7E
	rti		; 40

	dec $40.b		; C6 40
	nop		; EA
	rti		; 40

	jsr $EA41.w		; 20 41 EA
	rti		; 40

	jsr $3241.w		; 20 41 32
	eor ($4D.b,X)		; 41 4D
	eor ($32.b,X)		; 41 32
	eor ($4D.b,X)		; 41 4D
	eor ($B0.b,X)		; 41 B0
	eor ($F8.b,X)		; 41 F8
	eor ($1C.b,X)		; 41 1C
	.db $42, $37		; 42 37
	.db $42, $52		; 42 52
	.db $42, $8E		; 42 8E
	eor $A0.b		; 45 A0
	eor $E8.b		; 45 E8
	eor $A0.b		; 45 A0
	eor $E8.b		; 45 E8
	eor $0C.b		; 45 0C
	lsr $8A.b		; 46 8A
	lsr $FF.b		; 46 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F0FFFF.l,X		; FF FF FF F0
	asl $00.b		; 06 00
	rti		; 40

	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsx		; BA
	brk $5E.b		; 00 5E
	lda $4303.w,X		; BD 03 43
	asl $F2CD.w		; 0E CD F2
	tsx		; BA
	mvp $BD,$1D		; 44 1D BD
	ora $43.b,S		; 03 43
	ora $02CE.w		; 0D CE 02
	tsx		; BA
	and ($1E.b,S),Y		; 33 1E
	cpy DMASRC0H.w		; CC 03 43
	ora $F2CE.w		; 0D CE F2
	tyx		; BB
	mvp $CD,$0E		; 44 0E CD
	sbc ($44.b)		; F2 44
	ora $03BD.w,X		; 1D BD 03
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	txs		; 9A
	ora ($51.b,X)		; 01 51
	sbc ($01.b),Y		; F1 01
	ora $F00F00.l		; 0F 00 0F F0
	ror A		; 6A
	asl $EE9E.w,X		; 1E 9E EE
	.db $F0, $01		; F0 01
	ora ($34.b)		; 12 34
	and ($5A.b,S),Y		; 33 5A
	adc [$66.b]		; 67 66
	mvp $0E,$21		; 44 21 0E
	jmp.w [$A9B9]		; DC B9 A9
	phy		; 5A
	sta $BCBA.w,Y		; 99 BA BC
	sbc $563402.l,X		; FF 02 34 56
	adc [$5A.b],Y		; 77 5A
	ror $66.b,X		; 76 66
	eor ($21.b,S),Y		; 53 21
	asl $B9DC.w		; 0E DC B9
	txs		; 9A
	tad		; 5B
	lda #$CC9B.w		; A9 9B CC
	.db $D0, $11		; D0 11
	bit $56.b,X		; 34 56
	adc [$02.b],Y		; 77 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8A.b		; 00 8A
	ora ($42.b,X)		; 01 42
	.db $10, $02		; 10 02
	jsr $2012.w		; 20 12 20
	ora ($7A.b)		; 12 7A
	eor $23.b,S		; 43 23
	and $22.b,S		; 23 22
	ora ($21.b)		; 12 21
	.db $10, $10		; 10 10
	ror A		; 6A
	asl $EEEE.w		; 0E EE EE
	cpy $BCBB.w		; CC BB BC
	tsx		; BA
	tax		; AA
	ror A		; 6A
	tsx		; BA
	tsx		; BA
	tyx		; BB
	cpy $DEDC.w		; CC DC DE
	inc $6AF0.w,X		; FE F0 6A
	ora ($12.b),Y		; 11 12
	and ($34.b,S),Y		; 33 34
	mvn $65,$55		; 54 55 65
	ror $6A.b		; 66 6A
	adc $55.b		; 65 55
	eor $54.b,X		; 55 54
	eor $32.b,S		; 43 32
	and ($10.b,X)		; 21 10
	ror A		; 6A
	sbc $DCDDFE.l,X		; FF FE DD DC
	wai		; CB
	tyx		; BB
	tsx		; BA
	tax		; AA
	ror A		; 6A
	tyx		; BB
	tax		; AA
	ldy $CCCC.w,X		; BC CC CC
	dec $FFFF.w,X		; DE FF FF
	ror A		; 6A
	cop $22.b		; 02 22
	and $34.b,S		; 23 34
	eor $55.b,X		; 55 55
	eor $66.b,X		; 55 66
	rtl		; 6B

	adc $56.b		; 65 56
	eor $44.b,X		; 55 44
	mvp $22,$22		; 44 22 22
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BA.b		; 00 BA
	ora ($2F.b,X)		; 01 2F
	brk $5D.b		; 00 5D
	sbc $0F11D2.l		; EF D2 11 0F
	stx $9E.b,Y		; 96 9E
	jsr ($BECB.w,X)		; FC CB BE
	dec $22E0.w,X		; DE E0 22
	mvp $1F,$BA		; 44 BA 1F
	.db $10, $1F		; 10 1F
	lsr $B2FF.w		; 4E FF B2
	ora ($00.b)		; 12 00
	txa		; 8A
	cpy $FE.b		; C4 FE
	xce		; FB
	inc $DF.b		; E6 DF
	cmp $30.b,S		; C3 30
	asl $10BA.w,X		; 1E BA 10
	ora $FF4E1F.l,X		; 1F 1F 4E FF
	rep #$01		; C2 01
	.db $10, $8B		; 10 8B
	ora $1A.b,S		; 03 1A
	xce		; FB
	inc $DF.b		; E6 DF
	cmp ($2F.b,S),Y		; D3 2F
	rol $0002.w		; 2E 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C6.b		; 00 C6
	eor ($10.b),Y		; 51 10
	brk $11.b		; 00 11
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	txa		; 8A
	bit $0F.b,X		; 34 0F
	cop $21.b		; 02 21
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	ply		; 7A
	sbc ($2F.b),Y		; F1 2F
	cmp $BC1F01.l,X		; DF 01 1F BC
	sbc ($11.b),Y		; F1 11
	ply		; 7A
	ora ($FD.b),Y		; 11 FD
	cmp $56F1.w		; CD F1 56
	rol $2002.w		; 2E 02 20
	txa		; 8A
	brk $12.b		; 00 12
	and ($21.b,S),Y		; 33 21
	ora ($10.b),Y		; 11 10
	ora ($44.b)		; 12 44
	txa		; 8A
	eor $0F.b,S		; 43 0F
	cop $10.b		; 02 10
	and $32.b,S		; 23 32
	and ($00.b,X)		; 21 00
	ror A		; 6A
	ora ($01.b,X)		; 01 01
	eor $1F.b		; 45 1F
	inc $CEAA.w,X		; FE AA CE
	cop $7A.b		; 02 7A
	jsr $CCDB.w		; 20 DB CC
	tax		; AA
	plb		; AB
	cmp $8AABEC.l		; CF EC AB 8A
	cmp $CCCC.w,X		; DD CC CC
	dec $CDDC.w,X		; DE DC CD
	sbc $7ADD.w		; ED DD 7A
	wai		; CB
	tax		; AA
	tax		; AA
	ldy $DFCC.w,X		; BC CC DF
	brk $FF.b		; 00 FF
	ply		; 7A
	ora ($10.b,X)		; 01 10
	ora $352302.l		; 0F 02 23 35
	eor $56.b		; 45 56
	ply		; 7A
	eor $44.b,X		; 55 44
	eor $43.b,X		; 55 43
	eor $65.b		; 45 65
	mvp $7B,$44		; 44 44 7B
	mvp $12,$21		; 44 21 12
	and ($22.b,S),Y		; 33 22
	.db $10, $00		; 10 00
	sbc $000002.l,X		; FF 02 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9A.b		; 00 9A
	ora ($42.b,X)		; 01 42
	.db $10, $11		; 10 11
	ora ($21.b),Y		; 11 21
	ora ($21.b)		; 12 21
	ply		; 7A
	and $76.b,X		; 35 76
	eor $54.b,X		; 55 54
	bit $32.b,X		; 34 32
	ora ($10.b)		; 12 10
	ply		; 7A
	sbc $DCDDFE.l,X		; FF FE DD DC
	tyx		; BB
	tyx		; BB
	tsx		; BA
	tax		; AA
	ply		; 7A
	tsx		; BA
	plb		; AB
	tyx		; BB
	ldy $DDDD.w,X		; BC DD DD
	sbc $117AF0.l		; EF F0 7A 11
	ora ($33.b)		; 12 33
	mvp $65,$44		; 44 44 65
	adc $65.b		; 65 65
	ply		; 7A
	ror $65.b		; 66 65
	eor $54.b,X		; 55 54
	eor $22.b,S		; 43 22
	and ($0F.b)		; 32 0F
	ply		; 7A
	brk $ED.b		; 00 ED
	sbc $BBDC.w		; ED DC BB
	tyx		; BB
	plb		; AB
	plb		; AB
	ply		; 7A
	tax		; AA
	plb		; AB
	tyx		; BB
	ldy $CDDD.w,X		; BC DD CD
	sbc $117AF0.l,X		; FF F0 7A 11
	ora ($33.b)		; 12 33
	bit $55.b,X		; 34 55
	eor $56.b,X		; 55 56
	ror $7B.b		; 66 7B
	lsr $56.b,X		; 56 56
	eor $45.b,X		; 55 45
	eor $23.b,S		; 43 23
	and ($01.b,X)		; 21 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B6.b		; 00 B6
	sbc $31.b,X		; F5 31
	mvp $30,$00		; 44 00 30
	.db $D0, $0D		; D0 0D
	sbc ($A6.b,X)		; E1 A6
	nop		; EA
	ora ($C1.b),Y		; 11 C1
	eor $110BE5.l		; 4F E5 0B 11
	plb		; AB
	tsx		; BA
	and $FDE3.w,X		; 3D E3 FD
	jsl $E34EDF.l		; 22 DF 4E E3
	and $F7AA.w		; 2D AA F7
	cpx $B150.w		; EC 50 B1
	rtl		; 6B

	lda [$0B.b],Y		; B7 0B
	rol $A7.b		; 26 A7
	phx		; DA
	and ($C1.b,X)		; 21 C1
	lsr $1BD5.w		; 4E D5 1B
	ora ($AB.b),Y		; 11 AB
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $86.b		; 00 86
	sta $4426.w,X		; 9D 26 44
	eor $FC.b,S		; 43 FC
	cmp $7AFFFF.l,X		; DF FF FF 7A
	and ($1E.b,X)		; 21 1E
	sbc $23EE.w		; ED EE 23
	stz $00.b		; 64 00
	jmp.w [$AA66]		; DC 66 AA
	cmp $E0DDFD.l		; CF FD DD E0
	and ($32.b)		; 32 32
	ora $C0F06A.l		; 0F 6A F0 C0
	and $20F1.w,X		; 3D F1 20
	and ($12.b)		; 32 12
	inc $E06A.w,X		; FE 6A E0
	sbc $1010.w,X		; FD 10 10
	and ($3C.b),Y		; 31 3C
	brk $0F.b		; 00 0F
	ror A		; 6A
	asl $BE21.w		; 0E 21 BE
	bit $3031.w,X		; 3C 31 30
	and ($EF.b)		; 32 EF
	ply		; 7A
	.db $10, $DC		; 10 DC
	and ($E1.b,S),Y		; 33 E1
	ora ($0E.b),Y		; 11 0E
	ora $3E6A10.l,X		; 1F 10 6A 3E
	cpy #$FC.b		; C0 FC
	asl $12E3.w,X		; 1E E3 12
	eor $20.b,X		; 55 20
	ror A		; 6A
	lda $C21E.w,X		; BD 1E C2
	.db $10, $01		; 10 01
	sbc ($11.b,S),Y		; F3 11
	sbc ($6A.b),Y		; F1 6A
	brk $D1.b		; 00 D1
	dec $BE2D.w,X		; DE 2D BE
	and $41.b,S		; 23 41
	eor $7A.b,X		; 55 7A
	and $00FFBF.l,X		; 3F BF FF 00
	sbc ($11.b)		; F2 11
	ora ($F2.b,X)		; 01 F2
	txa		; 8A
	sbc ($F1.b),Y		; F1 F1
	cpx #$00.b		; E0 00
	ora $11FE.w		; 0D FE 11
	bit $8A.b,X		; 34 8A
	eor ($EC.b)		; 52 EC
	cmp $21F0.w		; CD F0 21
	cop $10.b		; 02 10
	.db $10, $AA		; 10 AA
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	ora ($23.b,X)		; 01 23
	txs		; 9A
	jmp $FECC.w		; 4C CC FE
	ora ($10.b,X)		; 01 10
	ora ($11.b)		; 12 11
	.db $F0, $9A		; F0 9A
	sbc $FF0F01.l,X		; FF 01 0F FF
	ora $35000F.l		; 0F 0F 00 35
	tax		; AA
	eor $F1FFDE.l		; 4F DE FF F1
	ora ($01.b),Y		; 11 01
	brk $00.b		; 00 00
	txs		; 9A
	sbc $10F001.l,X		; FF 01 F0 10
	sbc $0F1F.w		; ED 1F 0F
	bit $AA.b		; 24 AA
	.db $42, $ED		; 42 ED
	inc $11F1.w		; EE F1 11
	ora ($00.b),Y		; 11 00
	.db $F0, $8A		; F0 8A
	brk $D2.b		; 00 D2
	jsr $BC1F.w		; 20 1F BC
	sbc ($D0.b),Y		; F1 D0
	ora [$9A.b]		; 07 9A
	adc [$0B.b]		; 67 0B
	ldy $23D0.w		; AC D0 23
	and ($1F.b,X)		; 21 1F
	.db $F0, $8A		; F0 8A
	.db $10, $E1		; 10 E1
	ora ($EF.b)		; 12 EF
	sbc $ED0E.w		; ED 0E ED
	cop $AA.b		; 02 AA
	bit $3F.b		; 24 3F
	cmp $01EF.w,X		; DD EF 01
	and ($00.b,X)		; 21 00
	brk $8A.b		; 00 8A
	.db $F0, $00		; F0 00
	ora ($F1.b,X)		; 01 F1
	phd		; 0B
	cmp $AADE0D.l,X		; DF 0D DE AA
	trb $61.b		; 14 61
	cpy $F0EF.w		; CC EF F0
	and ($11.b,X)		; 21 11
	ora $1FF28A.l		; 0F 8A F2 1F
	sbc ($2F.b,X)		; E1 2F
	ora $DFBF.w		; 0D BF DF
	ldx $03BA.w,Y		; BE BA 03
	eor ($DE.b,X)		; 41 DE
	sbc $110001.l		; EF 01 00 11
	brk $8A.b		; 00 8A
	asl $D4DF.w,X		; 1E DF D4
	ora ($FF.b,X)		; 01 FF
	ldx $BCED.w,Y		; BE ED BC
	tsx		; BA
	cop $62.b		; 02 62
	cpy $10E0.w		; CC E0 10
	ora ($11.b,X)		; 01 11
	ora $4EA28A.l		; 0F 8A A2 4E
	cop $FE.b		; 02 FE
	rol $DDBF.w,X		; 3E BF DD
	cpy $F1BA.w		; CC BA F1
	stz $CC.b,X		; 74 CC
	sbc $0111F1.l		; EF F1 11 01
	.db $10, $9A		; 10 9A
	ldy $F121.w,X		; BC 21 F1
	and $FEEF0F.l		; 2F 0F EF FE
	inc $F0BA.w,X		; FE BA F0
	lsr $EC.b,X		; 56 EC
	dec $1001.w,X		; DE 01 10
	ora ($00.b),Y		; 11 00
	txa		; 8A
	stp		; DB
.INDEX 16
	rep #$12		; C2 12
	rti		; 40

	ora $2BE9.w		; 0D E9 2B
	xce		; FB
	dex		; CA
	ora $EF2D14.l		; 0F 14 2D EF
	ora $100011.l		; 0F 11 00 10
	txs		; 9A
	sta $0021.w,X		; 9D 21 00
	jsl $D1ED0F.l		; 22 0F ED D1
	asl $FFBA.w		; 0E BA FF
	ora $6E.b,X		; 15 6E
	ldy $1000.w,X		; BC 00 10
	.db $10, $20		; 10 20
	stx $3E.b,Y		; 96 3E
	inc $13F0.w		; EE F0 13
	and ($0F.b,X)		; 21 0F
	cpy $BAA9.w		; CC A9 BA
	.db $F0, $03		; F0 03
	adc ($BD.b,X)		; 61 BD
	cpx #$1001.w		; E0 01 10
	ora ($9A.b),Y		; 11 9A
	phd		; 0B
	sbc ($00.b,X)		; E1 00
	ora $00.b,S		; 03 00
	sbc $CAEFD0.l		; EF D0 EF CA
	ora $EE4F02.l		; 0F 02 4F EE
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	txs		; 9A
	sbc #$10E1.w		; E9 E1 10
	sbc ($2F.b,S),Y		; F3 2F
	sbc $CAFFDF.l		; EF DF FF CA
	ora $DE50F2.l		; 0F F2 50 DE
	.db $F0, $10		; F0 10
	brk $10.b		; 00 10
	txa		; 8A
	pld		; 2B
	xba		; EB
	ora $EC3105.l,X		; 1F 05 31 EC
	lda $CAFD.w		; AD FD CA
	ora $CE51F2.l		; 0F F2 51 CE
	.db $F0, $01		; F0 01
	.db $10, $00		; 10 00
	txa		; 8A
	and $10DB.w		; 2D DB 10
	ora $52.b,X		; 15 52
	tyx		; BB
	ldx $CAED.w,Y		; BE ED CA
	ora $CD53F1.l		; 0F F1 53 CD
	.db $F0, $01		; F0 01
	.db $10, $00		; 10 00
	txs		; 9A
	brk $FC.b		; 00 FC
	.db $10, $02		; 10 02
	.db $42, $EE		; 42 EE
	lda $00CAF0.l,X		; BF F0 CA 00
	sbc $E0FC35.l,X		; FF 35 FC E0
	brk $11.b		; 00 11
	brk $9A.b		; 00 9A
	and $F300CD.l		; 2F CD 00 F3
	stz $BC.b		; 64 BC
	sbc $CAFF.w		; ED FF CA
	brk $F0.b		; 00 F0
	ora $1D.b,X		; 15 1D
	cmp $001100.l,X		; DF 00 11 00
	tax		; AA
	jsr $F0EF.w		; 20 EF F0
	sbc ($43.b),Y		; F1 43
	dec $00FE.w,X		; DE FE 00
	dex		; CA
	brk $FF.b		; 00 FF
	ora $2D.b,X		; 15 2D
	cmp $011000.l,X		; DF 00 10 01
	tax		; AA
	rol $FFD0.w,X		; 3E D0 FF
	ora ($43.b,X)		; 01 43
	dec $F1EF.w,X		; DE EF F1
	dex		; CA
	brk $F0.b		; 00 F0
	tsb $2E.b		; 04 2E
	cmp $010001.l,X		; DF 01 00 01
	tax		; AA
	ora $FF00EF.l,X		; 1F EF 00 FF
	stz $DC.b		; 64 DC
	sbc $00CA0F.l,X		; FF 0F CA 00
	ora $DF3D04.l		; 0F 04 3D DF
	ora ($00.b,X)		; 01 00
	ora ($AA.b,X)		; 01 AA
	jsr $E0EE.w		; 20 EE E0
	sbc ($64.b),Y		; F1 64
	cmp $F0FE.w		; CD FE F0
	dex		; CA
	brk $0F.b		; 00 0F
	tsb $3D.b		; 04 3D
	inc $1000.w		; EE 00 10
	.db $10, $BA		; 10 BA
	ora $F00F0F.l,X		; 1F 0F 0F F0
	eor $EE.b,S		; 43 EE
	sbc $00BA01.l		; EF 01 BA 00
	ora $BD7DF5.l		; 0F F5 7D BD
	.db $F0, $12		; F0 12
	.db $10, $BA		; 10 BA
	brk $0F.b		; 00 0F
	.db $F0, $F0		; F0 F0
	mvp $F0,$DD		; 44 DD F0
	brk $CA.b		; 00 CA
	brk $00.b		; 00 00
	sbc ($40.b),Y		; F1 40
	dec $0001.w,X		; DE 01 00
	ora ($BA.b,X)		; 01 BA
	brk $F0.b		; 00 F0
	sbc $DE52F1.l,X		; FF F1 52 DE
	.db $F0, $F0		; F0 F0
	tsx		; BA
	.db $10, $00		; 10 00
	.db $F0, $63		; F0 63
	ldy $10F1.w,X		; BC F1 10
	.db $10, $BA		; 10 BA
	brk $00.b		; 00 00
	sbc $DD54F0.l,X		; FF F0 54 DD
	cpx #$BA01.w		; E0 01 BA
	brk $00.b		; 00 00
	.db $F0, $43		; F0 43
	cmp $10F0.w,X		; DD F0 10
	.db $10, $BA		; 10 BA
	ora $F0FF10.l		; 0F 10 FF F0
	mvn $E0,$DD		; 54 DD E0
	ora ($AA.b,X)		; 01 AA
	ora $65FF11.l		; 0F 11 FF 65
	dex		; CA
	sbc ($11.b,X)		; E1 11
	.db $10, $BA		; 10 BA
	.db $F0, $10		; F0 10
	sbc $CC64F0.l,X		; FF F0 64 CC
	.db $F0, $00		; F0 00
	tax		; AA
	jsr $0010.w		; 20 10 00
	eor $CC.b,S		; 43 CC
	sbc ($21.b,X)		; E1 21
	ora $0000BA.l		; 0F BA 00 00
	.db $F0, $F0		; F0 F0
	mvn $E0,$CD		; 54 CD E0
	ora ($AA.b,X)		; 01 AA
	ora ($00.b),Y		; 11 00
	brk $32.b		; 00 32
	cmp $11F0.w,X		; DD F0 11
	.db $10, $BA		; 10 BA
	ora $F00F00.l		; 0F 00 0F F0
	adc $CD.b,S		; 63 CD
	.db $F0, $01		; F0 01
	txs		; 9A
	ora $540F13.l		; 0F 13 0F 54
	tax		; AA
.ACCU 8
.INDEX 8
	sep #$32		; E2 32
	asl $00BA.w,X		; 1E BA 00
	ora $64F0F0.l		; 0F F0 F0 64
	cpy $01F0.w		; CC F0 01
	txs		; 9A
	and $130F04.l		; 2F 04 0F 13
	jmp.w [$31E1]		; DC E1 31
	ora $000FBA.l,X		; 1F BA 0F 00
	ora $CC64F0.l		; 0F F0 64 CC
	sbc ($01.b,X)		; E1 01
	txa		; 8A
	ora ($F6.b,S),Y		; 13 F6
	ora $E3CA02.l,X		; 1F 02 CA E3
	.db $42, $3E		; 42 3E
	tsx		; BA
	.db $F0, $00		; F0 00
	.db $F0, $F0		; F0 F0
	stz $CC.b		; 64 CC
	cpx #$11.b		; E0 11
	txa		; 8A
	asl $2E46.w,X		; 1E 46 2E
	cpx #$DC.b		; E0 DC
	sbc ($42.b,S),Y		; F3 42
	rol $F0BA.w		; 2E BA F0
	brk $F0.b		; 00 F0
	.db $F0, $64		; F0 64
	cpy $11E0.w		; CC E0 11
	txa		; 8A
	ora $EE1F46.l,X		; 1F 46 1F EE
	cmp $4204.w		; CD 04 42
	rol $F0BA.w		; 2E BA F0
	brk $F0.b		; 00 F0
	.db $F0, $64		; F0 64
	ldy $01F1.w,X		; BC F1 01
	txa		; 8A
	.db $10, $17		; 10 17
	and $03DFDC.l		; 2F DC DF 03
	.db $42, $2E		; 42 2E
	tsx		; BA
	.db $F0, $00		; F0 00
	.db $F0, $F0		; F0 F0
	stz $BC.b		; 64 BC
	sbc ($01.b),Y		; F1 01
	stx $EE.b,Y		; 96 EE
	sbc ($43.b,S),Y		; F3 43
	jsr $DFEC.w		; 20 EC DF
	ora ($32.b)		; 12 32
	tsx		; BA
	.db $F0, $00		; F0 00
	.db $F0, $F0		; F0 F0
	stz $BC.b		; 64 BC
	sbc ($01.b),Y		; F1 01
	txa		; 8A
	.db $10, $17		; 10 17
	and $14DEDC.l		; 2F DC DE 14
	eor ($2E.b,X)		; 41 2E
	tsx		; BA
	.db $F0, $00		; F0 00
	.db $F0, $F0		; F0 F0
	stz $CC.b		; 64 CC
	cpx #$11.b		; E0 11
	txa		; 8A
	and $EC2F45.l		; 2F 45 2F EC
	dec $4114.w		; CE 14 41
	rol $F0BA.w		; 2E BA F0
	brk $F0.b		; 00 F0
	.db $F0, $64		; F0 64
	cpy $11E0.w		; CC E0 11
	phb		; 8B
	ora $ED1E56.l,X		; 1F 56 1E ED
	cmp $4213.w,X		; DD 13 42
	and $0002.w,X		; 3D 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	txs		; 9A
	ora ($42.b,X)		; 01 42
	.db $10, $11		; 10 11
	ora ($21.b),Y		; 11 21
	ora ($21.b)		; 12 21
	ply		; 7A
	and $76.b,X		; 35 76
	eor $54.b,X		; 55 54
	bit $32.b,X		; 34 32
	ora ($10.b)		; 12 10
	ply		; 7A
	sbc $DCDDFE.l,X		; FF FE DD DC
	tyx		; BB
	tyx		; BB
	tsx		; BA
	tax		; AA
	ply		; 7A
	tsx		; BA
	plb		; AB
	tyx		; BB
	ldy $DDDD.w,X		; BC DD DD
	sbc $117AF0.l		; EF F0 7A 11
	ora ($33.b)		; 12 33
	mvp $65,$44		; 44 44 65
	adc $65.b		; 65 65
	ply		; 7A
	ror $65.b		; 66 65
	eor $54.b,X		; 55 54
	eor $22.b,S		; 43 22
	and ($0F.b)		; 32 0F
	ply		; 7A
	brk $ED.b		; 00 ED
	sbc $BBDC.w		; ED DC BB
	tyx		; BB
	plb		; AB
	plb		; AB
	ply		; 7A
	tax		; AA
	plb		; AB
	tyx		; BB
	ldy $CDDD.w,X		; BC DD CD
	sbc $117AF0.l,X		; FF F0 7A 11
	ora ($33.b)		; 12 33
	bit $55.b,X		; 34 55
	eor $56.b,X		; 55 56
	ror $7B.b		; 66 7B
	lsr $56.b,X		; 56 56
	eor $45.b,X		; 55 45
	eor $23.b,S		; 43 23
	and ($01.b,X)		; 21 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C6.b		; 00 C6
	.db $42, $00		; 42 00
	sbc $F2FE11.l,X		; FF 11 FE F2
	brk $EF.b		; 00 EF
	ldx $F2.b,Y		; B6 F2
	sbc ($FF.b,S),Y		; F3 FF
	eor ($21.b,S),Y		; 53 21
	.db $10, $33		; 10 33
	ora ($B6.b,X)		; 01 B6
	cpx #$0D.b		; E0 0D
	.db $F0, $E1		; F0 E1
	ldy #$0D.b		; A0 0D
	.db $F0, $D2		; F0 D2
	ldx $04.b		; A6 04
	jmp ($3456.w)		; 6C 56 34
	eor ($F7.b)		; 52 F7
	lsr $A6EE.w		; 4E EE A6
	and ($AD.b,X)		; 21 AD
	.db $90, $FC		; 90 FC
	xba		; EB
	cmp $E3.b		; C5 E3
	dec $B6.b		; C6 B6
	jsr $4E33.w		; 20 33 4E
	ora ($2D.b,X)		; 01 2D
	asl $EC1D.w		; 0E 1D EC
	ldx $DE.b,Y		; B6 DE
	.db $F0, $EC		; F0 EC
	sbc $201E.w,X		; FD 1E 20
	ora ($11.b)		; 12 11
	ldx $E0.b,Y		; B6 E0
	and ($D1.b,S),Y		; 33 D1
	dec $EDF4.w		; CE F4 ED
	dec $A61F.w		; CE 1F A6
	.db $10, $09		; 10 09
	eor $5D.b		; 45 5D
	sbc $5E.b,X		; F5 5E
	.db $F0, $12		; F0 12
	lda ($32.b)		; B2 32
	rol $F0CE.w		; 2E CE F0
	ora $55D3.w		; 0D D3 55
	bit $B6.b,X		; 34 B6
	stz $0F.b		; 64 0F
	sbc $D2EC42.l		; EF 42 EC D2
	.db $F0, $CF		; F0 CF
	ldx $F2.b,Y		; B6 F2
	pea $53FF.w		; F4 FF 53
	and ($10.b,X)		; 21 10
	and ($01.b,S),Y		; 33 01
	ldx $D0.b,Y		; B6 D0
	asl $D0FF.w,X		; 1E FF D0
	ldy #$0D.b		; A0 0D
	.db $F0, $E3		; F0 E3
	ldx $13.b		; A6 13
	tad		; 5B
	eor [$44.b],Y		; 57 44
	.db $42, $F7		; 42 F7
	lsr $A6DE.w		; 4E DE A6
	and ($AE.b,X)		; 21 AE
	sta $C5EBEC.l,X		; 9F EC EB C5
	pea $B6C6.w		; F4 C6 B6
	jsr $4E23.w		; 20 23 4E
	sbc ($3D.b)		; F2 3D
	inc $FC1D.w,X		; FE 1D FC
	ldx $DE.b,Y		; B6 DE
	.db $F0, $EC		; F0 EC
	sbc $2F1E.w,X		; FD 1E 2F
	cop $22.b		; 02 22
	ldx $F0.b,Y		; B6 F0
	jsl $F5CED2.l		; 22 D2 CE F5
	sbc $10BE.w		; ED BE 10
	ldx $1F.b		; A6 1F
	sbc $5C45.w,Y		; F9 45 5C
	inc $6E.b		; E6 6E
	.db $F0, $01		; F0 01
	lda ($32.b)		; B2 32
	and $01BE.w		; 2D BE 01
	ora $56D3.w		; 0D D3 56
	mvp $55,$B6		; 44 B6 55
	ora $EC32EF.l		; 0F EF 32 EC
	cmp ($F0.b,S),Y		; D3 F0
	cmp $F3F2B6.l		; CF B6 F2 F3
	sbc $102152.l,X		; FF 52 21 10
	and ($01.b,S),Y		; 33 01
	lda [$E0.b],Y		; B7 E0
	ora $E0F0.w,X		; 1D F0 E0
	.db $90, $0D		; 90 0D
	.db $F0, $E2		; F0 E2
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFBEBB.l		; EF BB BE BF
	sbc $FFFFEF.l		; EF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	plx		; FA
	plx		; FA
	sbc $BEEFFF.l,X		; FF FF EF BE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFBFF.l,X		; FF FF FB DF
	sbc $DFF7FF.l,X		; FF FF F7 DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FAEBFF.l,X		; FF FF EB FA
	lda $DEF7BF.l,X		; BF BF F7 DE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AFFEFF.l,X		; FF FF FE AF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FBFFFF.l,X		; FF FF FF FB
	ldx $BFFB.w,Y		; BE FB BF
	lda $FFFBFF.l,X		; BF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFEB.l,X		; FF EB FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEBFEB.l,X		; FF EB BF FE
	lda $FFBBFE.l		; AF FE BB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBB.l,X		; FF BB FF FF
	ldx $BFEF.w,Y		; BE EF BF
	tyx		; BB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFAB.l,X		; FF AB FF BF
	tax		; AA
	inc $FBE3.w		; EE E3 FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b]		; E7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	nop		; EA
	sbc $BFBFAF.l,X		; FF AF BF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	inc $FFFF.w,X		; FE FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $EEFFFF.l,X		; FF FF FF EE
	lda $EEEFBE.l		; AF BE EF EE
	tyx		; BB
	ldx $FFFF.w		; AE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $EFBFFF.l,X		; FF FF BF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BEFFFF.l,X		; FF FF FF BE
	sbc $FFEFBF.l,X		; FF BF EF FF
	sbc $FFFFFA.l,X		; FF FA FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $EBFFFF.l,X		; FF FF FF EB
	sbc $BFEBFE.l,X		; FF FE EB BF
	nop		; EA
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $BEFBBF.l,X		; FF BF FB BE
	sbc $FFFFEB.l,X		; FF EB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFABFF.l,X		; BF FF AB FF
	lda $FFFFBA.l,X		; BF BA FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	plb		; AB
	ldx $FFFF.w,Y		; BE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	cmp $EFEFFF.l,X		; DF FF EF EF
	lda $FFBFBE.l,X		; BF BE BF FF
	plb		; AB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFBF.l,X		; FF BF BF FF
	sbc $BEFFEE.l		; EF EE FF BE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FBFFBF.l,X		; FF BF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EEFBFF.l,X		; FF FF FB EE
	lda $FEFBFF.l,X		; BF FF FB FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sta $FFFFFF.l,X		; 9F FF FF FF
	sbc $FDF7FF.l,X		; FF FF F7 FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFE.l,X		; FF FE FF BF
	sbc [$FA.b]		; E7 FA
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFDF.l,X		; DF DF FF FF
	sbc $AEFFFF.l,X		; FF FF FF AE
	sbc $ABAFBF.l,X		; FF BF AF AB
	lda $FFFFFB.l,X		; BF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BF9EFF.l		; EF FF 9E BF
	lda $FFFFFF.l		; AF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFBF.l,X		; FF BF FF FE
	inc $BFAF.w		; EE AF BF
	plb		; AB
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $F7FFF7.l,X		; FF F7 FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEBF.l		; EF BF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $EEFFFF.l,X		; FF FF FF EE
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	ldx $FBFF.w		; AE FF FB
	sbc $FFABFB.l,X		; FF FB AB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF5F.l,X		; FF 5F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	xce		; FB
	cmp $FBFBFF.l,X		; DF FF FB FB
	plb		; AB
	ldx $FFFF.w		; AE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $EBFFFF.l,X		; FF FF FF EB
	sbc $FFBBFF.l,X		; FF FF BB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	ldx $EFFB.w,Y		; BE FB EF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFEBE.l,X		; FF BE FE FB
	sbc $FFFBFB.l		; EF FB FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $EFFFFF.l,X		; FF FF FF EF
	lda $FFBFFB.l,X		; BF FB BF FF
	tyx		; BB
	plx		; FA
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	adc $FFFFBF.l,X		; 7F BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFB.l,X		; FF FB FB FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $3FFAAF.l		; EF AF FA 3F
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $BFEFEF.l,X		; FF EF EF BF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FBFBEF.l,X		; FF EF FB FB
	sbc $EFEFFF.l		; EF FF EF EF
	tyx		; BB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l		; EF FE FF FF
	xba		; EB
	xce		; FB
	lda $FFFFEF.l		; AF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $BEBAFE.l,X		; FF FE BA BE
	xce		; FB
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AAFBFF.l		; EF FF FB AA
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFE.l,X		; FF FE BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BBFBAB.l,X		; FF AB FB BB
	sbc $FEBFBF.l		; EF BF BF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFBFF.l,X		; BF FF FB FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $AFFBFF.l,X		; FF FF FB AF
	sbc $BFEFFF.l,X		; FF FF EF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	tyx		; BB
	sbc $BBEAFF.l,X		; FF FF EA BB
	tyx		; BB
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	lda $FFFFEB.l,X		; BF EB FF FF
	lda $FFFFBD.l		; AF BD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	plb		; AB
	sbc $AFFBBE.l,X		; FF BE FB AF
	tsx		; BA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFF.w,X		; FD FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AFFFFB.l,X		; FF FB FF AF
	rol $BEBF.w,X		; 3E BF BE
	adc $FFFFAF.l		; 6F AF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $BFEFFF.l,X		; FF FF EF BF
	lda $ADAFEF.l,X		; BF EF AF AD
	plx		; FA
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7F7.l,X		; FF F7 F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	xce		; FB
	sta $EFEBBB.l,X		; 9F BB EB EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	tyx		; BB
	inc $EC.b		; E6 EC
	lda $FFFF.w,X		; BD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	tyx		; BB
	inc $BFFF.w,X		; FE FF BF
	sbc $FFFFEA.l,X		; FF EA FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l		; EF FF FF EF
	sbc $FFEBAB.l,X		; FF AB EB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	xce		; FB
	sbc $AFF7FB.l		; EF FB F7 AF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b]		; E7 FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $B3BFFF.l		; AF FF BF B3
	xce		; FB
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FDFFF.l,X		; FF FF DF 7F
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FBEFFB.l,X		; FF FB EF FB
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $3FFFFF.l,X		; FF FF FF 3F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	inc $AEFF.w,X		; FE FF AE
	plb		; AB
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $6FEFFF.l,X		; FF FF EF 6F
	lda $EAFFEE.l,X		; BF EE FF EA
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBBFFF.l,X		; FF FF BF FB
	lda $AE7BBF.l,X		; BF BF 7B AE
	plb		; AB
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FEEFBF.l,X		; FF BF EF FE
	sbc $FFFFEF.l		; EF EF FF FF
	lda $FFFF.w,Y		; B9 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc [$FF.b],Y		; F7 FF
	lda $FFFFDF.l,X		; BF DF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $6D		; 10 6D
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $4E		; 10 4E
	brk $4F.b		; 00 4F
	brk $80.b		; 00 80
	brk $81.b		; 00 81
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $5E		; 10 5E
	brk $5F.b		; 00 5F
	brk $90.b		; 00 90
	brk $91.b		; 00 91
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $4C		; 10 4C
	brk $4D.b		; 00 4D
	brk $D2.b		; 00 D2
	trb $D3.b		; 14 D3
	trb $F0.b		; 14 F0
	.db $10, $6D		; 10 6D
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $5C		; 10 5C
	brk $5D.b		; 00 5D
	brk $E2.b		; 00 E2
	trb $E3.b		; 14 E3
	trb $F0.b		; 14 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $4A		; 10 4A
	brk $4B.b		; 00 4B
	brk $BA.b		; 00 BA
	php		; 08
	tyx		; BB
	php		; 08
	jmp ($6D00.w)		; 6C 00 6D
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $5A		; 10 5A
	brk $5B.b		; 00 5B
	brk $CA.b		; 00 CA
	php		; 08
	wai		; CB
	php		; 08
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	pha		; 48
	brk $49.b		; 00 49
	brk $BE.b		; 00 BE
	trb $BF.b		; 14 BF
	trb $6C.b		; 14 6C
	brk $6D.b		; 00 6D
	brk $6E.b		; 00 6E
	brk $6F.b		; 00 6F
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $58		; 10 58
	brk $59.b		; 00 59
	brk $CE.b		; 00 CE
	trb $CF.b		; 14 CF
	trb $7C.b		; 14 7C
	brk $7D.b		; 00 7D
	brk $7E.b		; 00 7E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $46		; 10 46
	brk $47.b		; 00 47
	brk $B8.b		; 00 B8
	trb $B9.b		; 14 B9
	trb $F0.b		; 14 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $56		; 10 56
	brk $57.b		; 00 57
	brk $C8.b		; 00 C8
	trb $C9.b		; 14 C9
	trb $F0.b		; 14 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $44		; 10 44
	brk $45.b		; 00 45
	brk $D0.b		; 00 D0
	php		; 08
	cmp ($08.b),Y		; D1 08
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	adc $6E00.w		; 6D 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $54		; 10 54
	brk $55.b		; 00 55
	brk $E0.b		; 00 E0
	php		; 08
	sbc ($08.b,X)		; E1 08
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	adc $F000.w,X		; 7D 00 F0
	.db $10, $42		; 10 42
	brk $43.b		; 00 43
	brk $8A.b		; 00 8A
	php		; 08
	phb		; 8B
	php		; 08
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	eor ($00.b)		; 52 00
	eor ($00.b,S),Y		; 53 00
	txs		; 9A
	php		; 08
	txy		; 9B
	php		; 08
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	rti		; 40

	brk $41.b		; 00 41
	brk $B0.b		; 00 B0
	php		; 08
	lda ($08.b),Y		; B1 08
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $50, $00		; 50 00
	eor ($00.b),Y		; 51 00
	cpy #$08.b		; C0 08
	cmp ($08.b,X)		; C1 08
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($10.b)		; F2 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	.db $F0, $10		; F0 10
	adc $6E00.w		; 6D 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $BC		; 10 BC
	.db $10, $BD		; 10 BD
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $CC		; 10 CC
	.db $10, $CD		; 10 CD
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $BC		; 10 BC
	.db $10, $BD		; 10 BD
	.db $10, $6E		; 10 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $CC		; 10 CC
	.db $10, $CD		; 10 CD
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $BC		; 10 BC
	.db $10, $BD		; 10 BD
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $CC		; 10 CC
	.db $10, $CD		; 10 CD
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $BC		; 10 BC
	.db $10, $BD		; 10 BD
	.db $10, $6E		; 10 6E
	brk $6F.b		; 00 6F
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $CC		; 10 CC
	.db $10, $CD		; 10 CD
	.db $10, $7E		; 10 7E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $BC		; 10 BC
	.db $10, $BD		; 10 BD
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $00		; 10 00
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $CC		; 10 CC
	.db $10, $CD		; 10 CD
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $10		; 10 10
	ora ($11.b,X)		; 01 11
	ora ($12.b,X)		; 01 12
	ora ($13.b,X)		; 01 13
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $BC		; 10 BC
	.db $10, $BD		; 10 BD
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $20		; 10 20
	ora ($21.b,X)		; 01 21
	ora ($22.b,X)		; 01 22
	ora ($23.b,X)		; 01 23
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $6D		; 10 6D
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $CC		; 10 CC
	.db $10, $CD		; 10 CD
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $30		; 10 30
	ora ($31.b,X)		; 01 31
	ora ($32.b,X)		; 01 32
	ora ($33.b,X)		; 01 33
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $BC		; 10 BC
	.db $10, $BD		; 10 BD
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $40		; 10 40
	ora ($41.b,X)		; 01 41
	ora ($42.b,X)		; 01 42
	ora ($43.b,X)		; 01 43
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $CC		; 10 CC
	.db $10, $CD		; 10 CD
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $50		; 10 50
	ora ($51.b,X)		; 01 51
	ora ($52.b,X)		; 01 52
	ora ($53.b,X)		; 01 53
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $BC		; 10 BC
	.db $10, $BD		; 10 BD
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $60		; 10 60
	ora ($61.b,X)		; 01 61
	ora ($62.b,X)		; 01 62
	ora ($63.b,X)		; 01 63
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $CC		; 10 CC
	.db $10, $CD		; 10 CD
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $70		; 10 70
	ora ($71.b,X)		; 01 71
	ora ($72.b,X)		; 01 72
	ora ($73.b,X)		; 01 73
	ora ($B6.b,X)		; 01 B6
	trb $B7.b		; 14 B7
	trb $F0.b		; 14 F0
	.db $10, $B6		; 10 B6
	trb $B7.b		; 14 B7
	trb $F0.b		; 14 F0
	.db $10, $B6		; 10 B6
	trb $B7.b		; 14 B7
	trb $F0.b		; 14 F0
	.db $10, $B6		; 10 B6
	trb $B7.b		; 14 B7
	trb $F0.b		; 14 F0
	.db $10, $B6		; 10 B6
	trb $B7.b		; 14 B7
	trb $F0.b		; 14 F0
	.db $10, $B6		; 10 B6
	trb $B7.b		; 14 B7
	trb $F0.b		; 14 F0
	.db $10, $B6		; 10 B6
	trb $B7.b		; 14 B7
	trb $F0.b		; 14 F0
	.db $10, $B6		; 10 B6
	trb $B7.b		; 14 B7
	trb $F0.b		; 14 F0
	.db $10, $B6		; 10 B6
	trb $B7.b		; 14 B7
	trb $F0.b		; 14 F0
	.db $10, $B6		; 10 B6
	trb $B7.b		; 14 B7
	trb $F0.b		; 14 F0
	.db $10, $B6		; 10 B6
	trb $B7.b		; 14 B7
	trb $C6.b		; 14 C6
	trb $C7.b		; 14 C7
	trb $F0.b		; 14 F0
	.db $10, $C6		; 10 C6
	trb $C7.b		; 14 C7
	trb $F0.b		; 14 F0
	.db $10, $C6		; 10 C6
	trb $C7.b		; 14 C7
	trb $F0.b		; 14 F0
	.db $10, $C6		; 10 C6
	trb $C7.b		; 14 C7
	trb $F0.b		; 14 F0
	.db $10, $C6		; 10 C6
	trb $C7.b		; 14 C7
	trb $F0.b		; 14 F0
	.db $10, $C6		; 10 C6
	trb $C7.b		; 14 C7
	trb $F0.b		; 14 F0
	.db $10, $C6		; 10 C6
	trb $C7.b		; 14 C7
	trb $F0.b		; 14 F0
	.db $10, $C6		; 10 C6
	trb $C7.b		; 14 C7
	trb $F0.b		; 14 F0
	.db $10, $C6		; 10 C6
	trb $C7.b		; 14 C7
	trb $F0.b		; 14 F0
	.db $10, $C6		; 10 C6
	trb $C7.b		; 14 C7
	trb $F0.b		; 14 F0
	.db $10, $C6		; 10 C6
	trb $C7.b		; 14 C7
	trb $F0.b		; 14 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F2.b		; 00 F2
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $6D		; 10 6D
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $6D		; 10 6D
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $6E		; 10 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $00		; 10 00
	ora ($02.b,X)		; 01 02
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $00		; 10 00
	ora ($02.b,X)		; 01 02
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $00		; 10 00
	ora ($02.b,X)		; 01 02
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($7D.b,X)		; 01 7D
	brk $7D.b		; 00 7D
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($F0.b,X)		; 01 F0
	.db $10, $7D		; 10 7D
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $10		; 10 10
	ora ($12.b,X)		; 01 12
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $10		; 10 10
	ora ($12.b,X)		; 01 12
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $10		; 10 10
	ora ($12.b,X)		; 01 12
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	brk $10.b		; 00 10
	ora ($12.b,X)		; 01 12
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $10.b		; 00 10
	ora ($12.b,X)		; 01 12
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $10.b		; 00 10
	ora ($12.b,X)		; 01 12
	ora ($6E.b,X)		; 01 6E
	brk $6E.b		; 00 6E
	brk $10.b		; 00 10
	ora ($12.b,X)		; 01 12
	ora ($F0.b,X)		; 01 F0
	.db $10, $6E		; 10 6E
	brk $10.b		; 00 10
	ora ($12.b,X)		; 01 12
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $20		; 10 20
	ora ($22.b,X)		; 01 22
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $20		; 10 20
	ora ($22.b,X)		; 01 22
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $20		; 10 20
	ora ($22.b,X)		; 01 22
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	brk $20.b		; 00 20
	ora ($22.b,X)		; 01 22
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $20.b		; 00 20
	ora ($22.b,X)		; 01 22
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $20.b		; 00 20
	ora ($22.b,X)		; 01 22
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $20		; 10 20
	ora ($22.b,X)		; 01 22
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $20		; 10 20
	ora ($22.b,X)		; 01 22
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $30		; 10 30
	ora ($32.b,X)		; 01 32
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $30		; 10 30
	ora ($32.b,X)		; 01 32
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $30		; 10 30
	ora ($32.b,X)		; 01 32
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	brk $30.b		; 00 30
	ora ($32.b,X)		; 01 32
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $30.b		; 00 30
	ora ($32.b,X)		; 01 32
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $30.b		; 00 30
	ora ($32.b,X)		; 01 32
	ora ($6E.b,X)		; 01 6E
	brk $6E.b		; 00 6E
	brk $30.b		; 00 30
	ora ($32.b,X)		; 01 32
	ora ($F0.b,X)		; 01 F0
	.db $10, $6E		; 10 6E
	brk $30.b		; 00 30
	ora ($32.b,X)		; 01 32
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $40		; 10 40
	ora ($42.b,X)		; 01 42
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $40		; 10 40
	ora ($42.b,X)		; 01 42
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $40		; 10 40
	ora ($42.b,X)		; 01 42
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	brk $40.b		; 00 40
	ora ($42.b,X)		; 01 42
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $40.b		; 00 40
	ora ($42.b,X)		; 01 42
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $40.b		; 00 40
	ora ($42.b,X)		; 01 42
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $40		; 10 40
	ora ($42.b,X)		; 01 42
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $40		; 10 40
	ora ($42.b,X)		; 01 42
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $50		; 10 50
	ora ($52.b,X)		; 01 52
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $50		; 10 50
	ora ($52.b,X)		; 01 52
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $50		; 10 50
	ora ($52.b,X)		; 01 52
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	brk $50.b		; 00 50
	ora ($52.b,X)		; 01 52
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $50.b		; 00 50
	ora ($52.b,X)		; 01 52
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $50.b		; 00 50
	ora ($52.b,X)		; 01 52
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $50		; 10 50
	ora ($52.b,X)		; 01 52
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $50		; 10 50
	ora ($52.b,X)		; 01 52
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $60		; 10 60
	ora ($62.b,X)		; 01 62
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $60		; 10 60
	ora ($62.b,X)		; 01 62
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $60		; 10 60
	ora ($62.b,X)		; 01 62
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	brk $60.b		; 00 60
	ora ($62.b,X)		; 01 62
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	ora ($62.b,X)		; 01 62
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	ora ($62.b,X)		; 01 62
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $60		; 10 60
	ora ($62.b,X)		; 01 62
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $60		; 10 60
	ora ($62.b,X)		; 01 62
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	brk $70.b		; 00 70
	ora ($72.b,X)		; 01 72
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	ora ($72.b,X)		; 01 72
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	ora ($72.b,X)		; 01 72
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	ora ($72.b,X)		; 01 72
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	ora ($72.b,X)		; 01 72
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	ora ($72.b,X)		; 01 72
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	ora ($72.b,X)		; 01 72
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	ora ($72.b,X)		; 01 72
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $02.b		; 00 02
	brk $F0.b		; 00 F0
	brk $04.b		; 00 04
	brk $F0.b		; 00 F0
	brk $06.b		; 00 06
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	brk $F0.b		; 00 F0
	brk $0A.b		; 00 0A
	brk $F0.b		; 00 F0
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $02.b		; 00 02
	brk $F0.b		; 00 F0
	brk $04.b		; 00 04
	brk $F0.b		; 00 F0
	brk $06.b		; 00 06
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	brk $F0.b		; 00 F0
	brk $0A.b		; 00 0A
	brk $F0.b		; 00 F0
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $10.b		; 00 10
	brk $F0.b		; 00 F0
	brk $12.b		; 00 12
	brk $F0.b		; 00 F0
	brk $14.b		; 00 14
	brk $F0.b		; 00 F0
	brk $16.b		; 00 16
	brk $F0.b		; 00 F0
	brk $18.b		; 00 18
	brk $F0.b		; 00 F0
	brk $1A.b		; 00 1A
	brk $F0.b		; 00 F0
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $F0.b		; 00 F0
	brk $10.b		; 00 10
	brk $F0.b		; 00 F0
	brk $12.b		; 00 12
	brk $F0.b		; 00 F0
	brk $14.b		; 00 14
	brk $F0.b		; 00 F0
	brk $16.b		; 00 16
	brk $F0.b		; 00 F0
	brk $18.b		; 00 18
	brk $F0.b		; 00 F0
	brk $1A.b		; 00 1A
	brk $F0.b		; 00 F0
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $20.b		; 00 20
	brk $F0.b		; 00 F0
	brk $22.b		; 00 22
	brk $F0.b		; 00 F0
	brk $24.b		; 00 24
	brk $F0.b		; 00 F0
	brk $26.b		; 00 26
	brk $F0.b		; 00 F0
	brk $28.b		; 00 28
	brk $F0.b		; 00 F0
	brk $2A.b		; 00 2A
	brk $F0.b		; 00 F0
	brk $2C.b		; 00 2C
	brk $2E.b		; 00 2E
	brk $F0.b		; 00 F0
	brk $20.b		; 00 20
	brk $F0.b		; 00 F0
	brk $22.b		; 00 22
	brk $F0.b		; 00 F0
	brk $24.b		; 00 24
	brk $F0.b		; 00 F0
	brk $26.b		; 00 26
	brk $F0.b		; 00 F0
	brk $28.b		; 00 28
	brk $F0.b		; 00 F0
	brk $2A.b		; 00 2A
	brk $F0.b		; 00 F0
	brk $2C.b		; 00 2C
	brk $2E.b		; 00 2E
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $30.b		; 00 30
	brk $F0.b		; 00 F0
	brk $32.b		; 00 32
	brk $F0.b		; 00 F0
	brk $34.b		; 00 34
	brk $F0.b		; 00 F0
	brk $36.b		; 00 36
	brk $F0.b		; 00 F0
	brk $38.b		; 00 38
	brk $F0.b		; 00 F0
	brk $3A.b		; 00 3A
	brk $F0.b		; 00 F0
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $F0.b		; 00 F0
	brk $30.b		; 00 30
	brk $F0.b		; 00 F0
	brk $32.b		; 00 32
	brk $F0.b		; 00 F0
	brk $34.b		; 00 34
	brk $F0.b		; 00 F0
	brk $36.b		; 00 36
	brk $F0.b		; 00 F0
	brk $38.b		; 00 38
	brk $F0.b		; 00 F0
	brk $3A.b		; 00 3A
	brk $F0.b		; 00 F0
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	.db $10, $40		; 10 40
	brk $F0.b		; 00 F0
	brk $42.b		; 00 42
	brk $F0.b		; 00 F0
	brk $44.b		; 00 44
	brk $F0.b		; 00 F0
	.db $10, $46		; 10 46
	brk $F0.b		; 00 F0
	.db $10, $48		; 10 48
	brk $F0.b		; 00 F0
	.db $10, $4A		; 10 4A
	brk $F0.b		; 00 F0
	.db $10, $4C		; 10 4C
	brk $F0.b		; 00 F0
	.db $10, $4E		; 10 4E
	brk $F0.b		; 00 F0
	brk $40.b		; 00 40
	brk $F0.b		; 00 F0
	brk $42.b		; 00 42
	brk $F0.b		; 00 F0
	brk $44.b		; 00 44
	brk $F0.b		; 00 F0
	.db $10, $46		; 10 46
	brk $F0.b		; 00 F0
	.db $10, $48		; 10 48
	brk $F0.b		; 00 F0
	.db $10, $4A		; 10 4A
	brk $F0.b		; 00 F0
	.db $10, $4C		; 10 4C
	brk $F0.b		; 00 F0
	.db $10, $4E		; 10 4E
	brk $F0.b		; 00 F0
	.db $10, $50		; 10 50
	brk $F0.b		; 00 F0
	.db $10, $52		; 10 52
	brk $F0.b		; 00 F0
	.db $10, $54		; 10 54
	brk $F0.b		; 00 F0
	.db $10, $56		; 10 56
	brk $F0.b		; 00 F0
	.db $10, $58		; 10 58
	brk $F0.b		; 00 F0
	.db $10, $5A		; 10 5A
	brk $F0.b		; 00 F0
	.db $10, $5C		; 10 5C
	brk $F0.b		; 00 F0
	.db $10, $5E		; 10 5E
	brk $F0.b		; 00 F0
	.db $10, $50		; 10 50
	brk $F0.b		; 00 F0
	.db $10, $52		; 10 52
	brk $F0.b		; 00 F0
	.db $10, $54		; 10 54
	brk $F0.b		; 00 F0
	.db $10, $56		; 10 56
	brk $F0.b		; 00 F0
	.db $10, $58		; 10 58
	brk $F0.b		; 00 F0
	.db $10, $5A		; 10 5A
	brk $F0.b		; 00 F0
	.db $10, $5C		; 10 5C
	brk $F0.b		; 00 F0
	.db $10, $5E		; 10 5E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $6D		; 10 6D
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $6D		; 10 6D
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $6E		; 10 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $6D		; 10 6D
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $6D		; 10 6D
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $6E		; 10 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $6D		; 10 6D
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $6D		; 10 6D
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $6E		; 10 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $6D		; 10 6D
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $6D		; 10 6D
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $6E		; 10 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $6D		; 10 6D
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $04		; 10 04
	ora ($05.b,X)		; 01 05
	ora ($06.b,X)		; 01 06
	ora ($07.b,X)		; 01 07
	ora ($08.b,X)		; 01 08
	ora ($09.b,X)		; 01 09
	ora ($0A.b,X)		; 01 0A
	ora ($0B.b,X)		; 01 0B
	ora #$0C.b		; 09 0C
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $6D		; 10 6D
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $6E		; 10 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $14		; 10 14
	ora ($15.b,X)		; 01 15
	ora ($16.b,X)		; 01 16
	ora ($17.b,X)		; 01 17
	ora ($18.b,X)		; 01 18
	ora ($19.b,X)		; 01 19
	ora ($1A.b,X)		; 01 1A
	ora ($1B.b,X)		; 01 1B
	ora ($1C.b,X)		; 01 1C
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $24		; 10 24
	ora ($25.b,X)		; 01 25
	ora ($26.b,X)		; 01 26
	ora ($27.b,X)		; 01 27
	ora ($28.b,X)		; 01 28
	ora ($29.b,X)		; 01 29
	ora ($2A.b,X)		; 01 2A
	ora ($2B.b,X)		; 01 2B
	ora ($2C.b,X)		; 01 2C
	ora ($F0.b,X)		; 01 F0
	.db $10, $6D		; 10 6D
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $34		; 10 34
	ora ($35.b,X)		; 01 35
	ora ($36.b,X)		; 01 36
	ora ($37.b,X)		; 01 37
	ora ($38.b,X)		; 01 38
	ora ($39.b,X)		; 01 39
	ora ($3A.b,X)		; 01 3A
	ora ($3B.b,X)		; 01 3B
	ora ($3C.b,X)		; 01 3C
	ora ($F0.b,X)		; 01 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $44		; 10 44
	ora ($45.b,X)		; 01 45
	ora ($46.b,X)		; 01 46
	ora ($47.b,X)		; 01 47
	ora ($48.b,X)		; 01 48
	ora ($49.b,X)		; 01 49
	ora ($4A.b,X)		; 01 4A
	ora ($4B.b,X)		; 01 4B
	ora ($4C.b,X)		; 01 4C
	ora ($F0.b,X)		; 01 F0
	.db $10, $6D		; 10 6D
	brk $6E.b		; 00 6E
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $54		; 10 54
	ora ($55.b,X)		; 01 55
	ora ($56.b,X)		; 01 56
	ora ($57.b,X)		; 01 57
	ora ($58.b,X)		; 01 58
	ora ($59.b,X)		; 01 59
	ora ($5A.b,X)		; 01 5A
	ora ($5B.b,X)		; 01 5B
	ora ($5C.b,X)		; 01 5C
	ora ($F0.b,X)		; 01 F0
	.db $10, $7D		; 10 7D
	brk $F0.b		; 00 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $64		; 10 64
	ora ($65.b,X)		; 01 65
	ora ($66.b,X)		; 01 66
	ora ($67.b,X)		; 01 67
	ora ($68.b,X)		; 01 68
	ora ($69.b,X)		; 01 69
	ora ($6A.b,X)		; 01 6A
	ora ($6B.b,X)		; 01 6B
	ora ($6C.b,X)		; 01 6C
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $74		; 10 74
	ora ($75.b,X)		; 01 75
	ora ($76.b,X)		; 01 76
	ora ($77.b,X)		; 01 77
	ora ($78.b,X)		; 01 78
	ora ($79.b,X)		; 01 79
	ora ($7A.b,X)		; 01 7A
	ora ($7B.b,X)		; 01 7B
	ora ($7C.b,X)		; 01 7C
	ora ($8C.b,X)		; 01 8C
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $00		; 10 00
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $84		; 10 84
	ora ($85.b,X)		; 01 85
	ora ($86.b,X)		; 01 86
	ora ($87.b,X)		; 01 87
	ora ($88.b,X)		; 01 88
	ora ($89.b,X)		; 01 89
	ora ($8A.b,X)		; 01 8A
	ora ($8B.b,X)		; 01 8B
	ora ($8C.b,X)		; 01 8C
	ora ($9C.b,X)		; 01 9C
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $10		; 10 10
	ora ($11.b,X)		; 01 11
	ora ($12.b,X)		; 01 12
	ora ($13.b,X)		; 01 13
	ora ($6D.b,X)		; 01 6D
	brk $6E.b		; 00 6E
	brk $94.b		; 00 94
	ora ($95.b,X)		; 01 95
	ora ($96.b,X)		; 01 96
	ora ($97.b,X)		; 01 97
	ora ($98.b,X)		; 01 98
	ora ($99.b,X)		; 01 99
	ora ($9A.b,X)		; 01 9A
	ora ($9B.b,X)		; 01 9B
	ora ($9C.b,X)		; 01 9C
	ora ($AC.b,X)		; 01 AC
	ora ($10.b,X)		; 01 10
	ora ($11.b,X)		; 01 11
	ora ($12.b,X)		; 01 12
	ora ($13.b,X)		; 01 13
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $20		; 10 20
	ora ($21.b,X)		; 01 21
	ora ($22.b,X)		; 01 22
	ora ($23.b,X)		; 01 23
	ora ($7D.b,X)		; 01 7D
	brk $F0.b		; 00 F0
	.db $10, $A4		; 10 A4
	ora ($A5.b,X)		; 01 A5
	ora ($A6.b,X)		; 01 A6
	ora ($A7.b,X)		; 01 A7
	ora ($A8.b,X)		; 01 A8
	ora ($A9.b,X)		; 01 A9
	ora ($AA.b,X)		; 01 AA
	ora ($AB.b,X)		; 01 AB
	ora ($AC.b,X)		; 01 AC
	ora ($BC.b,X)		; 01 BC
	ora ($20.b,X)		; 01 20
	ora ($21.b,X)		; 01 21
	ora ($22.b,X)		; 01 22
	ora ($23.b,X)		; 01 23
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $30		; 10 30
	ora ($31.b,X)		; 01 31
	ora ($32.b,X)		; 01 32
	ora ($33.b,X)		; 01 33
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $B4		; 10 B4
	ora ($B5.b,X)		; 01 B5
	ora ($B6.b,X)		; 01 B6
	ora ($B7.b,X)		; 01 B7
	ora ($B8.b,X)		; 01 B8
	ora ($B9.b,X)		; 01 B9
	ora ($BA.b,X)		; 01 BA
	ora ($BB.b,X)		; 01 BB
	ora ($BC.b,X)		; 01 BC
	ora ($CC.b,X)		; 01 CC
	ora ($30.b,X)		; 01 30
	ora ($31.b,X)		; 01 31
	ora ($32.b,X)		; 01 32
	ora ($33.b,X)		; 01 33
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $00		; 10 00
	cop $01.b		; 02 01
	cop $F0.b		; 02 F0
	.db $10, $F0		; 10 F0
	.db $10, $40		; 10 40
	ora ($41.b,X)		; 01 41
	ora ($42.b,X)		; 01 42
	ora ($43.b,X)		; 01 43
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $C4		; 10 C4
	ora ($C5.b,X)		; 01 C5
	ora ($C6.b,X)		; 01 C6
	ora ($C7.b,X)		; 01 C7
	ora ($C8.b,X)		; 01 C8
	ora ($C9.b,X)		; 01 C9
	ora ($CA.b,X)		; 01 CA
	ora ($CB.b,X)		; 01 CB
	ora ($CC.b,X)		; 01 CC
	ora ($DC.b,X)		; 01 DC
	ora ($40.b,X)		; 01 40
	ora ($41.b,X)		; 01 41
	ora ($42.b,X)		; 01 42
	ora ($43.b,X)		; 01 43
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $00		; 10 00
	cop $01.b		; 02 01
	cop $F0.b		; 02 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $10		; 10 10
	cop $11.b		; 02 11
	cop $F0.b		; 02 F0
	.db $10, $F0		; 10 F0
	.db $10, $50		; 10 50
	ora ($51.b,X)		; 01 51
	ora ($52.b,X)		; 01 52
	ora ($53.b,X)		; 01 53
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $D4		; 10 D4
	ora ($D5.b,X)		; 01 D5
	ora ($D6.b,X)		; 01 D6
	ora ($D7.b,X)		; 01 D7
	ora ($D8.b,X)		; 01 D8
	ora ($D9.b,X)		; 01 D9
	ora ($DA.b,X)		; 01 DA
	ora ($DB.b,X)		; 01 DB
	ora ($DC.b,X)		; 01 DC
	ora ($EC.b,X)		; 01 EC
	ora ($50.b,X)		; 01 50
	ora ($51.b,X)		; 01 51
	ora ($52.b,X)		; 01 52
	ora ($53.b,X)		; 01 53
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $10		; 10 10
	cop $11.b		; 02 11
	cop $F0.b		; 02 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $20		; 10 20
	cop $21.b		; 02 21
	cop $F0.b		; 02 F0
	.db $10, $F0		; 10 F0
	.db $10, $60		; 10 60
	ora ($61.b,X)		; 01 61
	ora ($62.b,X)		; 01 62
	ora ($63.b,X)		; 01 63
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $E4		; 10 E4
	ora ($E5.b,X)		; 01 E5
	ora ($E6.b,X)		; 01 E6
	ora ($E7.b,X)		; 01 E7
	ora ($E8.b,X)		; 01 E8
	ora ($E9.b,X)		; 01 E9
	ora ($EA.b,X)		; 01 EA
	ora ($EB.b,X)		; 01 EB
	ora ($EC.b,X)		; 01 EC
	ora ($FC.b,X)		; 01 FC
	ora ($60.b,X)		; 01 60
	ora ($61.b,X)		; 01 61
	ora ($62.b,X)		; 01 62
	ora ($63.b,X)		; 01 63
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $20		; 10 20
	cop $21.b		; 02 21
	cop $F0.b		; 02 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $30		; 10 30
	cop $31.b		; 02 31
	cop $F0.b		; 02 F0
	.db $10, $F0		; 10 F0
	.db $10, $70		; 10 70
	ora ($71.b,X)		; 01 71
	ora ($72.b,X)		; 01 72
	ora ($73.b,X)		; 01 73
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $F4		; 10 F4
	ora ($F5.b,X)		; 01 F5
	ora ($F6.b,X)		; 01 F6
	ora ($F7.b,X)		; 01 F7
	ora ($F8.b,X)		; 01 F8
	ora ($F9.b,X)		; 01 F9
	ora ($FA.b,X)		; 01 FA
	ora ($FB.b,X)		; 01 FB
	ora ($FC.b,X)		; 01 FC
	ora ($FC.b,X)		; 01 FC
	ora ($70.b,X)		; 01 70
	ora ($71.b,X)		; 01 71
	ora ($72.b,X)		; 01 72
	ora ($73.b,X)		; 01 73
	ora ($F0.b,X)		; 01 F0
	.db $10, $F0		; 10 F0
	.db $10, $30		; 10 30
	cop $31.b		; 02 31
	cop $F0.b		; 02 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $F0		; 10 F0
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $FE		; 80 FE
	cpy #$FD.b		; C0 FD
	cpy #$FC.b		; C0 FC
	cpy #$FB.b		; C0 FB
	cpy #$FA.b		; C0 FA
	cld		; D8
	sbc $F8D8.w,Y		; F9 D8 F8
	cld		; D8
	sbc [$D8.b],Y		; F7 D8
	inc $D8.b,X		; F6 D8
	sbc $D8.b,X		; F5 D8
	pea $F3C0.w		; F4 C0 F3
	cpy #$F2.b		; C0 F2
	cpy #$F1.b		; C0 F1
	cpy #$F0.b		; C0 F0
	cpy #$00.b		; C0 00
	.db $80, $F0		; 80 F0
	.db $80, $F1		; 80 F1
	.db $80, $F2		; 80 F2
	.db $80, $F3		; 80 F3
	.db $80, $F4		; 80 F4
	.db $80, $F5		; 80 F5
	tya		; 98
	inc $98.b,X		; F6 98
	sbc [$98.b],Y		; F7 98
	sed		; F8
	tya		; 98
	sbc $FA98.w,Y		; F9 98 FA
	tya		; 98
	xce		; FB
	.db $80, $FC		; 80 FC
	.db $80, $00		; 80 00
	.db $80, $FC		; 80 FC
	.db $80, $00		; 80 00
	.db $80, $EE		; 80 EE
	cpy #$ED.b		; C0 ED
	cpy #$EC.b		; C0 EC
	cpy #$EB.b		; C0 EB
	cpy #$EA.b		; C0 EA
	pei ($E9.b)		; D4 E9
	cld		; D8
	inx		; E8
	cld		; D8
	sbc [$D8.b]		; E7 D8
	inc $D8.b		; E6 D8
	sbc $D8.b		; E5 D8
	cpx $C0.b		; E4 C0
	sbc $C0.b,S		; E3 C0
	sep #$C0		; E2 C0
	sbc ($C0.b,X)		; E1 C0
	cpx #$C0.b		; E0 C0
	brk $80.b		; 00 80
	cpx #$80.b		; E0 80
	sbc ($80.b,X)		; E1 80
	sep #$80		; E2 80
	sbc $80.b,S		; E3 80
	cpx $80.b		; E4 80
	sbc $98.b		; E5 98
	inc $98.b		; E6 98
	sbc [$98.b]		; E7 98
	inx		; E8
	tya		; 98
	sbc #$98.b		; E9 98
	nop		; EA
	sty $EB.b,X		; 94 EB
	.db $80, $EC		; 80 EC
	.db $80, $00		; 80 00
	.db $80, $EC		; 80 EC
	.db $80, $00		; 80 00
	.db $80, $DE		; 80 DE
	cpy #$DD.b		; C0 DD
	cpy #$DC.b		; C0 DC
	cpy #$DB.b		; C0 DB
	pei ($DA.b)		; D4 DA
	pei ($D9.b)		; D4 D9
	pei ($D8.b)		; D4 D8
	cld		; D8
	cmp [$D8.b],Y		; D7 D8
	dec $D8.b,X		; D6 D8
	cmp $D8.b,X		; D5 D8
	pei ($C0.b)		; D4 C0
	cmp ($C0.b,S),Y		; D3 C0
	cmp ($C0.b)		; D2 C0
	cmp ($C0.b),Y		; D1 C0
	.db $D0, $C0		; D0 C0
	brk $80.b		; 00 80
	.db $D0, $80		; D0 80
	cmp ($80.b),Y		; D1 80
	cmp ($80.b)		; D2 80
	cmp ($80.b,S),Y		; D3 80
	pei ($80.b)		; D4 80
	cmp $98.b,X		; D5 98
	dec $98.b,X		; D6 98
	cmp [$98.b],Y		; D7 98
	cld		; D8
	tya		; 98
	cmp $DA94.w,Y		; D9 94 DA
	sty $DB.b,X		; 94 DB
	sty $DC.b,X		; 94 DC
	.db $80, $00		; 80 00
	.db $80, $DC		; 80 DC
	.db $80, $00		; 80 00
	.db $80, $CE		; 80 CE
	cpy #$CD.b		; C0 CD
	cpy #$CC.b		; C0 CC
	pei ($CB.b)		; D4 CB
	pei ($CA.b)		; D4 CA
	pei ($C9.b)		; D4 C9
	pei ($C8.b)		; D4 C8
	pei ($C7.b)		; D4 C7
	cpy #$C6.b		; C0 C6
	cpy #$C5.b		; C0 C5
	cpy #$C4.b		; C0 C4
	cpy #$C3.b		; C0 C3
	cpy #$C2.b		; C0 C2
	cpy #$C1.b		; C0 C1
	cpy #$C0.b		; C0 C0
	cpy #$00.b		; C0 00
	.db $80, $C0		; 80 C0
	.db $80, $C1		; 80 C1
	.db $80, $C2		; 80 C2
	.db $80, $C3		; 80 C3
	.db $80, $C4		; 80 C4
	.db $80, $C5		; 80 C5
	.db $80, $C6		; 80 C6
	.db $80, $C7		; 80 C7
	.db $80, $C8		; 80 C8
	sty $C9.b,X		; 94 C9
	sty $CA.b,X		; 94 CA
	sty $CB.b,X		; 94 CB
	sty $CC.b,X		; 94 CC
	sty $9E.b,X		; 94 9E
	brk $2C.b		; 00 2C
	.db $80, $00		; 80 00
	.db $80, $BE		; 80 BE
	cpy #$BD.b		; C0 BD
	cpy #$BC.b		; C0 BC
	pei ($BB.b)		; D4 BB
	pei ($BA.b)		; D4 BA
	pei ($B9.b)		; D4 B9
	pei ($B8.b)		; D4 B8
	pei ($B7.b)		; D4 B7
	cpy #$B6.b		; C0 B6
	pei ($B5.b)		; D4 B5
	pei ($B4.b)		; D4 B4
	cpy #$B3.b		; C0 B3
	cpy #$B2.b		; C0 B2
	cpy #$B1.b		; C0 B1
	cpy #$B0.b		; C0 B0
	cpy #$00.b		; C0 00
	.db $80, $B0		; 80 B0
	.db $80, $B1		; 80 B1
	.db $80, $B2		; 80 B2
	.db $80, $B3		; 80 B3
	.db $80, $B4		; 80 B4
	.db $80, $B5		; 80 B5
	sty $B6.b,X		; 94 B6
	sty $B7.b,X		; 94 B7
	.db $80, $B8		; 80 B8
	sty $B9.b,X		; 94 B9
	sty $BA.b,X		; 94 BA
	sty $BB.b,X		; 94 BB
	sty $BC.b,X		; 94 BC
	sty $8E.b,X		; 94 8E
	brk $1C.b		; 00 1C
	.db $80, $FE		; 80 FE
	.db $80, $AE		; 80 AE
	cpy #$AD.b		; C0 AD
	cpy #$AC.b		; C0 AC
	pei ($AB.b)		; D4 AB
	pei ($AA.b)		; D4 AA
	cpy #$A9.b		; C0 A9
	pei ($A8.b)		; D4 A8
	pei ($A7.b)		; D4 A7
	pei ($A6.b)		; D4 A6
	pei ($A5.b)		; D4 A5
	pei ($A4.b)		; D4 A4
	cpy #$A3.b		; C0 A3
	cpy #$A2.b		; C0 A2
	cpy #$A1.b		; C0 A1
	cpy #$A0.b		; C0 A0
	cpy #$00.b		; C0 00
	.db $80, $A0		; 80 A0
	.db $80, $A1		; 80 A1
	.db $80, $A2		; 80 A2
	.db $80, $A3		; 80 A3
	.db $80, $A4		; 80 A4
	.db $80, $A5		; 80 A5
	sty $A6.b,X		; 94 A6
	sty $A7.b,X		; 94 A7
	sty $A8.b,X		; 94 A8
	sty $A9.b,X		; 94 A9
	sty $AA.b,X		; 94 AA
	.db $80, $AB		; 80 AB
	sty $AC.b,X		; 94 AC
	sty $9E.b,X		; 94 9E
	brk $0C.b		; 00 0C
	.db $80, $EE		; 80 EE
	.db $80, $9E		; 80 9E
	cpy #$9D.b		; C0 9D
	cpy #$9C.b		; C0 9C
	pei ($9B.b)		; D4 9B
	pei ($9A.b)		; D4 9A
	pei ($99.b)		; D4 99
	pei ($98.b)		; D4 98
	pei ($97.b)		; D4 97
	pei ($96.b)		; D4 96
	pei ($95.b)		; D4 95
	pei ($94.b)		; D4 94
	pei ($93.b)		; D4 93
	cpy #$92.b		; C0 92
	cpy #$91.b		; C0 91
	cpy #$90.b		; C0 90
	cpy #$00.b		; C0 00
	.db $80, $90		; 80 90
	.db $80, $91		; 80 91
	.db $80, $92		; 80 92
	.db $80, $93		; 80 93
	.db $80, $94		; 80 94
	sty $95.b,X		; 94 95
	sty $96.b,X		; 94 96
	sty $97.b,X		; 94 97
	sty $98.b,X		; 94 98
	sty $99.b,X		; 94 99
	sty $9A.b,X		; 94 9A
	sty $9B.b,X		; 94 9B
	sty $9C.b,X		; 94 9C
	sty $AE.b,X		; 94 AE
	brk $00.b		; 00 00
	.db $80, $DE		; 80 DE
	.db $80, $8E		; 80 8E
	cpy #$8D.b		; C0 8D
	cpy #$8C.b		; C0 8C
	cpy #$8B.b		; C0 8B
	pei ($8A.b)		; D4 8A
	pei ($89.b)		; D4 89
	pei ($88.b)		; D4 88
	cpy #$87.b		; C0 87
	pei ($86.b)		; D4 86
	pei ($85.b)		; D4 85
	pei ($84.b)		; D4 84
	pei ($83.b)		; D4 83
	cpy #$82.b		; C0 82
	cpy #$81.b		; C0 81
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	.db $80, $80		; 80 80
	.db $80, $81		; 80 81
	.db $80, $82		; 80 82
	.db $80, $83		; 80 83
	.db $80, $84		; 80 84
	sty $85.b,X		; 94 85
	sty $86.b,X		; 94 86
	sty $87.b,X		; 94 87
	sty $88.b,X		; 94 88
	.db $80, $89		; 80 89
	sty $8A.b,X		; 94 8A
	sty $8B.b,X		; 94 8B
	sty $8C.b,X		; 94 8C
	.db $80, $9E		; 80 9E
	brk $2C.b		; 00 2C
	.db $80, $CE		; 80 CE
	.db $80, $8E		; 80 8E
	brk $7D.b		; 00 7D
	cpy #$7C.b		; C0 7C
	cpy #$7B.b		; C0 7B
	pei ($7A.b)		; D4 7A
	pei ($79.b)		; D4 79
	iny		; C8
	sei		; 78
	cpy $C077.w		; CC 77 C0
	ror $C0.b,X		; 76 C0
	adc $D4.b,X		; 75 D4
	stz $D4.b,X		; 74 D4
	adc ($D4.b,S),Y		; 73 D4
	adc ($D4.b)		; 72 D4
	adc ($C0.b),Y		; 71 C0
	.db $70, $C0		; 70 C0
	brk $80.b		; 00 80
	.db $70, $80		; 70 80
	adc ($80.b),Y		; 71 80
	adc ($94.b)		; 72 94
	adc ($94.b,S),Y		; 73 94
	stz $94.b,X		; 74 94
	adc $94.b,X		; 75 94
	ror $80.b,X		; 76 80
	adc [$80.b],Y		; 77 80
	sei		; 78
	sty $8879.w		; 8C 79 88
	ply		; 7A
	sty $7B.b,X		; 94 7B
	sty $7C.b,X		; 94 7C
	.db $80, $8E		; 80 8E
	brk $1C.b		; 00 1C
	.db $80, $BE		; 80 BE
	.db $80, $9E		; 80 9E
	brk $6D.b		; 00 6D
	cpy #$6C.b		; C0 6C
	cpy #$6B.b		; C0 6B
	cpy #$6A.b		; C0 6A
	pei ($69.b)		; D4 69
	iny		; C8
	pla		; 68
	cpy $C067.w		; CC 67 C0
	ror $CC.b		; 66 CC
	adc $CC.b		; 65 CC
	stz $D4.b		; 64 D4
	adc $D4.b,S		; 63 D4
	.db $62, $D4, $61		; 62 D4 61
	cpy #$60.b		; C0 60
	cpy #$00.b		; C0 00
	.db $80, $60		; 80 60
	.db $80, $61		; 80 61
	.db $80, $62		; 80 62
	sty $63.b,X		; 94 63
	sty $64.b,X		; 94 64
	sty $65.b,X		; 94 65
	sty $8C66.w		; 8C 66 8C
	adc [$80.b]		; 67 80
	pla		; 68
	sty $8869.w		; 8C 69 88
	ror A		; 6A
	sty $6B.b,X		; 94 6B
	.db $80, $6C		; 80 6C
	.db $80, $9E		; 80 9E
	brk $0C.b		; 00 0C
	.db $80, $AE		; 80 AE
	.db $80, $8E		; 80 8E
	brk $5D.b		; 00 5D
	cpy #$5C.b		; C0 5C
	cpy #$5B.b		; C0 5B
	cpy #$5A.b		; C0 5A
	cpy $CC59.w		; CC 59 CC
	cli		; 58
	cpy $57.b		; C4 57
	iny		; C8
	lsr $CC.b,X		; 56 CC
	eor $CC.b,X		; 55 CC
	mvn $53,$C0		; 54 C0 53
	cpy #$52.b		; C0 52
	cpy #$51.b		; C0 51
	cpy #$50.b		; C0 50
	cpy #$00.b		; C0 00
	.db $80, $50		; 80 50
	.db $80, $51		; 80 51
	.db $80, $52		; 80 52
	.db $80, $53		; 80 53
	.db $80, $54		; 80 54
	.db $80, $55		; 80 55
	sty $8C56.w		; 8C 56 8C
	eor [$88.b],Y		; 57 88
	cli		; 58
	sty $59.b		; 84 59
	sty $8C5A.w		; 8C 5A 8C
	tad		; 5B
	.db $80, $5C		; 80 5C
	.db $80, $AE		; 80 AE
	brk $00.b		; 00 00
	.db $80, $9E		; 80 9E
	.db $80, $9E		; 80 9E
	brk $4D.b		; 00 4D
	cpy #$4C.b		; C0 4C
	cpy #$4B.b		; C0 4B
	cpy #$4A.b		; C0 4A
	cpy $C449.w		; CC 49 C4
	pha		; 48
	cpy $47.b		; C4 47
	iny		; C8
	lsr $CC.b		; 46 CC
	eor $CC.b		; 45 CC
	mvp $43,$C0		; 44 C0 43
	cpy #$42.b		; C0 42
	cld		; D8
	eor ($C0.b,X)		; 41 C0
	rti		; 40

	cpy #$00.b		; C0 00
	.db $80, $40		; 80 40
	.db $80, $41		; 80 41
	.db $80, $42		; 80 42
	tya		; 98
	eor $80.b,S		; 43 80
	mvp $45,$80		; 44 80 45
	sty $8C46.w		; 8C 46 8C
	eor [$88.b]		; 47 88
	pha		; 48
	sty $49.b		; 84 49
	sty $4A.b		; 84 4A
	sty $804B.w		; 8C 4B 80
	jmp $8E80.w		; 4C 80 8E
	.db $80, $4C		; 80 4C
	.db $80, $8E		; 80 8E
	.db $80, $AE		; 80 AE
	brk $3D.b		; 00 3D
	cpy #$3C.b		; C0 3C
	cpy #$3B.b		; C0 3B
	cpy #$3A.b		; C0 3A
	cld		; D8
	and $38D8.w,Y		; 39 D8 38
	cpy $37.b		; C4 37
	iny		; C8
	rol $C8.b,X		; 36 C8
	and $C8.b,X		; 35 C8
	bit $C0.b,X		; 34 C0
	and ($C0.b,S),Y		; 33 C0
	and ($D8.b)		; 32 D8
	and ($D8.b),Y		; 31 D8
	.db $30, $C0		; 30 C0
	brk $80.b		; 00 80
	.db $30, $80		; 30 80
	and ($98.b),Y		; 31 98
	and ($98.b)		; 32 98
	and ($80.b,S),Y		; 33 80
	bit $80.b,X		; 34 80
	and $88.b,X		; 35 88
	rol $88.b,X		; 36 88
	and [$88.b],Y		; 37 88
	sec		; 38
	sty $39.b		; 84 39
	tya		; 98
	dec A		; 3A
	tya		; 98
	tsa		; 3B
	.db $80, $3C		; 80 3C
	.db $80, $9E		; 80 9E
	brk $2C.b		; 00 2C
	.db $80, $8E		; 80 8E
	brk $BE.b		; 00 BE
	brk $2D.b		; 00 2D
	cpy #$2C.b		; C0 2C
	cpy #$2B.b		; C0 2B
	cpy #$2A.b		; C0 2A
	cld		; D8
	and #$D8.b		; 29 D8
	plp		; 28
	cld		; D8
	and [$C0.b]		; 27 C0
	rol $D4.b		; 26 D4
	and $D8.b		; 25 D8
	bit $C0.b		; 24 C0
	and $C0.b,S		; 23 C0
	jsl $D821D8.l		; 22 D8 21 D8
	jsr $00C0.w		; 20 C0 00
	.db $80, $20		; 80 20
	.db $80, $21		; 80 21
	tya		; 98
	jsl $802398.l		; 22 98 23 80
	bit $80.b		; 24 80
	and $98.b		; 25 98
	rol $94.b		; 26 94
	and [$98.b]		; 27 98
	plp		; 28
	tya		; 98
	and #$98.b		; 29 98
	rol A		; 2A
	tya		; 98
	pld		; 2B
	.db $80, $2C		; 80 2C
	.db $80, $8E		; 80 8E
	brk $1C.b		; 00 1C
	.db $80, $9E		; 80 9E
	brk $00.b		; 00 00
	brk $1D.b		; 00 1D
	cpy #$1C.b		; C0 1C
	cpy #$1B.b		; C0 1B
	cpy #$1A.b		; C0 1A
	cpy $19.b		; C4 19
	cld		; D8
	clc		; 18
	cpy $17.b		; C4 17
	cpy $16.b		; C4 16
	pei ($15.b)		; D4 15
	cld		; D8
	trb $C0.b		; 14 C0
	ora ($C0.b,S),Y		; 13 C0
	ora ($C0.b)		; 12 C0
	ora ($D8.b),Y		; 11 D8
	.db $10, $C0		; 10 C0
	brk $80.b		; 00 80
	.db $10, $80		; 10 80
	ora ($98.b),Y		; 11 98
	ora ($80.b)		; 12 80
	ora ($80.b,S),Y		; 13 80
	trb $80.b		; 14 80
	ora $98.b,X		; 15 98
	asl $94.b,X		; 16 94
	ora [$84.b],Y		; 17 84
	clc		; 18
	sty $19.b		; 84 19
	tya		; 98
	inc A		; 1A
	sty $1B.b		; 84 1B
	.db $80, $1C		; 80 1C
	.db $80, $9E		; 80 9E
	brk $0C.b		; 00 0C
	.db $80, $8E		; 80 8E
	brk $0E.b		; 00 0E
	cpy #$0D.b		; C0 0D
	cpy #$0C.b		; C0 0C
	cpy #$0B.b		; C0 0B
	cpy #$0A.b		; C0 0A
	cpy #$09.b		; C0 09
	cpy #$08.b		; C0 08
	cpy #$07.b		; C0 07
	cpy #$06.b		; C0 06
	pei ($05.b)		; D4 05
	cld		; D8
	tsb $C0.b		; 04 C0
	ora $C0.b,S		; 03 C0
	cop $C0.b		; 02 C0
	ora ($C0.b,X)		; 01 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	ora ($80.b,X)		; 01 80
	cop $80.b		; 02 80
	ora $80.b,S		; 03 80
	tsb $80.b		; 04 80
	ora $98.b		; 05 98
	asl $94.b		; 06 94
	ora [$80.b]		; 07 80
	php		; 08
	.db $80, $09		; 80 09
	.db $80, $0A		; 80 0A
	.db $80, $0B		; 80 0B
	.db $80, $0C		; 80 0C
	.db $80, $AE		; 80 AE
	brk $00.b		; 00 00
	.db $80, $9E		; 80 9E
	brk $00.b		; 00 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $AE		; 80 AE
	brk $00.b		; 00 00
	.db $80, $AE		; 80 AE
	brk $00.b		; 00 00
	brk $BE.b		; 00 BE
	brk $2D.b		; 00 2D
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	.db $80, $2D		; 80 2D
	.db $80, $BE		; 80 BE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1D.b		; 00 1D
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	cpy #$0D.b		; C0 0D
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9E.b		; 00 9E
	brk $2C.b		; 00 2C
	.db $80, $0E		; 80 0E
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8E.b		; 00 8E
	brk $1C.b		; 00 1C
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9E.b		; 00 9E
	brk $0C.b		; 00 0C
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $AE		; 80 AE
	brk $00.b		; 00 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $FF		; 80 FF
	sbc $EBAEFF.l,X		; FF FF AE EB
	ror $AFBB.w,X		; 7E BB AF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFD5.l,X		; FF D5 DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF52.l,X		; FF 52 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	lda $BFFBFE.l,X		; BF FE FB BF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BBBFFF.l,X		; FF FF BF BB
	inc $BFBF.w,X		; FE BF BF
	ldx $FFEA.w		; AE EA FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EBFBFB.l,X		; FF FB FB EB
	ldx $EABF.w,Y		; BE BF EA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFE.l,X		; FF FE EF FF
	inc $FABE.w		; EE BE FA
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FAFBEF.l,X		; FF EF FB FA
	sbc $FEEBFD.l,X		; FF FD EB FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBAFEB.l,X		; FF EB AF FB
	sbc $FEFF.w,Y		; F9 FF FE
	nop		; EA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFE.l,X		; FF FE FF FD
	inc $BFFF.w,X		; FE FF BF
	cpx $FFFF.w		; EC FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BBFFFF.l,X		; FF FF FF BB
	sbc $BABEAF.l,X		; FF AF BE BA
	nop		; EA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFBEFF.l,X		; FF FF BE EF
	xce		; FB
	nop		; EA
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	tyx		; BB
	xba		; EB
	plx		; FA
	sbc $FAAFAD.l,X		; FF AD AF FA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $6FFBFF.l,X		; FF FF FB 6F
	ldx $BFFE.w,Y		; BE FE BF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FEFEFF.l,X		; FF FF FE FE
	sbc $AAAFFF.l,X		; FF FF AF AA
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BBFFFF.l,X		; FF FF FF BB
	inc $ABFE.w,X		; FE FE AB
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BBBBFB.l,X		; FF FB BB BB
	sbc $FFEEBE.l,X		; FF BE EE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBEEF.l,X		; FF EF BE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AFFBBF.l,X		; FF BF FB AF
	sbc $FFAFAB.l		; EF AB AF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFEBEE.l,X		; FF EE EB BF
	inc $FFB2.w,X		; FE B2 FF
	xba		; EB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFEF.l,X		; FF EF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FEFFEF.l,X		; BF EF FF FE
	sbc $AFEEBF.l,X		; FF BF EE AF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FBFEFF.l,X		; FF FF FE FB
	inc $FFFF.w		; EE FF FF
	txy		; 9B
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFDFF.l		; AF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFBFFF.l,X		; FF FF BF BF
	inc $FBAF.w,X		; FE AF FB
	xba		; EB
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EEFFDF.l,X		; FF DF FF EE
	ldx $BFBF.w		; AE BF BF
	sbc $FFBBFF.l		; EF FF BB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	xce		; FB
	inc $EFFE.w,X		; FE FE EF
	tyx		; BB
	sbc $FFEF.w,X		; FD EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xba		; EB
	sbc $FFFFBB.l,X		; FF BB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FAFFFF.l,X		; FF FF FF FA
	lda $B8FFBF.l,X		; BF BF FF B8
	xce		; FB
	lda $FFFFFF.l		; AF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	plx		; FA
	sbc $AFBF3E.l,X		; FF 3E BF AF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	plx		; FA
	sbc $BFFBAB.l		; EF AB FB BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	plx		; FA
	sbc $FFCAFF.l,X		; FF FF CA FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBBEF.l,X		; FF EF BB FF
	lda $FFBAEB.l		; AF EB BA FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFD.l,X		; FF FD FF DF
	cmp $FFFDFF.l,X		; DF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $EFBBFF.l,X		; BF FF BB EF
	sbc $FFAEBE.l,X		; FF BE AE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $BFE8FE.l,X		; FF FE E8 BF
	sbc $FFEEFF.l		; EF FF EE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EF.b		; 00 EF
	sbc $EFEFAF.l,X		; FF AF EF EF
	xce		; FB
	sta $FFFFFB.l,X		; 9F FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF6FFF.l,X		; FF FF 6F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FEFBEF.l,X		; FF EF FB FE
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFABFF.l,X		; FF FF AB EF
	nop		; EA
	ldx $7FEE.w		; AE EE 7F
	lda $FFFFEB.l		; AF EB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFDFFB.l,X		; FF FB DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BEFFFF.l,X		; FF FF FF BE
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFBB.l		; EF BB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $BFFBFF.l,X		; FF FF FB BF
	sbc $EFFBFB.l,X		; FF FB FB EF
	sbc $FFFFAF.l		; EF AF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $D7FFFF.l,X		; FF FF FF D7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldx $EFFF.w,Y		; BE FF EF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $BFFFFB.l		; EF FB FF BF
	tsx		; BA
	xba		; EB
	plb		; AB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFEB.l,X		; BF EB FF FF
	sbc $BFFF7B.l		; EF 7B FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FDFF.l,X		; FF FF FD F7
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xba		; EB
	sbc $FBBFFB.l,X		; FF FB BF FB
	xce		; FB
	xce		; FB
	xba		; EB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	lda $FFFFFF.l,X		; BF FF FF FF
	tyx		; BB
	inc $EFFF.w		; EE FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFF7F.l,X		; DF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFBFEF.l,X		; FF EF BF BF
	sbc $FAEBEF.l,X		; FF EF EB FA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFBF.l,X		; FF BF FF BF
	xce		; FB
	lda $FFBFFF.l,X		; BF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	xba		; EB
	lda $FFAFFF.l,X		; BF FF AF FF
	inc $FFEE.w		; EE EE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $7FFFF7.l,X		; FF F7 FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AFFFFF.l,X		; FF FF FF AF
	sbc $EFFFBF.l,X		; FF BF FF EF
	sbc $FFAFBF.l		; EF BF AF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFE.l,X		; FF FE FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $EBFFFB.l,X		; FF FB FF EB
	tyx		; BB
	xce		; FB
	tyx		; BB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $BDFDFF.l,X		; BF FF FD BD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FEFBBF.l		; EF BF FB FE
	lda $FFFFEF.l,X		; BF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FBBBEB.l,X		; BF EB BB FB
	plb		; AB
	tsx		; BA
	tyx		; BB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	rol $FFFE.w,X		; 3E FE FF
	sbc $BFFBBF.l		; EF BF FB BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $EBFFFF.l,X		; FF FF FF EB
	lda $FFFFFA.l		; AF FA FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFEFF.l,X		; FF FF FE FB
	inc $FBFB.w,X		; FE FB FB
	sbc $FFAE7B.l,X		; FF 7B AE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FBFFBF.l,X		; FF BF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFAF.l		; AF AF FF FF
	sbc $FBBFEB.l		; EF EB BF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFE7.l,X		; FF E7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEEFEF.l,X		; FF EF EF FE
	sbc $9BE7F9.l,X		; FF F9 E7 9B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $F7FFDF.l,X		; DF DF FF F7
	sbc $AFEFFF.l,X		; FF FF EF AF
	ldx $BFFF.w,Y		; BE FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFDFF.l,X		; DF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	inc $FFFF.w,X		; FE FF FF
	xce		; FB
	lda $FFFFBF.l		; AF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBEFF.l,X		; FF FF BE FF
	sbc $AFAFBF.l,X		; FF BF AF AF
	inc $FFFB.w		; EE FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FBEFFB.l,X		; FF FB EF FB
	sbc $FFBEAF.l,X		; FF AF BE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEEF.l		; EF EF FE FF
	sbc $FFBFBF.l		; EF BF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	tyx		; BB
	sbc $FFFBFF.l,X		; FF FF FB FF
	lda ($EB.b,S),Y		; B3 EB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFEAEF.l		; EF EF EA EF
	sbc $AFFBFF.l,X		; FF FF FB AF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc [$BF.b],Y		; F7 BF
	sbc $FBFBBF.l,X		; FF BF FB FB
	lda $FFFFBD.l,X		; BF BD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBBFF7.l,X		; FF F7 BF FB
	tsx		; BA
	sbc $BFFFFF.l		; EF FF FF BF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $40.b		; 02 40
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0000.w		; 0C 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phb		; 8B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $49.b		; 00 49
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8A.b		; 00 8A
	tay		; A8
	jsr $8220.w		; 20 20 82
	dey		; 88
	brk $00.b		; 00 00
	brk $EF.b		; 00 EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $09FFFF.l,X		; FF FF FF 09
	inc A		; 1A
	brk $5A.b		; 00 5A
	jsr $0500.w		; 20 00 05
	.db $80, $DF		; 80 DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AEFFFF.l,X		; FF FF FF AE
	asl A		; 0A
	.db $82, $28, $8A		; 82 28 8A
	txa		; 8A
	php		; 08
	php		; 08
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $60D0C1.l		; CF C1 D0 60
	.db $D0, $52		; D0 52
	lda ($8E.b),Y		; B1 8E
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	nop		; EA
	ldy #$22.b		; A0 22
	brk $88.b		; 00 88
	php		; 08
	.db $80, $28		; 80 28
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $42.b		; 00 42
	lda ($21.b,X)		; A1 21
	tsa		; 3B
	ldy #$33.b		; A0 33
	asl $FFFF.w,X		; 1E FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $283DFF.l,X		; FF FF 3D 28
	jsr $8808.w		; 20 08 88
	jsr $0289.w		; 20 89 02
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $0031C6.l,X		; 7F C6 31 00
	pha		; 48
	cpx #$08.b		; E0 08
	pld		; 2B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	nop		; EA
	.db $80, $A0		; 80 A0
	dey		; 88
	.db $80, $02		; 80 02
	jsr $FF00.w		; 20 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $C0FFFF.l,X		; FF FF FF C0
	bit $D184.w,X		; 3C 84 D1
	jsr $0346.w		; 20 46 03
	cpy $FF.b		; C4 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FAFFFF.l,X		; FF FF FF FA
	pha		; 48
	brk $20.b		; 00 20
	.db $80, $20		; 80 20
	dey		; 88
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0CFFFF.l,X		; FF FF FF 0C
	cpy #$03.b		; C0 03
	cmp ($28.b,X)		; C1 28
	asl A		; 0A
	brk $22.b		; 00 22
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cpx $A0A2.w		; EC A2 A0
	ldy #$A8.b		; A0 A8
	brk $A0.b		; 00 A0
	cop $FF.b		; 02 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $D0FFFF.l,X		; FF FF FF D0
	xba		; EB
	and $61C2A0.l		; 2F A0 C2 61
	ldy #$0C.b		; A0 0C
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda [$80.b]		; A7 80
	brk $82.b		; 00 82
	brk $80.b		; 00 80
	jsr $FF80.w		; 20 80 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $5CFFFF.l,X		; FF FF FF 5C
	.db $42, $30		; 42 30
	cmp $8B8906.l,X		; DF 06 89 8B
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F8FFFF.l,X		; FF FF FF F8
	php		; 08
	ora #$0A.b		; 09 0A
	plp		; 28
	dey		; 88
	.db $10, $02		; 10 02
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sty $68.b		; 84 68
	.db $F0, $EA		; F0 EA
	tya		; 98
	php		; 08
	stx $FF85.w		; 8E 85 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EDFFFF.l,X		; FF FF FF ED
	.db $80, $20		; 80 20
	php		; 08
	brk $02.b		; 00 02
	dey		; 88
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $3EFFFF.l,X		; FF FF FF 3E
	bit $67.b,X		; 34 67
	dec $8485.w		; CE 85 84
	txa		; 8A
	mvn $FF,$FF		; 54 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $80AAFF.l,X		; FF FF AA 80
	jsr $2820.w		; 20 20 28
	brk $08.b		; 00 08
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $88FFFF.l,X		; FF FF FF 88
	cli		; 58
	lda ($97.b),Y		; B1 97
	.db $10, $14		; 10 14
	asl A		; 0A
	and [$FF.b]		; 27 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AFFFFF.l,X		; FF FF FF AF
	php		; 08
	brk $28.b		; 00 28
	rol A		; 2A
	brk $00.b		; 00 00
	cop $FF.b		; 02 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $2EFFFF.l,X		; FF FF FF 2E
	sta ($88.b),Y		; 91 88
	asl $03.b		; 06 03
	cmp ($C4.b,X)		; C1 C4
	and #$FF.b		; 29 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $09FFFF.l,X		; FF FF FF 09
	dey		; 88
	cop $04.b		; 02 04
	brk $A0.b		; 00 A0
	brk $20.b		; 00 20
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	asl $19.b		; 06 19
	cop $B0.b		; 02 B0
	asl $02.b		; 06 02
	brk $C8.b		; 00 C8
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	stz $80.b		; 64 80
	.db $80, $04		; 80 04
	.db $82, $28, $88		; 82 28 88
	jsr $FFFF.w		; 20 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $B49EFF.l,X		; FF FF 9E B4
	tsb $00.b		; 04 00
	sty $88.b		; 84 88
	pha		; 48
	sty $FFFF.w		; 8C FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $2ABBFF.l,X		; FF FF BB 2A
	asl A		; 0A
	cop $08.b		; 02 08
	.db $80, $00		; 80 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A0FFFF.l,X		; FF FF FF A0
	.db $80, $CA		; 80 CA
	eor $90.b,S		; 43 90
	.db $80, $80		; 80 80
	jmp ($FFFF.w)		; 6C FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A05BFF.l,X		; FF FF 5B A0
	plp		; 28
	jsr $8002.w		; 20 02 80
	ldx #$28.b		; A2 28
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	.db $50, $A0		; 50 A0
	.db $90, $88		; 90 88
	pla		; 68
	plp		; 28
	cmp $1C.b		; C5 1C
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	tax		; AA
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	rol A		; 2A
	jsr $FF00.w		; 20 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $04FFFF.l,X		; FF FF FF 04
	cpy #$0A.b		; C0 0A
	ora $00.b		; 05 00
	.db $80, $88		; 80 88
	brk $FF.b		; 00 FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $76FFFF.l,X		; FF FF FF 76
	.db $80, $80		; 80 80
	asl A		; 0A
	jsl $000080.l		; 22 80 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $B9F321.l		; CF 21 F3 B9
	iny		; C8
	cop $90.b		; 02 90
	.db $62, $FF, $FF		; 62 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $82EBFF.l,X		; FF FF EB 82
	php		; 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $C6FFFF.l,X		; FF FF FF C6
	stz $F40A.w,X		; 9E 0A F4
	eor #$D1.b		; 49 D1
	tax		; AA
	.db $10, $FF		; 10 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EAFFFF.l,X		; FF FF FF EA
	.db $82, $A0, $08		; 82 A0 08
	brk $A0.b		; 00 A0
	bit #$08.b		; 89 08
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	jsl $75A8D0.l		; 22 D0 A8 75
	lda ($95.b,X)		; A1 95
	cmp $8D.b		; C5 8D
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	pld		; 2B
	plp		; 28
	.db $82, $A2, $28		; 82 A2 28
	brk $04.b		; 00 04
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DDFFFF.l,X		; FF FF FF DD
	asl $11BB.w,X		; 1E BB 11
	and $CC.b		; 25 CC
	cop $00.b		; 02 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp ($22.b)		; D2 22
	.db $80, $82		; 80 82
	and ($80.b,X)		; 21 80
	plp		; 28
	.db $82, $FF, $FF		; 82 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $202EFF.l,X		; FF FF 2E 20
	lsr $5880.w,X		; 5E 80 58
	dey		; 88
	stz $FF31.w		; 9C 31 FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $A8FFFF.l,X		; FF FF FF A8
	plp		; 28
	ldy #$80.b		; A0 80
	cop $22.b		; 02 22
	.db $80, $20		; 80 20
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp ($78.b,X)		; C1 78
	inc A		; 1A
	eor $61.b,S		; 43 61
	lda ($14.b,X)		; A1 14
	rti		; 40

	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	plb		; AB
	rol A		; 2A
	php		; 08
	brk $26.b		; 00 26
	.db $80, $20		; 80 20
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $06FFFF.l,X		; FF FF FF 06
	cpx #$1B.b		; E0 1B
	ora $46.b		; 05 46
	.db $42, $B9		; 42 B9
	bit $FFFF.w		; 2C FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $08EBFF.l,X		; FF FF EB 08
	brk $00.b		; 00 00
	clc		; 18
	asl A		; 0A
	.db $D0, $28		; D0 28
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	jsl $60D2A0.l		; 22 A0 D2 60
	brk $02.b		; 00 02
	stz $81.b		; 64 81
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	stz $0020.w,X		; 9E 20 00
	asl A		; 0A
	brk $0A.b		; 00 0A
	brk $A8.b		; 00 A8
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	tya		; 98
	bit $80B6.w		; 2C B6 80
	stx $15.b		; 86 15
	ror A		; 6A
	ora ($FF.b,X)		; 01 FF
	adc $F7FFFF.l,X		; 7F FF FF F7
	sbc $BBFFFF.l,X		; FF FF FF BB
	jsl $000000.l		; 22 00 00 00
	brk $2A.b		; 00 2A
	.db $82, $FF, $FF		; 82 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $600DFF.l,X		; FF FF 0D 60
	tay		; A8
	lda ($CD.b),Y		; B1 CD
	ldy $10.b,X		; B4 10
	asl $FF.b		; 06 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AAFFFF.l,X		; FF FF FF AA
	.db $80, $22		; 80 22
	cpy #$8A.b		; C0 8A
	tay		; A8
	jsl $FFFF00.l		; 22 00 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AB15FF.l,X		; FF FF 15 AB
	ora $8496.w,Y		; 19 96 84
	cmp $8012.w		; CD 12 80
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldx #$A0.b		; A2 A0
	.db $82, $20, $22		; 82 20 22
	dey		; 88
	.db $82, $00, $FF		; 82 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $08FFFF.l,X		; FF FF FF 08
	stz $121F.w		; 9C 1F 12
	.db $82, $A1, $02		; 82 A1 02
	ora ($FF.b,X)		; 01 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BBFFFF.l,X		; FF FF FF BB
	php		; 08
	plp		; 28
	php		; 08
	cop $20.b		; 02 20
	cop $20.b		; 02 20
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A9.b,X		; F5 A9
	ora $0812.w		; 0D 12 08
	pha		; 48
	ldy #$80.b		; A0 80
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldx $2208.w,Y		; BE 08 22
	php		; 08
	ldy #$82.b		; A0 82
	.db $82, $8A, $FF		; 82 8A FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $44FFFF.l,X		; FF FF FF 44
	and ($85.b,X)		; 21 85
	txa		; 8A
	trb $12.b		; 14 12
	clc		; 18
	and ($FF.b,X)		; 21 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AFFFFF.l,X		; FF FF FF AF
	tsb $000A.w		; 0C 0A 00
	ldx #$08.b		; A2 08
	tay		; A8
	jsl $FFFFFF.l		; 22 FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $02387A.l,X		; FF 7A 38 02
	clv		; B8
	dec $0455.w		; CE 55 04
	.db $50, $FF		; 50 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $06.b		; 00 06
	tay		; A8
	brk $88.b		; 00 88
	ldy #$80.b		; A0 80
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor ($88.b,S),Y		; 53 88
	cmp ($60.b,X)		; C1 60
	txs		; 9A
	sty $50.b,X		; 94 50
	sbc ($FF.b,X)		; E1 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $02FFFF.l,X		; FF FF FF 02
	ldy #$82.b		; A0 82
	plp		; 28
	and $0A.b,S		; 23 0A
	cop $98.b		; 02 98
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lsr $2A42.w		; 4E 42 2A
	ora ($51.b,X)		; 01 51
	ora $C67A.w,X		; 1D 7A C6
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	dey		; 88
	brk $A6.b		; 00 A6
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $E6FFFF.l,X		; FF FF FF E6
	sta $93.b,S		; 83 93
	sty $32.b		; 84 32
	bit $80.b		; 24 80
	dey		; 88
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldy #$02.b		; A0 02
	.db $82, $2A, $80		; 82 2A 80
	php		; 08
	cop $02.b		; 02 02
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sta $C6.b		; 85 C6
	sta ($08.b,X)		; 81 08
	tsb $808C.w		; 0C 8C 80
	sta $FFFF.w,Y		; 99 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $2800FF.l,X		; FF FF 00 28
	plp		; 28
	ora #$A0.b		; 09 A0
	php		; 08
	.db $80, $AA		; 80 AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	jsr $1442.w		; 20 42 14
	and ($0C.b,X)		; 21 0C
	ora [$21.b]		; 07 21
	.db $82, $FF, $FF		; 82 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $2800FF.l,X		; FF FF 00 28
	php		; 08
	ldy #$03.b		; A0 03
	brk $05.b		; 00 05
	cop $FF.b		; 02 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $90FFFF.l,X		; FF FF FF 90
	sta ($14.b,X)		; 81 14
	tsb $12.b		; 04 12
	sta ($54.b,X)		; 81 54
	lda $FF.b,X		; B5 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A2FFFF.l,X		; FF FF FF A2
	php		; 08
	.db $80, $22		; 80 22
	tsb $0A82.w		; 0C 82 0A
	jsr $FFFF.w		; 20 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $1705FF.l,X		; FF FF 05 17
	cop $C1.b		; 02 C1
	php		; 08
	cld		; D8
	iny		; C8
	.db $80, $FF		; 80 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $A0.b		; 00 A0
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	.db $80, $FF		; 80 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $29FFFF.l,X		; FF FF FF 29
	ora #$54.b		; 09 54
	ror $00.b		; 66 00
	rti		; 40

	and #$80.b		; 29 80
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	dey		; 88
	jsr $8000.w		; 20 00 80
	bit #$02.b		; 89 02
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	plp		; 28
	brk $00.b		; 00 00
	sta $F7.b,X		; 95 F7
	lsr $A4.b,X		; 56 A4
	inx		; E8
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	jsr $0B2E.w		; 20 2E 0B
	brk $00.b		; 00 00
	jsr $0100.w		; 20 00 01
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor ($24.b,S),Y		; 53 24
	.db $90, $44		; 90 44
	sta $05.b,S		; 83 05
	lda ($84.b)		; B2 84
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	jsr $8002.w		; 20 02 80
	brk $81.b		; 00 81
	.db $80, $20		; 80 20
	phd		; 0B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $00216C.l		; 6F 6C 21 00
	jsl $42058C.l		; 22 8C 05 42
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	and #$8A.b		; 29 8A
	lda ($0A.b)		; B2 0A
	txa		; 8A
	jsr $8008.w		; 20 08 80
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cli		; 58
	ora $30.b,X		; 15 30
	clc		; 18
	.db $80, $17		; 80 17
	.db $90, $A3		; 90 A3
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $82.b		; 00 82
	dey		; 88
	php		; 08
	brk $02.b		; 00 02
	.db $10, $08		; 10 08
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	rts		; 60

	stz $2A04.w		; 9C 04 2A
	bit $01.b		; 24 01
	.db $10, $87		; 10 87
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldy #$3A.b		; A0 3A
	brk $28.b		; 00 28
	asl A		; 0A
	and #$8E.b		; 29 8E
	plp		; 28
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ror A		; 6A
	sbc ($23.b),Y		; F1 23
	lda $723C.w,Y		; B9 3C 72
	and $FF87.w		; 2D 87 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A2FFFF.l,X		; FF FF FF A2
	brk $00.b		; 00 00
	ldy #$20.b		; A0 20
	asl A		; 0A
	ldy #$00.b		; A0 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	tsb $1B.b		; 04 1B
	sei		; 78
	.db $80, $05		; 80 05
	.db $90, $41		; 90 41
	.db $10, $FF		; 10 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $80FFFF.l,X		; FF FF FF 80
	jsl $00ABA8.l		; 22 A8 AB 00
	.db $82, $88, $03		; 82 88 03
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor ($91.b,S),Y		; 53 91
	trb $58.b		; 14 58
	ldy $045F.w		; AC 5F 04
	eor ($FF.b,S),Y		; 53 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0CFFFF.l,X		; FF FF FF 0C
	brk $A0.b		; 00 A0
	ora $00.b		; 05 00
	plp		; 28
	plp		; 28
	cop $FF.b		; 02 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $D8FFFF.l,X		; FF FF FF D8
	brk $05.b		; 00 05
	sta ($A9.b),Y		; 91 A9
	stx $8100.w		; 8E 00 81
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sta ($02.b,X)		; 81 02
	php		; 08
	cop $A2.b		; 02 A2
	cop $10.b		; 02 10
	cop $FF.b		; 02 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $39FFFF.l,X		; FF FF FF 39
	bit $3221.w		; 2C 21 32
	stz $05.b,X		; 74 05
	asl $FF40.w		; 0E 40 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	asl A		; 0A
	.db $82, $03, $AA		; 82 03 AA
	jsl $FF0289.l		; 22 89 02 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $18FFFF.l,X		; FF FF FF 18
	cmp ($83.b,S),Y		; D3 83
	ora ($31.b,X)		; 01 31
	phb		; 8B
	tsb $FFC2.w		; 0C C2 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $2AFFFF.l,X		; FF FF FF 2A
	php		; 08
	tay		; A8
	ldy #$08.b		; A0 08
	dey		; 88
	txa		; 8A
	.db $80, $FF		; 80 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A4FFFF.l,X		; FF FF FF A4
	cld		; D8
	pld		; 2B
	ldy $72.b		; A4 72
	jmp $31A5.w		; 4C A5 31
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	.db $80, $23		; 80 23
	brk $0A.b		; 00 0A
	brk $80.b		; 00 80
	jsr $FFA8.w		; 20 A8 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $06FFFF.l,X		; FF FF FF 06
	cpy #$C0.b		; C0 C0
	and #$31.b		; 29 31
	.db $50, $14		; 50 14
	.db $82, $FF, $DF		; 82 FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $8620FF.l,X		; FF FF 20 86
	brk $0B.b		; 00 0B
	cop $00.b		; 02 00
	.db $80, $8C		; 80 8C
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	jsl $C1E1A0.l		; 22 A0 E1 C1
	sty $48.b,X		; 94 48
	sta ($23.b),Y		; 91 23
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldy $8A.b		; A4 8A
	asl A		; 0A
	tay		; A8
	brk $88.b		; 00 88
	jsr $FF84.w		; 20 84 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $20FFFF.l,X		; FF FF FF 20
	lsr $E309.w		; 4E 09 E3
	.db $F0, $30		; F0 30
	tsb $FF80.w		; 0C 80 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $02FFFF.l,X		; FF FF FF 02
	cop $08.b		; 02 08
	.db $42, $A2		; 42 A2
	jsr $8A00.w		; 20 00 8A
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	rti		; 40

	lsr $188C.w		; 4E 8C 18
	ora ($44.b),Y		; 11 44
	eor ($84.b)		; 52 84
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	dey		; 88
	asl A		; 0A
	cop $2B.b		; 02 2B
	asl A		; 0A
	jsl $FF8220.l		; 22 20 82 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $04FFFF.l,X		; FF FF FF 04
	.db $82, $04, $13		; 82 04 13
	eor $84.b		; 45 84
	clc		; 18
	sed		; F8
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cop $00.b		; 02 00
	asl A		; 0A
	brk $00.b		; 00 00
	jsr $0805.w		; 20 05 08
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	.db $42, $99		; 42 99
	trb $21.b		; 14 21
	.db $50, $01		; 50 01
	.db $30, $00		; 30 00
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	dey		; 88
	plp		; 28
	tay		; A8
	jsr $0980.w		; 20 80 09
	.db $80, $B1		; 80 B1
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sed		; F8
	php		; 08
	lsr $C2.b,X		; 56 C2
	ora ($03.b,X)		; 01 03
	asl $01.b		; 06 01
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora #$20.b		; 09 20
	.db $80, $02		; 80 02
	jsl $002328.l		; 22 28 23 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	and ($38.b),Y		; 31 38
	cpx #$25.b		; E0 25
	.db $70, $20		; 70 20
	ldy #$18.b		; A0 18
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	plp		; 28
	cop $E8.b		; 02 E8
	sta ($80.b,X)		; 81 80
	cop $00.b		; 02 00
	cop $FF.b		; 02 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $48FFFF.l,X		; FF FF FF 48
	phb		; 8B
	plp		; 28
	ora ($85.b)		; 12 85
	and ($C0.b,S),Y		; 33 C0
	.db $80, $FF		; 80 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	.db $80, $02		; 80 02
	.db $10, $20		; 10 20
	txa		; 8A
	asl A		; 0A
	php		; 08
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	.db $10, $3D		; 10 3D
	brk $27.b		; 00 27
	adc ($13.b),Y		; 71 13
	php		; 08
	ldx $FFFF.w		; AE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A880FF.l,X		; FF FF 80 A8
	ora ($8A.b,X)		; 01 8A
	brk $2A.b		; 00 2A
	ora ($82.b,X)		; 01 82
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor ($26.b)		; 52 26
	lda ($F6.b)		; B2 F6
	ldx #$14.b		; A2 14
	asl $FF82.w		; 0E 82 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $8AFFFF.l,X		; FF FF FF 8A
	jsr $0522.w		; 20 22 05
	jsr $A808.w		; 20 08 A8
	dey		; 88
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	rts		; 60

	lda #$E4.b		; A9 E4
	txa		; 8A
	cop $1C.b		; 02 1C
	inc $B9.b		; E6 B9
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($3B.b),Y		; 51 3B
	xba		; EB
	sbc $6796.w,X		; FD 96 67
	and [$AC.b],Y		; 37 AC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $14.b,X		; 15 14
	.db $10, $14		; 10 14
	brk $40.b		; 00 40
	rti		; 40

	ora $00.b,X		; 15 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	inx		; E8
	dec A		; 3A
	asl $88.b,X		; 16 88
	and ($18.b),Y		; 31 18
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvn $11,$05		; 54 05 11
	ora ($54.b,X)		; 01 54
	brk $54.b		; 00 54
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	phy		; 5A
	ldy $24.b		; A4 24
	pla		; 68
	cmp $C9C0.w,Y		; D9 C0 C9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $50, $41		; 50 41
	ora ($15.b,X)		; 01 15
	.db $10, $01		; 10 01
	tsb $54.b		; 04 54
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $44.b		; 66 44
	sta $1E50.w,Y		; 99 50 1E
	iny		; C8
	ora ($29.b)		; 12 29
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $50.b		; 05 50
	mvn $10,$00		; 54 00 10
	trb $40.b		; 14 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	.db $42, $0B		; 42 0B
	and $7B8AC9.l		; 2F C9 8A 7B
	ror $0000.w		; 6E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($05.b),Y		; 51 05
	mvp $04,$14		; 44 14 04
	ora ($45.b),Y		; 11 45
	eor $00.b,X		; 55 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A9.b		; 00 A9
	sta ($91.b,X)		; 81 91
	ror $E503.w		; 6E 03 E5
	eor ($6A.b)		; 52 6A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($11.b,X)		; 01 11
	brk $04.b		; 00 04
	ora ($45.b,X)		; 01 45
	rti		; 40

	ora $00.b,X		; 15 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $79.b		; 00 79
	ldy #$02.b		; A0 02
	and ($42.b,X)		; 21 42
	eor ($D9.b)		; 52 D9
	tsx		; BA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $50, $45		; 50 45
	eor ($40.b,X)		; 41 40
	eor ($44.b,X)		; 41 44
	ora $55.b,X		; 15 55
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $B0, $13		; B0 13
	php		; 08
	nop		; EA
	and $9B.b		; 25 9B
	brk $EB.b		; 00 EB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $15,$01		; 44 01 15
	trb $55.b		; 14 55
	.db $50, $04		; 50 04
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $7116.w,X		; FD 16 71
	.db $80, $90		; 80 90
	stz $1C.b		; 64 1C
	sta $0000.w,Y		; 99 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $52		; 10 52
	ora $01.b,X		; 15 01
	ora ($00.b),Y		; 11 00
	tsb $40.b		; 04 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $CC2B.w,X		; 5D 2B CC
	and ($21.b),Y		; 31 21
	and ($3E.b),Y		; 31 3E
	eor [$00.b]		; 47 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $55.b		; 00 55
	ora ($04.b,X)		; 01 04
	.db $50, $10		; 50 10
	mvn $40,$D0		; 54 D0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($78.b),Y		; 71 78
	eor ($EB.b,X)		; 41 EB
	cmp $0C92.w,X		; DD 92 0C
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	ora ($55.b,X)		; 01 55
	trb $50.b		; 14 50
	ora $01.b,X		; 15 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $3221.w,X		; 9E 21 32
	inc $6DD0.w,X		; FE D0 6D
	.db $42, $10		; 42 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $14.b		; 04 14
	mvp $55,$00		; 44 00 55
	mvp $51,$50		; 44 50 51
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $E1487E.l,X		; 1F 7E 48 E1
	ply		; 7A
	ora $DA.b,X		; 15 DA
	sta ($00.b,S),Y		; 93 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $45.b		; 00 45
	brk $40.b		; 00 40
	ora $11.b		; 05 11
	eor $01.b,X		; 55 01
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D6.b		; 00 D6
	sty $54.b,X		; 94 54
	cop $63.b		; 02 63
	brk $FA.b		; 00 FA
	sbc ($00.b,S),Y		; F3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	ora ($41.b,X)		; 01 41
	trb $00.b		; 14 00
	trb $00.b		; 14 00
	eor ($00.b),Y		; 51 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $54.b		; 00 54
	sty $1C.b		; 84 1C
	adc $4639.w,Y		; 79 39 46
	ora ($F7.b,S),Y		; 13 F7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	mvn $00,$55		; 54 55 00
	ora $50.b		; 05 50
	eor ($00.b),Y		; 51 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	tsb $6860.w		; 0C 60 68
	phd		; 0B
	inx		; E8
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $01,$05		; 44 05 01
	tsb $45.b		; 04 45
	.db $10, $54		; 10 54
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $011A17.l		; EF 17 1A 01
	eor ($7D.b,X)		; 41 7D
	adc $000001.l,X		; 7F 01 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	.db $50, $10		; 50 10
	.db $10, $14		; 10 14
	eor ($05.b,X)		; 41 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc #$00.b		; 69 00
	eor $AECA80.l		; 4F 80 CA AE
	ora ($33.b,S),Y		; 13 33
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $50, $01		; 50 01
	ora $14.b,X		; 15 14
	mvp $51,$05		; 44 05 51
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EE.b		; 00 EE
	sta $01.b		; 85 01
	tax		; AA
	adc $E0FA.w,Y		; 79 FA E0
	adc ($00.b,X)		; 61 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	ora $14.b		; 05 14
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	mvn $00,$00		; 54 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc A		; 1A
	sta ($80.b,X)		; 81 80
	eor $942452.l		; 4F 52 24 94
	tsa		; 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $04.b		; 14 04
	.db $10, $04		; 10 04
	ora $05.b,X		; 15 05
	rti		; 40

	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A7.b		; 00 A7
	eor ($CD.b),Y		; 51 CD
	cpx $19.b		; E4 19
	eor $0C68.w,Y		; 59 68 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	rti		; 40

	.db $50, $55		; 50 55
	ora ($00.b,X)		; 01 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6C.b		; 00 6C
	ldx $0E00.w,Y		; BE 00 0E
	cpy #$0A.b		; C0 0A
	ora $7F.b		; 05 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $41.b		; 05 41
	trb $50.b		; 14 50
	ora ($41.b,X)		; 01 41
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor [$00.b]		; 47 00
	ora $14.b,S		; 03 14
	.db $42, $6B		; 42 6B
	sbc [$48.b],Y		; F7 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $00.b,X		; 55 00
	brk $05.b		; 00 05
	ora $05.b		; 05 05
	ora $15.b		; 05 15
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($29.b,X)		; 61 29
	eor $5858.w		; 4D 58 58
	asl A		; 0A
	ora #$61.b		; 09 61
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $41.b		; 14 41
	trb $00.b		; 14 00
	.db $10, $00		; 10 00
	rti		; 40

	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	eor ($4C.b)		; 52 4C
	ora $C14843.l,X		; 1F 43 48 C1
	jmp $000000.l		; 5C 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $54.b		; 00 54
	ora ($44.b,X)		; 01 44
	tsb $55.b		; 04 55
	trb $15.b		; 14 15
	eor $00.b		; 45 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	sec		; 38
	.db $50, $0A		; 50 0A
	.db $30, $A5		; 30 A5
	bit $72.b		; 24 72
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $5101.w		; 0D 01 51
	ora ($00.b),Y		; 11 00
	eor ($01.b,X)		; 41 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	ora [$B0.b]		; 07 B0
	dec $23FB.w,X		; DE FB 23
	stz $11.b,X		; 74 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $50,$00		; 44 00 50
	eor ($04.b,X)		; 41 04
	trb $54.b		; 14 54
	ora $00.b,X		; 15 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3B.b		; 00 3B
	adc ($03.b,X)		; 61 03
	eor ($17.b,X)		; 41 17
	and $D653.w,Y		; 39 53 D6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $00,$50		; 44 50 00
	.db $10, $45		; 10 45
	.db $50, $10		; 50 10
	mvn $00,$00		; 54 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	bit #$86.b		; 89 86
	rol A		; 2A
	.db $D0, $C3		; D0 C3
	lda $000093.l		; AF 93 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $10.b		; 05 10
	rti		; 40

	mvn $55,$41		; 54 41 55
	trb $54.b		; 14 54
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phy		; 5A
	ora $99.b		; 05 99
	sta $51C9E7.l		; 8F E7 C9 51
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $05.b		; 45 05
	eor ($00.b,X)		; 41 00
	ora $05.b		; 05 05
	.db $50, $41		; 50 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $F0, $20		; F0 20
	eor [$00.b],Y		; 57 00
	phy		; 5A
	ror $97F8.w		; 6E F8 97
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	eor $04.b,X		; 55 04
	.db $10, $00		; 10 00
	ora $11.b,X		; 15 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda ($88.b,X)		; A1 88
	ora $50.b,X		; 15 50
	php		; 08
	ldy $3C.b		; A4 3C
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $54.b		; 00 54
	eor ($11.b),Y		; 51 11
	ora ($04.b,X)		; 01 04
	eor $10.b,X		; 55 10
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8D.b		; 00 8D
	dec $7A.b		; C6 7A
	lda $A3D2.w,X		; BD D2 A3
	eor $76.b,S		; 43 76
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $34.b		; 04 34
	mvn $00,$14		; 54 14 00
	eor $14.b		; 45 14
	eor $00.b		; 45 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B7.b		; 00 B7
	cpx $08.b		; E4 08
	mvn $AE,$48		; 54 48 AE
	mvp $00,$21		; 44 21 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	trb $10.b		; 14 10
	brk $44.b		; 00 44
	rti		; 40

	.db $10, $50		; 10 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $2810.w		; 4E 10 28
	lda ($3B.b,X)		; A1 3B
	stz $2972.w,X		; 9E 72 29
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $80, $15		; 80 15
	brk $51.b		; 00 51
	mvn $00,$40		; 54 40 00
	ora $00.b,X		; 15 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9C.b		; 00 9C
	and $08.b,X		; 35 08
	sta ($7C.b,X)		; 81 7C
	adc ($D8.b,X)		; 61 D8
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	ora $45.b		; 05 45
	mvp $11,$10		; 44 10 11
	eor $00.b,X		; 55 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	eor ($35.b,X)		; 41 35
	jmp.w [$EFC2]		; DC C2 EF
	adc $00BE.w,X		; 7D BE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	.db $10, $44		; 10 44
	ora ($01.b,X)		; 01 01
	eor $44.b,X		; 55 44
	eor $00.b,X		; 55 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	sty $66.b		; 84 66
	pha		; 48
	cpx $4D.b		; E4 4D
	sta $000072.l		; 8F 72 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b,X		; 15 04
	brk $50.b		; 00 50
	mvp $40,$51		; 44 51 40
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $80, $40		; 80 40
	.db $82, $90, $DB		; 82 90 DB
	adc $46.b		; 65 46
	stz $0000.w,X		; 9E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $40		; 10 40
	.db $50, $51		; 50 51
	ora $05.b		; 05 05
	mvp $00,$40		; 44 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A9.b		; 00 A9
	sta $61.b		; 85 61
	rti		; 40

	.db $70, $84		; 70 84
	sty $45.b		; 84 45
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	.db $50, $C4		; 50 C4
	ora ($11.b),Y		; 11 11
	ora ($04.b,X)		; 01 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $CC.b		; 00 CC
	bit $A0.b		; 24 A0
	.db $70, $34		; 70 34
	asl $64.b		; 06 64
	and $0000.w,X		; 3D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($13.b),Y		; 11 13
	trb $04.b		; 14 04
	.db $10, $44		; 10 44
	rti		; 40

	mvn $00,$00		; 54 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $51.b,X		; B4 51
	cpy $40.b		; C4 40
	.db $82, $48, $D8		; 82 48 D8
	clv		; B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($11.b,X)		; 01 11
	.db $10, $50		; 10 50
	php		; 08
	ora ($14.b,X)		; 01 14
	ora $00.b,X		; 15 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4B.b		; 00 4B
	stz $4D34.w		; 9C 34 4D
	eor $E2.b		; 45 E2
	eor $000078.l		; 4F 78 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $4004.w		; 0D 04 40
	mvn $54,$40		; 54 40 54
	ora ($45.b),Y		; 11 45
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $55.b,X		; F5 55
	.db $10, $7C		; 10 7C
	ldx $81.b		; A6 81
	ldy $12.b,X		; B4 12
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $04,$40		; 44 40 04
	eor ($40.b,X)		; 41 40
	tsb $50.b		; 04 50
	.db $50, $00		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F1.b		; 00 F1
	lda $B9C79C.l,X		; BF 9C C7 B9
	asl $3B7C.w,X		; 1E 7C 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($05.b)		; 52 05
	mvn $41,$15		; 54 15 41
	ora ($54.b,X)		; 01 54
	ora $00.b,X		; 15 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2B.b		; 00 2B
	.db $82, $D8, $51		; 82 D8 51
	bit $9A68.w,X		; 3C 68 9A
	and ($00.b)		; 32 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $51.b		; 00 51
	.db $50, $10		; 50 10
	.db $50, $04		; 50 04
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9D.b		; 00 9D
	phb		; 8B
	rol $F552.w		; 2E 52 F5
	bit $CE1E.w		; 2C 1E CE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,X		; 15 00
	mvp $00,$01		; 44 01 00
	trb $00.b		; 14 00
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	eor $20.b		; 45 20
	jmp $0515.w		; 4C 15 05
	tyx		; BB
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	eor $50.b,X		; 55 50
	rti		; 40

	brk $41.b		; 00 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9A.b		; 00 9A
	ldy $C610.w		; AC 10 C6
	sbc $6CF7.w		; ED F7 6C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	.db $50, $04		; 50 04
	.db $50, $14		; 50 14
	ora ($15.b),Y		; 11 15
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $22,$5D		; 44 5D 22
	ror $10.b		; 66 10
	adc $35.b,S		; 63 35
	eor #$00.b		; 49 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	.db $10, $05		; 10 05
	rti		; 40

	brk $15.b		; 00 15
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($0A.b)		; F2 0A
	wai		; CB
	lda ($59.b),Y		; B1 59
	rts		; 60

	ora ($7C.b,S),Y		; 13 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $50.b		; 45 50
	ora ($54.b),Y		; 11 54
	eor ($15.b),Y		; 51 15
	mvn $00,$D5		; 54 D5 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $73.b		; 00 73
	lsr A		; 4A
	adc [$19.b]		; 67 19
	sty $2460.w		; 8C 60 24
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $31.b		; 00 31
	brk $00.b		; 00 00
	eor $01.b,X		; 55 01
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bit $C4.b		; 24 C4
	.db $D0, $B8		; D0 B8
	sta $5DAD.w,Y		; 99 AD 5D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	.db $10, $41		; 10 41
	brk $44.b		; 00 44
	brk $15.b		; 00 15
	cmp $00.b,X		; D5 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	jsr $20C4.w		; 20 C4 20
	clc		; 18
	stz $4C9C.w		; 9C 9C 4C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	.db $50, $11		; 50 11
	.db $50, $50		; 50 50
	ora $54.b		; 05 54
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $80, $58		; 80 58
	jsl $5E8454.l		; 22 54 84 5E
	.db $70, $E2		; 70 E2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $50, $53		; 50 53
	eor ($04.b),Y		; 51 04
	.db $10, $50		; 10 50
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($78.b)		; 92 78
	sbc $C0.b		; E5 C0
	bit $3E.b		; 24 3E
	phd		; 0B
	asl $00.b,X		; 16 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $05.b		; 00 05
	eor $05.b,X		; 55 05
	trb $04.b		; 14 04
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $51.b		; 00 51
	sta $D6.b		; 85 D6
	ldy $FC.b,X		; B4 FC
	adc $00B141.l,X		; 7F 41 B1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	brk $05.b		; 00 05
	mvp $05,$14		; 44 14 05
	mvp $00,$05		; 44 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	asl $40.b		; 06 40
	lda ($A8.b,X)		; A1 A8
	tas		; 1B
	asl $9C.b,X		; 16 9C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $50		; 10 50
	eor ($51.b),Y		; 51 51
	.db $50, $41		; 50 41
	bit $00.b,X		; 34 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $4213.w		; 20 13 42
	sta $BEF6.w		; 8D F6 BE
	plp		; 28
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $04.b		; 14 04
	.db $90, $05		; 90 05
	mvp $10,$11		; 44 11 10
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $42, $C0		; 42 C0
	.db $D0, $64		; D0 64
	stx $41C2.w		; 8E C2 41
	eor $0000.w,Y		; 59 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $50, $05		; 50 05
	.db $10, $51		; 10 51
	.db $50, $40		; 50 40
	rti		; 40

	eor $00.b,X		; 55 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AE.b		; 00 AE
	.db $50, $1B		; 50 1B
	tay		; A8
	adc $178C98.l		; 6F 98 8C 17
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	eor $D4.b,X		; 55 D4
	eor ($54.b,X)		; 41 54
	mvn $00,$55		; 54 55 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6B.b		; 00 6B
	and $49EA.w		; 2D EA 49
	asl A		; 0A
	sta ($DD.b),Y		; 91 DD
	cli		; 58
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $50, $00		; 50 00
	.db $50, $44		; 50 44
	rti		; 40

	ora ($14.b),Y		; 11 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $CC.b		; 00 CC
	eor ($91.b),Y		; 51 91
	ora $9B58.w		; 0D 58 9B
	sbc ($3D.b,X)		; E1 3D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	tsb $44.b		; 04 44
	.db $10, $16		; 10 16
	tsb $10.b		; 04 10
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8C.b		; 00 8C
	ora $66.b,S		; 03 66
	and $2D8E.w,Y		; 39 8E 2D
	and $69.b		; 25 69
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($44.b,X)		; 01 44
	brk $00.b		; 00 00
	mvp $00,$01		; 44 01 00
	.db $11		; Opcode 11 overrunning bank boundry at 01FFFF. Skipping.
.ENDS
