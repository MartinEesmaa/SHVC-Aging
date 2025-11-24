.BANK 1 SLOT 0
.ORG $0000

.SECTION "Bank1" FORCE

	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FBFB6F.l		; 6F 6F FB FB
	eor $FFFF5F.l,X		; 5F 5F FF FF
	sbc $7FFD.w,X		; FD FD 7F
	adc $7FF9F9.l,X		; 7F F9 F9 7F
	adc $FB6F6F.l,X		; 7F 6F 6F FB
	xce		; FB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $90, $00		; 90 00
	tsb $00.b		; 04 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFE.w,X		; FE FE FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $C8C8.w,X		; FD C8 C8
	inc $F6.b,X		; F6 F6
	eor $FFFF4F.l		; 4F 4F FF FF
	inc $BFFE.w,X		; FE FE BF
	lda $FDFFFF.l,X		; BF FF FF FD
	sbc $C8C8.w,X		; FD C8 C8
	inc $F6.b,X		; F6 F6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	and [$00.b],Y		; 37 00
	ora #$00.b		; 09 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	.db $90, $90		; 90 90
	sty $008C.w		; 8C 8C 00
	brk $11.b		; 00 11
	ora ($80.b),Y		; 11 80
	.db $80, $00		; 80 00
	brk $3A.b		; 00 3A
	dec A		; 3A
	brk $00.b		; 00 00
	.db $90, $90		; 90 90
	dey		; 88
	sty $0000.w		; 8C 00 00
	.db $10, $11		; 10 11
	.db $80, $80		; 80 80
	brk $00.b		; 00 00
	jsl $00FF3A.l		; 22 3A FF 00
	adc $007700.l		; 6F 00 77 00
	sbc $00EF00.l,X		; FF 00 EF 00
	adc $00FF00.l,X		; 7F 00 FF 00
	cmp $FF00.w,X		; DD 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $10.b		; 00 10
	.db $10, $06		; 10 06
	asl $2D.b		; 06 2D
	and $DBDB.w		; 2D DB DB
	ora #$09.b		; 09 09
	brk $00.b		; 00 00
	and $5B1B3F.l,X		; 3F 3F 1B 5B
	brk $10.b		; 00 10
	brk $06.b		; 00 06
	brk $2D.b		; 00 2D
	brk $DB.b		; 00 DB
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $5B.b		; 00 5B
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	.db $90, $90		; 90 90
	ldx $7FAE.w		; AE AE 7F
	adc $97EEEE.l,X		; 7F EE EE 97
	sta [$3B.b],Y		; 97 3B
	tsa		; 3B
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $90.b		; 00 90
	brk $AE.b		; 00 AE
	brk $7F.b		; 00 7F
	brk $EE.b		; 00 EE
	brk $97.b		; 00 97
	brk $3B.b		; 00 3B
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	lda ($A1.b,X)		; A1 A1
	cmp ($C1.b,X)		; C1 C1
	sed		; F8
	sed		; F8
	cpy #$C0.b		; C0 C0
	xce		; FB
	sbc ($FB.b,S),Y		; F3 FB
	xce		; FB
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	jsr $00A1.w		; 20 A1 00
	cmp ($00.b,X)		; C1 00
	sed		; F8
	brk $C0.b		; 00 C0
	tsb $04FF.w		; 0C FF 04
	sbc #$FF.b		; E9 FF
	brk $FD.b		; 00 FD
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	tsb $C1.b		; 04 C1
	asl $00FF.w,X		; 1E FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FB00.l,X		; FF 00 FB 00
	sbc ($00.b,X)		; E1 00
	adc ($73.b,S),Y		; 73 73
	sta $81819F.l,X		; 9F 9F 81 81
	and $432D.w		; 2D 2D 43
	eor $0F.b,S		; 43 0F
	ora $E75151.l		; 0F 51 51 E7
	sbc $9F7171.l		; EF 71 71 9F
	sta $2D8181.l,X		; 9F 81 81 2D
	and $4343.w		; 2D 43 43
	ora $51000F.l		; 0F 0F 00 51
	rts		; 60

	sbc $60008C.l		; EF 8C 00 60
	brk $7E.b		; 00 7E
	brk $D2.b		; 00 D2
	brk $BC.b		; 00 BC
	brk $F0.b		; 00 F0
	brk $FF.b		; 00 FF
	brk $9F.b		; 00 9F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F2.b		; 00 F2
	sbc ($FF.b)		; F2 FF
	sbc $7FDBDB.l,X		; FF DB DB 7F
	adc $F3FFFF.l,X		; 7F FF FF F3
	sbc ($D7.b,S),Y		; F3 D7
	cmp [$AE.b],Y		; D7 AE
	lda $FFF2F2.l,X		; BF F2 F2 FF
	sbc $7FDBDB.l,X		; FF DB DB 7F
	adc $F3FFFF.l,X		; 7F FF FF F3
	sbc ($00.b,S),Y		; F3 00
	cmp [$8C.b],Y		; D7 8C
	lda $00000D.l,X		; BF 0D 00 00
	brk $24.b		; 00 24
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $FF.b		; 00 FF
	brk $73.b		; 00 73
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	adc $F7FFFF.l,X		; 7F FF FF F7
	sbc [$A7.b],Y		; F7 A7
	lda [$FF.b]		; A7 FF
	sbc $FAEFEF.l,X		; FF EF EF FA
	plx		; FA
	sta $7F7FEF.l		; 8F EF 7F 7F
	sbc $F7F7FF.l,X		; FF FF F7 F7
	lda [$A7.b]		; A7 A7
	sbc $EFEFFF.l,X		; FF FF EF EF
	.db $42, $FA		; 42 FA
	sta $EF.b,S		; 83 EF
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	php		; 08
	brk $58.b		; 00 58
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $BD.b		; 00 BD
	brk $7C.b		; 00 7C
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F9.b		; 00 F9
	sbc $FDFD.w,Y		; F9 FD FD
	tda		; 7B
	tda		; 7B
	sei		; 78
	sei		; 78
	sbc $E5.b		; E5 E5
	sed		; F8
	sed		; F8
	cmp $F7DD.w,X		; DD DD F7
	sbc $FDF9F9.l,X		; FF F9 F9 FD
	sbc $7B7B.w,X		; FD 7B 7B
	sei		; 78
	sei		; 78
	cpx #$E5.b		; E0 E5
	sed		; F8
	sed		; F8
	iny		; C8
	cmp $FF62.w,X		; DD 62 FF
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	sty $00.b		; 84 00
	sta [$00.b]		; 87 00
	ora $000700.l,X		; 1F 00 07 00
	and [$00.b],Y		; 37 00
	sta $FF00.w,X		; 9D 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $5F.b		; 00 5F
	eor $FFFFFF.l,X		; 5F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFBF.l,X		; FF BF BF FF
	sbc $5FFFFF.l,X		; FF FF FF 5F
	eor $FFFFFF.l,X		; 5F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFBF.l,X		; FF BF BF FF
	sbc $A0FFFF.l,X		; FF FF FF A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	inc $FFFF.w,X		; FE FF FF
	sbc [$F7.b],Y		; F7 F7
	sbc $F5.b,X		; F5 F5
	xce		; FB
	xce		; FB
	sbc $FAFAEF.l		; EF EF FA FA
	inc $FEFF.w,X		; FE FF FE
	inc $FFFF.w,X		; FE FF FF
	sbc [$F7.b],Y		; F7 F7
	sbc $F5.b,X		; F5 F5
	xce		; FB
	xce		; FB
	sbc $FAF8EF.l		; EF EF F8 FA
	inc $01FF.w		; EE FF 01
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $0A.b		; 00 0A
	brk $04.b		; 00 04
	brk $10.b		; 00 10
	brk $07.b		; 00 07
	brk $11.b		; 00 11
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $2C.b		; 00 2C
	bit $4F4F.w		; 2C 4F 4F
	xba		; EB
	xba		; EB
	ora $FFFF1F.l,X		; 1F 1F FF FF
	and [$37.b],Y		; 37 37
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $2C.b		; 00 2C
	brk $4F.b		; 00 4F
	brk $EB.b		; 00 EB
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $003700.l,X		; FF 00 37 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $80.b		; 00 80
	.db $80, $10		; 80 10
	.db $10, $BD		; 10 BD
	lda $E9E9.w,X		; BD E9 E9
	cmp [$D7.b],Y		; D7 D7
	sta [$97.b],Y		; 97 97
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	brk $BD.b		; 00 BD
	brk $E9.b		; 00 E9
	brk $D7.b		; 00 D7
	brk $97.b		; 00 97
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	.db $D0, $D0		; D0 D0
	cmp ($D2.b)		; D2 D2
	.db $42, $42		; 42 42
	phx		; DA
	phx		; DA
	dex		; CA
	dex		; CA
	inc $FEFE.w,X		; FE FE FE
	inc $0000.w,X		; FE 00 00
	brk $D0.b		; 00 D0
	brk $D2.b		; 00 D2
	brk $42.b		; 00 42
	brk $DA.b		; 00 DA
	brk $CA.b		; 00 CA
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $6D20.w		; 20 20 6D
	adc $0202.w		; 6D 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $6D.b		; 00 6D
	jsr ($FE00.w,X)		; FC 00 FE
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $72.b		; 00 72
	adc ($01.b)		; 72 01
	ora ($C3.b,X)		; 01 C3
	cmp $E9.b,S		; C3 E9
	sbc #$9E.b		; E9 9E
	stz $FFDF.w,X		; 9E DF FF
	lda $FFF7BF.l,X		; BF BF F7 FF
	adc ($72.b)		; 72 72
	ora ($01.b,X)		; 01 01
	brk $C3.b		; 00 C3
	brk $E9.b		; 00 E9
	brk $9E.b		; 00 9E
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	sta $FE00.w		; 8D 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1E.b		; 00 1E
	asl $8686.w,X		; 1E 86 86
	.db $70, $70		; 70 70
	sbc $EFEFEF.l		; EF EF EF EF
	xce		; FB
	sbc $EFF7F3.l,X		; FF F3 F7 EF
	sbc $821E16.l		; EF 16 1E 82
	stx $00.b		; 86 00
	.db $70, $0F		; 70 0F
	sbc $09EF0E.l		; EF 0E EF 09
	sbc $0FF707.l,X		; FF 07 F7 0F
	sbc $7D00E9.l		; EF E9 00 7D
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	ora ($F4.b,X)		; 01 F4
	ora [$C0.b]		; 07 C0
	ora $FF00FF.l		; 0F FF 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $FF.b		; 00 FF
	brk $CF.b		; 00 CF
	cmp $7F0F0F.l		; CF 0F 0F 7F
	adc $3F5000.l,X		; 7F 00 50 3F
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $C7FFFF.l,X		; FF FF FF C7
	cmp $5E0F0F.l		; CF 0F 0F 5E
	ror $5858.w,X		; 7E 58 58
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sec		; 38
	brk $F0.b		; 00 F0
	brk $A0.b		; 00 A0
	brk $D7.b		; 00 D7
	eor [$80.b],Y		; 57 80
	lda $00FF00.l,X		; BF 00 FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $AF.b		; 00 AF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $72.b		; 00 72
	adc ($E2.b)		; 72 E2
.ACCU 8
.INDEX 8
	sep #$F3		; E2 F3
	sbc ($47.b,S),Y		; F3 47
	tda		; 7B
	sbc $FEF5.w,Y		; F9 F5 FE
	sbc $F0FF.w,Y		; F9 FF F0
	sbc $7270F0.l,X		; FF F0 70 72
	cpx #$E2.b		; E0 E2
	.db $F0, $F3		; F0 F3
	bit $F4FF.w,X		; 3C FF F4
	sbc $FFFF.w,X		; FD FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $1F008F.l,X		; FF 8F 00 1F
	brk $0F.b		; 00 0F
	brk $BB.b		; 00 BB
	sec		; 38
	ora $F4.b		; 05 F4
	ora [$FF.b]		; 07 FF
	asl $0FFE.w		; 0E FE 0F
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	brk $C7.b		; 00 C7
	brk $FB.b		; 00 FB
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FAFCFE.l,X		; FF FE FC FA
	jsr ($FF75.w,X)		; FC 75 FF
	tda		; 7B
	pea $7DF3.w		; F4 F3 7D
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora $FE.b,S		; 03 FE
	ora [$FA.b]		; 07 FA
	asl A		; 0A
	plx		; FA
	txa		; 8A
	xce		; FB
	ora [$E7.b]		; 07 E7
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $01FE00.l,X		; FF 00 FE 01
	inc $F205.w,X		; FE 05 F2
	ora $6687FE.l		; 0F FE 87 66
	sta $00FF.w,Y		; 99 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $F2.b		; 00 F2
	brk $71.b		; 00 71
	brk $E0.b		; 00 E0
	ora $DE.b		; 05 DE
	lda $F9.b,S		; A3 F9
	rti		; 40

	lda ($80.b),Y		; B1 80
	adc #$18.b		; 69 18
	sta ($08.b),Y		; 91 08
	ora ($30.b),Y		; 11 30
	ora ($20.b,X)		; 01 20
	jsr $0120.w		; 20 20 01
	sed		; F8
	tsb $FF.b		; 04 FF
	rti		; 40

	sbc $107780.l,X		; FF 80 77 10
	sbc $10FF00.l,X		; FF 00 FF 10
	cmp $C4FF00.l,X		; DF 00 FF C4
	adc [$80.b]		; 67 80
	cpy $40.b		; C4 40
	dex		; CA
	brk $9E.b		; 00 9E
	clc		; 18
	ror $FE00.w		; 6E 00 FE
	.db $30, $FE		; 30 FE
	brk $FF.b		; 00 FF
	lda $3B18.w,Y		; B9 18 3B
	tsa		; 3B
	adc $E77737.l,X		; 7F 37 77 E7
	sbc $CFEFE7.l		; EF E7 EF CF
	cmp $DFDFCF.l,X		; DF CF DF DF
	cmp [$97.b],Y		; D7 97
	sbc $3F5FBF.l,X		; FF BF 5F 3F
	sei		; 78
	and $7C3F7F.l,X		; 3F 7F 3F 7C
	and $BF3E7E.l,X		; 3F 7E 3E BF
	lsr $5700.w		; 4E 00 57
	cpy #$7F.b		; C0 7F
	rti		; 40

	sbc $40FF40.l,X		; FF 40 FF 40
	sbc $41FE41.l,X		; FF 41 FE 41
	ldx $FE70.w,Y		; BE 70 FE
	adc $407FC0.l,X		; 7F C0 7F 40
	adc $C07FC0.l,X		; 7F C0 7F C0
	adc $C17FC0.l,X		; 7F C0 7F C1
	rol $3FC1.w,X		; 3E C1 3F
	rti		; 40

	and $C0FF00.l,X		; 3F 00 FF C0
	sbc $C0FFC0.l,X		; FF C0 FF C0
	sbc $C0FEC0.l,X		; FF C0 FE C0
	ldx $BE80.w,Y		; BE 80 BE
	.db $80, $50		; 80 50
	sbc $3DD7EB.l,X		; FF EB D7 3D
	sta ($BF.b,S),Y		; 93 BF
	brk $BD.b		; 00 BD
	sbc ($7D.b),Y		; F1 7D
	sec		; 38
	sbc ($F8.b)		; F2 F8
	sbc $7C.b,X		; F5 7C
	.db $10, $FF		; 10 FF
	.db $10, $DF		; 10 DF
	sbc $866F.w,Y		; F9 6F 86
	sta [$C1.b]		; 87 C1
	.db $30, $83		; 30 83
	dec A		; 3A
	sta $0EF1.w		; 8D F1 0E
	ror $EF.b,X		; 76 EF
	brk $BF.b		; 00 BF
	pha		; 48
	inc $FFAC.w,X		; FE AC FF
	sbc $447E8F.l,X		; FF 8F 7E 44
	sbc $7E02.w,X		; FD 02 7E
	sta [$F9.b]		; 87 F9
	sbc $008700.l,X		; FF 00 87 00
	pld		; 2B
	plp		; 28
	stx $BE.b		; 86 BE
	brk $7C.b		; 00 7C
	sta $7E.b,S		; 83 7E
	ora $FB.b		; 05 FB
	brk $FD.b		; 00 FD
	lda $FBFF.w,X		; BD FF FB
	sbc $7DFF6F.l,X		; FF 6F FF 7D
	sbc $5FFF3F.l,X		; FF 3F FF 5F
	and $109F3E.l,X		; 3F 3E 9F 10
	and $80FF04.l		; 2F 04 FF 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C0FF80.l,X		; FF 80 FF C0
	sbc $F07FE0.l,X		; FF E0 7F F0
	cmp $7F00FB.l,X		; DF FB 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	rti		; 40

	eor $103FA0.l,X		; 5F A0 3F 10
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $407F00.l,X		; 7F 00 7F 40
	sta $D0DF00.l,X		; 9F 00 DF D0
	sta [$BF.b],Y		; 97 BF
	sbc $F6FF.w,X		; FD FF F6
	sbc $A1FF40.l,X		; FF 40 FF A1
	inc $E10A.w,X		; FE 0A E1
	stx $E2.b,Y		; 96 E2
	ora $BF00BC.l		; 0F BC 00 BF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	asl $3FF6.w,X		; 1E F6 3F
	jsr ($CFC3.w,X)		; FC C3 CF
	sbc $00FE00.l,X		; FF 00 FE 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $09E601.l,X		; FF 01 E6 09
	sbc $5323.w,X		; FD 23 53
	lda $FF.b,S		; A3 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $F0.b		; 00 F0
	brk $C2.b		; 00 C2
	ora ($0C.b,X)		; 01 0C
	ora $FFFF7F.l,X		; 1F 7F FF FF
	sbc $53FF3F.l,X		; FF 3F FF 53
	.db $B0, $D6		; B0 D6
	.db $B0, $04		; B0 04
	cpy $FF.b		; C4 FF
	sbc $7FFF00.l,X		; FF 00 FF 7F
	sbc $3FFFFF.l,X		; FF FF FF 3F
	sbc $CFDF4F.l,X		; FF 4F DF CF
	eor $000480.l		; 4F 80 04 00
	sbc $807F00.l,X		; FF 00 7F 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $AF.b		; 00 AF
	.db $30, $CF		; 30 CF
	.db $30, $7B		; 30 7B
	.db $80, $00		; 80 00
	brk $FF.b		; 00 FF
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $BF.b		; 00 BF
	adc $00FFFF.l,X		; 7F FF FF 00
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $01FFEE.l,X		; FF EE FF 01
	and $431F05.l,X		; 3F 05 1F 43
	and $E9.b,S		; 23 E9
	sbc ($1C.b,S),Y		; F3 1C
	jsr ($FFF8.w,X)		; FC F8 FF
	xba		; EB
	sbc $C0FFEE.l,X		; FF EE FF C0
	sbc $1CEFF4.l,X		; FF F4 EF 1C
	and $03EF0A.l,X		; 3F 0A EF 03
	sta $140007.l,X		; 9F 07 00 14
	brk $11.b		; 00 11
	brk $BF.b		; 00 BF
	rts		; 60

	xce		; FB
	.db $10, $FF		; 10 FF
	jsr $021D.w		; 20 1D 02
	sbc $E0.b,S		; E3 E0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $001F00.l,X		; FF 00 1F 00
	ora $C0E300.l		; 0F 00 E3 C0
	sbc ($F0.b,X)		; E1 F0
	trb $FFFC.w		; 1C FC FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	inc $DCFE.w,X		; FE FE DC
	sed		; F8
	pea $D878.w		; F4 78 D8
	brk $FF.b		; 00 FF
	.db $80, $FF		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	jsl $FF0EFF.l		; 22 FF 0E FF
	plp		; 28
	sbc [$FF.b],Y		; F7 FF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora $E0.b		; 05 E0
	ora $FF00FF.l		; 0F FF 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	ora ($FD.b,X)		; 01 FD
	ora [$FF.b]		; 07 FF
	ora [$FF.b]		; 07 FF
	sbc $FFFEFE.l,X		; FF FE FE FF
	sbc $8E0F7F.l,X		; FF 7F 0F 8E
	sta [$03.b]		; 87 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	sbc $00FE00.l,X		; FF 00 FE 00
	sbc $88EFF0.l,X		; FF F0 EF 88
	adc $00FE01.l,X		; 7F 01 FE 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	.db $F0, $0D		; F0 0D
	cpx #$00.b		; E0 00
	sbc $FC00.w,X		; FD 00 FC
	brk $FC.b		; 00 FC
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $606F00.l,X		; FF 00 6F 60
	sbc [$70.b],Y		; F7 70
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFBFFF.l,X		; FF FF BF BF
	xce		; FB
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7F7FFF.l,X		; FF FF 7F 7F
	and $777FBF.l,X		; 3F BF 7F 77
	brk $BF.b		; 00 BF
	brk $FB.b		; 00 FB
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	.db $80, $7F		; 80 7F
	cpy #$FF.b		; C0 FF
	php		; 08
	lda $FF00FF.l,X		; BF FF 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	.db $80, $FF		; 80 FF
	cpy #$3F.b		; C0 3F
	rti		; 40

	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $007F00.l,X		; FF 00 7F 00
	lda $80BF00.l,X		; BF 00 BF 80
	inc $FFFE.w,X		; FE FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FE00.w,X		; FE 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FF7BFF.l,X		; FF FF 7B FF
	sbc $FF26FE.l,X		; FF FE 26 FF
	tsa		; 3B
	sbc $92F844.l,X		; FF 44 F8 92
	adc $84EE26.l,X		; 7F 26 EE 84
	sbc $01FF00.l,X		; FF 00 FF 01
	sbc $01FF01.l,X		; FF 01 FF 01
	sbc $83FC04.l,X		; FF 04 FC 83
	sbc $7BFFDF.l,X		; FF DF FF 7B
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	ora ($FC.b,X)		; 01 FC
	ora ($F9.b,X)		; 01 F9
	ora ($79.b,X)		; 01 79
	ora $C8.b,S		; 03 C8
	dec $00FF.w		; CE FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $37.b		; 00 37
	brk $8F.b		; 00 8F
	cmp $7FBF1F.l		; CF 1F BF 7F
	adc $FF7F7F.l,X		; 7F 7F 7F FF
	inc $FCFF.w,X		; FE FF FC
	sbc $00FF20.l,X		; FF 20 FF 00
	ora $FF5FDF.l,X		; 1F DF 5F FF
	and $7F7F7F.l,X		; 3F 7F 7F 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cpy #$0F.b		; C0 0F
	.db $80, $1F		; 80 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F8FFEC.l,X		; FF EC FF F8
	sbc $00FF88.l,X		; FF 88 FF 00
	sbc $3AFF12.l,X		; FF 12 FF 3A
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $C5FF.w		; ED FF C5
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $38FF10.l,X		; FF 10 FF 38
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cpx #$FD.b		; E0 FD
	cpx #$F0.b		; E0 F0
	cpy #$F1.b		; C0 F1
	cpy #$E0.b		; C0 E0
	cpy #$E0.b		; C0 E0
	sta ($C1.b,X)		; 81 C1
	brk $C3.b		; 00 C3
	brk $FF.b		; 00 FF
	sbc $F0FFFD.l,X		; FF FD FF F0
	sbc $E1FFF1.l,X		; FF F1 FF E1
	sbc $C1FEE1.l,X		; FF E1 FE C1
	sbc $1FFFC3.l,X		; FF C3 FF 1F
	sbc $30FD1D.l,X		; FF 1D FD 30
	.db $F0, $31		; F0 31
	sbc ($20.b),Y		; F1 20
	sbc ($61.b,X)		; E1 61
	sbc ($C1.b,X)		; E1 C1
	cmp ($C3.b,X)		; C1 C3
	cmp $FF.b,S		; C3 FF
	brk $FD.b		; 00 FD
	cop $F0.b		; 02 F0
	ora $E10EF1.l		; 0F F1 0E E1
	asl $1FE1.w,X		; 1E E1 1F
	cmp ($3E.b,X)		; C1 3E
	cmp $3C.b,S		; C3 3C
	plx		; FA
	lsr $92.b,X		; 56 92
	bit $D6.b,X		; 34 D6
	ora ($D6.b)		; 12 D6
	phy		; 5A
	cpx $E838.w		; EC 38 E8
	brk $F8.b		; 00 F8
	.db $10, $B8		; 10 B8
	.db $50, $AC		; 50 AC
	sbc $92.b,X		; F5 92
	sta $A6FEC9.l		; 8F C9 FE A6
	lda $F7F4.w,Y		; B9 F4 F7
	sed		; F8
	cmp $F0DFF0.l,X		; DF F0 DF F0
	cmp $8ABB84.l,X		; DF 84 BB 8A
	lda $B4BBD1.l,X		; BF D1 BB B4
	phx		; DA
	pei ($FB.b)		; D4 FB
	cld		; D8
	sbc [$C0.b],Y		; F7 C0
	sbc [$C0.b],Y		; F7 C0
	lda [$C1.b],Y		; B7 C1
	ora $D3.b		; 05 D3
	ora [$AC.b]		; 07 AC
	tsb $8B.b		; 04 8B
	and $D3.b		; 25 D3
	adc [$D7.b]		; 67 D7
	adc $8F7FCF.l		; 6F CF 7F 8F
	and $000060.l,X		; 3F 60 00 00
	jsr $0101.w		; 20 01 01
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	tsb $05.b		; 04 05
	ora $5B1E.w,X		; 1D 1E 5B
	trb $20.b		; 14 20
	sbc $007FC0.l,X		; FF C0 7F 00
	sbc $04FD03.l,X		; FF 03 FD 04
	sbc $FF01.w,X		; FD 01 FF
	ora [$F2.b]		; 07 F2
	rol $20C5.w,X		; 3E C5 20
	lda $00FFA0.l,X		; BF A0 FF 00
	sbc $04FC03.l,X		; FF 03 FC 04
	inc $FE01.w,X		; FE 01 FE
	asl $F9.b		; 06 F9
	tsb $BA.b		; 04 BA
	lda $1F3FFF.l,X		; BF FF 3F 1F
	inc $FCFE.w,X		; FE FE FC
	inc $F9FD.w,X		; FE FD F9
	plx		; FA
	sbc $C7E0.w,Y		; F9 E0 C7
	cmp ($CF.b),Y		; D1 CF
	eor $AE.b,X		; 55 AE
	adc $94A7E4.l		; 6F E4 A7 94
	adc $7B54.w		; 6D 54 7B
	sty $79.b		; 84 79
	stx $FF.b		; 86 FF
	ora #$FE.b		; 09 FE
	brk $79.b		; 00 79
	sbc [$9B.b],Y		; F7 9B
	phb		; 8B
	ora $7B.b,X		; 15 7B
	sbc $8BF573.l,X		; FF 73 F5 8B
	cpy #$BE.b		; C0 BE
	asl $FE.b		; 06 FE
	asl $0FFF.w		; 0E FF 0F
	sbc $F589.w,Y		; F9 89 F5
	ora ($CF.b,S),Y		; 13 CF
	ora ($CB.b),Y		; 11 CB
	sta [$77.b]		; 87 77
	sta $44.b,S		; 83 44
	asl $05.b		; 06 05
	ora $810705.l		; 0F 05 07 81
	sta $01.b,S		; 83 01
	adc $0579.w		; 6D 79 05
	sbc $FD09.w,X		; FD 09 FD
	rol $F6F8.w,X		; 3E F8 F6
	jsr ($F4F6.w,X)		; FC F6 F4
	sbc $7E.b,X		; F5 7E
	sbc $3D.b,X		; F5 3D
	.db $F0, $79		; F0 79
	sbc ($78.b),Y		; F1 78
	sbc ($3A.b),Y		; F1 3A
	sbc ($79.b)		; F2 79
	pea $704C.w		; F4 4C 70
	and $740E.w		; 2D 0E 74
	tsb $0837.w		; 0C 37 08
	ror $09.b,X		; 76 09
	adc [$0B.b],Y		; 77 0B
	bit $0B.b,X		; 34 0B
	ror $0B.b,X		; 76 0B
	stz $0F.b,X		; 74 0F
	.db $B0, $87		; B0 87
	xce		; FB
	dec $F9.b		; C6 F9
	sta [$F8.b]		; 87 F8
	sta [$F9.b]		; 87 F9
	dec $FB.b		; C6 FB
	sta [$FB.b]		; 87 FB
	ldy $FA.b,X		; B4 FA
	cmp $79.b,X		; D5 79
	cop $FD.b		; 02 FD
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($FF.b,X)		; 01 FF
	ora $FC.b,S		; 03 FC
	ora $FE.b,S		; 03 FE
	cop $F9.b		; 02 F9
	ora ($FA.b,X)		; 01 FA
	lda ($1D.b,S),Y		; B3 1D
	sbc ($1E.b)		; F2 1E
	inc $7F0F.w,X		; FE 0F 7F
	php		; 08
	xce		; FB
	php		; 08
	adc ($08.b,S),Y		; 73 08
	ldy $78C3.w,X		; BC C3 78
	cmp [$71.b]		; C7 71
	ror $0D33.w		; 6E 33 0D
	asl $8C01.w		; 0E 01 8C
	tsb $8C.b		; 04 8C
	sty $8C.b		; 84 8C
	sty $C4.b		; 84 C4
	ora [$80.b]		; 07 80
	adc $BF.b,S		; 63 BF
	ldx #$DF.b		; A2 DF
	cpx #$FF.b		; E0 FF
	sbc $7F.b,S		; E3 7F
	adc [$FF.b],Y		; 77 FF
	sbc ($FF.b,S),Y		; F3 FF
	tda		; 7B
	ldy $B878.w,X		; BC 78 B8
	jmp ($E06C.w,X)		; 7C 6C E0
	bit $02C0.w		; 2C C0 02
	sbc ($07.b),Y		; F1 07
	sbc [$83.b],Y		; F7 83
	sbc ($0B.b,S),Y		; F3 0B
	adc ($03.b,S),Y		; 73 03
	tda		; 7B
	ora $7B.b,S		; 03 7B
	cld		; D8
	lda [$61.b]		; A7 61
	asl $807F.w,X		; 1E 7F 80
	sbc $3FC000.l,X		; FF 00 C0 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	tya		; 98
	tad		; 5B
	cpx #$EE.b		; E0 EE
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	lda $7FFF5F.l,X		; BF 5F FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	ora ($7F.b,X)		; 01 7F
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $00FF80.l,X		; 7F 80 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	cop $F1.b		; 02 F1
	ora $ED.b		; 05 ED
	sec		; 38
	cld		; D8
	and $81.b,S		; 23 81
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $F2.b		; 06 F2
	ora $E2.b,S		; 03 E2
	plp		; 28
	inx		; E8
	and ($B1.b),Y		; 31 B1
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	asl A		; 0A
	ora $281D12.l		; 0F 12 1D 28
	ora [$73.b],Y		; 17 73
	lsr $FF7F.w		; 4E 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FAF6FF.l,X		; FF FF F6 FA
	sbc ($F0.b,X)		; E1 F0
	cmp $DF8FCF.l		; CF CF 8F DF
	ora [$F9.b]		; 07 F9
	cpy #$3F.b		; C0 3F
	jsr ($FE03.w,X)		; FC 03 FE
	ora ($1F.b,X)		; 01 1F
	ldy #$07.b		; A0 07
	sed		; F8
	.db $42, $7E		; 42 7E
	rol $053E.w,X		; 3E 3E 05
	cpx $01.b		; E4 01
	sec		; 38
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	rti		; 40

	rts		; 60

	.db $80, $18		; 80 18
	.db $62, $5C, $3E		; 62 5C 3E
	.db $30, $FF		; 30 FF
	inc $FEFF.w,X		; FE FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor $E707DF.l,X		; 5F DF 07 E7
	eor $A3.b,S		; 43 A3
	and $FC00DF.l,X		; 3F DF 00 FC
	cpy #$FE.b		; C0 FE
	jsr ($FEFF.w,X)		; FC FF FE
	sbc $9F7F7F.l,X		; FF 7F 7F 9F
	ora $F0DFFC.l,X		; 1F FC DF F0
	sbc $E8E8F8.l,X		; FF F8 E8 E8
	clc		; 18
	cpx #$D0.b		; E0 D0
	sed		; F8
	clc		; 18
	pea $B38C.w		; F4 8C B3
	brk $FF.b		; 00 FF
	mvp $85,$7A		; 44 7A 85
	clc		; 18
	sbc [$E8.b],Y		; F7 E8
	sbc [$80.b]		; E7 80
	adc $E4E7F8.l,X		; 7F F8 E7 E4
	tsa		; 3B
	sed		; F8
	lda $BBBEBD.l,X		; BF BD BE BB
	lda $1FF0.w,X		; BD F0 1F
	.db $F0, $1F		; F0 1F
	.db $F0, $1F		; F0 1F
	cpx #$9F.b		; E0 9F
	sed		; F8
	eor $F8C0B0.l		; 4F B0 C0 F8
	ora $F9.b		; 05 F9
	asl $FF.b		; 06 FF
	ora $7F0FEF.l,X		; 1F EF 0F 7F
	ora $3F8FFF.l		; 0F FF 8F 3F
	ora [$BF.b]		; 07 BF
	sta [$3A.b]		; 87 3A
	ora [$3C.b]		; 07 3C
	ora $07.b,S		; 03 07
	brk $07.b		; 00 07
	brk $5E.b		; 00 5E
	ora ($1C.b),Y		; 11 1C
	ora [$F3.b]		; 07 F3
	tsb $08F7.w		; 0C F7 08
	lda $8C7348.l,X		; BF 48 73 8C
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	eor [$BD.b]		; 47 BD
	ora $FF.b,S		; 03 FF
	ora [$FF.b]		; 07 FF
	ora $7FFFEF.l,X		; 1F EF FF 7F
	sbc ($F3.b,S),Y		; F3 F3
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	eor $86.b		; 45 86
	ora $E2.b,S		; 03 E2
	tsb $08.b		; 04 08
	clc		; 18
	brk $48.b		; 00 48
	dey		; 88
	.db $80, $00		; 80 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	tay		; A8
	xce		; FB
	plx		; FA
	sbc $FFF0.w,X		; FD F0 FF
	cpx #$FF.b		; E0 FF
	php		; 08
	sbc [$00.b],Y		; F7 00
	sbc $7F3F7F.l,X		; FF 7F 3F 7F
	sbc $1FE03F.l,X		; FF 3F E0 1F
	sbc ($5F.b)		; F2 5F
	.db $80, $3F		; 80 3F
	cpx #$BF.b		; E0 BF
	rti		; 40

	sbc $BF0000.l,X		; FF 00 00 BF
	brk $BF.b		; 00 BF
	lda $FFADDF.l,X		; BF DF AD FF
	cmp $DFDFBF.l,X		; DF BF DF DF
	lda $FFFFFF.l,X		; BF FF FF FF
	adc $C03F40.l,X		; 7F 40 3F C0
	sta $609F60.l,X		; 9F 60 9F 60
	lda $20DF60.l,X		; BF 60 DF 20
	adc $00FF80.l,X		; 7F 80 FF 00
	lda $803F80.l,X		; BF 80 3F 80
	and $C03FC0.l,X		; 3F C0 3F C0
	ora $C01FC0.l,X		; 1F C0 1F C0
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $7FFFFF.l,X		; FF FF FF 7F
	inc $FF9D.w,X		; FE 9D FF
	ora ($FF.b),Y		; 11 FF
	adc [$FC.b]		; 67 FC
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	ora ($00.b,X)		; 01 00
	sbc $63FF80.l,X		; FF 80 FF 63
	sbc $99FFEE.l,X		; FF EE FF 99
	jsr ($FFFC.w,X)		; FC FC FF
	inc $FFFE.w,X		; FE FE FF
	inc $00FF.w,X		; FE FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	inc $FC01.w,X		; FE 01 FC
	ora $FE.b,S		; 03 FE
	ora $FE.b,S		; 03 FE
	ora $FC.b,S		; 03 FC
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	ora ($FD.b,X)		; 01 FD
	ora ($FF.b,X)		; 01 FF
	ora $FF.b,S		; 03 FF
	brk $CE.b		; 00 CE
	sbc [$FF.b],Y		; F7 FF
	plx		; FA
	sbc $F1FFFE.l,X		; FF FE FF F1
	sbc $1DF3E7.l,X		; FF E7 F3 1D
	sbc ($3B.b,X)		; E1 3B
	sbc #$3F.b		; E9 3F
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sed		; F8
	sbc $DEFFEC.l,X		; FF EC FF DE
	xba		; EB
	cmp $F630F6.l,X		; DF F6 30 F6
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	tsb $FF.b		; 04 FF
	jsr ($FAFF.w,X)		; FC FF FA
	xce		; FB
	sed		; F8
	sbc $00CF.w,Y		; F9 CF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc ($00.b,S),Y		; F3 00
	sbc ($14.b),Y		; F1 14
	sbc #$06.b		; E9 06
	sbc $07FF02.l,X		; FF 02 FF 07
	sbc $EEFE0F.l,X		; FF 0F FE EE
	sbc ($FE.b)		; F2 FE
	cmp $E09BD0.l		; CF D0 9B E0
	sbc $FD80.w,Y		; F9 80 FD
	sbc $F0FFF8.l,X		; FF F8 FF F0
	sbc $0CFF10.l,X		; FF 10 FF 0C
	sbc ($10.b)		; F2 10
	sbc $86B764.l,X		; FF 64 B7 86
	ror $00.b,X		; 76 00
	sbc $07FF01.l,X		; FF 01 FF 07
	sbc $0EFF02.l,X		; FF 02 FF 0E
	inc $FF1F.w,X		; FE 1F FF
	adc $FF7FFF.l,X		; 7F FF 7F FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $0EE10C.l,X		; FF 0C E1 0E
	.db $D0, $4F		; D0 4F
	cpy #$3F.b		; C0 3F
	sbc $FFFF78.l,X		; FF 78 FF FF
	lda $3CDCFF.l,X		; BF FF DC 3C
	jmp.w [$0E5F]		; DC 5F 0E
	asl $0E0E.w		; 0E 0E 0E
	trb $1C.b		; 14 1C
	sta [$FF.b]		; 87 FF
	brk $FF.b		; 00 FF
	rti		; 40

	lda $03DC20.l,X		; BF 20 DC 03
	eor $FFE0.w,X		; 5D E0 FF
	cpx #$FF.b		; E0 FF
	inx		; E8
	sbc $FFFF78.l,X		; FF 78 FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $DF9F.w,X		; FD 9F DF
	stx $8E9E.w		; 8E 9E 8E
	stz $9C8C.w,X		; 9E 8C 9C
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $20FF40.l,X		; FF 40 FF 20
	rol $7EC2.w,X		; 3E C2 7E
	sbc ($7E.b,X)		; E1 7E
	sbc ($64.b,X)		; E1 64
	sbc ($C1.b,S),Y		; F3 C1
	cop $03.b		; 02 03
	brk $B3.b		; 00 B3
	.db $10, $B7		; 10 B7
	.db $50, $D3		; 50 D3
	bit $6693.w,X		; 3C 93 66
	eor $D2.b,S		; 43 D2
	eor $16.b,S		; 43 16
	cmp $FD.b,S		; C3 FD
	ora $FF.b,S		; 03 FF
	ora $BF.b,S		; 03 BF
	sbc [$D7.b],Y		; F7 D7
	sbc $EF75FB.l,X		; FF FB 75 EF
	sbc ($7B.b),Y		; F1 7B
	ora ($DF.b),Y		; 11 DF
	cmp $C3.b,S		; C3 C3
	ora $03.b,S		; 03 03
	ora ($33.b,S),Y		; 13 33
	eor [$37.b]		; 47 37
	and $17671F.l		; 2F 1F 67 17
	cmp ($C3.b),Y		; D1 C3
	ora ($47.b),Y		; 11 47
	cmp $3E.b,S		; C3 3E
	ora $FC.b,S		; 03 FC
	sbc ($0C.b,S),Y		; F3 0C
	ora $F407F0.l		; 0F F0 07 F4
	phb		; 8B
	sei		; 78
	cmp $B84FB8.l		; CF B8 4F B8
	tay		; A8
	rts		; 60

	tay		; A8
	rts		; 60

	dey		; 88
	jsr $E0C9.w		; 20 C9 E0
	php		; 08
	and ($98.b,X)		; 21 98
	.db $30, $B0		; 30 B0
	.db $10, $84		; 10 84
	.db $30, $E0		; 30 E0
	sbc $80BFA0.l,X		; FF A0 BF 80
	sbc $21FF60.l,X		; FF 60 FF 21
	inc $BF30.w,X		; FE 30 BF
	.db $30, $9F		; 30 9F
	brk $BB.b		; 00 BB
	cpy #$A7.b		; C0 A7
	cpy #$E7.b		; C0 E7
	.db $80, $E7		; 80 E7
	jsr $21C6.w		; 20 C6 21
	sta [$A0.b]		; 87 A0
	cmp [$80.b],Y		; D7 80
	sbc [$80.b],Y		; F7 80
	sbc [$9F.b],Y		; F7 9F
	and $DF3F9F.l,X		; 3F 9F 3F DF
	and $DE7F9E.l,X		; 3F 9E 7F DE
	adc $4F7F4F.l,X		; 7F 4F 7F 4F
	adc $577F4F.l,X		; 7F 4F 7F 57
	pha		; 48
	tya		; 98
	ldy #$F0.b		; A0 F0
	.db $80, $C0		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $28.b		; 00 28
	sbc $00FF40.l,X		; FF 40 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $68FE00.l,X		; FF 00 FE 68
	cpx #$40.b		; E0 40
	lda [$80.b]		; A7 80
	sta $003F00.l		; 8F 00 3F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $B7FF00.l,X		; FF 00 FF B7
	sta $7F7F1F.l,X		; 9F 1F 7F 7F
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EAFFFF.l,X		; FF FF FF EA
	ora $3C.b		; 05 3C
	and #$1F.b		; 29 1F
	jsr $001C.w		; 20 1C 00
	rol $6820.w,X		; 3E 20 68
	brk $4C.b		; 00 4C
	bit $44.b		; 24 44
	sty $FF0A.w		; 8C 0A FF
	rol $1DDE.w,X		; 3E DE 1D
	sbc $FE1E.w,X		; FD 1E FE
	trb $6FDC.w		; 1C DC 6F
	sbc $EFFB6F.l		; EF 6F FB EF
	adc ($0E.b,S),Y		; 73 0E
	trb $C11D.w		; 1C 1D C1
	ora $FF1FF1.l,X		; 1F F1 1F FF
	and $EF6FFF.l,X		; 3F FF 6F EF
	adc $F75FFF.l,X		; 7F FF 5F F7
	xce		; FB
	sed		; F8
	inc $DDE0.w		; EE E0 DD
	sbc ($FE.b),Y		; F1 FE
	cmp $FFFFFE.l,X		; DF FE FF FF
	sbc $C3CFCB.l		; EF CB CF C3
	eor [$75.b]		; 47 75
	tay		; A8
	sbc ($28.b),Y		; F1 28
	bit $8C.b,X		; 34 8C
	cmp $08.b,X		; D5 08
	cmp ($D0.b,S),Y		; D3 D0
	adc $2F44.w,Y		; 79 44 2F
	ora #$7D.b		; 09 7D
	adc ($8F.b,X)		; 61 8F
	bit $8F.b,X		; 34 8F
	lda $CB.b,X		; B5 CB
	ora $4E.b,X		; 15 4E
	adc $88.b,X		; 75 88
	lda [$86.b],Y		; B7 86
	iny		; C8
	dec $C9CD.w,X		; DE CD C9
	cpy $FDD4.w		; CC D4 FD
	cmp $F9.b,X		; D5 F9
	lda $38.b,X		; B5 38
	adc $DF.b,X		; 75 DF
	cmp [$F3.b]		; C7 F3
	lda $CEDE.w,Y		; B9 DE CE
	sbc $FF.b,X		; F5 FF
	sbc $817E85.l		; EF 85 7E 81
	xce		; FB
	brk $7A.b		; 00 7A
	lsr $7D.b		; 46 7D
	cpy #$DF.b		; C0 DF
.INDEX 16
	rep #$DC		; C2 DC
	cmp $CD.b,X		; D5 CD
	inc $FCEF.w		; EE EF FC
	ora $EF8FF7.l		; 0F F7 8F EF
	sta [$DF.b],Y		; 97 DF
	adc $F01EBE.l		; 6F BE 1E F0
	adc $DFC3.w,X		; 7D C3 DF
	phk		; 4B
	adc $84.b,X		; 75 84
	plb		; AB
	phb		; 8B
	cpx $17.b		; E4 17
	cpx #$D02F.w		; E0 2F D0
	eor $906E83.l,X		; 5F 83 6E 90
	sed		; F8
	and [$22.b]		; 27 22
	eor [$F4.b]		; 47 F4
	sed		; F8
	tda		; 7B
	adc [$77.b],Y		; 77 77
	sbc $9FDFBF.l,X		; FF BF DF 9F
	inc $F2ED.w,X		; FE ED F2
	sed		; F8
	cpy $FE.b		; C4 FE
	stx $FB83.w		; 8E 83 FB
	tsb $F7.b		; 04 F7
	.db $10, $E7		; 10 E7
	.db $10, $DF		; 10 DF
	.db $42, $9E		; 42 9E
	sta ($F1.b)		; 92 F1
	ora $C3.b,S		; 03 C3
	bit #$8F.b		; 89 8F
	stz $FF.b		; 64 FF
	cpy #$80FF.w		; C0 FF 80
	sbc $502D6D.l,X		; FF 6D 2D 50
	cpy $1BEF.w		; CC EF 1B
	eor $D5B509.l		; 4F 09 B5 D5
	stz $9B.b		; 64 9B
	cpy #$803F.w		; C0 3F 80
	adc $F7D2FF.l,X		; 7F FF D2 F7
	bit $0F.b,X		; 34 0F
	tsb $3F.b		; 04 3F
	asl $3F.b,X		; 16 3F
	tax		; AA
	stz $64.b		; 64 64
	cpy #$80C0.w		; C0 C0 80
	.db $80, $FF		; 80 FF
	cpy #$1FF4.w		; C0 F4 1F
	sbc $26FF14.l		; EF 14 FF 26
	adc $FF9B60.l,X		; 7F 60 9B FF
	and $FF7FFF.l,X		; 3F FF 7F FF
	cpy #$17C0.w		; C0 C0 17
	trb $E4.b		; 14 E4
	cpx $C6.b		; E4 C6
	inc $A0.b		; E6 A0
	cpx #$8244.w		; E0 44 82
	sbc $BF.b,X		; F5 BF
	sbc $84B4FF.l,X		; FF FF B4 84
	.db $D0, $F4		; D0 F4
	adc ($5F.b,X)		; 61 5F
	and $2F.b,S		; 23 2F
	tsb $00.b		; 04 00
	rts		; 60

.ACCU 8
.INDEX 8
	sep #$B5		; E2 B5
	sec		; 38
	and $5BDFB2.l,X		; 3F B2 DF 5B
	xce		; FB
	ora ($81.b,S),Y		; 13 81
	stz $ECE3.w,X		; 9E E3 EC
	sbc $3964FF.l,X		; FF FF 64 39
	sbc [$47.b],Y		; F7 47
	lda $20DF4D.l,X		; BF 4D DF 20
	sbc ($FC.b,S),Y		; F3 FC
	lda ($61.b,X)		; A1 61
	cmp ($13.b,S),Y		; D3 13
	sbc $9FBF05.l,X		; FF 05 BF 9F
	sec		; 38
	and $007F32.l,X		; 3F 32 7F 00
	brk $F8.b		; 00 F8
	.db $10, $3E		; 10 3E
	and $053F0C.l,X		; 3F 0C 3F 05
	ora $3E.b		; 05 3E
	ror $3C3C.w		; 6E 3C 3C
	ldy $F1AC.w,X		; BC AC F1
	cmp ($73.b,X)		; C1 73
	eor $22.b,S		; 43 22
	inc $F374.w,X		; FE 74 F3
	inc $6EFD.w,X		; FE FD 6E
	.db $30, $3C		; 30 3C
	jsr $30BC.w		; 20 BC 30
	adc $12.b,S		; 63 12
	sbc ($B2.b,X)		; E1 B2
	.db $30, $C2		; 30 C2
	adc $02FF84.l,X		; 7F 84 FF 02
	adc $CFFF9F.l,X		; 7F 9F FF CF
	sbc $DFDFDF.l,X		; FF DF DF DF
	sbc $3D3F.w,X		; FD 3F 3D
	and $77.b,S		; 23 77
	jmp ($FEFF.w,X)		; 7C FF FE
	.db $F0, $FF		; F0 FF
	and ($EF.b,X)		; 21 EF
	and ($FF.b,S),Y		; 33 FF
	inc $3EBF.w,X		; FE BF 3E
	and $8CE3C3.l,X		; 3F C3 E3 8C
	pea $FE02.w		; F4 02 FE
	sei		; 78
	ora [$FD.b]		; 07 FD
	cpy #$BF.b		; C0 BF
	eor [$EF.b]		; 47 EF
	ora [$8F.b]		; 07 8F
	adc [$3F.b],Y		; 77 3F
	and [$6F.b]		; 27 6F
	eor [$2F.b],Y		; 57 2F
	eor [$FD.b],Y		; 57 FD
	adc $BE3FBC.l,X		; 7F BC 3F BE
	lda $FFEFDF.l,X		; BF DF EF FF
	sta $5FEF0F.l		; 8F 0F EF 5F
	cmp $7D8F5F.l		; CF 5F 8F 7D
.ACCU 16
.INDEX 16
	rep #$BE		; C2 BE
	eor ($FE.b,X)		; 41 FE
	cpy #$F8CF.w		; C0 CF F8
	cmp $38DFF8.l		; CF F8 DF 38
	sbc $78AF38.l		; EF 38 AF 78
	sed		; F8
	eor $3F.b,S		; 43 3F
	brk $BF.b		; 00 BF
	.db $80, $DF		; 80 DF
	iny		; C8
	cmp $F80FB8.l		; CF B8 0F F8
	ora $E81FF8.l		; 0F F8 1F E8
.INDEX 8
	sep #$1D		; E2 1D
	ror $6193.w		; 6E 93 61
	tsx		; BA
	sbc $FCFFFA.l,X		; FF FA FF FC
	inc $FCF2.w,X		; FE F2 FC
	sbc ($F0.b),Y		; F1 F0
	sbc ($E3.b)		; F2 E3
	sbc $FF.b,S		; E3 FF
	sbc $EFA3.w,X		; FD A3 EF
	inc $FFFF.w,X		; FE FF FF
	sbc $FAF1FF.l,X		; FF FF F1 FA
	inc $F5FD.w,X		; FE FD F5
	ora ($00.b,X)		; 01 00
	adc ($F3.b),Y		; 71 F3
	sbc ($9E.b,S),Y		; F3 9E
	sbc $03FF00.l,X		; FF 00 FF 03
	plx		; FA
	phd		; 0B
	sed		; F8
	ora $000BFC.l		; 0F FC 0B 00
	sbc $6D2CB2.l,X		; FF B2 2C 6D
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora $F5.b,S		; 03 F5
	ora ($FA.b,X)		; 01 FA
	asl A		; 0A
	sbc $FF09.w,X		; FD 09 FF
	brk $FF.b		; 00 FF
	tsb $FF.b		; 04 FF
	brk $FE.b		; 00 FE
	brk $B7.b		; 00 B7
	pha		; 48
	sta [$0C.b],Y		; 97 0C
	rol A		; 2A
	eor $B8.b,S		; 43 B8
	ora #$FFFF.w		; 09 FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sed		; F8
	sbc $7A313E.l,X		; FF 3E 31 7A
	and [$B9.b],Y		; 37 B9
	tsx		; BA
	rti		; 40

	and $00FF.w,Y		; 39 FF 00
	sbc $01FF00.l,X		; FF 00 FF 01
	sbc $4FF907.l,X		; FF 07 F9 4F
	xce		; FB
	adc $39ED39.l		; 6F 39 ED 39
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $36.b		; 00 36
	brk $8A.b		; 00 8A
	and $AD.b,S		; 23 AD
	ldx $3647.w		; AE 47 36
	sbc $007F00.l,X		; FF 00 7F 00
	sbc $04FF00.l,X		; FF 00 FF 04
	sbc $3FFF0F.l,X		; FF 0F FF 3F
	and $3F7F3F.l,X		; 3F 3F 7F 3F
	inc $7FFF.w,X		; FE FF 7F
	sbc $3FFFBF.l,X		; FF BF FF 3F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FF01FF.l,X		; FF FF 01 FF
	.db $80, $FF		; 80 FF
	brk $FF.b		; 00 FF
	cpy #$FF.b		; C0 FF
	brk $FF.b		; 00 FF
	.db $80, $FF		; 80 FF
	brk $FF.b		; 00 FF
	cpy #$FE.b		; C0 FE
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	.db $80, $7F		; 80 7F
	brk $FF.b		; 00 FF
	rti		; 40

	cpx #$7E.b		; E0 7E
	sbc ($FF.b,X)		; E1 FF
	sbc ($FC.b,X)		; E1 FC
	sbc #$F0FC.w		; E9 FC F0
	jsr ($F0E0.w,X)		; FC E0 F0
	sbc #$E0FC.w		; E9 FC E0
	inc $FE9E.w,X		; FE 9E FE
	ora $FD1CFF.l,X		; 1F FF 1C FD
	trb $0CF5.w		; 1C F5 0C
	jsr ($E010.w,X)		; FC 10 E0
	trb $1EFD.w		; 1C FD 1E
	sbc $F1F1F1.l,X		; FF F1 F1 F1
	.db $F0, $F3		; F0 F3
	sbc ($FB.b,S),Y		; F3 FB
	xce		; FB
	txy		; 9B
	xce		; FB
	ora [$F7.b],Y		; 17 F7
	ora ($F3.b,S),Y		; 13 F3
	ora $E0F8.w,Y		; 19 F8 E0
	ora $E00FE0.l		; 0F E0 0F E0
	ora $F007E8.l		; 0F E8 07 F0
	ora [$F8.b]		; 07 F8
	ora [$E0.b],Y		; 17 E0
	ora $F007E0.l		; 0F E0 07 F0
	brk $F9.b		; 00 F9
	sta ($C1.b,X)		; 81 C1
	ora ($C3.b,X)		; 01 C3
	ora $4F.b,S		; 03 4F
	ora $C00F4E.l		; 0F 4E 0F C0
	brk $C3.b		; 00 C3
	brk $0F.b		; 00 0F
	sbc $3FFF87.l,X		; FF 87 FF 3F
	sbc $3FFF3F.l,X		; FF 3F FF 3F
	adc $337D3E.l,X		; 7F 3E 7D 33
	sed		; F8
	ora $FCFCDC.l,X		; 1F DC FC FC
	jsr ($FC7C.w,X)		; FC 7C FC
	jsr ($FCFC.w,X)		; FC FC FC
	.db $F0, $F0		; F0 F0
	.db $F0, $F1		; F0 F1
	sbc ($FB.b,S),Y		; F3 FB
	cmp ($CF.b,S),Y		; D3 CF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora $FE0DFF.l		; 0F FF 0D FE
	ora $CF3FF3.l		; 0F F3 3F CF
	ldx $BE.b,Y		; B6 BE
	inc $EFFE.w,X		; FE FE EF
	sbc [$FE.b],Y		; F7 FE
	sbc ($98.b,X)		; E1 98
	cmp #$E838.w		; C9 38 E8
	and $782A.w,Y		; 39 2A 78
	pla		; 68
	.db $F0, $FF		; F0 FF
	sed		; F8
	sbc [$E0.b],Y		; F7 E0
	cmp $D19EC1.l,X		; DF C1 9E D1
	rol $9F70.w,X		; 3E 70 9F
	lda ($5D.b)		; B2 5D
	.db $70, $1F		; 70 1F
	asl $0E.b		; 06 0E
	asl $06.b		; 06 06
	and $5F7F3F.l,X		; 3F 3F 7F 5F
	sbc $FF5FFF.l,X		; FF FF 5F FF
	sta $7F1FFF.l,X		; 9F FF 1F 7F
	inc $F6F1.w,X		; FE F1 F6
	sbc $F0FF.w,Y		; F9 FF F0
	cmp ($E1.b,X)		; C1 E1
	.db $80, $80		; 80 80
	ldy #$00.b		; A0 00
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	ora $12.b,X		; 15 12
	ora $1A43CA.l,X		; 1F CA 43 1A
	ora $1C.b,S		; 03 1C
	lda [$11.b]		; A7 11
	adc [$9B.b]		; 67 9B
	eor $1AFED2.l,X		; 5F D2 FE 1A
	ora ($CD.b,S),Y		; 13 CD
	cmp $595F.w,Y		; D9 5F 59
	eor ($1F.b,S),Y		; 53 1F
	ora $9DB736.l,X		; 1F 36 B7 9D
	cmp [$DC.b],Y		; D7 DC
	lda $12EE14.l		; AF 14 EE 12
	eor [$84.b]		; 47 84
	cmp $94031A.l		; CF 1A 03 94
	sta $998710.l		; 8F 10 87 99
	cmp $E08F59.l		; CF 59 8F E0
	sbc $C3BA4F.l,X		; FF 4F BA C3
	clv		; B8
	sta [$78.b]		; 87 78
	phb		; 8B
	.db $70, $CF		; 70 CF
	.db $30, $CE		; 30 CE
	sec		; 38
	ldx $7E50.w		; AE 50 7E
	ora ($00.b,X)		; 01 00
	.db $90, $82		; 90 82
	eor ($E8.b)		; 52 E8
	dey		; 88
	.db $B0, $D0		; B0 D0
	dec $B2.b		; C6 B2
	cmp $8D47.w,X		; DD 47 8D
	inc $EC7B.w,X		; FE 7B EC
	cpy #$7F.b		; C0 7F
.INDEX 16
	rep #$DD		; C2 DD
	inx		; E8
	jsr ($EAFC.w,X)		; FC FC EA
	rol $D3.b		; 26 D3
	ora $FF93.w		; 0D 93 FF
	inc A		; 1A
	lda [$57.b],Y		; B7 57
	cpy #$C093.w		; C0 93 C0
	sbc ($60.b,S),Y		; F3 60
	wai		; CB
	pla		; 68
	sbc $60.b,X		; F5 60
	inc $F3C4.w,X		; FE C4 F3
	asl $17F1.w,X		; 1E F1 17
	plx		; FA
	lda $7FEFFF.l		; AF FF EF 7F
	cmp [$5F.b],Y		; D7 5F
	lda ($2F.b,S),Y		; B3 2F
	bit #$180F.w		; 89 0F 18
	adc $12FF18.l		; 6F 18 FF 12
	sbc ($00.b)		; F2 00
	brk $03.b		; 00 03
	asl $0A.b		; 06 0A
	ora $78.b,S		; 03 78
	ora $05.b,S		; 03 05
	tsb $CF.b		; 04 CF
	cmp $FDF90F.l,X		; DF 0F F9 FD
	eor $FF03.w,X		; 5D 03 FF
	ora $FC.b,S		; 03 FC
	ora $F7.b,S		; 03 F7
	ora ($07.b,X)		; 01 07
	ora $FF.b		; 05 FF
	cmp $F70CE9.l,X		; DF E9 0C F7
	cmp ($BC.b,X)		; C1 BC
	cop $FD.b		; 02 FD
	brk $FF.b		; 00 FF
	ora ($FA.b,X)		; 01 FA
	ora ($FA.b,X)		; 01 FA
	ora ($07.b,X)		; 01 07
	ora [$D9.b],Y		; 17 D9
	asl $E3F7.w		; 0E F7 E3
	lda $FAFEFC.l,X		; BF FC FE FA
	sbc $FFFC.w,Y		; F9 FC FF
	jsr ($FBFF.w,X)		; FC FF FB
	sbc $F921.w,X		; FD 21 F9
	and [$C7.b]		; 27 C7
	ldx $3ABF.w,Y		; BE BF 3A
	cop $2F.b		; 02 2F
	cmp $9F70.w		; CD 70 9F
	.db $D0, $DF		; D0 DF
	lda $1C.b,S		; A3 1C
	sta $B2.b		; 85 B2
	ora [$6C.b],Y		; 17 6C
	sta [$62.b]		; 87 62
	sbc $AF7D.w,X		; FD 7D AF
	sbc ($F0.b)		; F2 F0
	cpx #$A070.w		; E0 70 A0
	rti		; 40

	rts		; 60

	cpy #$8AC6.w		; C0 C6 8A
	ora $7F858F.l		; 0F 8F 85 7F
	plx		; FA
	sbc $60FF62.l,X		; FF 62 FF 60
	sbc $A05F90.l		; EF 90 5F A0
	lda $8173C6.l,X		; BF C6 73 81
	sbc $6A8F.w,X		; FD 8F 6A
	tax		; AA
	adc ($A2.b)		; 72 A2
	adc $0F1FEF.l		; 6F EF 1F 0F
	ora $B9BF3F.l,X		; 1F 3F BF B9
	lda $F17C.w,X		; BD 7C F1
	sbc $DB1E1F.l,X		; FF 1F 1E DB
	cli		; 58
	ror $F85B.w,X		; 7E 5B F8
	eor $F8.b,S		; 43 F8
	ora $20F1.w,Y		; 19 F1 20
	cmp ($00.b,X)		; C1 00
	cpx #$1F00.w		; E0 00 1F
	ora ($9B.b,X)		; 01 9B
	cmp $B1.b,S		; C3 B1
	and #$3123.w		; 29 23 31
	and [$28.b]		; 27 28
	ora $013F21.l		; 0F 21 3F 01
	ora $FFFF20.l,X		; 1F 20 FF FF
	lda $FBF6FF.l,X		; BF FF F6 FB
	plx		; FA
	adc [$F8.b],Y		; 77 F8
	and ($E1.b),Y		; 31 E1
	ora ($E1.b),Y		; 11 E1
	and ($E0.b,X)		; 21 E0
	jsr $FFC1.w		; 20 C1 FF
	cmp [$FF.b]		; C7 FF
	ror A		; 6A
	tda		; 7B
	sbc ($F1.b)		; F2 F1
	sbc ($F6.b),Y		; F1 F6
	cmp ($CF.b,X)		; C1 CF
	cmp ($DF.b,X)		; C1 DF
	cpx #$FCDF.w		; E0 DF FC
	ora $DC.b,S		; 03 DC
	brk $3B.b		; 00 3B
	tay		; A8
	and [$E8.b],Y		; 37 E8
	tyx		; BB
	mvp $08,$F7		; 44 F7 08
	brk $7F.b		; 00 7F
	rti		; 40

	adc $C3C3C0.l,X		; 7F C0 C3 C3
	cmp ($7C.b,X)		; C1 7C
	trb $28.b		; 14 28
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0C0.w		; C0 C0 C0
	jsr $FFFF.w		; 20 FF FF
	sbc $FFBE.w,X		; FD BE FF
	.db $50, $D7		; 50 D7
	clc		; 18
	sbc $00FF00.l,X		; FF 00 FF 00
	lda $207F40.l,X		; BF 40 7F 20
	jsr ($9EFF.w,X)		; FC FF 9E
	ldy $9393.w,X		; BC 93 93
	cmp [$EF.b],Y		; D7 EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	and $9F3F7F.l,X		; 3F 7F 3F 9F
	sbc ($EE.b,S),Y		; F3 EE
	lda $9BE680.l,X		; BF 80 E6 9B
	nop		; EA
	asl A		; 0A
	txa		; 8A
	and $E3.b,X		; 35 E3
	pla		; 68
	lda [$68.b],Y		; B7 68
	sbc $72.b		; E5 72
	xce		; FB
	.db $10, $C0		; 10 C0
	rts		; 60

	tsb $1507.w		; 0C 07 15
	tas		; 1B
	phy		; 5A
	and ($27.b,X)		; 21 27
	and [$25.b],Y		; 37 25
	adc $E7.b		; 65 E7
	sbc ($F0.b,X)		; E1 F0
	sta $20DF.w,X		; 9D DF 20
	sbc $9F.b		; E5 9F
	sbc $65DE0E.l,X		; FF 0E DE 65
	phb		; 8B
	adc $FB5FFD.l,X		; 7F FD 5F FB
	ora $1699.w,Y		; 19 99 16
	ora $F4ED1F.l,X		; 1F 1F ED F4
	cpx #$9EE0.w		; E0 E0 9E
	.db $90, $9B		; 90 9B
	lda $FD.b,S		; A3 FD
	lda $7F.b		; A5 7F
	adc [$77.b]		; 67 77
	lsr $0A.b,X		; 56 0A
	cop $79.b		; 02 79
	ora ($FE.b,X)		; 01 FE
	ora ($3C.b,X)		; 01 3C
	brk $7E.b		; 00 7E
	rti		; 40

	adc $12AD00.l,X		; 7F 00 AD 12
	cld		; D8
	sta $06F6F4.l,X		; 9F F4 F6 06
	ora $C14201.l		; 0F 01 42 C1
	.db $80, $C1		; 80 C1
	sta ($81.b,X)		; 81 81
	sta $C1.b,S		; 83 C1
	cmp [$D9.b]		; C7 D9
	and $BE0FF5.l,X		; 3F F5 0F BE
	eor #$42FF.w		; 49 FF 42
	inc $BD41.w,X		; FE 41 BD
	rti		; 40

	sbc $BD43.w,X		; FD 43 BD
	cmp [$1F.b]		; C7 1F
	ora $B90707.l,X		; 1F 07 07 B9
	lda ($FE.b),Y		; B1 FE
	ldy $7E3F.w,X		; BC 3F 7E
	ror $3D3E.w,X		; 7E 3E 3D
	and $B9BD.w,X		; 3D BD B9
	sbc $073F9F.l,X		; FF 9F 3F 07
	ora $720D.w		; 0D 0D 72
	.db $80, $FF		; 80 FF
	ora $FB.b,S		; 03 FB
	sta [$3B.b],Y		; 97 3B
	and $7F3F9B.l		; 2F 9B 3F 7F
	ldy #$5857.w		; A0 57 58
	ora ($08.b,X)		; 01 08
	sta $70.b,S		; 83 70
	sbc $68EFFC.l,X		; FF FC EF 68
	cmp ($10.b,S),Y		; D3 10
	and [$A0.b],Y		; 37 A0
	sbc $FFDF3F.l,X		; FF 3F DF FF
	sbc [$FF.b],Y		; F7 FF
	inc $FF7D.w,X		; FE 7D FF
	sbc $FF7BFF.l,X		; FF FF 7B FF
	xce		; FB
	cmp $3F20AB.l,X		; DF AB 20 3F
	cld		; D8
	cmp $7DFFFE.l,X		; DF FE FF 7D
	jmp ($FFFC.w,X)		; 7C FC FF
	sei		; 78
	tda		; 7B
	sec		; 38
	tsa		; 3B
	iny		; C8
	rtl		; 6B

	sbc $8FFF0F.l,X		; FF 0F FF 8F
	cmp $CFD7FF.l,X		; DF FF D7 CF
	adc $777F67.l		; 6F 67 7F 77
	tyx		; BB
	ldy $FAFB.w,X		; BC FB FA
	sta [$1F.b],Y		; 97 1F
	eor $0FEFDF.l,X		; 5F DF EF 0F
	sbc $9FFF17.l,X		; FF 17 FF 9F
	sbc $4CFC8F.l,X		; FF 8F FC 4C
	inc $F702.w,X		; FE 02 F7
	.db $30, $5F		; 30 5F
	.db $F0, $EF		; F0 EF
	.db $D0, $DF		; D0 DF
	sed		; F8
	sbc $70FFF8.l,X		; FF F8 FF 70
	sbc $FDFBFF.l,X		; FF FF FB FD
	ora $D0DF30.l,X		; 1F 30 DF D0
	ora $D037C0.l		; 0F C0 37 D0
	sta $7007F8.l,X		; 9F F8 07 70
	phk		; 4B
	sed		; F8
	ora $F8.b,S		; 03 F8
	sed		; F8
	.db $F0, $E7		; F0 E7
	sbc [$F8.b],Y		; F7 F8
	cpx #$E0E0.w		; E0 E0 E0
	iny		; C8
	sec		; 38
	ror $16.b,X		; 76 16
	sbc $33F31F.l,X		; FF 1F F3 33
	sbc $FFE7F5.l,X		; FF F5 E7 FF
	cpx $E0ED.w		; EC ED E0
	.db $F0, $28		; F0 28
	.db $30, $36		; 30 36
	.db $10, $3F		; 10 3F
	.db $10, $33		; 10 33
	brk $FB.b		; 00 FB
	ora $FC08E8.l		; 0F E8 08 FC
	asl $1FF0.w,X		; 1E F0 1F
	.db $F0, $FF		; F0 FF
	rts		; 60

	sbc $E0FFE0.l,X		; FF E0 FF E0
	cmp $FF0DFC.l,X		; DF FC 0D FF
	ora $EF0BEF.l		; 0F EF 0B EF
	ora $CF0FDF.l		; 0F DF 0F CF
	ora $FF1FCF.l,X		; 1F CF 1F FF
	ora $1D80F7.l		; 0F F7 80 1D
	and $EF.b		; 25 EF
	.db $10, $EB		; 10 EB
	asl $A6.b		; 06 A6
	adc ($07.b,X)		; 61 07
	asl $C1.b		; 06 C1
	dec $07.b		; C6 07
	brk $8E.b		; 00 8E
	adc [$E0.b],Y		; 77 E0
	.db $90, $10		; 90 10
	cpx #$FA0C.w		; E0 0C FA
	sbc $6F.b,S		; E3 6F
	ora $0F.b		; 05 0F
	cmp $0F.b,S		; C3 0F
	ora $78F61B.l		; 0F 1B F6 78
	ldy $FF7F.w,X		; BC 7F FF
	sbc $63FFFD.l,X		; FF FD FF 63
	sbc ($00.b,S),Y		; F3 00
	pea $F402.w		; F4 02 F4
	php		; 08
	cpx $7708.w		; EC 08 77
	stz $1D.b		; 64 1D
	.db $10, $EF		; 10 EF
	tsb $7BEB.w		; 0C EB 7B
	stz $FFF8.w,X		; 9E F8 FF
	sed		; F8
	sbc $3FF7F8.l,X		; FF F8 F7 3F
	and $BF8FFF.l,X		; 3F FF 8F BF
	ora [$F7.b]		; 07 F7
	and $7FE7BF.l		; 2F BF E7 7F
	cmp $3F.b,S		; C3 3F
	cpy #$907F.w		; C0 7F 90
	sbc $7F9FFF.l,X		; FF FF 9F 7F
	sta [$EF.b]		; 87 EF
	cmp [$EF.b]		; C7 EF
	cmp [$27.b]		; C7 27
	sta $C3.b,S		; 83 C3
	.db $80, $C0		; 80 C0
	.db $D0, $D0		; D0 D0
	sbc $603F40.l,X		; FF 40 3F 60
	sbc $F0D7B0.l,X		; FF B0 D7 F0
	cmp $7CFF78.l,X		; DF 78 FF 7C
	lda $6FFF7F.l,X		; BF 7F FF 6F
	adc $809F80.l,X		; 7F 80 9F 80
	sta $F0CFF0.l		; 8F F0 CF F0
	ora $803F80.l,X		; 1F 80 3F 80
	adc $C07F80.l,X		; 7F 80 7F C0
	.db $F0, $FF		; F0 FF
	adc ($FF.b,X)		; 61 FF
	cop $71.b		; 02 71
	adc ($A0.b),Y		; 71 A0
	lda [$7F.b]		; A7 7F
	cmp ($07.b,X)		; C1 07
	ora [$09.b],Y		; 17 09
	clc		; 18
	jsl $9FFF0F.l		; 22 0F FF 9F
	rts		; 60

	adc ($4E.b,S),Y		; 73 4E
	sbc ($8F.b),Y		; F1 8F
	cpy #$D8E7.w		; C0 E7 D8
	cmp ($1E.b,X)		; C1 1E
	ora ($22.b,X)		; 01 22
	and $F818.w,X		; 3D 18 F8
	stz $7FFF.w,X		; 9E FF 7F
	adc $5F5FBF.l,X		; 7F BF 5F 5F
	ora $1F3F3F.l,X		; 1F 3F 3F 1F
	ora $F0FFDF.l,X		; 1F DF FF F0
	ora [$F1.b]		; 07 F1
	.db $90, $A0		; 90 A0
	jsr $E000.w		; 20 00 E0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	cpx #$00E0.w		; E0 E0 00
	ora [$00.b]		; 07 00
	asl $DE41.w		; 0E 41 DE
	brk $CF.b		; 00 CF
	cpx #$60CF.w		; E0 CF 60
	cmp $F0EF80.l		; CF 80 EF F0
	cpx $EF.b		; E4 EF
	and $303FB8.l,X		; 3F B8 3F 30
	adc $10FFF1.l,X		; 7F F1 FF 10
	sbc $F05F90.l,X		; FF 90 5F F0
	ora $F00FE1.l,X		; 1F E1 0F F0
	sta [$3F.b]		; 87 3F
	eor $FFDE3F.l		; 4F 3F DE FF
	and $FFAFFF.l		; 2F FF AF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	xce		; FB
	xce		; FB
	adc $3EFEBF.l,X		; 7F BF FE 3E
	and $1FDF2F.l		; 2F 2F DF 1F
	eor $0F1F1F.l,X		; 5F 1F 1F 0F
	asl $040E.w		; 0E 0E 04
	brk $77.b		; 00 77
	pea $0062.w		; F4 62 00
	jmp ($FEAB.w)		; 6C AB FE
	ldy #$FDE5.w		; A0 E5 FD
	cmp #$17B5.w		; C9 B5 17
	stx $CE08.w		; 8E 08 CE
.INDEX 8
	sep #$1D		; E2 1D
	rts		; 60

	inc $7CC3.w,X		; FE C3 7C
	rti		; 40

	adc $E57919.l,X		; 7F 19 79 E5
	eor ($8A.b),Y		; 51 8A
	eor #$20F6.w		; 49 F6 20
	sta $FFFEFF.l,X		; 9F FF FE FF
	inc $F7FF.w,X		; FE FF F7
	ror $7EF5.w,X		; 7E F5 7E
	adc $76.b		; 65 76
	lda $6EFB.w,X		; BD FB 6E
	adc $000060.l,X		; 7F 60 00 00
	ora ($00.b,X)		; 01 00
	ora ($8A.b,X)		; 01 8A
	ora ($88.b,X)		; 01 88
	ora $90.b,S		; 03 90
	phd		; 0B
	adc [$00.b],Y		; 77 00
	ldy #$11.b		; A0 11
	sbc $D76FF7.l,X		; FF F7 6F D7
	sbc ($A6.b)		; F2 A6
	sbc $A7.b,S		; E3 A7
	sbc #$D383.w		; E9 83 D3
	sta $53.b		; 85 53
	sbc $B7.b		; E5 B7
	and $FF40.w,X		; 3D 40 FF
	sty $6F.b,X		; 94 6F
	plp		; 28
	inc $FE25.w		; EE 25 FE
	and $DE.b		; 25 DE
	and ($EE.b),Y		; 31 EE
	sed		; F8
	rol $24.b		; 26 24
	dex		; CA
	pha		; 48
	lda $44FF3C.l,X		; BF 3C FF 44
	sbc $66F744.l,X		; FF 44 F7 66
	cmp [$72.b]		; C7 72
	xba		; EB
	and ($EE.b,S),Y		; 33 EE
	cmp [$F2.b],Y		; D7 F2
	asl $F1.b		; 06 F1
	cop $C1.b		; 02 C1
	phy		; 5A
	lda ($1A.b),Y		; B1 1A
	lda $B91C.w,Y		; B9 1C B9
	plp		; 28
	sta $9D60.w,X		; 9D 60 9D
	ldy #$0D.b		; A0 0D
	eor #$51D4.w		; 49 D4 51
	adc ($E9.b)		; 72 E9
	lsr A		; 4A
	cpx $99.b		; E4 99
	sbc [$F8.b],Y		; F7 F8
	sbc ($E8.b,S),Y		; F3 E8
	inc $FEF3.w,X		; FE F3 FE
	inc $0FD3.w,X		; FE D3 0F
	tda		; 7B
	and $DB.b,X		; 35 DB
	lda [$91.b],Y		; B7 91
	jmp ($1FF8.w,X)		; 7C F8 1F
	bit $731B.w		; 2C 1B 73
	tsb $017E.w		; 0C 7E 01
	ora ($C7.b),Y		; 11 C7
	and ($FD.b,S),Y		; 33 FD
	tyx		; BB
	sbc [$70.b],Y		; F7 70
	sbc ($1B.b),Y		; F1 1B
	txy		; 9B
	stp		; DB
	ora $800D8D.l,X		; 1F 8D 0D 80
	ora ($25.b,X)		; 01 25
	cmp $CF15.w,Y		; D9 15 CF
	ora [$4D.b],Y		; 17 4D
	adc [$8C.b],Y		; 77 8C
	ora $08E4.w,X		; 1D E4 08
	cpx $00.b		; E4 00
	sbc ($01.b)		; F2 01
	inc $9E9E.w,X		; FE 9E 9E
	and $3E3F3E.l,X		; 3F 3E 3F 3E
	lsr $9E5E.w,X		; 5E 5E 9E
	asl $4ECE.w,X		; 1E CE 4E
	cmp [$47.b]		; C7 47
	sbc [$27.b]		; E7 27
	inc $F8.b		; E6 F8
	inc $3EC1.w,X		; FE C1 3E
	brk $1F.b		; 00 1F
	eor ($1F.b,X)		; 41 1F
	sta ($CF.b,X)		; 81 CF
	sta ($E6.b,X)		; 81 E6
	sbc ($C7.b,X)		; E1 C7
	cpx #$E7.b		; E0 E7
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFEBF.l,X		; FF BF FE FF
	inc $FEFF.w,X		; FE FF FE
	inc $DFFF.w,X		; FE FF DF
	sbc $C1FFF9.l,X		; FF F9 FF C1
	sbc $E0FEC0.l,X		; FF C0 FE E0
	inc $FEE0.w,X		; FE E0 FE
	.db $B0, $FE		; B0 FE
	sbc $F8FF.w,Y		; F9 FF F8
	sbc $2FC22E.l,X		; FF 2E C2 2F
	cmp $AD.b,S		; C3 AD
	cpy $83E7.w		; CC E7 83
	lda $88EDCA.l		; AF CA ED 88
	adc $8B.b		; 65 8B
	adc ($88.b),Y		; 71 88
	sta $0C8F0C.l		; 8F 0C 8F 0C
	stx $08.b		; 86 08
	sta $0D8704.l		; 8F 04 87 0D
	sta [$0F.b]		; 87 0F
	sta $0E0E.w		; 8D 0E 0E
	phd		; 0B
	jsr ($FD0F.w,X)		; FC 0F FD
	ora $FF06F1.l		; 0F F1 06 FF
	asl $07F5.w		; 0E F5 07
	sbc $07.b,X		; F5 07
	sbc $06.b,X		; F5 06
	sbc [$05.b],Y		; F7 05
	adc ($7E.b),Y		; 71 7E
	adc ($7E.b),Y		; 71 7E
	ply		; 7A
	adc $7C72.w,X		; 7D 72 7C
	adc $797F.w,Y		; 79 7F 79
	adc $797C78.l,X		; 7F 78 7C 79
	jmp ($10E0.w,X)		; 7C E0 10
	.db $70, $B0		; 70 B0
	rti		; 40

	ldy #$70.b		; A0 70
	.db $10, $F0		; 10 F0
	clc		; 18
	sed		; F8
	php		; 08
	and $FFC1.w,Y		; 39 C1 FF
	cop $1F.b		; 02 1F
	jsr $909F.w		; 20 9F 90
	and $009F20.l,X		; 3F 20 9F 00
	ora $101F00.l,X		; 1F 00 1F 10
	ora $040206.l		; 0F 06 02 04
	.db $F0, $30		; F0 30
	.db $70, $90		; 70 90
	rti		; 40

	.db $B0, $F0		; B0 F0
	.db $80, $F8		; 80 F8
	php		; 08
	sed		; F8
	.db $10, $F7		; 10 F7
	php		; 08
	sbc $CFF006.l,X		; FF 06 F0 CF
	.db $50, $FF		; 50 FF
	.db $50, $EF		; 50 EF
	rts		; 60

	sbc $F0E7E8.l		; EF E8 E7 F0
	sbc [$F8.b],Y		; F7 F8
	.db $F0, $FF		; F0 FF
	sbc $2F30.w,Y		; F9 30 2F
	and ($3F.b,X)		; 21 3F
	.db $F0, $0F		; F0 0F
	adc $4DC7.w,X		; 7D C7 4D
	adc [$DD.b]		; 67 DD
	and $FD.b,S		; 23 FD
	cop $FE.b		; 02 FE
	ora ($E1.b,X)		; 01 E1
	ora ($E1.b,X)		; 01 E1
	brk $60.b		; 00 60
	sbc ($CC.b,X)		; E1 CC
	ora #$38FD.w		; 09 FD 38
	cmp $1ADC.w,X		; DD DC 1A
	txs		; 9A
	and ($32.b)		; 32 32
	rol $3F01.w,X		; 3E 01 3F
	ora ($7E.b,X)		; 01 7E
	cmp ($FE.b,X)		; C1 FE
	bit #$A95F.w		; 89 5F A9
	dec $FFFC.w,X		; DE FC FF
	txs		; 9A
	inc $1E33.w,X		; FE 33 1E
	cmp $5EDE0E.l,X		; DF 0E DE 5E
	lsr $3ABA.w,X		; 5E BA 3A
	txa		; 8A
	rol A		; 2A
	dec $DBDF.w,X		; DE DF DB
	tad		; 5B
	sbc ($F3.b)		; F2 F3
	sta $12.b,S		; 83 12
	cmp [$D8.b]		; C7 D8
	ora [$98.b]		; 07 98
	ora ($0E.b,X)		; 01 0E
	ora ($14.b),Y		; 11 14
	ora ($91.b)		; 12 91
	clv		; B8
	sbc [$B8.b]		; E7 B8
	eor [$85.b]		; 47 85
	sta [$4F.b]		; 87 4F
	cmp [$07.b]		; C7 07
	sta [$80.b]		; 87 80
	.db $82, $01, $99		; 82 01 99
	ora [$17.b],Y		; 17 17
	adc ($6A.b)		; 72 6A
	sei		; 78
	sec		; 38
	sta [$77.b],Y		; 97 77
	cmp $FF9FB7.l,X		; DF B7 9F FF
	sta $0FFD.w,X		; 9D FD 0F
	inc $17.b		; E6 17
	sbc #$66C1.w		; E9 C1 66
	lda $617D60.l,X		; BF 60 7D 61
	adc $67FF67.l,X		; 7F 67 FF 67
	inc $EE60.w,X		; FE 60 EE
	.db $70, $79		; 70 79
	adc $FB51.w,X		; 7D 51 FB
	sbc [$A7.b]		; E7 A7
	sbc $1966C6.l,X		; FF C6 66 19
	rol $D9.b		; 26 D9
	ora $30E0.w		; 0D E0 30
	dec $20.b,X		; D6 20
	cmp $77D612.l		; CF 12 D6 77
	ora ($CE.b,X)		; 01 CE
	ora ($86.b,X)		; 01 86
	stx $860E.w		; 8E 0E 86
	bit $391F.w,X		; 3C 1F 39
	and #$3021.w		; 29 21 30
	adc $FE7761.l,X		; 7F 61 77 FE
	ldx $49.b,Y		; B6 49
	lda [$1F.b]		; A7 1F
	adc $2FDE97.l		; 6F 97 DE 2F
	xce		; FB
	rol $EF.b		; 26 EF
	rol $4ABD.w		; 2E BD 4A
	sbc $307830.l,X		; FF 30 78 30
	adc [$76.b]		; 67 76
	adc $CCED6E.l		; 6F 6E ED CC
.ACCU 8
	sep #$E1		; E2 E1
	sbc [$E1.b],Y		; F7 E1
	.db $82, $C1, $30		; 82 C1 30
	.db $30, $47		; 30 47
	pld		; 2B
	txy		; 9B
	lda ($BF.b,S),Y		; B3 BF
	sbc $FF9F7F.l,X		; FF 7F 9F FF
	and $C000F1.l,X		; 3F F1 00 C0
	stx $7F.b		; 86 7F
	rts		; 60

	and [$B4.b],Y		; 37 B4
	cmp ($A0.b,S),Y		; D3 A0
	lda $20BF80.l,X		; BF 80 BF 20
	sbc $E02E00.l,X		; FF 00 2E E0
	cpx #$6E.b		; E0 6E
	cpx #$80.b		; E0 80
	cmp $FF7737.l,X		; DF 37 77 FF
	eor $3FBFBF.l,X		; 5F BF BF 3F
	adc $7F605F.l,X		; 7F 5F 60 7F
	cmp $FF71.w,Y		; D9 71 FF
	ora $207754.l,X		; 1F 54 77 20
	cmp [$20.b],Y		; D7 20
	cmp $80FFE0.l,X		; DF E0 FF 80
	cmp $5FA06E.l,X		; DF 6E A0 5F
	rti		; 40

	and $F8FF00.l,X		; 3F 00 FF F8
	tda		; 7B
	sed		; F8
	xce		; FB
	jsr ($D0DF.w,X)		; FC DF D0
	sbc [$E8.b],Y		; F7 E8
	cmp $00FFC0.l,X		; DF C0 FF 00
	xce		; FB
	ora ($FC.b,X)		; 01 FC
	tsb $7C.b		; 04 7C
	sty $F8.b		; 84 F8
	tsb $28F8.w		; 0C F8 28
	sed		; F8
	cli		; 58
	cpy #$20.b		; C0 20
	brk $01.b		; 00 01
	cop $06.b		; 02 06
	sbc $7F7BFF.l,X		; FF FF 7B 7F
	xce		; FB
	xce		; FB
	sbc $DFFFEF.l,X		; FF EF FF DF
	sbc $FEFE3F.l,X		; FF 3F FE FE
	inc $07FF.w,X		; FE FF 07
	jsr ($F883.w,X)		; FC 83 F8
	ora $E82FF8.l		; 0F F8 2F E8
	eor [$D0.b],Y		; 57 D0
	ora $00FF00.l,X		; 1F 00 FF 00
	plx		; FA
	cop $F2.b		; 02 F2
	cop $F0.b		; 02 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	phd		; 0B
	sed		; F8
	phd		; 0B
	sbc $7C02.w,Y		; F9 02 7C
	brk $FF.b		; 00 FF
	rti		; 40

	ora ($10.b)		; 12 10
	brk $0F.b		; 00 0F
	php		; 08
	ora [$03.b]		; 07 03
	ora [$0B.b]		; 07 0B
	ora [$01.b]		; 07 01
	cop $00.b		; 02 00
	ora ($80.b,X)		; 01 80
	cpy #$F0.b		; C0 F0
	sbc $F0F0F0.l,X		; FF F0 F0 F0
	sed		; F8
	sbc ($F8.b,S),Y		; F3 F8
	xce		; FB
	pea $FBF8.w		; F4 F8 FB
	sbc $BFBFFF.l,X		; FF FF BF BF
	sbc $0FFF1F.l,X		; FF 1F FF 0F
	sbc [$0F.b],Y		; F7 0F
	pea $FC07.w		; F4 07 FC
	ora $FC.b,S		; 03 FC
	ora $FE.b,S		; 03 FE
	brk $FF.b		; 00 FF
	.db $80, $03		; 80 03
	tsb $07.b		; 04 07
	php		; 08
	ora [$18.b],Y		; 17 18
	and $C3.b,X		; 35 C3
	sbc $1C.b,S		; E3 1C
	adc $64AB82.l,X		; 7F 82 AB 64
	sbc $3F0700.l,X		; FF 00 07 3F
	ora [$FF.b]		; 07 FF
	ora $F1F0FF.l		; 0F FF F0 F1
.ACCU 8
	sep #$E2		; E2 E2
	jsr ($B8FE.w,X)		; FC FE B8
	stz $0000.w		; 9C 00 00
	tsb $C0.b		; 04 C0
	brk $08.b		; 00 08
	php		; 08
	brk $C0.b		; 00 C0
	ora ($01.b,X)		; 01 01
	ora ($83.b,X)		; 01 83
	ora $EB.b,S		; 03 EB
	stp		; DB
	sbc $FFF8FF.l,X		; FF FF F8 FF
	.db $F0, $FF		; F0 FF
	cpx #$FF.b		; E0 FF
	brk $FE.b		; 00 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FC.b,X)		; 01 FC
	lda $00FF88.l		; AF 88 FF 00
	adc $813E80.l,X		; 7F 80 3E 81
	adc $807F80.l,X		; 7F 80 7F 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	cpy #$C0.b		; C0 C0
	cpy #$80.b		; C0 80
	cpy #$C0.b		; C0 C0
	sta ($81.b,X)		; 81 81
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	jsr ($FC7C.w,X)		; FC 7C FC
	jsr ($FEFE.w,X)		; FC FE FE
	inc $FFFE.w,X		; FE FE FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	cpy #$3F.b		; C0 3F
	.db $80, $7C		; 80 7C
	cmp $7C.b,S		; C3 7C
	ora $FE.b,S		; 03 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $0E.b		; 00 0E
	and #$14.b		; 29 14
	sbc $C0.b,S		; E3 C0
	trb $00.b		; 14 00
	phk		; 4B
	ora $0B.b		; 05 0B
	ora ($04.b),Y		; 11 04
	bit #$1C.b		; 89 1C
	cmp ($98.b,X)		; C1 98
	tay		; A8
	lda #$E3.b		; A9 E3
	sbc $56.b,S		; E3 56
	sbc [$4B.b],Y		; F7 4B
	ldy $08.b,X		; B4 08
	inc $0A.b,X		; F6 0A
	sed		; F8
	sta ($E0.b)		; 92 E0
	lsr $F4.b,X		; 56 F4
	asl $FFB8.w,X		; 1E B8 FF
	sed		; F8
	eor $D3.b,X		; 55 D3
	eor $0D0C4F.l		; 4F 4F 0C 0D
	inc A		; 1A
	asl $969E.w,X		; 1E 9E 96
	stp		; DB
	dec $41BE.w,X		; DE BE 41
	asl $CE01.w,X		; 1E 01 CE
	jsl $08F848.l		; 22 48 F8 08
	xce		; FB
	ora #$E7.b		; 09 E7
	bit #$6F.b		; 89 6F
	cmp ($2F.b),Y		; D1 2F
.ACCU 16
.INDEX 16
	rep #$34		; C2 34
	and ($DF.b)		; 32 DF
	sei		; 78
	ora [$50.b]		; 07 50
	cmp $987F10.l		; CF 10 7F 98
	rtl		; 6B

	sed		; F8
	ora $07.b,S		; 03 07
	sed		; F8
	and $6CCB.w,X		; 3D CB 6C
	.db $F0, $40		; F0 40
	sei		; 78
	cpy #$9030.w		; C0 30 90
	cpy #$140C.w		; C0 0C 14
	php		; 08
	bit $0000.w,X		; 3C 00 00
	adc ($FB.b,S),Y		; 73 FB
	and $7077FC.l,X		; 3F FC 77 70
	sta $40AFB0.l		; 8F B0 AF 40
	lda [$1C.b],Y		; B7 1C
	stp		; DB
	bit $00F4.w,X		; 3C F4 00
	sta $6308.w		; 8D 08 63
	lda $87.b,S		; A3 87
	ora $6F0F7F.l		; 0F 7F 0F 6F
	lda $C7E3EF.l,X		; BF EF E3 C7
	xba		; EB
	sbc $F38DFF.l,X		; FF FF 8D F3
	asl $F1.b		; 06 F1
	adc [$88.b]		; 67 88
	rol $3EC8.w,X		; 3E C8 3E
	cpx #$E11C.w		; E0 1C E1
	ror A		; 6A
	sta $5C03.w		; 8D 03 5C
	ora ($1A.b,X)		; 01 1A
	ora #$0808.w		; 09 08 08
	.db $30, $01		; 30 01
	.db $30, $21		; 30 21
	.db $10, $03		; 10 03
	asl $16.b		; 06 16
	ora $BC.b		; 05 BC
	and $FF1BE4.l		; 2F E4 1B FF
	ora ($E8.b,X)		; 01 E8
	sec		; 38
	sbc $C931.w,Y		; F9 31 C9
	and ($E5.b),Y		; 31 E5
	asl $FE.b		; 06 FE
	ora $DC.b,X		; 15 DC
	sbc $E4FF.w,X		; FD FF E4
	inc $FE.b,X		; F6 FE
	cmp [$C7.b],Y		; D7 C7
	dec $CF.b		; C6 CF
	inc $FADF.w		; EE DF FA
	sbc $FBE4.w,Y		; F9 E4 FB
	ora $890FE2.l		; 0F E2 0F 89
	ora $080F8E.l		; 0F 8E 0F 08
	ora $48CF98.l,X		; 1F 98 CF 48
	ora $400F80.l		; 0F 80 0F 40
	rol $89E1.w,X		; 3E E1 89
	asl $8F.b		; 06 8F
	brk $0A.b		; 00 0A
	asl $9F.b		; 06 9F
	ora [$4F.b]		; 07 4F
	sta [$0F.b]		; 87 0F
	eor $F58FCF.l		; 4F CF 8F F5
	ora $06.b		; 05 06
	inc $00.b,X		; F6 00
	sbc ($07.b),Y		; F1 07
	inc $87.b,X		; F6 87
	sbc [$8F.b]		; E7 8F
	sbc $4FFFCF.l,X		; FF CF FF 4F
	sbc $06F4CE.l,X		; FF CE F4 06
	sbc $FE01.w,Y		; F9 01 FE
	asl $FA.b		; 06 FA
	ora [$7F.b]		; 07 7F
	ora [$77.b]		; 07 77
	ora $BF0FBF.l		; 0F BF 0F BF
	trb $25.b		; 14 25
	inc $73FF.w,X		; FE FF 73
	stx $00FD.w		; 8E FD 00
	inc $FE00.w,X		; FE 00 FE
	trb $D6.b		; 14 D6
	jsr $60F5.w		; 20 F5 60
	sbc $FEE1.w,Y		; F9 E1 FE
	ora ($32.b,X)		; 01 32
	lda $9F9C.w,X		; BD 9C 9F
	ora $8A8B1F.l,X		; 1F 1F 8B 8A
	and #$8B09.w		; 29 09 8B
	nop		; EA
	stx $E6.b		; 86 E6
	ora ($61.b,X)		; 01 61
	stz $BC.b,X		; 74 BC
	jsr ($FF9E.w,X)		; FC 9E FF
	ora $BF9FFF.l,X		; 1F FF 9F BF
	ror $FD9C.w,X		; 7E 9C FD
	sta $617D.w,X		; 9D 7D 61
	stz $B3B4.w,X		; 9E B4 B3
	stz $1F9D.w,X		; 9E 9D 1F
	asl $9E9E.w,X		; 1E 9E 9E
	jsr $831E.w		; 20 1E 83
	inc $FF02.w,X		; FE 02 FF
	eor [$17.b],Y		; 57 17
	adc ($33.b,S),Y		; 73 33
	sbc #$F949.w		; E9 49 F9
	ora $09A9.w,Y		; 19 A9 09
	sbc $DD09.w,Y		; F9 09 DD
	ora $B0D8.w		; 0D D8 B0
	eor [$50.b]		; 47 50
	sbc $D0.b,S		; E3 D0
	eor ($A8.b,X)		; 41 A8
	and ($E8.b),Y		; 31 E8
	adc ($E8.b,X)		; 61 E8
	and $31F4.w,X		; 3D F4 31
	jmp.w [$68A8]		; DC A8 68
	adc $FFEF7F.l		; 6F 7F EF FF
	and [$7F.b],Y		; 37 7F
	and [$3F.b],Y		; 37 3F
	adc [$7F.b],Y		; 77 7F
	and $3F333F.l,X		; 3F 3F 33 3F
	and $7FF8BF.l,X		; 3F BF F8 7F
	jmp.w [$7E7F]		; DC 7F 7E
	lda $7EFF2E.l,X		; BF 2E FF 7E
	lda $1EFF36.l,X		; BF 36 FF 1E
	cmp $BC5FBF.l,X		; DF BF 5F BC
	eor [$BC.b]		; 47 BC
	cmp $BE.b,S		; C3 BE
	sbc ($DF.b,X)		; E1 DF
	.db $F0, $CC		; F0 CC
	cmp [$FD.b],Y		; D7 FD
	jsr ($FDFD.w,X)		; FC FD FD
	inc $44FE.w,X		; FE FE 44
	.db $80, $C0		; 80 C0
	brk $E0.b		; 00 E0
	.db $10, $B0		; 10 B0
	rti		; 40

	jsr ($FB0A.w,X)		; FC 0A FB
	ora [$FF.b]		; 07 FF
	brk $FF.b		; 00 FF
	ora ($B3.b,X)		; 01 B3
	cpy $FF.b		; C4 FF
	.db $80, $FF		; 80 FF
	.db $90, $BF		; 90 BF
	cpy #$E7DE.w		; C0 DE E7
	xce		; FB
	sbc $FEFD.w,X		; FD FD FE
	sbc $BBFFFE.l,X		; FF FE FF BB
	and $8F1FBF.l,X		; 3F BF 1F 8F
	eor $C126CF.l		; 4F CF 26 C1
	ora $FD.b		; 05 FD
	cop $FC.b		; 02 FC
	brk $FE.b		; 00 FE
	cmp $FC0330.l		; CF 30 03 FC
	cmp $00FF30.l		; CF 30 FF 00
	sbc $003F00.l,X		; FF 00 3F 00
	ora $200F00.l,X		; 1F 00 0F 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$FF20.w		; A0 20 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	.db $80, $FF		; 80 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	ora ($DF.b,X)		; 01 DF
	.db $10, $FF		; 10 FF
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	rti		; 40

	sbc $00BF40.l,X		; FF 40 BF 00
	sbc $262710.l,X		; FF 10 27 26
	ora $67672F.l		; 0F 2F 67 67
	adc [$67.b]		; 67 67
	eor $03.b,S		; 43 03
	phk		; 4B
	phd		; 0B
	adc $38286F.l		; 6F 6F 28 38
	sbc $3FDF26.l,X		; FF 26 DF 3F
	sbc $67BF67.l,X		; FF 67 BF 67
	lda $4BBF43.l,X		; BF 43 BF 4B
	lda $38FF6F.l,X		; BF 6F FF 38
	inc $E6.b		; E6 E6
	cmp $E7A7DF.l,X		; DF DF A7 E7
	lda [$E7.b]		; A7 E7
	sta $C3.b,S		; 83 C3
	phb		; 8B
	wai		; CB
	lda $E8E8EF.l		; AF EF E8 E8
	clc		; 18
	sbc [$F8.b]		; E7 F8
	ora [$E4.b]		; 07 E4
	ora $E4.b,S		; 03 E4
	ora $E4.b,S		; 03 E4
	ora $E2.b,S		; 03 E2
	ora #$0CE1.w		; 09 E1 0C
	jsr ($4000.w,X)		; FC 00 40
	.db $80, $E0		; 80 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$A8A8.w		; E0 A8 A8
	cpx $B7EC.w		; EC EC B7
	ldy $3F.b,X		; B4 3F
	cpy #$E0FF.w		; C0 FF E0
	sbc $E0FFE0.l,X		; FF E0 FF E0
	sbc $A0F7E0.l,X		; FF E0 F7 A0
	sbc ($E0.b,S),Y		; F3 E0
	sbc $3F5FB7.l,X		; FF B7 5F 3F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFBF.l,X		; BF BF FF FF
	clv		; B8
	lda $79FE01.l,X		; BF 01 FE 79
	inc $FEFD.w,X		; FE FD FE
	inc $FEFF.w,X		; FE FF FE
	sbc $10FE79.l,X		; FF 79 FE 10
	inc $8351.w,X		; FE 51 83
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $82, $83, $FF		; 82 83 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3C.b		; 00 3C
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $3FFFFF.l,X		; FF FF FF 3F
	jsr $308F.w		; 20 8F 30
	lda $009F10.l,X		; BF 10 9F 00
	asl A		; 0A
	ora ($5E.b),Y		; 11 5E
	and ($5C.b),Y		; 31 5C
	.db $90, $BB		; 90 BB
	and $E0.b,S		; 23 E0
	rti		; 40

	.db $50, $10		; 50 10
	cli		; 58
	brk $58.b		; 00 58
	clc		; 18
	sei		; 78
	php		; 08
	phk		; 4B
	eor $CEEFEF.l		; 4F EF EF CE
	jsr ($9FFF.w,X)		; FC FF 9F
	cmp $4FFF7F.l,X		; DF 7F FF 4F
	sbc $7FEF5F.l,X		; FF 5F EF 7F
	xce		; FB
	pla		; 68
	eor $8C6B.w,X		; 5D 6B 8C
	stp		; DB
	ora $C08F80.l,X		; 1F 80 8F C0
	lda [$E0.b]		; A7 E0
	lda $E89EF8.l,X		; BF F8 9E E8
	sty $89F8.w		; 8C F8 89
	sed		; F8
	rol A		; 2A
	sbc $0DFD.w		; ED FD 0D
	sbc #$9111.w		; E9 11 91
	eor $F1E1.w,Y		; 59 E1 F1
	sta ($B1.b,X)		; 81 B1
	rti		; 40

	eor ($01.b,X)		; 41 01
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora $C10B09.l		; 0F 09 0B C1
	adc #$3111.w		; 69 11 31
	ora ($11.b,X)		; 01 11
	ldy #$0141.w		; A0 41 01
	cop $00.b		; 02 00
	sta $F4.b,S		; 83 F4
	sbc $F8.b,X		; F5 F8
	sbc $C8.b,X		; F5 C8
	lda $00EF30.l,X		; BF 30 EF 00
	sbc $00FFC0.l,X		; FF C0 FF 00
	sbc $FC00.w,X		; FD 00 FC
	plx		; FA
	ora $F6.b,S		; 03 F6
	ora [$2E.b]		; 07 2E
	ora [$0E.b]		; 07 0E
	eor $1ECF5E.l		; 4F 5E CF 1E
	and $FEFFFE.l,X		; 3F FE FF FE
	adc $3F2877.l,X		; 7F 77 28 3F
	.db $80, $F0		; 80 F0
	eor $E05FA0.l		; 4F A0 5F E0
	ora $80BFC0.l,X		; 1F C0 BF 80
	lda $407F80.l,X		; BF 80 7F 40
	cpy #$A060.w		; C0 60 A0
	cpx #$A020.w		; E0 20 A0
	rts		; 60

	cpx #$C060.w		; E0 60 C0
	cpy #$C000.w		; C0 00 C0
	.db $80, $80		; 80 80
	eor $FF7F7F.l,X		; 5F 7F 7F FF
	and $FF3FFF.l,X		; 3F FF 3F FF
	adc $FF7FFF.l,X		; 7F FF 7F FF
	adc $FFFF7F.l,X		; 7F 7F FF FF
	cmp $A03FC0.l,X		; DF C0 3F A0
	adc $A03FA0.l,X		; 7F A0 3F A0
	adc $C07FE0.l,X		; 7F E0 7F C0
	and $80FF80.l,X		; 3F 80 FF 80
	sbc $00FF00.l,X		; FF 00 FF 00
	ror $A281.w,X		; 7E 81 A2
	eor ($04.b),Y		; 51 04
	sbc $2DDF.w,Y		; F9 DF 2D
	cmp [$76.b]		; C7 76
	and $EB.b,S		; 23 EB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $10		; 10 10
	asl $3E.b		; 06 3E
	ror $FF72.w,X		; 7E 72 FF
	lda $4457.w,Y		; B9 57 44
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7F7FF.l,X		; FF FF F7 F7
	cmp $D3DF.w,X		; DD DF D3
	ldx $BF81.w,Y		; BE 81 BF
	.db $B0, $47		; B0 47
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00EF00.l,X		; FF 00 EF 00
	sbc $8104.w,X		; FD 04 81
	and $387F00.l,X		; 3F 00 7F 38
	sbc $FD02FD.l,X		; FF FD 02 FD
	cop $ED.b		; 02 ED
	ora ($29.b),Y		; 11 29
	cmp $DF.b,X		; D5 DF
	rol $43.b		; 26 43
	rol $1CC0.w,X		; 3E C0 1C
	sbc ($E8.b)		; F2 E8
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $0B.b		; 00 0B
	asl A		; 0A
	asl $C041.w		; 0E 41 C0
	ora $42.b,S		; 03 42
	cmp $15.b,S		; C3 15
	inc $FFFF.w,X		; FE FF FF
	sbc $F7FFFE.l,X		; FF FE FF F7
	sbc $FF.b,X		; F5 FF
	xce		; FB
	adc $3EFF.w,X		; 7D FF 3E
	and $FF1D.w,X		; 3D 1D FF
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $F9.b		; 00 F9
	ora ($F3.b,X)		; 01 F3
	ora [$FC.b]		; 07 FC
	eor ($BD.b,X)		; 41 BD
	cpy #$E10B.w		; C0 0B E1
	cmp ($88.b,X)		; C1 88
	pea $F4EF.w		; F4 EF F4
	sbc $5AE370.l		; EF 70 E3 5A
	adc [$10.b],Y		; 77 10
	rol $7D42.w,X		; 3E 42 7D
	mvp $56,$EE		; 44 EE 56
	pea $F80C.w		; F4 0C F8
	tsb $F1.b		; 04 F1
	dey		; 88
	adc $DDE7.w,Y		; 79 E7 DD
	sbc #$FDD4.w		; E9 D4 FD
	sbc $9B.b,S		; E3 9B
	adc $DB.b,X		; 75 DB
	dec $FF60.w		; CE 60 FF
	and ($F7.b,S),Y		; 33 F7
	txy		; 9B
	sbc [$F8.b],Y		; F7 F8
	sbc $FEFDED.l,X		; FF ED FD FE
	sbc $C1FFBF.l,X		; FF BF FF C1
	and $E90FF0.l,X		; 3F F0 0F E9
	asl $8EE1.w		; 0E E1 8E
	.db $30, $27		; 30 27
	rol $1C2B.w,X		; 3E 2B 1C
	ora $0A4F.w,X		; 1D 4F 0A
	ora $91F0.w		; 0D F0 91
	bit #$4E0F.w		; 89 0F 4E
	ora $7088F4.l		; 0F F4 88 70
	cop $EC.b		; 02 EC
	clc		; 18
	ror $12.b,X		; 76 12
	and ($03.b,X)		; 21 03
	ora ($76.b,X)		; 01 76
	trb $3C.b		; 14 3C
	lda ($C1.b),Y		; B1 C1
	.db $42, $73		; 42 73
	sty $3EFD.w		; 8C FD 3E
	cmp $BF2B.w		; CD 2B BF
	eor ($EB.b,X)		; 41 EB
	ora $FB.b,S		; 03 FB
	ror $FD42.w,X		; 7E 42 FD
	lda $FFF8F3.l,X		; BF F3 F8 FF
	inc $DCFF.w		; EE FF DC
	cmp [$B3.b],Y		; D7 B3
	sbc $01FFFC.l,X		; FF FC FF 01
	sbc $0C7E83.l,X		; FF 83 7E 0C
	jmp ($0007.w,X)		; 7C 07 00
	ora $AC0002.l,X		; 1F 02 00 AC
	eor ($8D.b,X)		; 41 8D
	sei		; 78
	ora $3F94.w		; 0D 94 3F
	sta $3F.b,X		; 95 3F
	cpx $75.b		; E4 75
	and [$7F.b]		; 27 7F
	.db $50, $1F		; 50 1F
	cld		; D8
	sec		; 38
	ldx $C6.b,Y		; B6 C6
	bit #$7F17.w		; 89 17 7F
	cpx $6CFE.w		; EC FE 6C
	and $27D89E.l,X		; 3F 9E D8 27
	cmp $9FF810.l,X		; DF 10 F8 9F
	inc $B9C7.w		; EE C7 B9
	sta ($9B.b),Y		; 91 9B
	sbc $D9EF93.l		; EF 93 EF D9
	sbc $50FF40.l,X		; FF 40 FF 50
	sbc $F1E067.l		; EF 67 E0 F1
	cpx #$EE62.w		; E0 62 EE
	php		; 08
	asl $08.b,X		; 16 08
	asl $AA.b,X		; 16 AA
	sty $80.b		; 84 80
	and $003F80.l,X		; 3F 80 3F 00
	ora $EEDFC0.l,X		; 1F C0 DF EE
	adc ($FC.b,X)		; 61 FC
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	inc $E1.b		; E6 E1
	inc $DBC1.w		; EE C1 DB
	cmp ($C0.b),Y		; D1 C0
	adc [$09.b]		; 67 09
	adc $876701.l,X		; 7F 01 67 87
	lda $10F718.l,X		; BF 18 F7 10
	sbc $08DE18.l,X		; FF 18 DE 08
	ora $8A06C1.l		; 0F C1 06 8A
	asl $9E8E.w		; 0E 8E 9E
	inc $5A.b,X		; F6 5A
	inc $FE16.w,X		; FE 16 FE
	asl $E7.b,X		; 16 E7
	ora $F3.b,S		; 03 F3
	ora ($E3.b),Y		; 11 E3
	sbc $1F.b,S		; E3 1F
	sbc $27C60F.l,X		; FF 0F C6 27
	asl $16F9.w,X		; 1E F9 16
	sbc ($07.b),Y		; F1 07
	inx		; E8
	ora ($ED.b,S),Y		; 13 ED
	ora $FD.b,S		; 03 FD
	ora $FF0FFB.l		; 0F FB 0F FF
	sbc $7FEB.w,X		; FD EB 7F
	.db $80, $7F		; 80 7F
	brk $FF.b		; 00 FF
	rti		; 40

	cpx $F630.w		; EC 30 F6
	.db $10, $9E		; 10 9E
	cmp $4E8D.w,X		; DD 8D 4E
	.db $82, $E8, $EF		; 82 E8 EF
	sbc $A70F8F.l		; EF 8F 0F A7
	lda [$93.b]		; A7 93
	sta $A9.b,S		; 83 A9
	lda $1C70.w,Y		; B9 70 1C
	xba		; EB
	sta $7B95.w,X		; 9D 95 7B
	adc $0F7F6F.l,X		; 7F 6F 7F 0F
	sbc $BCFCE7.l,X		; FF E7 FC BC
	inc $D2BE.w		; EE BE D2
	cmp $00C7DB.l		; CF DB C7 00
	sbc $0FEF6F.l,X		; FF 6F EF 0F
	sta $B3E7E7.l		; 8F E7 E7 B3
	lda $C0BFA1.l		; AF A1 BF C0
	ldx $BDC3.w,Y		; BE C3 BD
	jmp.w [$AE34]		; DC 34 AE
	ror $DA.b		; 66 DA
	ror $B1.b		; 66 B1
	eor $0BDB.w		; 4D DB 0B
	sbc $FB09.w,Y		; F9 09 FB
	phd		; 0B
	sbc $782C4F.l,X		; FF 4F 2C 78
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
	dec $F0.b,X		; D6 F0
	sbc $DBF0.w,Y		; F9 F0 DB
	.db $F0, $D9		; F0 D9
	.db $D0, $FB		; D0 FB
	.db $F0, $FF		; F0 FF
	.db $F0, $BF		; F0 BF
	lda $DFF7EB.l,X		; BF EB F7 DF
	sbc ($FF.b,S),Y		; F3 FF
	sbc ($FF.b,S),Y		; F3 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $2BDFBF.l,X		; FF BF DF 2B
	eor $F187F5.l		; 4F F5 87 F1
	sta ($F2.b,S),Y		; 93 F2
	lda ($D4.b,S),Y		; B3 D4
	cmp $F4DFD6.l,X		; DF D6 DF F4
	and $FF1FD0.l,X		; 3F D0 1F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFE.l,X		; FF FE FE FF
	jsr ($F8FB.w,X)		; FC FB F8
	sbc $F7EFF3.l,X		; FF F3 EF F7
	sbc $00FF01.l,X		; FF 01 FF 00
	sbc $01FF00.l,X		; FF 00 FF 01
	sbc $03FB03.l,X		; FF 03 FB 03
	sbc $0BFB0F.l,X		; FF 0F FB 0B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	ora $FF.b,S		; 03 FF
	ora [$FF.b]		; 07 FF
	tsb $08FC.w		; 0C FC 08
	inx		; E8
	eor [$A0.b]		; 47 A0
	lda $50.b,S		; A3 50
	dex		; CA
	rts		; 60

	adc ($81.b,X)		; 61 81
	cmp $F0F4.w,Y		; D9 F4 F0
	sbc $E8F1.w		; ED F1 E8
	sbc ($EA.b),Y		; F1 EA
	ldy #$20.b		; A0 20
	.db $90, $90		; 90 90
	.db $D0, $80		; D0 80
	sei		; 78
	cpx #$DD.b		; E0 DD
	sbc $FDF4.w		; ED F4 FD
	sbc $F1.b,X		; F5 F1
	sbc [$F3.b],Y		; F7 F3
	eor $C0AF80.l,X		; 5F 80 AF C0
	sbc [$90.b],Y		; F7 90
	sbc $E9FB78.l,X		; FF 78 FB E9
	sbc ($F9.b)		; F2 F9
	sbc $F5FDF5.l,X		; FF F5 FD F5
	sbc $BFBF7F.l,X		; FF 7F BF BF
	sta $7F66BF.l		; 8F BF 66 7F
	ora $17170F.l		; 0F 0F 17 17
	ora ($1F.b,S),Y		; 13 1F
	ora ($1F.b,S),Y		; 13 1F
	sbc $A8D740.l		; EF 40 D7 A8
	sbc [$18.b]		; E7 18
	sbc $30B350.l,X		; FF 50 B3 30
	xce		; FB
	pla		; 68
	sed		; F8
	sei		; 78
	sbc ($75.b,S),Y		; F3 75
	clc		; 18
	php		; 08
	pei ($6C.b)		; D4 6C
	jsr ($AFEC.w,X)		; FC EC AF
	sbc $CFA39F.l		; EF 9F A3 CF
	plb		; AB
	adc $897B84.l,X		; 7F 84 7B 89
	sbc $EC6738.l		; EF 38 67 EC
	sbc $97EFCC.l,X		; FF CC EF 97
	cmp ($EF.b,S),Y		; D3 EF
	cmp $FF.b,S		; C3 FF
	jsr ($F8F3.w,X)		; FC F3 F8
	sbc $88.b,X		; F5 88
	cld		; D8
	jsr ($DC54.w,X)		; FC 54 DC
	pei ($87.b)		; D4 87
	sta $A3EFE3.l,X		; 9F E3 EF A3
	sbc $82F780.l		; EF 80 F7 82
	sbc ($F3.b,S),Y		; F3 F3
	ora $00FF.w		; 0D FF 00
	plx		; FA
	tsb $FC.b		; 04 FC
	brk $FF.b		; 00 FF
	jsr $00FF.w		; 20 FF 00
	adc $C8DFF0.l,X		; 7F F0 DF C8
	ora ($13.b)		; 12 13
	adc $5879.w,Y		; 79 79 58
	jmp $9F0E0F.l		; 5C 0F 0E 9F
	sta $7F9F9F.l,X		; 9F 9F 9F 7F
	ora [$1F.b]		; 07 1F
	sta [$FE.b],Y		; 97 FE
	asl $FB.b,X		; 16 FB
	adc $5CFB.w,Y		; 79 FB 5C
	sbc $BFFF0D.l,X		; FF 0D FF BF
	sbc $FF079F.l,X		; FF 9F 07 FF
	eor [$7F.b],Y		; 57 7F
	ora ($1F.b),Y		; 11 1F
	ror $5B7F.w,X		; 7E 7F 5B
	tad		; 5B
	tsb $BF0D.w		; 0C 0D BF
	lda $0F9F9F.l,X		; BF 9F 9F 0F
	adc [$47.b],Y		; 77 47
	sbc $3EFC01.l,X		; FF 01 FC 3E
	rti		; 40

	sta ($81.b,X)		; 81 81
	and $41827F.l,X		; 3F 7F 82 41
	cmp #$77.b		; C9 77
	sbc $01DE40.l,X		; FF 40 DE 01
	sbc $BFBFFD.l,X		; FF FD BF BF
	sbc $003F7E.l,X		; FF 7E 3F 00
	cpy #$81.b		; C0 81
	cmp $A8.b,X		; D5 A8
	sbc $FEFFBF.l,X		; FF BF FF FE
	ora $03.b,S		; 03 03
	ror $00FF.w,X		; 7E FF 00
	sbc $BE7FC0.l,X		; FF C0 7F BE
	cmp ($C9.b,X)		; C1 C9
	ldx $BFFF.w,Y		; BE FF BF
	sbc $FFFCDE.l,X		; FF DE FC FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	.db $80, $FF		; 80 FF
	inc $9CBE.w,X		; FE BE 9C
	.db $80, $BF		; 80 BF
	lda $B7DEDE.l,X		; BF DE DE B7
	ora $B0D8.w		; 0D D8 B0
	cld		; D8
	sty $B8.b		; 84 B8
	tsb $F8.b		; 04 F8
	php		; 08
	cpx $EA1C.w		; EC 1C EA
	inx		; E8
	ror $DF7E.w,X		; 7E 7E DF
	pei ($BC.b)		; D4 BC
	plp		; 28
	clv		; B8
	trb $387C.w		; 1C 7C 38
	jsr ($F4F4.w,X)		; FC F4 F4
	inx		; E8
	inc $08.b		; E6 08
	pea $B48C.w		; F4 8C B4
	cmp $AF58.w,Y		; D9 58 AF
	jmp ($78BB.w,X)		; 7C BB 78
	adc $F4F3FC.l,X		; 7F FC F3 F4
	xba		; EB
	.db $F0, $7D		; F0 7D
	pea $3FFF.w		; F4 FF 3F
	inc $4B.b,X		; F6 4B
	xba		; EB
	tad		; 5B
	stp		; DB
	lda $F3F3BB.l,X		; BF BB F3 F3
	xba		; EB
	xba		; EB
	ora $FF8D7B.l,X		; 1F 7B 8D FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0220.w		; 20 20 02
	ora ($03.b,X)		; 01 03
	cop $11.b		; 02 11
	ora ($10.b),Y		; 11 10
	.db $10, $00		; 10 00
	brk $01.b		; 00 01
	asl $00.b		; 06 00
	ora [$20.b]		; 07 20
	ora $02.b		; 05 02
	asl $01.b		; 06 01
	ora ($11.b,X)		; 01 11
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	sbc $F801.w,Y		; F9 01 F8
	ora ($FB.b,X)		; 01 FB
	ora $F9.b,S		; 03 F9
	ora ($FF.b,X)		; 01 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	inc $FEFE.w,X		; FE FE FE
	inc $FEFE.w,X		; FE FE FE
	sbc $FDFE.w,X		; FD FE FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $80FFFF.l,X		; FF FF FF 80
	adc $01FE00.l,X		; 7F 00 FE 01
	inc $FF00.w,X		; FE 00 FF
	sbc ($8E.b,X)		; E1 8E
	and ($0F.b),Y		; 31 0F
	.db $10, $07		; 10 07
	pha		; 48
	eor [$80.b],Y		; 57 80
	.db $80, $01		; 80 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora ($61.b,X)		; 01 61
	sbc ($30.b,X)		; E1 30
	adc ($00.b),Y		; 71 00
	cpy #$40.b		; C0 40
	sed		; F8
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	adc $FF3FFF.l,X		; 7F FF 3F FF
	ora $57173F.l,X		; 1F 3F 17 57
	sbc $00FE80.l,X		; FF 80 FE 00
	sbc $01FF01.l,X		; FF 01 FF 01
	adc $B0FE61.l,X		; 7F 61 FE B0
	sbc $E0BFE0.l		; EF E0 BF E0
	adc $2989.w,X		; 7D 89 29
	stp		; DB
	plp		; 28
	cmp $2C.b,X		; D5 2C
	sbc [$76.b],Y		; F7 76
	cmp $7F78.w,X		; DD 78 7F
	and $22CF.w,Y		; 39 CF 22
	sbc $0637.w		; ED 37 06
	and $2B08.w,X		; 3D 08 2B
	asl $3A69.w,X		; 1E 69 3A
	and ($29.b,S),Y		; 33 29
	ldx $3E90.w		; AE 90 3E
	plp		; 28
	asl $0C20.w,X		; 1E 20 0C
	sta [$14.b]		; 87 14
	sta $1E9D0E.l		; 8F 0E 9D 1E
	sbc [$28.b],Y		; F7 28
	sbc $F856.w,X		; FD 56 F8
	sbc $E0FCE0.l		; EF E0 FC E0
	sei		; 78
	sbc $7DF970.l,X		; FF 70 F9 7D
	nop		; EA
	eor [$A4.b],Y		; 57 A4
	dec A		; 3A
	lda [$6F.b]		; A7 6F
	cmp [$FF.b]		; C7 FF
	and $F01FDF.l,X		; 3F DF 1F F0
	sbc $DE80.w		; ED 80 DE
	sbc ($D6.b,X)		; E1 D6
	.db $80, $EB		; 80 EB
	.db $80, $37		; 80 37
	clc		; 18
	adc [$D1.b],Y		; 77 D1
	stx $82.b		; 86 82
	sbc $04D0.w,X		; FD D0 04
	ldy #$60.b		; A0 60
	bit #$04.b		; 89 04
	ldy $24.b,X		; B4 24
	iny		; C8
	cpy #$80.b		; C0 80
	brk $30.b		; 00 30
	tas		; 1B
	lda $61.b,S		; A3 61
	dec A		; 3A
	cmp $73FE1E.l,X		; DF 1E FE 73
	tsx		; BA
	phk		; 4B
	sbc $9FFFB7.l,X		; FF B7 FF 9F
	sbc $463FBC.l		; EF BC 3F 46
	adc $1FE028.l,X		; 7F 28 E0 1F
	.db $80, $37		; 80 37
	cpy #$23.b		; C0 23
	iny		; C8
	ora [$F0.b]		; 07 F0
	ora $F0C4F0.l		; 0F F0 C4 F0
	mvp $11,$B3		; 44 B3 11
	cmp $15E308.l		; CF 08 E3 15
	sed		; F8
	inc $9D00.w,X		; FE 00 9D
	lsr $24.b		; 46 24
	stp		; DB
	tsb $B8.b		; 04 B8
	asl $E6F2.w		; 0E F2 E6
	sec		; 38
	lda ($1C.b,S),Y		; B3 1C
	.db $80, $1F		; 80 1F
	.db $D0, $0F		; D0 0F
	inx		; E8
	ora [$7F.b]		; 07 7F
	.db $90, $3F		; 90 3F
	cmp $DF39.w,Y		; D9 39 DF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FEFF.w		; ED FF FE
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $F6FFB7.l,X		; FF B7 FF F6
	sbc [$06.b],Y		; F7 06
	asl $06.b		; 06 06
	cop $12.b		; 02 12
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	brk $81.b		; 00 81
	ora ($D8.b,X)		; 01 D8
	brk $D0.b		; 00 D0
	php		; 08
	brk $EE.b		; 00 EE
	jsl $78885A.l		; 22 5A 88 78
	mvp $8B,$91		; 44 91 8B
	adc ($C2.b,S),Y		; 73 C2
	and $63BA02.l,X		; 3F 02 BA 63
	ldx $77.b		; A6 77
	eor $8E.b,S		; 43 8E
	ldx $AC3C.w		; AE 3C AC
	lda ($5C.b),Y		; B1 5C
	mvn $27,$9A		; 54 9A 27
	cpx #$EB.b		; E0 EB
	eor $BDDE.w,X		; 5D DE BD
	and $3FB77F.l		; 2F 7F B7 3F
	sta $FFEBBF.l,X		; 9F BF EB FF
	wai		; CB
	cmp $F3EFE7.l,X		; DF E7 EF F3
	sbc $93F75A.l,X		; FF 5A F7 93
	cmp $46.b,S		; C3 46
	cmp [$4C.b]		; C7 4C
	adc $223204.l		; 6F 04 32 22
	rol $13.b,X		; 36 13
	ora $8897.w,Y		; 19 97 88
	and $0C.b,S		; 23 0C
	clc		; 18
	ora $04.b,S		; 03 04
	tsb $8E09.w		; 0C 09 8E
	and ($32.b,S),Y		; 33 32
	cpy $DD5B.w		; CC 5B DD
	lda $B2.b,S		; A3 B2
	cmp $977E80.l		; CF 80 7E 97
	dey		; 88
	tsb $8E10.w		; 0C 10 8E
	ora ($B2.b,X)		; 01 B2
	and $FB.b		; 25 FB
	ldy $A0.b		; A4 A0
	sei		; 78
	sta ($61.b,X)		; 81 61
	ora $FBFB9E.l,X		; 1F 9E FB FB
	sed		; F8
	sbc $5BFFFF.l,X		; FF FF FF 5B
	cmp $F47FFF.l,X		; DF FF 7F F4
	adc ($F0.b),Y		; 71 F0
	adc $81.b,S		; 63 81
	sta $00E48B.l,X		; 9F 8B E4 00
	sbc [$09.b]		; E7 09
	.db $70, $16		; 70 16
	inx		; E8
	pla		; 68
	ldy #$26.b		; A0 26
	lda $609F1C.l		; AF 1C 9F 60
	adc $EFE037.l,X		; 7F 37 E0 EF
	jsr $B9C2.w		; 20 C2 B9
	lda $7A.b		; A5 7A
	eor $B1.b		; 45 B1
	ora $F1.b,S		; 03 F1
	.db $90, $72		; 90 72
	eor ($C6.b,X)		; 41 C6
	sbc [$0F.b]		; E7 0F
	and $0F.b,S		; 23 0F
	tyx		; BB
	lsr $7B.b		; 46 7B
	sbc [$35.b]		; E7 35
	dec $C7C1.w		; CE C1 C7
	ora [$81.b],Y		; 17 81
	eor $EFFF09.l		; 4F 09 FF EF
	wai		; CB
	and $1F7E7B.l,X		; 3F 7B 7E 1F
	cmp $07FF3E.l,X		; DF 3E FF 07
	sbc $0FFA06.l,X		; FF 06 FA 0F
	sbc [$E7.b],Y		; F7 E7
	ora [$0B.b],Y		; 17 0B
	sbc ($46.b,S),Y		; F3 46
	.db $82, $C1, $21		; 82 C1 21
	cmp ($00.b,X)		; C1 00
	ora ($F8.b,X)		; 01 F8
	brk $FD.b		; 00 FD
	ora ($F9.b,X)		; 01 F9
	ora [$68.b]		; 07 68
	ora $1FF3.w		; 0D F3 1F
	adc $9F.b,S		; 63 9F
	and $9F.b,S		; 23 9F
	ora $7B.b,S		; 03 7B
	lda [$7B.b]		; A7 7B
	sta [$9F.b]		; 87 9F
	ora [$FE.b]		; 07 FE
	asl $FD.b		; 06 FD
	ora $17F7.w		; 0D F7 17
	inc $FC1F.w,X		; FE 1F FC
	sta $1C1F9C.l,X		; 9F 9C 1F 1C
	txy		; 9B
	clv		; B8
	and $FEEF6F.l,X		; 3F 6F EF FE
	sbc $3C777C.l,X		; FF 7C 77 3C
	lda $F8BF9C.l,X		; BF 9C BF F8
	and $78BF5C.l,X		; 3F 5C BF 78
	cmp $FD16EF.l,X		; DF EF 16 FD
	tsb $9477.w		; 0C 77 94
	lda $DCBF5C.l,X		; BF 5C BF DC
	tsa		; 3B
	clv		; B8
	tas		; 1B
	cli		; 58
	sta $E2FF18.l,X		; 9F 18 FF E2
	sbc ($F8.b,S),Y		; F3 F8
	sbc $F8FFFC.l,X		; FF FC FF F8
	sbc [$F0.b],Y		; F7 F0
	sbc $DAE6.w,X		; FD E6 DA
	cmp $D9EE.w		; CD EE D9
	stz $09FD.w,X		; 9E FD 09
	sbc ($03.b),Y		; F1 03
	sbc $0CFE06.l,X		; FF 06 FE 0C
	pea $DD1B.w		; F4 1B DD
	rol $36BA.w,X		; 3E BA 36
	and $0FFD1F.l		; 2F 1F FD 0F
	sbc $FD01.w,Y		; F9 01 FD
	asl $FE.b		; 06 FE
	tsb $FC.b		; 04 FC
	tas		; 1B
	cmp $37BF1F.l,X		; DF 1F BF 37
	and $F11DFD.l,X		; 3F FD 1D F1
	ora ($FF.b,X)		; 01 FF
	ora ($FF.b,X)		; 01 FF
	asl $F7.b		; 06 F7
	tsb $FD.b		; 04 FD
	ora $13D3.w,Y		; 19 D3 13
	sbc $1FEF27.l		; EF 27 EF 1F
	sbc $0FFF2B.l,X		; FF 2B FF 0F
	sbc $2BBD0F.l,X		; FF 0F BD 2B
	sbc $FFFF7E.l,X		; FF 7E FF FF
	eor ($00.b,S),Y		; 53 00
	adc $EBEBFF.l		; 6F FF EB EB
	sta $0F0F8F.l		; 8F 8F 0F 0F
	ora ($93.b),Y		; 11 93
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFF73.l		; EF 73 FF FF
	xba		; EB
	plb		; AB
	sta $0F0F8F.l		; 8F 8F 0F 0F
	sbc $8301BB.l,X		; FF BB 01 83
	brk $00.b		; 00 00
	adc $DF.b,S		; 63 DF
	cpx #$E0.b		; E0 E0
	sty $80.b,X		; 94 80
	.db $F0, $80		; F0 80
	.db $F0, $00		; F0 00
	sec		; 38
	sec		; 38
	adc $FFFF7F.l,X		; 7F 7F FF FF
	cmp $E4FE43.l		; CF 43 FE E4
	sbc $E8.b,X		; F5 E8
	plx		; FA
	sbc $FC.b		; E5 FC
.ACCU 8
.INDEX 8
	sep #$F3		; E2 F3
	pea $F6ED.w		; F4 ED F6
	sbc $07BF67.l,X		; FF 67 BF 07
	sbc ($FD.b),Y		; F1 FD
	sbc $EBEBF4.l,X		; FF F4 EB EB
	sbc #$F8.b		; E9 F8
	sbc ($F1.b),Y		; F1 F1
	cpx $FFF8.w		; EC F8 FF
	sed		; F8
	cmp ($DE.b),Y		; D1 DE
	sbc $F6F8.w,Y		; F9 F8 F6
	sbc $FFEFFE.l,X		; FF FE EF FF
	xce		; FB
	xce		; FB
	sbc $FD.b,X		; F5 FD
	plx		; FA
	inc $D9F9.w,X		; FE F9 D9
	dec $161E.w,X		; DE 1E 16
	ora $0816.w,Y		; 19 16 08
	ora $020F0C.l		; 0F 0C 0F 02
	ora [$09.b]		; 07 09
	ora #$99.b		; 09 99
	tya		; 98
	ldx $FF9E.w,Y		; BE 9E FF
	jmp ($B437.w,X)		; 7C 37 B4
	sbc [$66.b]		; E7 66
	sta $343C0C.l		; 8F 0C 3C 34
	stz $20.b		; 64 20
	tad		; 5B
	.db $80, $EF		; 80 EF
	tad		; 5B
	sbc ($8F.b,S),Y		; F3 8F
	lda ($07.b,S),Y		; B3 07
	lda ($C7.b,X)		; A1 C7
	adc $6F.b,S		; 63 6F
	sbc $60DB0B.l,X		; FF 0B DB 60
	ldy $F798.w,X		; BC 98 F7
	ldy $FCF3.w,X		; BC F3 FC
	xce		; FB
	adc $73BFF9.l,X		; 7F F9 BF 73
	ora $DBC8FF.l,X		; 1F FF C8 DB
	stp		; DB
	adc $F7BC.w,X		; 7D BC F7
	ldy $FD8C.w		; AC 8C FD
	eor $BF9F7F.l		; 4F 7F 9F BF
	sta $C8089F.l,X		; 9F 9F 08 C8
	bit $FF.b		; 24 FF
	eor $FF.b,S		; 43 FF
	ldy $A4.b		; A4 A4
	sta [$3C.b],Y		; 97 3C
	and ($4B.b,S),Y		; 33 4B
	sbc ($01.b,X)		; E1 01
	ldy $4FC0.w,X		; BC C0 4F
	dey		; 88
	eor $FB26.w,Y		; 59 26 FB
	trb $E4.b		; 14 E4
	adc ($F5.b,S),Y		; 73 F5
	php		; 08
	lda [$F4.b]		; A7 F4
	sbc $E0.b,S		; E3 E0
	sta $00.b,S		; 83 00
	and [$8F.b],Y		; 37 8F
	.db $80, $20		; 80 20
	tda		; 7B
	adc $12FC9B.l		; 6F 9B FC 12
	adc $7FF0.w		; 6D F0 7F
	inc $83E3.w,X		; FE E3 83
	eor $B7.b,S		; 43 B7
	lda [$FF.b],Y		; B7 FF
	ldy #$FB.b		; A0 FB
	adc $A9FF8F.l		; 6F 8F FF A9
	dec $AF70.w		; CE 70 AF
	jsr ($3CFF.w,X)		; FC FF 3C
	adc $7F7FC8.l,X		; 7F C8 7F 7F
	cmp $E0EFEF.l,X		; DF EF EF E0
	cpx #$F2.b		; E0 F2
	.db $F0, $FA		; F0 FA
	sed		; F8
	plx		; FA
	cpy $D8.b		; C4 D8
	bit $5F.b		; 24 5F
	lda [$BC.b],Y		; B7 BC
	jmp ($96D6.w,X)		; 7C D6 96
	eor $F252.w,Y		; 59 52 F2
	.db $82, $FE, $06		; 82 FE 06
	inc $32.b,X		; F6 32
	cmp $58C9.w		; CD C9 58
	eor $E7CD31.l		; 4F 31 CD E7
	eor ($98.b,S),Y		; 53 98
	jmp.w [$7F03]		; DC 03 7F
	ora $FF.b,S		; 03 FF
	tsa		; 3B
	sbc [$FF.b],Y		; F7 FF
	xba		; EB
	inx		; E8
	cmp $CFCFB3.l		; CF B3 CF CF
	ror $72BE.w,X		; 7E BE 72
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora $FB1BFB.l		; 0F FB 1B FB
	and $0F8FFF.l		; 2F FF 8F 0F
	ply		; 7A
	lsr $7170.w,X		; 5E 70 71
	ora $04.b		; 05 04
	tsb $150C.w		; 0C 0C 15
	ora $CC.b,X		; 15 CC
	cmp $FB.b,S		; C3 FB
	sbc $BF3DED.l,X		; FF ED 3D BF
	cop $BF.b		; 02 BF
	rti		; 40

	ora $06.b,S		; 03 06
	cop $0F.b		; 02 0F
	ora [$15.b]		; 07 15
	ora $A457CF.l,X		; 1F CF 57 A4
	eor $9D50.w,X		; 5D 50 9D
	sta $FA0000.l		; 8F 00 00 FA
	inc $FEF2.w,X		; FE F2 FE
	cpx $2FFF.w		; EC FF 2F
	sed		; F8
	eor [$EC.b],Y		; 57 EC
	.db $50, $AA		; 50 AA
	cmp $40404E.l,X		; DF 4E 40 40
	sbc $FDFFFD.l,X		; FF FD FF FD
	jsr ($F8FF.w,X)		; FC FF F8
	xba		; EB
	ldy $E3.b		; A4 E3
	ora $2C5C07.l		; 0F 07 5C 2C
	rti		; 40

	lda $190302.l,X		; BF 02 03 19
	asl $B7E9.w,X		; 1E E9 B7
	eor $B2.b,S		; 43 B2
	iny		; C8
	eor $C7E0.w		; 4D E0 C7
	stz $0B.b,X		; 74 0B
	sbc #$18.b		; E9 18
	cop $FF.b		; 02 FF
	ora $EDFE.w,Y		; 19 FE ED
	lda [$61.b],Y		; B7 61
	sbc $A282.w,X		; FD 82 A2
	jsr $8038.w		; 20 38 80
	.db $80, $00		; 80 00
	asl A		; 0A
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	mvp $61,$BB		; 44 BB 61
	cmp [$81.b],Y		; D7 81
	eor $0BCF3F.l,X		; 5F 3F CF 0B
	phb		; 8B
	ora [$1F.b],Y		; 17 1F
	jsr ($E0FF.w,X)		; FC FF E0
	sbc $4DFF00.l,X		; FF 00 FF 4D
	sbc $B833.w,Y		; F9 33 B8
	ora [$00.b]		; 07 00
	phd		; 0B
	stz $15.b,X		; 74 15
	cpx #$C8.b		; E0 C8
	eor [$08.b],Y		; 57 08
	cmp [$30.b],Y		; D7 30
	and $041F80.l		; 2F 80 1F 04
	plx		; FA
	pha		; 48
	ldy $7C80.w,X		; BC 80 7C
	brk $F4.b		; 00 F4
	cpy #$38.b		; C0 38
	.db $80, $F0		; 80 F0
	.db $30, $D0		; 30 D0
	cmp ($82.b,X)		; C1 82
	cop $07.b		; 02 07
	asl $0F.b		; 06 0F
	asl $0E03.w		; 0E 03 0E
	ora [$57.b]		; 07 57
	sta [$8F.b],Y		; 97 8F
	eor $9D3F1F.l,X		; 5F 1F 3F 9D
	cmp $FAFA.w,X		; DD FA FA
	ldx $7EBA.w,Y		; BE BA 7E
	adc ($F6.b)		; 72 F6
	inc $E03F.w,X		; FE 3F E0
	and $D0FFE0.l		; 2F E0 FF D0
	ldy $FF83.w,X		; BC 83 FF
	ora ($B3.b,X)		; 01 B3
	eor $73.b		; 45 73
	sta $09F7.w		; 8D F7 09
	and $0EC8.w		; 2D C8 0E
	xba		; EB
	ora #$F1.b		; 09 F1
	pha		; 48
	eor [$38.b],Y		; 57 38
	eor $2F1771.l,X		; 5F 71 17 2F
	jsr $41E4.w		; 20 E4 41
	ora $101C21.l,X		; 1F 21 1C 10
	ora $38A010.l,X		; 1F 10 A0 38
	.db $70, $A8		; 70 A8
	sec		; 38
	sbc #$65.b		; E9 65
	sbc $AE.b,X		; F5 AE
	sta ($F3.b,S),Y		; 93 F3
	sbc $F1C2.w,Y		; F9 C2 F1
	inc $FF.b		; E6 FF
	and [$D7.b]		; 27 D7
	adc $0F274F.l		; 6F 4F 27 0F
	eor $5F8C6F.l		; 4F 6F 8C 5F
	sbc $1FC617.l		; EF 17 C6 1F
	sbc ($00.b,X)		; E1 00
	ora $F097E0.l,X		; 1F E0 97 F0
	stx $F0.b,Y		; 96 F0
	cmp $B5.b,X		; D5 B5
	rol $27.b,X		; 36 27
	eor $7B.b,S		; 43 7B
	ora $7E.b		; 05 7E
	asl $FF.b		; 06 FF
	ora ($FE.b,X)		; 01 FE
	adc ($8E.b,X)		; 61 8E
	cmp $CA.b		; C5 CA
	sta $42.b		; 85 42
	ora [$78.b],Y		; 17 78
	ldx $20.b		; A6 20
	sty $82.b		; 84 82
	lsr $C1.b		; 46 C1
	ora ($00.b,X)		; 01 00
	jsr $C070.w		; 20 70 C0
	.db $30, $0C		; 30 0C
	jsr ($FCA0.w,X)		; FC A0 FC
	ora $7DFD.w,X		; 1D FD 7D
	sbc $FEFF3D.l,X		; FF 3D FF FE
	sbc $0EFEBE.l,X		; FF BE FE 0E
	stx $460E.w		; 8E 0E 46
	.db $70, $D8		; 70 D8
	and $7803.w,Y		; 39 03 78
	brk $7B.b		; 00 7B
	brk $FF.b		; 00 FF
	brk $EE.b		; 00 EE
	and ($F6.b,X)		; 21 F6
	adc ($36.b),Y		; 71 36
	lda $0FC0.w,X		; BD C0 0F
	cop $A6.b		; 02 A6
	asl A		; 0A
.ACCU 8
	sep #$21		; E2 21
	eor $983C.w,Y		; 59 3C 98
	eor $60FFB0.l		; 4F B0 FF 60
	adc ($38.b,X)		; 61 38
	sbc $1C82.w,X		; FD 82 1C
	xce		; FB
	rts		; 60

	lda $00BF58.l		; AF 58 BF 00
	lda $801FF0.l,X		; BF F0 1F 80
	sbc $FD6D43.l,X		; FF 43 6D FD
	adc $4FC707.l,X		; 7F 07 C7 4F
	sbc $27FF7F.l		; EF 7F FF 27
	lda [$F1.b]		; A7 F1
	sbc ($F0.b),Y		; F1 F0
	.db $F0, $77		; F0 77
	tda		; 7B
	adc $E0FC.w,X		; 7D FC E0
	clc		; 18
	ldy #$10.b		; A0 10
	tya		; 98
	brk $C0.b		; 00 C0
	clc		; 18
	.db $10, $0E		; 10 0E
	brk $0F.b		; 00 0F
	bit #$01.b		; 89 01
	stz $331E.w		; 9C 1E 33
	jmp $421D.w		; 4C 1D 42
	jmp $2238.w		; 4C 38 22
	ror $D12F.w,X		; 7E 2F D1
	clc		; 18
	stp		; DB
	.db $70, $C8		; 70 C8
	tsa		; 3B
	tya		; 98
	bit $4297.w		; 2C 97 42
	sta $F733.w,X		; 9D 33 F7
	ror $F8F8.w,X		; 7E F8 F8
	ror $74DB.w,X		; 7E DB 74
	iny		; C8
	eor [$58.b]		; 47 58
	eor [$FB.b],Y		; 57 FB
	sbc $B8DFDB.l,X		; FF DB DF B8
	sbc $DCEFBC.l		; EF BC EF DC
	cmp $FF93.w		; CD 93 FF
	cpx $A32F.w		; EC 2F A3
	sbc $200400.l,X		; FF 00 04 20
	tsb $64.b		; 04 64
	ora ($60.b,S),Y		; 13 60
	ora ($40.b,S),Y		; 13 40
	and ($7C.b,S),Y		; 33 7C
	brk $63.b		; 00 63
	.db $10, $2C		; 10 2C
	.db $10, $00		; 10 00
	nop		; EA
	brk $9B.b		; 00 9B
	stz $73.b,X		; 74 73
	brk $17.b		; 00 17
	asl A		; 0A
	sta $3FC8.w,X		; 9D C8 3F
	cmp [$3E.b]		; C7 3E
	.db $10, $EF		; 10 EF
	sbc $E4E9.w,X		; FD E9 E4
	sty $FB.b		; 84 FB
	sty $181F.w		; 8C 1F 18
	eor $3F62.w,X		; 5D 62 3F
	cld		; D8
	and $D6.b		; 25 D6
	cpx #$F9.b		; E0 F9
	sty $FF.b,X		; 94 FF
	rts		; 60

	sbc $0FFF07.l,X		; FF 07 FF 0F
	inc $3F5F.w,X		; FE 5F 3F
	sbc [$F7.b],Y		; F7 F7
	dec A		; 3A
	plx		; FA
	sbc $7F00FF.l		; EF FF 00 7F
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	php		; 08
	sbc ($A8.b),Y		; F1 A8
	cpy #$10.b		; C0 10
	clc		; 18
	phx		; DA
	ora $871F5F.l,X		; 1F 5F 1F 87
	tax		; AA
	eor ($FD.b,X)		; 41 FD
	and $AD.b,S		; 23 AD
	sbc #$4D.b		; E9 4D
	sta [$89.b]		; 87 89
	dec $CB.b,X		; D6 CB
	stx $C8.b		; 86 C8
	sty $5C.b		; 84 5C
	txy		; 9B
	ora [$1F.b],Y		; 17 1F
	rol $42AC.w		; 2E AC 42
	cmp $E62A22.l		; CF 22 2A E6
	eor [$BC.b]		; 47 BC
	mvn $26,$E1		; 54 E1 26
	cmp ($3F.b,X)		; C1 3F
	cmp $CFFD1D.l		; CF 1D FD CF
	sbc $AF6E24.l		; EF 24 6E AF
	sbc $95BD95.l		; EF 95 BD 95
	ror $D621.w		; 6E 21 D6
	ora $F1.b,S		; 03 F1
	and $C2.b		; 25 C2
	.db $30, $01		; 30 01
	sei		; 78
	sta ($F7.b,X)		; 81 F7
	sta $AD.b,S		; 83 AD
	dec $60.b		; C6 60
	cmp $CE.b,X		; D5 CE
	lda #$DF.b		; A9 DF
	sta $7F9F8F.l		; 8F 8F 9F 7F
	stz $3C7F.w,X		; 9E 7F 3C
	sbc $60FFF8.l,X		; FF F8 FF 60
	adc $1FFF0B.l,X		; 7F 0B FF 1F
	.db $70, $5E		; 70 5E
	.db $F0, $2C		; F0 2C
	rts		; 60

	sed		; F8
	cpx #$F0.b		; E0 F0
	.db $80, $A0		; 80 A0
	.db $80, $00		; 80 00
	phb		; 8B
	phb		; 8B
	sta $DED09F.l,X		; 9F 9F D0 DE
	.db $30, $9C		; 30 9C
	rts		; 60

	sed		; F8
	cpx #$70.b		; E0 70
	rti		; 40

	rts		; 60

	brk $80.b		; 00 80
	phb		; 8B
	phd		; 0B
	sta $F05F9F.l,X		; 9F 9F 5F F0
	ora $E0FFD0.l,X		; 1F D0 FF E0
	eor $803F40.l,X		; 5F 40 3F 80
	sbc $007400.l,X		; FF 00 74 00
	cpx #$80.b		; E0 80
	sbc $CBFCD8.l		; EF D8 FC CB
	phx		; DA
	tsb $EF.b		; 04 EF
	asl $FE.b,X		; 16 FE
	brk $FD.b		; 00 FD
	cop $FF.b		; 02 FF
	sbc $37FFFF.l		; EF FF FF 37
	and $0D17.w		; 2D 17 0D
	and $1E1C3A.l,X		; 3F 3A 1C 1E
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	sbc $FFFFEF.l		; EF EF FF FF
	and $3F.b,X		; 35 3F
	bit $1E.b		; 24 1E
	rol $3F.b,X		; 36 3F
	ora #$1E.b		; 09 1E
	asl $07.b		; 06 07
	ora ($03.b,X)		; 01 03
	sbc $FFFFEF.l		; EF EF FF FF
	sbc $05CE25.l		; EF 25 CE 05
	cmp [$16.b],Y		; D7 16
	inc $FE08.w		; EE 08 FE
	asl $FD.b		; 06 FD
	ora ($10.b,X)		; 01 10
	brk $00.b		; 00 00
	brk $7D.b		; 00 7D
	brk $F1.b		; 00 F1
	ora ($7B.b,X)		; 01 7B
	sty $FF.b		; 84 FF
	brk $6F.b		; 00 6F
	.db $90, $FF		; 90 FF
	brk $FF.b		; 00 FF
	inc $FFFF.w,X		; FE FF FF
	sta $FB.b,S		; 83 FB
	ora $7387FF.l		; 0F FF 87 73
	inc $9FFF.w,X		; FE FF 9F
	adc $FEFEFC.l		; 6F FC FE FE
	inc $FFFF.w,X		; FE FF FF
	inc $FE7F.w,X		; FE 7F FE
	inc $F7FF.w,X		; FE FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FEFE.w,X		; FE FE FE
	inc $FFFF.w,X		; FE FF FF
	ora ($7F.b,X)		; 01 7F
	ora ($FF.b,X)		; 01 FF
	sta [$7B.b]		; 87 7B
	inc $0FFE.w,X		; FE FE 0F
	ora $01FCFD.l		; 0F FD FC 01
	brk $00.b		; 00 00
	brk $DB.b		; 00 DB
	rtl		; 6B

	ldx $FE0E.w		; AE 0E FE
	asl $FE.b		; 06 FE
	cop $FB.b		; 02 FB
	ora $FF.b		; 05 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	stp		; DB
	inc $F8.b,X		; F6 F8
	inc $CAF8.w,X		; FE F8 CA
	cpy $0607.w		; CC 07 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $F7FF.w		; F4 FF F7
	sbc $CFFFFF.l		; EF FF FF CF
	cmp $010603.l		; CF 03 06 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $9F.b		; 00 9F
	sta $F9AFA9.l,X		; 9F A9 AF F9
	sbc $FACFFD.l,X		; FF FD CF FA
	cop $FF.b		; 02 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	sta ($3B.b),Y		; 91 3B
	tsa		; 3B
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	lda [$35.b],Y		; B7 35
	cmp $0FFD00.l		; CF 00 FD 0F
	sbc $EF3C18.l		; EF 18 3C EF
	ora $38.b,S		; 03 38
	cop $00.b		; 02 00
	ora ($02.b,X)		; 01 02
	and [$83.b],Y		; 37 83
	jsr ($3AEC.w,X)		; FC EC 3A
	sec		; 38
	and [$27.b],Y		; 37 27
	ror $C7CF.w,X		; 7E CF C7
	sbc $FDFFFF.l,X		; FF FF FF FD
	inc $FBFF.w,X		; FE FF FB
	cpx $3BDC.w		; EC DC 3B
	tsa		; 3B
	and $CFCF3F.l,X		; 3F 3F CF CF
	jsr ($FDFF.w,X)		; FC FF FD
	sbc $CAFEFE.l,X		; FF FE FE CA
	plx		; FA
	cmp $30F4CC.l,X		; DF CC F4 30
	sbc [$27.b]		; E7 27
	bit $FC1B.w,X		; 3C 1B FC
	txs		; 9A
	lda [$D1.b],Y		; B7 D1
	sbc ($95.b)		; F2 95
	sbc $24EB00.l		; EF 00 EB 24
	adc ($AC.b)		; 72 AC
	sbc $3D3A08.l,X		; FF 08 3A 3D
	xce		; FB
	adc $1DDB.w,X		; 7D DB 1D
	sta $151A.w,X		; 9D 1A 15
	ora $3F33.w,Y		; 19 33 3F
	dec $F6D2.w		; CE D2 F6
	inc $FF.b,X		; F6 FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	eor $1D1F9F.l,X		; 5F 9F 1F 1D
	ora $3F3D.w,X		; 1D 3D 3F
	rol $F6FE.w,X		; 3E FE F6
	inc $E0E0.w,X		; FE E0 E0
	rts		; 60

	cpx #$20.b		; E0 20
	brk $60.b		; 00 60
	brk $E3.b		; 00 E3
	ora ($C1.b,X)		; 01 C1
	ora ($03.b,X)		; 01 03
	cop $F6.b		; 02 F6
	sbc [$37.b],Y		; F7 37
	brk $CF.b		; 00 CF
	.db $10, $7F		; 10 7F
	brk $7F.b		; 00 7F
	.db $80, $FF		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	sei		; 78
	cpy #$E0.b		; C0 E0
	.db $80, $80		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $70, $E8		; 70 E8
	.db $F0, $B0		; F0 B0
	brk $80.b		; 00 80
	.db $80, $80		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inx		; E8
	adc [$90.b]		; 67 90
	sta $807F80.l		; 8F 80 7F 80
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($FE.b,X)		; 01 FE
	cop $FE.b		; 02 FE
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $03.b		; 02 03
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE01.l,X		; FF 01 FE 00
	jsr ($FD01.w,X)		; FC 01 FD
	ora ($FF.b,X)		; 01 FF
	ora ($FF.b,X)		; 01 FF
	inc $03.b		; E6 03
	cpx $0D14.w		; EC 14 0D
	sed		; F8
	.db $B0, $A9		; B0 A9
	sed		; F8
	sbc [$DF.b],Y		; F7 DF
	sbc $757FDD.l,X		; FF DD 7F 75
	sta $0F1806.l,X		; 9F 06 18 0F
	asl $5B6E.w,X		; 1E 6E 5B
	cmp $0E0114.l		; CF 14 01 0E
	brk $20.b		; 00 20
.ACCU 16
	rep #$20		; C2 20
	asl $0AE0.w		; 0E E0 0A
	ora $931B02.l		; 0F 02 1B 93
	sbc [$7D.b],Y		; F7 7D
	sbc $FFFE.w,X		; FD FE FF
	sbc $FF1DFF.l,X		; FF FF 1D FF
	sta ($9F.b,X)		; 81 9F
	trb $0DE8.w		; 1C E8 0D
	inc $1B7C.w		; EE 7C 1B
	sta $0F26.w,Y		; 99 26 0F
	inc $20.b,X		; F6 20
	sbc $8E1DC2.l,X		; FF C2 1D 8E
	adc ($F0.b,X)		; 61 F0
	tsb $7C.b		; 04 7C
	.db $82, $77, $07		; 82 77 07
	sec		; 38
	phb		; 8B
	.db $30, $C8		; 30 C8
	and $D0AFD0.l		; 2F D0 AF D0
	lda $070AC0.l,X		; BF C0 0A 07
	tsb $8B87.w		; 0C 87 8B
	ora [$4F.b]		; 07 4F
	cmp [$A4.b]		; C7 A4
	adc $20.b		; 65 20
	cpy #$00.b		; C0 00
	.db $70, $00		; 70 00
	.db $70, $02		; 70 02
	asl $8C04.w		; 0E 04 8C
	ora $8B.b,S		; 03 8B
	ora $ED69C7.l		; 0F C7 69 ED
	.db $D0, $F0		; D0 F0
	cpx #$F0.b		; E0 F0
	cpx #$F0.b		; E0 F0
	ora [$F9.b]		; 07 F9
	ora $7F.b		; 05 7F
	sta $7C.b,S		; 83 7C
	eor [$38.b]		; 47 38
	inc $F070.w		; EE 70 F0
	cmp $70CF70.l		; CF 70 CF 70
	cmp $697865.l		; CF 65 78 69
	adc ($19.b),Y		; 71 19
	cmp ($63.b,X)		; C1 63
	cpx #$21.b		; E0 21
	eor [$AB.b]		; 47 AB
	tsb $96.b		; 04 96
	ora $9E8E.w		; 0D 8E 9E
	cpx $6FCB.w		; EC CB 6F
	stx $DC.b		; 86 DC
	inc $DF.b		; E6 DF
	xce		; FB
	lda $7C3C.w,X		; BD 3C 7C
	rol $F3F0.w,X		; 3E F0 F3
	inx		; E8
	adc ($84.b),Y		; 71 84
	dec $1F1B.w,X		; DE 1B 1F
	stp		; DB
	sbc $FFC7.w,X		; FD C7 FF
	and $FD.b		; 25 FD
	ror A		; 6A
	ror $9C.b,X		; 76 9C
	sbc ($87.b),Y		; F1 87
	sbc $6DAE.w,Y		; F9 AE 6D
	inc $FDFC.w,X		; FE FC FD
	ora $1BDB.w,X		; 1D DB 1B
	rol $323E.w,X		; 3E 3E 32
	lda $FD.b,X		; B5 FD
	inc $666E.w,X		; FE 6E 66
	sta $04.b,S		; 83 04
	cmp $68AD44.l		; CF 44 AD 68
	and $1BAC.w,Y		; 39 AC 1B
	tay		; A8
	sta ($E0.b,S),Y		; 93 E0
	adc $3D4E.w,X		; 7D 4E 3D
	cpy #$F0.b		; C0 F0
	jsr ($1CFC.w,X)		; FC FC 1C
	stz $6C94.w		; 9C 94 6C
	asl $14.b		; 06 14
	phy		; 5A
	ldx $CF1E.w,Y		; BE 1E CF
	cop $07.b		; 02 07
	ora [$C0.b]		; 07 C0
	ldy $DCC8.w,X		; BC C8 DC
	ldy $F8.b		; A4 F8
	dec $3C42.w,X		; DE 42 3C
	dec $FE52.w,X		; DE 52 FE
	lda [$C5.b],Y		; B7 C5
	and $F8C7.w		; 2D C7 F8
	lda [$B8.b],Y		; B7 B8
	sta $90B5BA.l,X		; 9F BA B5 90
	lda $B152.w		; AD 52 B1
	ldx $721F.w,Y		; BE 1F 72
	sec		; 38
	and $EB0DFF.l,X		; 3F FF 0D EB
	bit #$00AE.w		; 89 AE 00
	cmp $A12F51.l		; CF 51 2F A1
	stz $2BC0.w,X		; 9E C0 2B
	lda ($4A.b,X)		; A1 4A
	sbc $10.b,S		; E3 10
	cpx $981F.w		; EC 1F 98
	lsr $5F98.w,X		; 5E 98 5F
	ora #$BF3E.w		; 09 3E BF
	sta $7C5F1E.l,X		; 9F 1E 5F 7C
	ora $6C3F2F.l,X		; 1F 2F 3F 6C
	sbc $D919.w,X		; FD 19 D9
	clc		; 18
	cmp $B948.w,Y		; D9 48 B9
	sta [$7F.b]		; 87 7F
	ldx $7F.b		; A6 7F
	cpx $7F.b		; E4 7F
	sbc [$3F.b]		; E7 3F
	stz $F806.w		; 9C 06 F8
	asl $F9.b		; 06 F9
	asl $19.b		; 06 19
	dec $3F.b		; C6 3F
	cmp ($1F.b,X)		; C1 1F
	.db $80, $5E		; 80 5E
	.db $80, $3F		; 80 3F
	sbc $EA.b,S		; E3 EA
	adc ($C6.b,X)		; 61 C6
	lda [$3D.b]		; A7 3D
	cpx #$1D.b		; E0 1D
	rts		; 60

	stz $F3A1.w		; 9C A1 F3
	.db $F0, $0B		; F0 0B
	inx		; E8
	phd		; 0B
	sed		; F8
	jmp $553B.w		; 4C 3B 55
	sbc $F21F.w,Y		; F9 1F F2
	ora $639CA2.l,X		; 1F A2 9C 63
	adc ($F8.b,S),Y		; 73 F8
	sbc [$F4.b],Y		; F7 F4
	sbc $F9BCF4.l,X		; FF F4 BC F9
	sbc $3FBF.w,Y		; F9 BF 3F
	sbc ($9F.b)		; F2 9F
	cmp $5C.b,S		; C3 5C
.ACCU 16
.INDEX 16
	rep #$77		; C2 77
	sbc $CBFFFB.l,X		; FF FB FF CB
	sbc $350E49.l,X		; FF 49 0E 35
	brk $52.b		; 00 52
	ora $3C02.w,X		; 1D 02 3C
	.db $82, $3D, $7B		; 82 3D 7B
	ora $FF.b,S		; 03 FF
	ora $D807F7.l		; 0F F7 07 D8
	eor [$B8.b]		; 47 B8
	adc ($6E.b,X)		; 61 6E
	.db $F0, $6F		; F0 6F
	.db $F0, $FF		; F0 FF
	ora ($DA.b,X)		; 01 DA
	stz $80.b		; 64 80
	trb $38FB.w		; 1C FB 38
	.db $50, $AA		; 50 AA
	jsr ($FE03.w,X)		; FC 03 FE
	ora ($7F.b,X)		; 01 7F
	sta ($FE.b,X)		; 81 FE
	ora $9B.b,S		; 03 9B
	bit $E1.b		; 24 E1
	eor $9F1E5A.l,X		; 5F 5A 1E 9F
	sbc $FE07F8.l,X		; FF F8 07 FE
	ora ($7F.b,X)		; 01 7F
	ora ($FF.b,X)		; 01 FF
	ora $9B.b,S		; 03 9B
	cmp ($A1.b,X)		; C1 A1
.ACCU 8
.INDEX 8
	sep #$FB		; E2 FB
	adc $076F.w,X		; 7D 6F 07
	ora $F8.b,S		; 03 F8
	ora ($FE.b,X)		; 01 FE
	ora ($FF.b,X)		; 01 FF
	brk $FC.b		; 00 FC
	.db $80, $BE		; 80 BE
.INDEX 16
	rep #$DC		; C2 DC
	jsr ($B660.w,X)		; FC 60 B6
	ldx #$16CE.w		; A2 CE 16
	sbc [$37.b],Y		; F7 37
	adc ($B3.b,S),Y		; 73 B3
	and ($F1.b,X)		; 21 F1
	and ($61.b,X)		; 21 61
	.db $90, $04		; 90 04
	cpy #$BE06.w		; C0 06 BE
	eor $0FFF3E.l,X		; 5F 3E FF 0F
	cmp [$5F.b]		; C7 5F
	cmp $9F.b,S		; C3 9F
	eor ($8F.b,X)		; 41 8F
	eor ($0F.b,X)		; 41 0F
	.db $10, $1F		; 10 1F
	.db $80, $3D		; 80 3D
	pea $1829.w		; F4 29 18
	.db $70, $58		; 70 58
	rts		; 60

	rts		; 60

	ldy #$3070.w		; A0 70 30
	.db $F0, $44		; F0 44
	pea $F616.w		; F4 16 F6
	pei ($1F.b)		; D4 1F
	php		; 08
	cmp $40B748.l,X		; DF 48 B7 40
	sbc $80EF50.l,X		; FF 50 EF 80
	and $062B04.l		; 2F 04 2B 06
	and #$FF.b		; 29 FF
	adc $C0BE3E.l,X		; 7F 3E BE C0
	adc ($DF.b,X)		; 61 DF
	ldy #$BFC0.w		; A0 C0 BF
	lda $CFFFD1.l		; AF D1 FF CF
	asl $FF03.w,X		; 1E 03 FF
	sbc $9E7F7F.l,X		; FF 7F 7F 9E
	and $FFDFE0.l,X		; 3F E0 DF FF
	cpx #$B0FE.w		; E0 FE B0
	.db $F0, $D0		; F0 D0
	sbc $FF1D.w,X		; FD 1D FF
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	sbc $7F7F7F.l,X		; FF 7F 7F 7F
	eor $177F6F.l,X		; 5F 6F 7F 17
	and $801F1E.l,X		; 3F 1E 1F 80
	.db $80, $00		; 80 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	cpy #$C040.w		; C0 40 C0
	rts		; 60

	ldy #$D030.w		; A0 30 D0
	trb $FFFC.w		; 1C FC FF
	sbc $000101.l,X		; FF 01 01 00
	sbc $00FA05.l,X		; FF 05 FA 00
	sbc $2FF7EE.l,X		; FF EE F7 2F
	pea $40FD.w		; F4 FD 40
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $FF.b		; 00 FF
	plx		; FA
	ora $FF.b		; 05 FF
	brk $17.b		; 00 17
	ora $7FE1F9.l		; 0F F9 E1 7F
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FD37FE.l,X		; FF FE 37 FD
	sbc $00FF.w,X		; FD FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	ora $3F.b		; 05 3F
	and $FFFF.w,X		; 3D FF FF
	sbc $1F1FFF.l,X		; FF FF 1F 1F
	.db $80, $78		; 80 78
	.db $30, $CF		; 30 CF
	cmp ($BE.b,X)		; C1 BE
	inc $09.b,X		; F6 09
	ldx $FF01.w,Y		; BE 01 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $C0FF07.l,X		; FF 07 FF C0
	and $FB617E.l,X		; 3F 7E 61 FB
	pea $DFFC.w		; F4 FC DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F0C0.w		; C0 C0 F0
	.db $F0, $9C		; F0 9C
	stz $00FF.w		; 9C FF 00
	sbc $F0FFE0.l,X		; FF E0 FF F0
	and $CE0F3C.l,X		; 3F 3C 0F CE
	sbc ($11.b,X)		; E1 11
	sec		; 38
	cpy #$2CD0.w		; C0 D0 2C
	brk $00.b		; 00 00
	cpx #$F0E0.w		; E0 E0 F0
	.db $F0, $FC		; F0 FC
	jsr ($FE3E.w,X)		; FC 3E FE
	ora $3FC7FF.l		; 0F FF C7 3F
	phd		; 0B
	sbc $E00000.l,X		; FF 00 00 E0
	cpx #$F0F0.w		; E0 F0 F0
	jsr ($FEFC.w,X)		; FC FC FE
	inc $FFFF.w,X		; FE FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $001F00.l,X		; FF 00 1F 00
	ora $000300.l		; 0F 00 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $DB33.w,X		; FD 33 DB
	bit $FF.b		; 24 FF
	cop $F7.b		; 02 F7
	brk $FF.b		; 00 FF
	brk $C3.b		; 00 C3
	cld		; D8
	asl $24.b,X		; 16 24
	bit $6D49.w,X		; 3C 49 6D
	and $1F33.w,X		; 3D 33 1F
	ror $3857.w,X		; 7E 57 38
	and [$30.b],Y		; 37 30
	and $CFFFEF.l,X		; 3F EF FF CF
	sbc $2EFC8C.l,X		; FF 8C FC 2E
	ror $377F.w,X		; 7E 7F 37
	adc [$7D.b],Y		; 77 7D
	and [$3F.b],Y		; 37 3F
	and [$3F.b],Y		; 37 3F
	sbc ($FF.b,S),Y		; F3 FF
	inc $FCFF.w,X		; FE FF FC
	jsr ($0F9F.w,X)		; FC 9F 0F
	lda $57DC3F.l,X		; BF 3F DC 57
	sed		; F8
	and [$F0.b],Y		; 37 F0
	and [$03.b],Y		; 37 03
	ora $03.b,S		; 03 03
	cop $06.b		; 02 06
	ora $ED.b		; 05 ED
	cpx #$48BF.w		; E0 BF 48
	cmp $0C.b,S		; C3 0C
	cmp $499610.l,X		; DF 10 96 49
	eor ($28.b,S),Y		; 53 28
	.db $82, $7D, $06		; 82 7D 06
	sbc $EEEE.w,X		; FD EE EE
	plp		; 28
	bit $20.b,X		; 34 20
	ldy $38.b		; A4 38
	clv		; B8
	adc ($1D.b),Y		; 71 1D
	ora [$80.b]		; 07 80
	cop $04.b		; 02 04
	asl $00.b		; 06 00
	trb $381E.w		; 1C 1E 38
	jsr ($FCF8.w,X)		; FC F8 FC
	iny		; C8
	cld		; D8
	.db $F0, $FD		; F0 FD
	sty $84.b		; 84 84
	ora ($04.b,X)		; 01 04
	ora $EE04.w		; 0D 04 EE
	sbc $2B3C.w		; ED 3C 2B
	tsb $38EB.w		; 0C EB 38
	sbc $03925D.l,X		; FF 5D 92 03
	sei		; 78
	ora $F8.b,S		; 03 F8
	phd		; 0B
	.db $F0, $FE		; F0 FE
	cop $E0.b		; 02 E0
	brk $C0.b		; 00 C0
	.db $10, $17		; 10 17
	cmp [$04.b]		; C7 04
	sty $03.b		; 84 03
	php		; 08
	ora [$18.b],Y		; 17 18
	ora $000140.l		; 0F 40 01 00
	ora $202F00.l,X		; 1F 00 2F 20
	sec		; 38
	jsr $707B.w		; 20 7B 70
	pea $E8C9.w		; F4 C9 E8
	cpy #$80F8.w		; C0 F8 80
	ora $03.b,S		; 03 03
	ora $0F3F1F.l,X		; 1F 1F 3F 0F
	inx		; E8
	ora $F40FFB.l		; 0F FB 0F F4
	and $B738EF.l,X		; 3F EF 38 B7
	sec		; 38
	ora $FC.b,S		; 03 FC
	ora $CF3FFF.l,X		; 1F FF 3F CF
	sbc $0BFF08.l,X		; FF 08 FF 0B
	.db $F0, $30		; F0 30
	sed		; F8
	and [$F8.b]		; 27 F8
	and [$FE.b],Y		; 37 FE
	sta $66.b,S		; 83 66
	eor $9F62.w,X		; 5D 62 9F
	and ($0C.b,S),Y		; 33 0C
	sbc $14EB04.l,X		; FF 04 EB 14
	cmp $3B.b		; C5 3B
	.db $D0, $3A		; D0 3A
	cop $03.b		; 02 03
	ldy #$1C37.w		; A0 37 1C
	sta $CB.b,S		; 83 CB
	ora [$83.b]		; 07 83
	sta [$93.b]		; 87 93
	phd		; 0B
	and $2C06.w,X		; 3D 06 2C
	ora [$82.b],Y		; 17 82
	sta $A7.b,S		; 83 A7
	stp		; DB
	adc ($9F.b,X)		; 61 9F
	.db $B0, $CC		; B0 CC
	jsr ($6C84.w,X)		; FC 84 6C
	txy		; 9B
	dec $3F.b		; C6 3F
.ACCU 16
.INDEX 16
	rep #$3F		; C2 3F
	.db $82, $7C, $83		; 82 7C 83
	sta ($01.b,X)		; 81 01
	adc $83BBC3.l,X		; 7F C3 BB 83
	sbc $077788.l,X		; FF 88 77 07
	jsr ($F902.w,X)		; FC 02 F9
	xce		; FB
	cmp [$77.b]		; C7 77
	eor $74.b,S		; 43 74
	cmp $F98977.l		; CF 77 89 F9
	tas		; 1B
	bit $69.b,X		; 34 69
	bit #$1F2E.w		; 89 2E 1F
	and $847A.w,Y		; 39 7A 84
	ply		; 7A
	cpy $883E.w		; CC 3E 88
	adc ($04.b),Y		; 71 04
	stz $82.b		; 64 82
	asl A		; 0A
	cmp ($92.b,S),Y		; D3 92
	pei ($02.b)		; D4 02
	ora $7D.b,S		; 03 7D
	cmp $3D.b		; C5 3D
	cmp $B9.b		; C5 B9
	cmp [$76.b]		; C7 76
	sta $FF.b		; 85 FF
	stx $E2.b		; 86 E2
	cmp $FEE6DD.l		; CF DD E6 FE
	ora $3C.b		; 05 3C
	tsa		; 3B
	ldy $7B.b,X		; B4 7B
	lda [$71.b],Y		; B7 71
	adc $FAFA.w,X		; 7D FA FA
	tda		; 7B
	nop		; EA
	and ($CE.b)		; 32 CE
	sta $F938.w,Y		; 99 38 F9
	sbc $F097C0.l		; EF C0 97 F0
	sta $74.b,S		; 83 74
	sta $6A.b,X		; 95 6A
	sta $DF6070.l		; 8F 70 60 DF
	.db $80, $DF		; 80 DF
	cpy #$00BF.w		; C0 BF 00
	.db $30, $10		; 30 10
	rts		; 60

	.db $80, $70		; 80 70
	.db $30, $D0		; 30 D0
	.db $10, $E0		; 10 E0
	jsr $00E0.w		; 20 E0 00
	cpx #$8040.w		; E0 40 80
	.db $F0, $F0		; F0 F0
	sed		; F8
	sed		; F8
	sei		; 78
	sed		; F8
	.db $50, $F0		; 50 F0
	rts		; 60

	.db $F0, $A0		; F0 A0
	cpx #$E060.w		; E0 60 E0
	jsr $20E0.w		; 20 E0 20
	cmp $F8E768.l		; CF 68 E7 F8
	adc [$70.b],Y		; 77 70
	cmp $A06F70.l,X		; DF 70 6F A0
	sbc $60DF40.l,X		; FF 40 DF 60
	sta $9B5714.l,X		; 9F 14 57 9B
	asl $8E71.w,X		; 1E 71 8E
	adc $7E.b,S		; 63 7E
	sbc $6C.b,S		; E3 6C
	.db $D0, $2F		; D0 2F
	rol $D5.b,X		; 36 D5
	ora $99.b		; 05 99
	jsr ($FB70.w,X)		; FC 70 FB
	cmp $F9C3.w		; CD C3 F9
	phk		; 4B
	ora #$0150.w		; 09 50 01
	jsr $0D20.w		; 20 20 0D
	ora #$181D.w		; 09 1D 18
	eor $24.b,S		; 43 24
	sta ($D5.b),Y		; 91 D5
	adc #$25FB.w		; 69 FB 25
	tad		; 5B
	adc $09.b,X		; 75 09
	ora ($3C.b,S),Y		; 13 3C
	asl $1F.b,X		; 16 1F
	ror $7E.b		; 66 7E
	sbc [$3B.b]		; E7 3B
	sbc ($CB.b),Y		; F1 CB
	sbc $AF6555.l		; EF 55 65 AF
	and [$BE.b]		; 27 BE
	and $C7.b,S		; 23 C7
	clc		; 18
	sbc $9D7C.w,Y		; F9 7C 9D
	and ($C8.b),Y		; 31 C8
	jsr ($FCB2.w,X)		; FC B2 FC
	ora $F9.b,S		; 03 F9
	rol $6BF4.w		; 2E F4 6B
	plp		; 28
	and $103708.l,X		; 3F 08 37 10
	sta $5E1B1B.l		; 8F 1B 1B 5E
	eor $F6FEFC.l		; 4F FC FE F6
	dec $E8.b,X		; D6 E8
	clc		; 18
	tay		; A8
	.db $10, $88		; 10 88
	clc		; 18
	pla		; 68
	sed		; F8
	cmp $1F.b,X		; D5 1F
	sbc $FFFDCD.l		; EF CD FD FF
	jsr ($5CFA.w,X)		; FC FA 5C
	.db $70, $4C		; 70 4C
	jmp.w [$D868]		; DC 68 D8
	rts		; 60

	tya		; 98
	sbc $FB.b,S		; E3 FB
	dec $FDFC.w		; CE FC FD
	jsr ($D9FE.w,X)		; FC FE D9
	jmp ($8083.w,X)		; 7C 83 80
	adc $B8.b,S		; 63 B8
	adc $EC2708.l,X		; 7F 08 27 EC
	asl $E2.b		; 06 E2
	ora $FDA218.l		; 0F 18 A2 FD
	brk $05.b		; 00 05
	ldx #$209F.w		; A2 9F 20
	dec $8E12.w,X		; DE 12 8E
	ror $1B01.w,X		; 7E 01 1B
	cop $15.b		; 02 15
	lda [$D2.b],Y		; B7 D2
	and $1CFE05.l		; 2F 05 FE 1C
	and #$6341.w		; 29 41 63
	sty $0D.b,X		; 94 0D
	adc [$F4.b],Y		; 77 F4
	ora $741FFA.l,X		; 1F FA 1F 74
	and $3DD5.w,X		; 3D D5 3D
	and $7DB3FF.l,X		; 3F FF B3 7D
	dey		; 88
	xce		; FB
	phb		; 8B
	adc $01E40F.l,X		; 7F 0F E4 01
	cpx #$D231.w		; E0 31 D2
	and $66D7.w		; 2D D7 66
	stz $9329.w		; 9C 29 93
	sbc $1C.b,S		; E3 1C
	.db $30, $B5		; 30 B5
	sec		; 38
	ora $E9.b		; 05 E9
	dey		; 88
	cmp $230D4D.l,X		; DF 4D 0D 23
	.db $82, $81, $88		; 82 81 88
	cop $BE.b		; 02 BE
	cop $C0.b		; 02 C0
	pld		; 2B
	inc $EB.b		; E6 EB
	sta $7017.w,X		; 9D 17 70
	.db $B0, $90		; B0 90
	brk $FD.b		; 00 FD
	eor $FD.b,S		; 43 FD
	cmp #$EC43.w		; C9 43 EC
	lsr $47.b,X		; 56 47
	and ($E7.b),Y		; 31 E7
	adc $D7.b		; 65 D7
	sta $F2B1F0.l,X		; 9F F0 B1 F2
	rol $BDFF.w,X		; 3E FF BD
	inc $FD9A.w,X		; FE 9A FD
	inc $FF.b,X		; F6 FF
	sbc [$2A.b],Y		; F7 2A
	lda $8219.w,X		; BD 19 82
	adc $02FF0C.l,X		; 7F 0C FF 02
	sbc $FC00.w,X		; FD 00 FC
	dey		; 88
	eor $47.b,S		; 43 47
	pea $87E6.w		; F4 E6 87
	.db $62, $91, $F5		; 62 91 F5
	ora $742CD6.l		; 0F D6 2C 74
	ora [$FC.b],Y		; 17 FC
	cmp $F86F8F.l		; CF 8F 6F F8
	rol $7D.b,X		; 36 7D
	clc		; 18
	eor $8D009E.l		; 4F 9E 00 8D
	ora ($8B.b,X)		; 01 8B
	tya		; 98
	ora ($4C.b,X)		; 01 4C
	ora ($AF.b,S),Y		; 13 AF
	sed		; F8
	sbc $780C.w,X		; FD 0C 78
	sbc $75DD66.l,X		; FF 66 DD 75
	sta $AD8FD6.l		; 8F D6 8F AD
	phb		; 8B
	ldy $36.b		; A4 36
	sta $06BDF8.l,X		; 9F F8 BD 06
	adc $FDE0.w,X		; 7D E0 FD
	rti		; 40

	sei		; 78
	sei		; 78
	inc $617C.w,X		; FE 7C 61
	pea $C902.w		; F4 02 C9
	dey		; 88
	lda [$44.b]		; A7 44
	sbc $8770.w,Y		; F9 70 87
	adc ($05.b)		; 72 05
	stz $81.b,X		; 74 81
	nop		; EA
	.db $80, $5F		; 80 5F
	rts		; 60

	cmp ($AF.b,X)		; C1 AF
	adc ($B2.b),Y		; 71 B2
	rti		; 40

	eor ($4F.b,X)		; 41 4F
	cpy #$C0CF.w		; C0 CF C0
	lda $3AF374.l		; AF 74 F3 3A
	sbc $2AD5BF.l		; EF BF D5 2A
	eor $01BFC0.l		; 4F C0 BF 01
	adc [$C7.b],Y		; 77 C7
	sbc $CF.b,X		; F5 CF
	and $BAFF.w,X		; 3D FF BA
	inc $0FEF.w		; EE EF 0F
	bit #$4E7F.w		; 89 7F 4E
	lda ($81.b),Y		; B1 81
	ror $78C7.w,X		; 7E C7 78
	cmp $24B770.l		; CF 70 B7 24
	ror A		; 6A
	and $0F.b,S		; 23 0F
	sbc $00F00C.l,X		; FF 0C F0 00
	sbc $05FF00.l,X		; FF 00 FF 05
	sed		; F8
	ora $E2E2.w,X		; 1D E2 E2
	.db $10, $05		; 10 05
	adc #$38D0.w		; 69 D0 38
	rts		; 60

	adc [$05.b]		; 67 05
	rol $FBFC.w,X		; 3E FC FB
	sbc $01FF03.l,X		; FF 03 FF 01
	sbc $0EF503.l,X		; FF 03 F5 0E
	cmp [$E8.b],Y		; D7 E8
	and $38FFC6.l,X		; 3F C6 FF 38
	inc $FB01.w,X		; FE 01 FB
	sbc $FFE3.w,X		; FD E3 FF
	ora ($F7.b)		; 12 F7
	adc $6E.b		; 65 6E
	cpy #$27F7.w		; C0 F7 27
	tya		; 98
	and $00FEC0.l,X		; 3F C0 FE 00
	sbc $FF01.w,X		; FD 01 FF
	ora ($F7.b,X)		; 01 F7
	asl A		; 0A
	ror $95.b		; 66 95
	.db $F0, $EF		; F0 EF
	.db $80, $7F		; 80 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cmp $DF17.w		; CD 17 DF
	cmp ($94.b,X)		; C1 94
	.db $80, $18		; 80 18
	tsb $58.b		; 04 58
	cmp $F0.b,S		; C3 F0
	lda $C4E09D.l		; AF 9D E0 C4
	tsb $F9F9.w		; 0C F9 F9
	rtl		; 6B

	plb		; AB
	sbc [$34.b],Y		; F7 34
	cmp ($34.b,S),Y		; D3 34
	sbc [$38.b],Y		; F7 38
	sbc $38FF10.l,X		; FF 10 FF 38
	sbc [$38.b],Y		; F7 38
	cpy $5EDE.w		; CC DE 5E
	inc A		; 1A
	ldy $7C.b,X		; B4 7C
	clc		; 18
	pea $3BDB.w		; F4 DB 3B
	sbc [$1F.b],Y		; F7 1F
	sed		; F8
	ora $0AC4.w,X		; 1D C4 0A
	cld		; D8
	sbc $EF0A.w		; ED 0A EF
	bit $DF.b,X		; 34 DF
	.db $30, $DB		; 30 DB
	tsa		; 3B
	pei ($1F.b)		; D4 1F
	.db $F0, $1D		; F0 1D
	plx		; FA
	asl A		; 0A
	sbc ($78.b),Y		; F1 78
	ora [$40.b]		; 07 40
	lda $184F30.l,X		; BF 30 4F 18
	ora $0BF40B.l		; 0F 0B F4 0B
	.db $F0, $F7		; F0 F7
	tsb $3835.w		; 0C 35 38
	sta [$F8.b]		; 87 F8
	sbc $30BF40.l,X		; FF 40 BF 30
	sbc [$30.b],Y		; F7 30
	sbc ($07.b,S),Y		; F3 07
	sbc $07FF03.l,X		; FF 03 FF 07
	sbc $37.b,X		; F5 37
	sbc $FFFF7F.l,X		; FF 7F FF FF
	and $1F3F7F.l,X		; 3F 7F 3F 1F
	sbc ($FF.b,S),Y		; F3 FF
	sbc ($FF.b,S),Y		; F3 FF
	phd		; 0B
	xce		; FB
	asl $0E.b		; 06 0E
	brk $00.b		; 00 00
	cpy #$3040.w		; C0 40 30
	.db $B0, $10		; B0 10
	.db $D0, $F7		; D0 F7
	ora [$FF.b]		; 07 FF
	ora $FB.b,S		; 03 FB
	ora [$04.b]		; 07 04
	sbc $DF.b,X		; F5 DF
	cpx #$FB04.w		; E0 04 FB
	ora $00DFF0.l,X		; 1F F0 DF 00
	cmp $00FF00.l,X		; DF 00 FF 00
	adc $00FF80.l,X		; 7F 80 FF 00
	jsr $FA1F.w		; 20 1F FA
	ora $D7.b		; 05 D7
	and $FF7EBE.l,X		; 3F BE 7E FF
	cmp $FFBFBF.l,X		; DF BF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $E0FEFE.l,X		; FF FE FE E0
	cpx #$C0C0.w		; E0 C0 C0
	.db $80, $80		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	asl $C01F.w,X		; 1E 1F C0
	cmp $80BF80.l,X		; DF 80 BF 80
	adc $90FF00.l,X		; 7F 00 FF 90
	and [$B8.b]		; 27 B8
	eor [$DF.b]		; 47 DF
	cpx #$00FF.w		; E0 FF 00
	inc $FE00.w,X		; FE 00 FE
	ora ($FD.b,X)		; 01 FD
	cop $FE.b		; 02 FE
	brk $50.b		; 00 50
	cld		; D8
	sei		; 78
	sec		; 38
	eor $FFFFDF.l,X		; 5F DF FF FF
	inc $FEFE.w,X		; FE FE FE
	inc $FEFF.w,X		; FE FF FE
	sbc $F8F8FC.l,X		; FF FC F8 F8
	.db $70, $70		; 70 70
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $10.b		; 00 10
	ora [$B0.b],Y		; 17 B0
	and $003F40.l,X		; 3F 40 3F 00
	sbc $01FF00.l,X		; FF 00 FF 01
	inc $FC03.w,X		; FE 03 FC
	ora $FC.b,S		; 03 FC
	tsb $02E2.w		; 0C E2 02
	cmp [$DB.b]		; C7 DB
	ora $93.b,S		; 03 93
	phd		; 0B
	lda ($49.b)		; B2 49
	clv		; B8
	eor [$20.b]		; 47 20
	eor $1D1E61.l		; 4F 61 1E 1D
	ora ($3B.b,X)		; 01 3B
	ora ($F8.b,X)		; 01 F8
	sta [$F0.b]		; 87 F0
	sta [$BB.b]		; 87 BB
	phk		; 4B
	lda $5FAF5F.l,X		; BF 5F AF 5F
	sbc $00031F.l,X		; FF 1F 03 00
	and [$22.b]		; 27 22
	ora [$07.b]		; 07 07
	phd		; 0B
	ora [$0D.b]		; 07 0D
	eor $17.b,S		; 43 17
	eor $1E5F1F.l,X		; 5F 1F 5F 1E
	ora $3CE01F.l,X		; 1F 1F E0 3C
	cpx #$837C.w		; E0 7C 83
	sei		; 78
	sta [$B0.b]		; 87 B0
	ora [$B0.b]		; 07 B0
	ora $E00FB0.l,X		; 1F B0 0F E0
	ora $6FE8B8.l,X		; 1F B8 E8 6F
	brk $FF.b		; 00 FF
	cpy #$C0FF.w		; C0 FF C0
	sbc $807F00.l,X		; FF 00 7F 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sta [$5E.b],Y		; 97 5E
	adc $FF3FBF.l		; 6F BF 3F FF
	and $BFBFFF.l,X		; 3F FF BF BF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFB0FF.l,X		; FF FF B0 FF
	.db $80, $B0		; 80 B0
	cpy #$C0E0.w		; C0 E0 C0
	cpy #$C000.w		; C0 00 C0
	.db $80, $80		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $30, $30		; 30 30
	sta $FF1F6F.l,X		; 9F 6F 1F FF
	and $FF3FFF.l,X		; 3F FF 3F FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $BF4BFF.l,X		; FF FF 4B BF
	.db $B0, $5F		; B0 5F
	sbc $1E.b,S		; E3 1E
	sbc ($01.b),Y		; F1 01
	plx		; FA
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($D0.b,X)		; 01 D0
	cpy #$E8F0.w		; C0 F0 E8
	sbc ($F1.b,S),Y		; F3 F1
	inc $FD.b,X		; F6 FD
	xce		; FB
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $78C7FF.l,X		; FF FF C7 78
	eor $1F1178.l		; 4F 78 11 1F
	ora ($0F.b,X)		; 01 0F
	ora $01.b		; 05 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	eor [$47.b],Y		; 57 47
	sta $F5E3E7.l,X		; 9F E7 E3 F5
	.db $F0, $F9		; F0 F9
	plx		; FA
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $0CFFFE.l,X		; FF FE FF 0C
	sbc $0A5EC5.l		; EF C5 5E 0A
	sbc ($00.b),Y		; F1 00
	ora $01BE.w,X		; 1D BE 01
	stz $8D.b,X		; 74 8D
	plp		; 28
	sta ($B8.b,X)		; 81 B8
	cop $31.b		; 02 31
	ora [$48.b]		; 07 48
	ora [$F8.b],Y		; 17 F8
	sbc ($BD.b,S),Y		; F3 BD
	sbc ($0A.b,X)		; E1 0A
	lsr A		; 4A
	dec $FE82.w		; CE 82 FE
	lda ($BC.b),Y		; B1 BC
	.db $80, $DF		; 80 DF
	and $F03FA5.l,X		; 3F A5 3F F0
	sbc $BCFF11.l,X		; FF 11 FF BC
	dex		; CA
	ldy $D6.b		; A4 D6
	ldx $7AEF.w,Y		; BE EF 7A
	sbc $B9CDEB.l,X		; FF EB CD B9
	cpy $38.b		; C4 38
	.db $F0, $11		; F0 11
	lsr $3D08.w		; 4E 08 3D
	lsr A		; 4A
	lda ($7F.b,X)		; A1 7F
	lda [$3D.b]		; A7 3D
	sta $A0.b,S		; 83 A0
	lda $12F1C1.l,X		; BF C1 F1 12
	brk $05.b		; 00 05
	trb $FD01.w		; 1C 01 FD
	sta ($6E.b)		; 92 6E
	.db $90, $B7		; 90 B7
	stz $05.b		; 64 05
	eor ($31.b,X)		; 41 31
	php		; 08
	ora ($64.b)		; 12 64
	lda $FF8A.w,X		; BD 8A FF
	ora $03.b,S		; 03 03
	rts		; 60

	adc $50.b,S		; 63 50
	inx		; E8
	trb $0C.b		; 14 0C
	rti		; 40

	sbc ($DC.b),Y		; F1 DC
	ora $068A66.l,X		; 1F 66 8A 06
	dec $0302.w,X		; DE 02 03
	cop $63.b		; 02 63
	sbc ($F1.b,X)		; E1 F1
	.db $70, $F4		; 70 F4
	ora ($8E.b),Y		; 11 8E
	inc $E0.b,X		; F6 E0
	bit #$FA75.w		; 89 75 FA
	ora ($02.b,X)		; 01 02
	sbc $9C61.w,X		; FD 61 9C
	adc $E806.w,Y		; 79 06 E8
	sbc $911001.l,X		; FF 01 10 91
	trb $B525.w		; 1C 25 B5
	adc ($49.b,X)		; 61 49
.INDEX 8
	sep #$DA		; E2 DA
	and [$D8.b]		; 27 D8
	sta $F70116.l		; 8F 16 01 F7
	sta $7F8FEF.l		; 8F EF 8F 7F
	adc $F3.b,S		; 63 F3
	sbc [$97.b],Y		; F7 97
	cpy #$21.b		; C0 21
	cpy #$06.b		; C0 06
	cmp ($87.b,X)		; C1 87
	asl $07.b		; 06 07
	sta ($9E.b,X)		; 81 9E
	ora $4812.w,X		; 1D 12 48
	lda $C6B7C0.l,X		; BF C0 B7 C6
	ora [$E7.b]		; 07 E7
	lda [$E1.b]		; A7 E1
	sbc [$08.b]		; E7 08
	ora #$6EEF.w		; 09 EF 6E
	sbc $629FE2.l		; EF E2 9F 62
	sta [$6E.b]		; 87 6E
	ora $FA.b,S		; 03 FA
	brk $D8.b		; 00 D8
	lda [$99.b]		; A7 99
	ora $4708F0.l		; 0F F0 08 47
	cpy $7CC3.w		; CC C3 7C
	xce		; FB
	cld		; D8
	xce		; FB
	.db $90, $3B		; 90 3B
	eor ($A0.b)		; 52 A0
	sbc $C7EA.w,X		; FD EA C7
	ldx $D830.w		; AE 30 D8
	sec		; 38
	clv		; B8
	jmp $FC6CFC.l		; 5C FC 6C FC
	tsb $1A5C.w		; 0C 5C 1A
	ror $4B.b,X		; 76 4B
	sbc ($0C.b,X)		; E1 0C
	cmp ($80.b,X)		; C1 80
	cld		; D8
	pha		; 48
	sed		; F8
	tsb $9C.b		; 04 9C
	jsr $08BC.w		; 20 BC 08
	jmp ($FE5A.w,X)		; 7C 5A FE
	and ($FF.b),Y		; 31 FF
	eor [$BF.b],Y		; 57 BF
	sei		; 78
	eor [$F8.b],Y		; 57 F8
	adc $58477C.l,X		; 7F 7C 47 58
	eor $10.b,S		; 43 10
	sta $36.b,S		; 83 36
	ora ($CB.b,S),Y		; 13 CB
	ora ($CD.b,X)		; 01 CD
	jsl $7B42B4.l		; 22 B4 42 7B
	jmp ($C80E.w,X)		; 7C 0E C8
	ldy $067B.w		; AC 7B 06
	lda $F027.w,Y		; B9 27 F0
	phk		; 4B
	ldy #$65.b		; A0 65
.ACCU 8
.INDEX 8
	sep #$BD		; E2 BD
	tyx		; BB
	wai		; CB
	sty $21.b,X		; 94 21
	sbc ($80.b),Y		; F1 80
	.db $D0, $40		; D0 40
	sed		; F8
	sed		; F8
	.db $F0, $F4		; F0 F4
	tay		; A8
	inc $F1A0.w,X		; FE A0 F1
	lda $2FA862.l,X		; BF 62 A8 2F
	and [$07.b],Y		; 37 07
	plp		; 28
	eor [$00.b]		; 47 00
	cmp $BCF7F8.l		; CF F8 F7 BC
	plx		; FA
	clv		; B8
	clv		; B8
	sbc $37A9.w,X		; FD A9 37
	.db $30, $CF		; 30 CF
	sta [$FF.b]		; 87 FF
	ora [$FF.b]		; 07 FF
	cmp [$3F.b]		; C7 3F
	lda $5F.b,S		; A3 5F
	lda $5F.b		; A5 5F
	ora $CE85.w		; 0D 85 CE
	sbc ($F3.b)		; F2 F3
	sbc $FA.b		; E5 FA
	and $7A.b		; 25 7A
	cpx #$7E.b		; E0 7E
	adc ($9E.b),Y		; 71 9E
	.db $30, $D0		; 30 D0
	adc $05BF.w,Y		; 79 BF 05
	cmp $17BF7B.l,X		; DF 7B BF 17
	plx		; FA
	and $5F.b		; 25 5F
	rep #$CF		; C2 CF
	cpy #$4F.b		; C0 4F
	phk		; 4B
	adc [$D2.b]		; 67 D2
	clv		; B8
	lda [$8B.b],Y		; B7 8B
	ror $BD5A.w,X		; 7E 5A BD
	txa		; 8A
	jsr $4522.w		; 20 22 45
	sta ($60.b),Y		; 91 60
	cmp $635701.l,X		; DF 01 57 63
	cpy #$7F.b		; C0 7F
	rol $DA.b		; 26 DA
	.db $90, $7F		; 90 7F
	.db $50, $FF		; 50 FF
	sec		; 38
	sbc $B1FF1E.l,X		; FF 1E FF B1
	inc $DC2F.w,X		; FE 2F DC
	tad		; 5B
	stz $24.b,X		; 74 24
	inx		; E8
	lda $0F.b,X		; B5 0F
	eor [$BD.b]		; 47 BD
	pha		; 48
	ldx $22.b,Y		; B6 22
	cmp $F026.w,Y		; D9 26 F0
	xba		; EB
	ror $2B95.w,X		; 7E 95 2B
	adc $04FFE0.l,X		; 7F E0 FF 04
	eor $B8.b,S		; 43 B8
	eor #$B6.b		; 49 B6
	bit $DF.b		; 24 DF
	xba		; EB
	asl $F8.b		; 06 F8
	sta $49.b		; 85 49
	ldy $F3CC.w,X		; BC CC F3
	tas		; 1B
	mvp $04,$43		; 44 43 04
	pha		; 48
	ora ($26.b,X)		; 01 26
	ora [$63.b]		; 07 63
	sbc $5CFEFA.l,X		; FF FA FE 5C
	cmp $C0.b,S		; C3 C0
	and $00FFA0.l,X		; 3F A0 FF 00
	sbc $07FF00.l,X		; FF 00 FF 07
	sed		; F8
	nop		; EA
	cop $FE.b		; 02 FE
	sta $02.b,S		; 83 02
	ora $FFFFFB.l		; 0F FB FF FF
	sed		; F8
	asl $44FF.w,X		; 1E FF 44
	cpy #$87.b		; C0 87
	ora $A1.b,S		; 03 A1
	inc $0FC3.w		; EE C3 0F
	sbc $00FF0C.l,X		; FF 0C FF 00
	sbc $916F00.l,X		; FF 00 6F 91
	and $F6FF.w,X		; 3D FF F6
	sbc $40BF.w,X		; FD BF 40
	adc $F00FC0.l,X		; 7F C0 0F F0
	sbc $00FF00.l,X		; FF 00 FF 00
	ror $07.b		; 66 07
	bit $3E.b		; 24 3E
	sty $8E.b		; 84 8E
	stx $4CFE.w		; 8E FE 4C
	jsr ($FF00.w,X)		; FC 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($F8.b,X)		; 01 F8
	rol $8EC5.w,X		; 3E C5 8E
	sbc $21.b,X		; F5 21
	ora $FD7F43.l,X		; 1F 43 7F FD
	sbc ($65.b,S),Y		; F3 65
	plx		; FA
	cmp $870F90.l		; CF 90 0F 87
	ora [$0C.b]		; 07 0C
	ora $F46318.l,X		; 1F 18 63 F4
	ora $07FDBC.l,X		; 1F BC FD 07
	sbc $17.b,X		; F5 17
	lda $F87F.w,X		; BD 7F F8
	sbc $E0FFF8.l,X		; FF F8 FF E0
	sbc $1CE718.l,X		; FF 18 E7 1C
	cmp $FD.b,S		; C3 FD
	ora ($F7.b,X)		; 01 F7
	tas		; 1B
	sta $8C3F.w		; 8D 3F 8C
	sty $0800.w		; 8C 00 08
	brk $00.b		; 00 00
	pha		; 48
	cpy $7C18.w		; CC 18 7C
	ora ($FE.b,X)		; 01 FE
	ora ($E1.b,S),Y		; 13 E1
	and $88CF.w,X		; 3D CF 88
	tda		; 7B
	php		; 08
	sbc [$00.b],Y		; F7 00
	sbc $442B9C.l,X		; FF 9C 2B 44
	sta $02.b,S		; 83 02
	cmp $3E.b		; C5 3E
	and $38FEFF.l,X		; 3F FF FE 38
	dec $4A.b		; C6 4A
	brk $BA.b		; 00 BA
	cop $CB.b		; 02 CB
	ora $B5.b,S		; 03 B5
	ldy $3B.b,X		; B4 3B
	plx		; FA
	rti		; 40

	sbc $87FE00.l,X		; FF 00 FE 87
	and $049DA5.l,X		; 3F A5 9D 04
	sbc $EC3D.w,X		; FD 3D EC
	sbc $C703E2.l,X		; FF E2 03 C7
	.db $80, $81		; 80 81
	.db $80, $80		; 80 80
	sty $C6.b		; 84 C6
	cpy #$34.b		; C0 34
	.db $82, $F7, $EB		; 82 F7 EB
	sbc $4357F5.l		; EF F5 57 43
	dec A		; 3A
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	stx $39.b		; 86 39
	bit $4B.b,X		; 34 4B
	asl $8A.b		; 06 8A
	asl $0BFE.w		; 0E FE 0B
	sbc $0D.b,S		; E3 0D
	and ($C3.b)		; 32 C3
	trb $8B.b		; 14 8B
	tsb $1F.b		; 04 1F
	.db $10, $6F		; 10 6F
	.db $70, $4F		; 70 4F
	cpx #$9F.b		; E0 9F
	cpy #$9F.b		; C0 9F
	jsr $0DED.w		; 20 ED 0D
	sbc $D3.b,S		; E3 D3
	adc ($73.b,S),Y		; 73 73
	sbc $FF9FFF.l,X		; FF FF 9F FF
	and $1F9FEF.l		; 2F EF 9F 1F
	sbc $3C2C3F.l,X		; FF 3F 2C 3C
	inx		; E8
	sed		; F8
	brk $00.b		; 00 00
	.db $10, $10		; 10 10
	brk $10.b		; 00 10
	.db $30, $B0		; 30 B0
	.db $80, $C0		; 80 C0
	ldy #$A0.b		; A0 A0
	bit $D8CF.w		; 2C CF D8
	cmp [$00.b]		; C7 00
	sbc $10EF10.l,X		; FF 10 EF 10
	sbc $004FB0.l		; EF B0 4F 00
	and $FF9FE0.l,X		; 3F E0 9F FF
	brk $FF.b		; 00 FF
	brk $E8.b		; 00 E8
	inc A		; 1A
	cpx #$20.b		; E0 20
	cpy #$10.b		; C0 10
	lda $33.b,S		; A3 33
	sta ($B9.b,X)		; 81 B9
	ora $FB.b,S		; 03 FB
	sbc $FEFEFF.l,X		; FF FF FE FE
	sbc ($FB.b,S),Y		; F3 FB
	.db $D0, $DC		; D0 DC
	sed		; F8
	.db $F0, $AB		; F0 AB
	clv		; B8
	bit #$F8.b		; 89 F8
	ora $FC.b,S		; 03 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $33201F.l		; 0F 1F 20 33
	.db $10, $3F		; 10 3F
	plp		; 28
	and $00CF88.l		; 2F 88 CF 00
	sta $00.b,S		; 83 00
	sbc $13FF00.l,X		; FF 00 FF 13
.ACCU 8
.INDEX 8
	sep #$3F		; E2 3F
	sbc $6FCF17.l		; EF 17 CF 6F
	sta [$CF.b],Y		; 97 CF
	and [$07.b],Y		; 37 07
	adc $1900FF.l,X		; 7F FF 00 19
	sta $C080.w,Y		; 99 80 C0
	.db $10, $10		; 10 10
	.db $10, $10		; 10 10
	sed		; F8
	sed		; F8
	sei		; 78
	sei		; 78
	adc $FCFF7F.l,X		; 7F 7F FF FC
	xba		; EB
	cmp [$40.b],Y		; D7 40
	plp		; 28
	.db $10, $00		; 10 00
	.db $10, $00		; 10 00
	sed		; F8
	brk $78.b		; 00 78
	.db $80, $7F		; 80 7F
	.db $80, $00		; 80 00
	brk $AA.b		; 00 AA
	sbc $D740.w,X		; FD 40 D7
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora $FC.b,S		; 03 FC
	cpy $03.b		; C4 03
	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $5C.b,S		; A3 5C
	eor $075F17.l		; 4F 17 5F 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	ora $0F1F1F.l,X		; 1F 1F 1F 0F
	ora [$07.b]		; 07 07
	cmp $7F583F.l,X		; DF 3F 58 7F
	sec		; 38
	adc $203F20.l,X		; 7F 20 3F 20
	ora $101F00.l,X		; 1F 00 1F 10
	ora $1C1710.l,X		; 1F 10 17 1C
	and $079F77.l,X		; 3F 77 9F 07
	lda $1FFF3F.l,X		; BF 3F FF 1F
	cmp $1FFF1F.l,X		; DF 1F FF 1F
	sbc $C0F71F.l,X		; FF 1F F7 C0
	ora $809F80.l,X		; 1F 80 9F 80
	cmp $E0DFE0.l,X		; DF E0 DF E0
	sbc $F0FFE0.l,X		; FF E0 FF F0
	sbc $FFEFF0.l,X		; FF F0 EF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	.db $80, $FF		; 80 FF
	cpy #$FF.b		; C0 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	adc $3F7FFF.l,X		; 7F FF 7F 3F
	sbc $00FF3F.l,X		; FF 3F FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $80, $80		; 80 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$C0.b		; C0 C0
	cpy #$FF.b		; C0 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	lda $FEFF3F.l,X		; BF 3F FF FE
	ora ($FC.b,X)		; 01 FC
	ora $FC.b,S		; 03 FC
	ora $FC.b,S		; 03 FC
	ora $FC.b,S		; 03 FC
	ora $FC.b,S		; 03 FC
	ora $FD.b,S		; 03 FD
	cop $F9.b		; 02 F9
	cop $FF.b		; 02 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $01FFFB.l,X		; FF FB FF 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	ora [$02.b]		; 07 02
	ora [$FE.b]		; 07 FE
	sbc $FCFFFC.l,X		; FF FC FF FC
	sbc $FCFFFC.l,X		; FF FC FF FC
	sbc $F8FFFC.l,X		; FF FC FF F8
	sbc $F1FBFC.l,X		; FF FC FB F1
	adc [$6E.b]		; 67 6E
	plp		; 28
	ror $23A0.w,X		; 7E A0 23
	eor ($B1.b)		; 52 B1
	.db $80, $37		; 80 37
	sbc $F3.b,S		; E3 F3
	pea $7AF9.w		; F4 F9 7A
	.db $D0, $86		; D0 86
	pha		; 48
	.db $80, $50		; 80 50
	.db $90, $20		; 90 20
	sta ($F2.b)		; 92 F2
	cli		; 58
	sta $84080C.l,X		; 9F 0C 08 84
	stx $83.b		; 86 83
	eor $BF1EFE.l,X		; 5F FE 1E BF
	stz $E33F.w,X		; 9E 3F E3
	ldx $B6F3.w,Y		; BE F3 B6
	jmp $0BA8.w		; 4C A8 0B
	jsr ($7F85.w,X)		; FC 85 7F
	and ($87.b),Y		; 31 87
	adc $9F7F87.l		; 6F 87 7F 9F
	sbc $FD1D.w,X		; FD 1D FD
	ora $07F8.w,X		; 1D F8 07
	adc $02790B.l,X		; 7F 0B 79 02
	adc ($2D.b)		; 72 2D
	bit $1714.w,X		; 3C 14 17
	asl $E1.b,X		; 16 E1
	.db $30, $D1		; 30 D1
	eor #$B3.b		; 49 B3
	phk		; 4B
	xba		; EB
	ora $028BAB.l,X		; 1F AB 8B 02
	rol $1C15.w		; 2E 15 1C
	ora $1D0C7D.l,X		; 1F 7D 0C 1D
	adc [$16.b],Y		; 77 16
	bit $36.b,X		; 34 36
	jsr $F424.w		; 20 24 F4
	.db $50, $72		; 50 72
	inc $F36B.w,X		; FE 6B F3
	phd		; 0B
	txy		; 9B
	ldx $BF1F.w		; AE 1F BF
	and [$FE.b],Y		; 37 FE
	and $3FB8.w,Y		; 39 B8 3F
	cpy $F25F.w		; CC 5F F2
	sbc $E9FEA0.l,X		; FF A0 FE E9
	sbc $86EECC.l,X		; FF CC EE 86
	inc $F481.w,X		; FE 81 F4
	cmp $7C4FF8.l		; CF F8 4F 7C
	ora ($F3.b,X)		; 01 F3
	phd		; 0B
	inc $7B04.w,X		; FE 04 7B
	sta ($BD.b,X)		; 81 BD
	cmp [$B6.b]		; C7 B6
	cpy #$F0.b		; C0 F0
	cmp $DBC0.w,Y		; D9 C0 DB
	dec $0706.w		; CE 06 07
	ora $07.b		; 05 07
	sta [$06.b]		; 87 06
	cop $06.b		; 02 06
	eor ($01.b,X)		; 41 01
	ora $1B3C01.l		; 0F 01 3C 1B
	and [$13.b],Y		; 37 13
	php		; 08
	ora #$0C.b		; 09 0C
	tsb $8383.w		; 0C 83 83
	cop $87.b		; 02 87
	eor $C7.b,S		; 43 C7
	ora $2BC9.w		; 0D C9 2B
	sbc $ED2D.w		; ED 2D ED
	ora $F00BF0.l		; 0F F0 0B F0
	sty $78.b		; 84 78
	sty $7C.b		; 84 7C
	cmp $3F.b,S		; C3 3F
	cpy #$36.b		; C0 36
	cpx $ED1A.w		; EC 1A ED
	tsa		; 3B
	sty $F4.b,X		; 94 F4
	sta $A3.b,X		; 95 A3
	ora ($9D.b),Y		; 11 9D
	rol $AE5B.w,X		; 3E 5B AE
	eor $08.b,S		; 43 08
	ora [$93.b]		; 07 93
	rti		; 40

	cmp $C02028.l,X		; DF 28 20 C0
	stz $11.b		; 64 11
	.db $42, $80		; 42 80
	pei ($86.b)		; D4 86
	cpy $C882.w		; CC 82 C8
	brk $3B.b		; 00 3B
	lda [$DF.b]		; A7 DF
	ora $15EC14.l,X		; 1F 14 EC 15
	lda $10.b,X		; B5 10
	lda ($FE.b),Y		; B1 FE
	ror $FEFE.w,X		; 7E FE FE
	clc		; 18
	jsr ($DCEC.w,X)		; FC EC DC
	sed		; F8
	sed		; F8
	sbc $5F.b,S		; E3 5F
	dec A		; 3A
	lsr $FE9E.w		; 4E 9E FE
	jmp $C02D.w		; 4C 2D C0
	lda $2F40.w		; AD 40 2F
	.db $10, $03		; 10 03
	clc		; 18
	ora [$86.b],Y		; 17 86
	jsl $E938D7.l		; 22 D7 38 E9
	.db $90, $48		; 90 48
	inc $79.b		; E6 79
	inx		; E8
	asl $07F8.w		; 0E F8 07
	sbc $E8FF.w,Y		; F9 FF E8
	eor $FD.b,S		; 43 FD
	jsr ($9682.w,X)		; FC 82 96
	brk $27.b		; 00 27
	.db $80, $38		; 80 38
	.db $90, $08		; 90 08
	brk $0A.b		; 00 0A
	tsb $17.b		; 04 17
	.db $10, $5D		; 10 5D
	eor $9B.b		; 45 9B
	ror $9079.w,X		; 7E 79 90
	inx		; E8
	inc $19.b,X		; F6 19
	inc $08F6.w,X		; FE F6 08
	inc $0E.b,X		; F6 0E
	sbc ($F8.b),Y		; F1 F8
	mvp $7C,$BB		; 44 BB 7C
	sta $90.b,S		; 83 90
	adc $385FE0.l		; 6F E0 5F 38
	eor [$F9.b],Y		; 57 F9
	sbc [$FD.b],Y		; F7 FD
	sbc ($F7.b,S),Y		; F3 F7
	sbc $5B013C.l,X		; FF 3C 01 5B
	lda $EA.b		; A5 EA
	dec A		; 3A
	cmp $A2.b,X		; D5 A2
	.db $50, $2B		; 50 2B
	rol $E111.w,X		; 3E 11 E1
	sta $B0.b,S		; 83 B0
	plp		; 28
	eor $7E.b,S		; 43 7E
	adc [$02.b]		; 67 02
	jsr $9E02.w		; 20 02 9E
	.db $80, $13		; 80 13
	brk $02.b		; 00 02
	ora [$5F.b]		; 07 5F
	brk $CF.b		; 00 CF
	php		; 08
	sbc $E73EFF.l,X		; FF FF 3E E7
	cld		; D8
	ora [$4D.b]		; 07 4D
	rol $40.b		; 26 40
	lda $3E.b,S		; A3 3E
	ora [$63.b]		; 07 63
	eor $F0.b,S		; 43 F0
	jsr $7E01.w		; 20 01 7E
	adc [$1A.b]		; 67 1A
	brk $FF.b		; 00 FF
	clc		; 18
	sbc $C6FF1C.l,X		; FF 1C FF C6
	xce		; FB
	.db $82, $FC, $C0		; 82 FC C0
	sbc $678383.l,X		; FF 83 83 67
	rtl		; 6B

	adc [$7B.b]		; 67 7B
	and [$18.b]		; 27 18
	xba		; EB
	stx $9F.b,Y		; 96 9F
	lda $46.b,S		; A3 46
	rtl		; 6B

	sta [$23.b],Y		; 97 23
	adc $3ED76A.l,X		; 7F 6A D7 3E
	tya		; 98
	adc $FE.b,S		; 63 FE
	ora [$7A.b]		; 07 7A
	sta ($BB.b,X)		; 81 BB
	sty $A2.b		; 84 A2
	cpy $C4BB.w		; CC BB C4
	sbc $B49F.w,X		; FD 9F B4
	tda		; 7B
	sbc $9E1D.w,Y		; F9 1D 9E
	adc $647D91.l,X		; 7F 91 7D 64
	jsr ($3C7D.w,X)		; FC 7D 3C
	ldy $88FC.w		; AC FC 88
	.db $82, $59, $86		; 82 59 86
	clc		; 18
	.db $82, $7E, $86		; 82 7E 86
	adc $3C86.w,Y		; 79 86 3C
	sta $2C.b,S		; 83 2C
	sta $B4.b,S		; 83 B4
	sta $20.b,S		; 83 20
	plb		; AB
	mvp $99,$DF		; 44 DF 99
	eor $1A.b,X		; 55 1A
	lda $06EDB6.l,X		; BF B6 ED 06
	plx		; FA
	cmp ($7E.b,X)		; C1 7E
	.db $30, $2F		; 30 2F
	eor $EF93.w,X		; 5D 93 EF
	eor [$8D.b],Y		; 57 8D
	sbc ($54.b)		; F2 54
	lda ($25.b),Y		; B1 25
	ora ($03.b)		; 12 03
	tsb $C0.b		; 04 C0
	sta ($B2.b,X)		; 81 B2
	ora $6D79.w,X		; 1D 79 6D
	tyx		; BB
	adc $4B5394.l,X		; 7F 94 53 4B
	sbc $7F86.w,X		; FD 86 7F
	ora $FD.b		; 05 FD
	sta ($BF.b,X)		; 81 BF
	and ($BD.b)		; 32 BD
	and ($BE.b,X)		; 21 BE
	ora ($CC.b,S),Y		; 13 CC
	pld		; 2B
	ldy $9AAD.w		; AC AD 9A
	and $C8.b,S		; 23 C8
	tsb $FA.b		; 04 FA
	sta ($FE.b,X)		; 81 FE
	sta $0F5D.w,X		; 9D 5D 0F
	.db $F0, $0C		; F0 0C
	.db $B0, $68		; B0 68
	.db $90, $69		; 90 69
	cmp $5B.b,X		; D5 5B
	sta [$45.b]		; 87 45
	sec		; 38
	sta ($FC.b,X)		; 81 FC
	sbc $DB.b		; E5 DB
	cpx #$FF.b		; E0 FF
	cmp $CF.b,S		; C3 CF
	txy		; 9B
	xce		; FB
	ror A		; 6A
	and $82C778.l		; 2F 78 C7 82
	eor [$02.b]		; 47 02
	ora $C0.b,S		; 03 C0
	and [$E0.b]		; 27 E0
	.db $F0, $80		; F0 80
	sbc ($98.b,S),Y		; F3 98
	tya		; 98
	plp		; 28
	jsr ($FC40.w,X)		; FC 40 FC
	dec $FE.b		; C6 FE
	sta ($6E.b)		; 92 6E
	ora $DF.b		; 05 DF
	cpx #$0F.b		; E0 0F
	cmp $0C.b,S		; C3 0C
	tya		; 98
	adc $782B6C.l		; 6F 6C 2B 78
	eor $46.b,S		; 43 46
	and $FD02.w,Y		; 39 02 FD
	dec $3A.b		; C6 3A
	ldx #$80.b		; A2 80
	eor $0F.b,S		; 43 0F
	cmp $86.b,S		; C3 86
	stz $06.b,X		; 74 06
	ror $AA.b		; 66 AA
	.db $50, $06		; 50 06
	rts		; 60

	ror $40.b,X		; 76 40
	ror $CBC7.w,X		; 7E C7 CB
	lda $C58BDB.l		; AF DB 8B C5
	lda $2943.w		; AD 43 29
	ldx $B52F.w		; AE 2F B5
	cmp [$09.b],Y		; D7 09
	txs		; 9A
	ora $C95BF2.l,X		; 1F F2 5B C9
	inc $F5.b,X		; F6 F5
	adc $57.b,X		; 75 57
	sbc [$7C.b]		; E7 7C
	stx $73.b,Y		; 96 73
	tyx		; BB
	adc [$7F.b],Y		; 77 7F
	ply		; 7A
	adc $07.b,X		; 75 07
	sbc $2C.b,S		; E3 2C
	cmp $0F.b,S		; C3 0F
	cmp $BA.b,S		; C3 BA
	eor ($08.b,X)		; 41 08
	adc [$4A.b]		; 67 4A
	and $B6.b,X		; 35 B6
	and ($F0.b,X)		; 21 F0
	ror $22F2.w		; 6E F2 22
	adc [$E0.b]		; 67 E0
	cmp ($81.b)		; D2 81
	ora $021002.l,X		; 1F 02 10 02
	asl $7E01.w,X		; 1E 01 7E
	eor ($8C.b,X)		; 41 8C
	ora $72.b,S		; 03 72
	stz $9B79.w		; 9C 79 9B
	stx $A37F.w		; 8E 7F A3
	cmp $9EF568.l,X		; DF 68 F5 9E
	sta $7CFFFC.l,X		; 9F FC FF 7C
	sta $6CEE60.l		; 8F 60 EE 6C
	nop		; EA
	jmp $DF9FFD.l		; 5C FD 9F DF
	.db $70, $DD		; 70 DD
	rep #$C2		; C2 C2
	cpy #$C2.b		; C0 C2
	rti		; 40

	.db $F0, $40		; F0 40
	eor ($80.b),Y		; 51 80
	sta $5E81.w,X		; 9D 81 5E
	ora $BD.b,S		; 03 BD
	phd		; 0B
	.db $50, $02		; 50 02
	lda $30BD42.l,X		; BF 42 BD 30
	ora $017B03.l		; 0F 03 7B 01
	sbc $FE00.w,X		; FD 00 FE
	ora ($FF.b,X)		; 01 FF
	ora ($FF.b,X)		; 01 FF
	cop $FC.b		; 02 FC
	phd		; 0B
	sbc $83F608.l,X		; FF 08 F6 83
	jsr ($FE01.w,X)		; FC 01 FE
	asl $FD.b		; 06 FD
	ora $FE.b,S		; 03 FE
	ora ($FE.b,X)		; 01 FE
	asl A		; 0A
	sbc $F609.w,X		; FD 09 F6
	ora $80FE.w,Y		; 19 FE 80
	sta $00.b,S		; 83 00
	ora ($06.b,X)		; 01 06
	ora [$02.b]		; 07 02
	ora $00.b,S		; 03 00
	ora $0A.b,S		; 03 0A
	php		; 08
	php		; 08
	ora #$08.b		; 09 08
	ora $7F87.w,Y		; 19 87 7F
	ora $FF.b,S		; 03 FF
	ora $FB.b		; 05 FB
	ora $FD.b,S		; 03 FD
	ora $FD.b,S		; 03 FD
	ora #$F7.b		; 09 F7
	ora ($F7.b,X)		; 01 F7
	clc		; 18
	sbc $3F7F7F.l		; EF 7F 7F 3F
	and $FFFBFB.l,X		; 3F FB FB FF
	sbc $BCEEEE.l,X		; FF EE EE BC
	ldy $DDDD.w,X		; BC DD DD
	ora $58.b		; 05 58
	adc $C03F80.l,X		; 7F 80 3F C0
	xce		; FB
	tsb $FF.b		; 04 FF
	brk $EE.b		; 00 EE
	ora ($BC.b),Y		; 11 BC
	rti		; 40

	cmp $7F21.w,X		; DD 21 7F
	.db $F0, $00		; F0 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FF7758.l,X		; FF 58 77 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $4F8FF0.l,X		; FF F0 8F 4F
	eor $238F8F.l		; 4F 8F 8F 23
	and $A7.b,S		; 23 A7
	lda $27.b,S		; A3 27
	and [$19.b]		; 27 19
	ora ($81.b),Y		; 11 81
	ora ($7F.b),Y		; 11 7F
	ora ($40.b,X)		; 01 40
	ora $200F88.l		; 0F 88 0F 20
	ora $A4.b,S		; 03 A4
	ora [$20.b]		; 07 20
	ora [$1C.b]		; 07 1C
	ora ($EC.b,S),Y		; 13 EC
	adc ($FC.b,S),Y		; 73 FC
	ora $0F.b		; 05 0F
	sbc $07FF07.l,X		; FF 07 FF 07
	xce		; FB
	ora [$FB.b]		; 07 FB
	ora [$FF.b]		; 07 FF
	phd		; 0B
	sbc [$83.b],Y		; F7 83
	adc $F0FF05.l		; 6F 05 FF F0
	sbc [$F0.b],Y		; F7 F0
	sbc $F8FFF8.l,X		; FF F8 FF F8
	xce		; FB
	sed		; F8
	xce		; FB
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	.db $62, $9D, $04		; 62 9D 04
	sbc $F7E0EF.l,X		; FF EF E0 F7
	sed		; F8
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora $FF07FF.l		; 0F FF 07 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	.db $F0, $F0		; F0 F0
	sed		; F8
	sed		; F8
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0FEF1F.l,X		; FF 1F EF 0F
	sbc [$00.b],Y		; F7 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FDFF00.l,X		; FF 00 FF FD
	cop $F6.b		; 02 F6
	php		; 08
	tas		; 1B
	ora ($FB.b,S),Y		; 13 FB
	xce		; FB
	sbc ($FB.b,S),Y		; F3 FB
	xba		; EB
	xba		; EB
	sbc $E3.b,S		; E3 E3
	sbc $FFFFEC.l,X		; FF EC FF FF
	inc $08FF.w,X		; FE FF 08
	tda		; 7B
	brk $F3.b		; 00 F3
	php		; 08
	sbc ($08.b,S),Y		; F3 08
	sbc ($10.b,S),Y		; F3 10
	sbc ($13.b,S),Y		; F3 13
	sbc $090706.l,X		; FF 06 07 09
	phd		; 0B
	sbc [$73.b],Y		; F7 73
	sbc $F3FFFB.l,X		; FF FB FF F3
	sbc $F3EFFB.l,X		; FF FB EF F3
	sbc $FFFCFF.l,X		; FF FF FC FF
	sbc $FE.b,X		; F5 FE
	pla		; 68
	sta $00FF08.l,X		; 9F 08 FF 00
	sbc [$18.b],Y		; F7 18
	sbc [$00.b]		; E7 00
	sbc $FFFF13.l		; EF 13 FF FF
	ror $A2F3.w,X		; 7E F3 A2
	cpx $C9.b		; E4 C9
	sed		; F8
	adc $6368.w		; 6D 68 63
	tax		; AA
	cmp $FCF70A.l,X		; DF 0A F7 FC
	ora $82.b		; 05 82
	sta ($46.b,X)		; 81 46
	brk $A8.b		; 00 A8
	ora $1399.w,Y		; 19 99 13
	sta $453A17.l,X		; 9F 17 3A 45
	sbc $03FC.w,X		; FD FC 03
	brk $83.b		; 00 83
	sbc $EED9.w,X		; FD D9 EE
	lda [$F9.b]		; A7 F9
	ora ($77.b),Y		; 11 77
	sta ($E7.b,S),Y		; 93 E7
	brk $FF.b		; 00 FF
	sbc $F903.w,X		; FD 03 F9
	sbc $F780FD.l,X		; FF FD 80 F7
	sta ($67.b,X)		; 81 67
	asl $19F0.w		; 0E F0 19
	sed		; F8
	sta $3F.b,S		; 83 3F
	ora ($FD.b,X)		; 01 FD
	inc $0003.w,X		; FE 03 00
	jmp $BBDA.w		; 4C DA BB
	eor $CE70.w		; 4D 70 CE
	cop $8C.b		; 02 8C
	tsb $1081.w		; 0C 81 10
	stz $1103.w		; 9C 03 11
	rol $AFCA.w		; 2E CA AF
	rol $57.b,X		; 36 57
	eor ($E5.b,X)		; 41 E5
	ldy $FFC4.w,X		; BC C4 FF
	sta $F897B0.l		; 8F B0 97 F8
	sta $FB68.w,Y		; 99 68 FB
	bit $96.b		; 24 96
	adc $28.b,X		; 75 28
	ror $E4.b,X		; 76 E4
	nop		; EA
	cpy $8B.b		; C4 8B
	.db $80, $CF		; 80 CF
	sta $99.b		; 85 99
	sta $FD9F.w,X		; 9D 9F FD
	jsr ($2C17.w,X)		; FC 17 2C
	stx $C9.b,Y		; 96 C9
	jsr $30BD.w		; 20 BD 30
	jsr ($FC73.w,X)		; FC 73 FC
	cpx #$FE.b		; E0 FE
	pla		; 68
	.db $70, $E4		; 70 E4
	and $E8.b,S		; 23 E8
	.db $80, $E0		; 80 E0
	rol $372F.w		; 2E 2F 37
	xce		; FB
	sbc $FFFF.w,Y		; F9 FF FF
	ror $46.b		; 66 46
	.db $80, $FF		; 80 FF
	jmp ($BF53.w,X)		; 7C 53 BF
	ldy #$BE.b		; A0 BE
	eor ($1A.b),Y		; 51 1A
	inc A		; 1A
	rol A		; 2A
	cop $00.b		; 02 00
	brk $07.b		; 00 07
	jsr $7F00.w		; 20 00 7F
	cld		; D8
	and ($70.b,X)		; 21 70
	sec		; 38
	ora $2D3DEE.l,X		; 1F EE 3D 2D
	inc $C0BF.w		; EE BF C0
	sbc $80FEDE.l,X		; FF DE FE 80
	sbc $383FA4.l,X		; FF A4 3F 38
	sbc [$BE.b],Y		; F7 BE
	eor ($FD.b,X)		; 41 FD
	sbc $7FC213.l		; EF 13 C2 7F
	cpy #$41.b		; C0 41
	rti		; 40

	.db $80, $80		; 80 80
	sec		; 38
	cpy #$DF.b		; C0 DF
	.db $D0, $7F		; D0 7F
	.db $F0, $F7		; F0 F7
	.db $F0, $FF		; F0 FF
	sed		; F8
	xce		; FB
	sed		; F8
	eor $F10F1C.l		; 4F 1C 0F F1
	mvp $2F,$FF		; 44 FF 2F
	ora $078F0F.l		; 0F 0F 8F 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora $B3.b,S		; 03 B3
	and ($02.b,S),Y		; 33 02
	sbc ($00.b)		; F2 00
	sbc $00E0E0.l,X		; FF E0 E0 00
	.db $F0, $00		; F0 00
	.db $F0, $00		; F0 00
	sed		; F8
	tsb $FC.b		; 04 FC
	.db $70, $0C		; 70 0C
	ora $FF00FF.l		; 0F FF 00 FF
	cpx #$FF.b		; E0 FF
	.db $F0, $8F		; F0 8F
	.db $F0, $0F		; F0 0F
	sed		; F8
	ora [$FC.b]		; 07 FC
	ora $FC.b,S		; 03 FC
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $1A.b		; 00 1A
	sbc ($31.b,X)		; E1 31
	sbc $9051.w,Y		; F9 51 90
	tda		; 7B
	clc		; 18
	tsa		; 3B
	sbc $7FDE.w,X		; FD DE 7F
	tsb $A3FE.w		; 0C FE A3
	lda $050F.w,X		; BD 0F 05
	and [$1F.b]		; 27 1F
	ror $85C7.w,X		; 7E C7 85
	adc $BD.b,X		; 75 BD
	tad		; 5B
	adc $FE1F9F.l,X		; 7F 9F 1F FE
	sbc $10651C.l,X		; FF 1C 65 10
	cmp [$1E.b],Y		; D7 1E
	lsr $75FE.w		; 4E FE 75
	inc $4419.w,X		; FE 19 44
	adc $E09E60.l,X		; 7F 60 9E E0
	asl $EB21.w,X		; 1E 21 EB
	sbc $F0E7C1.l		; EF C1 E7 F0
	cmp [$80.b]		; C7 80
	adc $FD.b		; 65 FD
	xce		; FB
	ora $1F9FBF.l,X		; 1F BF 9F 1F
	asl $40DF.w,X		; 1E DF 40
	sta $BD.b		; 85 BD
	dec $A1.b		; C6 A1
	cmp $A5.b,S		; C3 A5
	rep #$42		; C2 42
	sta ($B5.b),Y		; 91 B5
	and $5A.b		; 25 5A
	jmp ($F034.w)		; 6C 34 F0
	cmp $F887.w		; CD 87 F8
	cmp $F7.b,S		; C3 F7
	cpy $C1F6.w		; CC F6 C1
	cpx #$81.b		; E0 81
	cmp ($04.b)		; D2 04
	tsa		; 3B
	asl $F9.b,X		; 16 F9
	inc $10C2.w,X		; FE C2 10
	pea $E71F.w		; F4 1F E7
	ora $E205E2.l		; 0F E2 05 E2
	ora ($D5.b,X)		; 01 D5
	ora ($5A.b),Y		; 11 5A
	adc $E0CF38.l		; 6F 38 CF E0
	sbc $F4F4EC.l,X		; FF EC F4 F4
	sbc ($FC.b)		; F2 FC
	plx		; FA
	sbc $E9FF.w,X		; FD FF E9
	sbc $33D2A3.l,X		; FF A3 D2 33
	sed		; F8
	sbc [$5A.b]		; E7 5A
	lda [$AB.b],Y		; B7 AB
	inc $FB.b		; E6 FB
	cmp $A8.b,X		; D5 A8
	txy		; 9B
	lda $D3.b		; A5 D3
	sbc $507F80.l		; EF 80 7F 50
	and $BBADD2.l		; 2F D2 AD BB
	rti		; 40

	tya		; 98
	stz $BC.b		; 64 BC
	eor ($5D.b,X)		; 41 5D
.INDEX 8
	sep #$5D		; E2 5D
	ldy #$6B.b		; A0 6B
	ora ($FF.b,S),Y		; 13 FF
	ora [$D5.b]		; 07 D5
	sbc $FC2C.w,X		; FD 2C FC
	tas		; 1B
	stz $9F2B.w,X		; 9E 2B 9F
	dec $FF.b		; C6 FF
	dec $68FC.w		; CE FC 68
	sbc $9DFF28.l,X		; FF 28 FF 9D
	txa		; 8A
	cld		; D8
	ora $9A.b,S		; 03 9A
	adc $9D.b,S		; 63 9D
	rts		; 60

	adc $233C20.l,X		; 7F 20 3C 23
	sei		; 78
	ora [$F8.b],Y		; 17 F8
	ora [$28.b]		; 07 28
	pla		; 68
	sta [$88.b]		; 87 88
	.db $B0, $7F		; B0 7F
	inc $1FFF.w,X		; FE FF 1F
	sbc $00F0BC.l		; EF BC F0 00
	sbc $9FFF00.l,X		; FF 00 FF 9F
	rol $F1.b,X		; 36 F1
	jsr ($C0B0.w,X)		; FC B0 C0
	.db $80, $00		; 80 00
	tas		; 1B
	.db $F0, $A3		; F0 A3
	jmp $FFFF.w		; 4C FF FF
	sbc $CF76FF.l,X		; FF FF 76 CF
	sbc ($EF.b)		; F2 EF
	.db $80, $EF		; 80 EF
	ror $1401.w,X		; 7E 01 14
	sed		; F8
	eor ($4C.b,S),Y		; 53 4C
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sta $E8E906.l		; 8F 06 E9 E8
	cpx #$DF.b		; E0 DF
	brk $FF.b		; 00 FF
	sed		; F8
	sbc [$40.b],Y		; F7 40
	lda $00FF00.l,X		; BF 00 FF 00
	sbc $383C47.l,X		; FF 47 3C 38
	cmp ($10.b),Y		; D1 10
	sbc $F01C.w,X		; FD 1C F0
	txs		; 9A
	adc ($D8.b,X)		; 61 D8
	lda $68.b,S		; A3 68
	dec $0A.b,X		; D6 0A
	sbc ($C1.b),Y		; F1 C1
	cpx #$2C.b		; E0 2C
	sbc #$1E.b		; E9 1E
	ora ($14.b,X)		; 01 14
	phd		; 0B
	eor $AC.b,X		; 55 AC
	ora [$64.b],Y		; 17 64
	lda $BDCEB8.l		; AF B8 CE BD
	dec $FD.b		; C6 FD
	dec A		; 3A
	xba		; EB
	asl $00FF.w,X		; 1E FF 00
	sbc $87FB85.l,X		; FF 85 FB 87
	tda		; 7B
	adc $F30DBF.l		; 6F BF 0D F3
	lda $1E.b		; A5 1E
	adc #$7D.b		; 69 7D
	ora $17E0.w		; 0D E0 17
	cpx #$F1.b		; E0 F1
	jsr $E033.w		; 20 33 E0
	rol $43E8.w		; 2E E8 43
	.db $80, $A2		; 80 A2
	phb		; 8B
	cpx $C05B.w		; EC 5B C0
	.db $80, $DE		; 80 DE
	and ($01.b),Y		; 31 01
	ldx #$26.b		; A2 26
	sbc ($D4.b,X)		; E1 D4
	ora $50.b		; 05 50
	sta ($9E.b,X)		; 81 9E
	adc $F1B797.l,X		; 7F 97 B7 F1
	eor [$EF.b],Y		; 57 EF
	ora $C60FFE.l,X		; 1F FE 0F C6
	pld		; 2B
	and $569FDE.l		; 2F DE 9F 56
	tax		; AA
	sbc $60F0F3.l		; EF F3 F0 60
	inc $21.b,X		; F6 21
	.db $F0, $AA		; F0 AA
	sbc $F2.b		; E5 F2
	cmp $76FA9E.l,X		; DF 9E FA 76
	ror $102F.w,X		; 7E 2F 10
	.db $F0, $CF		; F0 CF
	dec $49.b,X		; D6 49
	cpx #$0F.b		; E0 0F
	cpx #$12.b		; E0 12
	cpy $00.b		; C4 00
	lda ($1F.b,X)		; A1 1F
	cmp $0497.w,Y		; D9 97 04
	eor $AAF778.l		; 4F 78 F7 AA
	ora [$1E.b]		; 07 1E
	sta ($7D.b,X)		; 81 7D
	sta [$71.b]		; 87 71
	sta $00FF20.l		; 8F 20 FF 00
	sbc $74BFF4.l,X		; FF F4 BF 74
	xce		; FB
	dec $5B.b,X		; D6 5B
	cpx $FB.b		; E4 FB
	ora #$FD.b		; 09 FD
	ora $02DC38.l		; 0F 38 DC 02
	.db $F0, $0B		; F0 0B
	stz $FC.b,X		; 74 FC
	jmp ($7A8C.w,X)		; 7C 8C 7A
	dec $7EF8.w,X		; DE F8 7E
	adc $38F7.w,Y		; 79 F7 38
	sbc $002300.l,X		; FF 00 23 00
	ora $843BCC.l		; 0F CC 3B 84
	tda		; 7B
	cop $FD.b		; 02 FD
	asl $F9.b		; 06 F9
	ora ($70.b,X)		; 01 70
	ora $FCDC38.l		; 0F 38 DC FC
	sed		; F8
	.db $F0, $11		; F0 11
	sbc $F11EE1.l		; EF E1 1E F1
	asl $8E60.w		; 0E 60 8E
	ora ($FE.b,X)		; 01 FE
	ora $FA.b,S		; 03 FA
	cop $FC.b		; 02 FC
	ora $F8.b,S		; 03 F8
	ora ($E6.b,X)		; 01 E6
	sbc ($FE.b,X)		; E1 FE
	sbc ($EE.b,X)		; E1 EE
	adc ($7E.b,S),Y		; 73 7E
	ora $FE.b,S		; 03 FE
	ora [$FC.b]		; 07 FC
	ora $FC.b,S		; 03 FC
	ora [$F8.b]		; 07 F8
	ora ($18.b),Y		; 11 18
	cpx #$F1.b		; E0 F1
	.db $F0, $F1		; F0 F1
	adc ($F3.b)		; 72 F3
	cop $03.b		; 02 03
	asl $05.b		; 06 05
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $E7.b		; 00 E7
	.db $F0, $FF		; F0 FF
	cpx #$EF.b		; E0 EF
	adc ($6D.b)		; 72 6D
	cop $FD.b		; 02 FD
	tsb $FB.b		; 04 FB
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	.db $F0, $00		; F0 00
	adc $7900.w,Y		; 79 00 79
	brk $FF.b		; 00 FF
	brk $F2.b		; 00 F2
	ora ($F3.b,X)		; 01 F3
	asl $EC.b		; 06 EC
	ora ($FF.b,X)		; 01 FF
	jsr $00FF.w		; 20 FF 00
	sbc $03FD01.l,X		; FF 01 FD 03
	sbc $03FE03.l,X		; FF 03 FE 03
	sbc $1DEE00.l,X		; FF 00 EE 1D
	sbc $FF001C.l,X		; FF 1C 00 FF
	ora ($FF.b,X)		; 01 FF
	ora ($FF.b,X)		; 01 FF
	ora $FF.b,S		; 03 FF
	cop $FF.b		; 02 FF
	tsb $FB.b		; 04 FB
	tsb $3CFF.w		; 0C FF 3C
	sbc $01FF00.l,X		; FF 00 FF 01
	sbc $03FD03.l,X		; FF 03 FD 03
	sbc $02FF02.l,X		; FF 02 FF 02
	sbc $EF1C.w,X		; FD 1C EF
	trb $66DF.w		; 1C DF 66
	trb $D828.w		; 1C 28 D8
	pha		; 48
	clv		; B8
	cpy #$38.b		; C0 38
	sta ($70.b),Y		; 91 70
	asl $B0FE.w,X		; 1E FE B0
	.db $70, $3F		; 70 3F
	cpy #$E6.b		; C0 E6
	tas		; 1B
	and $B04FD0.l		; 2F D0 4F B0
	cmp [$30.b]		; C7 30
	stx $1B61.w		; 8E 61 1B
	cpx #$8F.b		; E0 8F
	rts		; 60

	ora $FF03FF.l,X		; 1F FF 03 FF
	ora $780FF0.l		; 0F F0 0F 78
	ora [$F8.b]		; 07 F8
	ora $F305F1.l,X		; 1F F1 05 F3
	phd		; 0B
	.db $D0, $1F		; D0 1F
	cpx #$07.b		; E0 07
	plx		; FA
	brk $7F.b		; 00 7F
	brk $F7.b		; 00 F7
	brk $F7.b		; 00 F7
	ora ($FE.b),Y		; 11 FE
	ora ($EC.b)		; 12 EC
	ora $DF1FFF.l		; 0F FF 1F DF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	clc		; 18
	sei		; 78
	asl $F927.w,X		; 1E 27 F9
	ora ($6D.b,X)		; 01 6D
	ora ($D8.b),Y		; 11 D8
	plp		; 28
	pea $0054.w		; F4 54 00
	sbc $C8FF00.l,X		; FF 00 FF C8
	and [$DE.b]		; 27 DE
	and $0207.w,Y		; 39 07 02
	sta [$16.b]		; 87 16
	cld		; D8
	sbc [$94.b],Y		; F7 94
	plb		; AB
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sta $29DE7F.l		; 8F 7F DE 29
	inc $EEFD.w,X		; FE FD EE
	sbc $802FD0.l,X		; FF D0 2F 80
	eor $80FF00.l,X		; 5F 00 FF 80
	sbc $08A06F.l,X		; FF 6F A0 08
	iny		; C8
	ora ($01.b,X)		; 01 01
	ora [$05.b]		; 07 05
	sbc $FF9FCF.l		; EF CF 9F FF
	inc $FA.b,X		; F6 FA
	cmp $A0FD.w,X		; DD FD A0
	cpx #$C2.b		; E0 C2
	.db $82, $80, $80		; 82 80 80
	.db $80, $80		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $E0.b		; 02 E0
	and $20D2.w,X		; 3D D2 20
	cmp $805D42.l,X		; DF 42 5D 80
	adc $007F80.l,X		; 7F 80 7F 00
	sbc $E4FF00.l,X		; FF 00 FF E4
	sbc $80FFC0.l,X		; FF C0 FF 80
	cmp $00BF40.l,X		; DF 40 BF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $03FF00.l,X		; FF 00 FF 03
	sbc $2F.b,S		; E3 2F
	cmp $3FFF5F.l,X		; DF 5F FF 3F
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EF7BBE.l,X		; FF BE 7B EF
	jmp.w [$FDFA]		; DC FA FD
	rol $1F3C.w,X		; 3E 3C 1F
	ora $001717.l,X		; 1F 17 17 00
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	ldx $26F2.w,Y		; BE F2 26
	xce		; FB
	asl $3D.b		; 06 3D
.INDEX 16
	rep #$1F		; C2 1F
	cpx #$E817.w		; E0 17 E8
	ora ($FF.b,X)		; 01 FF
	cop $FD.b		; 02 FD
	sta [$FB.b]		; 87 FB
	rol A		; 2A
	cmp $01FE02.l,X		; DF 02 FE 01
	sbc $FF00.w,X		; FD 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	sta $82.b,S		; 83 82
	phx		; DA
	nop		; EA
	xce		; FB
	xce		; FB
	jsr ($FFFE.w,X)		; FC FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFD.w,X		; FE FD FF
	stz $1F3D.w,X		; 9E 3D 1F
	sta ($A3.b,X)		; 81 A3
	ora ($01.b,X)		; 01 01
	brk $C0.b		; 00 C0
	cpx #$A080.w		; E0 80 A0
	pei ($24.b)		; D4 24
	cmp $62D11F.l		; CF 1F D1 62
	ror $FE9E.w		; 6E 9E FE
	ldx #$01FF.w		; A2 FF 01
	lda $60DF00.l,X		; BF 00 DF 60
	phb		; 8B
	.db $70, $10		; 70 10
	cpx #$B24C.w		; E0 4C B2
	ror $A291.w		; 6E 91 A2
	eor $7E81.w,X		; 5D 81 7E
	rti		; 40

	cmp $A0FF40.l,X		; DF 40 FF A0
	and $911F00.l,X		; 3F 00 1F 91
	ora $FEFF8E.l		; 0F 8E FF FE
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $6F9FFF.l,X		; FF FF 9F 6F
	cmp $60EFFF.l,X		; DF FF EF 60
	rts		; 60

	.db $80, $80		; 80 80
	.db $10, $10		; 10 10
	ora ($00.b,X)		; 01 00
	ora $04.b		; 05 04
	ora [$07.b]		; 07 07
	sbc $FDFCEE.l		; EF EE FC FD
	sta $007F00.l,X		; 9F 00 7F 00
	sbc $01FE10.l		; EF 10 FE 01
	xce		; FB
	ora ($F8.b,X)		; 01 F8
	brk $10.b		; 00 10
	ora ($02.b,X)		; 01 02
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($01.b,X)		; 01 01
	inc $FF00.w,X		; FE 00 FF
	brk $FE.b		; 00 FE
	cop $FD.b		; 02 FD
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FEFF.w,X		; FE FF FE
	inc $FBE1.w,X		; FE E1 FB
	and $1C.b,S		; 23 1C
	mvp $AC,$3F		; 44 3F AC
	ora ($E0.b,S),Y		; 13 E0
	ora $003FC0.l,X		; 1F C0 3F 00
	sbc $2EFF00.l,X		; FF 00 FF 2E
	ora ($FC.b)		; 12 FC
	and $B8.b,S		; 23 B8
	eor $70.b,S		; 43 70
	lda $C0EFC0.l		; AF C0 EF C0
	sbc $007F00.l,X		; FF 00 7F 00
	sbc $E0DD16.l,X		; FF 16 DD E0
	ora ($80.b,X)		; 01 80
	eor [$20.b]		; 47 20
	sta [$C0.b]		; 87 C0
	ora $003FC0.l,X		; 1F C0 3F 00
	sbc $18FF00.l,X		; FF 00 FF 18
	cpx #$FE3C.w		; E0 3C FE
	sec		; 38
	jsr ($F870.w,X)		; FC 70 F8
	cpy #$C0E0.w		; C0 E0 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	and ($2D.b,S),Y		; 33 2D
	asl $1F01.w,X		; 1E 01 1F
	.db $10, $09		; 10 09
	.db $10, $0A		; 10 0A
	cli		; 58
	eor $8839.w,X		; 5D 39 88
	rol $11FF.w		; 2E FF 11
	sbc $E59FCD.l,X		; FF CD 9F E5
	sbc $E1FFE1.l,X		; FF E1 FF E1
	sbc $A2.b,X		; F5 A2
	cmp ($E0.b,S),Y		; D3 E0
.ACCU 16
.INDEX 16
	rep #$F1		; C2 F1
	ora #$DFE6.w		; 09 E6 DF
	cpx #$E09F.w		; E0 9F E0
	sbc $F9FFE0.l		; EF E0 FF F9
	xce		; FB
	sbc ($44.b,S),Y		; F3 44
	sta [$C3.b],Y		; 97 C3
	inc $F6.b,X		; F6 F6
	ora $1FDF3F.l,X		; 1F 3F DF 1F
	sta $17FF0F.l,X		; 9F 0F FF 17
	sbc $9FAC56.l		; EF 56 AC 9F
	jmp ($89EA.w)		; 6C EA 89
	sed		; F8
	inc $36.b,X		; F6 36
	tyx		; BB
	phy		; 5A
	sta [$B1.b]		; 87 B1
	.db $F0, $45		; F0 45
	tsb $41.b		; 04 41
	brk $EB.b		; 00 EB
	phb		; 8B
	nop		; EA
.INDEX 16
	rep #$D8		; C2 D8
	dec $B8.b		; C6 B8
	sbc $C1FE.w		; ED FE C1
	jmp ($BFCD.w,X)		; 7C CD BF
	sbc $26FFBF.l,X		; FF BF FF 26
	adc $27F4.w		; 6D F4 27
	sta [$33.b]		; 87 33
	ldy #$C643.w		; A0 43 C6
	adc $FFBFBE.l		; 6F BE BF FF
	xce		; FB
	sbc $FEF5FF.l,X		; FF FF F5 FE
	rol $FD.b		; 26 FD
	eor ($F9.b),Y		; 51 F9
	.db $F0, $BE		; F0 BE
	jmp.w [$00F0]		; DC F0 00
	jmp $FF01.w		; 4C 01 FF
	ora ($FF.b,X)		; 01 FF
	ldy #$30FC.w		; A0 FC 30
	bit $44.b		; 24 44
	eor [$64.b],Y		; 57 64
	sta $309F20.l,X		; 9F 20 9F 30
	ora $2CC64D.l		; 0F 4D C6 2C
	cmp $0F.b,S		; C3 0F
	php		; 08
	sta $18.b,S		; 83 18
	jsl $827A3D.l		; 22 3D 7A 82
	adc $07FF87.l,X		; 7F 87 FF 07
	ror $0F03.w,X		; 7E 03 0F
	ora [$F6.b],Y		; 17 F6
	.db $10, $E3		; 10 E3
	tya		; 98
	cpx #$188D.w		; E0 8D 18
	sbc $08FF18.l,X		; FF 18 FF 08
	sbc $C47BC1.l,X		; FF C1 7B C4
	and $8CEF18.l,X		; 3F 18 EF 8C
	sbc $78BF80.l,X		; FF 80 BF 78
	ora [$78.b]		; 07 78
	ora [$F8.b]		; 07 F8
	ora [$79.b]		; 07 79
	stx $0C.b		; 86 0C
	cmp [$EE.b]		; C7 EE
	php		; 08
	xce		; FB
	.db $90, $01		; 90 01
	cmp ($C1.b,X)		; C1 C1
	lda $06CC57.l,X		; BF 57 CC 06
	sbc $CF30.w,Y		; F9 30 CF
	lda $887E.w,Y		; B9 7E 88
	adc ($C0.b,S),Y		; 73 C0
	and $BF3FC0.l		; 2F C0 3F BF
	ror $83FC.w,X		; 7E FC 83
	sbc $C2FF.w,Y		; F9 FF C2
	sbc ($E7.b,S),Y		; F3 E7
	asl $77.b		; 06 77
	.db $F0, $4F		; F0 4F
	.db $70, $FF		; 70 FF
	brk $00.b		; 00 00
	inc $BF22.w,X		; FE 22 BF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	clc		; 18
	cmp [$83.b]		; C7 83
	sbc $3FFF4F.l,X		; FF 4F FF 3F
	sbc $1E7F80.l,X		; FF 80 7F 1E
	cmp ($00.b,X)		; C1 00
	sbc $C1FE00.l,X		; FF 00 FE C1
	rol $7087.w,X		; 3E 87 70
	eor $00FF40.l		; 4F 40 FF 00
	cpx #$429F.w		; E0 9F 42
	jsr ($7C80.w,X)		; FC 80 7C
	ora $7F00FF.l,X		; 1F FF 00 7F
	eor $BC.b,S		; 43 BC
	cop $BD.b		; 02 BD
	clc		; 18
	cpx $605F.w		; EC 5F 60
	lda $7F82.w,X		; BD 82 7F
	.db $80, $66		; 80 66
	ora $7F80.w,Y		; 19 80 7F
	cpy #$817C.w		; C0 7C 81
	ror $6387.w,X		; 7E 87 63
	cpx #$0160.w		; E0 60 01
	rep #$03		; C2 03
	.db $80, $1F		; 80 1F
	sbc $C3FF00.l,X		; FF 00 FF C3
	sbc $93FE82.l,X		; FF 82 FE 93
	sed		; F8
	adc $FF3CDF.l,X		; 7F DF 3C FF
	jmp ($60FF.w,X)		; 7C FF 60
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	sta $01.b,S		; 83 01
	cmp [$4F.b]		; C7 4F
	.db $10, $00		; 10 00
	ora [$02.b]		; 07 02
	ora $21.b		; 05 21
	jmp ($FCC3.w)		; 6C C3 FC
	ldy #$10C0.w		; A0 C0 10
	eor [$57.b],Y		; 57 57
	sbc $0CEDFF.l,X		; FF FF ED 0C
	inc $F209.w,X		; FE 09 F2
	tsb $23D8.w		; 0C D8 23
	ora $9C.b,S		; 03 9C
	and $E8A8CF.l,X		; 3F CF A8 E8
	brk $00.b		; 00 00
	cmp $C82E.w,X		; DD 2E C8
	bit $3DC6.w,X		; 3C C6 3D
	bit $EF.b,X		; 34 EF
	adc $DC.b,S		; 63 DC
	ora $17E8C0.l		; 0F C0 E8 17
	brk $FF.b		; 00 FF
	jsr $34DD.w		; 20 DD 34
	wai		; CB
	bit $C2.b,X		; 34 C2
	inx		; E8
	.db $10, $00		; 10 00
	and $FFFF3F.l,X		; 3F 3F FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $ECFF00.l,X		; FF 00 FF EC
	lda [$40.b],Y		; B7 40
	rti		; 40

	jsr $FF20.w		; 20 20 FF
	sbc $805F80.l,X		; FF 80 5F 80
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $BF4BB8.l,X		; FF B8 4B BF
	lda $00DFDF.l,X		; BF DF DF 00
	brk $80.b		; 00 80
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $48FF00.l,X		; FF 00 FF 48
	adc [$BF.b],Y		; 77 BF
	rti		; 40

	cmp $FF0020.l,X		; DF 20 00 FF
	rti		; 40

	.db $80, $80		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	.db $80, $FF		; 80 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $01F805.l,X		; FF 05 F8 01
	sed		; F8
	sta ($F8.b,X)		; 81 F8
	rti		; 40

	ldy #$E181.w		; A0 81 E1
	ora ($77.b)		; 12 77
	cop $3F.b		; 02 3F
	dey		; 88
	sta $0FF807.l,X		; 9F 07 F8 0F
	sei		; 78
	ora [$78.b]		; 07 78
	eor $F03FF0.l,X		; 5F F0 3F F0
	sbc $FC81.w,X		; FD 81 FC
	cmp ($70.b,X)		; C1 70
	adc [$00.b]		; 67 00
	sta [$00.b]		; 87 00
	sta $408F80.l		; 8F 80 8F 40
	cmp $81FF20.l,X		; DF 20 FF 81
	ora $C0.b,S		; 03 C0
	ora $60.b,S		; 03 60
	sta $087F80.l		; 8F 80 7F 08
	adc [$88.b],Y		; 77 88
	sbc [$50.b],Y		; F7 50
	adc $ED0E31.l		; 6F 31 0E ED
	sbc $F0FEFC.l,X		; FF FC FE F0
	sed		; F8
	jsr ($C403.w,X)		; FC 03 C4
	and $81.b,S		; 23 81
	cop $C8.b		; 02 C8
	eor $C09F40.l,X		; 5F 40 9F C0
	adc $07BF68.l,X		; 7F 68 BF 07
	plx		; FA
	jsr ($FC3B.w,X)		; FC 3B FC
	ora $FD.b,S		; 03 FD
	ora $A7.b,S		; 03 A7
	.db $50, $7F		; 50 7F
	rti		; 40

	and $F04780.l,X		; 3F 80 47 F0
	brk $FA.b		; 00 FA
	bit $10FB.w,X		; 3C FB 10
	sbc $20FE01.l,X		; FF 01 FE 20
	clv		; B8
	rti		; 40

	cpy #$4000.w		; C0 00 40
	rts		; 60

	clv		; B8
	ora $FF.b		; 05 FF
	sec		; 38
	sbc $00CF20.l,X		; FF 20 CF 00
	sbc $7FCF07.l,X		; FF 07 CF 7F
	adc $17FF3F.l,X		; 7F 3F FF 17
	ora $7F0000.l		; 0F 00 00 7F
	cmp ($67.b,X)		; C1 67
	cpy #$107E.w		; C0 7E 10
	brk $87.b		; 00 87
	.db $80, $07		; 80 07
	rol $81.b		; 26 81
	adc $3BDF83.l		; 6F 83 DF 3B
	ror $7CBE.w,X		; 7E BE 7C
	ldx $EE.b		; A6 EE
	sbc $F907FA.l		; EF FA 07 F9
	stx $FF.b		; 86 FF
	ror $FD.b		; 66 FD
	jmp ($251C.w)		; 6C 1C 25
	ror $25C1.w,X		; 7E C1 25
	cmp $926E.w,Y		; D9 6E 92
	cop $7E.b		; 02 7E
	sta ($7C.b,X)		; 81 7C
	adc [$1A.b]		; 67 1A
	adc $F3C412.l		; 6F 12 C4 F3
	rol $7CBF.w,X		; 3E BF 7C
	ldx $7FFF.w,Y		; BE FF 7F
	inc $FCF9.w,X		; FE F9 FC
	xce		; FB
	inc $FEFF.w,X		; FE FF FE
	sbc $600E14.l,X		; FF 14 0E 60
	rts		; 60

	cpy #$C0C0.w		; C0 C0 C0
	cpy #$E0E0.w		; C0 E0 E0
	sec		; 38
	sei		; 78
	pla		; 68
	.db $F0, $62		; F0 62
	plx		; FA
	adc ($FD.b,S),Y		; 73 FD
	cpx #$C09F.w		; E0 9F C0
	and $E03FC0.l,X		; 3F C0 3F E0
	ora $F8C7F8.l,X		; 1F F8 C7 F8
	ora [$FE.b],Y		; 17 FE
	ora $800DFE.l,X		; 1F FE 0D 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C07F80.l,X		; FF 80 7F C0
	sbc $FC17F8.l,X		; FF F8 17 FC
	ora $FF02FC.l		; 0F FC 02 FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	and $0DEF17.l,X		; 3F 17 EF 0D
	sbc ($00.b,S),Y		; F3 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $04.b		; 02 04
	brk $10.b		; 00 10
	tya		; 98
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora $FE.b,S		; 03 FE
	cop $FD.b		; 02 FD
	clc		; 18
	sbc [$00.b]		; E7 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE01.l,X		; FF 01 FE 00
	xce		; FB
	clc		; 18
	sbc [$FF.b]		; E7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFDFE.l,X		; FF FE FD FD
	sbc $037FE7.l,X		; FF E7 7F 03
	tsb $00.b		; 04 00
	clc		; 18
	brk $10.b		; 00 10
	.db $80, $C0		; 80 C0
	brk $C0.b		; 00 C0
	tsb $04.b		; 04 04
	asl $0C.b		; 06 0C
	tsb $00.b		; 04 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	jsr $80DF.w		; 20 DF 80
	sbc $08BF40.l,X		; FF 40 BF 08
	sbc [$04.b],Y		; F7 04
	xce		; FB
	asl $FD.b		; 06 FD
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $FF.b		; 00 FF
	rti		; 40

	sbc $00FB08.l,X		; FF 08 FB 00
	sbc $FF04.w,X		; FD 04 FF
	xce		; FB
	sbc $DFF7EF.l,X		; FF EF F7 DF
	sbc $BFBF7F.l		; EF 7F BF BF
	adc $FFF7F3.l,X		; 7F F3 F7 FF
	sbc ($FD.b,S),Y		; F3 FD
	sbc $78157F.l,X		; FF 7F 15 78
	ora [$78.b],Y		; 17 78
	ora $360C37.l		; 0F 37 0C 36
	ora $01090E.l		; 0F 0E 09 01
	ora $07.b		; 05 07
	tsb $10.b		; 04 10
	sbc $00.b		; E5 00
	sbc [$00.b],Y		; F7 00
	sbc $00FC00.l,X		; FF 00 FC 00
	sbc [$00.b],Y		; F7 00
	sbc $FC0B.w,Y		; F9 0B FC
	ora $F8.b,S		; 03 F8
	asl A		; 0A
	sta $008F08.l,X		; 9F 08 8F 00
	sta $00CF03.l		; 8F 03 CF 00
	cmp $0AFF0E.l		; CF 0E FF 0A
	inc $FF04.w,X		; FE 04 FF
	.db $F0, $E0		; F0 E0
	cpx #$F0F0.w		; E0 F0 F0
	.db $F0, $F0		; F0 F0
	.db $F0, $F0		; F0 F0
	.db $F0, $F0		; F0 F0
	.db $F0, $F8		; F0 F8
	sbc ($FF.b),Y		; F1 FF
	sbc $E079F2.l,X		; FF F2 79 E0
	sta $CA23.w		; 8D 23 CA
	cpx $24.b		; E4 24
	.db $80, $40		; 80 40
	sta ($01.b,X)		; 81 01
	.db $82, $02, $0C		; 82 02 0C
	tsb $C1AC.w		; 0C AC C1
	ora [$80.b],Y		; 17 80
	ora $3BC1.w,X		; 1D C1 3B
	brk $7F.b		; 00 7F
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $F3.b		; 00 F3
	brk $C6.b		; 00 C6
	adc [$7A.b],Y		; 77 7A
	sbc $F631.w,Y		; F9 31 F6
	cpy #$80FF.w		; C0 FF 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $28FF00.l,X		; FF 00 FF 28
	clc		; 18
	ora $06.b		; 05 06
	ora $1F3F0F.l		; 0F 0F 3F 1F
	adc $FFFF3F.l,X		; 7F 3F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	pla		; 68
	sbc [$7B.b]		; E7 7B
	tda		; 7B
	bit $1F3C.w,X		; 3C 3C 1F
	ora $3F3F3F.l,X		; 1F 3F 3F 3F
	and $00FE00.l,X		; 3F 00 FE 00
	sbc $8407B0.l,X		; FF B0 07 84
	ora [$C3.b]		; 07 C3
	ora $E0.b,S		; 03 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	sbc $18FF00.l,X		; FF 00 FF 18
	adc $03F807.l,X		; 7F 07 F8 03
	jsr ($FF00.w,X)		; FC 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$FFC0.w		; A0 C0 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $CEABAB.l,X		; FF AB AB CE
	dec $4F4F.w		; CE 4F 4F
	stx $9E8E.w		; 8E 8E 9E
	stz $4E4E.w,X		; 9E 4E 4E
	sta $1D1D8F.l		; 8F 8F 1D 1D
	phb		; 8B
	phb		; 8B
	dec $CE.b		; C6 CE
	eor $8E8E4F.l		; 4F 4F 8E 8E
	stz $4E9E.w,X		; 9E 9E 4E
	lsr $8F0F.w		; 4E 0F 8F
	ora $541D.w,X		; 1D 1D 54
	brk $39.b		; 00 39
	brk $B0.b		; 00 B0
	brk $71.b		; 00 71
	brk $61.b		; 00 61
	brk $B1.b		; 00 B1
	brk $F0.b		; 00 F0
	brk $E2.b		; 00 E2
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $AB.b		; 00 AB
	plb		; AB
	dec $4FCE.w		; CE CE 4F
	eor $9E8E8E.l		; 4F 8E 8E 9E
	stz $4E4E.w,X		; 9E 4E 4E
	sta $1D1D8F.l		; 8F 8F 1D 1D
	phb		; 8B
	phb		; 8B
	dec $CE.b		; C6 CE
	eor $8E8E4F.l		; 4F 4F 8E 8E
	stz $4E9E.w,X		; 9E 9E 4E
	lsr $8F0F.w		; 4E 0F 8F
	ora $541D.w,X		; 1D 1D 54
	brk $39.b		; 00 39
	brk $B0.b		; 00 B0
	brk $71.b		; 00 71
	brk $61.b		; 00 61
	brk $B1.b		; 00 B1
	brk $F0.b		; 00 F0
	brk $E2.b		; 00 E2
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $A0.b		; 00 A0
	ldy #$C8C8.w		; A0 C8 C8
	plx		; FA
	plx		; FA
	inc $F6.b,X		; F6 F6
	.db $D0, $D0		; D0 D0
	xba		; EB
	sbc $F13F3F.l		; EF 3F 3F F1
	sbc ($A0.b),Y		; F1 A0
	ldy #$C8C8.w		; A0 C8 C8
	sed		; F8
	plx		; FA
	.db $F0, $F6		; F0 F6
	.db $D0, $D0		; D0 D0
	inx		; E8
	sbc $F03F3A.l		; EF 3A 3F F0
	sbc ($5F.b),Y		; F1 5F
	brk $37.b		; 00 37
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $2F.b		; 00 2F
	brk $17.b		; 00 17
	brk $C5.b		; 00 C5
	brk $0F.b		; 00 0F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $A8.b		; 00 A8
	tay		; A8
	sbc $3F3FEF.l		; EF EF 3F 3F
	lda [$B7.b],Y		; B7 B7
	adc $7F7F7F.l,X		; 7F 7F 7F 7F
	sbc $DFDFFF.l,X		; FF FF DF DF
	brk $A8.b		; 00 A8
	brk $EF.b		; 00 EF
	brk $3F.b		; 00 3F
	brk $B7.b		; 00 B7
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sty $84.b		; 84 84
	cli		; 58
	cli		; 58
	php		; 08
	php		; 08
	cmp $F2F2DF.l,X		; DF DF F2 F2
	inc $E9FE.w,X		; FE FE E9
	sbc #$C9C9.w		; E9 C9 C9
	brk $84.b		; 00 84
	brk $58.b		; 00 58
	brk $08.b		; 00 08
	brk $DF.b		; 00 DF
	brk $F2.b		; 00 F2
	brk $FE.b		; 00 FE
	brk $E9.b		; 00 E9
	brk $C9.b		; 00 C9
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	asl $16.b,X		; 16 16
	sty $BC8C.w		; 8C 8C BC
	ldy $3434.w,X		; BC 34 34
	sbc $FDFDFF.l,X		; FF FF FD FD
	adc $007D.w,X		; 7D 7D 00
	brk $00.b		; 00 00
	asl $00.b,X		; 16 00
	sty $BC00.w		; 8C 00 BC
	brk $34.b		; 00 34
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $7D.b		; 00 7D
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	jsr $8020.w		; 20 20 80
	.db $80, $A8		; 80 A8
	tay		; A8
	plp		; 28
	plp		; 28
	ldy $A4.b		; A4 A4
	iny		; C8
	iny		; C8
	jmp $004C.w		; 4C 4C 00
	brk $00.b		; 00 00
	jsr $8000.w		; 20 00 80
	brk $A8.b		; 00 A8
	brk $28.b		; 00 28
	brk $A4.b		; 00 A4
	brk $C8.b		; 00 C8
	brk $4C.b		; 00 4C
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	.db $80, $80		; 80 80
	plp		; 28
	plp		; 28
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	.db $80, $80		; 80 80
	jsr $0028.w		; 20 28 00
	ora ($00.b,X)		; 01 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $7F.b		; 00 7F
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F4.b		; 00 F4
	pea $2121.w		; F4 21 21
	pla		; 68
	pla		; 68
	php		; 08
	php		; 08
	.db $30, $30		; 30 30
	and $21212F.l		; 2F 2F 21 21
	php		; 08
	php		; 08
	.db $B0, $B0		; B0 B0
	and ($21.b,X)		; 21 21
	pla		; 68
	pla		; 68
	php		; 08
	php		; 08
	.db $30, $30		; 30 30
	and $21212F.l		; 2F 2F 21 21
	php		; 08
	php		; 08
	phd		; 0B
	brk $DE.b		; 00 DE
	brk $97.b		; 00 97
	brk $F7.b		; 00 F7
	brk $CF.b		; 00 CF
	brk $D0.b		; 00 D0
	brk $DE.b		; 00 DE
	brk $F7.b		; 00 F7
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $A0.b		; 00 A0
	ldy #$C8C8.w		; A0 C8 C8
	plx		; FA
	plx		; FA
	inc $F6.b,X		; F6 F6
	.db $D0, $D0		; D0 D0
	xba		; EB
	sbc $F13F3F.l		; EF 3F 3F F1
	sbc ($A0.b),Y		; F1 A0
	ldy #$C8C8.w		; A0 C8 C8
	sed		; F8
	plx		; FA
	.db $F0, $F6		; F0 F6
	.db $D0, $D0		; D0 D0
	inx		; E8
	sbc $F03F3A.l		; EF 3A 3F F0
	sbc ($5F.b),Y		; F1 5F
	brk $37.b		; 00 37
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $2F.b		; 00 2F
	brk $17.b		; 00 17
	brk $C5.b		; 00 C5
	brk $0F.b		; 00 0F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $A8.b		; 00 A8
	tay		; A8
	sbc $3F3FEF.l		; EF EF 3F 3F
	lda [$B7.b],Y		; B7 B7
	adc $7F7F7F.l,X		; 7F 7F 7F 7F
	sbc $DFDFFF.l,X		; FF FF DF DF
	brk $A8.b		; 00 A8
	brk $EF.b		; 00 EF
	brk $3F.b		; 00 3F
	brk $B7.b		; 00 B7
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sty $84.b		; 84 84
	cli		; 58
	cli		; 58
	php		; 08
	php		; 08
	cmp $F2F2DF.l,X		; DF DF F2 F2
	inc $E9FE.w,X		; FE FE E9
	sbc #$C9C9.w		; E9 C9 C9
	brk $84.b		; 00 84
	brk $58.b		; 00 58
	brk $08.b		; 00 08
	brk $DF.b		; 00 DF
	brk $F2.b		; 00 F2
	brk $FE.b		; 00 FE
	brk $E9.b		; 00 E9
	brk $C9.b		; 00 C9
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	asl $16.b,X		; 16 16
	sty $BC8C.w		; 8C 8C BC
	ldy $3434.w,X		; BC 34 34
	sbc $FDFDFF.l,X		; FF FF FD FD
	adc $007D.w,X		; 7D 7D 00
	brk $00.b		; 00 00
	asl $00.b,X		; 16 00
	sty $BC00.w		; 8C 00 BC
	brk $34.b		; 00 34
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $7D.b		; 00 7D
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	jsr $8020.w		; 20 20 80
	.db $80, $A8		; 80 A8
	tay		; A8
	plp		; 28
	plp		; 28
	ldy $A4.b		; A4 A4
	iny		; C8
	iny		; C8
	jmp $004C.w		; 4C 4C 00
	brk $00.b		; 00 00
	jsr $8000.w		; 20 00 80
	brk $A8.b		; 00 A8
	brk $28.b		; 00 28
	brk $A4.b		; 00 A4
	brk $C8.b		; 00 C8
	brk $4C.b		; 00 4C
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	.db $80, $80		; 80 80
	plp		; 28
	plp		; 28
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	.db $80, $80		; 80 80
	jsr $0028.w		; 20 28 00
	ora ($00.b,X)		; 01 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $7F.b		; 00 7F
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F4.b		; 00 F4
	pea $2121.w		; F4 21 21
	pla		; 68
	pla		; 68
	php		; 08
	php		; 08
	.db $30, $30		; 30 30
	and $21212F.l		; 2F 2F 21 21
	php		; 08
	php		; 08
	.db $B0, $B0		; B0 B0
	and ($21.b,X)		; 21 21
	pla		; 68
	pla		; 68
	php		; 08
	php		; 08
	.db $30, $30		; 30 30
	and $21212F.l		; 2F 2F 21 21
	php		; 08
	php		; 08
	phd		; 0B
	brk $DE.b		; 00 DE
	brk $97.b		; 00 97
	brk $F7.b		; 00 F7
	brk $CF.b		; 00 CF
	brk $D0.b		; 00 D0
	brk $DE.b		; 00 DE
	brk $F7.b		; 00 F7
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	sbc $AFAF.w,X		; FD AF AF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $A8FF.w,X		; FD FF A8
	cmp $0FFD0C.l		; CF 0C FD 0F
	lda $0EFF0D.l		; AF 0D FF 0E
	sbc $0DFF0F.l,X		; FF 0F FF 0D
	sbc $48FF0D.l,X		; FF 0D FF 48
	cmp $F000F3.l		; CF F3 00 F0
	brk $F2.b		; 00 F2
	brk $F1.b		; 00 F1
	brk $F0.b		; 00 F0
	brk $F2.b		; 00 F2
	brk $F2.b		; 00 F2
	brk $E7.b		; 00 E7
	.db $70, $FF		; 70 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $9F.b		; 00 9F
	.db $10, $FC		; 10 FC
	sbc $AFAF.w,X		; FD AF AF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $A8FF.w,X		; FD FF A8
	cmp $0FFD0C.l		; CF 0C FD 0F
	lda $0EFF0D.l		; AF 0D FF 0E
	sbc $0DFF0F.l,X		; FF 0F FF 0D
	sbc $48FF0D.l,X		; FF 0D FF 48
	cmp $F000F3.l		; CF F3 00 F0
	brk $F2.b		; 00 F2
	brk $F1.b		; 00 F1
	brk $F0.b		; 00 F0
	brk $F2.b		; 00 F2
	brk $F2.b		; 00 F2
	brk $E7.b		; 00 E7
	.db $70, $FF		; 70 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $9F.b		; 00 9F
	.db $10, $7F		; 10 7F
	sbc $AF6F6F.l,X		; FF 6F 6F AF
	sbc $B7FFFD.l,X		; FF FD FF B7
	sbc [$BF.b],Y		; F7 BF
	lda $4FFFE7.l,X		; BF E7 FF 4F
	sbc $08FF40.l,X		; FF 40 FF 08
	adc $F4FFA0.l		; 6F A0 FF F4
	sbc $34F700.l,X		; FF 00 F7 34
	lda $00FFA0.l,X		; BF A0 FF 00
	sbc $F700BF.l,X		; FF BF 00 F7
	brk $5F.b		; 00 5F
	brk $0B.b		; 00 0B
	brk $FF.b		; 00 FF
	brk $CB.b		; 00 CB
	brk $5F.b		; 00 5F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFD.l,X		; FF FD FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FD00.l,X		; FF 00 FD 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFDFD.l,X		; FF FD FD FB
	xce		; FB
	cmp $FFFFDF.l,X		; DF DF FF FF
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $FB.b		; 00 FB
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc ($F1.b),Y		; F1 F1
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $EFEFFF.l,X		; FF FF EF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $F1.b		; 00 F1
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sta ($91.b),Y		; 91 91
	and #$AE29.w		; 29 29 AE
	ldx CGADD.w		; AE 21 21
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $91.b		; 00 91
	brk $29.b		; 00 29
	brk $AE.b		; 00 AE
	brk $21.b		; 00 21
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	txs		; 9A
	txs		; 9A
	jsr $5320.w		; 20 20 53
	eor ($33.b,S),Y		; 53 33
	and ($BF.b,S),Y		; 33 BF
	lda $FFE4E4.l,X		; BF E4 E4 FF
	sbc $12FFFF.l,X		; FF FF FF 12
	txs		; 9A
	brk $20.b		; 00 20
	ora ($53.b,X)		; 01 53
	cop $33.b		; 02 33
	.db $10, $BF		; 10 BF
	brk $E4.b		; 00 E4
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FF00.w		; ED 00 FF
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $EF.b		; 00 EF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	sbc $AF6F6F.l,X		; FF 6F 6F AF
	sbc $B7FFFD.l,X		; FF FD FF B7
	sbc [$BF.b],Y		; F7 BF
	lda $4FFFE7.l,X		; BF E7 FF 4F
	sbc $08FF40.l,X		; FF 40 FF 08
	adc $F4FFA0.l		; 6F A0 FF F4
	sbc $34F700.l,X		; FF 00 F7 34
	lda $00FFA0.l,X		; BF A0 FF 00
	sbc $F700BF.l,X		; FF BF 00 F7
	brk $5F.b		; 00 5F
	brk $0B.b		; 00 0B
	brk $FF.b		; 00 FF
	brk $CB.b		; 00 CB
	brk $5F.b		; 00 5F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFD.l,X		; FF FD FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FD00.l,X		; FF 00 FD 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFDFD.l,X		; FF FD FD FB
	xce		; FB
	cmp $FFFFDF.l,X		; DF DF FF FF
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $FB.b		; 00 FB
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc ($F1.b),Y		; F1 F1
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $EFEFFF.l,X		; FF FF EF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $F1.b		; 00 F1
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sta ($91.b),Y		; 91 91
	and #$AE29.w		; 29 29 AE
	ldx CGADD.w		; AE 21 21
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $91.b		; 00 91
	brk $29.b		; 00 29
	brk $AE.b		; 00 AE
	brk $21.b		; 00 21
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	txs		; 9A
	txs		; 9A
	jsr $5320.w		; 20 20 53
	eor ($33.b,S),Y		; 53 33
	and ($BF.b,S),Y		; 33 BF
	lda $FFE4E4.l,X		; BF E4 E4 FF
	sbc $12FFFF.l,X		; FF FF FF 12
	txs		; 9A
	brk $20.b		; 00 20
	ora ($53.b,X)		; 01 53
	cop $33.b		; 02 33
	.db $10, $BF		; 10 BF
	brk $E4.b		; 00 E4
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FF00.w		; ED 00 FF
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $EF.b		; 00 EF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $80.b		; 00 80
	cmp $074780.l		; CF 80 47 07
	sta ($04.b,X)		; 81 04
	php		; 08
	sta $0E8E.w,X		; 9D 8E 0E
	ora $F00B37.l		; 0F 37 0B F0
	ora $CE9F40.l		; 0F 40 9F CE
	lda $7C0C.w,Y		; B9 0C 7C
	ora $FF.b,S		; 03 FF
	sta ($7D.b),Y		; 91 7D
	brk $FE.b		; 00 FE
	tsb $F7.b		; 04 F7
	brk $FC.b		; 00 FC
	sta $72CF78.l		; 8F 78 CF 72
	sty $0BF3.w		; 8C F3 0B
	jmp ($F013.w,X)		; 7C 13 F0
	ora ($F1.b,X)		; 01 F1
	tsb $0FCC.w		; 0C CC 0F
	ora $B130F7.l		; 0F F7 30 B1
	.db $70, $70		; 70 70
	.db $70, $F8		; 70 F8
	.db $F0, $FC		; F0 FC
	inc $FFFE.w,X		; FE FE FF
	sbc ($FF.b,S),Y		; F3 FF
	.db $F0, $FF		; F0 FF
	.db $80, $CF		; 80 CF
	.db $80, $47		; 80 47
	ora [$81.b]		; 07 81
	tsb $08.b		; 04 08
	sta $0E8E.w,X		; 9D 8E 0E
	ora $F00B37.l		; 0F 37 0B F0
	ora $CE9F40.l		; 0F 40 9F CE
	lda $7C0C.w,Y		; B9 0C 7C
	ora $FF.b,S		; 03 FF
	sta ($7D.b),Y		; 91 7D
	brk $FE.b		; 00 FE
	tsb $F7.b		; 04 F7
	brk $FC.b		; 00 FC
	sta $72CF78.l		; 8F 78 CF 72
	sty $0BF3.w		; 8C F3 0B
	jmp ($F013.w,X)		; 7C 13 F0
	ora ($F1.b,X)		; 01 F1
	tsb $0FCC.w		; 0C CC 0F
	ora $B130F7.l		; 0F F7 30 B1
	.db $70, $70		; 70 70
	.db $70, $F8		; 70 F8
	.db $F0, $FC		; F0 FC
	inc $FFFE.w,X		; FE FE FF
	sbc ($FF.b,S),Y		; F3 FF
	.db $F0, $FF		; F0 FF
	ora $FF9FFF.l,X		; 1F FF 9F FF
	lda $7F3F7F.l,X		; BF 7F 3F 7F
	eor $BF3F3F.l,X		; 5F 3F 3F BF
	sta $CE.b,S		; 83 CE
	sbc [$5F.b],Y		; F7 5F
	brk $FF.b		; 00 FF
	.db $80, $FF		; 80 FF
	.db $80, $FF		; 80 FF
	cpy #$60BF.w		; C0 BF 60
	sbc $715F60.l,X		; FF 60 5F 71
	lda $FFCF98.l,X		; BF 98 CF FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	rti		; 40

	cmp $806F20.l,X		; DF 20 6F 80
	and $A0BF40.l,X		; 3F 40 BF A0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $003F00.l,X		; FF 00 3F 00
	ora $001F00.l,X		; 1F 00 1F 00
	cmp $C04780.l		; CF 80 47 C0
	sbc $FEFEFF.l,X		; FF FF FE FE
	sbc $FEFB.w,X		; FD FB FE
	ror A		; 6A
	sbc ($CA.b)		; F2 CA
	cpx #$F0C0.w		; E0 C0 F0
	.db $70, $F0		; 70 F0
	.db $B0, $00		; B0 00
	sbc $06FF01.l,X		; FF 01 FF 06
	sbc $2EFF94.l,X		; FF 94 FF 2E
	sbc $B0FF00.l,X		; FF 00 FF B0
	cmp $FFCF70.l		; CF 70 CF FF
	brk $FE.b		; 00 FE
	ora ($FF.b,X)		; 01 FF
	ora $FE.b,S		; 03 FE
	ora $FC.b,S		; 03 FC
	tas		; 1B
	cpx #$803F.w		; E0 3F 80
	and $FF7FC0.l,X		; 3F C0 7F FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	ora ($E9.b,X)		; 01 E9
	ora $FF0FDF.l		; 0F DF 0F FF
	ora $3B7FFF.l,X		; 1F FF 7F 3B
	eor [$83.b]		; 47 83
	cmp $81.b		; C5 81
	.db $82, $00, $00		; 82 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	clv		; B8
	lda [$C2.b],Y		; B7 C2
	and $007D83.l,X		; 3F 83 7D 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $47FCF7.l,X		; FF F7 FC 47
	pea $FD03.w		; F4 03 FD
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	and ($30.b,S),Y		; 33 30
	lda $FD78.w,X		; BD 78 FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FDF.l,X		; FF DF 7F FF
	cmp $633777.l		; CF 77 37 63
	phd		; 0B
	sbc ($07.b,S),Y		; F3 07
	sbc [$07.b]		; E7 07
	sbc [$13.b]		; E7 13
	brk $FF.b		; 00 FF
	.db $80, $FF		; 80 FF
	jsr $28FF.w		; 20 FF 28
	cmp [$0C.b],Y		; D7 0C
	sbc $00FB04.l,X		; FF 04 FB 00
	xce		; FB
	brk $FB.b		; 00 FB
	sbc $003F00.l,X		; FF 00 3F 00
	sbc $A807F0.l,X		; FF F0 07 A8
	ora $04038C.l		; 0F 8C 03 04
	ora $04.b,S		; 03 04
	ora [$14.b]		; 07 14
	sbc $00FF00.l,X		; FF 00 FF 00
	and $F0E720.l		; 2F 20 E7 F0
	xce		; FB
	.db $F0, $FB		; F0 FB
	sed		; F8
	xce		; FB
	sed		; F8
	xba		; EB
	sed		; F8
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	rti		; 40

	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F6FDFA.l,X		; FF FA FD F6
	tsx		; BA
	cpx #$00F8.w		; E0 F8 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $48FF01.l,X		; FF 01 FF 48
	sed		; F8
	clc		; 18
	sbc ($FF.b,S),Y		; F3 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora $FC.b,S		; 03 FC
	ora $FF0FE0.l		; 0F E0 0F FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $F1.b		; 00 F1
	ora $FF.b,S		; 03 FF
	ora [$1F.b]		; 07 1F
	sbc $BFFF9F.l,X		; FF 9F FF BF
	adc $5F7F3F.l,X		; 7F 3F 7F 5F
	and $83BF3F.l,X		; 3F 3F BF 83
	dec $5FF7.w		; CE F7 5F
	brk $FF.b		; 00 FF
	.db $80, $FF		; 80 FF
	.db $80, $FF		; 80 FF
	cpy #$60BF.w		; C0 BF 60
	sbc $715F60.l,X		; FF 60 5F 71
	lda $FFCF98.l,X		; BF 98 CF FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	rti		; 40

	cmp $806F20.l,X		; DF 20 6F 80
	and $A0BF40.l,X		; 3F 40 BF A0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $003F00.l,X		; FF 00 3F 00
	ora $001F00.l,X		; 1F 00 1F 00
	cmp $C04780.l		; CF 80 47 C0
	sbc $FEFEFF.l,X		; FF FF FE FE
	sbc $FEFB.w,X		; FD FB FE
	ror A		; 6A
	sbc ($CA.b)		; F2 CA
	cpx #$F0C0.w		; E0 C0 F0
	.db $70, $F0		; 70 F0
	.db $B0, $00		; B0 00
	sbc $06FF01.l,X		; FF 01 FF 06
	sbc $2EFF94.l,X		; FF 94 FF 2E
	sbc $B0FF00.l,X		; FF 00 FF B0
	cmp $FFCF70.l		; CF 70 CF FF
	brk $FE.b		; 00 FE
	ora ($FF.b,X)		; 01 FF
	ora $FE.b,S		; 03 FE
	ora $FC.b,S		; 03 FC
	tas		; 1B
	cpx #$803F.w		; E0 3F 80
	and $FF7FC0.l,X		; 3F C0 7F FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	ora ($E9.b,X)		; 01 E9
	ora $FF0FDF.l		; 0F DF 0F FF
	ora $3B7FFF.l,X		; 1F FF 7F 3B
	eor [$83.b]		; 47 83
	cmp $81.b		; C5 81
	.db $82, $00, $00		; 82 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	clv		; B8
	lda [$C2.b],Y		; B7 C2
	and $007D83.l,X		; 3F 83 7D 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $47FCF7.l,X		; FF F7 FC 47
	pea $FD03.w		; F4 03 FD
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	and ($30.b,S),Y		; 33 30
	lda $FD78.w,X		; BD 78 FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FDF.l,X		; FF DF 7F FF
	cmp $633777.l		; CF 77 37 63
	phd		; 0B
	sbc ($07.b,S),Y		; F3 07
	sbc [$07.b]		; E7 07
	sbc [$13.b]		; E7 13
	brk $FF.b		; 00 FF
	.db $80, $FF		; 80 FF
	jsr $28FF.w		; 20 FF 28
	cmp [$0C.b],Y		; D7 0C
	sbc $00FB04.l,X		; FF 04 FB 00
	xce		; FB
	brk $FB.b		; 00 FB
	sbc $003F00.l,X		; FF 00 3F 00
	sbc $A807F0.l,X		; FF F0 07 A8
	ora $04038C.l		; 0F 8C 03 04
	ora $04.b,S		; 03 04
	ora [$14.b]		; 07 14
	sbc $00FF00.l,X		; FF 00 FF 00
	and $F0E720.l		; 2F 20 E7 F0
	xce		; FB
	.db $F0, $FB		; F0 FB
	sed		; F8
	xce		; FB
	sed		; F8
	xba		; EB
	sed		; F8
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	rti		; 40

	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F6FDFA.l,X		; FF FA FD F6
	tsx		; BA
	cpx #$00F8.w		; E0 F8 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $48FF01.l,X		; FF 01 FF 48
	sed		; F8
	clc		; 18
	sbc ($FF.b,S),Y		; F3 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora $FC.b,S		; 03 FC
	ora $FF0FE0.l		; 0F E0 0F FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $F1.b		; 00 F1
	ora $FF.b,S		; 03 FF
	ora [$30.b]		; 07 30
	ora $DF619E.l		; 0F 9E 61 DF
	jsr $A0DF.w		; 20 DF A0
	sbc $F8F7D0.l,X		; FF D0 F7 F8
	.db $F0, $FF		; F0 FF
	.db $F0, $FB		; F0 FB
	brk $FF.b		; 00 FF
	.db $F0, $F1		; F0 F1
	.db $F0, $B0		; F0 B0
	.db $F0, $F0		; F0 F0
	.db $F0, $F0		; F0 F0
	.db $F0, $F8		; F0 F8
	.db $F0, $F7		; F0 F7
	pea $0FF7.w		; F4 F7 0F
	sta $EF0FEF.l		; 8F EF 0F EF
	ora $FF3FFF.l		; 0F FF 3F FF
	ora $F007F7.l		; 0F F7 07 F0
	php		; 08
	pea $F00C.w		; F4 0C F0
	adc $8F7F8E.l,X		; 7F 8E 7F 8F
	adc $FF1FDF.l,X		; 7F DF 1F FF
	ora $F70FFF.l		; 0F FF 0F F7
	ora [$F7.b]		; 07 F7
	ora [$30.b]		; 07 30
	ora $DF619E.l		; 0F 9E 61 DF
	jsr $A0DF.w		; 20 DF A0
	sbc $F8F7D0.l,X		; FF D0 F7 F8
	.db $F0, $FF		; F0 FF
	.db $F0, $FB		; F0 FB
	brk $FF.b		; 00 FF
	.db $F0, $F1		; F0 F1
	.db $F0, $B0		; F0 B0
	.db $F0, $F0		; F0 F0
	.db $F0, $F0		; F0 F0
	.db $F0, $F8		; F0 F8
	.db $F0, $F7		; F0 F7
	pea $0FF7.w		; F4 F7 0F
	sta $EF0FEF.l		; 8F EF 0F EF
	ora $FF3FFF.l		; 0F FF 3F FF
	ora $F007F7.l		; 0F F7 07 F0
	php		; 08
	pea $F00C.w		; F4 0C F0
	adc $8F7F8E.l,X		; 7F 8E 7F 8F
	adc $FF1FDF.l,X		; 7F DF 1F FF
	ora $F70FFF.l		; 0F FF 0F F7
	ora [$F7.b]		; 07 F7
	ora [$47.b]		; 07 47
	lda ($17.b),Y		; B1 17
	sbc ($CF.b,S),Y		; F3 CF
	rol $E7.b,X		; 36 E7
	clc		; 18
	sbc $04FF02.l,X		; FF 02 FF 04
	sbc $7D00.w,X		; FD 00 7D
	.db $82, $5E, $4F		; 82 5E 4F
	clc		; 18
	cmp $072B0D.l		; CF 0D 2B 07
	ora $07070D.l,X		; 1F 0D 07 07
	ora ($07.b,X)		; 01 07
	ora $07.b		; 05 07
	sta [$FF.b]		; 87 FF
	cpx #$F4FF.w		; E0 FF F4
	sbc $FCF7F8.l,X		; FF F8 F7 FC
	sbc $F4.b,X		; F5 F4
	sbc $FEFDFA.l,X		; FF FA FD FE
	adc $E0077C.l,X		; 7F 7C 07 E0
	ora ($E0.b,S),Y		; 13 E0
	wai		; CB
	sed		; F8
	sbc [$F4.b]		; E7 F4
	sbc [$FC.b],Y		; F7 FC
	sbc $FDF8.w,Y		; F9 F8 FD
	jsr ($FCFD.w,X)		; FC FD FC
	ldy #$8060.w		; A0 60 80
	rti		; 40

	.db $80, $40		; 80 40
	cpx #$8060.w		; E0 60 80
	brk $C8.b		; 00 C8
	plp		; 28
	cmp [$10.b]		; C7 10
	sbc [$00.b],Y		; F7 00
	ldy #$009F.w		; A0 9F 00
	sbc $E0FF00.l,X		; FF 00 FF E0
	sta $889FC0.l,X		; 9F C0 9F 88
	sbc [$E0.b]		; E7 E0
	sbc $C0FFE0.l,X		; FF E0 FF C0
	adc $C07FC0.l,X		; 7F C0 7F C0
	adc $807F80.l,X		; 7F 80 7F 80
	adc $D03FE0.l,X		; 7F E0 3F D0
	.db $10, $F0		; 10 F0
	.db $10, $BF		; 10 BF
	and $FF3FFF.l,X		; 3F FF 3F FF
	and $BF3FFF.l,X		; 3F FF 3F BF
	and $FF1FFF.l,X		; 3F FF 1F FF
	ora $010FEF.l		; 0F EF 0F 01
	brk $13.b		; 00 13
	clc		; 18
	and $010F08.l		; 2F 08 0F 01
	rol $FC01.w,X		; 3E 01 FC
	ora $FD.b,S		; 03 FD
	cop $F1.b		; 02 F1
	trb $FF00.w		; 1C 00 FF
	.db $10, $EF		; 10 EF
	and ($DF.b,X)		; 21 DF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	ora $EF17F3.l		; 0F F3 17 EF
	brk $FE.b		; 00 FE
	php		; 08
	jsr ($C121.w,X)		; FC 21 C1
	brk $F0.b		; 00 F0
	brk $C1.b		; 00 C1
	ora ($02.b,X)		; 01 02
	asl A		; 0A
	tsb $14.b		; 04 14
	asl A		; 0A
	sbc $E7FFFF.l,X		; FF FF FF E7
	dec $FE.b,X		; D6 FE
	inc $FEFF.w,X		; FE FF FE
	sbc $F0FFFC.l,X		; FF FC FF F0
	sbc $E7F5EA.l,X		; FF EA F5 E7
	asl $2FD1.w,X		; 1E D1 2F
	cmp $3E.b,S		; C3 3E
	.db $90, $6F		; 90 6F
	bit $F4C2.w,X		; 3C C2 F4
	ora #$0EF3.w		; 09 F3 0E
	sbc ($08.b,S),Y		; F3 08
	ora ($FB.b,X)		; 01 FB
	asl $E9.b,X		; 16 E9
	tda		; 7B
	and $7FFB.w,X		; 3D FB 7F
	sbc $FBFDFB.l,X		; FF FB FD FB
	sbc $FFFD.w,X		; FD FD FF
	xce		; FB
	ora $1C.b,S		; 03 1C
	ora [$3A.b]		; 07 3A
	lda $68C6.w,Y		; B9 C6 68
	dec $C3.b		; C6 C3
	ora [$0A.b]		; 07 0A
	asl $0D.b		; 06 0D
	cop $0D.b		; 02 0D
	tsb $E3.b		; 04 E3
	sed		; F8
	cmp ($FC.b,X)		; C1 FC
	ora $7C.b,S		; 03 7C
	eor $BC.b,S		; 43 BC
	cop $FC.b		; 02 FC
	ora ($FC.b,X)		; 01 FC
	ora ($FC.b,X)		; 01 FC
	ora $F8.b,S		; 03 F8
	sbc $FAFFFE.l,X		; FF FE FF FA
	sbc $88FF21.l,X		; FF 21 FF 88
	sbc $00FF51.l,X		; FF 51 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora ($FF.b,X)		; 01 FF
	ora $FF.b		; 05 FF
	dec $77FF.w,X		; DE FF 77
	sbc $FFFFAE.l,X		; FF AE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	eor $FF51FF.l,X		; 5F FF 51 FF
	tda		; 7B
	sbc $00FFE2.l,X		; FF E2 FF 00
	sbc $FF0010.l,X		; FF 10 00 FF
	rti		; 40

	sbc $AEFFA0.l,X		; FF A0 FF AE
	sbc $1DFF84.l,X		; FF 84 FF 1D
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	cld		; D8
	inx		; E8
	php		; 08
	.db $90, $60		; 90 60
	.db $D0, $50		; D0 50
	cpy #$E300.w		; C0 00 E3
	sep #$00		; E2 00
	brk $40.b		; 00 40
	brk $38.b		; 00 38
	sbc [$E8.b]		; E7 E8
	sbc [$D0.b],Y		; F7 D0
	cmp $C0EF90.l,X		; DF 90 EF C0
	and $001F63.l,X		; 3F 63 1F 00
	sbc $F8BF00.l,X		; FF 00 BF F8
	ora $B01FF0.l,X		; 1F F0 1F B0
	and $805F80.l		; 2F 80 5F 80
	lda $FF01.w,X		; BD 01 FF
	.db $80, $FF		; 80 FF
	.db $80, $FF		; 80 FF
	sbc [$0F.b]		; E7 0F
	sbc $1FCF0F.l		; EF 0F CF 1F
	lda $7E7F3F.l,X		; BF 3F 7F 7E
	adc $7F7F.w,X		; 7D 7F 7F
	adc $477F7F.l,X		; 7F 7F 7F 47
	lda ($17.b),Y		; B1 17
	sbc ($CF.b,S),Y		; F3 CF
	rol $E7.b,X		; 36 E7
	clc		; 18
	sbc $04FF02.l,X		; FF 02 FF 04
	sbc $7D00.w,X		; FD 00 7D
	.db $82, $5E, $4F		; 82 5E 4F
	clc		; 18
	cmp $072B0D.l		; CF 0D 2B 07
	ora $07070D.l,X		; 1F 0D 07 07
	ora ($07.b,X)		; 01 07
	ora $07.b		; 05 07
	sta [$FF.b]		; 87 FF
	cpx #$F4FF.w		; E0 FF F4
	sbc $FCF7F8.l,X		; FF F8 F7 FC
	sbc $F4.b,X		; F5 F4
	sbc $FEFDFA.l,X		; FF FA FD FE
	adc $E0077C.l,X		; 7F 7C 07 E0
	ora ($E0.b,S),Y		; 13 E0
	wai		; CB
	sed		; F8
	sbc [$F4.b]		; E7 F4
	sbc [$FC.b],Y		; F7 FC
	sbc $FDF8.w,Y		; F9 F8 FD
	jsr ($FCFD.w,X)		; FC FD FC
	ldy #$8060.w		; A0 60 80
	rti		; 40

	.db $80, $40		; 80 40
	cpx #$8060.w		; E0 60 80
	brk $C8.b		; 00 C8
	plp		; 28
	cmp [$10.b]		; C7 10
	sbc [$00.b],Y		; F7 00
	ldy #$009F.w		; A0 9F 00
	sbc $E0FF00.l,X		; FF 00 FF E0
	sta $889FC0.l,X		; 9F C0 9F 88
	sbc [$E0.b]		; E7 E0
	sbc $C0FFE0.l,X		; FF E0 FF C0
	adc $C07FC0.l,X		; 7F C0 7F C0
	adc $807F80.l,X		; 7F 80 7F 80
	adc $D03FE0.l,X		; 7F E0 3F D0
	.db $10, $F0		; 10 F0
	.db $10, $BF		; 10 BF
	and $FF3FFF.l,X		; 3F FF 3F FF
	and $BF3FFF.l,X		; 3F FF 3F BF
	and $FF1FFF.l,X		; 3F FF 1F FF
	ora $010FEF.l		; 0F EF 0F 01
	brk $13.b		; 00 13
	clc		; 18
	and $010F08.l		; 2F 08 0F 01
	rol $FC01.w,X		; 3E 01 FC
	ora $FD.b,S		; 03 FD
	cop $F1.b		; 02 F1
	trb $FF00.w		; 1C 00 FF
	.db $10, $EF		; 10 EF
	and ($DF.b,X)		; 21 DF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	ora $EF17F3.l		; 0F F3 17 EF
	brk $FE.b		; 00 FE
	php		; 08
	jsr ($C121.w,X)		; FC 21 C1
	brk $F0.b		; 00 F0
	brk $C1.b		; 00 C1
	ora ($02.b,X)		; 01 02
	asl A		; 0A
	tsb $14.b		; 04 14
	asl A		; 0A
	sbc $E7FFFF.l,X		; FF FF FF E7
	dec $FE.b,X		; D6 FE
	inc $FEFF.w,X		; FE FF FE
	sbc $F0FFFC.l,X		; FF FC FF F0
	sbc $E7F5EA.l,X		; FF EA F5 E7
	asl $2FD1.w,X		; 1E D1 2F
	cmp $3E.b,S		; C3 3E
	.db $90, $6F		; 90 6F
	bit $F4C2.w,X		; 3C C2 F4
	ora #$0EF3.w		; 09 F3 0E
	sbc ($08.b,S),Y		; F3 08
	ora ($FB.b,X)		; 01 FB
	asl $E9.b,X		; 16 E9
	tda		; 7B
	and $7FFB.w,X		; 3D FB 7F
	sbc $FBFDFB.l,X		; FF FB FD FB
	sbc $FFFD.w,X		; FD FD FF
	xce		; FB
	ora $1C.b,S		; 03 1C
	ora [$3A.b]		; 07 3A
	lda $68C6.w,Y		; B9 C6 68
	dec $C3.b		; C6 C3
	ora [$0A.b]		; 07 0A
	asl $0D.b		; 06 0D
	cop $0D.b		; 02 0D
	tsb $E3.b		; 04 E3
	sed		; F8
	cmp ($FC.b,X)		; C1 FC
	ora $7C.b,S		; 03 7C
	eor $BC.b,S		; 43 BC
	cop $FC.b		; 02 FC
	ora ($FC.b,X)		; 01 FC
	ora ($FC.b,X)		; 01 FC
	ora $F8.b,S		; 03 F8
	sbc $FAFFFE.l,X		; FF FE FF FA
	sbc $88FF21.l,X		; FF 21 FF 88
	sbc $00FF51.l,X		; FF 51 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora ($FF.b,X)		; 01 FF
	ora $FF.b		; 05 FF
	dec $77FF.w,X		; DE FF 77
	sbc $FFFFAE.l,X		; FF AE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	eor $FF51FF.l,X		; 5F FF 51 FF
	tda		; 7B
	sbc $00FFE2.l,X		; FF E2 FF 00
	sbc $FF0010.l,X		; FF 10 00 FF
	rti		; 40

	sbc $AEFFA0.l,X		; FF A0 FF AE
	sbc $1DFF84.l,X		; FF 84 FF 1D
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	cld		; D8
	inx		; E8
	php		; 08
	.db $90, $60		; 90 60
	.db $D0, $50		; D0 50
	cpy #$E300.w		; C0 00 E3
	sep #$00		; E2 00
	brk $40.b		; 00 40
	brk $38.b		; 00 38
	sbc [$E8.b]		; E7 E8
	sbc [$D0.b],Y		; F7 D0
	cmp $C0EF90.l,X		; DF 90 EF C0
	and $001F63.l,X		; 3F 63 1F 00
	sbc $F8BF00.l,X		; FF 00 BF F8
	ora $B01FF0.l,X		; 1F F0 1F B0
	and $805F80.l		; 2F 80 5F 80
	lda $FF01.w,X		; BD 01 FF
	.db $80, $FF		; 80 FF
	.db $80, $FF		; 80 FF
	sbc [$0F.b]		; E7 0F
	sbc $1FCF0F.l		; EF 0F CF 1F
	lda $7E7F3F.l,X		; BF 3F 7F 7E
	adc $7F7F.w,X		; 7D 7F 7F
	adc $F07F7F.l,X		; 7F 7F 7F F0
	xce		; FB
	sbc $FDFBFF.l,X		; FF FF FB FD
	sbc $FBF9.w,X		; FD F9 FB
	tda		; 7B
	xce		; FB
	and $3AF8.w,Y		; 39 F8 3A
	inc $F814.w,X		; FE 14 F8
	sbc [$FF.b],Y		; F7 FF
	plx		; FA
	sbc $FBFE.w,Y		; F9 FE FB
	inc $7C7F.w,X		; FE 7F 7C
	and $3C3E3E.l,X		; 3F 3E 3E 3C
	trb $F412.w		; 1C 12 F4
	php		; 08
	sbc $07FB03.l,X		; FF 03 FB 07
	sbc $85FF05.l,X		; FF 05 FF 85
	sbc $C5FFC7.l,X		; FF C7 FF C5
	sbc ($E7.b,S),Y		; F3 E7
	xce		; FB
	ora $FA.b,S		; 03 FA
	phd		; 0B
	plx		; FA
	phd		; 0B
	jsr ($FC09.w,X)		; FC 09 FC
	ora #$0BFE.w		; 09 FE 0B
	sbc $FF09.w,X		; FD 09 FF
	phd		; 0B
	.db $F0, $FB		; F0 FB
	sbc $FDFBFF.l,X		; FF FF FB FD
	sbc $FBF9.w,X		; FD F9 FB
	tda		; 7B
	xce		; FB
	and $3AF8.w,Y		; 39 F8 3A
	inc $F814.w,X		; FE 14 F8
	sbc [$FF.b],Y		; F7 FF
	plx		; FA
	sbc $FBFE.w,Y		; F9 FE FB
	inc $7C7F.w,X		; FE 7F 7C
	and $3C3E3E.l,X		; 3F 3E 3E 3C
	trb $F412.w		; 1C 12 F4
	php		; 08
	sbc $07FB03.l,X		; FF 03 FB 07
	sbc $85FF05.l,X		; FF 05 FF 85
	sbc $C5FFC7.l,X		; FF C7 FF C5
	sbc ($E7.b,S),Y		; F3 E7
	xce		; FB
	ora $FA.b,S		; 03 FA
	phd		; 0B
	plx		; FA
	phd		; 0B
	jsr ($FC09.w,X)		; FC 09 FC
	ora #$0BFE.w		; 09 FE 0B
	sbc $FF09.w,X		; FD 09 FF
	phd		; 0B
	and $ECE3E2.l		; 2F E2 E3 EC
	sbc $E8.b,S		; E3 E8
	sbc [$E8.b]		; E7 E8
	cmp $8A8DCE.l		; CF CE 8D 8A
	ora $1F08.w		; 0D 08 1F
	clc		; 18
	and $C5.b		; 25 C5
	sbc $0D.b		; E5 0D
	sbc [$0B.b]		; E7 0B
	sbc [$0F.b]		; E7 0F
	cmp $8D01.w		; CD 01 8D
	ora $0F.b		; 05 0F
	ora [$3F.b]		; 07 3F
	and [$3F.b]		; 27 3F
	sec		; 38
	sbc [$F0.b],Y		; F7 F0
	sbc ($F6.b,S),Y		; F3 F6
	sbc [$F0.b],Y		; F7 F0
	sbc $FFFA.w,X		; FD FA FF
	inc $FEFD.w,X		; FE FD FE
	sbc $F8C9FF.l,X		; FF FF C9 F8
	ora #$0FF8.w		; 09 F8 0F
	plx		; FA
	ora #$11F8.w		; 09 F8 11
	sed		; F8
	and $FC.b,X		; 35 FC
	pea $E7FC.w		; F4 FC E7
	sbc $E408FF.l,X		; FF FF 08 E4
	phd		; 0B
	.db $F0, $1F		; F0 1F
	inc $FB0D.w,X		; FE 0D FB
	ora ($FF.b)		; 12 FF
	ora $BF1FFF.l,X		; 1F FF 1F BF
	ora $F7FCEB.l		; 0F EB FC F7
	xce		; FB
	xce		; FB
	sbc $F8F9F7.l,X		; FF F7 F9 F8
	sbc $FFFE.w,X		; FD FE FF
	adc $BF7F7F.l		; 6F 7F 7F BF
	.db $F0, $1B		; F0 1B
	sbc $0C.b,S		; E3 0C
	xce		; FB
	tsb $F1.b		; 04 F1
	asl $FC.b		; 06 FC
	ora $FE.b,S		; 03 FE
	brk $EF.b		; 00 EF
	rts		; 60

	and $0FE4F0.l,X		; 3F F0 E4 0F
	sed		; F8
	ora [$F0.b]		; 07 F0
	ora [$FC.b]		; 07 FC
	ora $FD.b,S		; 03 FD
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	rts		; 60

	adc $26DB30.l,X		; 7F 30 DB 26
	sec		; 38
	cmp [$F0.b]		; C7 F0
	ora $3700FF.l		; 0F FF 00 37
	iny		; C8
	.db $30, $DE		; 30 DE
	sbc $FFFE.w,X		; FD FE FF
	inc $3FFF.w,X		; FE FF 3F
	sed		; F8
	sed		; F8
	.db $F0, $F0		; F0 F0
	sbc $FFFFFF.l,X		; FF FF FF FF
	.db $D0, $F3		; D0 F3
	sbc $FFFF.w,X		; FD FF FF
	sbc $C0C626.l,X		; FF 26 C6 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sed		; F8
	jsr ($FFCF.w,X)		; FC CF FF
	brk $FF.b		; 00 FF
	brk $06.b		; 00 06
	sbc $FF00.w,Y		; F9 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cld		; D8
	ora [$33.b],Y		; 17 33
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $EB.b		; 00 EB
	trb $6F.b		; 14 6F
	.db $90, $DF		; 90 DF
	jsr $408F.w		; 20 8F 40
	eor $40BFE0.l,X		; 5F E0 BF 40
	sbc $40FF80.l,X		; FF 80 FF 40
	xba		; EB
	sbc $FF7F6F.l,X		; FF 6F 7F FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $07FFDF.l,X		; FF DF FF 07
	clc		; 18
	ora $103F10.l		; 0F 10 3F 10
	eor $60BF20.l		; 4F 20 BF 60
	sbc $00FFC0.l,X		; FF C0 FF 00
	sbc $E01700.l		; EF 00 17 E0
	ora $F01FE0.l,X		; 1F E0 1F F0
	and $805FC0.l,X		; 3F C0 5F 80
	lda $00FF80.l,X		; BF 80 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $10FE00.l,X		; FF 00 FE 10
	sbc $21FE00.l,X		; FF 00 FE 21
	cmp $FF20.w,X		; DD 20 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FBFFFD.l,X		; FF FD FF FB
	inc $FFE4.w,X		; FE E4 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $02FF01.l,X		; FF 01 FF 02
	sbc $DB01.w,X		; FD 01 DB
	ora $FF00FF.l,X		; 1F FF 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	.db $80, $FF		; 80 FF
	brk $BF.b		; 00 BF
	rti		; 40

	sbc $4BBF00.l,X		; FF 00 BF 4B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FF3FFF.l,X		; FF FF 3F FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $40FF00.l,X		; FF 00 FF 40
	sbc $C0FF00.l,X		; FF 00 FF C0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00BF00.l,X		; FF 00 BF 00
	sbc $003F00.l,X		; FF 00 3F 00
	cmp [$00.b]		; C7 00
	adc $00D740.l		; 6F 40 D7 00
	xba		; EB
	trb $F3.b		; 14 F3
	trb $04FB.w		; 1C FB 04
	.db $F0, $53		; F0 53
	sbc $8036.w,Y		; F9 36 80
	lda $80BFC0.l,X		; BF C0 BF 80
	sbc $EFF4CF.l,X		; FF CF F4 EF
	sbc $FFE7FF.l,X		; FF FF E7 FF
	sbc [$FD.b],Y		; F7 FD
	sbc $F880.w,X		; FD 80 F8
	brk $40.b		; 00 40
	cpy #$E460.w		; C0 60 E4
	phd		; 0B
	cpx $FC10.w		; EC 10 FC
	.db $10, $F7		; 10 F7
	tsb $07FF.w		; 0C FF 07
	sbc $3FFFFF.l,X		; FF FF FF 3F
	lda $1FE01F.l,X		; BF 1F E0 1F
	cpx #$E00F.w		; E0 0F E0
	ora $F903F4.l		; 0F F4 03 F9
	ora ($2F.b,X)		; 01 2F
.ACCU 8
	sep #$E3		; E2 E3
	cpx $E8E3.w		; EC E3 E8
	sbc [$E8.b]		; E7 E8
	cmp $8A8DCE.l		; CF CE 8D 8A
	ora $1F08.w		; 0D 08 1F
	clc		; 18
	and $C5.b		; 25 C5
	sbc $0D.b		; E5 0D
	sbc [$0B.b]		; E7 0B
	sbc [$0F.b]		; E7 0F
	cmp $8D01.w		; CD 01 8D
	ora $0F.b		; 05 0F
	ora [$3F.b]		; 07 3F
	and [$3F.b]		; 27 3F
	sec		; 38
	sbc [$F0.b],Y		; F7 F0
	sbc ($F6.b,S),Y		; F3 F6
	sbc [$F0.b],Y		; F7 F0
	sbc $FFFA.w,X		; FD FA FF
	inc $FEFD.w,X		; FE FD FE
	sbc $F8C9FF.l,X		; FF FF C9 F8
	ora #$F8.b		; 09 F8
	ora $F809FA.l		; 0F FA 09 F8
	ora ($F8.b),Y		; 11 F8
	and $FC.b,X		; 35 FC
	pea $E7FC.w		; F4 FC E7
	sbc $E408FF.l,X		; FF FF 08 E4
	phd		; 0B
	.db $F0, $1F		; F0 1F
	inc $FB0D.w,X		; FE 0D FB
	ora ($FF.b)		; 12 FF
	ora $BF1FFF.l,X		; 1F FF 1F BF
	ora $F7FCEB.l		; 0F EB FC F7
	xce		; FB
	xce		; FB
	sbc $F8F9F7.l,X		; FF F7 F9 F8
	sbc $FFFE.w,X		; FD FE FF
	adc $BF7F7F.l		; 6F 7F 7F BF
	.db $F0, $1B		; F0 1B
	sbc $0C.b,S		; E3 0C
	xce		; FB
	tsb $F1.b		; 04 F1
	asl $FC.b		; 06 FC
	ora $FE.b,S		; 03 FE
	brk $EF.b		; 00 EF
	rts		; 60

	and $0FE4F0.l,X		; 3F F0 E4 0F
	sed		; F8
	ora [$F0.b]		; 07 F0
	ora [$FC.b]		; 07 FC
	ora $FD.b,S		; 03 FD
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	rts		; 60

	adc $26DB30.l,X		; 7F 30 DB 26
	sec		; 38
	cmp [$F0.b]		; C7 F0
	ora $3700FF.l		; 0F FF 00 37
	iny		; C8
	.db $30, $DE		; 30 DE
	sbc $FFFE.w,X		; FD FE FF
	inc $3FFF.w,X		; FE FF 3F
	sed		; F8
	sed		; F8
	.db $F0, $F0		; F0 F0
	sbc $FFFFFF.l,X		; FF FF FF FF
	.db $D0, $F3		; D0 F3
	sbc $FFFF.w,X		; FD FF FF
	sbc $C0C626.l,X		; FF 26 C6 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sed		; F8
	jsr ($FFCF.w,X)		; FC CF FF
	brk $FF.b		; 00 FF
	brk $06.b		; 00 06
	sbc $FF00.w,Y		; F9 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cld		; D8
	ora [$33.b],Y		; 17 33
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $EB.b		; 00 EB
	trb $6F.b		; 14 6F
	.db $90, $DF		; 90 DF
	jsr $408F.w		; 20 8F 40
	eor $40BFE0.l,X		; 5F E0 BF 40
	sbc $40FF80.l,X		; FF 80 FF 40
	xba		; EB
	sbc $FF7F6F.l,X		; FF 6F 7F FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $07FFDF.l,X		; FF DF FF 07
	clc		; 18
	ora $103F10.l		; 0F 10 3F 10
	eor $60BF20.l		; 4F 20 BF 60
	sbc $00FFC0.l,X		; FF C0 FF 00
	sbc $E01700.l		; EF 00 17 E0
	ora $F01FE0.l,X		; 1F E0 1F F0
	and $805FC0.l,X		; 3F C0 5F 80
	lda $00FF80.l,X		; BF 80 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $10FE00.l,X		; FF 00 FE 10
	sbc $21FE00.l,X		; FF 00 FE 21
	cmp $FF20.w,X		; DD 20 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FBFFFD.l,X		; FF FD FF FB
	inc $FFE4.w,X		; FE E4 FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $02FF01.l,X		; FF 01 FF 02
	sbc $DB01.w,X		; FD 01 DB
	ora $FF00FF.l,X		; 1F FF 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	.db $80, $FF		; 80 FF
	brk $BF.b		; 00 BF
	rti		; 40

	sbc $4BBF00.l,X		; FF 00 BF 4B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FF3FFF.l,X		; FF FF 3F FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $40FF00.l,X		; FF 00 FF 40
	sbc $C0FF00.l,X		; FF 00 FF C0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00BF00.l,X		; FF 00 BF 00
	sbc $003F00.l,X		; FF 00 3F 00
	cmp [$00.b]		; C7 00
	adc $00D740.l		; 6F 40 D7 00
	xba		; EB
	trb $F3.b		; 14 F3
	trb $04FB.w		; 1C FB 04
	.db $F0, $53		; F0 53
	sbc $8036.w,Y		; F9 36 80
	lda $80BFC0.l,X		; BF C0 BF 80
	sbc $EFF4CF.l,X		; FF CF F4 EF
	sbc $FFE7FF.l,X		; FF FF E7 FF
	sbc [$FD.b],Y		; F7 FD
	sbc $F880.w,X		; FD 80 F8
	brk $40.b		; 00 40
	cpy #$E460.w		; C0 60 E4
	phd		; 0B
	cpx $FC10.w		; EC 10 FC
	.db $10, $F7		; 10 F7
	tsb $07FF.w		; 0C FF 07
	sbc $3FFFFF.l,X		; FF FF FF 3F
	lda $1FE01F.l,X		; BF 1F E0 1F
	cpx #$E00F.w		; E0 0F E0
	ora $F903F4.l		; 0F F4 03 F9
	ora ($FA.b,X)		; 01 FA
	brk $F1.b		; 00 F1
	rol $1FFC.w,X		; 3E FC 1F
	inc $FF0E.w,X		; FE 0E FF
	ora $FF0FFF.l		; 0F FF 0F FF
	ora $FF.b,S		; 03 FF
	tsb $0C.b		; 04 0C
	asl $3038.w		; 0E 38 30
	asl $0F14.w,X		; 1E 14 0F
	brk $8F.b		; 00 8F
	.db $80, $8F		; 80 8F
	.db $80, $8B		; 80 8B
	sty $8382.w		; 8C 82 83
	sbc $C0FFFB.l,X		; FF FB FF C0
	sbc $7F7EEC.l,X		; FF EC 7E 7F
	adc $7F7F7F.l,X		; 7F 7F 7F 7F
	adc $7F777F.l,X		; 7F 7F 77 7F
	xce		; FB
	phd		; 0B
	.db $F0, $00		; F0 00
	pea $710C.w		; F4 0C 71
	stx $8F70.w		; 8E 70 8F
	.db $70, $8F		; 70 8F
	jmp ($778F.w,X)		; 7C 8F 77
	sta [$FA.b]		; 87 FA
	brk $F1.b		; 00 F1
	rol $1FFC.w,X		; 3E FC 1F
	inc $FF0E.w,X		; FE 0E FF
	ora $FF0FFF.l		; 0F FF 0F FF
	ora $FF.b,S		; 03 FF
	tsb $0C.b		; 04 0C
	asl $3038.w		; 0E 38 30
	asl $0F14.w,X		; 1E 14 0F
	brk $8F.b		; 00 8F
	.db $80, $8F		; 80 8F
	.db $80, $8B		; 80 8B
	sty $8382.w		; 8C 82 83
	sbc $C0FFFB.l,X		; FF FB FF C0
	sbc $7F7EEC.l,X		; FF EC 7E 7F
	adc $7F7F7F.l,X		; 7F 7F 7F 7F
	adc $7F777F.l,X		; 7F 7F 77 7F
	xce		; FB
	phd		; 0B
	.db $F0, $00		; F0 00
	pea $710C.w		; F4 0C 71
	stx $8F70.w		; 8E 70 8F
	.db $70, $8F		; 70 8F
	jmp ($778F.w,X)		; 7C 8F 77
	sta [$7D.b]		; 87 7D
	tda		; 7B
	pei ($50.b)		; D4 50
	and ($E9.b,X)		; 21 E9
	txa		; 8A
	adc ($A9.b,S),Y		; 73 A9
	sta ($F5.b,S),Y		; 93 F5
	inx		; E8
	sbc $FDFFF0.l,X		; FF F0 FF FD
	asl $6D.b,X		; 16 6D
	trb $09CB.w		; 1C CB 09
	and [$FB.b]		; 27 FB
	stx $2DFA.w		; 8E FA 2D
	inc $F414.w		; EE 14 F4
	php		; 08
	plx		; FA
	asl $96.b		; 06 96
	sbc $DFF4BB.l,X		; FF BB F4 DF
	.db $30, $FE		; 30 FE
	bit #$BC.b		; 89 BC
	xba		; EB
	sbc $FFF5.w,X		; FD F5 FF
	sed		; F8
	xce		; FB
	sbc $E4FDEE.l,X		; FF EE FD E4
	sbc ($30.b,S),Y		; F3 30
	and [$88.b],Y		; 37 88
	sta $14AF68.l		; 8F 68 AF 14
	sbc [$08.b],Y		; F7 08
	sbc $FF07.w,Y		; F9 07 FF
	and $CFAFCF.l,X		; 3F CF AF CF
	sbc $5FAF9F.l		; EF 9F AF 5F
	lda $3FFF5F.l,X		; BF 5F FF 3F
	sbc $3FFF3F.l,X		; FF 3F FF 3F
	sbc $AFFF3F.l,X		; FF 3F FF AF
	and $3F7FAF.l,X		; 3F AF 7F 3F
	adc $5F5F3F.l,X		; 7F 3F 5F 5F
	eor $7F7F7F.l,X		; 5F 7F 7F 7F
	and $70AFF0.l,X		; 3F F0 AF 70
	adc $F0BFF0.l,X		; 7F F0 BF F0
	lda $E0DFE0.l,X		; BF E0 DF E0
	cmp $C07FC0.l,X		; DF C0 7F C0
	and $E02FF0.l,X		; 3F F0 2F E0
	and $E02FE0.l		; 2F E0 2F E0
	adc $C05FA0.l,X		; 7F A0 5F C0
	adc $407FC0.l,X		; 7F C0 7F 40
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FCFFFC.l,X		; FF FC FF FC
	sed		; F8
	jsr ($FBFD.w,X)		; FC FD FB
	inc $F5F8.w,X		; FE F8 F5
	sbc $FFFF.w,X		; FD FF FF
	inc $FFFE.w,X		; FE FE FF
	jsr ($FFFE.w,X)		; FC FE FF
	sbc $F8F9FD.l,X		; FF FD F9 F8
	sbc $FFF5FD.l,X		; FF FD F5 FF
	sbc $01FE00.l,X		; FF 00 FE 01
	inc $FE02.w,X		; FE 02 FE
	ora $FF.b,S		; 03 FF
	asl $FD.b		; 06 FD
	ora [$FE.b]		; 07 FE
	ora [$F2.b]		; 07 F2
	asl $FF.b		; 06 FF
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	cop $FB.b		; 02 FB
	cop $F8.b		; 02 F8
	brk $FF.b		; 00 FF
	ora [$FF.b]		; 07 FF
	ora [$6A.b]		; 07 6A
	sta $EB.b,X		; 95 EB
	.db $10, $58		; 10 58
	cpy #$3493.w		; C0 93 34
	tas		; 1B
	rti		; 40

	ora $989F20.l,X		; 1F 20 9F 98
	sbc ($72.b),Y		; F1 72
.ACCU 8
	sep #$E3		; E2 E3
	sbc $773E.w,X		; FD 3E 77
	and ($5A.b)		; 32 5A
	phk		; 4B
	bit $23.b		; 24 23
	iny		; C8
	cmp $7E37F8.l		; CF F8 37 7E
	sbc $F4EF.w,Y		; F9 EF F4
	sec		; 38
	and $92F65E.l		; 2F 5E F6 92
	adc $1FEF93.l,X		; 7F 93 EF 1F
	sbc $8BE7EF.l		; EF EF E7 8B
	ora [$63.b]		; 07 63
	rts		; 60

	sbc $382C.w,X		; FD 2C 38
	and ($CA.b,S),Y		; 33 CA
	lsr A		; 4A
	bit $23.b,X		; 34 23
	iny		; C8
	cmp $F63710.l,X		; DF 10 37 F6
	sbc ($9F.b),Y		; F1 9F
	rti		; 40

	ldx $BB45.w,Y		; BE 45 BB
	.db $50, $6C		; 50 6C
	rol A		; 2A
	cpy #$C846.w		; C0 46 C8
	php		; 08
	stz $F300.w,X		; 9E 00 F3
	ora ($FD.b,S),Y		; 13 FD
	lda [$C3.b]		; A7 C3
	lda $BFE9.w,X		; BD E9 BF
	cmp [$CD.b]		; C7 CD
	ora ($C7.b,X)		; 01 C7
	cli		; 58
	.db $D0, $7D		; D0 7D
	tyx		; BB
	and $80.b		; 25 80
	sbc [$5E.b]		; E7 5E
	sbc $EFFF.w,Y		; F9 FF EF
	tda		; 7B
	cmp [$76.b]		; C7 76
	cmp [$FF.b]		; C7 FF
	.db $D0, $EF		; D0 EF
	lda $D0E0.w,Y		; B9 E0 D0
	inc $049D.w,X		; FE 9D 04
.ACCU 16
.INDEX 16
	rep #$BC		; C2 BC
	adc #$562F.w		; 69 2F 56
	jmp ($B83F.w,X)		; 7C 3F B8
	adc $9F64F7.l		; 6F F7 64 9F
	and $D3.b,X		; 35 D3
	sbc $7FFF07.l,X		; FF 07 FF 7F
	sbc $7F7F7F.l,X		; FF 7F 7F 7F
	lda $7F3F3F.l,X		; BF 3F 3F 7F
	and $0FBF7F.l,X		; 3F 7F BF 0F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	lda $FFFFFF.l,X		; BF FF FF FF
	lda $FF5FBF.l,X		; BF BF 5F FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C0BF80.l,X		; FF 80 BF C0
	sbc $A07FC0.l,X		; FF C0 7F A0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00BF80.l,X		; FF 80 BF 00
	lda $001F00.l,X		; BF 00 1F 00
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $D47B.w,X		; 7D 7B D4
	.db $50, $21		; 50 21
	sbc #$738A.w		; E9 8A 73
	lda #$F593.w		; A9 93 F5
	inx		; E8
	sbc $FDFFF0.l,X		; FF F0 FF FD
	asl $6D.b,X		; 16 6D
	trb $09CB.w		; 1C CB 09
	and [$FB.b]		; 27 FB
	stx $2DFA.w		; 8E FA 2D
	inc $F414.w		; EE 14 F4
	php		; 08
	plx		; FA
	asl $96.b		; 06 96
	sbc $DFF4BB.l,X		; FF BB F4 DF
	.db $30, $FE		; 30 FE
	bit #$EBBC.w		; 89 BC EB
	sbc $FFF5.w,X		; FD F5 FF
	sed		; F8
	xce		; FB
	sbc $E4FDEE.l,X		; FF EE FD E4
	sbc ($30.b,S),Y		; F3 30
	and [$88.b],Y		; 37 88
	sta $14AF68.l		; 8F 68 AF 14
	sbc [$08.b],Y		; F7 08
	sbc $FF07.w,Y		; F9 07 FF
	and $CFAFCF.l,X		; 3F CF AF CF
	sbc $5FAF9F.l		; EF 9F AF 5F
	lda $3FFF5F.l,X		; BF 5F FF 3F
	sbc $3FFF3F.l,X		; FF 3F FF 3F
	sbc $AFFF3F.l,X		; FF 3F FF AF
	and $3F7FAF.l,X		; 3F AF 7F 3F
	adc $5F5F3F.l,X		; 7F 3F 5F 5F
	eor $7F7F7F.l,X		; 5F 7F 7F 7F
	and $70AFF0.l,X		; 3F F0 AF 70
	adc $F0BFF0.l,X		; 7F F0 BF F0
	lda $E0DFE0.l,X		; BF E0 DF E0
	cmp $C07FC0.l,X		; DF C0 7F C0
	and $E02FF0.l,X		; 3F F0 2F E0
	and $E02FE0.l		; 2F E0 2F E0
	adc $C05FA0.l,X		; 7F A0 5F C0
	adc $407FC0.l,X		; 7F C0 7F 40
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FCFFFC.l,X		; FF FC FF FC
	sed		; F8
	jsr ($FBFD.w,X)		; FC FD FB
	inc $F5F8.w,X		; FE F8 F5
	sbc $FFFF.w,X		; FD FF FF
	inc $FFFE.w,X		; FE FE FF
	jsr ($FFFE.w,X)		; FC FE FF
	sbc $F8F9FD.l,X		; FF FD F9 F8
	sbc $FFF5FD.l,X		; FF FD F5 FF
	sbc $01FE00.l,X		; FF 00 FE 01
	inc $FE02.w,X		; FE 02 FE
	ora $FF.b,S		; 03 FF
	asl $FD.b		; 06 FD
	ora [$FE.b]		; 07 FE
	ora [$F2.b]		; 07 F2
	asl $FF.b		; 06 FF
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	cop $FB.b		; 02 FB
	cop $F8.b		; 02 F8
	brk $FF.b		; 00 FF
	ora [$FF.b]		; 07 FF
	ora [$6A.b]		; 07 6A
	sta $EB.b,X		; 95 EB
	.db $10, $58		; 10 58
	cpy #$3493.w		; C0 93 34
	tas		; 1B
	rti		; 40

	ora $989F20.l,X		; 1F 20 9F 98
	sbc ($72.b),Y		; F1 72
.ACCU 8
	sep #$E3		; E2 E3
	sbc $773E.w,X		; FD 3E 77
	and ($5A.b)		; 32 5A
	phk		; 4B
	bit $23.b		; 24 23
	iny		; C8
	cmp $7E37F8.l		; CF F8 37 7E
	sbc $F4EF.w,Y		; F9 EF F4
	sec		; 38
	and $92F65E.l		; 2F 5E F6 92
	adc $1FEF93.l,X		; 7F 93 EF 1F
	sbc $8BE7EF.l		; EF EF E7 8B
	ora [$63.b]		; 07 63
	rts		; 60

	sbc $382C.w,X		; FD 2C 38
	and ($CA.b,S),Y		; 33 CA
	lsr A		; 4A
	bit $23.b,X		; 34 23
	iny		; C8
	cmp $F63710.l,X		; DF 10 37 F6
	sbc ($9F.b),Y		; F1 9F
	rti		; 40

	ldx $BB45.w,Y		; BE 45 BB
	.db $50, $6C		; 50 6C
	rol A		; 2A
	cpy #$C846.w		; C0 46 C8
	php		; 08
	stz $F300.w,X		; 9E 00 F3
	ora ($FD.b,S),Y		; 13 FD
	lda [$C3.b]		; A7 C3
	lda $BFE9.w,X		; BD E9 BF
	cmp [$CD.b]		; C7 CD
	ora ($C7.b,X)		; 01 C7
	cli		; 58
	.db $D0, $7D		; D0 7D
	tyx		; BB
	and $80.b		; 25 80
	sbc [$5E.b]		; E7 5E
	sbc $EFFF.w,Y		; F9 FF EF
	tda		; 7B
	cmp [$76.b]		; C7 76
	cmp [$FF.b]		; C7 FF
	.db $D0, $EF		; D0 EF
	lda $D0E0.w,Y		; B9 E0 D0
	inc $049D.w,X		; FE 9D 04
.ACCU 16
.INDEX 16
	rep #$BC		; C2 BC
	adc #$562F.w		; 69 2F 56
	jmp ($B83F.w,X)		; 7C 3F B8
	adc $9F64F7.l		; 6F F7 64 9F
	and $D3.b,X		; 35 D3
	sbc $7FFF07.l,X		; FF 07 FF 7F
	sbc $7F7F7F.l,X		; FF 7F 7F 7F
	lda $7F3F3F.l,X		; BF 3F 3F 7F
	and $0FBF7F.l,X		; 3F 7F BF 0F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	lda $FFFFFF.l,X		; BF FF FF FF
	lda $FF5FBF.l,X		; BF BF 5F FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C0BF80.l,X		; FF 80 BF C0
	sbc $A07FC0.l,X		; FF C0 7F A0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00BF80.l,X		; FF 80 BF 00
	lda $001F00.l,X		; BF 00 1F 00
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc ($90.b,S),Y		; 73 90
	eor ($81.b,X)		; 41 81
	dec $4F80.w,X		; DE 80 4F
	.db $50, $DF		; 50 DF
	stz $8F.b,X		; 74 8F
	.db $82, $1F, $1D		; 82 1F 1D
	ora $928040.l,X		; 1F 40 80 92
	brk $11.b		; 00 11
	.db $B0, $BE		; B0 BE
	and $6B4D.w		; 2D 4D 6B
	tda		; 7B
	lda $0209.w,Y		; B9 09 02
	sta ($07.b)		; 92 07
	and $AEAE2F.l		; 2F 2F AE AE
	lda $CFFF3F.l,X		; BF 3F FF CF
	sbc $BFBF.w,X		; FD BF BF
	cmp $FFEFFB.l		; CF FB EF FF
	lda $4EBEFF.l		; AF FF BE 4E
	lda $FFBFCF.l		; AF CF BF FF
	adc $AFCD.w		; 6D CD AF
	sbc $9FCBBB.l		; EF BB CB 9F
	sbc $73A72F.l,X		; FF 2F A7 73
	.db $90, $41		; 90 41
	sta ($DE.b,X)		; 81 DE
	.db $80, $4F		; 80 4F
	.db $50, $DF		; 50 DF
	stz $8F.b,X		; 74 8F
	.db $82, $1F, $1D		; 82 1F 1D
	ora $928040.l,X		; 1F 40 80 92
	brk $11.b		; 00 11
	.db $B0, $BE		; B0 BE
	and $6B4D.w		; 2D 4D 6B
	tda		; 7B
	lda $0209.w,Y		; B9 09 02
	sta ($07.b)		; 92 07
	and $AEAE2F.l		; 2F 2F AE AE
	lda $CFFF3F.l,X		; BF 3F FF CF
	sbc $BFBF.w,X		; FD BF BF
	cmp $FFEFFB.l		; CF FB EF FF
	lda $4EBEFF.l		; AF FF BE 4E
	lda $FFBFCF.l		; AF CF BF FF
	adc $AFCD.w		; 6D CD AF
	sbc $9FCBBB.l		; EF BB CB 9F
	sbc $BDA72F.l,X		; FF 2F A7 BD
	bit $9FDF.w,X		; 3C DF 9F
	adc $97970F.l		; 6F 0F 97 97
	lda ($33.b,S),Y		; B3 33
	tsa		; 3B
	tyx		; BB
	adc $3FFD.w,X		; 7D FD 3F
	lda $5E81BD.l,X		; BF BD 81 5E
	eor ($3F.b,X)		; 41 3F
	rti		; 40

	ora $8CBF98.l		; 0F 98 BF 8C
	lda $423F04.l,X		; BF 04 3F 42
	sbc $FFFF40.l,X		; FF 40 FF FF
	inc $EFFF.w,X		; FE FF EF
	cmp $FFE77F.l,X		; DF 7F E7 FF
	sbc [$FF.b],Y		; F7 FF
	tda		; 7B
	lda $7FFF7F.l,X		; BF 7F FF 7F
	cmp $FF.b,S		; C3 FF
	sbc ($FF.b,X)		; E1 FF
	.db $D0, $CF		; D0 CF
	cpx #$C4E7.w		; E0 E7 C4
	sbc [$40.b],Y		; F7 40
	tda		; 7B
	.db $42, $7F		; 42 7F
	rti		; 40

	adc $7F7FBF.l,X		; 7F BF 7F 7F
	sbc $A63F5F.l,X		; FF 5F 3F A6
	stx $BF.b,Y		; 96 BF
	sta $F7CFFF.l		; 8F FF CF F7
	inx		; E8
	cmp ($CA.b,S),Y		; D3 CA
	sbc $3FBFFF.l,X		; FF FF BF 3F
	sbc $76E65F.l,X		; FF 5F E6 76
	sbc $3FFF6F.l,X		; FF 6F FF 3F
	sed		; F8
	sec		; 38
	cmp ($12.b)		; D2 12
	sbc $40BFC0.l,X		; FF C0 BF 40
	adc $ABF4E0.l,X		; 7F E0 F4 AB
	sbc $D0FFF0.l,X		; FF F0 FF D0
	sbc $FDFBFF.l,X		; FF FF FB FD
	lda $003F80.l,X		; BF 80 3F 00
	cmp $A03F40.l,X		; DF 40 3F A0
	adc $D01FE0.l		; 6F E0 1F D0
	and [$F0.b],Y		; 37 F0
	ora [$F0.b],Y		; 17 F0
	sbc [$F0.b],Y		; F7 F0
	inc $F0F0.w,X		; FE F0 F0
	pea $FAF2.w		; F4 F2 FA
.INDEX 8
	sep #$5A		; E2 5A
	adc $FF49.w,Y		; 79 49 FF
	ora $FB01E1.l		; 0F E1 01 FB
	inc $F3.b,X		; F6 F3
	sbc [$F4.b],Y		; F7 F4
	sed		; F8
	sbc ($F0.b)		; F2 F0
	eor ($58.b)		; 52 58
	eor $1F48.w,Y		; 59 48 1F
	php		; 08
	ora #$F418.w		; 09 18 F4
	phd		; 0B
	sbc $0FF80F.l,X		; FF 0F F8 0F
	.db $F0, $0F		; F0 0F
	sed		; F8
	lda $F0BF70.l,X		; BF 70 BF F0
	sbc $F7F7F8.l,X		; FF F8 F7 F7
	asl $F7.b		; 06 F7
	cop $F7.b		; 02 F7
	ora $F7.b,S		; 03 F7
	ora [$EF.b]		; 07 EF
	ora [$E7.b]		; 07 E7
	ora $E70FE7.l		; 0F E7 0F E7
	ora $0E21E6.l		; 0F E6 21 0E
	.db $80, $0F		; 80 0F
	.db $10, $19		; 10 19
	phd		; 0B
	txa		; 8A
	sta [$40.b]		; 87 40
	rti		; 40

	jsr ($B0FC.w,X)		; FC FC B0
	.db $B0, $C8		; B0 C8
	inc $90.b		; E6 90
	and $0D1E01.l		; 2F 01 1E 0D
	ora ($8E.b,S),Y		; 13 8E
	ora [$40.b],Y		; 17 40
	brk $FC.b		; 00 FC
	brk $B0.b		; 00 B0
	brk $F6.b		; 00 F6
	cmp [$8F.b],Y		; D7 8F
	dec $FF0E.w,X		; DE 0E FF
	ora ($EF.b,X)		; 01 EF
	asl $EF.b		; 06 EF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cpy #$CE.b		; C0 CE
	.db $70, $EF		; 70 EF
	sbc ($EE.b,X)		; E1 EE
	sbc $F6F0.w		; ED F0 F6
	sbc $FFFF.w,Y		; F9 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc ($08.b,S),Y		; F3 08
	tad		; 5B
	.db $80, $6F		; 80 6F
	clc		; 18
	clv		; B8
	ldx $0319.w		; AE 19 03
	asl $0619.w,X		; 1E 19 06
	ora $3906.w,Y		; 19 06 39
	ora $01A59B.l		; 0F 9B A5 01
	adc ($C9.b),Y		; 71 C9
	sta $F9.b,X		; 95 F9
	ora $7F177E.l		; 0F 7E 17 7F
	ora $7F0F7F.l		; 0F 7F 0F 7F
	sbc ($F7.b,S),Y		; F3 F7
	stp		; DB
	xce		; FB
	cmp [$FF.b],Y		; D7 FF
	.db $10, $9F		; 10 9F
	phd		; 0B
	stx $9001.w		; 8E 01 90
	ora #$0990.w		; 09 90 09
	.db $90, $07		; 90 07
	xce		; FB
	lda ($5F.b,X)		; A1 5F
	adc ($4F.b),Y		; 71 4F
	.db $50, $FC		; 50 FC
	nop		; EA
	sbc $FFE0.w,Y		; F9 E0 FF
	cpx #$FF.b		; E0 FF
	cpy #$FF.b		; C0 FF
	adc $0B7727.l		; 6F 27 77 0B
	sbc ($2F.b,S),Y		; F3 2F
	eor [$C7.b],Y		; 57 C7
	adc $C9FFE3.l,X		; 7F E3 FF C9
	adc $1C7F80.l,X		; 7F 80 7F 1C
	lda $E70B67.l,X		; BF 67 0B E7
	phb		; 8B
	sbc [$57.b]		; E7 57
	sbc $492383.l,X		; FF 83 23 49
	cmp #$C040.w		; C9 40 C0
	trb $47DC.w		; 1C DC 47
	cld		; D8
	sbc [$78.b],Y		; F7 78
	cmp ($F8.b,S),Y		; D3 F8
	and $FC9F18.l,X		; 3F 18 9F FC
	lda $BF3FF6.l,X		; BF F6 3F BF
	adc $6097A3.l,X		; 7F A3 97 60
	ora $F08FF0.l		; 0F F0 8F F0
	sta [$70.b],Y		; 97 70
	ora $007F00.l,X		; 1F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $D7FFDF.l,X		; FF DF FF D7
	sbc $23FF07.l,X		; FF 07 FF 23
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $D7D7DF.l,X		; DF DF D7 D7
	ora [$07.b]		; 07 07
	and $23.b,S		; 23 23
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $28FF20.l,X		; FF 20 FF 28
	sbc $DCFFF8.l,X		; FF F8 FF DC
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	lda $DF3C.w,X		; BD 3C DF
	sta $970F6F.l,X		; 9F 6F 0F 97
	sta [$B3.b],Y		; 97 B3
	and ($3B.b,S),Y		; 33 3B
	tyx		; BB
	adc $3FFD.w,X		; 7D FD 3F
	lda $5E81BD.l,X		; BF BD 81 5E
	eor ($3F.b,X)		; 41 3F
	rti		; 40

	ora $8CBF98.l		; 0F 98 BF 8C
	lda $423F04.l,X		; BF 04 3F 42
	sbc $FFFF40.l,X		; FF 40 FF FF
	inc $EFFF.w,X		; FE FF EF
	cmp $FFE77F.l,X		; DF 7F E7 FF
	sbc [$FF.b],Y		; F7 FF
	tda		; 7B
	lda $7FFF7F.l,X		; BF 7F FF 7F
	cmp $FF.b,S		; C3 FF
	sbc ($FF.b,X)		; E1 FF
	.db $D0, $CF		; D0 CF
	cpx #$E7.b		; E0 E7
	cpy $F7.b		; C4 F7
	rti		; 40

	tda		; 7B
	.db $42, $7F		; 42 7F
	rti		; 40

	adc $7F7FBF.l,X		; 7F BF 7F 7F
	sbc $A63F5F.l,X		; FF 5F 3F A6
	stx $BF.b,Y		; 96 BF
	sta $F7CFFF.l		; 8F FF CF F7
	inx		; E8
	cmp ($CA.b,S),Y		; D3 CA
	sbc $3FBFFF.l,X		; FF FF BF 3F
	sbc $76E65F.l,X		; FF 5F E6 76
	sbc $3FFF6F.l,X		; FF 6F FF 3F
	sed		; F8
	sec		; 38
	cmp ($12.b)		; D2 12
	sbc $40BFC0.l,X		; FF C0 BF 40
	adc $ABF4E0.l,X		; 7F E0 F4 AB
	sbc $D0FFF0.l,X		; FF F0 FF D0
	sbc $FDFBFF.l,X		; FF FF FB FD
	lda $003F80.l,X		; BF 80 3F 00
	cmp $A03F40.l,X		; DF 40 3F A0
	adc $D01FE0.l		; 6F E0 1F D0
	and [$F0.b],Y		; 37 F0
	ora [$F0.b],Y		; 17 F0
	sbc [$F0.b],Y		; F7 F0
	inc $F0F0.w,X		; FE F0 F0
	pea $FAF2.w		; F4 F2 FA
.INDEX 8
	sep #$5A		; E2 5A
	adc $FF49.w,Y		; 79 49 FF
	ora $FB01E1.l		; 0F E1 01 FB
	inc $F3.b,X		; F6 F3
	sbc [$F4.b],Y		; F7 F4
	sed		; F8
	sbc ($F0.b)		; F2 F0
	eor ($58.b)		; 52 58
	eor $1F48.w,Y		; 59 48 1F
	php		; 08
	ora #$F418.w		; 09 18 F4
	phd		; 0B
	sbc $0FF80F.l,X		; FF 0F F8 0F
	.db $F0, $0F		; F0 0F
	sed		; F8
	lda $F0BF70.l,X		; BF 70 BF F0
	sbc $F7F7F8.l,X		; FF F8 F7 F7
	asl $F7.b		; 06 F7
	cop $F7.b		; 02 F7
	ora $F7.b,S		; 03 F7
	ora [$EF.b]		; 07 EF
	ora [$E7.b]		; 07 E7
	ora $E70FE7.l		; 0F E7 0F E7
	ora $0E21E6.l		; 0F E6 21 0E
	.db $80, $0F		; 80 0F
	.db $10, $19		; 10 19
	phd		; 0B
	txa		; 8A
	sta [$40.b]		; 87 40
	rti		; 40

	jsr ($B0FC.w,X)		; FC FC B0
	.db $B0, $C8		; B0 C8
	inc $90.b		; E6 90
	and $0D1E01.l		; 2F 01 1E 0D
	ora ($8E.b,S),Y		; 13 8E
	ora [$40.b],Y		; 17 40
	brk $FC.b		; 00 FC
	brk $B0.b		; 00 B0
	brk $F6.b		; 00 F6
	cmp [$8F.b],Y		; D7 8F
	dec $FF0E.w,X		; DE 0E FF
	ora ($EF.b,X)		; 01 EF
	asl $EF.b		; 06 EF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cpy #$CE.b		; C0 CE
	.db $70, $EF		; 70 EF
	sbc ($EE.b,X)		; E1 EE
	sbc $F6F0.w		; ED F0 F6
	sbc $FFFF.w,Y		; F9 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc ($08.b,S),Y		; F3 08
	tad		; 5B
	.db $80, $6F		; 80 6F
	clc		; 18
	clv		; B8
	ldx $0319.w		; AE 19 03
	asl $0619.w,X		; 1E 19 06
	ora $3906.w,Y		; 19 06 39
	ora $01A59B.l		; 0F 9B A5 01
	adc ($C9.b),Y		; 71 C9
	sta $F9.b,X		; 95 F9
	ora $7F177E.l		; 0F 7E 17 7F
	ora $7F0F7F.l		; 0F 7F 0F 7F
	sbc ($F7.b,S),Y		; F3 F7
	stp		; DB
	xce		; FB
	cmp [$FF.b],Y		; D7 FF
	.db $10, $9F		; 10 9F
	phd		; 0B
	stx $9001.w		; 8E 01 90
	ora #$0990.w		; 09 90 09
	.db $90, $07		; 90 07
	xce		; FB
	lda ($5F.b,X)		; A1 5F
	adc ($4F.b),Y		; 71 4F
	.db $50, $FC		; 50 FC
	nop		; EA
	sbc $FFE0.w,Y		; F9 E0 FF
	cpx #$FF.b		; E0 FF
	cpy #$FF.b		; C0 FF
	adc $0B7727.l		; 6F 27 77 0B
	sbc ($2F.b,S),Y		; F3 2F
	eor [$C7.b],Y		; 57 C7
	adc $C9FFE3.l,X		; 7F E3 FF C9
	adc $1C7F80.l,X		; 7F 80 7F 1C
	lda $E70B67.l,X		; BF 67 0B E7
	phb		; 8B
	sbc [$57.b]		; E7 57
	sbc $492383.l,X		; FF 83 23 49
	cmp #$C040.w		; C9 40 C0
	trb $47DC.w		; 1C DC 47
	cld		; D8
	sbc [$78.b],Y		; F7 78
	cmp ($F8.b,S),Y		; D3 F8
	and $FC9F18.l,X		; 3F 18 9F FC
	lda $BF3FF6.l,X		; BF F6 3F BF
	adc $6097A3.l,X		; 7F A3 97 60
	ora $F08FF0.l		; 0F F0 8F F0
	sta [$70.b],Y		; 97 70
	ora $007F00.l,X		; 1F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $D7FFDF.l,X		; FF DF FF D7
	sbc $23FF07.l,X		; FF 07 FF 23
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $D7D7DF.l,X		; DF DF D7 D7
	ora [$07.b]		; 07 07
	and $23.b,S		; 23 23
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $28FF20.l,X		; FF 20 FF 28
	sbc $DCFFF8.l,X		; FF F8 FF DC
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	lda [$AB.b]		; A7 AB
	tsb $59.b		; 04 59
	ora [$FB.b]		; 07 FB
	ora [$FA.b]		; 07 FA
	ora $FB03FB.l		; 0F FB 03 FB
	phd		; 0B
	adc ($6F.b,S),Y		; 73 6F
	cmp $0EECAE.l,X		; DF AE EC 0E
	ldx $8406.w		; AE 06 84
	asl $0C.b		; 06 0C
	ora $0C0704.l		; 0F 04 07 0C
	sta $040F88.l		; 8F 88 0F 04
	cmp [$CD.b]		; C7 CD
	sbc [$FE.b],Y		; F7 FE
	sbc [$7F.b],Y		; F7 7F
	inc $F7FF.w,X		; FE FF F7
	sbc $7BFBF7.l,X		; FF F7 FB 7B
	sbc $F5F73F.l,X		; FF 3F F7 F5
	sbc $8ED6.w		; ED D6 8E
	adc $0F.b,X		; 75 0F
	jsr ($FC06.w,X)		; FC 06 FC
	ora [$F0.b]		; 07 F0
	ora $7C.b,S		; 03 7C
	phd		; 0B
	bit $87.b,X		; 34 87
	lda [$AB.b]		; A7 AB
	tsb $59.b		; 04 59
	ora [$FB.b]		; 07 FB
	ora [$FA.b]		; 07 FA
	ora $FB03FB.l		; 0F FB 03 FB
	phd		; 0B
	adc ($6F.b,S),Y		; 73 6F
	cmp $0EECAE.l,X		; DF AE EC 0E
	ldx $8406.w		; AE 06 84
	asl $0C.b		; 06 0C
	ora $0C0704.l		; 0F 04 07 0C
	sta $040F88.l		; 8F 88 0F 04
	cmp [$CD.b]		; C7 CD
	sbc [$FE.b],Y		; F7 FE
	sbc [$7F.b],Y		; F7 7F
	inc $F7FF.w,X		; FE FF F7
	sbc $7BFBF7.l,X		; FF F7 FB 7B
	sbc $F5F73F.l,X		; FF 3F F7 F5
	sbc $8ED6.w		; ED D6 8E
	adc $0F.b,X		; 75 0F
	jsr ($FC06.w,X)		; FC 06 FC
	ora [$F0.b]		; 07 F0
	ora $7C.b,S		; 03 7C
	phd		; 0B
	bit $87.b,X		; 34 87
	adc $7FFFFF.l,X		; 7F FF FF 7F
	adc $7F7B7F.l,X		; 7F 7F 7B 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $80FF00.l,X		; FF 00 FF 80
	sbc $047B00.l,X		; FF 00 7B 04
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $03FF00.l,X		; FF 00 FF 03
	sbc $FFFF7F.l,X		; FF 7F FF FF
	adc $FBFBFF.l,X		; 7F FF FB FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	brk $7F.b		; 00 7F
	.db $80, $FF		; 80 FF
	.db $80, $7F		; 80 7F
	tsb $FF.b		; 04 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cop $FE.b		; 02 FE
	sbc [$E4.b],Y		; F7 E4
	sbc $E0FFE0.l,X		; FF E0 FF E0
	sbc [$E0.b],Y		; F7 E0
	sbc [$E8.b],Y		; F7 E8
	lda $506F80.l,X		; BF 80 6F 50
	cmp $14FCA0.l,X		; DF A0 FC 14
	sed		; F8
	clc		; 18
	sed		; F8
	clc		; 18
	sed		; F8
	clc		; 18
	.db $F0, $38		; F0 38
	.db $F0, $70		; F0 70
	.db $F0, $B0		; F0 B0
	cpx #$60.b		; E0 60
	sbc [$FB.b],Y		; F7 FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc [$F7.b],Y		; F7 F7
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $F0177F.l,X		; FF 7F 17 F0
	ora $F81FF8.l,X		; 1F F8 1F F8
	ora [$F0.b],Y		; 17 F0
	and $F07FF0.l,X		; 3F F0 7F F0
	lda $405FA0.l		; AF A0 5F 40
	sed		; F8
	clc		; 18
	jsr ($F404.w,X)		; FC 04 F4
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	tsb $FC.b		; 04 FC
	brk $FE.b		; 00 FE
	cop $FE.b		; 02 FE
	cop $18.b		; 02 18
	brk $0C.b		; 00 0C
	tsb $0504.w		; 0C 04 05
	tsb $07.b		; 04 07
	asl $05.b		; 06 05
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	.db $F0, $EF		; F0 EF
	sed		; F8
	sbc $F8FEFC.l,X		; FF FC FE F8
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($FCFA.w,X)		; FC FA FC
	inc $FDFE.w,X		; FE FE FD
	sbc $0FFB07.l,X		; FF 07 FB 0F
	sbc $03FB07.l,X		; FF 07 FB 03
	sbc $FF03.w,Y		; F9 03 FF
	ora ($FD.b,X)		; 01 FD
	ora ($FF.b,X)		; 01 FF
	brk $60.b		; 00 60
	rts		; 60

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	jmp ($0382.w,X)		; 7C 82 03
	jsr ($E01F.w,X)		; FC 1F E0
	rts		; 60

	ora ($40.b,X)		; 01 40
	ora $00.b,S		; 03 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $7F837F.l,X		; FF 7F 83 7F
	sbc $00FF7F.l,X		; FF 7F FF 00
	inc $FC00.w,X		; FE 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $FC.b		; 02 FC
	jmp ($6080.w,X)		; 7C 80 60
	.db $80, $FF		; 80 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $1AFF00.l,X		; FF 00 FF 1A
	ora $0E.b		; 05 0E
	and ($2A.b),Y		; 31 2A
	ora $1A.b,X		; 15 1A
	adc $BA.b		; 65 BA
	cmp $17.b		; C5 17
	bit #$0F92.w		; 89 92 0F
	ora $EF7BF0.l		; 0F F0 7B EF
	ora $DB3BFF.l,X		; 1F FF 3B DB
	tsa		; 3B
	xce		; FB
	tda		; 7B
	xce		; FB
	ldx $F7.b		; A6 F7
	sta $87.b		; 85 87
	tsb $610C.w		; 0C 0C 61
	stz $15.b,X		; 74 15
	bit $11.b		; 24 11
	jsr $4021.w		; 20 21 40
	eor ($00.b,X)		; 41 00
	ora ($F1.b,X)		; 01 F1
	ora $07.b		; 05 07
	ora [$07.b]		; 07 07
	cpx $9B.b		; E4 9B
	cpy #$FB.b		; C0 FB
	cpy #$FF.b		; C0 FF
	.db $80, $FF		; 80 FF
	brk $FF.b		; 00 FF
	.db $F0, $0E		; F0 0E
	tsb $F8.b		; 04 F8
	ora [$FC.b]		; 07 FC
	inc $FF11.w,X		; FE 11 FF
	brk $FF.b		; 00 FF
	.db $80, $7E		; 80 7E
	ora ($FF.b,X)		; 01 FF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $90.b		; 00 90
	.db $90, $80		; 90 80
	.db $80, $80		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	.db $80, $FF		; 80 FF
	.db $80, $7F		; 80 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	.db $80, $FF		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	brk $7F.b		; 00 7F
	cop $BF.b		; 02 BF
	eor $FF.b		; 45 FF
	ora ($9F.b,X)		; 01 9F
	rts		; 60

	sbc $00FF00.l,X		; FF 00 FF 00
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora $05.b		; 05 05
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	sbc $FFFFFC.l,X		; FF FC FF FF
	adc $FAFF7D.l,X		; 7F 7D FF FA
	and $7F7F3E.l,X		; 3F 3E 7F 7F
	ora $9F9F1F.l,X		; 1F 1F 9F 9F
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $00FF80.l,X		; 7F 80 FF 00
	and $807FC0.l,X		; 3F C0 7F 80
	ora $609FE0.l,X		; 1F E0 9F 60
	adc $7FFFFF.l,X		; 7F FF FF 7F
	adc $7F7B7F.l,X		; 7F 7F 7B 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $80FF00.l,X		; FF 00 FF 80
	sbc $047B00.l,X		; FF 00 7B 04
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $03FF00.l,X		; FF 00 FF 03
	sbc $FFFF7F.l,X		; FF 7F FF FF
	adc $FBFBFF.l,X		; 7F FF FB FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	brk $7F.b		; 00 7F
	.db $80, $FF		; 80 FF
	.db $80, $7F		; 80 7F
	tsb $FF.b		; 04 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cop $FE.b		; 02 FE
	sbc [$E4.b],Y		; F7 E4
	sbc $E0FFE0.l,X		; FF E0 FF E0
	sbc [$E0.b],Y		; F7 E0
	sbc [$E8.b],Y		; F7 E8
	lda $506F80.l,X		; BF 80 6F 50
	cmp $14FCA0.l,X		; DF A0 FC 14
	sed		; F8
	clc		; 18
	sed		; F8
	clc		; 18
	sed		; F8
	clc		; 18
	.db $F0, $38		; F0 38
	.db $F0, $70		; F0 70
	.db $F0, $B0		; F0 B0
	cpx #$60.b		; E0 60
	sbc [$FB.b],Y		; F7 FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc [$F7.b],Y		; F7 F7
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $F0177F.l,X		; FF 7F 17 F0
	ora $F81FF8.l,X		; 1F F8 1F F8
	ora [$F0.b],Y		; 17 F0
	and $F07FF0.l,X		; 3F F0 7F F0
	lda $405FA0.l		; AF A0 5F 40
	sed		; F8
	clc		; 18
	jsr ($F404.w,X)		; FC 04 F4
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	tsb $FC.b		; 04 FC
	brk $FE.b		; 00 FE
	cop $FE.b		; 02 FE
	cop $18.b		; 02 18
	brk $0C.b		; 00 0C
	tsb $0504.w		; 0C 04 05
	tsb $07.b		; 04 07
	asl $05.b		; 06 05
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	.db $F0, $EF		; F0 EF
	sed		; F8
	sbc $F8FEFC.l,X		; FF FC FE F8
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($FCFA.w,X)		; FC FA FC
	inc $FDFE.w,X		; FE FE FD
	sbc $0FFB07.l,X		; FF 07 FB 0F
	sbc $03FB07.l,X		; FF 07 FB 03
	sbc $FF03.w,Y		; F9 03 FF
	ora ($FD.b,X)		; 01 FD
	ora ($FF.b,X)		; 01 FF
	brk $60.b		; 00 60
	rts		; 60

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	jmp ($0382.w,X)		; 7C 82 03
	jsr ($E01F.w,X)		; FC 1F E0
	rts		; 60

	ora ($40.b,X)		; 01 40
	ora $00.b,S		; 03 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $7F837F.l,X		; FF 7F 83 7F
	sbc $00FF7F.l,X		; FF 7F FF 00
	inc $FC00.w,X		; FE 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $FC.b		; 02 FC
	jmp ($6080.w,X)		; 7C 80 60
	.db $80, $FF		; 80 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $1AFF00.l,X		; FF 00 FF 1A
	ora $0E.b		; 05 0E
	and ($2A.b),Y		; 31 2A
	ora $1A.b,X		; 15 1A
	adc $BA.b		; 65 BA
	cmp $17.b		; C5 17
	bit #$0F92.w		; 89 92 0F
	ora $EF7BF0.l		; 0F F0 7B EF
	ora $DB3BFF.l,X		; 1F FF 3B DB
	tsa		; 3B
	xce		; FB
	tda		; 7B
	xce		; FB
	ldx $F7.b		; A6 F7
	sta $87.b		; 85 87
	tsb $610C.w		; 0C 0C 61
	stz $15.b,X		; 74 15
	bit $11.b		; 24 11
	jsr $4021.w		; 20 21 40
	eor ($00.b,X)		; 41 00
	ora ($F1.b,X)		; 01 F1
	ora $07.b		; 05 07
	ora [$07.b]		; 07 07
	cpx $9B.b		; E4 9B
	cpy #$FB.b		; C0 FB
	cpy #$FF.b		; C0 FF
	.db $80, $FF		; 80 FF
	brk $FF.b		; 00 FF
	.db $F0, $0E		; F0 0E
	tsb $F8.b		; 04 F8
	ora [$FC.b]		; 07 FC
	inc $FF11.w,X		; FE 11 FF
	brk $FF.b		; 00 FF
	.db $80, $7E		; 80 7E
	ora ($FF.b,X)		; 01 FF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $90.b		; 00 90
	.db $90, $80		; 90 80
	.db $80, $80		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	.db $80, $FF		; 80 FF
	.db $80, $7F		; 80 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	.db $80, $FF		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	brk $7F.b		; 00 7F
	cop $BF.b		; 02 BF
	eor $FF.b		; 45 FF
	ora ($9F.b,X)		; 01 9F
	rts		; 60

	sbc $00FF00.l,X		; FF 00 FF 00
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora $05.b		; 05 05
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	sbc $FFFFFC.l,X		; FF FC FF FF
	adc $FAFF7D.l,X		; 7F 7D FF FA
	and $7F7F3E.l,X		; 3F 3E 7F 7F
	ora $9F9F1F.l,X		; 1F 1F 9F 9F
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $00FF80.l,X		; 7F 80 FF 00
	and $807FC0.l,X		; 3F C0 7F 80
	ora $609FE0.l,X		; 1F E0 9F 60
	ror A		; 6A
	.db $B0, $4F		; B0 4F
	sbc ($84.b),Y		; F1 84
	cpx #$8F.b		; E0 8F
	sei		; 78
	ora [$60.b],Y		; 17 60
	phd		; 0B
	cpx $3AC1.w		; EC C1 3A
	sbc [$08.b],Y		; F7 08
	sta $8F6C.w		; 8D 6C 8F
	asl $1928.w		; 0E 28 19
	php		; 08
	cpy #$10.b		; C0 10
	brk $0C.b		; 00 0C
	trb $06.b		; 14 06
	asl $06.b		; 06 06
	asl $1C.b		; 06 1C
	tyx		; BB
	eor $3E979E.l,X		; 5F 9E 97 3E
	lda $7F6FF7.l		; AF F7 6F 7F
	sbc $3B37F7.l,X		; FF F7 37 3B
	ora [$0F.b]		; 07 0F
	sta $FE48.w,Y		; 99 48 FE
	ror $C0E7.w		; 6E E7 C0
	lda $00FF10.l		; AF 10 FF 00
	sbc $00.b,S		; E3 00
	and ($C0.b),Y		; 31 C0
	ora [$FE.b]		; 07 FE
	ror A		; 6A
	.db $B0, $4F		; B0 4F
	sbc ($84.b),Y		; F1 84
	cpx #$8F.b		; E0 8F
	sei		; 78
	ora [$60.b],Y		; 17 60
	phd		; 0B
	cpx $3AC1.w		; EC C1 3A
	sbc [$08.b],Y		; F7 08
	sta $8F6C.w		; 8D 6C 8F
	asl $1928.w		; 0E 28 19
	php		; 08
	cpy #$10.b		; C0 10
	brk $0C.b		; 00 0C
	trb $06.b		; 14 06
	asl $06.b		; 06 06
	asl $1C.b		; 06 1C
	tyx		; BB
	eor $3E979E.l,X		; 5F 9E 97 3E
	lda $7F6FF7.l		; AF F7 6F 7F
	sbc $3B37F7.l,X		; FF F7 37 3B
	ora [$0F.b]		; 07 0F
	sta $FE48.w,Y		; 99 48 FE
	ror $C0E7.w		; 6E E7 C0
	lda $00FF10.l		; AF 10 FF 00
	sbc $00.b,S		; E3 00
	and ($C0.b),Y		; 31 C0
	ora [$FE.b]		; 07 FE
	eor $F4FE0E.l,X		; 5F 0E FE F4
	eor $00FFA0.l		; 4F A0 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	lda $08FE41.l		; AF 41 FE 08
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	eor $0BFFF1.l		; 4F F1 FF 0B
	ora $FFFF1F.l,X		; 1F 1F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFEFF.l,X		; FF FF FE FE
	sbc ($41.b,X)		; E1 41
	ora #$FF08.w		; 09 08 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	cop $F7.b		; 02 F7
	ora $F0.b,S		; 03 F0
	asl $39F9.w		; 0E F9 39
	lda ($41.b,X)		; A1 41
	ora ($F1.b),Y		; 11 F1
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	tsb $0C.b		; 04 0C
	ora $011F.w,X		; 1D 1F 01
	and $513731.l		; 2F 31 37 51
	eor ($FF.b,S),Y		; 53 FF
	sbc $FCFFFF.l,X		; FF FF FF FC
	jsr ($FFFC.w,X)		; FC FC FF
	sbc $D9C8F3.l,X		; FF F3 C8 D9
	cpx #$D9.b		; E0 D9
	cpy #$BD.b		; C0 BD
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $04F400.l,X		; FF 00 F4 04
	sbc $00.b,S		; E3 00
	inc $07.b		; E6 07
	dec $0E0F.w		; CE 0F 0E
	ora $FF00FE.l,X		; 1F FE 00 FF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	jsr $00EF.w		; 20 EF 00
	and $1F12.w,X		; 3D 12 1F
	.db $80, $70		; 80 70
	sbc [$00.b]		; E7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx #$20.b		; E0 20
	rts		; 60

	rts		; 60

	cpx #$30.b		; E0 30
	.db $D0, $70		; D0 70
	.db $D0, $FE		; D0 FE
	inc $FFFF.w,X		; FE FF FF
	sbc $DFDFFF.l,X		; FF FF DF DF
	sbc $7F6FBF.l,X		; FF BF 6F 7F
	and $FF1FBF.l,X		; 3F BF 1F FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C0FF00.l,X		; FF 00 FF C0
	and $A0EF20.l,X		; 3F 20 EF A0
	eor $D03FD0.l,X		; 5F D0 3F D0
	rol $58.b		; 26 58
	and $9AA6.w,Y		; 39 A6 9A
	asl $FF.b		; 06 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $D6.b		; 00 D6
	and #$DEBE.w		; 29 BE DE
	rol $1A47.w,X		; 3E 47 1A
	and $0000.w,Y		; 39 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	cpx #$A6.b		; E0 A6
	stp		; DB
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	.db $80, $7F		; 80 7F
	eor $3C.b,S		; 43 3C
	phx		; DA
	clc		; 18
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $08FB00.l,X		; FF 00 FB 08
	cmp [$20.b]		; C7 20
	eor $00FF10.l		; 4F 10 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $08F700.l,X		; FF 00 F7 08
	.db $F0, $FC		; F0 FC
	inx		; E8
	sed		; F8
	cpx #$F0.b		; E0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1F270B.l		; 0F 0B 27 1F
	eor $FFFFEF.l		; 4F EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora [$F0.b]		; 07 F0
	ora [$E0.b],Y		; 17 E0
	eor $00FF40.l,X		; 5F 40 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C13E00.l,X		; FF 00 3E C1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $10EF00.l,X		; FF 00 EF 10
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $A15F00.l,X		; FF 00 5F A1
	pha		; 48
	ldy #$A7.b		; A0 A7
	pld		; 2B
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	.db $30, $30		; 30 30
	.db $10, $10		; 10 10
	jsr $0261.w		; 20 61 02
	eor ($7F.b,X)		; 41 7F
	ror $9F9F.w,X		; 7E 9F 9F
	sta $CFCF9F.l,X		; 9F 9F CF CF
	cmp $CFCFCF.l		; CF CF CF CF
	stx $E6.b		; 86 E6
	inc $E7.b		; E6 E7
	jmp.w [$9FDD]		; DC DD 9F
	rts		; 60

	sta $30CF60.l,X		; 9F 60 CF 30
	cmp $30CF30.l		; CF 30 CF 30
	lda [$18.b]		; A7 18
	cpx $38.b		; E4 38
	inc $5F26.w,X		; FE 26 5F
	asl $F4FE.w		; 0E FE F4
	eor $00FFA0.l		; 4F A0 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	lda $08FE41.l		; AF 41 FE 08
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	eor $0BFFF1.l		; 4F F1 FF 0B
	ora $FFFF1F.l,X		; 1F 1F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFEFF.l,X		; FF FF FE FE
	sbc ($41.b,X)		; E1 41
	ora #$FF08.w		; 09 08 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	cop $F7.b		; 02 F7
	ora $F0.b,S		; 03 F0
	asl $39F9.w		; 0E F9 39
	lda ($41.b,X)		; A1 41
	ora ($F1.b),Y		; 11 F1
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	tsb $0C.b		; 04 0C
	ora $011F.w,X		; 1D 1F 01
	and $513731.l		; 2F 31 37 51
	eor ($FF.b,S),Y		; 53 FF
	sbc $FCFFFF.l,X		; FF FF FF FC
	jsr ($FFFC.w,X)		; FC FC FF
	sbc $D9C8F3.l,X		; FF F3 C8 D9
	cpx #$D9.b		; E0 D9
	cpy #$BD.b		; C0 BD
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $04F400.l,X		; FF 00 F4 04
	sbc $00.b,S		; E3 00
	inc $07.b		; E6 07
	dec $0E0F.w		; CE 0F 0E
	ora $FF00FE.l,X		; 1F FE 00 FF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	jsr $00EF.w		; 20 EF 00
	and $1F12.w,X		; 3D 12 1F
	.db $80, $70		; 80 70
	sbc [$00.b]		; E7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx #$20.b		; E0 20
	rts		; 60

	rts		; 60

	cpx #$30.b		; E0 30
	.db $D0, $70		; D0 70
	.db $D0, $FE		; D0 FE
	inc $FFFF.w,X		; FE FF FF
	sbc $DFDFFF.l,X		; FF FF DF DF
	sbc $7F6FBF.l,X		; FF BF 6F 7F
	and $FF1FBF.l,X		; 3F BF 1F FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C0FF00.l,X		; FF 00 FF C0
	and $A0EF20.l,X		; 3F 20 EF A0
	eor $D03FD0.l,X		; 5F D0 3F D0
	rol $58.b		; 26 58
	and $9AA6.w,Y		; 39 A6 9A
	asl $FF.b		; 06 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $D6.b		; 00 D6
	and #$DEBE.w		; 29 BE DE
	rol $1A47.w,X		; 3E 47 1A
	and $0000.w,Y		; 39 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	cpx #$A6.b		; E0 A6
	stp		; DB
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	.db $80, $7F		; 80 7F
	eor $3C.b,S		; 43 3C
	phx		; DA
	clc		; 18
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $08FB00.l,X		; FF 00 FB 08
	cmp [$20.b]		; C7 20
	eor $00FF10.l		; 4F 10 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $08F700.l,X		; FF 00 F7 08
	.db $F0, $FC		; F0 FC
	inx		; E8
	sed		; F8
	cpx #$F0.b		; E0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1F270B.l		; 0F 0B 27 1F
	eor $FFFFEF.l		; 4F EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora [$F0.b]		; 07 F0
	ora [$E0.b],Y		; 17 E0
	eor $00FF40.l,X		; 5F 40 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C13E00.l,X		; FF 00 3E C1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $10EF00.l,X		; FF 00 EF 10
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $A15F00.l,X		; FF 00 5F A1
	pha		; 48
	ldy #$A7.b		; A0 A7
	pld		; 2B
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	.db $30, $30		; 30 30
	.db $10, $10		; 10 10
	jsr $0261.w		; 20 61 02
	eor ($7F.b,X)		; 41 7F
	ror $9F9F.w,X		; 7E 9F 9F
	sta $CFCF9F.l,X		; 9F 9F CF CF
	cmp $CFCFCF.l		; CF CF CF CF
	stx $E6.b		; 86 E6
	inc $E7.b		; E6 E7
	jmp.w [$9FDD]		; DC DD 9F
	rts		; 60

	sta $30CF60.l,X		; 9F 60 CF 30
	cmp $30CF30.l		; CF 30 CF 30
	lda [$18.b]		; A7 18
	cpx $38.b		; E4 38
	inc $FF26.w,X		; FE 26 FF
	asl $F7.b		; 06 F7
	brk $F5.b		; 00 F5
	cop $ED.b		; 02 ED
	cop $E7.b		; 02 E7
	inc A		; 1A
	sbc [$12.b]		; E7 12
	sbc [$08.b],Y		; F7 08
	sbc $000718.l		; EF 18 07 00
	ora $03.b,S		; 03 03
	phd		; 0B
	ora ($19.b,X)		; 01 19
	tas		; 1B
	ora ($11.b,X)		; 01 11
	ora $1119.w,Y		; 19 19 11
	ora ($11.b,S),Y		; 13 11
	phd		; 0B
	phd		; 0B
	ora ($0F.b,X)		; 01 0F
	ora $0D.b,S		; 03 0D
	phd		; 0B
	ora $190F1B.l		; 0F 1B 0F 19
	ora [$19.b],Y		; 17 19
	ora $03150B.l,X		; 1F 0B 15 03
	php		; 08
	jsr ($FF0F.w,X)		; FC 0F FF
	ora [$FD.b]		; 07 FD
	ora [$ED.b]		; 07 ED
	ora $EF.b,X		; 15 EF
	ora $EF.b,X		; 15 EF
	ora [$FD.b]		; 07 FD
	ora $FFFD.w		; 0D FD FF
	asl $F7.b		; 06 F7
	brk $F5.b		; 00 F5
	cop $ED.b		; 02 ED
	cop $E7.b		; 02 E7
	inc A		; 1A
	sbc [$12.b]		; E7 12
	sbc [$08.b],Y		; F7 08
	sbc $000718.l		; EF 18 07 00
	ora $03.b,S		; 03 03
	phd		; 0B
	ora ($19.b,X)		; 01 19
	tas		; 1B
	ora ($11.b,X)		; 01 11
	ora $1119.w,Y		; 19 19 11
	ora ($11.b,S),Y		; 13 11
	phd		; 0B
	phd		; 0B
	ora ($0F.b,X)		; 01 0F
	ora $0D.b,S		; 03 0D
	phd		; 0B
	ora $190F1B.l		; 0F 1B 0F 19
	ora [$19.b],Y		; 17 19
	ora $03150B.l,X		; 1F 0B 15 03
	php		; 08
	jsr ($FF0F.w,X)		; FC 0F FF
	ora [$FD.b]		; 07 FD
	ora [$ED.b]		; 07 ED
	ora $EF.b,X		; 15 EF
	ora $EF.b,X		; 15 EF
	ora [$FD.b]		; 07 FD
	ora $FDFD.w		; 0D FD FD
	ora $FE.b,S		; 03 FE
	asl $6C.b		; 06 6C
	ora $50.b,X		; 15 50
	ora $8813AA.l		; 0F AA 13 88
	rti		; 40

	tay		; A8
	cpx #$78.b		; E0 78
	.db $30, $06		; 30 06
	cop $08.b		; 02 08
	php		; 08
	ora #$1808.w		; 09 08 18
	sta $F8FA3D.l,X		; 9F 3D FA F8
	.db $F0, $9C		; F0 9C
	jmp $FECCE8.l		; 5C E8 CC FE
	sbc $F7F8.w,X		; FD F8 F7
	sbc $FEF7.w,Y		; F9 F7 FE
	adc [$7E.b]		; 67 7E
	eor $FC37D0.l		; 4F D0 37 FC
	adc [$C8.b],Y		; 77 C8
	and [$F8.b],Y		; 37 F8
	brk $F1.b		; 00 F1
	ora $E2.b,S		; 03 E2
	ora [$E6.b]		; 07 E6
	brk $89.b		; 00 89
	php		; 08
	ora $2B770F.l,X		; 1F 0F 77 2B
	and [$93.b]		; 27 93
	eor ($61.b,X)		; 41 61
	sta ($C1.b,X)		; 81 C1
	ora ($C1.b,X)		; 01 C1
	.db $80, $81		; 80 81
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($13.b)		; 12 13
	ora ($03.b,X)		; 01 03
	ora ($A3.b,X)		; 01 A3
	eor ($C3.b,X)		; 41 C3
	ora ($43.b,X)		; 01 43
	brk $03.b		; 00 03
	.db $80, $03		; 80 03
	ora ($06.b,X)		; 01 06
	ora ($07.b)		; 12 07
	brk $07.b		; 00 07
	jsr $C0FD.w		; 20 FD C0
	lda $FD00.w,X		; BD 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $F9.b		; 00 F9
	brk $FB.b		; 00 FB
	brk $FA.b		; 00 FA
	ldx $3E1F.w,Y		; BE 1F 3E
	and $7E3F7E.l,X		; 3F 7E 3F 7E
	adc $FEFF7E.l,X		; 7F 7E FF FE
	sbc $FCFFFC.l,X		; FF FC FF FC
	sbc $9067F8.l,X		; FF F8 67 90
	and $B04FF0.l		; 2F F0 4F B0
	eor $C09FE0.l,X		; 5F E0 9F C0
	sta $80BF40.l,X		; 9F 40 BF 80
	and $9050F0.l,X		; 3F F0 50 90
	.db $70, $F0		; 70 F0
	.db $30, $B0		; 30 B0
	rts		; 60

	cpx #$E0.b		; E0 E0
	rti		; 40

	cpx #$40.b		; E0 40
	cpy #$80.b		; C0 80
	.db $80, $1F		; 80 1F
	sbc $3FBF1F.l,X		; FF 1F BF 3F
	lda $7FEF3F.l,X		; BF 3F EF 7F
	sbc $7F7F7F.l,X		; FF 7F 7F 7F
	sbc $3FBFBF.l,X		; FF BF BF 3F
	.db $D0, $5F		; D0 5F
	.db $D0, $7F		; D0 7F
	.db $F0, $7F		; F0 7F
	ldy #$7F.b		; A0 7F
	cpx #$5F.b		; E0 5F
	cpy #$7F.b		; C0 7F
	rti		; 40

	sbc $F80780.l,X		; FF 80 07 F8
	asl A		; 0A
	sbc $00.b,X		; F5 00
	sbc $0DEF10.l,X		; FF 10 EF 0D
	sbc ($0C.b)		; F2 0C
	sbc [$10.b],Y		; F7 10
	nop		; EA
	ora $FE.b,S		; 03 FE
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	asl $050A.w		; 0E 0A 05
	brk $05.b		; 00 05
	tsb $FF.b		; 04 FF
	sbc $FDFEFF.l,X		; FF FF FE FD
	sbc $FFFA.w,X		; FD FA FF
	jsr ($F8FA.w,X)		; FC FA F8
	plx		; FA
	sbc $FC.b,X		; F5 FC
	xce		; FB
	pea $00FF.w		; F4 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	inc $F903.w,X		; FE 03 F9
	ora $F1.b,S		; 03 F1
	ora [$F3.b]		; 07 F3
	ora [$E3.b]		; 07 E3
	ora $0C02FD.l		; 0F FD 02 0C
	lda $31.b,S		; A3 31
	inc $4E.b		; E6 4E
	trb $72FE.w		; 1C FE 72
	tsa		; 3B
	clv		; B8
	ora $4F0FDF.l,X		; 1F DF 0F 4F
	brk $00.b		; 00 00
	.db $80, $A0		; 80 A0
	clc		; 18
	jsr ($4266.w,X)		; FC 66 42
	sed		; F8
	bit #$C6FE.w		; 89 FE C6
	adc $10BF60.l,X		; 7F 60 BF 10
	sbc $9F9FFF.l,X		; FF FF 9F 9F
	sbc ($FB.b,S),Y		; F3 FB
	.db $62, $6E, $8A		; 62 6E 8A
	sbc $FE02.w,Y		; F9 02 FE
	brk $7F.b		; 00 7F
	ldy #$3F.b		; A0 3F
	sbc $007F00.l,X		; FF 00 7F 00
	cmp [$10.b],Y		; D7 10
	sta [$FA.b],Y		; 97 FA
	ora [$FE.b]		; 07 FE
	ora ($FF.b,X)		; 01 FF
	.db $80, $FF		; 80 FF
	cpy #$FF.b		; C0 FF
	lda $926C50.l		; AF 50 6C 92
	dec $0123.w,X		; DE 23 01
	jsr ($3F81.w,X)		; FC 81 3F
	cpy #$1E.b		; C0 1E
	and ($5F.b,X)		; 21 5F
	lda ($AD.b),Y		; B1 AD
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	ora $06.b		; 05 06
	ora $02.b,S		; 03 02
	.db $80, $81		; 80 81
	rti		; 40

	cmp ($00.b,X)		; C1 00
	ora ($C1.b,X)		; 01 C1
	ora ($FF.b,S),Y		; 13 FF
	sbc $FFFBFB.l,X		; FF FB FB FF
	sbc $FFFC.w,X		; FD FC FF
	inc $7EFF.w,X		; FE FF 7E
	ror $3F1E.w,X		; 7E 1E 3F
	lsr $FFFF.w,X		; 5E FF FF
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	ora $FD.b,S		; 03 FD
	brk $FE.b		; 00 FE
	.db $80, $7F		; 80 7F
	cpy #$DE.b		; C0 DE
	cpy #$0C.b		; C0 0C
	sbc ($69.b,X)		; E1 69
	adc ($58.b)		; 72 58
	eor #$9FFB.w		; 49 FB 9F
	lda $A0E23E.l,X		; BF 3E E2 A0
	ora ($01.b),Y		; 11 01
	cmp $E3.b,S		; C3 E3
	sta $08.b,S		; 83 08
	adc $35.b		; 65 35
	asl $CA.b		; 06 CA
	sty $5F9D.w		; 8C 9D 5F
	dec A		; 3A
	adc [$02.b]		; 67 02
	cmp ($B3.b)		; D2 B3
	lda $D7.b,X		; B5 D7
	cmp ($54.b)		; D2 54
	sta $FF.b,X		; 95 FF
	plx		; FA
	adc $F7F5.w,X		; 7D F5 F7
	ldy $F5.b,X		; B4 F5
	ply		; 7A
	sbc $7FBE.w,X		; FD BE 7F
	sbc $74FF.w,X		; FD FF 74
	sbc $5C2DF5.l,X		; FF F5 2D 5C
	sei		; 78
	pea $D7FE.w		; F4 FE D7
	txs		; 9A
	and $68.b		; 25 68
	adc ($3F.b,S),Y		; 73 3F
	sbc [$DF.b],Y		; F7 DF
	dec $74.b,X		; D6 74
	sbc $FE03.w,X		; FD 03 FE
	asl $6C.b		; 06 6C
	ora $50.b,X		; 15 50
	ora $8813AA.l		; 0F AA 13 88
	rti		; 40

	tay		; A8
	cpx #$78.b		; E0 78
	.db $30, $06		; 30 06
	cop $08.b		; 02 08
	php		; 08
	ora #$1808.w		; 09 08 18
	sta $F8FA3D.l,X		; 9F 3D FA F8
	.db $F0, $9C		; F0 9C
	jmp $FECCE8.l		; 5C E8 CC FE
	sbc $F7F8.w,X		; FD F8 F7
	sbc $FEF7.w,Y		; F9 F7 FE
	adc [$7E.b]		; 67 7E
	eor $FC37D0.l		; 4F D0 37 FC
	adc [$C8.b],Y		; 77 C8
	and [$F8.b],Y		; 37 F8
	brk $F1.b		; 00 F1
	ora $E2.b,S		; 03 E2
	ora [$E6.b]		; 07 E6
	brk $89.b		; 00 89
	php		; 08
	ora $2B770F.l,X		; 1F 0F 77 2B
	and [$93.b]		; 27 93
	eor ($61.b,X)		; 41 61
	sta ($C1.b,X)		; 81 C1
	ora ($C1.b,X)		; 01 C1
	.db $80, $81		; 80 81
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($13.b)		; 12 13
	ora ($03.b,X)		; 01 03
	ora ($A3.b,X)		; 01 A3
	eor ($C3.b,X)		; 41 C3
	ora ($43.b,X)		; 01 43
	brk $03.b		; 00 03
	.db $80, $03		; 80 03
	ora ($06.b,X)		; 01 06
	ora ($07.b)		; 12 07
	brk $07.b		; 00 07
	jsr $C0FD.w		; 20 FD C0
	lda $FD00.w,X		; BD 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $F9.b		; 00 F9
	brk $FB.b		; 00 FB
	brk $FA.b		; 00 FA
	ldx $3E1F.w,Y		; BE 1F 3E
	and $7E3F7E.l,X		; 3F 7E 3F 7E
	adc $FEFF7E.l,X		; 7F 7E FF FE
	sbc $FCFFFC.l,X		; FF FC FF FC
	sbc $9067F8.l,X		; FF F8 67 90
	and $B04FF0.l		; 2F F0 4F B0
	eor $C09FE0.l,X		; 5F E0 9F C0
	sta $80BF40.l,X		; 9F 40 BF 80
	and $9050F0.l,X		; 3F F0 50 90
	.db $70, $F0		; 70 F0
	.db $30, $B0		; 30 B0
	rts		; 60

	cpx #$E0.b		; E0 E0
	rti		; 40

	cpx #$40.b		; E0 40
	cpy #$80.b		; C0 80
	.db $80, $1F		; 80 1F
	sbc $3FBF1F.l,X		; FF 1F BF 3F
	lda $7FEF3F.l,X		; BF 3F EF 7F
	sbc $7F7F7F.l,X		; FF 7F 7F 7F
	sbc $3FBFBF.l,X		; FF BF BF 3F
	.db $D0, $5F		; D0 5F
	.db $D0, $7F		; D0 7F
	.db $F0, $7F		; F0 7F
	ldy #$7F.b		; A0 7F
	cpx #$5F.b		; E0 5F
	cpy #$7F.b		; C0 7F
	rti		; 40

	sbc $F80780.l,X		; FF 80 07 F8
	asl A		; 0A
	sbc $00.b,X		; F5 00
	sbc $0DEF10.l,X		; FF 10 EF 0D
	sbc ($0C.b)		; F2 0C
	sbc [$10.b],Y		; F7 10
	nop		; EA
	ora $FE.b,S		; 03 FE
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	asl $050A.w		; 0E 0A 05
	brk $05.b		; 00 05
	tsb $FF.b		; 04 FF
	sbc $FDFEFF.l,X		; FF FF FE FD
	sbc $FFFA.w,X		; FD FA FF
	jsr ($F8FA.w,X)		; FC FA F8
	plx		; FA
	sbc $FC.b,X		; F5 FC
	xce		; FB
	pea $00FF.w		; F4 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	inc $F903.w,X		; FE 03 F9
	ora $F1.b,S		; 03 F1
	ora [$F3.b]		; 07 F3
	ora [$E3.b]		; 07 E3
	ora $0C02FD.l		; 0F FD 02 0C
	lda $31.b,S		; A3 31
	inc $4E.b		; E6 4E
	trb $72FE.w		; 1C FE 72
	tsa		; 3B
	clv		; B8
	ora $4F0FDF.l,X		; 1F DF 0F 4F
	brk $00.b		; 00 00
	.db $80, $A0		; 80 A0
	clc		; 18
	jsr ($4266.w,X)		; FC 66 42
	sed		; F8
	bit #$C6FE.w		; 89 FE C6
	adc $10BF60.l,X		; 7F 60 BF 10
	sbc $9F9FFF.l,X		; FF FF 9F 9F
	sbc ($FB.b,S),Y		; F3 FB
	.db $62, $6E, $8A		; 62 6E 8A
	sbc $FE02.w,Y		; F9 02 FE
	brk $7F.b		; 00 7F
	ldy #$3F.b		; A0 3F
	sbc $007F00.l,X		; FF 00 7F 00
	cmp [$10.b],Y		; D7 10
	sta [$FA.b],Y		; 97 FA
	ora [$FE.b]		; 07 FE
	ora ($FF.b,X)		; 01 FF
	.db $80, $FF		; 80 FF
	cpy #$FF.b		; C0 FF
	lda $926C50.l		; AF 50 6C 92
	dec $0123.w,X		; DE 23 01
	jsr ($3F81.w,X)		; FC 81 3F
	cpy #$1E.b		; C0 1E
	and ($5F.b,X)		; 21 5F
	lda ($AD.b),Y		; B1 AD
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	ora $06.b		; 05 06
	ora $02.b,S		; 03 02
	.db $80, $81		; 80 81
	rti		; 40

	cmp ($00.b,X)		; C1 00
	ora ($C1.b,X)		; 01 C1
	ora ($FF.b,S),Y		; 13 FF
	sbc $FFFBFB.l,X		; FF FB FB FF
	sbc $FFFC.w,X		; FD FC FF
	inc $7EFF.w,X		; FE FF 7E
	ror $3F1E.w,X		; 7E 1E 3F
	lsr $FFFF.w,X		; 5E FF FF
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	ora $FD.b,S		; 03 FD
	brk $FE.b		; 00 FE
	.db $80, $7F		; 80 7F
	cpy #$DE.b		; C0 DE
	cpy #$0C.b		; C0 0C
	sbc ($69.b,X)		; E1 69
	adc ($58.b)		; 72 58
	eor #$9FFB.w		; 49 FB 9F
	lda $A0E23E.l,X		; BF 3E E2 A0
	ora ($01.b),Y		; 11 01
	cmp $E3.b,S		; C3 E3
	sta $08.b,S		; 83 08
	adc $35.b		; 65 35
	asl $CA.b		; 06 CA
	sty $5F9D.w		; 8C 9D 5F
	dec A		; 3A
	adc [$02.b]		; 67 02
	cmp ($B3.b)		; D2 B3
	lda $D7.b,X		; B5 D7
	cmp ($54.b)		; D2 54
	sta $FF.b,X		; 95 FF
	plx		; FA
	adc $F7F5.w,X		; 7D F5 F7
	ldy $F5.b,X		; B4 F5
	ply		; 7A
	sbc $7FBE.w,X		; FD BE 7F
	sbc $74FF.w,X		; FD FF 74
	sbc $5C2DF5.l,X		; FF F5 2D 5C
	sei		; 78
	pea $D7FE.w		; F4 FE D7
	txs		; 9A
	and $68.b		; 25 68
	adc ($3F.b,S),Y		; 73 3F
	sbc [$DF.b],Y		; F7 DF
	dec $74.b,X		; D6 74
	inc $FF11.w,X		; FE 11 FF
	ora $47.b		; 05 47
	tsx		; BA
	ora [$F0.b]		; 07 F0
	ora $F10FF0.l		; 0F F0 0F F1
	ora $F30DF1.l		; 0F F1 0D F3
	ora ($02.b,S),Y		; 13 02
	ora [$03.b],Y		; 17 03
	ora $070F1D.l,X		; 1F 1D 0F 07
	ora $0A0B0F.l		; 0F 0F 0B 0A
	ora $0D0E0E.l		; 0F 0E 0E 0D
	asl $1A03.w,X		; 1E 03 1A
	ora [$17.b]		; 07 17
	ora $0F0F.w,X		; 1D 0F 0F
	ora $0A0F0F.l		; 0F 0F 0F 0A
	ora $0D0E0E.l		; 0F 0E 0E 0D
	ora $FB0EFE.l		; 0F FE 0E FB
	ora $ED.b,X		; 15 ED
	ora [$F7.b]		; 07 F7
	ora $FA0AFF.l		; 0F FF 0A FA
	asl $0DFE.w		; 0E FE 0D
	sbc $11FE.w,X		; FD FE 11
	sbc $BA4705.l,X		; FF 05 47 BA
	ora [$F0.b]		; 07 F0
	ora $F10FF0.l		; 0F F0 0F F1
	ora $F30DF1.l		; 0F F1 0D F3
	ora ($02.b,S),Y		; 13 02
	ora [$03.b],Y		; 17 03
	ora $070F1D.l,X		; 1F 1D 0F 07
	ora $0A0B0F.l		; 0F 0F 0B 0A
	ora $0D0E0E.l		; 0F 0E 0E 0D
	asl $1A03.w,X		; 1E 03 1A
	ora [$17.b]		; 07 17
	ora $0F0F.w,X		; 1D 0F 0F
	ora $0A0F0F.l		; 0F 0F 0F 0A
	ora $0D0E0E.l		; 0F 0E 0E 0D
	ora $FB0EFE.l		; 0F FE 0E FB
	ora $ED.b,X		; 15 ED
	ora [$F7.b]		; 07 F7
	ora $FA0AFF.l		; 0F FF 0A FA
	asl $0DFE.w		; 0E FE 0D
	sbc $D0B8.w,X		; FD B8 D0
	ldy #$80.b		; A0 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	brk $80.b		; 00 80
	cpy #$B0.b		; C0 B0
	iny		; C8
	ldy #$80.b		; A0 80
	.db $80, $00		; 80 00
	brk $80.b		; 00 80
	.db $80, $00		; 80 00
	brk $80.b		; 00 80
	cpy #$80.b		; C0 80
	.db $80, $40		; 80 40
	.db $80, $57		; 80 57
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	.db $80, $7F		; 80 7F
	brk $FF.b		; 00 FF
	.db $80, $FF		; 80 FF
	.db $80, $3F		; 80 3F
	.db $80, $7F		; 80 7F
	sbc [$AF.b],Y		; F7 AF
	adc $7F7FFF.l,X		; 7F FF 7F 7F
	adc $7FFF7F.l,X		; 7F 7F FF 7F
	sbc $7F7F7F.l,X		; FF 7F 7F 7F
	adc $02003F.l,X		; 7F 3F 00 02
	ora [$06.b]		; 07 06
	cop $02.b		; 02 02
	.db $82, $80, $06		; 82 80 06
	ora ($82.b,X)		; 01 82
	.db $80, $07		; 80 07
	tsb $43.b		; 04 43
	eor $01.b,S		; 43 01
	asl $0F07.w		; 0E 07 0F
	cop $0D.b		; 02 0D
	.db $82, $0B, $06		; 82 0B 06
	asl $0686.w		; 0E 86 06
	ora $03.b,S		; 03 03
	eor $02.b,S		; 43 02
	ora ($F3.b,X)		; 01 F3
	ora ($F7.b,X)		; 01 F7
	ora ($F2.b,X)		; 01 F2
	ora $F7.b,S		; 03 F7
	ora [$F1.b]		; 07 F1
	asl $FC.b		; 06 FC
	ora $FF.b,S		; 03 FF
	brk $FE.b		; 00 FE
	jsr ($F9FE.w,X)		; FC FE F9
	sbc $FEFCFE.l,X		; FF FE FC FE
	inc $FCF9.w,X		; FE F9 FC
	sbc $FBF8.w,X		; FD F8 FB
	sbc $80FFFD.l,X		; FF FD FF 80
	adc $007F00.l,X		; 7F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $F09F00.l,X		; FF 00 9F F0
	sta [$58.b]		; 87 58
	eor [$80.b]		; 47 80
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	.db $80, $70		; 80 70
	.db $F0, $58		; F0 58
	sei		; 78
	sbc $7F7FFF.l,X		; FF FF 7F 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFBFFF.l,X		; FF FF BF BF
	adc $FF1FFF.l,X		; 7F FF 1F FF
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $007F00.l,X		; FF 00 7F 00
	adc $D8BF70.l,X		; 7F 70 BF D8
	asl $E9.b,X		; 16 E9
	rol $D9.b		; 26 D9
	ora $CD.b,S		; 03 CD
	and $DC.b,S		; 23 DC
	cop $EF.b		; 02 EF
	asl $EC.b		; 06 EC
	and [$CD.b]		; 27 CD
	and [$F6.b],Y		; 37 F6
	ora ($10.b,S),Y		; 13 10
	and ($00.b,S),Y		; 33 00
	and $21.b,S		; 23 21
	and $20.b,S		; 23 20
	asl $33.b,X		; 16 33
	ora ($37.b),Y		; 11 37
	and ($33.b)		; 32 33
	tas		; 1B
	and #$F8F1.w		; 29 F1 F8
	sbc #$C1D8.w		; E9 D8 C1
	sed		; F8
	.db $F0, $F8		; F0 F8
	cpy #$FF.b		; C0 FF
	cmp $FE.b		; C5 FE
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	sbc $FE.b,X		; F5 FE
	sbc [$1F.b],Y		; F7 1F
	sbc [$0F.b],Y		; F7 0F
	cmp [$1F.b]		; C7 1F
	sbc [$3F.b]		; E7 3F
	cpx $3A.b		; E4 3A
	cpx #$39.b		; E0 39
.ACCU 8
.INDEX 8
	sep #$3B		; E2 3B
	dec $0C.b,X		; D6 0C
	sbc [$47.b],Y		; F7 47
	phk		; 4B
	lda ($67.b)		; B2 67
	xba		; EB
	adc $B3.b		; 65 B3
	eor $BF.b,X		; 55 BF
	lda $D6991D.l		; AF 1D 99 D6
	cpx #$FA.b		; E0 FA
	sta $1CDE18.l,X		; 9F 18 DE 1C
	sbc [$44.b],Y		; F7 44
	eor $E843FC.l		; 4F FC 43 E8
	xba		; EB
	sbc ($AB.b)		; F2 AB
	adc $7D.b,S		; 63 7D
	.db $80, $50		; 80 50
	ora $941E89.l,X		; 1F 89 1E 94
	adc $FCF77C.l,X		; 7F 7C F7 FC
	lda $45BBF6.l,X		; BF F6 BB 45
	sbc ($9D.b,S),Y		; F3 9D
	cmp ($E0.b,X)		; C1 E0
	sbc $A4FFE0.l,X		; FF E0 FF A4
	cmp [$D6.b]		; C7 D6
	eor $15BE.w		; 4D BE 15
	clv		; B8
	sbc [$CC.b]		; E7 CC
	ora $B13F7E.l,X		; 1F 7E 3F B1
	sbc $40BFF0.l		; EF F0 BF 40
	cmp $00DBA0.l,X		; DF A0 DB 00
	lda $FB84.w		; AD 84 FB
	php		; 08
	tsa		; 3B
	trb $91F3.w		; 1C F3 91
	ora $E0.b,S		; 03 E0
	.db $50, $60		; 50 60
	ldy #$4C.b		; A0 4C
	lsr A		; 4A
	ply		; 7A
	jsl $CC0680.l		; 22 80 06 CC
	cpy #$08.b		; C0 08
	php		; 08
	jmp ($4FDF.w,X)		; 7C DF 4F
	sbc $F1FF1F.l		; EF 1F FF F1
	and $FFC5.w,X		; 3D C5 FF
	adc $33DD.w		; 6D DD 33
	sbc $2DE75F.l,X		; FF 5F E7 2D
	sbc ($3F.b,X)		; E1 3F
	cpy #$5F.b		; C0 5F
	brk $3B.b		; 00 3B
	.db $80, $29		; 80 29
	sty $07.b		; 84 07
	sed		; F8
	ora $F8.b,S		; 03 F8
	ora [$F0.b]		; 07 F0
	rol $66.b		; 26 66
	lsr $9C.b		; 46 9C
	.db $10, $99		; 10 99
	rti		; 40

	lda $00FF00.l,X		; BF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $462E36.l,X		; FF 36 2E 46
	ror $2412.w		; 6E 12 24
	rti		; 40

	jsl $000000.l		; 22 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A8.b		; 00 A8
	sed		; F8
	sbc ($FB.b,X)		; E1 FB
	lda $9DFDAF.l,X		; BF AF FD 9D
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	and $26A72E.l,X		; 3F 2E A7 26
	sbc $DF20.w,Y		; F9 20 DF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $B8.b		; 00 B8
	.db $D0, $A0		; D0 A0
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	.db $80, $00		; 80 00
	.db $80, $00		; 80 00
	.db $80, $40		; 80 40
	brk $80.b		; 00 80
	cpy #$B0.b		; C0 B0
	iny		; C8
	ldy #$80.b		; A0 80
	.db $80, $00		; 80 00
	brk $80.b		; 00 80
	.db $80, $00		; 80 00
	brk $80.b		; 00 80
	cpy #$80.b		; C0 80
	.db $80, $40		; 80 40
	.db $80, $57		; 80 57
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	.db $80, $7F		; 80 7F
	brk $FF.b		; 00 FF
	.db $80, $FF		; 80 FF
	.db $80, $3F		; 80 3F
	.db $80, $7F		; 80 7F
	sbc [$AF.b],Y		; F7 AF
	adc $7F7FFF.l,X		; 7F FF 7F 7F
	adc $7FFF7F.l,X		; 7F 7F FF 7F
	sbc $7F7F7F.l,X		; FF 7F 7F 7F
	adc $02003F.l,X		; 7F 3F 00 02
	ora [$06.b]		; 07 06
	cop $02.b		; 02 02
	.db $82, $80, $06		; 82 80 06
	ora ($82.b,X)		; 01 82
	.db $80, $07		; 80 07
	tsb $43.b		; 04 43
	eor $01.b,S		; 43 01
	asl $0F07.w		; 0E 07 0F
	cop $0D.b		; 02 0D
	.db $82, $0B, $06		; 82 0B 06
	asl $0686.w		; 0E 86 06
	ora $03.b,S		; 03 03
	eor $02.b,S		; 43 02
	ora ($F3.b,X)		; 01 F3
	ora ($F7.b,X)		; 01 F7
	ora ($F2.b,X)		; 01 F2
	ora $F7.b,S		; 03 F7
	ora [$F1.b]		; 07 F1
	asl $FC.b		; 06 FC
	ora $FF.b,S		; 03 FF
	brk $FE.b		; 00 FE
	jsr ($F9FE.w,X)		; FC FE F9
	sbc $FEFCFE.l,X		; FF FE FC FE
	inc $FCF9.w,X		; FE F9 FC
	sbc $FBF8.w,X		; FD F8 FB
	sbc $80FFFD.l,X		; FF FD FF 80
	adc $007F00.l,X		; 7F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $F09F00.l,X		; FF 00 9F F0
	sta [$58.b]		; 87 58
	eor [$80.b]		; 47 80
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	.db $80, $70		; 80 70
	.db $F0, $58		; F0 58
	sei		; 78
	sbc $7F7FFF.l,X		; FF FF 7F 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFBFFF.l,X		; FF FF BF BF
	adc $FF1FFF.l,X		; 7F FF 1F FF
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $007F00.l,X		; FF 00 7F 00
	adc $D8BF70.l,X		; 7F 70 BF D8
	asl $E9.b,X		; 16 E9
	rol $D9.b		; 26 D9
	ora $CD.b,S		; 03 CD
	and $DC.b,S		; 23 DC
	cop $EF.b		; 02 EF
	asl $EC.b		; 06 EC
	and [$CD.b]		; 27 CD
	and [$F6.b],Y		; 37 F6
	ora ($10.b,S),Y		; 13 10
	and ($00.b,S),Y		; 33 00
	and $21.b,S		; 23 21
	and $20.b,S		; 23 20
	asl $33.b,X		; 16 33
	ora ($37.b),Y		; 11 37
	and ($33.b)		; 32 33
	tas		; 1B
	and #$F1.b		; 29 F1
	sed		; F8
	sbc #$D8.b		; E9 D8
	cmp ($F8.b,X)		; C1 F8
	.db $F0, $F8		; F0 F8
	cpy #$FF.b		; C0 FF
	cmp $FE.b		; C5 FE
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	sbc $FE.b,X		; F5 FE
	sbc [$1F.b],Y		; F7 1F
	sbc [$0F.b],Y		; F7 0F
	cmp [$1F.b]		; C7 1F
	sbc [$3F.b]		; E7 3F
	cpx $3A.b		; E4 3A
	cpx #$39.b		; E0 39
.ACCU 8
.INDEX 8
	sep #$3B		; E2 3B
	dec $0C.b,X		; D6 0C
	sbc [$47.b],Y		; F7 47
	phk		; 4B
	lda ($67.b)		; B2 67
	xba		; EB
	adc $B3.b		; 65 B3
	eor $BF.b,X		; 55 BF
	lda $D6991D.l		; AF 1D 99 D6
	cpx #$FA.b		; E0 FA
	sta $1CDE18.l,X		; 9F 18 DE 1C
	sbc [$44.b],Y		; F7 44
	eor $E843FC.l		; 4F FC 43 E8
	xba		; EB
	sbc ($AB.b)		; F2 AB
	adc $7D.b,S		; 63 7D
	.db $80, $50		; 80 50
	ora $941E89.l,X		; 1F 89 1E 94
	adc $FCF77C.l,X		; 7F 7C F7 FC
	lda $45BBF6.l,X		; BF F6 BB 45
	sbc ($9D.b,S),Y		; F3 9D
	cmp ($E0.b,X)		; C1 E0
	sbc $A4FFE0.l,X		; FF E0 FF A4
	cmp [$D6.b]		; C7 D6
	eor $15BE.w		; 4D BE 15
	clv		; B8
	sbc [$CC.b]		; E7 CC
	ora $B13F7E.l,X		; 1F 7E 3F B1
	sbc $40BFF0.l		; EF F0 BF 40
	cmp $00DBA0.l,X		; DF A0 DB 00
	lda $FB84.w		; AD 84 FB
	php		; 08
	tsa		; 3B
	trb $91F3.w		; 1C F3 91
	ora $E0.b,S		; 03 E0
	.db $50, $60		; 50 60
	ldy #$4C.b		; A0 4C
	lsr A		; 4A
	ply		; 7A
	jsl $CC0680.l		; 22 80 06 CC
	cpy #$08.b		; C0 08
	php		; 08
	jmp ($4FDF.w,X)		; 7C DF 4F
	sbc $F1FF1F.l		; EF 1F FF F1
	and $FFC5.w,X		; 3D C5 FF
	adc $33DD.w		; 6D DD 33
	sbc $2DE75F.l,X		; FF 5F E7 2D
	sbc ($3F.b,X)		; E1 3F
	cpy #$5F.b		; C0 5F
	brk $3B.b		; 00 3B
	.db $80, $29		; 80 29
	sty $07.b		; 84 07
	sed		; F8
	ora $F8.b,S		; 03 F8
	ora [$F0.b]		; 07 F0
	rol $66.b		; 26 66
	lsr $9C.b		; 46 9C
	.db $10, $99		; 10 99
	rti		; 40

	lda $00FF00.l,X		; BF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $462E36.l,X		; FF 36 2E 46
	ror $2412.w		; 6E 12 24
	rti		; 40

	jsl $000000.l		; 22 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A8.b		; 00 A8
	sed		; F8
	sbc ($FB.b,X)		; E1 FB
	lda $9DFDAF.l,X		; BF AF FD 9D
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	and $26A72E.l,X		; 3F 2E A7 26
	sbc $DF20.w,Y		; F9 20 DF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $09.b		; 00 09
	sbc $FD0D.w,Y		; F9 0D FD
	phd		; 0B
	xce		; FB
	ora ($F1.b,X)		; 01 F1
	brk $F0.b		; 00 F0
	ora ($F1.b,X)		; 01 F1
	cop $72.b		; 02 72
	ora $09007F.l		; 0F 7F 00 09
	tsb $0A01.w		; 0C 01 0A
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $03.b		; 02 03
	sta $070E.w		; 8D 0E 07
	asl $0E0F.w		; 0E 0F 0E
	ora $0F0F0E.l		; 0F 0E 0F 0F
	ora $0D0F0E.l		; 0F 0E 0F 0D
	ora $070F83.l		; 0F 83 0F 07
	sbc [$03.b],Y		; F7 03
	sbc $0FFF05.l,X		; FF 05 FF 0F
	sbc $0FFF0F.l,X		; FF 0F FF 0F
	sbc $0DFF0F.l,X		; FF 0F FF 0D
	adc $0DF909.l,X		; 7F 09 F9 0D
	sbc $FB0B.w,X		; FD 0B FB
	ora ($F1.b,X)		; 01 F1
	brk $F0.b		; 00 F0
	ora ($F1.b,X)		; 01 F1
	cop $72.b		; 02 72
	ora $09007F.l		; 0F 7F 00 09
	tsb $0A01.w		; 0C 01 0A
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $03.b		; 02 03
	sta $070E.w		; 8D 0E 07
	asl $0E0F.w		; 0E 0F 0E
	ora $0F0F0E.l		; 0F 0E 0F 0F
	ora $0D0F0E.l		; 0F 0E 0F 0D
	ora $070F83.l		; 0F 83 0F 07
	sbc [$03.b],Y		; F7 03
	sbc $0FFF05.l,X		; FF 05 FF 0F
	sbc $0FFF0F.l,X		; FF 0F FF 0F
	sbc $0DFF0F.l,X		; FF 0F FF 0D
	adc $600040.l,X		; 7F 40 00 60
	brk $E0.b		; 00 E0
	ldy #$C0.b		; A0 C0
	.db $80, $D0		; 80 D0
	.db $80, $C0		; 80 C0
	.db $80, $9F		; 80 9F
	cmp $20DD.w,X		; DD DD 20
	cpy #$C0.b		; C0 C0
	cpx #$40.b		; E0 40
	cpy #$C0.b		; C0 C0
	rts		; 60

	.db $F0, $70		; F0 70
	sbc $FFFF60.l		; EF 60 FF FF
	cmp $E0DF.w,X		; DD DF E0
	cpy #$7F.b		; C0 7F
	rti		; 40

	sta $60BFC0.l,X		; 9F C0 BF 60
	lda $60A060.l		; AF 60 A0 60
	ldy #$C2.b		; A0 C2
	lda $FFC2.w,X		; BD C2 FF
	adc $3FBF7F.l,X		; 7F 7F BF 3F
	sta $9FBFBF.l,X		; 9F BF BF 9F
	lda $9FBF9F.l,X		; BF 9F BF 9F
	.db $80, $BF		; 80 BF
	cpy #$FD.b		; C0 FD
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $07.b		; 06 07
	adc $7C.b,S		; 63 7C
	lda ($DF.b,X)		; A1 DF
	.db $30, $F0		; 30 F0
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	and $63FF06.l,X		; 3F 06 FF 63
	jsr ($DFB9.w,X)		; FC B9 DF
	sbc [$D5.b],Y		; F7 D5
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $C0.b		; 00 C0
	brk $07.b		; 00 07
	brk $7F.b		; 00 7F
	clc		; 18
	sbc [$E6.b]		; E7 E6
	ora $FFFFFF.l,X		; 1F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $80FFF8.l,X		; FF F8 FF 80
	sbc $0CFF00.l,X		; FF 00 FF 0C
	sed		; F8
	clc		; 18
	ora [$0C.b],Y		; 17 0C
	ora ($26.b,X)		; 01 26
	and #$6C.b		; 29 6C
	phk		; 4B
	ldx $69.b		; A6 69
	lsr $E9.b		; 46 E9
	clc		; 18
	ora [$70.b],Y		; 17 70
	ora [$08.b]		; 07 08
	cli		; 58
	tsb $E4.b		; 04 E4
	bit $FE.b		; 24 FE
	ror $DE.b		; 66 DE
	cpx $5E.b		; E4 5E
	cpy $BC.b		; C4 BC
	clc		; 18
	inx		; E8
	sed		; F8
	sei		; 78
	ora $1F0FAF.l		; 0F AF 0F 1F
	ora $072D.w		; 0D 2D 07
	adc [$6D.b]		; 67 6D
	sta $2FC7.w		; 8D C7 2F
	ora $FF771F.l		; 0F 1F 77 FF
	xba		; EB
	sed		; F8
	sbc [$F4.b],Y		; F7 F4
	cmp $FC95F4.l,X		; DF F4 95 FC
	ora $F417F4.l,X		; 1F F4 17 F4
	xce		; FB
	inx		; E8
	adc [$70.b],Y		; 77 70
	ora ($FF.b,X)		; 01 FF
	cop $FD.b		; 02 FD
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	cop $FC.b		; 02 FC
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	.db $42, $81		; 42 81
	ora $0A.b		; 05 0A
	cop $02.b		; 02 02
	ora ($03.b,X)		; 01 03
	ora $01.b,S		; 03 01
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	rts		; 60

	tda		; 7B
	inc $FB.b,X		; F6 FB
	inc $FEFE.w,X		; FE FE FE
	sbc $FEFFFC.l,X		; FF FC FF FE
	inc $FEFC.w,X		; FE FC FE
	inc $D8FF.w,X		; FE FF D8
	sbc $08EB.w,Y		; F9 EB 08
	sbc $01FC03.l,X		; FF 03 FC 01
	inc $FF01.w,X		; FE 01 FF
	ora ($FC.b,X)		; 01 FC
	ora ($FF.b,X)		; 01 FF
	brk $87.b		; 00 87
	brk $E7.b		; 00 E7
	plx		; FA
	sbc [$7B.b]		; E7 7B
	and $F877.w		; 2D 77 F8
	lda [$72.b]		; A7 72
	mvp $4E,$58		; 44 58 4E
	lsr $87.b		; 46 87
	brk $7D.b		; 00 7D
	jsr ($FCE0.w,X)		; FC E0 FC
	rts		; 60

	sbc $7A20.w,Y		; F9 20 7A
	cop $FF.b		; 02 FF
	asl $D1.b		; 06 D1
	lda ($DE.b,X)		; A1 DE
	lda ($00.b,X)		; A1 00
	brk $7A.b		; 00 7A
	.db $80, $7B		; 80 7B
	brk $F4.b		; 00 F4
	brk $80.b		; 00 80
	ora [$8A.b]		; 07 8A
	cmp [$08.b]		; C7 08
	lda $38.b,S		; A3 38
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $7AFFF8.l,X		; FF F8 FF 7A
	ldx $DE3C.w,Y		; BE 3C DE
	asl $00.b		; 06 00
	sbc $AF1000.l,X		; FF 00 10 AF
	sta ($4A.b),Y		; 91 4A
	eor ($BF.b,X)		; 41 BF
	rts		; 60

	eor $80.b		; 45 80
	lda $FF02.w,X		; BD 02 FF
	cop $FF.b		; 02 FF
	cop $FD.b		; 02 FD
	.db $D0, $90		; D0 90
	sei		; 78
	mvn $A0,$61		; 54 61 A0
	sbc $62AF.w,X		; FD AF 62
	jsr $0002.w		; 20 02 00
	sta $80.b,S		; 83 80
	cop $01.b		; 02 01
	eor $7F37FF.l,X		; 5F FF 37 7F
	dex		; CA
	sbc $1EFD60.l,X		; FF 60 FD 1E
	sbc $7EFFFF.l,X		; FF FF FF 7E
	sbc $1FFDFE.l,X		; FF FE FD 1F
	.db $F0, $8A		; F0 8A
	.db $F0, $83		; F0 83
	sei		; 78
	ror $A1.b		; 66 A1
	bit $FC01.w,X		; 3C 01 FC
	ora ($FD.b,X)		; 01 FD
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	sbc $9C9F40.l,X		; FF 40 9F 9C
	rtl		; 6B

	cld		; D8
	sbc ($CC.b,S),Y		; F3 CC
	sbc [$5A.b]		; E7 5A
	lda $34FCB0.l		; AF B0 FC 34
	adc $0000.w		; 6D 00 00
	jsr $C0F0.w		; 20 F0 C0
	.db $50, $10		; 50 10
	tsb $1CB2.w		; 0C B2 1C
	.db $30, $82		; 30 82
	sty $41.b		; 84 41
	ldy #$1C.b		; A0 1C
	sbc $EF0FFF.l,X		; FF FF 0F EF
	sta [$FF.b],Y		; 97 FF
	wai		; CB
	pld		; 2B
	eor ($75.b,S),Y		; 53 75
	phk		; 4B
	sbc $73.b,S		; E3 73
	cmp [$87.b]		; C7 87
	dec $00FF.w,X		; DE FF 00
	ora $E01700.l,X		; 1F 00 17 E0
	cmp $C873F0.l		; CF F0 73 C8
	and $FE1C.w,X		; 3D 1C FE
	sec		; 38
	cop $71.b		; 02 71
	rti		; 40

	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	ldy #$C0.b		; A0 C0
	.db $80, $D0		; 80 D0
	.db $80, $C0		; 80 C0
	.db $80, $9F		; 80 9F
	cmp $20DD.w,X		; DD DD 20
	cpy #$C0.b		; C0 C0
	cpx #$40.b		; E0 40
	cpy #$C0.b		; C0 C0
	rts		; 60

	.db $F0, $70		; F0 70
	sbc $FFFF60.l		; EF 60 FF FF
	cmp $E0DF.w,X		; DD DF E0
	cpy #$7F.b		; C0 7F
	rti		; 40

	sta $60BFC0.l,X		; 9F C0 BF 60
	lda $60A060.l		; AF 60 A0 60
	ldy #$C2.b		; A0 C2
	lda $FFC2.w,X		; BD C2 FF
	adc $3FBF7F.l,X		; 7F 7F BF 3F
	sta $9FBFBF.l,X		; 9F BF BF 9F
	lda $9FBF9F.l,X		; BF 9F BF 9F
	.db $80, $BF		; 80 BF
	cpy #$FD.b		; C0 FD
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $07.b		; 06 07
	adc $7C.b,S		; 63 7C
	lda ($DF.b,X)		; A1 DF
	.db $30, $F0		; 30 F0
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	and $63FF06.l,X		; 3F 06 FF 63
	jsr ($DFB9.w,X)		; FC B9 DF
	sbc [$D5.b],Y		; F7 D5
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $C0.b		; 00 C0
	brk $07.b		; 00 07
	brk $7F.b		; 00 7F
	clc		; 18
	sbc [$E6.b]		; E7 E6
	ora $FFFFFF.l,X		; 1F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $80FFF8.l,X		; FF F8 FF 80
	sbc $0CFF00.l,X		; FF 00 FF 0C
	sed		; F8
	clc		; 18
	ora [$0C.b],Y		; 17 0C
	ora ($26.b,X)		; 01 26
	and #$6C.b		; 29 6C
	phk		; 4B
	ldx $69.b		; A6 69
	lsr $E9.b		; 46 E9
	clc		; 18
	ora [$70.b],Y		; 17 70
	ora [$08.b]		; 07 08
	cli		; 58
	tsb $E4.b		; 04 E4
	bit $FE.b		; 24 FE
	ror $DE.b		; 66 DE
	cpx $5E.b		; E4 5E
	cpy $BC.b		; C4 BC
	clc		; 18
	inx		; E8
	sed		; F8
	sei		; 78
	ora $1F0FAF.l		; 0F AF 0F 1F
	ora $072D.w		; 0D 2D 07
	adc [$6D.b]		; 67 6D
	sta $2FC7.w		; 8D C7 2F
	ora $FF771F.l		; 0F 1F 77 FF
	xba		; EB
	sed		; F8
	sbc [$F4.b],Y		; F7 F4
	cmp $FC95F4.l,X		; DF F4 95 FC
	ora $F417F4.l,X		; 1F F4 17 F4
	xce		; FB
	inx		; E8
	adc [$70.b],Y		; 77 70
	ora ($FF.b,X)		; 01 FF
	cop $FD.b		; 02 FD
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	cop $FC.b		; 02 FC
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	.db $42, $81		; 42 81
	ora $0A.b		; 05 0A
	cop $02.b		; 02 02
	ora ($03.b,X)		; 01 03
	ora $01.b,S		; 03 01
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	rts		; 60

	tda		; 7B
	inc $FB.b,X		; F6 FB
	inc $FEFE.w,X		; FE FE FE
	sbc $FEFFFC.l,X		; FF FC FF FE
	inc $FEFC.w,X		; FE FC FE
	inc $D8FF.w,X		; FE FF D8
	sbc $08EB.w,Y		; F9 EB 08
	sbc $01FC03.l,X		; FF 03 FC 01
	inc $FF01.w,X		; FE 01 FF
	ora ($FC.b,X)		; 01 FC
	ora ($FF.b,X)		; 01 FF
	brk $87.b		; 00 87
	brk $E7.b		; 00 E7
	plx		; FA
	sbc [$7B.b]		; E7 7B
	and $F877.w		; 2D 77 F8
	lda [$72.b]		; A7 72
	mvp $4E,$58		; 44 58 4E
	lsr $87.b		; 46 87
	brk $7D.b		; 00 7D
	jsr ($FCE0.w,X)		; FC E0 FC
	rts		; 60

	sbc $7A20.w,Y		; F9 20 7A
	cop $FF.b		; 02 FF
	asl $D1.b		; 06 D1
	lda ($DE.b,X)		; A1 DE
	lda ($00.b,X)		; A1 00
	brk $7A.b		; 00 7A
	.db $80, $7B		; 80 7B
	brk $F4.b		; 00 F4
	brk $80.b		; 00 80
	ora [$8A.b]		; 07 8A
	cmp [$08.b]		; C7 08
	lda $38.b,S		; A3 38
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $7AFFF8.l,X		; FF F8 FF 7A
	ldx $DE3C.w,Y		; BE 3C DE
	asl $00.b		; 06 00
	sbc $AF1000.l,X		; FF 00 10 AF
	sta ($4A.b),Y		; 91 4A
	eor ($BF.b,X)		; 41 BF
	rts		; 60

	eor $80.b		; 45 80
	lda $FF02.w,X		; BD 02 FF
	cop $FF.b		; 02 FF
	cop $FD.b		; 02 FD
	.db $D0, $90		; D0 90
	sei		; 78
	mvn $A0,$61		; 54 61 A0
	sbc $62AF.w,X		; FD AF 62
	jsr $0002.w		; 20 02 00
	sta $80.b,S		; 83 80
	cop $01.b		; 02 01
	eor $7F37FF.l,X		; 5F FF 37 7F
	dex		; CA
	sbc $1EFD60.l,X		; FF 60 FD 1E
	sbc $7EFFFF.l,X		; FF FF FF 7E
	sbc $1FFDFE.l,X		; FF FE FD 1F
	.db $F0, $8A		; F0 8A
	.db $F0, $83		; F0 83
	sei		; 78
	ror $A1.b		; 66 A1
	bit $FC01.w,X		; 3C 01 FC
	ora ($FD.b,X)		; 01 FD
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	sbc $9C9F40.l,X		; FF 40 9F 9C
	rtl		; 6B

	cld		; D8
	sbc ($CC.b,S),Y		; F3 CC
	sbc [$5A.b]		; E7 5A
	lda $34FCB0.l		; AF B0 FC 34
	adc $0000.w		; 6D 00 00
	jsr $C0F0.w		; 20 F0 C0
	.db $50, $10		; 50 10
	tsb $1CB2.w		; 0C B2 1C
	.db $30, $82		; 30 82
	sty $41.b		; 84 41
	ldy #$1C.b		; A0 1C
	sbc $EF0FFF.l,X		; FF FF 0F EF
	sta [$FF.b],Y		; 97 FF
	wai		; CB
	pld		; 2B
	eor ($75.b,S),Y		; 53 75
	phk		; 4B
	sbc $73.b,S		; E3 73
	cmp [$87.b]		; C7 87
	dec $00FF.w,X		; DE FF 00
	ora $E01700.l,X		; 1F 00 17 E0
	cmp $C873F0.l		; CF F0 73 C8
	and $FE1C.w,X		; 3D 1C FE
	sec		; 38
	cop $71.b		; 02 71
	ora $74.b		; 05 74
	ora $F10D7B.l		; 0F 7B 0D F1
	adc $7F8B.w,Y		; 79 8B 7F
	.db $80, $F6		; 80 F6
	ora #$EF.b		; 09 EF
	.db $70, $EF		; 70 EF
	.db $70, $87		; 70 87
	ora ($06.b,X)		; 01 06
	tsb $0D0F.w		; 0C 0F 0D
	adc ($76.b,S),Y		; 73 76
	adc ($71.b,S),Y		; 73 71
	.db $F0, $F0		; F0 F0
	ldy #$D0.b		; A0 D0
	.db $80, $F0		; 80 F0
	ora $068F.w		; 0D 8F 06
	ora $0E0D.w		; 0D 0D 0E
	asl $0D.b		; 06 0D
	ora $01.b,S		; 03 01
	ora #$09.b		; 09 09
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	phd		; 0B
	adc $FC0C.w,X		; 7D 0C FC
	ora $01FD.w		; 0D FD 01
	.db $F0, $03		; F0 03
	sbc $F609.w,X		; FD 09 F6
	brk $9F.b		; 00 9F
	brk $FF.b		; 00 FF
	ora $74.b		; 05 74
	ora $F10D7B.l		; 0F 7B 0D F1
	adc $7F8B.w,Y		; 79 8B 7F
	.db $80, $F6		; 80 F6
	ora #$EF.b		; 09 EF
	.db $70, $EF		; 70 EF
	.db $70, $87		; 70 87
	ora ($06.b,X)		; 01 06
	tsb $0D0F.w		; 0C 0F 0D
	adc ($76.b,S),Y		; 73 76
	adc ($71.b,S),Y		; 73 71
	.db $F0, $F0		; F0 F0
	ldy #$D0.b		; A0 D0
	.db $80, $F0		; 80 F0
	ora $068F.w		; 0D 8F 06
	ora $0E0D.w		; 0D 0D 0E
	asl $0D.b		; 06 0D
	ora $01.b,S		; 03 01
	ora #$09.b		; 09 09
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	phd		; 0B
	adc $FC0C.w,X		; 7D 0C FC
	ora $01FD.w		; 0D FD 01
	.db $F0, $03		; F0 03
	sbc $F609.w,X		; FD 09 F6
	brk $9F.b		; 00 9F
	brk $FF.b		; 00 FF
	.db $82, $7D, $7F		; 82 7D 7F
	tsx		; BA
	lda $DFDA.w,Y		; B9 DA DF
	dec $FB.b,X		; D6 FB
	pla		; 68
	ora [$E8.b]		; 07 E8
	lda [$48.b],Y		; B7 48
	sbc $BEBB00.l,X		; FF 00 BB BE
	sbc $BF84.w,X		; FD 84 BF
	eor $9449D1.l,X		; 5F D1 49 94
	pea $9808.w		; F4 08 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	lsr $FC.b		; 46 FC
	.db $82, $0B, $75		; 82 0B 75
	eor ($26.b,X)		; 41 26
	.db $F0, $EC		; F0 EC
	.db $70, $78		; 70 78
	pha		; 48
	pha		; 48
	brk $00.b		; 00 00
	cop $3F.b		; 02 3F
	sta ($7D.b,X)		; 81 7D
	bit #$F9.b		; 89 F9
	.db $F0, $F8		; F0 F8
	.db $80, $83		; 80 83
	dey		; 88
	ora [$48.b]		; 07 48
	lda [$00.b],Y		; B7 00
	sbc $20C407.l,X		; FF 07 C4 20
	tsa		; 3B
	.db $70, $BF		; 70 BF
	.db $80, $1F		; 80 1F
	iny		; C8
	and [$FA.b],Y		; 37 FA
	ora $B3.b		; 05 B3
	rts		; 60

	sty $8307.w		; 8C 07 83
	xba		; EB
	tsb $94.b		; 04 94
	cpy #$C0.b		; C0 C0
	.db $80, $E0		; 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	trb $8370.w		; 1C 70 83
	eor $CF7F03.l,X		; 5F 03 7F CF
	adc $373FFF.l,X		; 7F FF 3F 37
	and [$25.b],Y		; 37 25
	and $4D.b		; 25 4D
	adc $3F24.w		; 6D 24 3F
	tsa		; 3B
	sbc ($C7.b,S),Y		; F3 C7
	cpx #$4F.b		; E0 4F
	rti		; 40

	ora $C83700.l,X		; 1F 00 37 C8
	and $DA.b		; 25 DA
	eor #$92.b		; 49 92
	pla		; 68
	ldy #$C0.b		; A0 C0
	ora $00FE01.l		; 0F 01 FE 00
	inc $DF22.w,X		; FE 22 DF
	.db $80, $7F		; 80 7F
	eor ($BF.b,X)		; 41 BF
	brk $FD.b		; 00 FD
	jsr ($E001.w,X)		; FC 01 E0
	cpy #$00.b		; C0 00
	ora ($03.b,X)		; 01 03
	ora $01.b,S		; 03 01
	ora $07.b,S		; 03 07
	tsb $02.b		; 04 02
	ora [$03.b]		; 07 03
	ora $02.b		; 05 02
	ora $CF.b		; 05 CF
	sbc $FDFEFE.l		; EF FE FE FD
	sbc $7BDEDF.l,X		; FF DF DE 7B
	jmp ($BCBA.w,X)		; 7C BA BC
	sbc $00FF.w,Y		; F9 FF 00
	ora $DF.b,S		; 03 DF
	cpy #$FF.b		; C0 FF
	brk $FF.b		; 00 FF
	brk $DC.b		; 00 DC
	and ($7C.b,X)		; 21 7C
	sta $BC.b,S		; 83 BC
	eor $FD.b,S		; 43 FD
	cop $05.b		; 02 05
	plx		; FA
	trb $74.b		; 14 74
	cop $C4.b		; 02 C4
	.db $80, $44		; 80 44
	asl $80.b		; 06 80
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	ora $169715.l,X		; 1F 15 97 16
	tsa		; 3B
	cmp ($C6.b,S),Y		; D3 C6
	xce		; FB
	dec $7B.b		; C6 7B
.ACCU 16
.INDEX 16
	rep #$7F		; C2 7F
	dec $7F.b		; C6 7F
	dec $DB79.w		; CE 79 DB
	pla		; 68
	cmp $BDA36D.l,X		; DF 6D A3 BD
	dec $C4.b		; C6 C4
	lsr $C0.b		; 46 C0
	rep #$40		; C2 40
	mvp $4C,$C6		; 44 C6 4C
	cpy $48.b		; C4 48
	cpy $49.b		; C4 49
	cpy $7E01.w		; CC 01 7E
	sbc $793F.w,Y		; F9 3F 79
	lda $7DBF79.l,X		; BF 79 BF 7D
	tyx		; BB
	adc ($BB.b,S),Y		; 73 BB
	adc ($B3.b,S),Y		; 73 B3
	ply		; 7A
	lda [$40.b],Y		; B7 40
	lda $81FFC0.l,X		; BF C0 FF 81
	lda $5FBF83.l,X		; BF 83 BF 5F
	tsb $E3.b		; 04 E3
	sed		; F8
	.db $10, $26		; 10 26
	and ($C4.b,S),Y		; 33 C4
	brk $C0.b		; 00 C0
	.db $80, $40		; 80 40
	cpy #$C101.w		; C0 01 C1
	.db $42, $16		; 42 16
	sta ($BF.b,S),Y		; 93 BF
	ora $AF79.w,X		; 1D 79 AF
	adc $4F.b,X		; 75 4F
	and $7F7FBF.l,X		; 3F BF 7F 7F
	ror $3E7F.w,X		; 7E 7F 3E
	adc $615E5E.l,X		; 7F 5E 5E 61
	adc $FF54.w,X		; 7D 54 FF
	and ($FD.b),Y		; 31 FD
	sbc $80BF00.l,X		; FF 00 BF 80
	ldx $BD80.w,Y		; BE 80 BD
	.db $80, $B2		; 80 B2
	sta ($DF.b,S),Y		; 93 DF
	cmp $3ABD.w,X		; DD BD 3A
	adc $0077.w,X		; 7D 77 00
	sbc $084FE0.l,X		; FF E0 4F 08
	eor $028D8A.l		; 4F 8A 8D 02
	cmp ($E2.b,X)		; C1 E2
	ror $FD5A.w		; 6E 5A FD
	eor ($02.b,X)		; 41 02
	brk $00.b		; 00 00
	jsr $50B0.w		; 20 B0 50
	clv		; B8
	.db $80, $78		; 80 78
	lsr $BE.b		; 46 BE
	plx		; FA
	trb $61.b		; 14 61
	lda $FFB6F9.l,X		; BF F9 B6 FF
	sbc $57FF3F.l,X		; FF 3F FF 57
	cmp $470F0F.l,X		; DF 0F 0F 47
	sta $18.b,S		; 83 18
	rol $D5B0.w,X		; 3E B0 D5
	iny		; C8
	adc $AF00FF.l,X		; 7F FF 00 AF
	jsr $60B7.w		; 20 B7 60
	sbc ($F0.b,S),Y		; F3 F0
	tsa		; 3B
	ror $CCF3.w,X		; 7E F3 CC
	cpy #$F40E.w		; C0 0E F4
	adc ($62.b)		; 72 62
	sta $8C41.w		; 8D 41 8C
	cop $FD.b		; 02 FD
	.db $50, $AE		; 50 AE
	ply		; 7A
	sta $DC.b		; 85 DC
	and $FF.b,S		; 23 FF
	brk $FF.b		; 00 FF
	brk $52.b		; 00 52
	plp		; 28
	ora ($10.b,S),Y		; 13 10
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $FD.b,Y		; B6 FD
	stx $FE9D.w		; 8E 9D FE
	sbc $85AFAF.l,X		; FF AF AF 85
	sta $23.b		; 85 23
	and $00.b,S		; 23 00
	brk $00.b		; 00 00
	brk $E6.b		; 00 E6
	ora ($BF.b,X)		; 01 BF
	rti		; 40

	sbc $50AE00.l,X		; FF 00 AE 50
	sta $7A.b		; 85 7A
	and $DC.b,S		; 23 DC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	.db $82, $7D, $7F		; 82 7D 7F
	tsx		; BA
	lda $DFDA.w,Y		; B9 DA DF
	dec $FB.b,X		; D6 FB
	pla		; 68
	ora [$E8.b]		; 07 E8
	lda [$48.b],Y		; B7 48
	sbc $BEBB00.l,X		; FF 00 BB BE
	sbc $BF84.w,X		; FD 84 BF
	eor $9449D1.l,X		; 5F D1 49 94
	pea $9808.w		; F4 08 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	lsr $FC.b		; 46 FC
	.db $82, $0B, $75		; 82 0B 75
	eor ($26.b,X)		; 41 26
	.db $F0, $EC		; F0 EC
	.db $70, $78		; 70 78
	pha		; 48
	pha		; 48
	brk $00.b		; 00 00
	cop $3F.b		; 02 3F
	sta ($7D.b,X)		; 81 7D
	bit #$F0F9.w		; 89 F9 F0
	sed		; F8
	.db $80, $83		; 80 83
	dey		; 88
	ora [$48.b]		; 07 48
	lda [$00.b],Y		; B7 00
	sbc $20C407.l,X		; FF 07 C4 20
	tsa		; 3B
	.db $70, $BF		; 70 BF
	.db $80, $1F		; 80 1F
	iny		; C8
	and [$FA.b],Y		; 37 FA
	ora $B3.b		; 05 B3
	rts		; 60

	sty $8307.w		; 8C 07 83
	xba		; EB
	tsb $94.b		; 04 94
	cpy #$80C0.w		; C0 C0 80
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	trb $8370.w		; 1C 70 83
	eor $CF7F03.l,X		; 5F 03 7F CF
	adc $373FFF.l,X		; 7F FF 3F 37
	and [$25.b],Y		; 37 25
	and $4D.b		; 25 4D
	adc $3F24.w		; 6D 24 3F
	tsa		; 3B
	sbc ($C7.b,S),Y		; F3 C7
	cpx #$404F.w		; E0 4F 40
	ora $C83700.l,X		; 1F 00 37 C8
	and $DA.b		; 25 DA
	eor #$6892.w		; 49 92 68
	ldy #$0FC0.w		; A0 C0 0F
	ora ($FE.b,X)		; 01 FE
	brk $FE.b		; 00 FE
	jsl $7F80DF.l		; 22 DF 80 7F
	eor ($BF.b,X)		; 41 BF
	brk $FD.b		; 00 FD
	jsr ($E001.w,X)		; FC 01 E0
	cpy #$0100.w		; C0 00 01
	ora $03.b,S		; 03 03
	ora ($03.b,X)		; 01 03
	ora [$04.b]		; 07 04
	cop $07.b		; 02 07
	ora $05.b,S		; 03 05
	cop $05.b		; 02 05
	cmp $FEFEEF.l		; CF EF FE FE
	sbc $DFFF.w,X		; FD FF DF
	dec $7C7B.w,X		; DE 7B 7C
	tsx		; BA
	ldy $FFF9.w,X		; BC F9 FF
	brk $03.b		; 00 03
	cmp $00FFC0.l,X		; DF C0 FF 00
	sbc $21DC00.l,X		; FF 00 DC 21
	jmp ($BC83.w,X)		; 7C 83 BC
	eor $FD.b,S		; 43 FD
	cop $05.b		; 02 05
	plx		; FA
	trb $74.b		; 14 74
	cop $C4.b		; 02 C4
	.db $80, $44		; 80 44
	asl $80.b		; 06 80
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	ora $169715.l,X		; 1F 15 97 16
	tsa		; 3B
	cmp ($C6.b,S),Y		; D3 C6
	xce		; FB
	dec $7B.b		; C6 7B
.ACCU 16
.INDEX 16
	rep #$7F		; C2 7F
	dec $7F.b		; C6 7F
	dec $DB79.w		; CE 79 DB
	pla		; 68
	cmp $BDA36D.l,X		; DF 6D A3 BD
	dec $C4.b		; C6 C4
	lsr $C0.b		; 46 C0
	rep #$40		; C2 40
	mvp $4C,$C6		; 44 C6 4C
	cpy $48.b		; C4 48
	cpy $49.b		; C4 49
	cpy $7E01.w		; CC 01 7E
	sbc $793F.w,Y		; F9 3F 79
	lda $7DBF79.l,X		; BF 79 BF 7D
	tyx		; BB
	adc ($BB.b,S),Y		; 73 BB
	adc ($B3.b,S),Y		; 73 B3
	ply		; 7A
	lda [$40.b],Y		; B7 40
	lda $81FFC0.l,X		; BF C0 FF 81
	lda $5FBF83.l,X		; BF 83 BF 5F
	tsb $E3.b		; 04 E3
	sed		; F8
	.db $10, $26		; 10 26
	and ($C4.b,S),Y		; 33 C4
	brk $C0.b		; 00 C0
	.db $80, $40		; 80 40
	cpy #$C101.w		; C0 01 C1
	.db $42, $16		; 42 16
	sta ($BF.b,S),Y		; 93 BF
	ora $AF79.w,X		; 1D 79 AF
	adc $4F.b,X		; 75 4F
	and $7F7FBF.l,X		; 3F BF 7F 7F
	ror $3E7F.w,X		; 7E 7F 3E
	adc $615E5E.l,X		; 7F 5E 5E 61
	adc $FF54.w,X		; 7D 54 FF
	and ($FD.b),Y		; 31 FD
	sbc $80BF00.l,X		; FF 00 BF 80
	ldx $BD80.w,Y		; BE 80 BD
	.db $80, $B2		; 80 B2
	sta ($DF.b,S),Y		; 93 DF
	cmp $3ABD.w,X		; DD BD 3A
	adc $0077.w,X		; 7D 77 00
	sbc $084FE0.l,X		; FF E0 4F 08
	eor $028D8A.l		; 4F 8A 8D 02
	cmp ($E2.b,X)		; C1 E2
	ror $FD5A.w		; 6E 5A FD
	eor ($02.b,X)		; 41 02
	brk $00.b		; 00 00
	jsr $50B0.w		; 20 B0 50
	clv		; B8
	.db $80, $78		; 80 78
	lsr $BE.b		; 46 BE
	plx		; FA
	trb $61.b		; 14 61
	lda $FFB6F9.l,X		; BF F9 B6 FF
	sbc $57FF3F.l,X		; FF 3F FF 57
	cmp $470F0F.l,X		; DF 0F 0F 47
	sta $18.b,S		; 83 18
	rol $D5B0.w,X		; 3E B0 D5
	iny		; C8
	adc $AF00FF.l,X		; 7F FF 00 AF
	jsr $60B7.w		; 20 B7 60
	sbc ($F0.b,S),Y		; F3 F0
	tsa		; 3B
	ror $CCF3.w,X		; 7E F3 CC
	cpy #$F40E.w		; C0 0E F4
	adc ($62.b)		; 72 62
	sta $8C41.w		; 8D 41 8C
	cop $FD.b		; 02 FD
	.db $50, $AE		; 50 AE
	ply		; 7A
	sta $DC.b		; 85 DC
	and $FF.b,S		; 23 FF
	brk $FF.b		; 00 FF
	brk $52.b		; 00 52
	plp		; 28
	ora ($10.b,S),Y		; 13 10
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $FD.b,Y		; B6 FD
	stx $FE9D.w		; 8E 9D FE
	sbc $85AFAF.l,X		; FF AF AF 85
	sta $23.b		; 85 23
	and $00.b,S		; 23 00
	brk $00.b		; 00 00
	brk $E6.b		; 00 E6
	ora ($BF.b,X)		; 01 BF
	rti		; 40

	sbc $50AE00.l,X		; FF 00 AE 50
	sta $7A.b		; 85 7A
	and $DC.b,S		; 23 DC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cmp $709F70.l		; CF 70 9F 70
	sta $F08FE0.l		; 8F E0 8F F0
	ora $E01F60.l,X		; 1F 60 1F E0
	sta $D06FC0.l,X		; 9F C0 6F D0
	.db $80, $F0		; 80 F0
	.db $90, $F0		; 90 F0
	.db $10, $70		; 10 70
	brk $70.b		; 00 70
	.db $10, $70		; 10 70
	.db $90, $F0		; 90 F0
	.db $30, $50		; 30 50
	.db $10, $C0		; 10 C0
	brk $00.b		; 00 00
	.db $10, $10		; 10 10
	.db $10, $10		; 10 10
	brk $10.b		; 00 10
	.db $10, $10		; 10 10
	.db $10, $90		; 10 90
	.db $B0, $F0		; B0 F0
	jsr $00E0.w		; 20 E0 00
	sbc $10EF10.l,X		; FF 10 EF 10
	sbc $10EF10.l		; EF 10 EF 10
	sbc $807F90.l,X		; FF 90 7F 80
	sta $CF1F10.l		; 8F 10 1F CF
	.db $70, $9F		; 70 9F
	.db $70, $8F		; 70 8F
	cpx #$F08F.w		; E0 8F F0
	ora $E01F60.l,X		; 1F 60 1F E0
	sta $D06FC0.l,X		; 9F C0 6F D0
	.db $80, $F0		; 80 F0
	.db $90, $F0		; 90 F0
	.db $10, $70		; 10 70
	brk $70.b		; 00 70
	.db $10, $70		; 10 70
	.db $90, $F0		; 90 F0
	.db $30, $50		; 30 50
	.db $10, $C0		; 10 C0
	brk $00.b		; 00 00
	.db $10, $10		; 10 10
	.db $10, $10		; 10 10
	brk $10.b		; 00 10
	.db $10, $10		; 10 10
	.db $10, $90		; 10 90
	.db $B0, $F0		; B0 F0
	jsr $00E0.w		; 20 E0 00
	sbc $10EF10.l,X		; FF 10 EF 10
	sbc $10EF10.l		; EF 10 EF 10
	sbc $807F90.l,X		; FF 90 7F 80
	sta $FF1F10.l		; 8F 10 1F FF
	brk $FB.b		; 00 FB
	brk $F0.b		; 00 F0
	ora [$E5.b]		; 07 E5
	ora $27CD.w,X		; 1D CD 27
	sbc $3FE627.l		; EF 27 E6 3F
	sbc $1E.b,X		; F5 1E
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	asl A		; 0A
	ora $0E.b,S		; 03 0E
	brk $30.b		; 00 30
	dec A		; 3A
	.db $30, $18		; 30 18
	jsr $1018.w		; 20 18 10
	rol A		; 2A
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $130F.w		; 0C 0F 13
	ora $3F3F0F.l,X		; 1F 0F 3F 3F
	and $1F3F3F.l		; 2F 3F 3F 1F
	and $04FF00.l,X		; 3F 00 FF 04
	xce		; FB
	cop $F0.b		; 02 F0
	trb $3AE1.w		; 1C E1 3A
	cmp [$08.b]		; C7 08
	cmp [$19.b]		; C7 19
	cmp $A8CE3A.l,X		; DF 3A CE A8
	lsr A		; 4A
	ora $39BC.w,X		; 1D BC 39
	sbc ($D2.b)		; F2 D2
	lda $DA.b,S		; A3 DA
	cpx $CFF0.w		; EC F0 CF
	adc $7FFFFF.l,X		; 7F FF FF 7F
	and $7D7C.w,X		; 3D 7C 7D
	stz $75BE.w		; 9C BE 75
	and $181F5A.l,X		; 3F 5A 1F 18
	ora ($3E.b,X)		; 01 3E
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	trb $77.b		; 14 77
	jsl $DF57E3.l		; 22 E3 57 DF
	xba		; EB
	xce		; FB
	cpy $FF.b		; C4 FF
	inc $FFFF.w,X		; FE FF FF
	sbc $29FFFF.l,X		; FF FF FF 29
	ldy $1CFD.w,X		; BC FD 1C
	plx		; FA
	adc $73.b,X		; 75 73
	stz $D81F.w,X		; 9E 1F D8
	and $FF80CE.l,X		; 3F CE 80 FF
	.db $80, $7F		; 80 7F
	tda		; 7B
	.db $80, $3B		; 80 3B
	sta ($3D.b,X)		; 81 3D
	eor ($1E.b,X)		; 41 1E
.ACCU 16
	rep #$A8		; C2 A8
	adc ($1C.b,X)		; 61 1C
.INDEX 8
	sep #$57		; E2 57
	inx		; E8
	cmp [$F0.b]		; C7 F0
	eor $C1.b,S		; 43 C1
	.db $82, $41, $86		; 82 41 86
	ora $27.b		; 05 27
	lda $07.b		; A5 07
	eor [$91.b]		; 47 91
	adc ($10.b),Y		; 71 10
	ldy #$10.b		; A0 10
	jsr $C341.w		; 20 41 C3
	cpy #$C2.b		; C0 C2
	mvp $07,$C6		; 44 C6 07
	sbc $D1.b		; E5 D1
	adc [$72.b],Y		; 77 72
	sbc ($E8.b,S),Y		; F3 E8
	sed		; F8
	inx		; E8
	sed		; F8
	eor $7B.b		; 45 7B
	sty $3B.b		; 84 3B
	cpy #$3B.b		; C0 3B
	and ($1A.b,X)		; 21 1A
	eor [$C8.b],Y		; 57 C8
	sbc ($7C.b,S),Y		; F3 7C
	clv		; B8
	sbc [$38.b]		; E7 38
	sbc [$87.b]		; E7 87
	eor [$C1.b]		; 47 C1
	cop $60.b		; 02 60
	sbc $FE07.w,X		; FD 07 FE
	adc $1482FC.l		; 6F FC 82 14
	plx		; FA
	brk $F4.b		; 00 F4
	asl $7887.w		; 0E 87 78
	sbc $FEFD3F.l,X		; FF 3F FD FE
	sbc $FFFE.w,X		; FD FE FF
	inc $A30B.w,X		; FE 0B A3
	ora [$03.b]		; 07 03
	ora $81010B.l		; 0F 0B 01 81
	cmp $FE7C3F.l,X		; DF 3F 7C FE
	sbc $FFFF.w,X		; FD FF FF
	sbc $063F32.l,X		; FF 32 3F 06
	ora [$06.b]		; 07 06
	ora $FE3E.w		; 0D 3E FE
	and $00FFC1.l,X		; 3F C1 FF 00
	sbc $FF01.w,X		; FD 01 FF
	ora $C3.b,S		; 03 C3
	ora $03.b,S		; 03 03
	xce		; FB
	phd		; 0B
	sbc ($67.b),Y		; F1 67
	stx $E0.b		; 86 E0
	ora $0A06C3.l		; 0F C3 06 0A
	ora ($3E.b,X)		; 01 3E
	ora $4F3F26.l		; 0F 26 3F 4F
	and $58.b,X		; 35 58
	stz $7F.b,X		; 74 7F
	clc		; 18
	sbc ($17.b)		; F2 17
	sbc ($3D.b),Y		; F1 3D
	inc $D3EA.w,X		; FE EA D3
	cmp ($D6.b),Y		; D1 D6
	.db $F0, $D5		; F0 D5
	cld		; D8
	cmp $0F.b,S		; C3 0F
	xba		; EB
	sbc $CBFFE8.l,X		; FF E8 FF CB
	sbc [$1F.b],Y		; F7 1F
	inc $C13C.w,X		; FE 3C C1
	ora ($F7.b)		; 12 F7
	pla		; 68
	sta $4F38.w,Y		; 99 38 4F
	sbc $F2F1.w,X		; FD F1 F2
	sbc ($F3.b)		; F2 F3
	sbc ($EB.b,S),Y		; F3 EB
	xba		; EB
	cpx $CF.b		; E4 CF
	jmp.w [$ADD9]		; DC D9 AD
	ldx $FA.b,Y		; B6 FA
	bit $86.b,X		; 34 86
	sta $46.b,S		; 83 46
	adc $66.b,S		; 63 66
	lda $3C.b		; A5 3C
	adc [$8D.b]		; 67 8D
	tsx		; BA
	eor $65.b,X		; 55 65
	clc		; 18
	ldy #$38.b		; A0 38
	cpx #$FE.b		; E0 FE
	asl $3DFF.w,X		; 1E FF 3D
	lsr $A65A.w,X		; 5E 5A A6
	phd		; 0B
	cmp $D45B13.l		; CF 13 5B D4
	and $138F1F.l,X		; 3F 1F 8F 13
	cmp $DF.b		; C5 DF
	adc [$5D.b]		; 67 5D
	adc $FD.b,S		; 63 FD
	dec $89.b,X		; D6 89
	eor $DF.b,S		; 43 DF
	and [$DF.b],Y		; 37 DF
	tya		; 98
	lda $3CFF54.l,X		; BF 54 FF 3C
	asl $1EBC.w,X		; 1E BC 1E
	jmp ($517A.w,X)		; 7C 7A 51
	ror $AB.b		; 66 AB
	and $90.b		; 25 90
	sei		; 78
	and $039B5F.l,X		; 3F 5F 9B 03
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $007E00.l,X		; 7F 00 7E 00
	sbc $03FC01.l,X		; FF 01 FC 03
	jsr ($3F03.w,X)		; FC 03 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sta ($01.b,X)		; 81 01
	brk $00.b		; 00 00
	sta ($83.b,X)		; 81 83
	sta $83.b,S		; 83 83
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	sta ($80.b,X)		; 81 80
	sta ($02.b,X)		; 81 02
	sta $81.b,S		; 83 81
	sta $C3.b,S		; 83 C3
	cpy #$00.b		; C0 00
	sbc $80FF00.l,X		; FF 00 FF 80
	adc $817E00.l,X		; 7F 00 7E 81
	ror $7C83.w,X		; 7E 83 7C
	sta $FC.b,S		; 83 FC
	.db $42, $3D		; 42 3D
	sbc $00FB00.l,X		; FF 00 FB 00
	.db $F0, $07		; F0 07
	sbc $1D.b		; E5 1D
	cmp $EF27.w		; CD 27 EF
	and [$E6.b]		; 27 E6
	and $001EF5.l,X		; 3F F5 1E 00
	brk $04.b		; 00 04
	tsb $0A.b		; 04 0A
	ora $0E.b,S		; 03 0E
	brk $30.b		; 00 30
	dec A		; 3A
	.db $30, $18		; 30 18
	jsr $1018.w		; 20 18 10
	rol A		; 2A
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $130F.w		; 0C 0F 13
	ora $3F3F0F.l,X		; 1F 0F 3F 3F
	and $1F3F3F.l		; 2F 3F 3F 1F
	and $04FF00.l,X		; 3F 00 FF 04
	xce		; FB
	cop $F0.b		; 02 F0
	trb $3AE1.w		; 1C E1 3A
	cmp [$08.b]		; C7 08
	cmp [$19.b]		; C7 19
	cmp $A8CE3A.l,X		; DF 3A CE A8
	lsr A		; 4A
	ora $39BC.w,X		; 1D BC 39
	sbc ($D2.b)		; F2 D2
	lda $DA.b,S		; A3 DA
	cpx $CFF0.w		; EC F0 CF
	adc $7FFFFF.l,X		; 7F FF FF 7F
	and $7D7C.w,X		; 3D 7C 7D
	stz $75BE.w		; 9C BE 75
	and $181F5A.l,X		; 3F 5A 1F 18
	ora ($3E.b,X)		; 01 3E
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	trb $77.b		; 14 77
	jsl $DF57E3.l		; 22 E3 57 DF
	xba		; EB
	xce		; FB
	cpy $FF.b		; C4 FF
	inc $FFFF.w,X		; FE FF FF
	sbc $29FFFF.l,X		; FF FF FF 29
	ldy $1CFD.w,X		; BC FD 1C
	plx		; FA
	adc $73.b,X		; 75 73
	stz $D81F.w,X		; 9E 1F D8
	and $FF80CE.l,X		; 3F CE 80 FF
	.db $80, $7F		; 80 7F
	tda		; 7B
	.db $80, $3B		; 80 3B
	sta ($3D.b,X)		; 81 3D
	eor ($1E.b,X)		; 41 1E
.ACCU 16
	rep #$A8		; C2 A8
	adc ($1C.b,X)		; 61 1C
.INDEX 8
	sep #$57		; E2 57
	inx		; E8
	cmp [$F0.b]		; C7 F0
	eor $C1.b,S		; 43 C1
	.db $82, $41, $86		; 82 41 86
	ora $27.b		; 05 27
	lda $07.b		; A5 07
	eor [$91.b]		; 47 91
	adc ($10.b),Y		; 71 10
	ldy #$10.b		; A0 10
	jsr $C341.w		; 20 41 C3
	cpy #$C2.b		; C0 C2
	mvp $07,$C6		; 44 C6 07
	sbc $D1.b		; E5 D1
	adc [$72.b],Y		; 77 72
	sbc ($E8.b,S),Y		; F3 E8
	sed		; F8
	inx		; E8
	sed		; F8
	eor $7B.b		; 45 7B
	sty $3B.b		; 84 3B
	cpy #$3B.b		; C0 3B
	and ($1A.b,X)		; 21 1A
	eor [$C8.b],Y		; 57 C8
	sbc ($7C.b,S),Y		; F3 7C
	clv		; B8
	sbc [$38.b]		; E7 38
	sbc [$87.b]		; E7 87
	eor [$C1.b]		; 47 C1
	cop $60.b		; 02 60
	sbc $FE07.w,X		; FD 07 FE
	adc $1482FC.l		; 6F FC 82 14
	plx		; FA
	brk $F4.b		; 00 F4
	asl $7887.w		; 0E 87 78
	sbc $FEFD3F.l,X		; FF 3F FD FE
	sbc $FFFE.w,X		; FD FE FF
	inc $A30B.w,X		; FE 0B A3
	ora [$03.b]		; 07 03
	ora $81010B.l		; 0F 0B 01 81
	cmp $FE7C3F.l,X		; DF 3F 7C FE
	sbc $FFFF.w,X		; FD FF FF
	sbc $063F32.l,X		; FF 32 3F 06
	ora [$06.b]		; 07 06
	ora $FE3E.w		; 0D 3E FE
	and $00FFC1.l,X		; 3F C1 FF 00
	sbc $FF01.w,X		; FD 01 FF
	ora $C3.b,S		; 03 C3
	ora $03.b,S		; 03 03
	xce		; FB
	phd		; 0B
	sbc ($67.b),Y		; F1 67
	stx $E0.b		; 86 E0
	ora $0A06C3.l		; 0F C3 06 0A
	ora ($3E.b,X)		; 01 3E
	ora $4F3F26.l		; 0F 26 3F 4F
	and $58.b,X		; 35 58
	stz $7F.b,X		; 74 7F
	clc		; 18
	sbc ($17.b)		; F2 17
	sbc ($3D.b),Y		; F1 3D
	inc $D3EA.w,X		; FE EA D3
	cmp ($D6.b),Y		; D1 D6
	.db $F0, $D5		; F0 D5
	cld		; D8
	cmp $0F.b,S		; C3 0F
	xba		; EB
	sbc $CBFFE8.l,X		; FF E8 FF CB
	sbc [$1F.b],Y		; F7 1F
	inc $C13C.w,X		; FE 3C C1
	ora ($F7.b)		; 12 F7
	pla		; 68
	sta $4F38.w,Y		; 99 38 4F
	sbc $F2F1.w,X		; FD F1 F2
	sbc ($F3.b)		; F2 F3
	sbc ($EB.b,S),Y		; F3 EB
	xba		; EB
	cpx $CF.b		; E4 CF
	jmp.w [$ADD9]		; DC D9 AD
	ldx $FA.b,Y		; B6 FA
	bit $86.b,X		; 34 86
	sta $46.b,S		; 83 46
	adc $66.b,S		; 63 66
	lda $3C.b		; A5 3C
	adc [$8D.b]		; 67 8D
	tsx		; BA
	eor $65.b,X		; 55 65
	clc		; 18
	ldy #$38.b		; A0 38
	cpx #$FE.b		; E0 FE
	asl $3DFF.w,X		; 1E FF 3D
	lsr $A65A.w,X		; 5E 5A A6
	phd		; 0B
	cmp $D45B13.l		; CF 13 5B D4
	and $138F1F.l,X		; 3F 1F 8F 13
	cmp $DF.b		; C5 DF
	adc [$5D.b]		; 67 5D
	adc $FD.b,S		; 63 FD
	dec $89.b,X		; D6 89
	eor $DF.b,S		; 43 DF
	and [$DF.b],Y		; 37 DF
	tya		; 98
	lda $3CFF54.l,X		; BF 54 FF 3C
	asl $1EBC.w,X		; 1E BC 1E
	jmp ($517A.w,X)		; 7C 7A 51
	ror $AB.b		; 66 AB
	and $90.b		; 25 90
	sei		; 78
	and $039B5F.l,X		; 3F 5F 9B 03
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $007E00.l,X		; 7F 00 7E 00
	sbc $03FC01.l,X		; FF 01 FC 03
	jsr ($3F03.w,X)		; FC 03 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sta ($01.b,X)		; 81 01
	brk $00.b		; 00 00
	sta ($83.b,X)		; 81 83
	sta $83.b,S		; 83 83
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	sta ($80.b,X)		; 81 80
	sta ($02.b,X)		; 81 02
	sta $81.b,S		; 83 81
	sta $C3.b,S		; 83 C3
	cpy #$00.b		; C0 00
	sbc $80FF00.l,X		; FF 00 FF 80
	adc $817E00.l,X		; 7F 00 7E 81
	ror $7C83.w,X		; 7E 83 7C
	sta $FC.b,S		; 83 FC
	.db $42, $3D		; 42 3D
	eor $F05FB0.l		; 4F B0 5F F0
	ora $F00FF0.l		; 0F F0 0F F0
	php		; 08
	sbc [$4C.b],Y		; F7 4C
	sbc ($0E.b,S),Y		; F3 0E
	sbc ($0E.b),Y		; F1 0E
	sbc ($30.b),Y		; F1 30
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	.db $F0, $00		; F0 00
	.db $F0, $08		; F0 08
	inc $B003.w,X		; FE 03 B0
	ora ($F0.b,X)		; 01 F0
	ora ($F0.b,X)		; 01 F0
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	php		; 08
	sbc [$0C.b],Y		; F7 0C
	sbc ($0E.b,S),Y		; F3 0E
	sbc ($0E.b),Y		; F1 0E
	sbc ($30.b),Y		; F1 30
	adc $000F00.l,X		; 7F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	brk $00.b		; 00 00
	ora $000F00.l		; 0F 00 0F 00
	ora $5FB04F.l		; 0F 4F B0 5F
	.db $F0, $0F		; F0 0F
	.db $F0, $0F		; F0 0F
	.db $F0, $08		; F0 08
	sbc [$4C.b],Y		; F7 4C
	sbc ($0E.b,S),Y		; F3 0E
	sbc ($0E.b),Y		; F1 0E
	sbc ($30.b),Y		; F1 30
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	.db $F0, $00		; F0 00
	.db $F0, $08		; F0 08
	inc $B003.w,X		; FE 03 B0
	ora ($F0.b,X)		; 01 F0
	ora ($F0.b,X)		; 01 F0
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	php		; 08
	sbc [$0C.b],Y		; F7 0C
	sbc ($0E.b,S),Y		; F3 0E
	sbc ($0E.b),Y		; F1 0E
	sbc ($30.b),Y		; F1 30
	adc $000F00.l,X		; 7F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	brk $00.b		; 00 00
	ora $000F00.l		; 0F 00 0F 00
	ora $F30BF7.l		; 0F F7 0B F3
	tsb $3FE6.w		; 0C E6 3F
	sbc ($0F.b)		; F2 0F
	ldx #$DA.b		; A2 DA
	and $FE.b,S		; 23 FE
	and [$CD.b]		; 27 CD
	and ($C4.b)		; 32 C4
	asl $18.b,X		; 16 18
	ora ($1E.b),Y		; 11 1E
	and $3D.b,S		; 23 3D
	asl $1D.b		; 06 1D
	ora $BE.b,S		; 03 BE
	cpy #$3D.b		; C0 3D
	cmp $B93B10.l,X		; DF 10 3B B9
	ora $1C1E.w,Y		; 19 1E 1C
	trb $3F2B.w		; 1C 2B 3F
	bit $B93F.w,X		; 3C 3F B9
	adc $12FF1D.l,X		; 7F 1D FF 12
	inx		; E8
	phk		; 4B
	sty $1F.b		; 84 1F
	sbc $FB1D.w,Y		; F9 1D FB
	and #$1FC9.w		; 29 C9 1F
	cpy $1A3C.w		; CC 3C 1A
	ora $4AFA.w,X		; 1D FA 4A
	sta [$32.b]		; 87 32
	adc $DBFF7B.l,X		; 7F 7B FF DB
	adc $FD0FF7.l		; 6F F7 0F FD
	ora $C815DF.l		; 0F DF 15 C8
	and $CD1ED5.l,X		; 3F D5 1E CD
	and ($04.b,S),Y		; 33 04
	.db $80, $2C		; 80 2C
	.db $90, $F6		; 90 F6
	php		; 08
	sbc ($00.b)		; F2 00
	inc $2A.b,X		; F6 2A
	inc $F120.w,X		; FE 20 F1
	rol A		; 2A
	cmp ($18.b,S),Y		; D3 18
	tda		; 7B
	sbc $F97F03.l,X		; FF 03 7F F9
	phd		; 0B
	sbc ($0F.b),Y		; F1 0F
	xba		; EB
	tas		; 1B
	sbc ($1F.b),Y		; F1 1F
	tax		; AA
	and $041BCC.l		; 2F CC 1B 04
	tda		; 7B
	bit $F883.w		; 2C 83 F8
	sbc [$F2.b],Y		; F7 F2
	sbc $E7DA.w,X		; FD DA E7
	cmp $D2FBD1.l		; CF D1 FB D2
	sbc #$D7F6.w		; E9 F6 D7
	inx		; E8
	sta $E0B7E0.l,X		; 9F E0 B7 E0
	lda [$F8.b]		; A7 F8
	bit #$C4F8.w		; 89 F8 C4
	adc $F2C9.w,Y		; 79 C9 F2
	cmp $0032.w		; CD 32 00
	sec		; 38
	brk $78.b		; 00 78
	brk $58.b		; 00 58
	php		; 08
	pha		; 48
	tsb $8474.w		; 0C 74 84
	sec		; 38
	cpy $30.b		; C4 30
	cli		; 58
	tay		; A8
	.db $F0, $F8		; F0 F8
	.db $F0, $F8		; F0 F8
	sed		; F8
	sed		; F8
	sed		; F8
	.db $F0, $FA		; F0 FA
	inc $FE7A.w,X		; FE 7A FE
	sei		; 78
	pea $F828.w		; F4 28 F8
	sec		; 38
	sbc [$78.b]		; E7 78
	sbc [$50.b]		; E7 50
	sbc [$50.b]		; E7 50
	sbc [$72.b],Y		; F7 72
	sbc ($BE.b),Y		; F1 BE
	adc $3BF0.w,Y		; 79 F0 3B
	sei		; 78
	lda $E900F8.l		; AF F8 00 E9
	php		; 08
	cpx #$04.b		; E0 04
	sbc $780A.w		; ED 0A 78
	.db $80, $F7		; 80 F7
	php		; 08
	tda		; 7B
	sta [$36.b]		; 87 36
	dec $0F.b		; C6 0F
	ora $0E060E.l		; 0F 0E 06 0E
	asl $1B.b,X		; 16 1B
	ora $0E.b,S		; 03 0E
	ora $0F0C.w		; 0D 0C 0F
	ora ($00.b,X)		; 01 00
	ora $01.b		; 05 01
	php		; 08
	ora $051E19.l		; 0F 19 1E 05
	ora $1F.b,S		; 03 1F
	ora #$0C09.w		; 09 09 0C
	asl $0F.b		; 06 0F
	cop $05.b		; 02 05
	ora $04.b,S		; 03 04
	ora $E617FF.l		; 0F FF 17 E6
	asl $17E2.w,X		; 1E E2 17
	sbc ($0E.b,X)		; E1 0E
	jsr ($F50E.w,X)		; FC 0E F5
	ora $FA.b,S		; 03 FA
	asl $FB.b		; 06 FB
	ldy $7C72.w,X		; BC 72 7C
	sbc $9F90.w,X		; FD 90 9F
	.db $10, $0B		; 10 0B
	sbc $58A7F9.l		; EF F9 A7 58
	sta [$E8.b],Y		; 97 E8
	ora $8E85F8.l		; 0F F8 85 8E
	mvp $F0,$82		; 44 82 F0
	ldy #$16.b		; A0 16
	.db $F0, $EE		; F0 EE
	lsr $0F.b,X		; 56 0F
	sbc [$0F.b]		; E7 0F
	ora [$4F.b]		; 07 4F
	eor [$F5.b]		; 47 F5
	sta $3E.b,S		; 83 3E
	cmp [$2F.b]		; C7 2F
	.db $10, $FD		; 10 FD
	asl $A7.b,X		; 16 A7
	lda [$67.b],Y		; B7 67
	sbc $370FF7.l		; EF F7 0F 37
	cmp $78FCF2.l		; CF F2 FC 78
	and $CF1F.w,Y		; 39 1F CF
	tas		; 1B
	sbc $4FA7.w,Y		; F9 A7 4F
	adc $F77F97.l,X		; 7F 97 7F F7
	and [$7F.b],Y		; 37 7F
	ldx $7EC6.w,Y		; BE C6 7E
	.db $80, $70		; 80 70
	sty $06.b		; 84 06
	nop		; EA
	sbc [$78.b],Y		; F7 78
	inc $FE01.w,X		; FE 01 FE
	brk $BC.b		; 00 BC
	ror $87.b		; 66 87
	eor ($0B.b,X)		; 41 0B
	phd		; 0B
	ora $D31D.w,X		; 1D 1D D3
	cmp $DF.b,X		; D5 DF
	stx $FF.b		; 86 FF
	sbc $BBFFFF.l,X		; FF FF FF BB
	txs		; 9A
	adc ($C3.b)		; 72 C3
	ror $928B.w		; 6E 8B 92
	ora $A6FF2E.l,X		; 1F 2E FF A6
	dec $FEFF.w		; CE FF FE
	inc $BFFF.w,X		; FE FF BF
	sbc $3DF9.w,X		; FD F9 3D
	adc [$FF.b],Y		; 77 FF
	sbc ($FD.b,X)		; E1 FD
	ora $F9.b		; 05 F9
	cmp $FEFFB6.l		; CF B6 FF FE
	sbc $9CBEFF.l,X		; FF FF BE 9C
	adc $7E80.w,X		; 7D 80 7E
	ora ($7D.b,X)		; 01 7D
	ora ($7D.b,X)		; 01 7D
	ora $2F.b,S		; 03 2F
	.db $90, $1A		; 90 1A
	sbc $F0.b		; E5 F0
	tsb $AF50.w		; 0C 50 AF
	cmp ($81.b,X)		; C1 81
	cmp ($C0.b,X)		; C1 C0
	cmp $C2.b,S		; C3 C2
	cmp ($C2.b,X)		; C1 C2
	sta ($C0.b,X)		; 81 C0
	ora ($83.b,X)		; 01 83
	sta ($81.b,X)		; 81 81
	.db $80, $80		; 80 80
	cmp ($40.b,X)		; C1 40
	eor $C2.b,S		; 43 C2
	eor ($C2.b,X)		; 41 C2
	eor ($C2.b,X)		; 41 C2
	cmp $42.b,S		; C3 42
	eor ($C3.b,X)		; 41 C3
	.db $82, $83, $00		; 82 83 00
	.db $80, $82		; 80 82
	and $FDC0.w,X		; 3D C0 FD
	cpy #$FD.b		; C0 FD
	cpy #$FD.b		; C0 FD
	.db $80, $3D		; 80 3D
	eor ($3C.b,X)		; 41 3C
	.db $82, $FC, $80		; 82 FC 80
	adc $F30BF7.l,X		; 7F F7 0B F3
	tsb $3FE6.w		; 0C E6 3F
	sbc ($0F.b)		; F2 0F
	ldx #$DA.b		; A2 DA
	and $FE.b,S		; 23 FE
	and [$CD.b]		; 27 CD
	and ($C4.b)		; 32 C4
	asl $18.b,X		; 16 18
	ora ($1E.b),Y		; 11 1E
	and $3D.b,S		; 23 3D
	asl $1D.b		; 06 1D
	ora $BE.b,S		; 03 BE
	cpy #$3D.b		; C0 3D
	cmp $B93B10.l,X		; DF 10 3B B9
	ora $1C1E.w,Y		; 19 1E 1C
	trb $3F2B.w		; 1C 2B 3F
	bit $B93F.w,X		; 3C 3F B9
	adc $12FF1D.l,X		; 7F 1D FF 12
	inx		; E8
	phk		; 4B
	sty $1F.b		; 84 1F
	sbc $FB1D.w,Y		; F9 1D FB
	and #$1FC9.w		; 29 C9 1F
	cpy $1A3C.w		; CC 3C 1A
	ora $4AFA.w,X		; 1D FA 4A
	sta [$32.b]		; 87 32
	adc $DBFF7B.l,X		; 7F 7B FF DB
	adc $FD0FF7.l		; 6F F7 0F FD
	ora $C815DF.l		; 0F DF 15 C8
	and $CD1ED5.l,X		; 3F D5 1E CD
	and ($04.b,S),Y		; 33 04
	.db $80, $2C		; 80 2C
	.db $90, $F6		; 90 F6
	php		; 08
	sbc ($00.b)		; F2 00
	inc $2A.b,X		; F6 2A
	inc $F120.w,X		; FE 20 F1
	rol A		; 2A
	cmp ($18.b,S),Y		; D3 18
	tda		; 7B
	sbc $F97F03.l,X		; FF 03 7F F9
	phd		; 0B
	sbc ($0F.b),Y		; F1 0F
	xba		; EB
	tas		; 1B
	sbc ($1F.b),Y		; F1 1F
	tax		; AA
	and $041BCC.l		; 2F CC 1B 04
	tda		; 7B
	bit $F883.w		; 2C 83 F8
	sbc [$F2.b],Y		; F7 F2
	sbc $E7DA.w,X		; FD DA E7
	cmp $D2FBD1.l		; CF D1 FB D2
	sbc #$D7F6.w		; E9 F6 D7
	inx		; E8
	sta $E0B7E0.l,X		; 9F E0 B7 E0
	lda [$F8.b]		; A7 F8
	bit #$C4F8.w		; 89 F8 C4
	adc $F2C9.w,Y		; 79 C9 F2
	cmp $0032.w		; CD 32 00
	sec		; 38
	brk $78.b		; 00 78
	brk $58.b		; 00 58
	php		; 08
	pha		; 48
	tsb $8474.w		; 0C 74 84
	sec		; 38
	cpy $30.b		; C4 30
	cli		; 58
	tay		; A8
	.db $F0, $F8		; F0 F8
	.db $F0, $F8		; F0 F8
	sed		; F8
	sed		; F8
	sed		; F8
	.db $F0, $FA		; F0 FA
	inc $FE7A.w,X		; FE 7A FE
	sei		; 78
	pea $F828.w		; F4 28 F8
	sec		; 38
	sbc [$78.b]		; E7 78
	sbc [$50.b]		; E7 50
	sbc [$50.b]		; E7 50
	sbc [$72.b],Y		; F7 72
	sbc ($BE.b),Y		; F1 BE
	adc $3BF0.w,Y		; 79 F0 3B
	sei		; 78
	lda $E900F8.l		; AF F8 00 E9
	php		; 08
	cpx #$04.b		; E0 04
	sbc $780A.w		; ED 0A 78
	.db $80, $F7		; 80 F7
	php		; 08
	tda		; 7B
	sta [$36.b]		; 87 36
	dec $0F.b		; C6 0F
	ora $0E060E.l		; 0F 0E 06 0E
	asl $1B.b,X		; 16 1B
	ora $0E.b,S		; 03 0E
	ora $0F0C.w		; 0D 0C 0F
	ora ($00.b,X)		; 01 00
	ora $01.b		; 05 01
	php		; 08
	ora $051E19.l		; 0F 19 1E 05
	ora $1F.b,S		; 03 1F
	ora #$0C09.w		; 09 09 0C
	asl $0F.b		; 06 0F
	cop $05.b		; 02 05
	ora $04.b,S		; 03 04
	ora $E617FF.l		; 0F FF 17 E6
	asl $17E2.w,X		; 1E E2 17
	sbc ($0E.b,X)		; E1 0E
	jsr ($F50E.w,X)		; FC 0E F5
	ora $FA.b,S		; 03 FA
	asl $FB.b		; 06 FB
	ldy $7C72.w,X		; BC 72 7C
	sbc $9F90.w,X		; FD 90 9F
	.db $10, $0B		; 10 0B
	sbc $58A7F9.l		; EF F9 A7 58
	sta [$E8.b],Y		; 97 E8
	ora $8E85F8.l		; 0F F8 85 8E
	mvp $F0,$82		; 44 82 F0
	ldy #$16.b		; A0 16
	.db $F0, $EE		; F0 EE
	lsr $0F.b,X		; 56 0F
	sbc [$0F.b]		; E7 0F
	ora [$4F.b]		; 07 4F
	eor [$F5.b]		; 47 F5
	sta $3E.b,S		; 83 3E
	cmp [$2F.b]		; C7 2F
	.db $10, $FD		; 10 FD
	asl $A7.b,X		; 16 A7
	lda [$67.b],Y		; B7 67
	sbc $370FF7.l		; EF F7 0F 37
	cmp $78FCF2.l		; CF F2 FC 78
	and $CF1F.w,Y		; 39 1F CF
	tas		; 1B
	sbc $4FA7.w,Y		; F9 A7 4F
	adc $F77F97.l,X		; 7F 97 7F F7
	and [$7F.b],Y		; 37 7F
	ldx $7EC6.w,Y		; BE C6 7E
	.db $80, $70		; 80 70
	sty $06.b		; 84 06
	nop		; EA
	sbc [$78.b],Y		; F7 78
	inc $FE01.w,X		; FE 01 FE
	brk $BC.b		; 00 BC
	ror $87.b		; 66 87
	eor ($0B.b,X)		; 41 0B
	phd		; 0B
	ora $D31D.w,X		; 1D 1D D3
	cmp $DF.b,X		; D5 DF
	stx $FF.b		; 86 FF
	sbc $BBFFFF.l,X		; FF FF FF BB
	txs		; 9A
	adc ($C3.b)		; 72 C3
	ror $928B.w		; 6E 8B 92
	ora $A6FF2E.l,X		; 1F 2E FF A6
	dec $FEFF.w		; CE FF FE
	inc $BFFF.w,X		; FE FF BF
	sbc $3DF9.w,X		; FD F9 3D
	adc [$FF.b],Y		; 77 FF
	sbc ($FD.b,X)		; E1 FD
	ora $F9.b		; 05 F9
	cmp $FEFFB6.l		; CF B6 FF FE
	sbc $9CBEFF.l,X		; FF FF BE 9C
	adc $7E80.w,X		; 7D 80 7E
	ora ($7D.b,X)		; 01 7D
	ora ($7D.b,X)		; 01 7D
	ora $2F.b,S		; 03 2F
	.db $90, $1A		; 90 1A
	sbc $F0.b		; E5 F0
	tsb $AF50.w		; 0C 50 AF
	cmp ($81.b,X)		; C1 81
	cmp ($C0.b,X)		; C1 C0
	cmp $C2.b,S		; C3 C2
	cmp ($C2.b,X)		; C1 C2
	sta ($C0.b,X)		; 81 C0
	ora ($83.b,X)		; 01 83
	sta ($81.b,X)		; 81 81
	.db $80, $80		; 80 80
	cmp ($40.b,X)		; C1 40
	eor $C2.b,S		; 43 C2
	eor ($C2.b,X)		; 41 C2
	eor ($C2.b,X)		; 41 C2
	cmp $42.b,S		; C3 42
	eor ($C3.b,X)		; 41 C3
	.db $82, $83, $00		; 82 83 00
	.db $80, $82		; 80 82
	and $FDC0.w,X		; 3D C0 FD
	cpy #$FD.b		; C0 FD
	cpy #$FD.b		; C0 FD
	.db $80, $3D		; 80 3D
	eor ($3C.b,X)		; 41 3C
	.db $82, $FC, $80		; 82 FC 80
	adc $0CF01F.l,X		; 7F 1F F0 0C
	sbc ($09.b,S),Y		; F3 09
	inc $10.b,X		; F6 10
	and $EF3F02.l,X		; 3F 02 3F EF
	inc $EFE1.w		; EE E1 EF
	plx		; FA
	sbc ($00.b,S),Y		; F3 00
	cpx #$03.b		; E0 03
	.db $F0, $06		; F0 06
	sbc ($CF.b),Y		; F1 CF
	ldy #$FD.b		; A0 FD
.INDEX 16
	rep #$11		; C2 11
	asl $1412.w,X		; 1E 12 14
	asl A		; 0A
	ora $F00F.w		; 0D 0F F0
	ora $09F3.w		; 0D F3 09
	sbc [$E0.b],Y		; F7 E0
	and $100FC0.l,X		; 3F C0 0F 10
	sbc $01EF10.l		; EF 10 EF 01
	sbc $010F00.l,X		; FF 00 0F 01
	asl $0E01.w		; 0E 01 0E
	ldy #$F0CF.w		; A0 CF F0
	sbc $F2FEF1.l,X		; FF F1 FE F2
	.db $F0, $F3		; F0 F3
	jsr ($F01F.w,X)		; FC 1F F0
	tsb $09F3.w		; 0C F3 09
	inc $10.b,X		; F6 10
	and $EF3F02.l,X		; 3F 02 3F EF
	inc $EFE1.w		; EE E1 EF
	plx		; FA
	sbc ($00.b,S),Y		; F3 00
	cpx #$F003.w		; E0 03 F0
	asl $F1.b		; 06 F1
	cmp $C2FDA0.l		; CF A0 FD C2
	ora ($1E.b),Y		; 11 1E
	ora ($14.b)		; 12 14
	asl A		; 0A
	ora $F00F.w		; 0D 0F F0
	ora $09F3.w		; 0D F3 09
	sbc [$E0.b],Y		; F7 E0
	and $100FC0.l,X		; 3F C0 0F 10
	sbc $01EF10.l		; EF 10 EF 01
	sbc $010F00.l,X		; FF 00 0F 01
	asl $0E01.w		; 0E 01 0E
	ldy #$F0CF.w		; A0 CF F0
	sbc $F2FEF1.l,X		; FF F1 FE F2
	.db $F0, $F3		; F0 F3
	jsr ($C0BF.w,X)		; FC BF C0
	asl $EA.b,X		; 16 EA
	and ($8B.b),Y		; 31 8B
	stz $0871.w		; 9C 71 08
	and ($B9.b,X)		; 21 B9
	adc [$78.b],Y		; 77 78
	sbc $7BFB07.l,X		; FF 07 FB 7B
	jsr ($7C7C.w,X)		; FC 7C 7C
	sec		; 38
	ror $AF9C.w,X		; 7E 9C AF
	dey		; 88
	sed		; F8
	.db $30, $88		; 30 88
	ora ($01.b,X)		; 01 01
	cop $00.b		; 02 00
	cmp [$C4.b]		; C7 C4
	sbc $7E8F6C.l		; EF 6C 8F 7E
	inc $BF.b		; E6 BF
	rol $59F9.w		; 2E F9 59
	ldy $01FE.w,X		; BC FE 01
	sbc $3F01.w,X		; FD 01 3F
	xce		; FB
	ora [$FF.b],Y		; 17 FF
	eor [$B9.b]		; 47 B9
	ldx $CC.b,Y		; B6 CC
	pla		; 68
	asl $C76B.w,X		; 1E 6B C7
	ldx $FDFF.w,Y		; BE FF FD
	sbc $F367F1.l,X		; FF F1 67 F3
	.db $F0, $D8		; F0 D8
	lda ($31.b),Y		; B1 31
	ldy $E16F.w,X		; BC 6F E1
	sbc ($EE.b),Y		; F1 EE
	plp		; 28
	lda $6E19.w		; AD 19 6E
	dey		; 88
	trb $06.b		; 14 06
	phd		; 0B
	bit $45.b		; 24 45
	lsr $4A.b		; 46 4A
	trb $15.b		; 14 15
	ora $1FD11F.l		; 0F 1F D1 1F
	and ($5F.b)		; 32 5F
	sbc $E61E.w,X		; FD 1E E6
	ora $6B3F96.l,X		; 1F 96 3F 6B
	stz $0BFE.w		; 9C FE 0B
	sbc $FF6D1F.l,X		; FF 1F 6D FF
	txy		; 9B
	sbc $E2E5F4.l,X		; FF F4 E5 E2
	sbc ($B4.b)		; F2 B4
	dec $2C.b,X		; D6 2C
	adc ($E0.b),Y		; 71 E0
	sbc ($FB.b),Y		; F1 FB
	sbc $F12BA5.l		; EF A5 2B F1
	inc A		; 1A
	sta $7C.b,S		; 83 7C
	trb $30E3.w		; 1C E3 30
	sbc $E0EFC0.l		; EF C0 EF E0
	cmp $941FC0.l,X		; DF C0 1F 94
	stp		; DB
	cpx #$08FC.w		; E0 FC 08
	.db $F0, $08		; F0 08
	sed		; F8
	.db $10, $F0		; 10 F0
	brk $F0.b		; 00 F0
	jsr $80C0.w		; 20 C0 80
	rts		; 60

	jsr $0258.w		; 20 58 02
	tsb $FC74.w		; 0C 74 FC
	sed		; F8
	sed		; F8
	.db $D0, $F0		; D0 F0
	.db $30, $F0		; 30 F0
	.db $10, $F0		; 10 F0
	rts		; 60

	cpx #$F860.w		; E0 60 F8
	xba		; EB
	ora $F87378.l		; 0F 78 73 F8
	sbc $20FFD0.l		; EF D0 FF 20
	sbc $C0CF30.l		; EF 30 CF C0
	ora $F98748.l,X		; 1F 48 87 F9
	.db $F0, $7F		; F0 7F
	sta [$1F.b]		; 87 1F
	cpx $1C.b		; E4 1C
	sep #$03		; E2 03
	sbc $E910.w,X		; FD 10 E9
	ora $F011F6.l		; 0F F6 11 F0
	and $0421.w,Y		; 39 21 04
	brk $00.b		; 00 00
	asl $03.b		; 06 03
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora $892F29.l		; 0F 29 2F 89
	dec $07.b,X		; D6 07
	brk $07.b		; 00 07
	asl $01.b		; 06 01
	ora $01.b,S		; 03 01
	ora ($06.b,X)		; 01 06
	ora [$0E.b]		; 07 0E
	ora $003809.l		; 0F 09 38 00
	cpx #$FB03.w		; E0 03 FB
	ora $F9.b,S		; 03 F9
	cop $FC.b		; 02 FC
	ora ($FE.b,X)		; 01 FE
	asl $F8.b		; 06 F8
	php		; 08
	sed		; F8
	rol $CFC7.w		; 2E C7 CF
	ora $45740F.l,X		; 1F 0F 74 45
	clv		; B8
	ldy #$987E.w		; A0 7E 98
	ldx $36.b,Y		; B6 36
	cmp $67.b,S		; C3 67
	.db $80, $06		; 80 06
	sty $A7.b		; 84 A7
	cmp $85.b,X		; D5 85
	cop $02.b		; 02 02
	eor ($21.b,X)		; 41 21
	brk $53.b		; 00 53
	.db $42, $F2		; 42 F2
	cmp ($FC.b,X)		; C1 FC
	stz $7B7A.w,X		; 9E 7A 7B
	lsr $B2FB.w,X		; 5E FB B2
	lsr $BF.b		; 46 BF
	eor $8E.b,S		; 43 8E
	sbc ($BC.b),Y		; F1 BC
	xce		; FB
	sec		; 38
	sbc $FF67.w,X		; FD 67 FF
	ora [$FD.b]		; 07 FD
	dec $AD.b,X		; D6 AD
	dec A		; 3A
	sbc $FEBD.w,X		; FD BD FE
	and $E6E51E.l		; 2F 1E E5 E6
	.db $F0, $F2		; F0 F2
	jsr ($7EFC.w,X)		; FC FC 7E
	jmp ($085B.w,X)		; 7C 5B 08
	xce		; FB
	lda $3412.w		; AD 12 34
	jmp ($4477.w)		; 6C 77 44
	and ($18.b,S),Y		; 33 18
	eor [$B0.b]		; 47 B0
	sbc [$44.b]		; E7 44
	sta $86.b,S		; 83 86
	cmp ($AC.b,X)		; C1 AC
	mvn $26,$FC		; 54 FC 26
	stz $50.b		; 64 50
	jmp $A454.w		; 4C 54 A4
	ldy $1818.w,X		; BC 18 18
	.db $70, $D4		; 70 D4
	jmp ($9E7C.w,X)		; 7C 7C 9E
	sbc $F325.w,Y		; F9 25 F3
	dec $E4D6.w		; CE D6 E4
	pei ($A0.b)		; D4 A0
	jmp $4838B0.l		; 5C B0 38 48
	jmp.w [$BCC4]		; DC C4 BC
	ldx $00.b,Y		; B6 00
	sbc $4820.w,X		; FD 20 48
	sbc ($7C.b,X)		; E1 7C
	sbc [$04.b],Y		; F7 04
	adc $F0.b,S		; 63 F0
	sbc [$F4.b],Y		; F7 F4
	cmp ($FC.b,S),Y		; D3 FC
	lda $80FF00.l,X		; BF 00 FF 80
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
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
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $BFFF00.l,X		; FF 00 FF BF
	cpy #$EA16.w		; C0 16 EA
	and ($8B.b),Y		; 31 8B
	stz $0871.w		; 9C 71 08
	and ($B9.b,X)		; 21 B9
	adc [$78.b],Y		; 77 78
	sbc $7BFB07.l,X		; FF 07 FB 7B
	jsr ($7C7C.w,X)		; FC 7C 7C
	sec		; 38
	ror $AF9C.w,X		; 7E 9C AF
	dey		; 88
	sed		; F8
	.db $30, $88		; 30 88
	ora ($01.b,X)		; 01 01
	cop $00.b		; 02 00
	cmp [$C4.b]		; C7 C4
	sbc $7E8F6C.l		; EF 6C 8F 7E
	inc $BF.b		; E6 BF
	rol $59F9.w		; 2E F9 59
	ldy $01FE.w,X		; BC FE 01
	sbc $3F01.w,X		; FD 01 3F
	xce		; FB
	ora [$FF.b],Y		; 17 FF
	eor [$B9.b]		; 47 B9
	ldx $CC.b,Y		; B6 CC
	pla		; 68
	asl $C76B.w,X		; 1E 6B C7
	ldx $FDFF.w,Y		; BE FF FD
	sbc $F367F1.l,X		; FF F1 67 F3
	.db $F0, $D8		; F0 D8
	lda ($31.b),Y		; B1 31
	ldy $E16F.w,X		; BC 6F E1
	sbc ($EE.b),Y		; F1 EE
	plp		; 28
	lda $6E19.w		; AD 19 6E
	dey		; 88
	trb $06.b		; 14 06
	phd		; 0B
	bit $45.b		; 24 45
	lsr $4A.b		; 46 4A
	trb $15.b		; 14 15
	ora $1FD11F.l		; 0F 1F D1 1F
	and ($5F.b)		; 32 5F
	sbc $E61E.w,X		; FD 1E E6
	ora $6B3F96.l,X		; 1F 96 3F 6B
	stz $0BFE.w		; 9C FE 0B
	sbc $FF6D1F.l,X		; FF 1F 6D FF
	txy		; 9B
	sbc $E2E5F4.l,X		; FF F4 E5 E2
	sbc ($B4.b)		; F2 B4
	dec $2C.b,X		; D6 2C
	adc ($E0.b),Y		; 71 E0
	sbc ($FB.b),Y		; F1 FB
	sbc $F12BA5.l		; EF A5 2B F1
	inc A		; 1A
	sta $7C.b,S		; 83 7C
	trb $30E3.w		; 1C E3 30
	sbc $E0EFC0.l		; EF C0 EF E0
	cmp $941FC0.l,X		; DF C0 1F 94
	stp		; DB
	cpx #$08FC.w		; E0 FC 08
	.db $F0, $08		; F0 08
	sed		; F8
	.db $10, $F0		; 10 F0
	brk $F0.b		; 00 F0
	jsr $80C0.w		; 20 C0 80
	rts		; 60

	jsr $0258.w		; 20 58 02
	tsb $FC74.w		; 0C 74 FC
	sed		; F8
	sed		; F8
	.db $D0, $F0		; D0 F0
	.db $30, $F0		; 30 F0
	.db $10, $F0		; 10 F0
	rts		; 60

	cpx #$F860.w		; E0 60 F8
	xba		; EB
	ora $F87378.l		; 0F 78 73 F8
	sbc $20FFD0.l		; EF D0 FF 20
	sbc $C0CF30.l		; EF 30 CF C0
	ora $F98748.l,X		; 1F 48 87 F9
	.db $F0, $7F		; F0 7F
	sta [$1F.b]		; 87 1F
	cpx $1C.b		; E4 1C
	sep #$03		; E2 03
	sbc $E910.w,X		; FD 10 E9
	ora $F011F6.l		; 0F F6 11 F0
	and $0421.w,Y		; 39 21 04
	brk $00.b		; 00 00
	asl $03.b		; 06 03
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora $892F29.l		; 0F 29 2F 89
	dec $07.b,X		; D6 07
	brk $07.b		; 00 07
	asl $01.b		; 06 01
	ora $01.b,S		; 03 01
	ora ($06.b,X)		; 01 06
	ora [$0E.b]		; 07 0E
	ora $003809.l		; 0F 09 38 00
	cpx #$FB03.w		; E0 03 FB
	ora $F9.b,S		; 03 F9
	cop $FC.b		; 02 FC
	ora ($FE.b,X)		; 01 FE
	asl $F8.b		; 06 F8
	php		; 08
	sed		; F8
	rol $CFC7.w		; 2E C7 CF
	ora $45740F.l,X		; 1F 0F 74 45
	clv		; B8
	ldy #$987E.w		; A0 7E 98
	ldx $36.b,Y		; B6 36
	cmp $67.b,S		; C3 67
	.db $80, $06		; 80 06
	sty $A7.b		; 84 A7
	cmp $85.b,X		; D5 85
	cop $02.b		; 02 02
	eor ($21.b,X)		; 41 21
	brk $53.b		; 00 53
	.db $42, $F2		; 42 F2
	cmp ($FC.b,X)		; C1 FC
	stz $7B7A.w,X		; 9E 7A 7B
	lsr $B2FB.w,X		; 5E FB B2
	lsr $BF.b		; 46 BF
	eor $8E.b,S		; 43 8E
	sbc ($BC.b),Y		; F1 BC
	xce		; FB
	sec		; 38
	sbc $FF67.w,X		; FD 67 FF
	ora [$FD.b]		; 07 FD
	dec $AD.b,X		; D6 AD
	dec A		; 3A
	sbc $FEBD.w,X		; FD BD FE
	and $E6E51E.l		; 2F 1E E5 E6
	.db $F0, $F2		; F0 F2
	jsr ($7EFC.w,X)		; FC FC 7E
	jmp ($085B.w,X)		; 7C 5B 08
	xce		; FB
	lda $3412.w		; AD 12 34
	jmp ($4477.w)		; 6C 77 44
	and ($18.b,S),Y		; 33 18
	eor [$B0.b]		; 47 B0
	sbc [$44.b]		; E7 44
	sta $86.b,S		; 83 86
	cmp ($AC.b,X)		; C1 AC
	mvn $26,$FC		; 54 FC 26
	stz $50.b		; 64 50
	jmp $A454.w		; 4C 54 A4
	ldy $1818.w,X		; BC 18 18
	.db $70, $D4		; 70 D4
	jmp ($9E7C.w,X)		; 7C 7C 9E
	sbc $F325.w,Y		; F9 25 F3
	dec $E4D6.w		; CE D6 E4
	pei ($A0.b)		; D4 A0
	jmp $4838B0.l		; 5C B0 38 48
	jmp.w [$BCC4]		; DC C4 BC
	ldx $00.b,Y		; B6 00
	sbc $4820.w,X		; FD 20 48
	sbc ($7C.b,X)		; E1 7C
	sbc [$04.b],Y		; F7 04
	adc $F0.b,S		; 63 F0
	sbc [$F4.b],Y		; F7 F4
	cmp ($FC.b,S),Y		; D3 FC
	lda $80FF00.l,X		; BF 00 FF 80
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
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
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	.db $FF		; Opcode FF overrunning bank boundry at 00FFFD. Skipping.
	.db $00		; Opcode 00 overrunning bank boundry at 00FFFE. Skipping.
	.db $FF		; Opcode FF overrunning bank boundry at 00FFFF. Skipping.
.ENDS
