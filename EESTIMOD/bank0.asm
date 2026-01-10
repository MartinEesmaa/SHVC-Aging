.BANK 0 SLOT 0
.ORG $0000

.SECTION "Bank0" FORCE

	clc		; Clear carry
	xce		; Exchange carry bit to set emulation or native mode
.ACCU 16
	rep #$20
.INDEX 16
	rep #$10
	ldx #$01FF.w
	txs
.ACCU 16
	rep #$20
	lda #$8000.w
	sta $0000.w
	ldx #$0003.w
	stx $0002.w
	jsr $C349.w
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
.ACCU 16
	rep #$20
.INDEX 16
	rep #$10
	ldx #$0000.w
	lda #$AA55.w
	sta $0000.w,X
	inx
	inx
	cpx #$2000.w
	beq  18.b
	lda #$555A.w
	sta $0000.w,X
	inx
	inx
	lda #$5AAA.w
	sta $0000.w,X
	inx
	inx
	bra -31.b
	ldx #$0000.w
	lda $0000.w,X
	cmp #$AA55.w
	bne  29.b
	inx
	inx
	cpx #$2000.w
	beq  25.b
	lda $0000.w,X
	cmp #$555A.w
	bne  14.b
	inx
	inx
	lda $0000.w,X
	cmp #$5AAA.w
	bne   4.b
	inx
	inx
	bra -37.b
	jmp $81BA.w
	ldx #$0000.w
	lda #$5AAA.w
	sta $0000.w,X
	inx
	inx
	cpx #$2000.w
	beq  18.b
	lda #$AA55.w
	sta $0000.w,X
	inx
	inx
	lda #$555A.w
	sta $0000.w,X
	inx
	inx
	bra -31.b
	ldx #$0000.w
	lda $0000.w,X
	cmp #$5AAA.w
	bne  29.b
	inx
	inx
	cpx #$2000.w
	beq  25.b
	lda $0000.w,X
	cmp #$AA55.w
	bne  14.b
	inx
	inx
	lda $0000.w,X
	cmp #$555A.w
	bne   4.b
	inx
	inx
	bra -37.b
	jmp $81BA.w
	ldx #$0000.w
	lda #$555A.w
	sta $0000.w,X
	inx
	inx
	cpx #$2000.w
	beq  18.b
	lda #$5AAA.w
	sta $0000.w,X
	inx
	inx
	lda #$AA55.w
	sta $0000.w,X
	inx
	inx
	bra -31.b
	ldx #$0000.w
	lda $0000.w,X
	cmp #$555A.w
	bne  29.b
	inx
	inx
	cpx #$2000.w
	beq  25.b
	lda $0000.w,X
	cmp #$5AAA.w
	bne  14.b
	inx
	inx
	lda $0000.w,X
	cmp #$AA55.w
	bne   4.b
	inx
	inx
	bra -37.b
	jmp $81BA.w
.ACCU 8
	sep #$20
.INDEX 16
	rep #$10
	stz WMADDL.w		; WRAM Address Low Byte
	stz WMADDM.w		; WRAM Address Middle Byte
	stz WMADDH.w		; WRAM Address High Byte
	ldx #$0000.w
	lda #$55.b
	sta WMDATA.w		; WRAM Data Read/Write
	lda #$AA.b
	sta WMDATA.w		; WRAM Data Read/Write
	inx
	inx
	bne -14.b
	stz WMADDL.w		; WRAM Address Low Byte
	stz WMADDM.w		; WRAM Address Middle Byte
	lda #$01.b
	sta WMADDH.w		; WRAM Address High Byte
	ldx #$0000.w
	lda #$AA.b
	sta WMDATA.w		; WRAM Data Read/Write
	lda #$55.b
	sta WMDATA.w		; WRAM Data Read/Write
	inx
	inx
	bne -14.b
	stz WMADDL.w		; WRAM Address Low Byte
	stz WMADDM.w		; WRAM Address Middle Byte
	stz WMADDH.w		; WRAM Address High Byte
	ldx #$0000.w
	lda WMDATA.w		; WRAM Data Read/Write
	cmp #$55.b
	bne  70.b
	lda WMDATA.w		; WRAM Data Read/Write
	cmp #$AA.b
	bne  63.b
	inx
	inx
	bne -18.b
	stz WMADDL.w		; WRAM Address Low Byte
	stz WMADDM.w		; WRAM Address Middle Byte
	lda #$01.b
	sta WMADDH.w		; WRAM Address High Byte
	ldx #$0000.w
	lda WMDATA.w		; WRAM Data Read/Write
	cmp #$AA.b
	bne  38.b
	lda WMDATA.w		; WRAM Data Read/Write
	cmp #$55.b
	bne  31.b
	inx
	inx
	bne -18.b
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	lda #$0000.w
	ldx #$00.b
	sta $0000.w,X
	inx
	inx
	bne  -7.b
	ldx #$FF.b
	stx $0060.w
	stx $0064.w
	jmp $81CF.w
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	lda #$0000.w
	ldx #$00.b
	sta $0000.w,X
	inx
	inx
	bne  -7.b
	ldx #$FF.b
	stx $0060.w
	ldx #$00.b
	sta $0064.w
	jmp $81CF.w
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	lda #$0000.w
	ldx #$00.b
	sta $0000.w,X
	inx
	inx
	bne  -7.b
	ldx #$00.b
	stx $0060.w
.ACCU 8
.INDEX 8
	sep #$30
	lda #$8F.b
	sta INIDSP.w		; Screen Display
	lda #$03.b
	sta OBJSEL.w		; Object Size and Chr Address
	stz OAMADDL.w		; OAM Address Low Byte
	stz OAMADDH.w		; OAM Address High Byte
	stz BGMODE.w		; BG Mode and Character Size
	stz MOSAIC.w		; Screen Pixelation
	stz BG1SC.w		; BG1 Tilemap Address and Size
	stz BG2SC.w		; BG2 Tilemap Address and Size
	stz BG3SC.w		; BG3 Tilemap Address and Size
	stz BG4SC.w		; BG4 Tilemap Address and Size
	stz BG12NBA.w		; BG1&2 Tilemap Character Address
	stz BG34NBA.w		; BG3&4 Tilemap Character Address
	stz BG1HOFS.w		; BG1 Horizontal Scroll / Mode 7 BG Horizontal Scroll
	stz BG1HOFS.w		; BG1 Horizontal Scroll / Mode 7 BG Horizontal Scroll
	stz BG1VOFS.w		; BG1 Vertical Scroll / Mode 7 BG Vertical Scroll
	stz BG1VOFS.w		; BG1 Vertical Scroll / Mode 7 BG Vertical Scroll
	stz BG2HOFS.w		; BG2 Horizontal Scroll
	stz BG2HOFS.w		; BG2 Horizontal Scroll
	stz BG2VOFS.w		; BG2 Vertical Scroll
	stz BG2VOFS.w		; BG2 Vertical Scroll
	stz BG3HOFS.w		; BG3 Horizontal Scroll
	stz BG3HOFS.w		; BG3 Horizontal Scroll
	stz BG3VOFS.w		; BG3 Vertical Scroll
	stz BG3VOFS.w		; BG3 Vertical Scroll
	stz BG4HOFS.w		; BG4 Horizontal Scroll
	stz BG4HOFS.w		; BG4 Horizontal Scroll
	stz BG4VOFS.w		; BG4 Vertical Scroll
	stz BG4VOFS.w		; BG4 Vertical Scroll
	lda #$80.b
	sta VMAIN.w		; Video Port Control
	stz VMADDL.w		; VRAM Address Low Byte
	stz VMADDH.w		; VRAM Address High Byte
	stz M7SEL.w		; Mode 7 Settings
	lda #$01.b
	stz M7A.w		; Mode 7 Matrix A
	sta M7A.w		; Mode 7 Matrix A
	stz M7B.w		; Mode 7 Matrix B
	stz M7B.w		; Mode 7 Matrix B
	stz M7C.w		; Mode 7 Matrix C
	stz M7C.w		; Mode 7 Matrix C
	stz M7D.w		; Mode 7 Matrix D
	sta M7D.w		; Mode 7 Matrix D
	stz M7X.w		; Mode 7 Center X
	stz M7X.w		; Mode 7 Center X
	stz M7Y.w		; Mode 7 Center Y
	stz M7Y.w		; Mode 7 Center Y
	stz CGADD.w		; CGRAM Address
	stz W12SEL.w		; Window Mask Settings for BG1 and BG2
	stz W34SEL.w		; Window Mask Settings for BG3 and BG4
	stz WOBJSEL.w		; Window Mask Settings for Objects and Color Window
	stz W1L.w		; Window 1 Left Position
	stz W1R.w		; Window 1 Right Position
	stz W2L.w		; Window 2 Left Position
	stz W2R.w		; Window 2 Right Position
	stz WBGLOG.w		; Window Mask Logic for Backgrounds
	stz WOBJLOG.w		; Window Mask Logic for Objects and Color Window
	stz TMAIN.w		; Mainscreen Designation
	stz TSUB.w		; Subscreen Designation
	stz TMW.w		; Window Mask Designation for the Main Screen
	lda #$30.b
	sta CGWSEL.w		; Color Addition Select
	stz CGADSUB.w		; Color Math Designation
	lda #$E0.b
	sta COLDATA.w		; Fixed Color Data
	stz SETINI.w		; Screen Mode/Video Select
	stz NMITIMEN.w		; Interrupt Enable Flags
	lda #$FF.b
	sta WRIO.w		; I/O port output/write
	stz WRMPYA.w		; Multiplicand A
	stz WRMPYB.w		; Multplier B
	stz WRDIVL.w		; Dividend Low Byte
	stz WRDIVH.w		; Dividend High Byte
	stz WRDIVB.w		; Divisor
	stz HTIMEL.w		; H-Count Timer
	stz HTIMEH.w		; H-Count Timer MSB
	stz VTIMEL.w		; V-Count Timer
	stz VTIMEH.w		; V-Count Timer MSB
	stz MDMAEN.w		; DMA Channel Enable
	stz HDMAEN.w		; HDMA Channel Enable
	stz $0000.w
	ldx #$09.b
	stx DMAP0.w		; DMA 0 Control
	ldx #$18.b
	stx DMADEST0.w		; DMA 0 Destination Register
	ldx #$00.b
	stx DMASRC0L.w		; DMA 0 Source Adress Low Byte
	ldx #$00.b
	stx DMASRC0H.w		; DMA 0 Source Address High Byte
	ldx #$00.b
	stx DMASRC0B.w		; DMA 0 Source Address Bank
	ldx #$00.b
	stx DMALEN0L.w		; DMA 0 Transfer Size Low Byte
	ldx #$00.b
	stx DMALEN0H.w		; DMA 0 Transfer Size High Byte
	ldx #$80.b
	stx VMAIN.w		; Video Port Control
	ldx #$00.b
	stx VMADDL.w		; VRAM Address Low Byte
	ldx #$00.b
	stx VMADDH.w		; VRAM Address High Byte
	ldx #$01.b
	stx MDMAEN.w		; DMA Channel Enable
	ldx #$07.b
	stx APUIO0.w		; APU I/O Port 0
	jsr $AD56.w
	ldx #$80.b
	stx APUIO0.w		; APU I/O Port 0
	jsr $AD56.w
	ldx APUIO1.w		; APU I/O Port 1
	cpx #$55.b
	beq   7.b
	ldx #$AA.b
	stx $0074.w
	bra   5.b
	ldx #$00.b
	stx $0074.w
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	jsr $A9FC.w
	ldx #$50.b
	stx BG1SC.w		; BG1 Tilemap Address and Size
	ldx #$80.b
	stx VMAIN.w		; Video Port Control
	lda #$5000.w
	sta VMADDL.w		; VRAM Address Low Byte
	lda #$0400.w
	sta $0010.w
	lda #$0020.w
	sta VMDATAL.w		; VRAM Data Write Low Byte
	dec $0010.w
	bne  -8.b
	jsr $AB0D.w
	ldx #$02.b
	stx $0020.w
	ldx #$02.b
	stx $0021.w
	lda #$A8BE.w
	sta $0022.w
	ldx #$05.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$0A.b
	stx $0020.w
	ldx #$03.b
	stx $0021.w
	lda #$A8D3.w
	sta $0022.w
	jsr $A7DD.w
	ldx #$01.b
	stx TMAIN.w		; Mainscreen Designation
	ldx #$0F.b
	stx INIDSP.w		; Screen Display
	ldx #$03.b
	stx $0020.w
	ldx #$04.b
	stx $0021.w
	lda #$A8E8.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
.ACCU 16
	rep #$20
.INDEX 16
	rep #$10
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	lda #$AA55.w
	sta $1000.w
	lda #$555A.w
	sta $1002.w
	lda #$5AAA.w
	sta $1004.w
	ldx #$20.b
	phx
	plb
	lda $1000.w
	cmp #$AA55.w
	bne  71.b
	lda $1002.w
	cmp #$555A.w
	bne  63.b
	lda $1004.w
	cmp #$5AAA.w
	bne  55.b
	lda #$55AA.w
	sta $1000.w
	lda #$AAA5.w
	sta $1002.w
	lda #$A555.w
	sta $1004.w
	ldx #$00.b
	phx
	plb
	lda $1000.w
	cmp #$55AA.w
	bne  31.b
	lda $1002.w
	cmp #$AAA5.w
	bne  23.b
	lda $1004.w
	cmp #$A555.w
	bne  15.b
.INDEX 8
	sep #$10
	ldx #$FF.b
	stx $0061.w
	bra  13.b
.INDEX 8
	sep #$10
	ldx #$00.b
	phx
	plb
.INDEX 8
	sep #$10
	ldx #$00.b
	stx $0061.w
.ACCU 16
	rep #$20
.INDEX 8
	sep #$10
	ldx #$7E.b
	phx
	plb
.INDEX 16
	rep #$10
	ldx #$2000.w
	lda #$AA55.w
	sta $0000.w,X
	inx
	inx
	cpx #$0000.w
	beq  18.b
	lda #$555A.w
	sta $0000.w,X
	inx
	inx
	lda #$5AAA.w
	sta $0000.w,X
	inx
	inx
	bra -31.b
	ldx #$2000.w
	lda $0000.w,X
	cmp #$AA55.w
	bne  29.b
	inx
	inx
	cpx #$0000.w
	beq  25.b
	lda $0000.w,X
	cmp #$555A.w
	bne  14.b
	inx
	inx
	lda $0000.w,X
	cmp #$5AAA.w
	bne   4.b
	inx
	inx
	bra -37.b
	jmp $8603.w
	ldx #$2000.w
	lda #$5AAA.w
	sta $0000.w,X
	inx
	inx
	cpx #$0000.w
	beq  18.b
	lda #$AA55.w
	sta $0000.w,X
	inx
	inx
	lda #$555A.w
	sta $0000.w,X
	inx
	inx
	bra -31.b
	ldx #$2000.w
	lda $0000.w,X
	cmp #$5AAA.w
	bne  29.b
	inx
	inx
	cpx #$0000.w
	beq  25.b
	lda $0000.w,X
	cmp #$AA55.w
	bne  14.b
	inx
	inx
	lda $0000.w,X
	cmp #$555A.w
	bne   4.b
	inx
	inx
	bra -37.b
	jmp $8603.w
	ldx #$2000.w
	lda #$555A.w
	sta $0000.w,X
	inx
	inx
	cpx #$0000.w
	beq  18.b
	lda #$5AAA.w
	sta $0000.w,X
	inx
	inx
	lda #$AA55.w
	sta $0000.w,X
	inx
	inx
	bra -31.b
	ldx #$2000.w
	lda $0000.w,X
	cmp #$555A.w
	bne  29.b
	inx
	inx
	cpx #$0000.w
	beq  25.b
	lda $0000.w,X
	cmp #$5AAA.w
	bne  14.b
	inx
	inx
	lda $0000.w,X
	cmp #$AA55.w
	bne   4.b
	inx
	inx
	bra -37.b
	jmp $8603.w
.INDEX 8
	sep #$10
	ldx #$7F.b
	phx
	plb
.INDEX 16
	rep #$10
	ldx #$0000.w
	lda #$AA55.w
	sta $0000.w,X
	inx
	inx
	lda #$555A.w
	sta $0000.w,X
	inx
	inx
	cpx #$0000.w
	beq  10.b
	lda #$5AAA.w
	sta $0000.w,X
	inx
	inx
	bra -31.b
	ldx #$0000.w
	lda $0000.w,X
	cmp #$AA55.w
	bne  29.b
	inx
	inx
	lda $0000.w,X
	cmp #$555A.w
	bne  19.b
	inx
	inx
	cpx #$0000.w
	beq  15.b
	lda $0000.w,X
	cmp #$5AAA.w
	bne   4.b
	inx
	inx
	bra -37.b
	jmp $8603.w
	ldx #$0000.w
	lda #$5AAA.w
	sta $0000.w,X
	inx
	inx
	lda #$AA55.w
	sta $0000.w,X
	inx
	inx
	cpx #$0000.w
	beq  10.b
	lda #$555A.w
	sta $0000.w,X
	inx
	inx
	bra -31.b
	ldx #$0000.w
	lda $0000.w,X
	cmp #$5AAA.w
	bne  29.b
	inx
	inx
	lda $0000.w,X
	cmp #$AA55.w
	bne  19.b
	inx
	inx
	cpx #$0000.w
	beq  15.b
	lda $0000.w,X
	cmp #$555A.w
	bne   4.b
	inx
	inx
	bra -37.b
	jmp $8603.w
	ldx #$0000.w
	lda #$555A.w
	sta $0000.w,X
	inx
	inx
	lda #$5AAA.w
	sta $0000.w,X
	inx
	inx
	cpx #$0000.w
	beq  10.b
	lda #$AA55.w
	sta $0000.w,X
	inx
	inx
	bra -31.b
	ldx #$0000.w
	lda $0000.w,X
	cmp #$555A.w
	bne  29.b
	inx
	inx
	lda $0000.w,X
	cmp #$5AAA.w
	bne  19.b
	inx
	inx
	cpx #$0000.w
	beq  15.b
	lda $0000.w,X
	cmp #$AA55.w
	bne   4.b
	inx
	inx
	bra -37.b
	jmp $8603.w
.INDEX 8
	sep #$10
	ldx #$00.b
	phx
	plb
	ldx $0060.w
	cpx #$FF.b
	bne  10.b
	ldx $0061.w
	cpx #$FF.b
	bne   3.b
	jmp $860C.w
.INDEX 8
	sep #$10
	ldx #$00.b
	phx
	plb
	jmp $862B.w
	ldx #$FF.b
	stx $0063.w
	ldx #$18.b
	stx $0020.w
	ldx #$04.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	bra  24.b
	ldx #$18.b
	stx $0020.w
	ldx #$04.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
.INDEX 8
	sep #$10
	ldx #$03.b
	stx $0020.w
	ldx #$05.b
	stx $0021.w
	lda #$A8F1.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
	ldx $0064.w
	cpx #$FF.b
	bne  26.b
	ldx #$18.b
	stx $0020.w
	ldx #$05.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	bra  24.b
	ldx #$18.b
	stx $0020.w
	ldx #$05.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
.ACCU 16
	rep #$20
.INDEX 8
	sep #$10
	ldx #$03.b
	stx $0020.w
	ldx #$06.b
	stx $0021.w
	lda #$A8F6.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$FF.b
	stx INIDSP.w		; Screen Display
	jsr $AAC9.w
	ldx #$00.b
	stx VMAIN.w		; Video Port Control
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx #$55.b
	stx VMDATAL.w		; VRAM Data Write Low Byte
	inc A
	cmp #$8000.w
	beq  22.b
	ldx #$AA.b
	stx VMDATAL.w		; VRAM Data Write Low Byte
	inc A
	cmp #$8000.w
	beq  11.b
	ldx #$5A.b
	stx VMDATAL.w		; VRAM Data Write Low Byte
	inc A
	cmp #$8000.w
	bne -33.b
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	cpx #$55.b
	bne  35.b
	inc A
	cmp #$8000.w
	beq  32.b
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	cpx #$AA.b
	bne  22.b
	inc A
	cmp #$8000.w
	beq  19.b
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	cpx #$5A.b
	bne   9.b
	inc A
	cmp #$8000.w
	bne -39.b
	jmp $871C.w
	jmp $8808.w
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx #$AA.b
	stx VMDATAL.w		; VRAM Data Write Low Byte
	inc A
	cmp #$8000.w
	beq  22.b
	ldx #$5A.b
	stx VMDATAL.w		; VRAM Data Write Low Byte
	inc A
	cmp #$8000.w
	beq  11.b
	ldx #$55.b
	stx VMDATAL.w		; VRAM Data Write Low Byte
	inc A
	cmp #$8000.w
	bne -33.b
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	cpx #$AA.b
	bne  35.b
	inc A
	cmp #$8000.w
	beq  32.b
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	cpx #$5A.b
	bne  22.b
	inc A
	cmp #$8000.w
	beq  19.b
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	cpx #$55.b
	bne   9.b
	inc A
	cmp #$8000.w
	bne -39.b
	jmp $8779.w
	jmp $8808.w
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx #$5A.b
	stx VMDATAL.w		; VRAM Data Write Low Byte
	inc A
	cmp #$8000.w
	beq  22.b
	ldx #$55.b
	stx VMDATAL.w		; VRAM Data Write Low Byte
	inc A
	cmp #$8000.w
	beq  11.b
	ldx #$AA.b
	stx VMDATAL.w		; VRAM Data Write Low Byte
	inc A
	cmp #$8000.w
	bne -33.b
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	cpx #$5A.b
	bne  35.b
	inc A
	cmp #$8000.w
	beq  41.b
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	cpx #$55.b
	bne  22.b
	inc A
	cmp #$8000.w
	beq  28.b
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	cpx #$AA.b
	bne   9.b
	inc A
	cmp #$8000.w
	bne -39.b
	jmp $87DF.w
	jsr $A9BD.w
	jsr $A9FC.w
	jsr $AA9C.w
	jmp $8808.w
	jsr $A9BD.w
	jsr $A9FC.w
	jsr $AA9C.w
	ldx #$FF.b
	stx $0065.w
	ldx #$18.b
	stx $0020.w
	ldx #$06.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	jmp $8823.w
	jsr $A9BD.w
	ldx #$18.b
	stx $0020.w
	ldx #$06.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
	jsr $A9AB.w
	ldx #$03.b
	stx $0020.w
	ldx #$07.b
	stx $0021.w
	lda #$A8FF.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$FF.b
	stx INIDSP.w		; Screen Display
	ldx #$80.b
	stx VMAIN.w		; Video Port Control
	jsr $AAC9.w
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx #$80.b
	stx VMAIN.w		; Video Port Control
	ldx #$55.b
	stx VMDATAH.w		; VRAM Data Write High Byte
	inc A
	cmp #$8000.w
	beq  22.b
	ldx #$AA.b
	stx VMDATAH.w		; VRAM Data Write High Byte
	inc A
	cmp #$8000.w
	beq  11.b
	ldx #$5A.b
	stx VMDATAH.w		; VRAM Data Write High Byte
	inc A
	cmp #$8000.w
	bne -33.b
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx VMDATAHREAD.w		; VRAM Data Read High Byte
	ldx VMDATAHREAD.w		; VRAM Data Read High Byte
	cpx #$55.b
	bne  35.b
	inc A
	cmp #$8000.w
	beq  32.b
	ldx VMDATAHREAD.w		; VRAM Data Read High Byte
	cpx #$AA.b
	bne  22.b
	inc A
	cmp #$8000.w
	beq  19.b
	ldx VMDATAHREAD.w		; VRAM Data Read High Byte
	cpx #$5A.b
	bne   9.b
	inc A
	cmp #$8000.w
	bne -39.b
	jmp $88AD.w
	jmp $8999.w
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx #$AA.b
	stx VMDATAH.w		; VRAM Data Write High Byte
	inc A
	cmp #$8000.w
	beq  22.b
	ldx #$5A.b
	stx VMDATAH.w		; VRAM Data Write High Byte
	inc A
	cmp #$8000.w
	beq  11.b
	ldx #$55.b
	stx VMDATAH.w		; VRAM Data Write High Byte
	inc A
	cmp #$8000.w
	bne -33.b
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx VMDATAHREAD.w		; VRAM Data Read High Byte
	ldx VMDATAHREAD.w		; VRAM Data Read High Byte
	cpx #$AA.b
	bne  35.b
	inc A
	cmp #$8000.w
	beq  32.b
	ldx VMDATAHREAD.w		; VRAM Data Read High Byte
	cpx #$5A.b
	bne  22.b
	inc A
	cmp #$8000.w
	beq  19.b
	ldx VMDATAHREAD.w		; VRAM Data Read High Byte
	cpx #$55.b
	bne   9.b
	inc A
	cmp #$8000.w
	bne -39.b
	jmp $890A.w
	jmp $8999.w
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx #$5A.b
	stx VMDATAH.w		; VRAM Data Write High Byte
	inc A
	cmp #$8000.w
	beq  22.b
	ldx #$55.b
	stx VMDATAH.w		; VRAM Data Write High Byte
	inc A
	cmp #$8000.w
	beq  11.b
	ldx #$AA.b
	stx VMDATAH.w		; VRAM Data Write High Byte
	inc A
	cmp #$8000.w
	bne -33.b
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx VMDATAHREAD.w		; VRAM Data Read High Byte
	ldx VMDATAHREAD.w		; VRAM Data Read High Byte
	cpx #$5A.b
	bne  35.b
	inc A
	cmp #$8000.w
	beq  41.b
	ldx VMDATAHREAD.w		; VRAM Data Read High Byte
	cpx #$55.b
	bne  22.b
	inc A
	cmp #$8000.w
	beq  28.b
	ldx VMDATAHREAD.w		; VRAM Data Read High Byte
	cpx #$AA.b
	bne   9.b
	inc A
	cmp #$8000.w
	bne -39.b
	jmp $8970.w
	jsr $A9BD.w
	jsr $A9FC.w
	jsr $AA9C.w
	jmp $8999.w
	jsr $A9BD.w
	jsr $A9FC.w
	jsr $AA9C.w
	ldx #$FF.b
	stx $0066.w
	ldx #$18.b
	stx $0020.w
	ldx #$07.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	jmp $89B1.w
	ldx #$18.b
	stx $0020.w
	ldx #$07.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$03.b
	stx $0020.w
	ldx #$08.b
	stx $0021.w
	lda #$A909.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
.ACCU 8
	sep #$20
.INDEX 16
	rep #$10
	lda #$00.b
	sta $0043.w
	jsr $8A68.w
	jsr $8A86.w
	lda $0067.w
	bne   3.b
	jmp $8AD6.w
	lda #$FF.b
	sta $0043.w
	jsr $8A68.w
	jsr $8A86.w
	lda $0067.w
	bne   3.b
	jmp $8AD6.w
	lda #$0F.b
	sta $0043.w
	jsr $8A68.w
	jsr $8A86.w
	lda $0067.w
	bne   3.b
	jmp $8AD6.w
	lda #$F0.b
	sta $0043.w
	jsr $8A68.w
	jsr $8A86.w
	lda $0067.w
	bne   3.b
	jmp $8AD6.w
	lda #$33.b
	sta $0043.w
	jsr $8A68.w
	jsr $8A86.w
	lda $0067.w
	bne   3.b
	jmp $8AD6.w
	lda #$CC.b
	sta $0043.w
	jsr $8A68.w
	jsr $8A86.w
	lda $0067.w
	bne   3.b
	jmp $8AD6.w
	lda #$AA.b
	sta $0043.w
	jsr $8A68.w
	jsr $8A86.w
	lda $0067.w
	bne   3.b
	jmp $8AD6.w
	lda #$55.b
	sta $0043.w
	jsr $8A68.w
	jsr $8A86.w
	lda $0067.w
	bne   3.b
	jmp $8AD6.w
	jmp $8AB7.w
	ldx #$4300.w
	ldy #$000B.w
	sta $0000.w,X
	inx
	cpx #$437B.w
	beq  14.b
	dey
	bne -12.b
	inx
	inx
	inx
	inx
	inx
	ldy #$000B.w
	jmp $8A6E.w
	rts

	ldx #$4300.w
	lda $0043.w
	ldy #$000B.w
	lda $0000.w,X
	cmp $0043.w
	.db $D0, $1A		; Invalid branch target (bne L000AB1)
	inx
	cpx #$437B.w
	beq  14.b
	dey
	bne -17.b
	inx
	inx
	inx
	inx
	inx
	ldy #$000B.w
	jmp $8A8F.w
	lda #$FF.b
	sta $0067.w
	rts

	lda #$00.b		; A9 00
	sta $0067.w		; 8D 67 00
	rts		; 60

.ACCU 16
	rep #$20
.INDEX 8
	sep #$10
	ldx #$18.b
	stx $0020.w
	ldx #$08.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	jmp $8AF2.w
.ACCU 16
	rep #$20
.INDEX 8
	sep #$10
	ldx #$18.b
	stx $0020.w
	ldx #$08.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$03.b
	stx $0020.w
	ldx #$09.b
	stx $0021.w
	lda #$A916.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$8F.b
	stx INIDSP.w		; Screen Display
	lda #$0000.w
	sta OAMADDL.w		; OAM Address Low Byte
	ldx #$00.b
	stx $0040.w
	ldy #$FF.b
	sty $0043.w
	stx OAMDATA.w		; Data for OAM write
	inx
	sty OAMDATA.w		; Data for OAM write
	dey
	inc A
	cmp #$0110.w
	bne -14.b
	lda #$0000.w
	sta OAMADDL.w		; OAM Address Low Byte
	ldx OAMDATAREAD.w		; Data for OAM read
	cpx $0040.w
	bne  22.b
	ldx OAMDATAREAD.w		; Data for OAM read
	cpx $0043.w
	bne  14.b
	inc $0040.w
	dec $0043.w
	inc A
	cmp #$0110.w
	beq  19.b
	bra -30.b
.ACCU 16
	rep #$20
.INDEX 8
	sep #$10
	ldx #$01.b
	stx $00E0.w
	ldx #$00.b
	stx $0068.w
	jmp $8BD5.w
	lda #$0000.w
	sta OAMADDL.w		; OAM Address Low Byte
	ldx #$FF.b
	stx $0040.w
	ldy #$00.b
	sty $0043.w
	stx OAMDATA.w		; Data for OAM write
	dex
	sty OAMDATA.w		; Data for OAM write
	iny
	inc A
	cmp #$0110.w
	bne -14.b
	lda #$0000.w
	sta OAMADDL.w		; OAM Address Low Byte
	ldx OAMDATAREAD.w		; Data for OAM read
	cpx $0040.w
	bne  22.b
	ldx OAMDATAREAD.w		; Data for OAM read
	cpx $0043.w
	bne  14.b
	dec $0040.w
	inc $0043.w
	inc A
	cmp #$0110.w
	beq  19.b
	bra -30.b
.ACCU 16
	rep #$20
.INDEX 8
	sep #$10
	ldx #$02.b
	stx $00E0.w
	ldx #$00.b
	stx $0068.w
	jmp $8BD5.w
	ldx #$FF.b
	stx $0068.w
	ldx #$18.b
	stx $0020.w
	ldx #$09.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	jmp $8C09.w
.ACCU 8
	sep #$20
	lda $00E0.w
	jsr $AC5C.w
	ldx #$10.b
	stx $0020.w
	ldx #$09.b
	stx $0021.w
	ldx #$02.b
	stx $0024.w
	jsr $A81F.w
.ACCU 16
	rep #$20
	ldx #$18.b
	stx $0020.w
	ldx #$09.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$03.b
	stx $0020.w
	ldx #$0A.b
	stx $0021.w
	lda #$A91A.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
	jsr $ADF5.w
	ldx #$00.b
	stx CGADD.w		; CGRAM Address
	ldx #$55.b
	stx $0040.w
	ldx #$2A.b
	stx $0043.w
	jsr $8CD4.w
	ldx $0069.w
	bne   3.b
	jmp $8D2F.w
	ldx #$AA.b
	stx $0040.w
	ldx #$55.b
	stx $0043.w
	jsr $8CD4.w
	ldx $0069.w
	bne   3.b
	jmp $8D2F.w
	ldx #$00.b
	stx $0040.w
	ldx #$7F.b
	stx $0043.w
	jsr $8CD4.w
	ldx $0069.w
	bne   3.b
	jmp $8D2F.w
	ldx #$FF.b
	stx $0040.w
	ldx #$00.b
	stx $0043.w
	jsr $8CD4.w
	ldx $0069.w
	bne   3.b
	jmp $8D2F.w
	ldx #$F0.b
	stx $0040.w
	ldx #$0F.b
	stx $0043.w
	jsr $8CD4.w
	ldx $0069.w
	bne   3.b
	jmp $8D2F.w
	ldx #$0F.b
	stx $0040.w
	ldx #$70.b
	stx $0043.w
	jsr $8CD4.w
	ldx $0069.w
	bne   3.b
	jmp $8D2F.w
	ldx #$CC.b
	stx $0040.w
	ldx #$33.b
	stx $0043.w
	jsr $8CD4.w
	ldx $0069.w
	bne   3.b
	jmp $8D2F.w
	ldx #$33.b
	stx $0040.w
	ldx #$4C.b
	stx $0043.w
	jsr $8CD4.w
	ldx $0069.w
	bne   3.b
	jmp $8D2F.w
	jmp $8D11.w
	ldy #$00.b
	sty CGADD.w		; CGRAM Address
	ldx $0040.w
	stx CGDATA.w		; CGRAM Data Write
	ldx $0043.w
	stx CGDATA.w		; CGRAM Data Write
	iny
	bne -15.b
	ldy #$00.b
	sty CGADD.w		; CGRAM Address
	ldx CGDATAREAD.w		; CGRAM Data Read
	cpx $0040.w
	.db $D0, $16		; Invalid branch target (bne L000D0B)
	ldx CGDATAREAD.w		; CGRAM Data Read
	txa
	and #$007F.w
	tax
	cpx $0043.w
	.db $D0, $09		; Invalid branch target (bne L000D0B)
	iny
	bne -24.b
	ldx #$FF.b
	stx $0069.w
	rts

	ldx #$00.b		; A2 00
	stx $0069.w		; 8E 69 00
	rts		; 60

	jsr $AB0D.w
	ldx #$18.b
	stx $0020.w
	ldx #$0A.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	jmp $8D4A.w
	jsr $AB0D.w
	ldx #$18.b
	stx $0020.w
	ldx #$0A.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$03.b
	stx $0020.w
	ldx #$0B.b
	stx $0021.w
	lda #$A921.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$FF.b
	stx $0026.w
	stx $0027.w
	jsr $A864.w
	lda $0028.w
	cmp #$FE01.w
	bne  74.b
	ldx #$55.b
	stx $0026.w
	ldx #$AA.b
	stx $0027.w
	jsr $A864.w
	lda $0028.w
	cmp #$3872.w
	bne  53.b
	ldx #$FF.b
	stx $0026.w
	ldx #$00.b
	stx $0027.w
	jsr $A864.w
	lda $0028.w
	cmp #$0000.w
	bne  32.b
	ldx #$FF.b
	stx $006A.w
	ldx #$18.b
	stx $0020.w
	ldx #$0B.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	jmp $8DD7.w
	ldx #$18.b
	stx $0020.w
	ldx #$0B.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$03.b
	stx $0020.w
	ldx #$0C.b
	stx $0021.w
	lda #$A929.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
	lda #$FFFF.w
	sta $002A.w
	ldx #$FF.b
	stx $002C.w
	jsr $A87A.w
	ldx $002D.w
	cpx #$01.b
	bne  98.b
	lda $002E.w
	cmp #$0000.w
	bne  90.b
	lda #$5555.w
	sta $002A.w
	ldx #$AA.b
	stx $002C.w
	jsr $A87A.w
	ldx $002D.w
	cpx #$72.b
	bne  69.b
	lda $002E.w
	cmp #$E355.w
	bne  61.b
	lda #$FFFF.w
	sta $002A.w
	ldx #$00.b
	stx $002C.w
	jsr $A87A.w
	ldx $002D.w
	cpx #$00.b
	bne  40.b
	lda $002E.w
	cmp #$0000.w
	bne  32.b
	ldx #$FF.b
	stx $006B.w
	ldx #$18.b
	stx $0020.w
	ldx #$0C.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	jmp $8E7E.w
	ldx #$18.b
	stx $0020.w
	ldx #$0C.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$03.b
	stx $0020.w
	ldx #$0D.b
	stx $0021.w
	lda #$A932.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
	lda #$FFFF.w
	sta $0030.w
	lda #$0001.w
	sta $0032.w
	jsr $A89C.w
	lda $0033.w
	cmp #$FFFF.w
	bne  40.b
	lda $0035.w
	cmp #$0000.w
	bne  32.b
	ldx #$FF.b
	stx $006C.w
	ldx #$18.b
	stx $0020.w
	ldx #$0D.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	jmp $8EED.w
	ldx #$18.b
	stx $0020.w
	ldx #$0D.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$03.b
	stx $0020.w
	ldx #$0E.b
	stx $0021.w
	lda #$A93B.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$FF.b
	stx INIDSP.w		; Screen Display
	ldx #$80.b
	stx VMAIN.w		; Video Port Control
	ldx #$55.b
	stx $0040.w
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx #$09.b
	stx DMAP0.w		; DMA 0 Control
	ldx #$18.b
	stx DMADEST0.w		; DMA 0 Destination Register
	lda #$0040.w
	sta DMASRC0L.w		; DMA 0 Source Adress Low Byte
	ldx #$00.b
	stx DMASRC0B.w		; DMA 0 Source Address Bank
	lda #$0010.w
	sta DMALEN0L.w		; DMA 0 Transfer Size Low Byte
	ldx #$01.b
	stx MDMAEN.w		; DMA Channel Enable
	ldx #$08.b
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	lda VMDATALREAD.w		; VRAM Data Read Low Byte
	lda VMDATALREAD.w		; VRAM Data Read Low Byte
	cmp #$5555.w
	bne   6.b
	dex
	bne -11.b
	jmp $8F56.w
	jmp $9145.w
	ldx #$AA.b
	stx $0040.w
	lda #$0008.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx #$09.b
	stx DMAP1.w		; DMA 1 Control
	ldx #$18.b
	stx DMADEST1.w		; DMA 1 Destination Register
	lda #$0040.w
	sta DMASRC1L.w		; DMA 1 Source Adress Low Byte
	ldx #$00.b
	stx DMASRC1B.w		; DMA 1 Source Address Bank
	lda #$0010.w
	sta DMALEN1L.w		; DMA 1 Transfer Size Low Byte
	ldx #$02.b
	stx MDMAEN.w		; DMA Channel Enable
	ldx #$08.b
	lda #$0008.w
	sta VMADDL.w		; VRAM Address Low Byte
	lda VMDATALREAD.w		; VRAM Data Read Low Byte
	lda VMDATALREAD.w		; VRAM Data Read Low Byte
	cmp #$AAAA.w
	bne   6.b
	dex
	bne -11.b
	jmp $8F9D.w
	jmp $9145.w
	ldx #$FF.b
	stx $0040.w
	lda #$0010.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx #$09.b
	stx DMAP2.w		; DMA 2 Control
	ldx #$18.b
	stx DMADEST2.w		; DMA 2 Destination Register
	lda #$0040.w
	sta DMASRC2L.w		; DMA 2 Source Adress Low Byte
	ldx #$00.b
	stx DMASRC2B.w		; DMA 2 Source Address Bank
	lda #$0010.w
	sta DMALEN2L.w		; DMA 2 Transfer Size Low Byte
	ldx #$04.b
	stx MDMAEN.w		; DMA Channel Enable
	ldx #$08.b
	lda #$0010.w
	sta VMADDL.w		; VRAM Address Low Byte
	lda VMDATALREAD.w		; VRAM Data Read Low Byte
	lda VMDATALREAD.w		; VRAM Data Read Low Byte
	cmp #$FFFF.w
	bne   6.b
	dex
	bne -11.b
	jmp $8FE4.w
	jmp $9145.w
	ldx #$00.b
	stx $0040.w
	lda #$0018.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx #$09.b
	stx DMAP3.w		; DMA 3 Control
	ldx #$18.b
	stx DMADEST3.w		; DMA 3 Destination Register
	lda #$0040.w
	sta DMASRC3L.w		; DMA 3 Source Adress Low Byte
	ldx #$00.b
	stx DMASRC3B.w		; DMA 3 Source Address Bank
	lda #$0010.w
	sta DMALEN3L.w		; DMA 3 Transfer Size Low Byte
	ldx #$08.b
	stx MDMAEN.w		; DMA Channel Enable
	ldx #$08.b
	lda #$0018.w
	sta VMADDL.w		; VRAM Address Low Byte
	lda VMDATALREAD.w		; VRAM Data Read Low Byte
	lda VMDATALREAD.w		; VRAM Data Read Low Byte
	cmp #$0000.w
	bne   6.b
	dex
	bne -11.b
	jmp $902B.w
	jmp $9145.w
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	lda VMDATALREAD.w		; VRAM Data Read Low Byte
	ldx #$81.b
	stx DMAP4.w		; DMA 4 Control
	ldx #$39.b
	stx DMADEST4.w		; DMA 4 Destination Register
	lda #$0000.w
	sta DMASRC4L.w		; DMA 4 Source Adress Low Byte
	ldx #$7F.b
	stx DMASRC4B.w		; DMA 4 Source Address Bank
	lda #$0010.w
	sta DMALEN4L.w		; DMA 4 Transfer Size Low Byte
	ldx #$10.b
	stx MDMAEN.w		; DMA Channel Enable
	ldx #$00.b
	lda $7F0000.l,X
	cmp #$5555.w
	bne   9.b
	inx
	inx
	cpx #$10.b
	bne -15.b
	jmp $906B.w
	jmp $9145.w
	lda #$0008.w
	sta VMADDL.w		; VRAM Address Low Byte
	lda VMDATALREAD.w		; VRAM Data Read Low Byte
	ldx #$81.b
	stx DMAP5.w		; DMA 5 Control
	ldx #$39.b
	stx DMADEST5.w		; DMA 5 Destination Register
	lda #$0010.w
	sta DMASRC5L.w		; DMA 5 Source Adress Low Byte
	ldx #$7F.b
	stx DMASRC5B.w		; DMA 5 Source Address Bank
	lda #$0010.w
	sta DMALEN5L.w		; DMA 5 Transfer Size Low Byte
	ldx #$20.b
	stx MDMAEN.w		; DMA Channel Enable
	ldx #$10.b
	lda $7F0000.l,X
	cmp #$AAAA.w
	bne   9.b
	inx
	inx
	cpx #$20.b
	bne -15.b
	jmp $90AB.w
	jmp $9145.w
	lda #$0010.w
	sta VMADDL.w		; VRAM Address Low Byte
	lda VMDATALREAD.w		; VRAM Data Read Low Byte
	ldx #$81.b
	stx DMAP6.w		; DMA 6 Control
	ldx #$39.b
	stx DMADEST6.w		; DMA 6 Destination Register
	lda #$0020.w
	sta DMASRC6L.w		; DMA 6 Source Adress Low Byte
	ldx #$7F.b
	stx DMASRC6B.w		; DMA 6 Source Address Bank
	lda #$0010.w
	sta DMALEN6L.w		; DMA 6 Transfer Size Low Byte
	ldx #$40.b
	stx MDMAEN.w		; DMA Channel Enable
	ldx #$20.b
	lda $7F0000.l,X
	cmp #$FFFF.w
	bne   9.b
	inx
	inx
	cpx #$30.b
	bne -15.b
	jmp $90EB.w
	jmp $9145.w
	lda #$0018.w
	sta VMADDL.w		; VRAM Address Low Byte
	lda VMDATALREAD.w		; VRAM Data Read Low Byte
	ldx #$81.b
	stx DMAP7.w		; DMA 7 Control
	ldx #$39.b
	stx DMADEST7.w		; DMA 7 Destination Register
	lda #$0030.w
	sta DMASRC7L.w		; DMA 7 Source Adress Low Byte
	ldx #$7F.b
	stx DMASRC7B.w		; DMA 7 Source Address Bank
	lda #$0010.w
	sta DMALEN5L.w		; DMA 5 Transfer Size Low Byte
	ldx #$80.b
	stx MDMAEN.w		; DMA Channel Enable
	ldx #$30.b
	lda $7F0000.l,X
	cmp #$0000.w
	bne  38.b
	inx
	inx
	cpx #$40.b
	bne -15.b
	ldx #$FF.b
	stx $006D.w
	ldx #$18.b
	stx $0020.w
	ldx #$0E.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	jmp $9162.w
	ldx #$00.b
	stx $006D.w
	ldx #$18.b
	stx $0020.w
	ldx #$0E.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$03.b
	stx $0020.w
	ldx #$0F.b
	stx $0021.w
	lda #$A93F.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
.ACCU 8
	sep #$20
.INDEX 16
	rep #$10
	ldx #$0080.w
	stx $0050.w
	ldx #$0001.w
	stx $0052.w
	lda RDNMI.w		; NMI Flag and 5A22 Version
	bpl  -5.b
	lda RDNMI.w		; NMI Flag and 5A22 Version
	ldx $0050.w
	stx HTIMEL.w		; H-Count Timer
	ldx $0052.w
	stx VTIMEL.w		; V-Count Timer
	lda #$30.b
	sta $00A1.w
	sta NMITIMEN.w		; Interrupt Enable Flags
	cli		; Clear interupt
	jsr $AD56.w
	sei		; Disable interrupts
	lda STAT78.w		; 5C78 PPU-2 Status Flag and Version
	lda OPHCT.w		; Horizontal Scanline Location
	sta $0054.w
	lda OPHCT.w		; Horizontal Scanline Location
	and #$01.b
	sta $0055.w
	lda OPVCT.w		; Vertical Scanline Location
	sta $0056.w
	lda OPVCT.w		; Vertical Scanline Location
	and #$01.b
	sta $0057.w
.ACCU 8
	sep #$20
.INDEX 8
	sep #$10
.INDEX 16
	rep #$10
.ACCU 16
	rep #$20
	lda $0056.w
	cmp $0052.w
	beq   3.b
	jmp $921F.w
	lda $0054.w
	cmp $0050.w
	bcc  58.b
	sec		; Set carry
	sbc $0050.w
	cmp #$0040.w
	bcs  49.b
.ACCU 8
	sep #$20
	lsr $0050.w
	asl $0052.w
	beq   3.b
	jmp $918A.w
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	ldx #$FF.b
	stx $006E.w
	ldx #$18.b
	stx $0020.w
	ldx #$0F.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	jmp $9240.w
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	ldx #$00.b
	stx $006E.w
	ldx #$18.b
	stx $0020.w
	ldx #$0F.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$03.b
	stx $0020.w
	ldx #$10.b
	stx $0021.w
	lda #$A948.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$FF.b
	stx INIDSP.w		; Screen Display
	jsr $AAC9.w
	ldx #$84.b
	stx VMAIN.w		; Video Port Control
.INDEX 16
	rep #$10
	ldx #$0200.w
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	stx VMDATAL.w		; VRAM Data Write Low Byte
	inx
	cpx #$0221.w
	bne  -9.b
.INDEX 8
	sep #$10
	ldx #$80.b
	stx VMAIN.w		; Video Port Control
.INDEX 16
	rep #$10
	lda #$0000.w
	ldx #$0200.w
	stx $0040.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	cpx $0040.w
	bne  33.b
	inc $0040.w
	inc A
	inc A
	inc A
	inc A
	inc A
	inc A
	inc A
	inc A
	cmp #$0100.w
	bne -27.b
	lda #$0001.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	cpx $0040.w
	bne   3.b
	jmp $92BC.w
.INDEX 8
	sep #$10
	jmp $93AB.w
.INDEX 8
	sep #$10
	ldx #$88.b
	stx VMAIN.w		; Video Port Control
.INDEX 16
	rep #$10
	ldx #$0400.w
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	stx VMDATAL.w		; VRAM Data Write Low Byte
	inx
	cpx #$0441.w
	bne  -9.b
.INDEX 8
	sep #$10
	ldx #$80.b
	stx VMAIN.w		; Video Port Control
.INDEX 16
	rep #$10
	lda #$0000.w
	ldx #$0400.w
	stx $0040.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	cpx $0040.w
	bne  33.b
	inc $0040.w
	inc A
	inc A
	inc A
	inc A
	inc A
	inc A
	inc A
	inc A
	cmp #$0200.w
	bne -27.b
	lda #$0001.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	cpx $0040.w
	bne   3.b
	jmp $931A.w
.INDEX 8
	sep #$10
	jmp $93AB.w
.INDEX 8
	sep #$10
	ldx #$8C.b
	stx VMAIN.w		; Video Port Control
.INDEX 16
	rep #$10
	ldx #$0800.w
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	stx VMDATAL.w		; VRAM Data Write Low Byte
	inx
	cpx #$0881.w
	bne  -9.b
.INDEX 8
	sep #$10
	ldx #$80.b
	stx VMAIN.w		; Video Port Control
.INDEX 16
	rep #$10
	lda #$0000.w
	ldx #$0800.w
	stx $0040.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	cpx $0040.w
	bne  33.b
	inc $0040.w
	inc A
	inc A
	inc A
	inc A
	inc A
	inc A
	inc A
	inc A
	cmp #$0400.w
	bne -27.b
	lda #$0001.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx VMDATALREAD.w		; VRAM Data Read Low Byte
	cpx $0040.w
	bne   3.b
	jmp $9378.w
.INDEX 8
	sep #$10
	jmp $93AB.w
	jsr $A9BD.w
	jsr $A9FC.w
	jsr $AA9C.w
.INDEX 8
	sep #$10
	ldx #$80.b
	stx VMAIN.w		; Video Port Control
	jsr $A9FC.w
	ldx #$FF.b
	stx $006F.w
	ldx #$18.b
	stx $0020.w
	ldx #$10.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	jmp $93DB.w
	jsr $A9BD.w
	jsr $A9FC.w
	jsr $AA9C.w
.INDEX 8
	sep #$10
	ldx #$80.b
	stx VMAIN.w		; Video Port Control
	jsr $A9FC.w
	ldx #$00.b
	stx $006F.w
	ldx #$18.b
	stx $0020.w
	ldx #$10.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$03.b
	stx $0020.w
	ldx #$11.b
	stx $0021.w
	lda #$A953.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
.ACCU 8
	sep #$20
	ldx #$04.b
	stx SETINI.w		; Screen Mode/Video Select
	ldx RDNMI.w		; NMI Flag and 5A22 Version
	bpl  -5.b
	ldx RDNMI.w		; NMI Flag and 5A22 Version
	ldx RDNMI.w		; NMI Flag and 5A22 Version
	bpl  -5.b
	ldx RDNMI.w		; NMI Flag and 5A22 Version
	ldx SLHV.w		; Software Latch for H/V Counter
	stz NMITIMEN.w		; Interrupt Enable Flags
	ldx STAT78.w		; 5C78 PPU-2 Status Flag and Version
	lda OPVCT.w		; Vertical Scanline Location
	sta $0057.w
	lda OPVCT.w		; Vertical Scanline Location
	and #$01.b
	sta $0058.w
	ldx #$F0.b
	cpx $0057.w
	bne  97.b
	ldx $0058.w
	bne  92.b
	ldx #$00.b
	stx SETINI.w		; Screen Mode/Video Select
	ldx RDNMI.w		; NMI Flag and 5A22 Version
	bpl  -5.b
	ldx RDNMI.w		; NMI Flag and 5A22 Version
	ldx RDNMI.w		; NMI Flag and 5A22 Version
	bpl  -5.b
	ldx RDNMI.w		; NMI Flag and 5A22 Version
	ldx SLHV.w		; Software Latch for H/V Counter
	stz NMITIMEN.w		; Interrupt Enable Flags
	ldx STAT78.w		; 5C78 PPU-2 Status Flag and Version
	lda OPVCT.w		; Vertical Scanline Location
	sta $0057.w
	lda OPVCT.w		; Vertical Scanline Location
	and #$01.b
	sta $0058.w
	ldx #$E1.b
	cpx $0057.w
	bne  41.b
	ldx $0058.w
	bne  36.b
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	ldx #$FF.b
	stx $0070.w
	ldx #$18.b
	stx $0020.w
	ldx #$11.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	jmp $94A5.w
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	ldx #$18.b
	stx $0020.w
	ldx #$11.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$03.b
	stx $0020.w
	ldx #$12.b
	stx $0021.w
	lda #$A95F.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
.ACCU 8
	sep #$20
	lda #$01.b
	sta SETINI.w		; Screen Mode/Video Select
	lda RDNMI.w		; NMI Flag and 5A22 Version
	bpl  -5.b
	lda RDNMI.w		; NMI Flag and 5A22 Version
	lda STAT78.w		; 5C78 PPU-2 Status Flag and Version
	and #$80.b
	sta $0046.w
	ldx #$3C.b
	lda RDNMI.w		; NMI Flag and 5A22 Version
	bpl  -5.b
	lda RDNMI.w		; NMI Flag and 5A22 Version
	lda STAT78.w		; 5C78 PPU-2 Status Flag and Version
	and #$80.b
	sta $0047.w
	lda $0046.w
	eor $0047.w
	cmp #$80.b
	bne  51.b
	lda $0047.w
	sta $0046.w
	dex
	bne -35.b
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	ldx #$FF.b
	stx $0071.w
	ldx #$18.b
	stx $0020.w
	ldx #$12.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	lda #$0000.w
	sta SETINI.w		; Screen Mode/Video Select
	jmp $9549.w
	ldx #$00.b
	stx $0071.w
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	ldx #$18.b
	stx $0020.w
	ldx #$12.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$00.b
	stx SETINI.w		; Screen Mode/Video Select
.ACCU 16
	rep #$20
	ldx #$03.b
	stx $0020.w
	ldx #$13.b
	stx $0021.w
	lda #$A96A.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
.ACCU 8
	sep #$20
	lda SLHV.w		; Software Latch for H/V Counter
	lda HVBJOY.w		; H/V Blank Flags and Joypad Status
	sta $0079.w
	bmi -11.b
	lda STAT78.w		; 5C78 PPU-2 Status Flag and Version
	lda OPHCT.w		; Horizontal Scanline Location
	sta $0054.w
	lda OPHCT.w		; Horizontal Scanline Location
	and #$01.b
	sta $0055.w
.ACCU 16
	rep #$20
	lda $0054.w
	cmp #$0120.w
	bcc -40.b
	lda $0054.w
	cmp #$0130.w
	bcs -48.b
.ACCU 8
	sep #$20
	lda $0079.w
	and #$40.b
	bne   3.b
	jmp $95DB.w
.ACCU 8
	sep #$20
	lda SLHV.w		; Software Latch for H/V Counter
	lda HVBJOY.w		; H/V Blank Flags and Joypad Status
	sta $0079.w
	bmi -11.b
	lda STAT78.w		; 5C78 PPU-2 Status Flag and Version
	lda OPHCT.w		; Horizontal Scanline Location
	sta $0054.w
	lda OPHCT.w		; Horizontal Scanline Location
	and #$01.b
	sta $0055.w
.ACCU 16
	rep #$20
	lda $0054.w
	cmp #$0000.w
	bcc -40.b
	lda $0054.w
	cmp #$0010.w
	bcs -48.b
.ACCU 8
	sep #$20
	lda $0079.w
	and #$40.b
	beq   6.b
	jmp $95DB.w
	jmp $966C.w
.ACCU 8
	sep #$20
	lda SLHV.w		; Software Latch for H/V Counter
	lda HVBJOY.w		; H/V Blank Flags and Joypad Status
	sta $007A.w
	lda STAT78.w		; 5C78 PPU-2 Status Flag and Version
	lda OPVCT.w		; Vertical Scanline Location
	sta $0056.w
	lda OPVCT.w		; Vertical Scanline Location
	and #$01.b
	sta $0057.w
.ACCU 16
	rep #$20
	lda $0056.w
	cmp #$00E1.w
	bne -38.b
.ACCU 8
	sep #$20
	lda $007A.w
	and #$80.b
	bne   3.b
	jmp $9645.w
.ACCU 8
	sep #$20
	lda SLHV.w		; Software Latch for H/V Counter
	lda HVBJOY.w		; H/V Blank Flags and Joypad Status
	sta $007A.w
	lda STAT78.w		; 5C78 PPU-2 Status Flag and Version
	lda OPVCT.w		; Vertical Scanline Location
	sta $0056.w
	lda OPVCT.w		; Vertical Scanline Location
	and #$01.b
	sta $0057.w
.ACCU 16
	rep #$20
	lda $0056.w
	cmp #$0000.w
	bne -38.b
.ACCU 8
	sep #$20
	lda $007A.w
	and #$80.b
	beq   3.b
	jmp $9645.w
	jmp $9648.w
	jmp $966C.w
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	ldx #$FF.b
	stx $0072.w
	ldx #$18.b
	stx $0020.w
	ldx #$13.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	jmp $9688.w
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	ldx #$18.b
	stx $0020.w
	ldx #$13.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$03.b
	stx $0020.w
	ldx #$14.b
	stx $0021.w
	lda #$A975.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$03.b
	stx OBJSEL.w		; Object Size and Chr Address
	jsr $AA2E.w
	lda #$F8F8.w
	sta $0010.w
	lda #$0000.w
	sta $0013.w
	jsr $AC80.w
	ldx #$11.b
	stx TMAIN.w		; Mainscreen Designation
	ldx #$0F.b
	stx INIDSP.w		; Screen Display
	lda #$C800.w
	sta $0019.w
	lda #$0000.w
	sta $001B.w
	ldx #$00.b
	lda $0019.w
	sta $1000.w,X
	lda $001B.w
	sta $1002.w,X
	inx
	inx
	inx
	inx
	clc		; Clear carry
	lda #$0008.w
	adc $0019.w
	sta $0019.w
	inc $001B.w
	lda $001B.w
	cmp #$0020.w
	bne -37.b
	ldx #$80.b
	stx NMITIMEN.w		; Interrupt Enable Flags
	jsr $AD56.w
	jsr $AD56.w
.ACCU 8
	sep #$20
	lda $0048.w
	and #$C0.b
	cmp #$00.b
	beq   3.b
	jmp $982C.w
.ACCU 16
	rep #$20
	lda #$0008.w
	adc $0019.w
	sta $0019.w
	inc $001B.w
	lda $0019.w
	sta $1000.w,X
	lda $001B.w
	sta $1002.w,X
	jsr $AD56.w
	jsr $AD56.w
.ACCU 8
	sep #$20
	lda $0048.w
	and #$C0.b
	cmp #$40.b
	beq   3.b
	jmp $982C.w
.ACCU 16
	rep #$20
	lda #$C800.w
	sta $0019.w
	lda #$0040.w
	sta $001B.w
	lda #$8080.w
	sta $0010.w
	lda #$FFFF.w
	sta $0013.w
	jsr $AC80.w
	ldx #$03.b
	stx OBJSEL.w		; Object Size and Chr Address
	ldx #$00.b
	ldy #$00.b
	lda $0019.w
	sta $1000.w,X
	lda $001B.w
	sta $1002.w,X
	inx
	inx
	inx
	inx
	lda $1200.w,Y
	asl A
	asl A
	ora #$AAAA.w
	sta $1200.w,Y
	cmp #$AAAA.w
	bne   2.b
	iny
	iny
	inc $001B.w
	inc $001B.w
	lda $001B.w
	and #$000F.w
	bne  10.b
	sec		; Set carry
	lda $001B.w
	sbc #$0010.w
	sta $001B.w
	clc		; Clear carry
	lda #$000F.w
	adc $0019.w
	sta $0019.w
	cmp #$C8FF.w
	bne -73.b
	jsr $AD56.w
	jsr $AD56.w
.ACCU 8
	sep #$20
	lda $0048.w
	and #$C0.b
	beq   3.b
	jmp $9835.w
.ACCU 16
	rep #$20
	lda #$C800.w
	sta $0019.w
	lda #$0000.w
	sta $001B.w
	lda $0019.w
	sta $1000.w,X
	lda $001B.w
	sta $1002.w,X
	lda #$FFF2.w
	sta $1200.w,Y
	jsr $AD56.w
	jsr $AD56.w
.ACCU 8
	sep #$20
	lda $0048.w
	pha
	lda #$80.b
	sta $1000.w,X
	sta $1001.w,X
	sta $1002.w,X
	sta $1003.w,X
	lda #$FE.b
	sta $1200.w,Y
	jsr $AD56.w
	pla
	and #$C0.b
	cmp #$80.b
	beq   3.b
	jmp $9835.w
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	ldx #$FF.b
	stx $0073.w
	ldx #$18.b
	stx $0020.w
	ldx #$14.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	jmp $9858.w
.INDEX 8
	sep #$10
	ldx #$01.b
	stx $0086.w
	bra   7.b
.INDEX 8
	sep #$10
	ldx #$01.b
	stx $0087.w
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	ldx #$18.b
	stx $0020.w
	ldx #$14.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
	ldx #$03.b
	stx $0020.w
	ldx #$16.b
	stx $0021.w
	lda #$A98A.w
	sta $0022.w
	ldx #$07.b
	stx $0024.w
	jsr $A7DD.w
	ldx $0074.w
	cpx #$AA.b
	bne  59.b
	stz $0016.w
	jsr $AD56.w
	ldx $0016.w
	cpx #$B4.b
	bne -10.b
.ACCU 8
	sep #$20
	lda APUIO1.w		; APU I/O Port 1
	and #$FB.b
	cmp #$00.b
	bne  35.b
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	ldx #$FF.b
	stx $0074.w
	ldx #$18.b
	stx $0020.w
	ldx #$16.b
	stx $0021.w
	lda #$A9A0.w
	sta $0022.w
	ldx #$04.b
	stx $0024.w
	jsr $A7DD.w
	bra  57.b
	lda APUIO1.w		; APU I/O Port 1
	jsr $AC5C.w
	ldx #$12.b
	stx $0020.w
	ldx #$16.b
	stx $0021.w
	ldx #$07.b
	stx $0024.w
	jsr $A81F.w
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	ldx #$00.b
	stx $0074.w
	ldx #$18.b
	stx $0020.w
	ldx #$16.b
	stx $0021.w
	lda #$A9A4.w
	sta $0022.w
	ldx #$02.b
	stx $0024.w
	jsr $A7DD.w
.ACCU 8
	sep #$20
	lda $0063.w
	and $0064.w
	and $0065.w
	and $0066.w
	and $0067.w
	and $0068.w
	and $0069.w
	and $006A.w
	and $006B.w
	and $006C.w
	and $006D.w
	and $006E.w
	and $0070.w
	and $0071.w
	and $0072.w
	and $0073.w
	and $0074.w
	cmp #$FF.b
	beq   6.b
	jsr $AD56.w
	jmp $9924.w
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	lda #$0080.w
	ldx RDNMI.w		; NMI Flag and 5A22 Version
	ldx RDNMI.w		; NMI Flag and 5A22 Version
	bpl  -5.b
	ldx RDNMI.w		; NMI Flag and 5A22 Version
	dec A
	bne -11.b
	ldx #$00.b
	stx NMITIMEN.w		; Interrupt Enable Flags
.INDEX 8
	sep #$10
.ACCU 8
	sep #$20
	ldx #$08.b
	stx APUIO0.w		; APU I/O Port 0
	jsr $ADF5.w
.ACCU 8
	sep #$20
.INDEX 8
	sep #$10
	lda #$18.b
	sta TMAIN.w		; Mainscreen Designation
	lda #$00.b
	sta TSUB.w		; Subscreen Designation
	lda #$22.b
	sta BG1SC.w		; BG1 Tilemap Address and Size
	lda #$32.b
	sta BG2SC.w		; BG2 Tilemap Address and Size
	lda #$42.b
	sta BG3SC.w		; BG3 Tilemap Address and Size
	lda #$53.b
	sta BG4SC.w		; BG4 Tilemap Address and Size
	lda #$00.b
	sta BG12NBA.w		; BG1&2 Tilemap Character Address
	lda #$00.b
	sta BG34NBA.w		; BG3&4 Tilemap Character Address
	lda #$02.b
	sta CGWSEL.w		; Color Addition Select
	lda #$00.b
	sta CGADSUB.w		; Color Math Designation
	sta SETINI.w		; Screen Mode/Video Select
	jsr $A9BD.w
	ldx #$03.b
	stx OBJSEL.w		; Object Size and Chr Address
	jsr $AA65.w
.ACCU 16
	rep #$20
.INDEX 8
	sep #$10
	lda #$F8F8.w
	sta $0010.w
	lda #$0000.w
	sta $0013.w
	jsr $AC80.w
	ldx #$00.b
	stx BGMODE.w		; BG Mode and Character Size
.ACCU 8
	sep #$20
.INDEX 16
	rep #$10
	lda #$00.b
	sta VMADDL.w		; VRAM Address Low Byte
	sta VMADDH.w		; VRAM Address High Byte
	ldx #$0000.w
	lda $028000.l,X
	sta VMDATAL.w		; VRAM Data Write Low Byte
	inx
	lda $028000.l,X
	sta VMDATAH.w		; VRAM Data Write High Byte
	inx
	cpx #$4000.w
	bne -21.b
	lda #$00.b
	sta VMADDL.w		; VRAM Address Low Byte
	lda #$20.b
	sta VMADDH.w		; VRAM Address High Byte
	ldx #$0000.w
	lda $0E8000.l,X
	sta VMDATAL.w		; VRAM Data Write Low Byte
	inx
	lda $0E8000.l,X
	sta VMDATAH.w		; VRAM Data Write High Byte
	inx
	cpx #$2000.w
	bne -21.b
	lda #$00.b
	sta VMADDL.w		; VRAM Address Low Byte
	lda #$30.b
	sta VMADDH.w		; VRAM Address High Byte
	ldx #$0000.w
	lda $0EA000.l,X
	sta VMDATAL.w		; VRAM Data Write Low Byte
	inx
	lda $0EA000.l,X
	sta VMDATAH.w		; VRAM Data Write High Byte
	inx
	cpx #$2000.w
	bne -21.b
	lda #$00.b
	sta VMADDL.w		; VRAM Address Low Byte
	lda #$40.b
	sta VMADDH.w		; VRAM Address High Byte
	ldx #$0000.w
	lda $0EC000.l,X
	sta VMDATAL.w		; VRAM Data Write Low Byte
	inx
	lda $0EC000.l,X
	sta VMDATAH.w		; VRAM Data Write High Byte
	inx
	cpx #$2000.w
	bne -21.b
	lda #$00.b
	sta VMADDL.w		; VRAM Address Low Byte
	lda #$50.b
	sta VMADDH.w		; VRAM Address High Byte
	ldx #$0000.w
	lda $00C800.l,X
	sta VMDATAL.w		; VRAM Data Write Low Byte
	inx
	lda $00C800.l,X
	sta VMDATAH.w		; VRAM Data Write High Byte
	inx
	cpx #$2000.w
	bne -21.b
	jsr $AB0D.w
.ACCU 8
	sep #$20
.INDEX 16
	rep #$10
	jsr $AE4C.w
	ldx #$0080.w
	stx $00C2.w
	stx $00C6.w
	stx $00CA.w
	ldx #$01C0.w
	stx $00C0.w
	stx $00C4.w
	stx $00C8.w
	ldx #$0100.w
	stx $00CE.w
	jsr $AD56.w
	jsr $ADE3.w
	jsr $AD56.w
	ldx $00CC.w
	inx
	inx
	inx
	inx
	stx $00CC.w
	cpx #$0100.w
	bne -18.b
	jsr $AD56.w
	ldx $00CE.w
	dex
	dex
	dex
	dex
	stx $00CE.w
	bne -15.b
	jsr $AD56.w
	ldx $00CC.w
	dex
	dex
	dex
	dex
	stx $00CC.w
	bne -15.b
.ACCU 16
	rep #$20
.INDEX 8
	sep #$10
	jsr $AD56.w
	dec $00C2.w
	dec $00C2.w
	dec $00C6.w
	dec $00C6.w
	dec $00CA.w
	dec $00CA.w
	ldx $00C2.w
	cpx #$FE.b
	beq  29.b
	ldx $00C3.w
	beq -33.b
	lda $00C2.w
	cmp #$01D0.w
	bcs -41.b
	inc $00C0.w
	dec $00C8.w
	lda $00C2.w
	cmp #$0150.w
	bcc  15.b
	bra -57.b
	ldx #$01.b
	stx $00C3.w
	stx $00C7.w
	stx $00CB.w
	bra -70.b
	stz $0016.w
	jsr $AD56.w
	ldx $0016.w
	cpx #$3C.b
	bne -10.b
	ldx #$63.b
	stx OBJSEL.w		; Object Size and Chr Address
	lda #$90F8.w
	sta $0019.w
	sta $1000.w
	lda #$0080.w
	sta $1002.w
	jsr $AD56.w
	dec $0019.w
	dec $0019.w
	lda $0019.w
	sta $1000.w
	and #$00FF.w
	bne -20.b
	lda #$90F8.w
	sta $0019.w
	sta $1000.w
	lda #$208A.w
	sta $1002.w
	jsr $AD56.w
	dec $0019.w
	dec $0019.w
	lda $0019.w
	sta $1000.w
	and #$00FF.w
	bne -20.b
	lda #$90F8.w
	sta $0019.w
	sta $1000.w
	lda #$304E.w
	sta $001B.w
	sta $1002.w
	stz $0016.w
	jsr $AD56.w
	dec $0019.w
	dec $0019.w
	lda $0019.w
	sta $1000.w
	ldx $0016.w
	cpx #$08.b
	bne  32.b
	stz $0016.w
	dec $001B.w
	dec $001B.w
	lda $001B.w
	sta $1002.w
	lda $001B.w
	cmp #$303E.w
	bne   9.b
	lda #$304E.w
	sta $001B.w
	sta $1002.w
	lda $0019.w
	and #$00FF.w
	bne -62.b
	lda #$7800.w
	sta $0019.w
	lda #$30B2.w
	sta $001B.w
	ldx #$00.b
	lda $0019.w
	sta $1000.w,X
	inx
	inx
	lda $001B.w
	sta $1000.w,X
	inx
	inx
	clc		; Clear carry
	lda #$000E.w
	adc $0019.w
	sta $0019.w
	cpx #$48.b
	bne -30.b
	ldx #$80.b
	stx $00A0.w
	jsr $AD56.w
	stz $00D0.w
	ldy #$00.b
	ldx RDNMI.w		; NMI Flag and 5A22 Version
	bpl  -5.b
	ldx RDNMI.w		; NMI Flag and 5A22 Version
	inc $00D0.w
	ldx $00D0.w
	cpx #$22.b
	bne  11.b
	stz $00D0.w
	ldx $00D0.w
	iny
	cpy #$03.b
	beq   5.b
	stx OAMADDL.w		; OAM Address Low Byte
	bra -34.b
	ldx #$03.b
	stx SETINI.w		; Screen Mode/Video Select
	stz $0016.w
	jsr $AD56.w
	ldx $0016.w
	cpx #$78.b
	bne -10.b
	ldx #$00.b
	stx SETINI.w		; Screen Mode/Video Select
	lda #$F8F8.w
	sta $0010.w
	lda #$0000.w
	sta $0013.w
	jsr $AC80.w
	ldx #$03.b
	stx OBJSEL.w		; Object Size and Chr Address
	ldx #$10.b
	stx TMAIN.w		; Mainscreen Designation
	ldx #$20.b
	stx CGADSUB.w		; Color Math Designation
	ldx #$FF.b
	stx COLDATA.w		; Fixed Color Data
.INDEX 16
	rep #$10
.ACCU 8
	sep #$20
	ldx #$3060.w
	stx $0019.w
	ldx #$04A0.w
	stx $001B.w
	ldx #$0010.w
	lda $0019.w
	sta $1000.w,X
	inx
	lda $001A.w
	sta $1000.w,X
	inx
	lda $001B.w
	sta $1000.w,X
	inx
	lda $001C.w
	sta $1000.w,X
	inx
	clc		; Clear carry
	lda #$08.b
	adc $0019.w
	sta $0019.w
	inc $001B.w
	cpx #$002C.w
	bne -45.b
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	lda #$60A0.w
	sta $0019.w
	sta $1000.w
	clc		; Clear carry
	adc #$1000.w
	sta $1004.w
	lda #$000A.w
	sta $001B.w
	sta $1002.w
	clc		; Clear carry
	adc #$0020.w
	sta $1006.w
	lda #$000A.w
	sta $1200.w
	stz $0016.w
	jsr $AD56.w
	ldx $0016.w
	cpx #$14.b
	bne -10.b
	stz $0016.w
	sec		; Set carry
	lda $0019.w
	sbc #$0008.w
	sta $0019.w
	sta $1000.w
	clc		; Clear carry
	adc #$1000.w
	sta $1004.w
	dec $001B.w
	dec $001B.w
	lda $001B.w
	sta $1002.w
	clc		; Clear carry
	adc #$0020.w
	sta $1006.w
	cmp #$001E.w
	bne -57.b
	lda #$8080.w
	sta $0010.w
	lda #$FFFF.w
	sta $0013.w
	jsr $AC80.w
	ldx #$A3.b
	stx OBJSEL.w		; Object Size and Chr Address
	ldx #$00.b
	lda $9D64.w,X
	sta $1000.w,X
	inx
	inx
	cpx #$18.b
	bne -12.b
	lda #$F0A0.w
	sta $1200.w
	stz $0016.w
	lda #$0104.w
	sta $00D0.w
	lda #$0184.w
	sta $00D2.w
	jsr $AD56.w
	ldx $0016.w
	cpx #$3C.b
	bne -10.b
	stz $0016.w
	clc		; Clear carry
	lda $00D0.w
	adc #$4000.w
	sta $00D0.w
	sta $100A.w
	clc		; Clear carry
	lda $00D2.w
	adc #$4000.w
	sta $00D2.w
	sta $100E.w
	bmi   8.b
	lda $1008.w
	cmp #$8060.w
	bne -49.b
	lda #$8060.w
	sta $1008.w
	lda #$4060.w
	sta $100C.w
	lda $00D0.w
	and #$C000.w
	bne -69.b
	.db $80, $18		; Invalid branch target (bra L001D7C)
	jsr $0060.w
	ora ($20.b,X)
	.db $80, $40		; Invalid branch target (bra L001DAB)
	ora ($60.b,X)
	rti

	tsb $01.b		; 04 01
	rts		; 60

	bra -124.b		; 80 84
	ora ($C0.b,X)		; 01 C0
	rts		; 60

	brk $01.b		; 00 01
	cpy #$80.b		; C0 80
	rti		; 40

	ora ($A9.b,X)		; 01 A9
	sed		; F8
	sed		; F8
	sta $0010.w		; 8D 10 00
	lda #$0000.w		; A9 00 00
	sta $0013.w		; 8D 13 00
	jsr $AC80.w		; 20 80 AC
.INDEX 16
	rep #$10		; C2 10
.ACCU 8
	sep #$20		; E2 20
	lda #$03.b		; A9 03
	sta OBJSEL.w		; 8D 01 21
	ldx #$4060.w		; A2 60 40
	stx $0019.w		; 8E 19 00
	ldx #$0104.w		; A2 04 01
	stx $001B.w		; 8E 1B 00
	ldx #$0000.w		; A2 00 00
	lda $0019.w		; AD 19 00
	sta $1000.w,X		; 9D 00 10
	inx		; E8
	lda $001A.w		; AD 1A 00
	sta $1000.w,X		; 9D 00 10
	inx		; E8
	lda $001B.w		; AD 1B 00
	sta $1000.w,X		; 9D 00 10
	inx		; E8
	lda $001C.w		; AD 1C 00
	sta $1000.w,X		; 9D 00 10
	inx		; E8
	clc		; 18
	lda #$08.b		; A9 08
	adc $0019.w		; 6D 19 00
	sta $0019.w		; 8D 19 00
	cmp #$A0.b		; C9 A0
	.db $D0, $0E		; D0 0E
	lda #$60.b		; A9 60
	sta $0019.w		; 8D 19 00
	clc		; 18
	lda #$08.b		; A9 08
	adc $001A.w		; 6D 1A 00
	sta $001A.w		; 8D 1A 00
	inc $001B.w		; EE 1B 00
	lda $001B.w		; AD 1B 00
	and #$0F.b		; 29 0F
	cmp #$0C.b		; C9 0C
	.db $D0, $0B		; D0 0B
	clc		; 18
	lda #$10.b		; A9 10
	adc $001B.w		; 6D 1B 00
	and #$F4.b		; 29 F4
	sta $001B.w		; 8D 1B 00
	cpx #$0200.w		; E0 00 02
	.db $D0, $AD		; D0 AD
	stz $0016.w		; 9C 16 00
	jsr $AD56.w		; 20 56 AD
	lda $0016.w		; AD 16 00
	cmp #$3C.b		; C9 3C
	.db $D0, $F6		; D0 F6
	lda #$E0.b		; A9 E0
	sta COLDATA.w		; 8D 32 21
	jsr $AE4C.w		; 20 4C AE
	jsr $ADF5.w		; 20 F5 AD
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	jsr $AB0D.w		; 20 0D AB
	lda #$40.b		; A9 40
	sta BG1SC.w		; 8D 07 21
	lda #$50.b		; A9 50
	sta BG2SC.w		; 8D 08 21
	lda #$60.b		; A9 60
	sta BG3SC.w		; 8D 09 21
	lda #$70.b		; A9 70
	sta BG4SC.w		; 8D 0A 21
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$40.b		; A9 40
	sta VMADDH.w		; 8D 17 21
	ldy #$0980.w		; A0 80 09
	ldx #$0000.w		; A2 00 00
	sty VMDATAL.w		; 8C 18 21
	inx		; E8
	cpx #$1000.w		; E0 00 10
	.db $D0, $F7		; D0 F7
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$50.b		; A9 50
	sta VMADDH.w		; 8D 17 21
	ldy #$1180.w		; A0 80 11
	ldx #$0000.w		; A2 00 00
	sty VMDATAL.w		; 8C 18 21
	inx		; E8
	cpx #$1000.w		; E0 00 10
	.db $D0, $F7		; D0 F7
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$60.b		; A9 60
	sta VMADDH.w		; 8D 17 21
	ldy #$0580.w		; A0 80 05
	ldx #$0000.w		; A2 00 00
	sty VMDATAL.w		; 8C 18 21
	inx		; E8
	inx		; E8
	cpx #$1000.w		; E0 00 10
	.db $D0, $F6		; D0 F6
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$70.b		; A9 70
	sta VMADDH.w		; 8D 17 21
	ldy #$1D80.w		; A0 80 1D
	ldx #$0000.w		; A2 00 00
	sty VMDATAL.w		; 8C 18 21
	inx		; E8
	cpx #$1000.w		; E0 00 10
	.db $D0, $F7		; D0 F7
	lda #$0F.b		; A9 0F
	sta TMAIN.w		; 8D 2C 21
	lda #$F0.b		; A9 F0
	sta BGMODE.w		; 8D 05 21
	jsr $ADE3.w		; 20 E3 AD
	stz $0016.w		; 9C 16 00
	jsr $AD56.w		; 20 56 AD
	lda $0016.w		; AD 16 00
	cmp #$14.b		; C9 14
	.db $D0, $F6		; D0 F6
	lda #$01.b		; A9 01
	sta TMW.w		; 8D 2E 21
	lda #$80.b		; A9 80
	sta $00D0.w		; 8D D0 00
	sta $00D2.w		; 8D D2 00
	sta W1L.w		; 8D 26 21
	sta W1R.w		; 8D 27 21
	sta W2L.w		; 8D 28 21
	sta W2R.w		; 8D 29 21
	lda #$FA.b		; A9 FA
	sta W12SEL.w		; 8D 23 21
	sta W34SEL.w		; 8D 24 21
	jsr $AD56.w		; 20 56 AD
	lda $00D0.w		; AD D0 00
	sta W1L.w		; 8D 26 21
	lda $00D2.w		; AD D2 00
	sta W2R.w		; 8D 29 21
	dec $00D0.w		; CE D0 00
	dec $00D0.w		; CE D0 00
	inc $00D2.w		; EE D2 00
	inc $00D2.w		; EE D2 00
	lda $00D0.w		; AD D0 00
	.db $D0, $E0		; D0 E0
	lda #$0E.b		; A9 0E
	sta TMAIN.w		; 8D 2C 21
	lda #$02.b		; A9 02
	sta TMW.w		; 8D 2E 21
	stz W1L.w		; 9C 26 21
	stz W2L.w		; 9C 28 21
	stz $00D0.w		; 9C D0 00
	lda #$FF.b		; A9 FF
	sta W1R.w		; 8D 27 21
	sta W2R.w		; 8D 29 21
	sta $00D2.w		; 8D D2 00
	jsr $AD56.w		; 20 56 AD
	lda $00D0.w		; AD D0 00
	sta W1L.w		; 8D 26 21
	lda $00D2.w		; AD D2 00
	sta W2R.w		; 8D 29 21
	inc $00D0.w		; EE D0 00
	inc $00D0.w		; EE D0 00
	dec $00D2.w		; CE D2 00
	dec $00D2.w		; CE D2 00
	lda $00D0.w		; AD D0 00
	cmp #$80.b		; C9 80
	.db $D0, $DE		; D0 DE
	lda #$0C.b		; A9 0C
	sta TMAIN.w		; 8D 2C 21
	lda #$04.b		; A9 04
	sta TMW.w		; 8D 2E 21
	lda #$40.b		; A9 40
	sta W1L.w		; 8D 26 21
	sta W1R.w		; 8D 27 21
	sta $00D0.w		; 8D D0 00
	sta $00D1.w		; 8D D1 00
	lda #$C0.b		; A9 C0
	sta W2L.w		; 8D 28 21
	sta W2R.w		; 8D 29 21
	sta $00D2.w		; 8D D2 00
	sta $00D3.w		; 8D D3 00
	jsr $AD56.w		; 20 56 AD
	lda $00D0.w		; AD D0 00
	sta W1L.w		; 8D 26 21
	lda $00D1.w		; AD D1 00
	sta W1R.w		; 8D 27 21
	lda $00D2.w		; AD D2 00
	sta W2L.w		; 8D 28 21
	lda $00D3.w		; AD D3 00
	sta W2R.w		; 8D 29 21
	dec $00D0.w		; CE D0 00
	inc $00D1.w		; EE D1 00
	dec $00D2.w		; CE D2 00
	inc $00D3.w		; EE D3 00
	lda $00D0.w		; AD D0 00
	.db $D0, $D4		; D0 D4
	lda #$08.b		; A9 08
	sta TMAIN.w		; 8D 2C 21
	lda #$08.b		; A9 08
	sta TMW.w		; 8D 2E 21
	lda #$40.b		; A9 40
	sta WBGLOG.w		; 8D 2A 21
	stz W1L.w		; 9C 26 21
	stz $00D0.w		; 9C D0 00
	lda #$80.b		; A9 80
	sta W1R.w		; 8D 27 21
	sta $00D1.w		; 8D D1 00
	sta W2L.w		; 8D 28 21
	sta $00D2.w		; 8D D2 00
	lda #$FF.b		; A9 FF
	sta W2R.w		; 8D 29 21
	sta $00D3.w		; 8D D3 00
	jsr $AD56.w		; 20 56 AD
	lda $00D0.w		; AD D0 00
	sta W1L.w		; 8D 26 21
	lda $00D1.w		; AD D1 00
	sta W1R.w		; 8D 27 21
	lda $00D2.w		; AD D2 00
	sta W2L.w		; 8D 28 21
	lda $00D3.w		; AD D3 00
	sta W2R.w		; 8D 29 21
	inc $00D0.w		; EE D0 00
	dec $00D1.w		; CE D1 00
	inc $00D2.w		; EE D2 00
	dec $00D3.w		; CE D3 00
	lda $00D0.w		; AD D0 00
	cmp #$40.b		; C9 40
	.db $D0, $D2		; D0 D2
.INDEX 8
	sep #$10		; E2 10
	lda #$00.b		; A9 00
	ldx #$03.b		; A2 03
	sta $2120.w,X		; 9D 20 21
	inx		; E8
	cpx #$0B.b		; E0 0B
	.db $D0, $F8		; D0 F8
	stz TMW.w		; 9C 2E 21
	jsr $ADF5.w		; 20 F5 AD
	lda #$07.b		; A9 07
	sta TMAIN.w		; 8D 2C 21
	lda #$00.b		; A9 00
	sta TSUB.w		; 8D 2D 21
	lda #$60.b		; A9 60
	sta BG1SC.w		; 8D 07 21
	lda #$68.b		; A9 68
	sta BG2SC.w		; 8D 08 21
	lda #$71.b		; A9 71
	sta BG3SC.w		; 8D 09 21
	sta BG4SC.w		; 8D 0A 21
	lda #$00.b		; A9 00
	sta BG12NBA.w		; 8D 0B 21
	lda #$03.b		; A9 03
	sta BG34NBA.w		; 8D 0C 21
	lda #$02.b		; A9 02
	sta CGWSEL.w		; 8D 30 21
	lda #$43.b		; A9 43
	sta CGADSUB.w		; 8D 31 21
	jsr $A9BD.w		; 20 BD A9
	ldx #$09.b		; A2 09
	stx BGMODE.w		; 8E 05 21
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	sta VMADDH.w		; 8D 17 21
	ldx #$0000.w		; A2 00 00
	lda $02A000.l,X		; BF 00 A0 02
	sta VMDATAL.w		; 8D 18 21
	inx		; E8
	lda $02A000.l,X		; BF 00 A0 02
	sta VMDATAH.w		; 8D 19 21
	inx		; E8
	cpx #$4000.w		; E0 00 40
	.db $D0, $EB		; D0 EB
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$30.b		; A9 30
	sta VMADDH.w		; 8D 17 21
	ldx #$0000.w		; A2 00 00
	lda $028000.l,X		; BF 00 80 02
	sta VMDATAL.w		; 8D 18 21
	inx		; E8
	lda $028000.l,X		; BF 00 80 02
	sta VMDATAH.w		; 8D 19 21
	inx		; E8
	cpx #$2000.w		; E0 00 20
	.db $D0, $EB		; D0 EB
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$60.b		; A9 60
	sta VMADDH.w		; 8D 17 21
	ldx #$0000.w		; A2 00 00
	lda $03B000.l,X		; BF 00 B0 03
	sta VMDATAL.w		; 8D 18 21
	inx		; E8
	lda $03B000.l,X		; BF 00 B0 03
	sta VMDATAH.w		; 8D 19 21
	inx		; E8
	cpx #$0800.w		; E0 00 08
	.db $D0, $EB		; D0 EB
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$68.b		; A9 68
	sta VMADDH.w		; 8D 17 21
	ldx #$0000.w		; A2 00 00
	lda $03B800.l,X		; BF 00 B8 03
	sta VMDATAL.w		; 8D 18 21
	inx		; E8
	lda $03B800.l,X		; BF 00 B8 03
	sta VMDATAH.w		; 8D 19 21
	inx		; E8
	cpx #$0800.w		; E0 00 08
	.db $D0, $EB		; D0 EB
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$70.b		; A9 70
	sta VMADDH.w		; 8D 17 21
	ldx #$0000.w		; A2 00 00
	lda $00C800.l,X		; BF 00 C8 00
	sta VMDATAL.w		; 8D 18 21
	inx		; E8
	lda $00C800.l,X		; BF 00 C8 00
	sta VMDATAH.w		; 8D 19 21
	inx		; E8
	cpx #$2000.w		; E0 00 20
	.db $D0, $EB		; D0 EB
	lda #$77.b		; A9 77
	sta VMADDL.w		; 8D 16 21
	lda #$72.b		; A9 72
	sta VMADDH.w		; 8D 17 21
	ldx #$0031.w		; A2 31 00
	stx VMDATAL.w		; 8E 18 21
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$00.b		; A9 00
	sta CGADD.w		; 8D 21 21
	ldx #$0100.w		; A2 00 01
.ACCU 16
	rep #$20		; C2 20
	lda $02EA00.l,X		; BF 00 EA 02
.ACCU 8
	sep #$20		; E2 20
	sta CGDATA.w		; 8D 22 21
	xba		; EB
	sta CGDATA.w		; 8D 22 21
	inx		; E8
	inx		; E8
	cpx #$0200.w		; E0 00 02
	.db $D0, $EA		; D0 EA
	jsr $ADE3.w		; 20 E3 AD
	stz $0016.w		; 9C 16 00
	jsr $AD56.w		; 20 56 AD
	ldx $0016.w		; AE 16 00
	cpx #$003C.w		; E0 3C 00
	.db $D0, $F5		; D0 F5
	ldx #$0001.w		; A2 01 00
	stx BGMODE.w		; 8E 05 21
.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	ldx #$00.b		; A2 00
	jsr $AE4C.w		; 20 4C AE
	jsr $AD56.w		; 20 56 AD
	inc $00C4.w		; EE C4 00
	inc $00C4.w		; EE C4 00
	inc $00C0.w		; EE C0 00
	lda $00C0.w		; AD C0 00
	cmp #$00FF.w		; C9 FF 00
	.db $D0, $EC		; D0 EC
	jsr $AE4C.w		; 20 4C AE
.ACCU 8
	sep #$20		; E2 20
.INDEX 8
	sep #$10		; E2 10
	jsr $ADF5.w		; 20 F5 AD
	lda #$03.b		; A9 03
	sta TMAIN.w		; 8D 2C 21
	lda #$00.b		; A9 00
	sta TSUB.w		; 8D 2D 21
	lda #$60.b		; A9 60
	sta BG1SC.w		; 8D 07 21
	lda #$68.b		; A9 68
	sta BG2SC.w		; 8D 08 21
	lda #$71.b		; A9 71
	sta BG3SC.w		; 8D 09 21
	sta BG4SC.w		; 8D 0A 21
	lda #$00.b		; A9 00
	sta BG12NBA.w		; 8D 0B 21
	lda #$00.b		; A9 00
	sta BG34NBA.w		; 8D 0C 21
	lda #$00.b		; A9 00
	sta CGWSEL.w		; 8D 30 21
	lda #$00.b		; A9 00
	sta CGADSUB.w		; 8D 31 21
	ldx #$02.b		; A2 02
	stx BGMODE.w		; 8E 05 21
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$60.b		; A9 60
	sta VMADDH.w		; 8D 17 21
	ldy #$04D8.w		; A0 D8 04
	ldx #$0000.w		; A2 00 00
	sty VMDATAL.w		; 8C 18 21
	inx		; E8
	cpx #$0800.w		; E0 00 08
	.db $D0, $F7		; D0 F7
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$68.b		; A9 68
	sta VMADDH.w		; 8D 17 21
	ldx #$0000.w		; A2 00 00
	lda $03D000.l,X		; BF 00 D0 03
	sta VMDATAL.w		; 8D 18 21
	inx		; E8
	lda $03D000.l,X		; BF 00 D0 03
	sta VMDATAH.w		; 8D 19 21
	inx		; E8
	cpx #$0800.w		; E0 00 08
	.db $D0, $EB		; D0 EB
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	jsr $ADE3.w		; 20 E3 AD
.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	ldx #$14.b		; A2 14
	stx W1L.w		; 8E 26 21
	ldx #$94.b		; A2 94
	stx W1R.w		; 8E 27 21
	ldx #$59.b		; A2 59
	stx W2L.w		; 8E 28 21
	ldx #$EB.b		; A2 EB
	stx W2R.w		; 8E 29 21
	ldx #$0A.b		; A2 0A
	stx W12SEL.w		; 8E 23 21
	ldx #$01.b		; A2 01
	stx TMW.w		; 8E 2E 21
	ldx #$04.b		; A2 04
	stx DMAP1.w		; 8E 10 43
	ldx #$26.b		; A2 26
	stx DMADEST1.w		; 8E 11 43
	lda #$A2B4.w		; A9 B4 A2
	sta DMASRC1L.w		; 8D 12 43
	ldx #$00.b		; A2 00
	stx DMASRC1B.w		; 8E 14 43
	ldx RDNMI.w		; AE 10 42
	.db $10, $FB		; 10 FB
	ldx RDNMI.w		; AE 10 42
	ldx #$02.b		; A2 02
	stx HDMAEN.w		; 8E 0C 42
.ACCU 8
	sep #$20		; E2 20
	ldx #$01.b		; A2 01
	stx TMW.w		; 8E 2E 21
	ldx #$80.b		; A2 80
	stx NMITIMEN.w		; 8E 00 42
	ldx #$00.b		; A2 00
	stz $0016.w		; 9C 16 00
	jsr $AD56.w		; 20 56 AD
	inc $00C4.w		; EE C4 00
	ldy $0016.w		; AC 16 00
	cpy #$32.b		; C0 32
	.db $D0, $F3		; D0 F3
	stz $0016.w		; 9C 16 00
	lda $A2A6.w,X		; BD A6 A2
	sta WBGLOG.w		; 8D 2A 21
	inx		; E8
	lda $A2A6.w,X		; BD A6 A2
	sta W12SEL.w		; 8D 23 21
	inx		; E8
	cpx #$0E.b		; E0 0E
	.db $D0, $DE		; D0 DE
	ldx #$00.b		; A2 00
	stx HDMAEN.w		; 8E 0C 42
	stx TMW.w		; 8E 2E 21
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	ldx RDNMI.w		; AE 10 42
	.db $10, $FB		; 10 FB
	ldx RDNMI.w		; AE 10 42
	lda #$68.b		; A9 68
	sta BG1SC.w		; 8D 07 21
	ldx #$01.b		; A2 01
	stx TMAIN.w		; 8E 2C 21
	ldx #$80.b		; A2 80
	stx VMAIN.w		; 8E 15 21
	stz VMADDL.w		; 9C 16 21
	ldx #$70.b		; A2 70
	stx VMADDH.w		; 8E 17 21
	stz $00D0.w		; 9C D0 00
	lda #$10.b		; A9 10
	ldx #$F0.b		; A2 F0
	sta VMDATAL.w		; 8D 18 21
	stx VMDATAH.w		; 8E 19 21
	inc $00D0.w		; EE D0 00
	ldy $00D0.w		; AC D0 00
	cpy #$10.b		; C0 10
	.db $D0, $F0		; D0 F0
	lda #$90.b		; A9 90
	sta VMDATAL.w		; 8D 18 21
	stx VMDATAH.w		; 8E 19 21
	inc $00D0.w		; EE D0 00
	ldy $00D0.w		; AC D0 00
	cpy #$20.b		; C0 20
	.db $D0, $F0		; D0 F0
	stz $00D0.w		; 9C D0 00
	stx VMDATAH.w		; 8E 19 21
	lda $00D0.w		; AD D0 00
	sta VMDATAL.w		; 8D 18 21
	inc $00D0.w		; EE D0 00
	ldy $00D0.w		; AC D0 00
	cpy #$20.b		; C0 20
	.db $D0, $ED		; D0 ED
	stx $0016.w		; 8E 16 00
	jsr $AD56.w		; 20 56 AD
	lda $0016.w		; AD 16 00
	cmp #$3C.b		; C9 3C
	.db $D0, $F6		; D0 F6
	jmp $A3FA.w		; 4C FA A3
	brk $0A.b		; 00 0A
	cop $0A.b		; 02 0A
	ora ($0A.b,X)		; 01 0A
	ora ($0F.b,X)		; 01 0F
	ora $0A.b,S		; 03 0A
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	sec		; 38
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($56.b,X)		; 01 56
	rtl		; 6B

	stx $AB.b,Y		; 96 AB
	ora ($52.b,X)		; 01 52
	adc $01AF92.l		; 6F 92 AF 01
	lsr $8E73.w		; 4E 73 8E
	lda ($01.b,S),Y		; B3 01
	jmp $8C75.w		; 4C 75 8C
	lda $01.b,X		; B5 01
	eor #$78.b		; 49 78
	bit #$B8.b		; 89 B8
	ora ($47.b,X)		; 01 47
	ply		; 7A
	sta [$BA.b]		; 87 BA
	ora ($45.b,X)		; 01 45
	jmp ($BC85.w,X)		; 7C 85 BC
	ora ($44.b,X)		; 01 44
	adc $BD84.w,X		; 7D 84 BD
	ora ($42.b,X)		; 01 42
	adc $01BF82.l,X		; 7F 82 BF 01
	eor ($80.b,X)		; 41 80
	sta ($C0.b,X)		; 81 C0
	ora ($3F.b,X)		; 01 3F
	.db $82, $7F, $C2		; 82 7F C2
	ora ($3E.b,X)		; 01 3E
	sta $7E.b,S		; 83 7E
	cmp $01.b,S		; C3 01
	and $7D84.w,X		; 3D 84 7D
	cpy $01.b		; C4 01
	tsa		; 3B
	stx $7B.b		; 86 7B
	dec $01.b		; C6 01
	dec A		; 3A
	sta [$7A.b]		; 87 7A
	cmp [$01.b]		; C7 01
	and $7988.w,Y		; 39 88 79
	iny		; C8
	ora ($38.b,X)		; 01 38
	bit #$78.b		; 89 78
	cmp #$01.b		; C9 01
	and [$8A.b],Y		; 37 8A
	adc [$CA.b],Y		; 77 CA
	cop $36.b		; 02 36
	phb		; 8B
	ror $CB.b,X		; 76 CB
	ora ($35.b,X)		; 01 35
	sty $CD75.w		; 8C 75 CD
	ora ($34.b,X)		; 01 34
	sty $CD74.w		; 8C 74 CD
	cop $33.b		; 02 33
	stx $CE73.w		; 8E 73 CE
	ora ($32.b,X)		; 01 32
	sta $02CF72.l		; 8F 72 CF 02
	and ($90.b),Y		; 31 90
	adc ($D0.b),Y		; 71 D0
	ora ($30.b,X)		; 01 30
	sta ($70.b),Y		; 91 70
	cmp ($02.b),Y		; D1 02
	and $D26F92.l		; 2F 92 6F D2
	cop $2E.b		; 02 2E
	sta ($6E.b,S),Y		; 93 6E
	cmp ($03.b,S),Y		; D3 03
	and $6D94.w		; 2D 94 6D
	pei ($02.b)		; D4 02
	bit $6C95.w		; 2C 95 6C
	cmp $04.b,X		; D5 04
	pld		; 2B
	stx $6B.b,Y		; 96 6B
	dec $04.b,X		; D6 04
	rol A		; 2A
	sta [$6A.b],Y		; 97 6A
	cmp [$15.b],Y		; D7 15
	and #$98.b		; 29 98
	adc #$D8.b		; 69 D8
	cop $2A.b		; 02 2A
	sta [$6A.b],Y		; 97 6A
	cmp [$02.b],Y		; D7 02
	pld		; 2B
	stx $6B.b,Y		; 96 6B
	dec $02.b,X		; D6 02
	bit $6C95.w		; 2C 95 6C
	cmp $02.b,X		; D5 02
	and $6D94.w		; 2D 94 6D
	pei ($02.b)		; D4 02
	rol $6E93.w		; 2E 93 6E
	cmp ($02.b,S),Y		; D3 02
	and $D26F92.l		; 2F 92 6F D2
	ora ($30.b,X)		; 01 30
	sta ($70.b),Y		; 91 70
	cmp ($02.b),Y		; D1 02
	and ($90.b),Y		; 31 90
	adc ($D0.b),Y		; 71 D0
	ora ($32.b,X)		; 01 32
	sta $02CF72.l		; 8F 72 CF 02
	and ($8E.b,S),Y		; 33 8E
	adc ($CE.b,S),Y		; 73 CE
	ora ($34.b,X)		; 01 34
	sta $CD74.w		; 8D 74 CD
	ora ($35.b,X)		; 01 35
	sty $CC75.w		; 8C 75 CC
	cop $36.b		; 02 36
	phb		; 8B
	ror $CB.b,X		; 76 CB
	ora ($37.b,X)		; 01 37
	txa		; 8A
	adc [$CA.b],Y		; 77 CA
	ora ($38.b,X)		; 01 38
	bit #$78.b		; 89 78
	cmp #$01.b		; C9 01
	and $7988.w,Y		; 39 88 79
	iny		; C8
	ora ($3A.b,X)		; 01 3A
	sta [$7A.b]		; 87 7A
	cmp [$01.b]		; C7 01
	tsa		; 3B
	stx $7B.b		; 86 7B
	dec $01.b		; C6 01
	and $7D84.w,X		; 3D 84 7D
	cpy $01.b		; C4 01
	rol $7E84.w,X		; 3E 84 7E
	cmp $01.b,S		; C3 01
	and $C27F82.l,X		; 3F 82 7F C2
	ora ($41.b,X)		; 01 41
	.db $80, $81		; 80 81
	cpy #$01.b		; C0 01
	.db $42, $7F		; 42 7F
	.db $82, $BF, $01		; 82 BF 01
	mvp $84,$7D		; 44 7D 84
	lda $4501.w,X		; BD 01 45
	jmp ($BC85.w,X)		; 7C 85 BC
	ora ($47.b,X)		; 01 47
	ply		; 7A
	sta [$BA.b]		; 87 BA
	ora ($49.b,X)		; 01 49
	sei		; 78
	bit #$B8.b		; 89 B8
	ora ($4C.b,X)		; 01 4C
	adc $8C.b,X		; 75 8C
	lda $01.b,X		; B5 01
	lsr $8E73.w		; 4E 73 8E
	lda ($01.b,S),Y		; B3 01
	eor ($6F.b)		; 52 6F
	sta ($AF.b)		; 92 AF
	ora ($56.b,X)		; 01 56
	rtl		; 6B

	stx $AB.b,Y		; 96 AB
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	jsr $ADF5.w		; 20 F5 AD
	lda #$01.b		; A9 01
	sta TMAIN.w		; 8D 2C 21
	lda #$02.b		; A9 02
	sta TSUB.w		; 8D 2D 21
	lda #$7C.b		; A9 7C
	sta BG1SC.w		; 8D 07 21
	lda #$74.b		; A9 74
	sta BG2SC.w		; 8D 08 21
	lda #$58.b		; A9 58
	sta BG3SC.w		; 8D 09 21
	sta BG4SC.w		; 8D 0A 21
	lda #$60.b		; A9 60
	sta BG12NBA.w		; 8D 0B 21
	lda #$00.b		; A9 00
	sta BG34NBA.w		; 8D 0C 21
	lda #$02.b		; A9 02
	sta CGWSEL.w		; 8D 30 21
	lda #$43.b		; A9 43
	sta CGADSUB.w		; 8D 31 21
	jsr $A9BD.w		; 20 BD A9
	ldx #$03.b		; A2 03
	stx BGMODE.w		; 8E 05 21
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	sta VMADDH.w		; 8D 17 21
	ldx #$0000.w		; A2 00 00
	lda $018000.l,X		; BF 00 80 01
	sta VMDATAL.w		; 8D 18 21
	inx		; E8
	lda $018000.l,X		; BF 00 80 01
	sta VMDATAH.w		; 8D 19 21
	inx		; E8
	cpx #$8000.w		; E0 00 80
	.db $D0, $EB		; D0 EB
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$60.b		; A9 60
	sta VMADDH.w		; 8D 17 21
	ldx #$0000.w		; A2 00 00
	lda $02A000.l,X		; BF 00 A0 02
	sta VMDATAL.w		; 8D 18 21
	inx		; E8
	lda $02A000.l,X		; BF 00 A0 02
	sta VMDATAH.w		; 8D 19 21
	inx		; E8
	cpx #$2000.w		; E0 00 20
	.db $D0, $EB		; D0 EB
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$74.b		; A9 74
	sta VMADDH.w		; 8D 17 21
	ldy #$04D8.w		; A0 D8 04
	ldx #$0000.w		; A2 00 00
	sty VMDATAL.w		; 8C 18 21
	inx		; E8
	cpx #$0800.w		; E0 00 08
	.db $D0, $F7		; D0 F7
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$7C.b		; A9 7C
	sta VMADDH.w		; 8D 17 21
	ldx #$0000.w		; A2 00 00
	lda $02E000.l,X		; BF 00 E0 02
	sta VMDATAL.w		; 8D 18 21
	inx		; E8
	lda $02E000.l,X		; BF 00 E0 02
	sta VMDATAH.w		; 8D 19 21
	inx		; E8
	cpx #$0800.w		; E0 00 08
	.db $D0, $EB		; D0 EB
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$00.b		; A9 00
	sta CGADD.w		; 8D 21 21
	ldx #$0000.w		; A2 00 00
.ACCU 16
	rep #$20		; C2 20
	lda $02E800.l,X		; BF 00 E8 02
.ACCU 8
	sep #$20		; E2 20
	sta CGDATA.w		; 8D 22 21
	xba		; EB
	sta CGDATA.w		; 8D 22 21
	inx		; E8
	inx		; E8
	cpx #$0200.w		; E0 00 02
	.db $D0, $EA		; D0 EA
	jsr $AE4C.w		; 20 4C AE
	jsr $ADFF.w		; 20 FF AD
.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	ldx #$00.b		; A2 00
	lda #$0001.w		; A9 01 00
	sta $00C4.w		; 8D C4 00
	jsr $AD56.w		; 20 56 AD
	inc $00C4.w		; EE C4 00
	inc $00C4.w		; EE C4 00
	lda $00C4.w		; AD C4 00
	cmp #$00FF.w		; C9 FF 00
	.db $D0, $EF		; D0 EF
	ldx #$A0.b		; A2 A0
	stx WOBJSEL.w		; 8E 25 21
	ldx #$00.b		; A2 00
	stx W1L.w		; 8E 26 21
	stx W1R.w		; 8E 27 21
	stx $00D0.w		; 8E D0 00
	ldx #$FF.b		; A2 FF
	stx W2L.w		; 8E 28 21
	stx W2R.w		; 8E 29 21
	inc $00D0.w		; EE D0 00
	ldx #$22.b		; A2 22
	stx CGWSEL.w		; 8E 30 21
	jsr $AD56.w		; 20 56 AD
	ldx $00D0.w		; AE D0 00
	stx W1R.w		; 8E 27 21
	inc $00D0.w		; EE D0 00
	inc $00D0.w		; EE D0 00
	ldx $00D0.w		; AE D0 00
	cpx #$FF.b		; E0 FF
	.db $D0, $EA		; D0 EA
	stz TSUB.w		; 9C 2D 21
	stz $00D0.w		; 9C D0 00
	inc $00D0.w		; EE D0 00
	ldx #$82.b		; A2 82
	stx CGWSEL.w		; 8E 30 21
	jsr $AD56.w		; 20 56 AD
	ldx $00D0.w		; AE D0 00
	stx W1R.w		; 8E 27 21
	inc $00D0.w		; EE D0 00
	inc $00D0.w		; EE D0 00
	ldx $00D0.w		; AE D0 00
	cpx #$FF.b		; E0 FF
	.db $D0, $EA		; D0 EA
	jsr $ADF5.w		; 20 F5 AD
	jsr $AE4C.w		; 20 4C AE
.ACCU 8
	sep #$20		; E2 20
.INDEX 8
	sep #$10		; E2 10
	jsr $ADF5.w		; 20 F5 AD
	lda #$7C.b		; A9 7C
	sta BG1SC.w		; 8D 07 21
	lda #$54.b		; A9 54
	sta BG2SC.w		; 8D 08 21
	lda #$7C.b		; A9 7C
	sta BG3SC.w		; 8D 09 21
	sta BG4SC.w		; 8D 0A 21
	lda #$00.b		; A9 00
	sta BG12NBA.w		; 8D 0B 21
	sta BG34NBA.w		; 8D 0C 21
	lda #$01.b		; A9 01
	sta TMAIN.w		; 8D 2C 21
	lda #$30.b		; A9 30
	sta CGWSEL.w		; 8D 30 21
	lda #$00.b		; A9 00
	sta CGADSUB.w		; 8D 31 21
	ldx #$04.b		; A2 04
	stx BGMODE.w		; 8E 05 21
	jmp $A613.w		; 4C 13 A6
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	sta VMADDH.w		; 8D 17 21
	ldx #$0000.w		; A2 00 00
	lda $088000.l,X		; BF 00 80 08
	sta VMDATAL.w		; 8D 18 21
	inx		; E8
	lda $088000.l,X		; BF 00 80 08
	sta VMDATAH.w		; 8D 19 21
	inx		; E8
	cpx #$8000.w		; E0 00 80
	.db $D0, $EB		; D0 EB
	ldx #$0000.w		; A2 00 00
	lda $098000.l,X		; BF 00 80 09
	sta VMDATAL.w		; 8D 18 21
	inx		; E8
	lda $098000.l,X		; BF 00 80 09
	sta VMDATAH.w		; 8D 19 21
	inx		; E8
	cpx #$8000.w		; E0 00 80
	.db $D0, $EB		; D0 EB
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$7C.b		; A9 7C
	sta VMADDH.w		; 8D 17 21
	ldx #$0000.w		; A2 00 00
	lda $0A8000.l,X		; BF 00 80 0A
	sta VMDATAL.w		; 8D 18 21
	inx		; E8
	lda $0A8000.l,X		; BF 00 80 0A
	sta VMDATAH.w		; 8D 19 21
	inx		; E8
	cpx #$0800.w		; E0 00 08
	.db $D0, $EB		; D0 EB
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$00.b		; A9 00
	sta CGADD.w		; 8D 21 21
	ldx #$0000.w		; A2 00 00
.ACCU 16
	rep #$20		; C2 20
	lda $0A8800.l,X		; BF 00 88 0A
.ACCU 8
	sep #$20		; E2 20
	sta CGDATA.w		; 8D 22 21
	xba		; EB
	sta CGDATA.w		; 8D 22 21
	inx		; E8
	inx		; E8
	cpx #$0200.w		; E0 00 02
	.db $D0, $EA		; D0 EA
.INDEX 8
	sep #$10		; E2 10
	ldx #$F1.b		; A2 F1
	stx MOSAIC.w		; 8E 06 21
	jsr $ADE3.w		; 20 E3 AD
	jsr $AE2F.w		; 20 2F AE
	jsr $AE5F.w		; 20 5F AE
.ACCU 8
	sep #$20		; E2 20
.INDEX 8
	sep #$10		; E2 10
	jsr $ADF5.w		; 20 F5 AD
	lda #$50.b		; A9 50
	sta BG1SC.w		; 8D 07 21
	lda #$5B.b		; A9 5B
	sta BG2SC.w		; 8D 08 21
	lda #$7C.b		; A9 7C
	sta BG3SC.w		; 8D 09 21
	sta BG4SC.w		; 8D 0A 21
	lda #$10.b		; A9 10
	sta BG12NBA.w		; 8D 0B 21
	sta BG34NBA.w		; 8D 0C 21
	lda #$00.b		; A9 00
	sta W12SEL.w		; 8D 23 21
	lda #$01.b		; A9 01
	sta TMAIN.w		; 8D 2C 21
	lda #$01.b		; A9 01
	sta TSUB.w		; 8D 2D 21
	lda #$00.b		; A9 00
	sta CGWSEL.w		; 8D 30 21
	lda #$00.b		; A9 00
	sta CGADSUB.w		; 8D 31 21
	jsr $A9BD.w		; 20 BD A9
	ldx #$15.b		; A2 15
	stx BGMODE.w		; 8E 05 21
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	sta VMADDH.w		; 8D 17 21
	ldx #$0000.w		; A2 00 00
	lda $02A000.l,X		; BF 00 A0 02
	sta VMDATAL.w		; 8D 18 21
	inx		; E8
	lda $02A000.l,X		; BF 00 A0 02
	sta VMDATAH.w		; 8D 19 21
	inx		; E8
	cpx #$4000.w		; E0 00 40
	.db $D0, $EB		; D0 EB
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$50.b		; A9 50
	sta VMADDH.w		; 8D 17 21
	ldy #$00B2.w		; A0 B2 00
	ldx #$0000.w		; A2 00 00
	sty VMDATAL.w		; 8C 18 21
	inx		; E8
	cpx #$1000.w		; E0 00 10
	.db $D0, $F7		; D0 F7
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$00.b		; A9 00
	sta CGADD.w		; 8D 21 21
	ldx #$0100.w		; A2 00 01
.ACCU 16
	rep #$20		; C2 20
	lda $02EA00.l,X		; BF 00 EA 02
.ACCU 8
	sep #$20		; E2 20
	sta CGDATA.w		; 8D 22 21
	xba		; EB
	sta CGDATA.w		; 8D 22 21
	inx		; E8
	inx		; E8
	cpx #$0200.w		; E0 00 02
	.db $D0, $EA		; D0 EA
.INDEX 8
	sep #$10		; E2 10
.ACCU 16
	rep #$20		; C2 20
	lda #$0050.w		; A9 50 00
	sta $00C6.w		; 8D C6 00
	jsr $ADE3.w		; 20 E3 AD
	stz $0016.w		; 9C 16 00
	jsr $AD56.w		; 20 56 AD
	inc $00C0.w		; EE C0 00
	ldx $0016.w		; AE 16 00
	cpx #$B4.b		; E0 B4
	.db $D0, $F3		; D0 F3
	lda #$0000.w		; A9 00 00
	sta $00C6.w		; 8D C6 00
	ldx RDNMI.w		; AE 10 42
	.db $10, $FB		; 10 FB
	ldx RDNMI.w		; AE 10 42
	.db $10, $FB		; 10 FB
	ldx RDNMI.w		; AE 10 42
	ldx #$01.b		; A2 01
	stx SETINI.w		; 8E 33 21
	stz $0016.w		; 9C 16 00
	jsr $AD56.w		; 20 56 AD
	inc $00C0.w		; EE C0 00
	ldx $0016.w		; AE 16 00
	cpx #$B4.b		; E0 B4
	.db $D0, $F3		; D0 F3
	stz $00C0.w		; 9C C0 00
	stz $00C6.w		; 9C C6 00
	stz SETINI.w		; 9C 33 21
.ACCU 8
	sep #$20		; E2 20
.INDEX 8
	sep #$10		; E2 10
	jsr $ADF5.w		; 20 F5 AD
	ldx #$06.b		; A2 06
	stx BGMODE.w		; 8E 05 21
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	sta VMADDH.w		; 8D 17 21
	ldx #$0000.w		; A2 00 00
	lda $02A000.l,X		; BF 00 A0 02
	sta VMDATAL.w		; 8D 18 21
	inx		; E8
	lda $02A000.l,X		; BF 00 A0 02
	sta VMDATAH.w		; 8D 19 21
	inx		; E8
	cpx #$4000.w		; E0 00 40
	.db $D0, $EB		; D0 EB
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	lda #$50.b		; A9 50
	sta VMADDH.w		; 8D 17 21
.INDEX 16
	rep #$10		; C2 10
	ldx #$0000.w		; A2 00 00
	lda $03C000.l,X		; BF 00 C0 03
	sta VMDATAL.w		; 8D 18 21
	inx		; E8
	lda $03C000.l,X		; BF 00 C0 03
	sta VMDATAH.w		; 8D 19 21
	inx		; E8
	cpx #$1000.w		; E0 00 10
	.db $D0, $EB		; D0 EB
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$00.b		; A9 00
	sta CGADD.w		; 8D 21 21
	ldx #$0100.w		; A2 00 01
.ACCU 16
	rep #$20		; C2 20
	lda $02EA00.l,X		; BF 00 EA 02
.ACCU 8
	sep #$20		; E2 20
	sta CGDATA.w		; 8D 22 21
	xba		; EB
	sta CGDATA.w		; 8D 22 21
	inx		; E8
	inx		; E8
	cpx #$0200.w		; E0 00 02
	.db $D0, $EA		; D0 EA
	jsr $ADE3.w		; 20 E3 AD
.INDEX 8
	sep #$10		; E2 10
.ACCU 16
	rep #$20		; C2 20
	stz $0016.w		; 9C 16 00
	jsr $AD56.w		; 20 56 AD
	ldx $0016.w		; AE 16 00
	cpx #$B4.b		; E0 B4
	.db $D0, $F6		; D0 F6
	lda #$0000.w		; A9 00 00
	stz $0016.w		; 9C 16 00
	ldx #$01.b		; A2 01
	stx SETINI.w		; 8E 33 21
	jsr $AD56.w		; 20 56 AD
	ldx $0016.w		; AE 16 00
	cpx #$B4.b		; E0 B4
	.db $D0, $F6		; D0 F6
	stz SETINI.w		; 9C 33 21
	jsr $B4A4.w		; 20 A4 B4
	jmp $801F.w		; 4C 1F 80
	php		; 08
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	ldx #$0000.w		; A2 00 00
	lda RDNMI.w		; AD 10 42
	.db $10, $FB		; 10 FB
	lda RDNMI.w		; AD 10 42
	lda RDNMI.w		; AD 10 42
	.db $10, $FB		; 10 FB
	lda RDNMI.w		; AD 10 42
	inx		; E8
	lda RDNMI.w		; AD 10 42
	.db $10, $FA		; 10 FA
	lda RDNMI.w		; AD 10 42
	plp		; 28
	rtl		; 6B

	php
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	jsr $ADF5.w
	ldx #$80.b
	stx VMAIN.w		; Video Port Control
	ldx $0021.w
	txa
	asl A
	asl A
	asl A
	asl A
	asl A
	ldx $0020.w
	stz $10.b
	stx $10.b
	clc		; Clear carry
	adc $10.b
	ora #$5000.w
	sta VMADDL.w		; VRAM Address Low Byte
	lda $0024.w
	asl A
	asl A
	tay
	lda ($22.b)
	tax
	beq  12.b
	stx VMDATAL.w		; VRAM Data Write Low Byte
	sty VMDATAH.w		; VRAM Data Write High Byte
	inc $0022.w
	jmp $A809.w
	jsr $ADE3.w
	plp
	rts

	php
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	ldx #$FF.b
	stx INIDSP.w		; Screen Display
	ldx #$80.b
	stx VMAIN.w		; Video Port Control
	ldx $0021.w
	txa
	asl A
	asl A
	asl A
	asl A
	asl A
	ldx $0020.w
	stz $10.b
	stx $10.b
	clc		; Clear carry
	adc $10.b
	ora #$5000.w
	sta VMADDL.w		; VRAM Address Low Byte
	lda $0024.w
	asl A
	asl A
	tay
	ldx $0091.w
	stx VMDATAL.w		; VRAM Data Write Low Byte
	sty VMDATAH.w		; VRAM Data Write High Byte
	ldx $0090.w
	stx VMDATAL.w		; VRAM Data Write Low Byte
	sty VMDATAH.w		; VRAM Data Write High Byte
	jsr $ADE3.w
	plp
	rts

	ldx $0026.w
	stx WRMPYA.w		; Multiplicand A
	ldx $0027.w
	stx WRMPYB.w		; Multplier B
	lda RDMPYL.w		; Multiplication Product or Divide Remainder Low Byte
	lda RDMPYL.w		; Multiplication Product or Divide Remainder Low Byte
	sta $0028.w
	rts

	ldx $002A.w
	ldy $002B.w
	stx M7A.w		; Mode 7 Matrix A
	sty M7A.w		; Mode 7 Matrix A
	ldx $002C.w
	stx M7B.w		; Mode 7 Matrix B
	stx M7B.w		; Mode 7 Matrix B
	ldx MPYL.w		; Multiplication Result Low Byte
	stx $002D.w
	lda MPYM.w		; Multiplication Result Middle Byte
	sta $002E.w
	rts

	lda $0030.w
	sta WRDIVL.w		; Dividend Low Byte
	ldx $0032.w
	stx WRDIVB.w		; Divisor
	lda #$0000.w
	lda RDDIVL.w		; Quotient of Divide Result Low Byte
	lda RDDIVL.w		; Quotient of Divide Result Low Byte
	lda RDDIVL.w		; Quotient of Divide Result Low Byte
	sta $0033.w
	lda RDMPYL.w		; Multiplication Product or Divide Remainder Low Byte
	sta $0035.w
	rts

	eor $7261.w		; 4D 61 72
	stz $69.b,X		; 74 69
	ror $4520.w		; 6E 20 45
	adc $73.b		; 65 73
	adc $6161.w		; 6D 61 61
	jsr $4E53.w		; 20 53 4E
	eor $53.b		; 45 53
	jsr $0020.w		; 20 20 00
	mvn $73,$65		; 54 65 73
	stz $69.b,X		; 74 69
	adc $6E69.w		; 6D 69 6E
	adc $20.b		; 65 20
	lsr $65.b,X		; 56 65
	adc ($20.b)		; 72 20
	eor $45.b		; 45 45
	and ($2E.b),Y		; 31 2E
	.db $30, $30		; 30 30
	brk $54.b		; 00 54
	tay		; A8
	tay		; A8
	jsr $A74D.w		; 20 4D A7
	jmp $0055.w		; 4C 55 00
	mvp $41,$52		; 44 52 41
	eor $5600.w		; 4D 00 56
	eor ($41.b)		; 52 41
	eor $4E20.w		; 4D 20 4E
	ldx $52.b		; A6 52
	brk $56.b		; 00 56
	eor ($41.b)		; 52 41
	eor $4B20.w		; 4D 20 4B
	ldx $52.b		; A6 52
	eor [$00.b]		; 47 00
	mvp $41,$4D		; 44 4D 41
	jsr $4552.w		; 20 52 45
	eor [$49.b]		; 47 49
	eor ($54.b,S),Y		; 53 54
	eor $52.b		; 45 52
	brk $4F.b		; 00 4F
	eor ($4D.b,X)		; 41 4D
	brk $43.b		; 00 43
	eor [$4D.b]		; 47 4D
	lda [$4C.b]		; A7 4C
	eor $00.b,X		; 55 00
	eor $5950.w		; 4D 50 59
	jsr $7838.w		; 20 38 78
	sec		; 38
	brk $4D.b		; 00 4D
	.db $50, $59		; 50 59
	jsr $3631.w		; 20 31 36
	cli		; 58
	sec		; 38
	brk $44.b		; 00 44
	eor $56.b		; 45 56
	jsr $3631.w		; 20 31 36
	and $440038.l		; 2F 38 00 44
	eor $0041.w		; 4D 41 00
	pha		; 48
	lsr $54.b,X		; 56 54
	eor ($49.b,X)		; 41 49
	eor $5245.w		; 4D 45 52
	brk $56.b		; 00 56
	eor ($41.b)		; 52 41
	eor $4120.w		; 4D 20 41
	eor ($56.b)		; 52 56
	eor $44.b,X		; 55 44
	brk $32.b		; 00 32
	and ($34.b)		; 32 34
	and $393332.l		; 2F 32 33 39
	adc ($65.b)		; 72 65
	tax		; AA
	rol $5600.w		; 2E 00 56
	lda [$4C.b]		; A7 4C
	eor #$2020.w		; 49 20 20
	jmp $7069.w		; 4C 69 70
	.db $70, $00		; 70 00
	lsr $48.b,X		; 56 48
	jsr $2020.w		; 20 20 20
	jsr $694C.w		; 20 4C 69
	.db $70, $70		; 70 70
	brk $4F.b		; 00 4F
	.db $42, $4A		; 42 4A
	jsr $204C.w		; 20 4C 20
	jmp $42A7.w		; 4C A7 42
	eor #$4300.w		; 49 00 43
	.db $50, $55		; 50 55
	jsr $4C43.w		; 20 43 4C
	eor $004B43.l		; 4F 43 4B 00
	eor ($50.b,X)		; 41 50
	eor $00.b,X		; 55 00
	.db $50, $41		; 50 41
	eor ($53.b,S),Y		; 53 53
	and ($00.b),Y		; 31 00
	bvc  65.b		; 50 41
	eor ($53.b,S),Y		; 53 53
	and ($00.b)		; 32 00
	.db $50, $41		; 50 41
	eor ($53.b,S),Y		; 53 53
	and ($00.b,S),Y		; 33 00
	eor $00214B.l		; 4F 4B 21 00
	mvn $52,$A6		; 54 A6 52
	eor [$45.b]		; 47 45
	and ($00.b,X)		; 21 00
	php
.INDEX 8
	sep #$10
	ldy #$10.b
	ldx RDNMI.w		; NMI Flag and 5A22 Version
	ldx RDNMI.w		; NMI Flag and 5A22 Version
	bpl  -5.b
	dey
	bne -11.b
	plp
	rts

	php
.INDEX 8
	sep #$10
	stz $0000.w
	ldx #$09.b
	stx DMAP0.w		; DMA 0 Control
	ldx #$18.b
	stx DMADEST0.w		; DMA 0 Destination Register
	ldx #$00.b
	stx DMASRC0L.w		; DMA 0 Source Adress Low Byte
	ldx #$00.b
	stx DMASRC0H.w		; DMA 0 Source Address High Byte
	ldx #$00.b
	stx DMASRC0B.w		; DMA 0 Source Address Bank
	ldx #$00.b
	stx DMALEN0L.w		; DMA 0 Transfer Size Low Byte
	ldx #$00.b
	stx DMALEN0H.w		; DMA 0 Transfer Size High Byte
	ldx #$80.b
	stx VMAIN.w		; Video Port Control
	ldx #$00.b
	stx VMADDL.w		; VRAM Address Low Byte
	ldx #$00.b
	stx VMADDH.w		; VRAM Address High Byte
	ldx #$01.b
	stx MDMAEN.w		; DMA Channel Enable
	plp
	rts

	php
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	ldx #$01.b
	stx DMAP0.w		; DMA 0 Control
	ldx #$18.b
	stx DMADEST0.w		; DMA 0 Destination Register
	lda #$8000.w
	sta DMASRC0L.w		; DMA 0 Source Adress Low Byte
	ldx #$02.b
	stx DMASRC0B.w		; DMA 0 Source Address Bank
	lda #$2000.w
	sta DMALEN0L.w		; DMA 0 Transfer Size Low Byte
	ldx #$80.b
	stx VMAIN.w		; Video Port Control
	lda #$0000.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx #$01.b
	stx MDMAEN.w		; DMA Channel Enable
	plp
	rts

	php
.ACCU 16
	rep #$20
.INDEX 8
	sep #$10
	ldx #$8F.b
	stx INIDSP.w		; Screen Display
	ldx #$01.b
	stx DMAP0.w		; DMA 0 Control
	ldx #$18.b
	stx DMADEST0.w		; DMA 0 Destination Register
	lda #$A000.w
	sta DMASRC0L.w		; DMA 0 Source Adress Low Byte
	ldx #$02.b
	stx DMASRC0B.w		; DMA 0 Source Address Bank
	lda #$2000.w
	sta DMALEN0L.w		; DMA 0 Transfer Size Low Byte
	ldx #$80.b
	stx VMAIN.w		; Video Port Control
	lda #$6000.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx #$01.b
	stx MDMAEN.w		; DMA Channel Enable
	plp
	rts

	php
.ACCU 16
	rep #$20
.INDEX 8
	sep #$10
	ldx #$8F.b
	stx INIDSP.w		; Screen Display
	ldx #$01.b
	stx DMAP0.w		; DMA 0 Control
	ldx #$18.b
	stx DMADEST0.w		; DMA 0 Destination Register
	lda #$A000.w
	sta DMASRC0L.w		; DMA 0 Source Adress Low Byte
	ldx #$02.b
	stx DMASRC0B.w		; DMA 0 Source Address Bank
	lda #$4000.w
	sta DMALEN0L.w		; DMA 0 Transfer Size Low Byte
	ldx #$80.b
	stx VMAIN.w		; Video Port Control
	lda #$6000.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx #$01.b
	stx MDMAEN.w		; DMA Channel Enable
	plp
	rts

	php
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	ldx #$01.b
	stx DMAP6.w		; DMA 6 Control
	ldx #$18.b
	stx DMADEST6.w		; DMA 6 Destination Register
	lda #$4000.w
	sta DMASRC6L.w		; DMA 6 Source Adress Low Byte
	ldx #$7E.b
	stx DMASRC6B.w		; DMA 6 Source Address Bank
	lda #$1000.w
	sta DMALEN6L.w		; DMA 6 Transfer Size Low Byte
	lda #$5000.w
	sta VMADDL.w		; VRAM Address Low Byte
	ldx #$40.b
	stx MDMAEN.w		; DMA Channel Enable
	plp
	rts

	php
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	ldx #$FF.b
	stx INIDSP.w		; Screen Display
	ldx #$80.b
	stx VMAIN.w		; Video Port Control
	lda #$5000.w
	sta VMADDL.w		; VRAM Address Low Byte
	lda VMDATALREAD.w		; VRAM Data Read Low Byte
	ldx #$81.b
	stx DMAP7.w		; DMA 7 Control
	ldx #$39.b
	stx DMADEST7.w		; DMA 7 Destination Register
	lda #$4000.w
	sta DMASRC7L.w		; DMA 7 Source Adress Low Byte
	ldx #$7E.b
	stx DMASRC7B.w		; DMA 7 Source Address Bank
	lda #$1000.w
	sta DMALEN7L.w		; DMA 7 Transfer Size Low Byte
	ldx #$80.b
	stx MDMAEN.w		; DMA Channel Enable
	ldx #$FF.b
	stx INIDSP.w		; Screen Display
	ldx #$00.b
	stx VMAIN.w		; Video Port Control
	plp
	rts

	php
.INDEX 8
	sep #$10
.ACCU 16
	rep #$20
	ldx #$00.b
	stx DMAP0.w		; DMA 0 Control
	ldx #$22.b
	stx DMADEST0.w		; DMA 0 Destination Register
	lda #$AB5A.w
	sta DMASRC0L.w		; DMA 0 Source Adress Low Byte
	ldx #$00.b
	stx DMASRC0B.w		; DMA 0 Source Address Bank
	lda #$0100.w
	sta DMALEN0L.w		; DMA 0 Transfer Size Low Byte
	ldx #$00.b
	stx CGADD.w		; CGRAM Address
	ldx #$01.b
	stx MDMAEN.w		; DMA Channel Enable
	ldx #$80.b
	stx CGADD.w		; CGRAM Address
.INDEX 16
	rep #$10
	ldx #$0100.w
.ACCU 16
	rep #$20
	lda $02EA00.l,X
.ACCU 8
	sep #$20
	sta CGDATA.w		; CGRAM Data Write
	xba
	sta CGDATA.w		; CGRAM Data Write
	inx
	inx
	cpx #$0200.w
	bne -22.b
	jmp $AC5A.w
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	brk $7C.b
	brk $7C.b
	brk $7C.b
	brk $00.b
	ora $001F00.l,X
	ora $000000.l,X
	ora $7C1F7C.l,X
	ora $00007C.l,X
	cpx #$E003.w
	ora $E0.b,S
	ora $00.b,S
	brk $E0.b
	adc $E07FE0.l,X
	adc $FF0000.l,X
	ora $FF.b,S
	ora $FF.b,S
	ora $00.b,S
	brk $FF.b
	sbc $FFFFFF.l,X
	sbc $000000.l,X
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	jmp ($7C00.w,X)
	brk $7C.b
	brk $00.b
	ora $001F00.l,X
	ora $000000.l,X
	ora $7C1F7C.l,X
	ora $00007C.l,X
	cpx #$E003.w
	ora $E0.b,S
	ora $00.b,S
	brk $E0.b
	adc $E07FE0.l,X
	adc $FF0000.l,X
	ora $FF.b,S
	ora $FF.b,S
	ora $00.b,S
	brk $FF.b
	sbc $FFFFFF.l,X
	sbc $000000.l,X
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	jmp ($7C00.w,X)
	brk $7C.b
	brk $00.b
	ora $001F00.l,X
	ora $000000.l,X
	ora $7C1F7C.l,X
	ora $00007C.l,X
	cpx #$E003.w
	ora $E0.b,S
	ora $00.b,S
	brk $E0.b
	adc $E07FE0.l,X
	adc $FF0000.l,X
	ora $FF.b,S
	ora $FF.b,S
	ora $00.b,S
	brk $FF.b
	sbc $FFFFFF.l,X
	sbc $000000.l,X
	brk $00.b
	brk $00.b
	brk $00.b
	brk $00.b
	jmp ($7C00.w,X)
	brk $7C.b
	brk $00.b
	ora $001F00.l,X
	ora $000000.l,X
	ora $7C1F7C.l,X
	ora $00007C.l,X
	cpx #$E003.w
	ora $E0.b,S
	ora $00.b,S
	brk $E0.b
	adc $E07FE0.l,X
	adc $FF0000.l,X
	ora $FF.b,S
	ora $FF.b,S
	ora $00.b,S
	brk $FF.b
	sbc $FFFFFF.l,X
	sbc $486028.l,X
	php
.ACCU 8
	sep #$20
	lsr A
	lsr A
	lsr A
	lsr A
	jsr $AC77.w
	sta $0091.w
	plp
	pla
	php
	and #$0F.b
	jsr $AC77.w
	sta $0090.w
	plp
	rts

	ora #$30.b
	cmp #$3A.b
	bcc   2.b
	adc #$06.b
	rts

	pha
	phx
	php
.INDEX 16
	rep #$10
.ACCU 16
	rep #$20
	ldx #$0000.w
	lda $0010.w
	sta $1000.w,X
	inx
	inx
	cpx #$0200.w
	bne -13.b
	ldx #$0000.w
	lda $0013.w
	sta $1200.w,X
	inx
	inx
	cpx #$0020.w
	bne -13.b
	plp
	plx
	pla
	rts

	pha
	phx
	phy
	php
.INDEX 16
	rep #$10
.ACCU 8
	sep #$20
	inc $0016.w
	stz OAMADDL.w		; OAM Address Low Byte
	lda $00A0.w
	sta OAMADDH.w		; OAM Address High Byte
	lda #$00.b
	sta DMAP0.w		; DMA 0 Control
	lda #$04.b
	sta DMADEST0.w		; DMA 0 Destination Register
	ldx #$1000.w
	stx DMASRC0L.w		; DMA 0 Source Adress Low Byte
	lda #$00.b
	sta DMASRC0B.w		; DMA 0 Source Address Bank
	ldx #$0220.w
	stx DMALEN0L.w		; DMA 0 Transfer Size Low Byte
	lda #$01.b
	sta MDMAEN.w		; DMA Channel Enable
	lda RDNMI.w		; NMI Flag and 5A22 Version
	lda #$01.b
	sta $00B0.w
.ACCU 8
	sep #$20
	lda STAT77.w		; 5C77 PPU-1 Status Flag and Version
	sta $0048.w
.INDEX 8
	sep #$10
	ldx $00C0.w
	stx BG1HOFS.w		; BG1 Horizontal Scroll / Mode 7 BG Horizontal Scroll
	ldx $00C1.w
	stx BG1HOFS.w		; BG1 Horizontal Scroll / Mode 7 BG Horizontal Scroll
	ldx $00C2.w
	stx BG1VOFS.w		; BG1 Vertical Scroll / Mode 7 BG Vertical Scroll
	ldx $00C3.w
	stx BG1VOFS.w		; BG1 Vertical Scroll / Mode 7 BG Vertical Scroll
	ldx $00C4.w
	stx BG2HOFS.w		; BG2 Horizontal Scroll
	ldx $00C5.w
	stx BG2HOFS.w		; BG2 Horizontal Scroll
	ldx $00C6.w
	stx BG2VOFS.w		; BG2 Vertical Scroll
	ldx $00C7.w
	stx BG2VOFS.w		; BG2 Vertical Scroll
	ldx $00C8.w
	stx BG3HOFS.w		; BG3 Horizontal Scroll
	ldx $00C9.w
	stx BG3HOFS.w		; BG3 Horizontal Scroll
	ldx $00CA.w
	stx BG3VOFS.w		; BG3 Vertical Scroll
	ldx $00CB.w
	stx BG3VOFS.w		; BG3 Vertical Scroll
	ldx $00CC.w
	stx BG4HOFS.w		; BG4 Horizontal Scroll
	ldx $00CD.w
	stx BG4HOFS.w		; BG4 Horizontal Scroll
	ldx $00CE.w
	stx BG4VOFS.w		; BG4 Vertical Scroll
	ldx $00CF.w
	stx BG4VOFS.w		; BG4 Vertical Scroll
	plp
	ply
	plx
	pla
	rti

	pha
	phy
	phx
	php
.INDEX 8
	sep #$10
.ACCU 8
	sep #$20
	stz $00B0.w
	lda $00A1.w
	ora #$80.b
	sta NMITIMEN.w		; Interrupt Enable Flags
	sta $00A1.w
	lda $00B0.w
	beq  -5.b
	lda $00A1.w
	and #$7F.b
	sta NMITIMEN.w		; Interrupt Enable Flags
	sta $00A1.w
	plp
	plx
	ply
	pla
	rts

	cmp $2137.w
	pha
	phy
	phx
	php
.ACCU 8
	sep #$20
.INDEX 8
	sep #$10
	lda $00A1.w
	and #$80.b
	sta $00A1.w
	sta NMITIMEN.w		; Interrupt Enable Flags
	inc $00B1.w
	plp
	plx
	ply
	pla
	rti

	php		; 08
.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	ldx #$FF.b		; A2 FF
	stx INIDSP.w		; 8E 00 21
	ldx #$80.b		; A2 80
	stx VMAIN.w		; 8E 15 21
	lda #$6000.w		; A9 00 60
	sta VMADDL.w		; 8D 16 21
	lda VMDATALREAD.w		; AD 39 21
	ldx #$81.b		; A2 81
	stx DMAP7.w		; 8E 70 43
	ldx #$39.b		; A2 39
	stx DMADEST7.w		; 8E 71 43
	lda #$0000.w		; A9 00 00
	sta DMASRC7L.w		; 8D 72 43
	ldx #$7F.b		; A2 7F
	stx DMASRC7B.w		; 8E 74 43
	lda #$1000.w		; A9 00 10
	sta DMALEN7L.w		; 8D 75 43
	ldx #$80.b		; A2 80
	stx MDMAEN.w		; 8E 0B 42
	ldx #$FF.b		; A2 FF
	stx INIDSP.w		; 8E 00 21
	ldx #$80.b		; A2 80
	stx VMAIN.w		; 8E 15 21
	plp		; 28
	rts		; 60

	php
.ACCU 8
	sep #$20
	lda RDNMI.w		; NMI Flag and 5A22 Version
	bpl  -5.b
	lda RDNMI.w		; NMI Flag and 5A22 Version
	lda #$0F.b
	sta INIDSP.w		; Screen Display
	plp
	rts

	php
.ACCU 8
	sep #$20
	lda #$8F.b
	sta INIDSP.w		; Screen Display
	plp
	rts

	php		; 08
.INDEX 8
	sep #$10		; E2 10
	ldy #$0D.b		; A0 0D
	ldx #$00.b		; A2 00
	jsr $AD56.w		; 20 56 AD
	dey		; 88
	.db $D0, $FA		; D0 FA
	ldy #$0D.b		; A0 0D
	inx		; E8
	stx INIDSP.w		; 8E 00 21
	cpx #$0F.b		; E0 0F
	.db $D0, $F0		; D0 F0
	plp		; 28
	rts		; 60

	php		; 08
.INDEX 8
	sep #$10		; E2 10
	ldy #$02.b		; A0 02
	ldx #$0F.b		; A2 0F
	jsr $AD56.w		; 20 56 AD
	dey		; 88
	.db $D0, $FA		; D0 FA
	ldy #$02.b		; A0 02
	dex		; CA
	stx INIDSP.w		; 8E 00 21
	.db $D0, $F2		; D0 F2
	plp		; 28
	rts		; 60

	php		; 08
.INDEX 8
	sep #$10		; E2 10
.ACCU 8
	sep #$20		; E2 20
	lda #$F1.b		; A9 F1
	ldx #$0B.b		; A2 0B
	jsr $AD56.w		; 20 56 AD
	dex		; CA
	.db $D0, $FA		; D0 FA
	ldx #$0B.b		; A2 0B
	sec		; 38
	sbc #$10.b		; E9 10
	sta MOSAIC.w		; 8D 06 21
	cmp #$01.b		; C9 01
	.db $D0, $EE		; D0 EE
	plp		; 28
	rts		; 60

	php
.ACCU 8
	sep #$20
.INDEX 8
	sep #$10
	lda #$00.b
	ldx #$00.b
	sta $00C0.w,X
	inx
	cpx #$10.b
	bne  -8.b
	plp
	rts

	php		; 08
.INDEX 8
	sep #$10		; E2 10
	ldx #$00.b		; A2 00
	stx CGWSEL.w		; 8E 30 21
	ldx #$01.b		; A2 01
	stx CGADSUB.w		; 8E 31 21
	ldy #$00.b		; A0 00
	ldx #$1E.b		; A2 1E
	jsr $AEC8.w		; 20 C8 AE
	lda $AE95.w,Y		; B9 95 AE
	.db $F0, $1B		; F0 1B
	sta CGADSUB.w		; 8D 31 21
	iny		; C8
	lda $AE95.w,Y		; B9 95 AE
	sta COLDATA.w		; 8D 32 21
	iny		; C8
	lda $AE95.w,Y		; B9 95 AE
	sta COLDATA.w		; 8D 32 21
	iny		; C8
	lda $AE95.w,Y		; B9 95 AE
	sta COLDATA.w		; 8D 32 21
	iny		; C8
	.db $80, $DB		; 80 DB
	plp		; 28
	rts		; 60

	ora ($3F.b,X)		; 01 3F
	rti		; 40

	.db $80, $41		; 80 41
	jsr $805F.w		; 20 5F 80
	eor ($20.b,X)		; 41 20
	rti		; 40

	sta $403FC1.l,X		; 9F C1 3F 40
	.db $80, $81		; 80 81
	jsr $805F.w		; 20 5F 80
	sta ($20.b,X)		; 81 20
	rti		; 40

	sta $402001.l,X		; 9F 01 20 40
	.db $80, $00		; 80 00
	php		; 08
.ACCU 8
	sep #$20		; E2 20
.INDEX 8
	sep #$10		; E2 10
	ldx #$00.b		; A2 00
	stx $0016.w		; 8E 16 00
	jsr $AD56.w		; 20 56 AD
	ldx $0016.w		; AE 16 00
	cpx #$3C.b		; E0 3C
	.db $D0, $F6		; D0 F6
	plp		; 28
	rts		; 60

	jsr $AD56.w		; 20 56 AD
	dex		; CA
	.db $D0, $FA		; D0 FA
	rts		; 60

.ACCU 16
	rep #$20		; C2 20
.INDEX 16
	rep #$10		; C2 10
	jsr $B0B2.w		; 20 B2 B0
	lda #$0070.w		; A9 70 00
	sta BG1SC.w		; 8D 07 21
.INDEX 16
	rep #$10		; C2 10
	jsr $B0BF.w		; 20 BF B0
	jsr $B282.w		; 20 82 B2
	jsr $B0A5.w		; 20 A5 B0
	lda #$00C0.w		; A9 C0 00
	sta $21C0.w		; 8D C0 21
	jsr $AD56.w		; 20 56 AD
	jsr $B407.w		; 20 07 B4
	jsr $AEF8.w		; 20 F8 AE
	.db $80, $F5		; 80 F5
	lda $00E1.w		; AD E1 00
	jsr $AFCD.w		; 20 CD AF
	inc A		; 1A
	lda $32AF26.l		; AF 26 AF 32
	lda $4AAF3E.l		; AF 3E AF 4A
	lda $62AF56.l		; AF 56 AF 62
	lda $7AAF6E.l		; AF 6E AF 7A
	lda $92AF86.l		; AF 86 AF 92
	lda $AEAFA0.l		; AF A0 AF AE
	lda $ADAFBC.l		; AF BC AF AD
	sbc $00.b,S		; E3 00
	jsr $AFCD.w		; 20 CD AF
	and ($B0.b,X)		; 21 B0
	cmp $AF.b,S		; C3 AF
	eor [$B0.b]		; 47 B0
	lda $00E3.w		; AD E3 00
	jsr $AFCD.w		; 20 CD AF
	and ($B0.b,X)		; 21 B0
	dec $AF.b		; C6 AF
	eor [$B0.b]		; 47 B0
	lda $00E3.w		; AD E3 00
	jsr $AFCD.w		; 20 CD AF
	and ($B0.b,X)		; 21 B0
	dec $AF.b		; C6 AF
	eor [$B0.b]		; 47 B0
	lda $00E3.w		; AD E3 00
	jsr $AFCD.w		; 20 CD AF
	and ($B0.b,X)		; 21 B0
	dec $AF.b		; C6 AF
	eor [$B0.b]		; 47 B0
	lda $00E3.w		; AD E3 00
	jsr $AFCD.w		; 20 CD AF
	and ($B0.b,X)		; 21 B0
	dec $AF.b		; C6 AF
	eor [$B0.b]		; 47 B0
	lda $00E3.w		; AD E3 00
	jsr $AFCD.w		; 20 CD AF
	and ($B0.b,X)		; 21 B0
	dec $AF.b		; C6 AF
	eor [$B0.b]		; 47 B0
	lda $00E3.w		; AD E3 00
	jsr $AFCD.w		; 20 CD AF
	and ($B0.b,X)		; 21 B0
	dec $AF.b		; C6 AF
	eor [$B0.b]		; 47 B0
	lda $00E3.w		; AD E3 00
	jsr $AFCD.w		; 20 CD AF
	and ($B0.b,X)		; 21 B0
	dec $AF.b		; C6 AF
	eor [$B0.b]		; 47 B0
	lda $00E3.w		; AD E3 00
	jsr $AFCD.w		; 20 CD AF
	and ($B0.b,X)		; 21 B0
	dec $AF.b		; C6 AF
	eor [$B0.b]		; 47 B0
	lda $00E3.w		; AD E3 00
	jsr $AFCD.w		; 20 CD AF
	and ($B0.b,X)		; 21 B0
	dec $AF.b		; C6 AF
	eor [$B0.b]		; 47 B0
	lda $00E3.w		; AD E3 00
	jsr $AFCD.w		; 20 CD AF
	and ($B0.b,X)		; 21 B0
	eor $B0.b,S		; 43 B0
	dec $AF.b		; C6 AF
	eor [$B0.b]		; 47 B0
	lda $00E3.w		; AD E3 00
	jsr $AFCD.w		; 20 CD AF
	and ($B0.b,X)		; 21 B0
	eor $B0.b,S		; 43 B0
	dec $AF.b		; C6 AF
	eor [$B0.b]		; 47 B0
	lda $00E3.w		; AD E3 00
	jsr $AFCD.w		; 20 CD AF
	and ($B0.b,X)		; 21 B0
	eor $B0.b,S		; 43 B0
	dec $AF.b		; C6 AF
	eor [$B0.b]		; 47 B0
	stz $00E1.w		; 9C E1 00
	stz $00E3.w		; 9C E3 00
	rts		; 60

	stz $00E5.w		; 9C E5 00
	jsr $B3B9.w		; 20 B9 B3
	inc $00E3.w		; EE E3 00
	rts		; 60

	asl A		; 0A
	tax		; AA
	pla		; 68
	sta $00D0.w		; 8D D0 00
	txa		; 8A
	sec		; 38
	adc $00D0.w		; 6D D0 00
	tax		; AA
	lda $0000.w,X		; BD 00 00
	sta $00D0.w		; 8D D0 00
	jmp ($00D0.w)		; 6C D0 00
	php		; 08
.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	stz $0000.w		; 9C 00 00
	ldx #$09.b		; A2 09
	stx DMAP0.w		; 8E 00 43
	ldx #$18.b		; A2 18
	stx DMADEST0.w		; 8E 01 43
	ldx #$00.b		; A2 00
	stx DMASRC0L.w		; 8E 02 43
	ldx #$00.b		; A2 00
	stx DMASRC0H.w		; 8E 03 43
	ldx #$00.b		; A2 00
	stx DMASRC0B.w		; 8E 04 43
	ldx #$00.b		; A2 00
	stx DMALEN0L.w		; 8E 05 43
	ldx #$04.b		; A2 04
	stx DMALEN0H.w		; 8E 06 43
	ldx #$80.b		; A2 80
	stx VMAIN.w		; 8E 15 21
	sta VMADDL.w		; 8D 16 21
	ldx #$00.b		; A2 00
	stx VMADDH.w		; 8E 17 21
	ldx #$01.b		; A2 01
	stx MDMAEN.w		; 8E 0B 42
	plp		; 28
	rts		; 60

	php		; 08
.ACCU 8
	sep #$20		; E2 20
.INDEX 8
	sep #$10		; E2 10
	ldx $00E1.w		; AE E1 00
	lda $B036.w,X		; BD 36 B0
	sta $21C8.w		; 8D C8 21
.ACCU 16
	rep #$20		; C2 20
	inc $00E3.w		; EE E3 00
	plp		; 28
	rts		; 60

	ora ($02.b,X)		; 01 02
	brk $04.b		; 00 04
	ora $40.b,S		; 03 40
	.db $50, $60		; 50 60
	.db $70, $80		; 70 80
	.db $90, $A0		; 90 A0
	cpy #$EE.b		; C0 EE
	sbc $00.b,S		; E3 00
	rts		; 60

	stz $00E3.w		; 9C E3 00
	inc $00E1.w		; EE E1 00
	rts		; 60

	php		; 08
.ACCU 16
	rep #$20		; C2 20
	stx $D0.b		; 86 D0
.INDEX 8
	sep #$10		; E2 10
	ldx #$80.b		; A2 80
	stx VMAIN.w		; 8E 15 21
	ldy #$01.b		; A0 01
	lda ($D0.b),Y		; B1 D0
	and #$00FF.w		; 29 FF 00
	sta $00D4.w		; 8D D4 00
	lda ($D0.b)		; B2 D0
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	clc		; 18
	adc $00D4.w		; 6D D4 00
	and #$0FFF.w		; 29 FF 0F
	ora #$7000.w		; 09 00 70
	sta VMADDL.w		; 8D 16 21
	inc $D0.b		; E6 D0
	inc $D0.b		; E6 D0
	lda ($D0.b)		; B2 D0
	asl A		; 0A
	asl A		; 0A
	tay		; A8
	inc $D0.b		; E6 D0
	lda ($D0.b)		; B2 D0
	and #$00FF.w		; 29 FF 00
	sta $001D.w		; 8D 1D 00
	inc $00D0.w		; EE D0 00
	lda ($D0.b)		; B2 D0
	tax		; AA
	stx VMDATAL.w		; 8E 18 21
	sty VMDATAH.w		; 8C 19 21
	inc $D0.b		; E6 D0
	dec $001D.w		; CE 1D 00
	.db $D0, $F0		; D0 F0
	lda ($D0.b)		; B2 D0
	tax		; AA
	.db $D0, $B7		; D0 B7
	plp		; 28
	rts		; 60

	php		; 08
	jsr $AD56.w		; 20 56 AD
.ACCU 8
	sep #$20		; E2 20
	lda #$0F.b		; A9 0F
	sta INIDSP.w		; 8D 00 21
	plp		; 28
	rts		; 60

	php		; 08
	jsr $AD56.w		; 20 56 AD
.ACCU 8
	sep #$20		; E2 20
	lda #$80.b		; A9 80
	sta INIDSP.w		; 8D 00 21
	plp		; 28
	rts		; 60

	ldx #$C6.b		; A2 C6
	.db $B0, $20		; B0 20
	lsr $60B0.w		; 4E B0 60
	ora ($04.b,X)		; 01 04
	asl $0D.b		; 06 0D
	eor ($55.b,S),Y		; 53 55
	.db $50, $45		; 50 45
	eor ($20.b)		; 52 20
	lsr $41.b		; 46 41
	eor HDMATBL4H.w		; 4D 49 43
	eor $0B024D.l		; 4F 4D 02 0B
	asl $11.b		; 06 11
	eor $6165.w		; 4D 65 61
	adc ($75.b,S),Y		; 73 75
	adc ($6D.b)		; 72 6D
	adc $6E.b		; 65 6E
	stz $20.b,X		; 74 20
	eor ($79.b,S),Y		; 53 79
	adc ($74.b,S),Y		; 73 74
	adc $6D.b		; 65 6D
	tsb $02.b		; 04 02
	ora $15.b		; 05 15
	lsr $44.b,X		; 56 44
	mvp $20,$20		; 44 20 20
	jsr $6F43.w		; 20 43 6F
	ror $3174.w		; 6E 74 31
	rol $2E2E.w		; 2E 2E 2E
	rol $202E.w		; 2E 2E 20
	jsr $2020.w		; 20 20 20
	lsr $05.b,X		; 56 05
	php		; 08
	ora $0F.b		; 05 0F
	eor $6F.b,S		; 43 6F
	ror $3274.w		; 6E 74 32
	rol $2E2E.w		; 2E 2E 2E
	rol $202E.w		; 2E 2E 20
	jsr $2020.w		; 20 20 20
	lsr $06.b,X		; 56 06
	php		; 08
	ora $0F.b		; 05 0F
	rol $32.b,X		; 36 32
	.db $50, $2E		; 50 2E
	rol $2E2E.w		; 2E 2E 2E
	rol $2E2E.w		; 2E 2E 2E
	jsr $2020.w		; 20 20 20
	jsr $0756.w		; 20 56 07
	php		; 08
	ora $0F.b		; 05 0F
	eor $78.b		; 45 78
	stz $2E.b,X		; 74 2E
	rol $2E2E.w		; 2E 2E 2E
	rol $2E2E.w		; 2E 2E 2E
	jsr $2020.w		; 20 20 20
	jsr $0856.w		; 20 56 08
	php		; 08
	ora $0F.b		; 05 0F
	eor $6C75.w		; 4D 75 6C
	stz $69.b,X		; 74 69
	rol $2E2E.w		; 2E 2E 2E
	rol $202E.w		; 2E 2E 20
	jsr $2020.w		; 20 20 20
	lsr $09.b,X		; 56 09
	cop $05.b		; 02 05
	ora $4C.b,X		; 15 4C
	adc $76.b		; 65 76
	adc $6C.b		; 65 6C
	jsr $7953.w		; 20 53 79
	adc ($20.b,S),Y		; 73 20
	adc $6B.b,S		; 63 6B
	rol $2E2E.w		; 2E 2E 2E
	rol $2020.w		; 2E 20 20
	jsr $5620.w		; 20 20 56
	asl A		; 0A
	php		; 08
	ora $0F.b		; 05 0F
	and ($31.b)		; 32 31
	eor $2E2E.w		; 4D 2E 2E
	rol $2E2E.w		; 2E 2E 2E
	rol $202E.w		; 2E 2E 20
	jsr $2020.w		; 20 20 20
	lsr $0B.b,X		; 56 0B
	php		; 08
	ora $0F.b		; 05 0F
	mvp $74,$6F		; 44 6F 74
	jsr $6B63.w		; 20 63 6B
	rol $2E2E.w		; 2E 2E 2E
	rol $2020.w		; 2E 20 20
	jsr $5620.w		; 20 20 56
	tsb $0508.w		; 0C 08 05
	ora $706D53.l		; 0F 53 6D 70
	jsr $6B63.w		; 20 63 6B
	rol $2E2E.w		; 2E 2E 2E
	rol $2020.w		; 2E 20 20
	jsr $5620.w		; 20 20 56
	ora $0508.w		; 0D 08 05
	ora $647541.l		; 0F 41 75 64
	adc #$6F.b		; 69 6F
	jsr $2E4C.w		; 20 4C 2E
	rol $202E.w		; 2E 2E 20
	jsr $2020.w		; 20 20 20
	lsr $0E.b,X		; 56 0E
	php		; 08
	ora $0F.b		; 05 0F
	eor ($75.b,X)		; 41 75
	stz $69.b		; 64 69
	adc $2E5220.l		; 6F 20 52 2E
	rol $202E.w		; 2E 2E 20
	jsr $2020.w		; 20 20 20
	lsr $0F.b,X		; 56 0F
	php		; 08
	ora $0F.b		; 05 0F
	eor ($2D.b,S),Y		; 53 2D
	eor $2E7475.l		; 4F 75 74 2E
	rol $2E2E.w		; 2E 2E 2E
	rol $2020.w		; 2E 20 20
	jsr $5620.w		; 20 20 56
	ora ($02.b),Y		; 11 02
	ora $16.b		; 05 16
	eor ($79.b,S),Y		; 53 79
	adc ($74.b,S),Y		; 73 74
	adc $6D.b		; 65 6D
	jsr $7543.w		; 20 43 75
	adc ($72.b)		; 72 72
	adc $6E.b		; 65 6E
	stz $2E.b,X		; 74 2E
	rol $2020.w		; 2E 20 20
	jsr $6D20.w		; 20 20 6D
	eor ($14.b,X)		; 41 14
	ora $05.b		; 05 05
	ora ($46.b,S),Y		; 13 46
	adc ($65.b)		; 72 65
	adc ($75.b),Y		; 71 75
	adc $6E.b		; 65 6E
	adc $79.b,S		; 63 79
	jsr $6A41.w		; 20 41 6A
	adc $73.b,X		; 75 73
	stz $6D.b,X		; 74 6D
	adc $6E.b		; 65 6E
	stz $16.b,X		; 74 16
	brk $02.b		; 00 02
	tsb $8787.w		; 0C 87 87
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	asl $0C.b,X		; 16 0C
	asl $02.b		; 06 02
	sta [$87.b]		; 87 87
	asl $0E.b,X		; 16 0E
	tsb $04.b		; 04 04
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	asl $12.b,X		; 16 12
	asl $02.b		; 06 02
	sta [$87.b]		; 87 87
	asl $14.b,X		; 16 14
	cop $0C.b		; 02 0C
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	ora [$00.b],Y		; 17 00
	cop $0C.b		; 02 0C
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	ora [$0C.b],Y		; 17 0C
	asl $02.b		; 06 02
	sta [$87.b]		; 87 87
	ora [$0E.b],Y		; 17 0E
	tsb $04.b		; 04 04
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	ora [$12.b],Y		; 17 12
	asl $02.b		; 06 02
	sta [$87.b]		; 87 87
	ora [$14.b],Y		; 17 14
	cop $0C.b		; 02 0C
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	sta [$87.b]		; 87 87
	inc A		; 1A
	ora $05.b,X		; 15 05
	ora $4D.b,S		; 03 4D
	pha		; 48
	ply		; 7A
	inc A		; 1A
	ora $2E0107.l		; 0F 07 01 2E
	brk $08.b		; 00 08
.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda #$8080.w		; A9 80 80
	sta $0010.w		; 8D 10 00
	lda #$FFFF.w		; A9 FF FF
	sta $0013.w		; 8D 13 00
	jsr $AC80.w		; 20 80 AC
	ldx #$03.b		; A2 03
	stx OBJSEL.w		; 8E 01 21
	ldx #$00.b		; A2 00
	lda $B2B9.w,X		; BD B9 B2
	sta $1000.w,X		; 9D 00 10
	inx		; E8
	inx		; E8
	cpx #$F0.b		; E0 F0
	.db $D0, $F4		; D0 F4
	ldx #$00.b		; A2 00
	lda $B3A9.w,X		; BD A9 B3
	sta $1200.w,X		; 9D 00 12
	inx		; E8
	inx		; E8
	cpx #$10.b		; E0 10
	.db $D0, $F4		; D0 F4
	plp		; 28
	rts		; 60

	ldy #$1F.b		; A0 1F
	brk $02.b		; 00 02
	tay		; A8
	ora $900200.l,X		; 1F 00 02 90
	ora $980200.l,X		; 1F 00 02 98
	ora $A00200.l,X		; 1F 00 02 A0
	and [$00.b]		; 27 00
	cop $A8.b		; 02 A8
	and [$00.b]		; 27 00
	cop $90.b		; 02 90
	and [$00.b]		; 27 00
	cop $98.b		; 02 98
	and [$00.b]		; 27 00
	cop $A0.b		; 02 A0
	and $A80200.l		; 2F 00 02 A8
	and $900200.l		; 2F 00 02 90
	and $980200.l		; 2F 00 02 98
	and $A00200.l		; 2F 00 02 A0
	and [$00.b],Y		; 37 00
	cop $A8.b		; 02 A8
	and [$00.b],Y		; 37 00
	cop $90.b		; 02 90
	and [$00.b],Y		; 37 00
	cop $98.b		; 02 98
	and [$00.b],Y		; 37 00
	cop $A0.b		; 02 A0
	and $A80200.l,X		; 3F 00 02 A8
	and $900200.l,X		; 3F 00 02 90
	and $980200.l,X		; 3F 00 02 98
	and $A00200.l,X		; 3F 00 02 A0
	eor [$00.b]		; 47 00
	cop $A8.b		; 02 A8
	eor [$00.b]		; 47 00
	cop $90.b		; 02 90
	eor [$00.b]		; 47 00
	cop $98.b		; 02 98
	eor [$00.b]		; 47 00
	cop $A0.b		; 02 A0
	eor $A80200.l		; 4F 00 02 A8
	eor $900200.l		; 4F 00 02 90
	eor $980200.l		; 4F 00 02 98
	eor $A00200.l		; 4F 00 02 A0
	eor [$00.b],Y		; 57 00
	cop $A8.b		; 02 A8
	eor [$00.b],Y		; 57 00
	cop $90.b		; 02 90
	eor [$00.b],Y		; 57 00
	cop $98.b		; 02 98
	eor [$00.b],Y		; 57 00
	cop $A0.b		; 02 A0
	eor $A80200.l,X		; 5F 00 02 A8
	eor $900200.l,X		; 5F 00 02 90
	eor $980200.l,X		; 5F 00 02 98
	eor $A00200.l,X		; 5F 00 02 A0
	adc [$00.b]		; 67 00
	cop $A8.b		; 02 A8
	adc [$00.b]		; 67 00
	cop $90.b		; 02 90
	adc [$00.b]		; 67 00
	cop $98.b		; 02 98
	adc [$00.b]		; 67 00
	cop $A0.b		; 02 A0
	adc $A80200.l		; 6F 00 02 A8
	adc $900200.l		; 6F 00 02 90
	adc $980200.l		; 6F 00 02 98
	adc $A00200.l		; 6F 00 02 A0
	adc [$00.b],Y		; 77 00
	cop $A8.b		; 02 A8
	adc [$00.b],Y		; 77 00
	cop $90.b		; 02 90
	adc [$00.b],Y		; 77 00
	cop $98.b		; 02 98
	adc [$00.b],Y		; 77 00
	cop $A0.b		; 02 A0
	sta [$00.b]		; 87 00
	cop $A8.b		; 02 A8
	sta [$00.b]		; 87 00
	cop $90.b		; 02 90
	sta [$00.b]		; 87 00
	cop $98.b		; 02 98
	sta [$00.b]		; 87 00
	cop $B8.b		; 02 B8
	iny		; C8
	brk $02.b		; 00 02
	tay		; A8
	iny		; C8
	brk $02.b		; 00 02
	tya		; 98
	iny		; C8
	brk $02.b		; 00 02
	dey		; 88
	iny		; C8
	brk $02.b		; 00 02
	sei		; 78
	iny		; C8
	brk $02.b		; 00 02
	rts		; 60

	iny		; C8
	brk $02.b		; 00 02
	.db $50, $C8		; 50 C8
	brk $02.b		; 00 02
	.db $80, $A8		; 80 A8
	lda ($02.b),Y		; B1 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tax		; AA
	eor $08.b,X		; 55 08
.INDEX 8
	sep #$10		; E2 10
.ACCU 8
	sep #$20		; E2 20
	lda #$00.b		; A9 00
	sta $21CB.w		; 8D CB 21
	jsr $B401.w		; 20 01 B4
	ldy $21C9.w		; AC C9 21
	jsr $B3DE.w		; 20 DE B3
	lda #$20.b		; A9 20
	sta $21CB.w		; 8D CB 21
	ldy $21C9.w		; AC C9 21
	jsr $B3DE.w		; 20 DE B3
	lda #$30.b		; A9 30
	sta $21CB.w		; 8D CB 21
	plp		; 28
	rts		; 60

	lda $00E5.w		; AD E5 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
	tya		; 98
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	lsr A		; 4A
	and #$0F.b		; 29 0F
	sta $1002.w,X		; 9D 02 10
	inc $00E5.w		; EE E5 00
	lda $00E5.w		; AD E5 00
	asl A		; 0A
	asl A		; 0A
	tax		; AA
	tya		; 98
	and #$0F.b		; 29 0F
	sta $1002.w,X		; 9D 02 10
	inc $00E5.w		; EE E5 00
	rts		; 60

	ldx #$0A.b		; A2 0A
	dex		; CA
	.db $D0, $FD		; D0 FD
	rts		; 60

	php		; 08
.INDEX 8
	sep #$10		; E2 10
.ACCU 8
	sep #$20		; E2 20
	lda $21CB.w		; AD CB 21
	sta $D0.b		; 85 D0
	lda $21CC.w		; AD CC 21
	sta $D1.b		; 85 D1
	lda $21CD.w		; AD CD 21
	sta $D2.b		; 85 D2
	ldx #$00.b		; A2 00
	jsr $B47D.w		; 20 7D B4
	lda $D4.b		; A5 D4
	asl A		; 0A
	clc		; 18
	adc #$30.b		; 69 30
	cmp #$40.b		; C9 40
	.db $90, $03		; 90 03
	clc		; 18
	adc #$10.b		; 69 10
	sta $10D2.w,X		; 9D D2 10
	inx		; E8
	inx		; E8
	inx		; E8
	inx		; E8
	cpx #$1C.b		; E0 1C
	.db $F0, $08		; F0 08
	lda $D0.b		; A5 D0
	ora $D1.b		; 05 D1
	ora $D2.b		; 05 D2
	.db $D0, $DD		; D0 DD
	lda $21CB.w		; AD CB 21
	sta $D0.b		; 85 D0
	lda $21CC.w		; AD CC 21
	sta $D1.b		; 85 D1
	lda $21CD.w		; AD CD 21
	sta $D2.b		; 85 D2
.ACCU 16
	rep #$20		; C2 20
	lda $00D1.w		; AD D1 00
	cmp #$20C5.w		; C9 C5 20
.ACCU 8
	sep #$20		; E2 20
	.db $90, $09		; 90 09
	.db $F0, $0E		; F0 0E
	ldy #$F0.b		; A0 F0
	sty $10EC.w		; 8C EC 10
	.db $80, $17		; 80 17
	ldy #$08.b		; A0 08
	sty $10EC.w		; 8C EC 10
	.db $80, $10		; 80 10
	lda $00D0.w		; AD D0 00
	cmp #$1C.b		; C9 1C
	.db $90, $F2		; 90 F2
	lda $00D0.w		; AD D0 00
	sec		; 38
	sbc #$14.b		; E9 14
	sta $10EC.w		; 8D EC 10
	plp		; 28
	rts		; 60

	txa		; 8A
	pha		; 48
	lda #$00.b		; A9 00
	sta $00D4.w		; 8D D4 00
	ldx #$18.b		; A2 18
	rol $D0.b		; 26 D0
	rol $D1.b		; 26 D1
	rol $D2.b		; 26 D2
	rol $D4.b		; 26 D4
	lda $D4.b		; A5 D4
	cmp #$0A.b		; C9 0A
	.db $90, $04		; 90 04
	sbc #$0A.b		; E9 0A
	sta $D4.b		; 85 D4
	rol $D0.b		; 26 D0
	rol $D1.b		; 26 D1
	rol $D2.b		; 26 D2
	dex		; CA
	.db $D0, $EB		; D0 EB
	pla		; 68
	tax		; AA
	rts		; 60

.ACCU 8
	sep #$20		; E2 20
.INDEX 8
	sep #$10		; E2 10
	jsr $ADF5.w		; 20 F5 AD
	ldx #$00.b		; A2 00
	stx MOSAIC.w		; 8E 06 21
	stx BG1HOFS.w		; 8E 0D 21
	stx BG1HOFS.w		; 8E 0D 21
	stx BG1VOFS.w		; 8E 0E 21
	stx BG1VOFS.w		; 8E 0E 21
	stx W12SEL.w		; 8E 23 21
	stx WOBJSEL.w		; 8E 25 21
	stx CGADSUB.w		; 8E 31 21
	ldx #$01.b		; A2 01
	stx TMAIN.w		; 8E 2C 21
	stx TSUB.w		; 8E 2D 21
	ldx #$02.b		; A2 02
	stx CGWSEL.w		; 8E 30 21
	ldx #$00.b		; A2 00
	stx MDMAEN.w		; 8E 0B 42
	stx HDMAEN.w		; 8E 0C 42
	stx MEMSEL.w		; 8E 0D 42
	ldx #$00.b		; A2 00
	stx M7SEL.w		; 8E 1A 21
	ldx #$00.b		; A2 00
	stx M7B.w		; 8E 1C 21
	stx M7B.w		; 8E 1C 21
	stx M7C.w		; 8E 1D 21
	stx M7C.w		; 8E 1D 21
	stx M7A.w		; 8E 1B 21
	ldx #$01.b		; A2 01
	stx M7A.w		; 8E 1B 21
	ldx #$00.b		; A2 00
	stx M7D.w		; 8E 1E 21
	ldx #$01.b		; A2 01
	stx M7D.w		; 8E 1E 21
	lda #$00.b		; A9 00
	sta BG1SC.w		; 8D 07 21
	lda #$7C.b		; A9 7C
	sta BG2SC.w		; 8D 08 21
	lda #$7C.b		; A9 7C
	sta BG3SC.w		; 8D 09 21
	sta BG4SC.w		; 8D 0A 21
	lda #$10.b		; A9 10
	sta BG12NBA.w		; 8D 0B 21
	sta BG34NBA.w		; 8D 0C 21
	lda #$80.b		; A9 80
	sta M7X.w		; 8D 1F 21
	stz M7X.w		; 9C 1F 21
	sta M7Y.w		; 8D 20 21
	stz M7Y.w		; 9C 20 21
	jsr $A9BD.w		; 20 BD A9
	ldx #$07.b		; A2 07
	stx BGMODE.w		; 8E 05 21
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	sta VMADDH.w		; 8D 17 21
	ldx #$0000.w		; A2 00 00
	stx $001D.w		; 8E 1D 00
	stx $0010.w		; 8E 10 00
	ldx $0010.w		; AE 10 00
	ldy #$0000.w		; A0 00 00
	lda $018000.l,X		; BF 00 80 01
	sta $0100.w,Y		; 99 00 01
	iny		; C8
	inx		; E8
	cpy #$0040.w		; C0 40 00
	.db $D0, $F2		; D0 F2
	stx $0010.w		; 8E 10 00
	cpx #$4000.w		; E0 00 40
	.db $F0, $05		; F0 05
	jsr $B56B.w		; 20 6B B5
	.db $80, $DF		; 80 DF
	jmp $B5BA.w		; 4C BA B5
	ldx #$0000.w		; A2 00 00
	stz $001D.w		; 9C 1D 00
	asl $0100.w,X		; 1E 00 01
	ror $00D0.w		; 6E D0 00
	asl $0101.w,X		; 1E 01 01
	ror $00D0.w		; 6E D0 00
	asl $0110.w,X		; 1E 10 01
	ror $00D0.w		; 6E D0 00
	asl $0111.w,X		; 1E 11 01
	ror $00D0.w		; 6E D0 00
	asl $0120.w,X		; 1E 20 01
	ror $00D0.w		; 6E D0 00
	asl $0121.w,X		; 1E 21 01
	ror $00D0.w		; 6E D0 00
	asl $0130.w,X		; 1E 30 01
	ror $00D0.w		; 6E D0 00
	asl $0131.w,X		; 1E 31 01
	ror $00D0.w		; 6E D0 00
	lda $00D0.w		; AD D0 00
	sta VMDATAH.w		; 8D 19 21
	inc $001D.w		; EE 1D 00
	ldy $001D.w		; AC 1D 00
	cpy #$0008.w		; C0 08 00
	.db $D0, $BF		; D0 BF
	inx		; E8
	inx		; E8
	cpx #$0010.w		; E0 10 00
	.db $D0, $B5		; D0 B5
	rts		; 60

	lda #$00.b		; A9 00
	sta VMADDL.w		; 8D 16 21
	sta VMADDH.w		; 8D 17 21
	ldx #$0000.w		; A2 00 00
	lda #$00.b		; A9 00
	ldy #$0000.w		; A0 00 00
	sta VMAIN.w		; 8D 15 21
	lda $02E000.l,X		; BF 00 E0 02
	sta VMDATAL.w		; 8D 18 21
	iny		; C8
	cpy #$0020.w		; C0 20 00
	.db $D0, $09		; D0 09
	ldy #$0060.w		; A0 60 00
	stz VMDATAL.w		; 9C 18 21
	dey		; 88
	.db $D0, $FA		; D0 FA
	inx		; E8
	inx		; E8
	cpx #$0700.w		; E0 00 07
	.db $D0, $E3		; D0 E3
	ldy #$3C80.w		; A0 80 3C
	stz VMDATAL.w		; 9C 18 21
	dey		; 88
	.db $D0, $FA		; D0 FA
	lda #$80.b		; A9 80
	sta VMAIN.w		; 8D 15 21
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	lda #$00.b		; A9 00
	sta CGADD.w		; 8D 21 21
	ldx #$0000.w		; A2 00 00
.ACCU 16
	rep #$20		; C2 20
	lda $02E800.l,X		; BF 00 E8 02
.ACCU 8
	sep #$20		; E2 20
	sta CGDATA.w		; 8D 22 21
	xba		; EB
	sta CGDATA.w		; 8D 22 21
	inx		; E8
	inx		; E8
	cpx #$0200.w		; E0 00 02
	.db $D0, $EA		; D0 EA
	jsr $ADE3.w		; 20 E3 AD
.ACCU 8
	sep #$20		; E2 20
.INDEX 16
	rep #$10		; C2 10
	ldx #$0000.w		; A2 00 00
	jsr $AD56.w		; 20 56 AD
	lda $B809.w,X		; BD 09 B8
	sta M7A.w		; 8D 1B 21
	inx		; E8
	lda $B809.w,X		; BD 09 B8
	sta M7A.w		; 8D 1B 21
	inx		; E8
	lda $B809.w,X		; BD 09 B8
	sta M7B.w		; 8D 1C 21
	inx		; E8
	lda $B809.w,X		; BD 09 B8
	sta M7B.w		; 8D 1C 21
	inx		; E8
	lda $B809.w,X		; BD 09 B8
	sta M7C.w		; 8D 1D 21
	inx		; E8
	lda $B809.w,X		; BD 09 B8
	sta M7C.w		; 8D 1D 21
	inx		; E8
	lda $B809.w,X		; BD 09 B8
	sta M7D.w		; 8D 1E 21
	inx		; E8
	lda $B809.w,X		; BD 09 B8
	sta M7D.w		; 8D 1E 21
	inx		; E8
	cpx #$0B40.w		; E0 40 0B
	.db $D0, $C0		; D0 C0
.INDEX 8
	sep #$10		; E2 10
	stz $0016.w		; 9C 16 00
	jsr $AD56.w		; 20 56 AD
	ldy $0016.w		; AC 16 00
	cpy #$3C.b		; C0 3C
	.db $90, $F6		; 90 F6
	ldx #$01.b		; A2 01
	stx M7SEL.w		; 8E 1A 21
	ldy $0016.w		; AC 16 00
	cpy #$78.b		; C0 78
	.db $90, $EA		; 90 EA
	ldx #$02.b		; A2 02
	stx M7SEL.w		; 8E 1A 21
	ldy $0016.w		; AC 16 00
	cpy #$B4.b		; C0 B4
	.db $90, $DE		; 90 DE
	ldx #$03.b		; A2 03
	stx M7SEL.w		; 8E 1A 21
	ldy $0016.w		; AC 16 00
	cpy #$F0.b		; C0 F0
	.db $D0, $D2		; D0 D2
	ldx #$00.b		; A2 00
	stx M7SEL.w		; 8E 1A 21
	ldx #$00.b		; A2 00
	stx M7A.w		; 8E 1B 21
	ldx #$0C.b		; A2 0C
	stx M7A.w		; 8E 1B 21
	ldx #$00.b		; A2 00
	stx M7D.w		; 8E 1E 21
	ldx #$0C.b		; A2 0C
	stx M7D.w		; 8E 1E 21
	stz $0016.w		; 9C 16 00
	jsr $AD56.w		; 20 56 AD
	ldy $0016.w		; AC 16 00
	cpy #$3C.b		; C0 3C
	.db $90, $F6		; 90 F6
	ldx #$80.b		; A2 80
	stx M7SEL.w		; 8E 1A 21
	ldy $0016.w		; AC 16 00
	cpy #$78.b		; C0 78
	.db $90, $EA		; 90 EA
	ldx #$C0.b		; A2 C0
	stx M7SEL.w		; 8E 1A 21
	ldy $0016.w		; AC 16 00
	cpy #$B4.b		; C0 B4
	.db $D0, $DE		; D0 DE
.ACCU 16
	rep #$20		; C2 20
.INDEX 8
	sep #$10		; E2 10
	lda #$0200.w		; A9 00 02
	sta $00D0.w		; 8D D0 00
	ldx $00D0.w		; AE D0 00
	stx M7A.w		; 8E 1B 21
	ldx $00D1.w		; AE D1 00
	stx M7A.w		; 8E 1B 21
	ldx $00D0.w		; AE D0 00
	stx M7D.w		; 8E 1E 21
	ldx $00D1.w		; AE D1 00
	stx M7D.w		; 8E 1E 21
	lda #$0080.w		; A9 80 00
	sta $0010.w		; 8D 10 00
	sta $0013.w		; 8D 13 00
	jsr $AD56.w		; 20 56 AD
	inc $0010.w		; EE 10 00
	inc $0010.w		; EE 10 00
	inc $0010.w		; EE 10 00
	inc $0010.w		; EE 10 00
	dec $0013.w		; CE 13 00
	dec $0013.w		; CE 13 00
	dec $0013.w		; CE 13 00
	dec $0013.w		; CE 13 00
	ldx $10.b		; A6 10
	stx M7X.w		; 8E 1F 21
	ldx $11.b		; A6 11
	stx M7X.w		; 8E 1F 21
	ldx $13.b		; A6 13
	stx M7Y.w		; 8E 20 21
	ldx $14.b		; A6 14
	stx M7Y.w		; 8E 20 21
	lda $0013.w		; AD 13 00
	.db $F0, $02		; F0 02
	.db $80, $CA		; 80 CA
	jsr $AD56.w		; 20 56 AD
	inc $0013.w		; EE 13 00
	inc $0013.w		; EE 13 00
	inc $0013.w		; EE 13 00
	inc $0013.w		; EE 13 00
	dec $0010.w		; CE 10 00
	dec $0010.w		; CE 10 00
	dec $0010.w		; CE 10 00
	dec $0010.w		; CE 10 00
	ldx $10.b		; A6 10
	stx M7X.w		; 8E 1F 21
	ldx $11.b		; A6 11
	stx M7X.w		; 8E 1F 21
	ldx $13.b		; A6 13
	stx M7Y.w		; 8E 20 21
	ldx $14.b		; A6 14
	stx M7Y.w		; 8E 20 21
	lda $0010.w		; AD 10 00
	.db $F0, $02		; F0 02
	.db $80, $CA		; 80 CA
	jsr $AD56.w		; 20 56 AD
	inc $0010.w		; EE 10 00
	inc $0010.w		; EE 10 00
	inc $0010.w		; EE 10 00
	inc $0010.w		; EE 10 00
	dec $0013.w		; CE 13 00
	dec $0013.w		; CE 13 00
	dec $0013.w		; CE 13 00
	dec $0013.w		; CE 13 00
	ldx $10.b		; A6 10
	stx M7X.w		; 8E 1F 21
	ldx $11.b		; A6 11
	stx M7X.w		; 8E 1F 21
	ldx $13.b		; A6 13
	stx M7Y.w		; 8E 20 21
	ldx $14.b		; A6 14
	stx M7Y.w		; 8E 20 21
	lda $0013.w		; AD 13 00
	cmp #$0080.w		; C9 80 00
	.db $D0, $C9		; D0 C9
	ldx #$00.b		; A2 00
	ldy #$00.b		; A0 00
	jsr $AD56.w		; 20 56 AD
	ldx $00D0.w		; AE D0 00
	stx M7A.w		; 8E 1B 21
	ldx $00D1.w		; AE D1 00
	stx M7A.w		; 8E 1B 21
	ldx $00D0.w		; AE D0 00
	stx M7D.w		; 8E 1E 21
	ldx $00D1.w		; AE D1 00
	stx M7D.w		; 8E 1E 21
	dec $00D0.w		; CE D0 00
	dec $00D0.w		; CE D0 00
	lda $00D0.w		; AD D0 00
	.db $D0, $DA		; D0 DA
	jsr $AD56.w		; 20 56 AD
	ldx $00D0.w		; AE D0 00
	stx M7A.w		; 8E 1B 21
	ldx $00D1.w		; AE D1 00
	stx M7A.w		; 8E 1B 21
	ldx $00D0.w		; AE D0 00
	stx M7D.w		; 8E 1E 21
	ldx $00D1.w		; AE D1 00
	stx M7D.w		; 8E 1E 21
	inc $00D0.w		; EE D0 00
	inc $00D0.w		; EE D0 00
	lda $00D0.w		; AD D0 00
	cmp #$00F2.w		; C9 F2 00
	.db $D0, $D7		; D0 D7
	stz WOBJSEL.w		; 9C 25 21
	stz W1L.w		; 9C 26 21
	stz W1R.w		; 9C 27 21
	stz W2L.w		; 9C 28 21
	stz W2R.w		; 9C 29 21
	stz TMW.w		; 9C 2E 21
	rts		; 60

	txs		; 9A
	brk $03.b		; 00 03
	brk $FD.b		; 00 FD
	sbc $9A00B8.l,X		; FF B8 00 9A
	brk $05.b		; 00 05
	brk $FA.b		; 00 FA
	sbc $9900B8.l,X		; FF B8 00 99
	brk $08.b		; 00 08
	brk $F6.b		; 00 F6
	sbc $9900B8.l,X		; FF B8 00 99
	brk $0B.b		; 00 0B
	brk $F3.b		; 00 F3
	sbc $9900B8.l,X		; FF B8 00 99
	brk $0D.b		; 00 0D
	brk $F0.b		; 00 F0
	sbc $9900B8.l,X		; FF B8 00 99
	brk $10.b		; 00 10
	brk $ED.b		; 00 ED
	sbc $9800B7.l,X		; FF B7 00 98
	brk $13.b		; 00 13
	brk $EA.b		; 00 EA
	sbc $9800B7.l,X		; FF B7 00 98
	brk $15.b		; 00 15
	brk $E6.b		; 00 E6
	sbc $9800B7.l,X		; FF B7 00 98
	brk $18.b		; 00 18
	brk $E3.b		; 00 E3
	sbc $9700B6.l,X		; FF B6 00 97
	brk $1B.b		; 00 1B
	brk $E0.b		; 00 E0
	sbc $9700B6.l,X		; FF B6 00 97
	brk $1D.b		; 00 1D
	brk $DD.b		; 00 DD
	sbc $9600B5.l,X		; FF B5 00 96
	brk $20.b		; 00 20
	brk $DA.b		; 00 DA
	sbc $9600B4.l,X		; FF B4 00 96
	brk $23.b		; 00 23
	brk $D7.b		; 00 D7
	sbc $9500B4.l,X		; FF B4 00 95
	brk $25.b		; 00 25
	brk $D3.b		; 00 D3
	sbc $9400B3.l,X		; FF B3 00 94
	brk $28.b		; 00 28
	brk $D0.b		; 00 D0
	sbc $9400B2.l,X		; FF B2 00 94
	brk $2A.b		; 00 2A
	brk $CD.b		; 00 CD
	sbc $9300B1.l,X		; FF B1 00 93
	brk $2D.b		; 00 2D
	brk $CA.b		; 00 CA
	sbc $9200B0.l,X		; FF B0 00 92
	brk $2F.b		; 00 2F
	brk $C7.b		; 00 C7
	sbc $9100AF.l,X		; FF AF 00 91
	brk $32.b		; 00 32
	brk $C4.b		; 00 C4
	sbc $9000AE.l,X		; FF AE 00 90
	brk $35.b		; 00 35
	brk $C1.b		; 00 C1
	sbc $8F00AD.l,X		; FF AD 00 8F
	brk $37.b		; 00 37
	brk $BE.b		; 00 BE
	sbc $8E00AC.l,X		; FF AC 00 8E
	brk $3A.b		; 00 3A
	brk $BB.b		; 00 BB
	sbc $8D00AB.l,X		; FF AB 00 8D
	brk $3C.b		; 00 3C
	brk $B8.b		; 00 B8
	sbc $8C00AA.l,X		; FF AA 00 8C
	brk $3E.b		; 00 3E
	brk $B5.b		; 00 B5
	sbc $8B00A8.l,X		; FF A8 00 8B
	brk $41.b		; 00 41
	brk $B2.b		; 00 B2
	sbc $8A00A7.l,X		; FF A7 00 8A
	brk $43.b		; 00 43
	brk $AF.b		; 00 AF
	sbc $8900A6.l,X		; FF A6 00 89
	brk $46.b		; 00 46
	brk $AC.b		; 00 AC
	sbc $8800A4.l,X		; FF A4 00 88
	brk $48.b		; 00 48
	brk $A9.b		; 00 A9
	sbc $8600A3.l,X		; FF A3 00 86
	brk $4A.b		; 00 4A
	brk $A7.b		; 00 A7
	sbc $8500A1.l,X		; FF A1 00 85
	brk $4D.b		; 00 4D
	brk $A4.b		; 00 A4
	sbc $8400A0.l,X		; FF A0 00 84
	brk $4F.b		; 00 4F
	brk $A1.b		; 00 A1
	sbc $82009E.l,X		; FF 9E 00 82
	brk $51.b		; 00 51
	brk $9E.b		; 00 9E
	sbc $81009C.l,X		; FF 9C 00 81
	brk $54.b		; 00 54
	brk $9C.b		; 00 9C
	sbc $7F009B.l,X		; FF 9B 00 7F
	brk $56.b		; 00 56
	brk $99.b		; 00 99
	sbc $7E0099.l,X		; FF 99 00 7E
	brk $58.b		; 00 58
	brk $96.b		; 00 96
	sbc $7C0097.l,X		; FF 97 00 7C
	brk $5A.b		; 00 5A
	brk $94.b		; 00 94
	sbc $7B0095.l,X		; FF 95 00 7B
	brk $5C.b		; 00 5C
	brk $91.b		; 00 91
	sbc $790093.l,X		; FF 93 00 79
	brk $5F.b		; 00 5F
	brk $8F.b		; 00 8F
	sbc $770091.l,X		; FF 91 00 77
	brk $61.b		; 00 61
	brk $8C.b		; 00 8C
	sbc $76008F.l,X		; FF 8F 00 76
	brk $63.b		; 00 63
	brk $8A.b		; 00 8A
	sbc $74008D.l,X		; FF 8D 00 74
	brk $65.b		; 00 65
	brk $87.b		; 00 87
	sbc $72008B.l,X		; FF 8B 00 72
	brk $67.b		; 00 67
	brk $85.b		; 00 85
	sbc $700089.l,X		; FF 89 00 70
	brk $69.b		; 00 69
	brk $82.b		; 00 82
	sbc $6E0087.l,X		; FF 87 00 6E
	brk $6B.b		; 00 6B
	brk $80.b		; 00 80
	sbc $6D0085.l,X		; FF 85 00 6D
	brk $6D.b		; 00 6D
	brk $7E.b		; 00 7E
	sbc $6B0082.l,X		; FF 82 00 6B
	brk $6E.b		; 00 6E
	brk $7B.b		; 00 7B
	sbc $690080.l,X		; FF 80 00 69
	brk $70.b		; 00 70
	brk $79.b		; 00 79
	sbc $67007E.l,X		; FF 7E 00 67
	brk $72.b		; 00 72
	brk $77.b		; 00 77
	sbc $65007B.l,X		; FF 7B 00 65
	brk $74.b		; 00 74
	brk $75.b		; 00 75
	sbc $630079.l,X		; FF 79 00 63
	brk $76.b		; 00 76
	brk $73.b		; 00 73
	sbc $610076.l,X		; FF 76 00 61
	brk $77.b		; 00 77
	brk $71.b		; 00 71
	sbc $5F0074.l,X		; FF 74 00 5F
	brk $79.b		; 00 79
	brk $6F.b		; 00 6F
	sbc $5C0071.l,X		; FF 71 00 5C
	brk $7B.b		; 00 7B
	brk $6D.b		; 00 6D
	sbc $5A006F.l,X		; FF 6F 00 5A
	brk $7C.b		; 00 7C
	brk $6B.b		; 00 6B
	sbc $58006C.l,X		; FF 6C 00 58
	brk $7E.b		; 00 7E
	brk $69.b		; 00 69
	sbc $56006A.l,X		; FF 6A 00 56
	brk $7F.b		; 00 7F
	brk $67.b		; 00 67
	sbc $540067.l,X		; FF 67 00 54
	brk $81.b		; 00 81
	brk $65.b		; 00 65
	sbc $510064.l,X		; FF 64 00 51
	brk $82.b		; 00 82
	brk $64.b		; 00 64
	sbc $4F0062.l,X		; FF 62 00 4F
	brk $84.b		; 00 84
	brk $62.b		; 00 62
	sbc $4D005F.l,X		; FF 5F 00 4D
	brk $85.b		; 00 85
	brk $60.b		; 00 60
	sbc $4A005C.l,X		; FF 5C 00 4A
	brk $86.b		; 00 86
	brk $5F.b		; 00 5F
	sbc $480059.l,X		; FF 59 00 48
	brk $88.b		; 00 88
	brk $5D.b		; 00 5D
	sbc $460057.l,X		; FF 57 00 46
	brk $89.b		; 00 89
	brk $5C.b		; 00 5C
	sbc $430054.l,X		; FF 54 00 43
	brk $8A.b		; 00 8A
	brk $5A.b		; 00 5A
	sbc $410051.l,X		; FF 51 00 41
	brk $8B.b		; 00 8B
	brk $59.b		; 00 59
	sbc $3E004E.l,X		; FF 4E 00 3E
	brk $8C.b		; 00 8C
	brk $58.b		; 00 58
	sbc $3C004B.l,X		; FF 4B 00 3C
	brk $8D.b		; 00 8D
	brk $56.b		; 00 56
	sbc $3A0048.l,X		; FF 48 00 3A
	brk $8E.b		; 00 8E
	brk $55.b		; 00 55
	sbc $370045.l,X		; FF 45 00 37
	brk $8F.b		; 00 8F
	brk $54.b		; 00 54
	sbc $350042.l,X		; FF 42 00 35
	brk $90.b		; 00 90
	brk $53.b		; 00 53
	sbc $32003F.l,X		; FF 3F 00 32
	brk $91.b		; 00 91
	brk $52.b		; 00 52
	sbc $2F003C.l,X		; FF 3C 00 2F
	brk $92.b		; 00 92
	brk $51.b		; 00 51
	sbc $2D0039.l,X		; FF 39 00 2D
	brk $93.b		; 00 93
	brk $50.b		; 00 50
	sbc $2A0036.l,X		; FF 36 00 2A
	brk $94.b		; 00 94
	brk $4F.b		; 00 4F
	sbc $280033.l,X		; FF 33 00 28
	brk $94.b		; 00 94
	brk $4E.b		; 00 4E
	sbc $250030.l,X		; FF 30 00 25
	brk $95.b		; 00 95
	brk $4D.b		; 00 4D
	sbc $23002D.l,X		; FF 2D 00 23
	brk $96.b		; 00 96
	brk $4C.b		; 00 4C
	sbc $200029.l,X		; FF 29 00 20
	brk $96.b		; 00 96
	brk $4C.b		; 00 4C
	sbc $1D0026.l,X		; FF 26 00 1D
	brk $97.b		; 00 97
	brk $4B.b		; 00 4B
	sbc $1B0023.l,X		; FF 23 00 1B
	brk $97.b		; 00 97
	brk $4A.b		; 00 4A
	sbc $180020.l,X		; FF 20 00 18
	brk $98.b		; 00 98
	brk $4A.b		; 00 4A
	sbc $15001D.l,X		; FF 1D 00 15
	brk $98.b		; 00 98
	brk $49.b		; 00 49
	sbc $13001A.l,X		; FF 1A 00 13
	brk $98.b		; 00 98
	brk $49.b		; 00 49
	sbc $100016.l,X		; FF 16 00 10
	brk $99.b		; 00 99
	brk $49.b		; 00 49
	sbc $0D0013.l,X		; FF 13 00 0D
	brk $99.b		; 00 99
	brk $48.b		; 00 48
	sbc $0B0010.l,X		; FF 10 00 0B
	brk $99.b		; 00 99
	brk $48.b		; 00 48
	sbc $08000D.l,X		; FF 0D 00 08
	brk $99.b		; 00 99
	brk $48.b		; 00 48
	sbc $05000A.l,X		; FF 0A 00 05
	brk $9A.b		; 00 9A
	brk $48.b		; 00 48
	sbc $030006.l,X		; FF 06 00 03
	brk $9A.b		; 00 9A
	brk $48.b		; 00 48
	sbc $000003.l,X		; FF 03 00 00
	brk $9A.b		; 00 9A
	brk $48.b		; 00 48
	sbc $FD0000.l,X		; FF 00 00 FD
	sbc $48009A.l,X		; FF 9A 00 48
	sbc $FBFFFD.l,X		; FF FD FF FB
	sbc $48009A.l,X		; FF 9A 00 48
	sbc $F8FFFA.l,X		; FF FA FF F8
	sbc $480099.l,X		; FF 99 00 48
	sbc $F5FFF6.l,X		; FF F6 FF F5
	sbc $480099.l,X		; FF 99 00 48
	sbc $F3FFF3.l,X		; FF F3 FF F3
	sbc $480099.l,X		; FF 99 00 48
	sbc $F0FFF0.l,X		; FF F0 FF F0
	sbc $490099.l,X		; FF 99 00 49
	sbc $EDFFED.l,X		; FF ED FF ED
	sbc $490098.l,X		; FF 98 00 49
	sbc $EBFFEA.l,X		; FF EA FF EB
	sbc $490098.l,X		; FF 98 00 49
	sbc $E8FFE6.l,X		; FF E6 FF E8
	sbc $4A0098.l,X		; FF 98 00 4A
	sbc $E5FFE3.l,X		; FF E3 FF E5
	sbc $4A0097.l,X		; FF 97 00 4A
	sbc $E3FFE0.l,X		; FF E0 FF E3
	sbc $4B0097.l,X		; FF 97 00 4B
	sbc $E0FFDD.l,X		; FF DD FF E0
	sbc $4C0096.l,X		; FF 96 00 4C
	sbc $DDFFDA.l,X		; FF DA FF DD
	sbc $4C0096.l,X		; FF 96 00 4C
	sbc $DBFFD7.l,X		; FF D7 FF DB
	sbc $4D0095.l,X		; FF 95 00 4D
	sbc $D8FFD3.l,X		; FF D3 FF D8
	sbc $4E0094.l,X		; FF 94 00 4E
	sbc $D6FFD0.l,X		; FF D0 FF D6
	sbc $4F0094.l,X		; FF 94 00 4F
	sbc $D3FFCD.l,X		; FF CD FF D3
	sbc $500093.l,X		; FF 93 00 50
	sbc $D1FFCA.l,X		; FF CA FF D1
	sbc $510092.l,X		; FF 92 00 51
	sbc $CEFFC7.l,X		; FF C7 FF CE
	sbc $520091.l,X		; FF 91 00 52
	sbc $CBFFC4.l,X		; FF C4 FF CB
	sbc $530090.l,X		; FF 90 00 53
	sbc $C9FFC1.l,X		; FF C1 FF C9
	sbc $54008F.l,X		; FF 8F 00 54
	sbc $C6FFBE.l,X		; FF BE FF C6
	sbc $55008E.l,X		; FF 8E 00 55
	sbc $C4FFBB.l,X		; FF BB FF C4
	sbc $56008D.l,X		; FF 8D 00 56
	sbc $C2FFB8.l,X		; FF B8 FF C2
	sbc $58008C.l,X		; FF 8C 00 58
	sbc $BFFFB5.l,X		; FF B5 FF BF
	sbc $59008B.l,X		; FF 8B 00 59
	sbc $BDFFB2.l,X		; FF B2 FF BD
	sbc $5A008A.l,X		; FF 8A 00 5A
	sbc $BAFFAF.l,X		; FF AF FF BA
	sbc $5C0089.l,X		; FF 89 00 5C
	sbc $B8FFAC.l,X		; FF AC FF B8
	sbc $5D0088.l,X		; FF 88 00 5D
	sbc $B6FFA9.l,X		; FF A9 FF B6
	sbc $5F0086.l,X		; FF 86 00 5F
	sbc $B3FFA7.l,X		; FF A7 FF B3
	sbc $600085.l,X		; FF 85 00 60
	sbc $B1FFA4.l,X		; FF A4 FF B1
	sbc $620084.l,X		; FF 84 00 62
	sbc $AFFFA1.l,X		; FF A1 FF AF
	sbc $640082.l,X		; FF 82 00 64
	sbc $ACFF9E.l,X		; FF 9E FF AC
	sbc $650081.l,X		; FF 81 00 65
	sbc $AAFF9C.l,X		; FF 9C FF AA
	sbc $67007F.l,X		; FF 7F 00 67
	sbc $A8FF99.l,X		; FF 99 FF A8
	sbc $69007E.l,X		; FF 7E 00 69
	sbc $A6FF96.l,X		; FF 96 FF A6
	sbc $6B007C.l,X		; FF 7C 00 6B
	sbc $A4FF94.l,X		; FF 94 FF A4
	sbc $6D007B.l,X		; FF 7B 00 6D
	sbc $A1FF91.l,X		; FF 91 FF A1
	sbc $6F0079.l,X		; FF 79 00 6F
	sbc $9FFF8F.l,X		; FF 8F FF 9F
	sbc $710077.l,X		; FF 77 00 71
	sbc $9DFF8C.l,X		; FF 8C FF 9D
	sbc $730076.l,X		; FF 76 00 73
	sbc $9BFF8A.l,X		; FF 8A FF 9B
	sbc $750074.l,X		; FF 74 00 75
	sbc $99FF87.l,X		; FF 87 FF 99
	sbc $770072.l,X		; FF 72 00 77
	sbc $97FF85.l,X		; FF 85 FF 97
	sbc $790070.l,X		; FF 70 00 79
	sbc $95FF82.l,X		; FF 82 FF 95
	sbc $7B006E.l,X		; FF 6E 00 7B
	sbc $93FF80.l,X		; FF 80 FF 93
	sbc $7E006D.l,X		; FF 6D 00 7E
	sbc $92FF7E.l,X		; FF 7E FF 92
	sbc $80006B.l,X		; FF 6B 00 80
	sbc $90FF7B.l,X		; FF 7B FF 90
	sbc $820069.l,X		; FF 69 00 82
	sbc $8EFF79.l,X		; FF 79 FF 8E
	sbc $850067.l,X		; FF 67 00 85
	sbc $8CFF77.l,X		; FF 77 FF 8C
	sbc $870065.l,X		; FF 65 00 87
	sbc $8AFF75.l,X		; FF 75 FF 8A
	sbc $8A0063.l,X		; FF 63 00 8A
	sbc $89FF73.l,X		; FF 73 FF 89
	sbc $8C0061.l,X		; FF 61 00 8C
	sbc $87FF71.l,X		; FF 71 FF 87
	sbc $8F005F.l,X		; FF 5F 00 8F
	sbc $85FF6F.l,X		; FF 6F FF 85
	sbc $91005C.l,X		; FF 5C 00 91
	sbc $84FF6D.l,X		; FF 6D FF 84
	sbc $94005A.l,X		; FF 5A 00 94
	sbc $82FF6B.l,X		; FF 6B FF 82
	sbc $960058.l,X		; FF 58 00 96
	sbc $81FF69.l,X		; FF 69 FF 81
	sbc $990056.l,X		; FF 56 00 99
	sbc $7FFF67.l,X		; FF 67 FF 7F
	sbc $9C0054.l,X		; FF 54 00 9C
	sbc $7EFF65.l,X		; FF 65 FF 7E
	sbc $9E0051.l,X		; FF 51 00 9E
	sbc $7CFF64.l,X		; FF 64 FF 7C
	sbc $A1004F.l,X		; FF 4F 00 A1
	sbc $7BFF62.l,X		; FF 62 FF 7B
	sbc $A4004D.l,X		; FF 4D 00 A4
	sbc $7AFF60.l,X		; FF 60 FF 7A
	sbc $A7004A.l,X		; FF 4A 00 A7
	sbc $78FF5F.l,X		; FF 5F FF 78
	sbc $A90048.l,X		; FF 48 00 A9
	sbc $77FF5D.l,X		; FF 5D FF 77
	sbc $AC0046.l,X		; FF 46 00 AC
	sbc $76FF5C.l,X		; FF 5C FF 76
	sbc $AF0043.l,X		; FF 43 00 AF
	sbc $75FF5A.l,X		; FF 5A FF 75
	sbc $B20041.l,X		; FF 41 00 B2
	sbc $74FF59.l,X		; FF 59 FF 74
	sbc $B5003E.l,X		; FF 3E 00 B5
	sbc $73FF58.l,X		; FF 58 FF 73
	sbc $B8003C.l,X		; FF 3C 00 B8
	sbc $72FF56.l,X		; FF 56 FF 72
	sbc $BB003A.l,X		; FF 3A 00 BB
	sbc $71FF55.l,X		; FF 55 FF 71
	sbc $BE0037.l,X		; FF 37 00 BE
	sbc $70FF54.l,X		; FF 54 FF 70
	sbc $C10035.l,X		; FF 35 00 C1
	sbc $6FFF53.l,X		; FF 53 FF 6F
	sbc $C40032.l,X		; FF 32 00 C4
	sbc $6EFF52.l,X		; FF 52 FF 6E
	sbc $C7002F.l,X		; FF 2F 00 C7
	sbc $6DFF51.l,X		; FF 51 FF 6D
	sbc $CA002D.l,X		; FF 2D 00 CA
	sbc $6CFF50.l,X		; FF 50 FF 6C
	sbc $CD002A.l,X		; FF 2A 00 CD
	sbc $6CFF4F.l,X		; FF 4F FF 6C
	sbc $D00028.l,X		; FF 28 00 D0
	sbc $6BFF4E.l,X		; FF 4E FF 6B
	sbc $D30025.l,X		; FF 25 00 D3
	sbc $6AFF4D.l,X		; FF 4D FF 6A
	sbc $D70023.l,X		; FF 23 00 D7
	sbc $6AFF4C.l,X		; FF 4C FF 6A
	sbc $DA0020.l,X		; FF 20 00 DA
	sbc $69FF4C.l,X		; FF 4C FF 69
	sbc $DD001D.l,X		; FF 1D 00 DD
	sbc $69FF4B.l,X		; FF 4B FF 69
	sbc $E0001B.l,X		; FF 1B 00 E0
	sbc $68FF4A.l,X		; FF 4A FF 68
	sbc $E30018.l,X		; FF 18 00 E3
	sbc $68FF4A.l,X		; FF 4A FF 68
	sbc $E60015.l,X		; FF 15 00 E6
	sbc $68FF49.l,X		; FF 49 FF 68
	sbc $EA0013.l,X		; FF 13 00 EA
	sbc $67FF49.l,X		; FF 49 FF 67
	sbc $ED0010.l,X		; FF 10 00 ED
	sbc $67FF49.l,X		; FF 49 FF 67
	sbc $F0000D.l,X		; FF 0D 00 F0
	sbc $67FF48.l,X		; FF 48 FF 67
	sbc $F3000B.l,X		; FF 0B 00 F3
	sbc $67FF48.l,X		; FF 48 FF 67
	sbc $F60008.l,X		; FF 08 00 F6
	sbc $66FF48.l,X		; FF 48 FF 66
	sbc $FA0005.l,X		; FF 05 00 FA
	sbc $66FF48.l,X		; FF 48 FF 66
	sbc $FD0003.l,X		; FF 03 00 FD
	sbc $66FF48.l,X		; FF 48 FF 66
	sbc $000000.l,X		; FF 00 00 00
	brk $48.b		; 00 48
	sbc $FDFF66.l,X		; FF 66 FF FD
	sbc $480003.l,X		; FF 03 00 48
	sbc $FBFF66.l,X		; FF 66 FF FB
	sbc $480006.l,X		; FF 06 00 48
	sbc $F8FF67.l,X		; FF 67 FF F8
	sbc $48000A.l,X		; FF 0A 00 48
	sbc $F5FF67.l,X		; FF 67 FF F5
	sbc $48000D.l,X		; FF 0D 00 48
	sbc $F3FF67.l,X		; FF 67 FF F3
	sbc $480010.l,X		; FF 10 00 48
	sbc $F0FF67.l,X		; FF 67 FF F0
	sbc $490013.l,X		; FF 13 00 49
	sbc $EDFF68.l,X		; FF 68 FF ED
	sbc $490016.l,X		; FF 16 00 49
	sbc $EBFF68.l,X		; FF 68 FF EB
	sbc $49001A.l,X		; FF 1A 00 49
	sbc $E8FF68.l,X		; FF 68 FF E8
	sbc $4A001D.l,X		; FF 1D 00 4A
	sbc $E5FF69.l,X		; FF 69 FF E5
	sbc $4A0020.l,X		; FF 20 00 4A
	sbc $E3FF69.l,X		; FF 69 FF E3
	sbc $4B0023.l,X		; FF 23 00 4B
	sbc $E0FF6A.l,X		; FF 6A FF E0
	sbc $4C0026.l,X		; FF 26 00 4C
	sbc $DDFF6A.l,X		; FF 6A FF DD
	sbc $4C0029.l,X		; FF 29 00 4C
	sbc $DBFF6B.l,X		; FF 6B FF DB
	sbc $4D002D.l,X		; FF 2D 00 4D
	sbc $D8FF6C.l,X		; FF 6C FF D8
	sbc $4E0030.l,X		; FF 30 00 4E
	sbc $D6FF6C.l,X		; FF 6C FF D6
	sbc $4F0033.l,X		; FF 33 00 4F
	sbc $D3FF6D.l,X		; FF 6D FF D3
	sbc $500036.l,X		; FF 36 00 50
	sbc $D1FF6E.l,X		; FF 6E FF D1
	sbc $510039.l,X		; FF 39 00 51
	sbc $CEFF6F.l,X		; FF 6F FF CE
	sbc $52003C.l,X		; FF 3C 00 52
	sbc $CBFF70.l,X		; FF 70 FF CB
	sbc $53003F.l,X		; FF 3F 00 53
	sbc $C9FF71.l,X		; FF 71 FF C9
	sbc $540042.l,X		; FF 42 00 54
	sbc $C6FF72.l,X		; FF 72 FF C6
	sbc $550045.l,X		; FF 45 00 55
	sbc $C4FF73.l,X		; FF 73 FF C4
	sbc $560048.l,X		; FF 48 00 56
	sbc $C2FF74.l,X		; FF 74 FF C2
	sbc $58004B.l,X		; FF 4B 00 58
	sbc $BFFF75.l,X		; FF 75 FF BF
	sbc $59004E.l,X		; FF 4E 00 59
	sbc $BDFF76.l,X		; FF 76 FF BD
	sbc $5A0051.l,X		; FF 51 00 5A
	sbc $BAFF77.l,X		; FF 77 FF BA
	sbc $5C0054.l,X		; FF 54 00 5C
	sbc $B8FF78.l,X		; FF 78 FF B8
	sbc $5D0057.l,X		; FF 57 00 5D
	sbc $B6FF7A.l,X		; FF 7A FF B6
	sbc $5F0059.l,X		; FF 59 00 5F
	sbc $B3FF7B.l,X		; FF 7B FF B3
	sbc $60005C.l,X		; FF 5C 00 60
	sbc $B1FF7C.l,X		; FF 7C FF B1
	sbc $62005F.l,X		; FF 5F 00 62
	sbc $AFFF7E.l,X		; FF 7E FF AF
	sbc $640062.l,X		; FF 62 00 64
	sbc $ACFF7F.l,X		; FF 7F FF AC
	sbc $650064.l,X		; FF 64 00 65
	sbc $AAFF81.l,X		; FF 81 FF AA
	sbc $670067.l,X		; FF 67 00 67
	sbc $A8FF82.l,X		; FF 82 FF A8
	sbc $69006A.l,X		; FF 6A 00 69
	sbc $A6FF84.l,X		; FF 84 FF A6
	sbc $6B006C.l,X		; FF 6C 00 6B
	sbc $A4FF85.l,X		; FF 85 FF A4
	sbc $6D006F.l,X		; FF 6F 00 6D
	sbc $A1FF87.l,X		; FF 87 FF A1
	sbc $6F0071.l,X		; FF 71 00 6F
	sbc $9FFF89.l,X		; FF 89 FF 9F
	sbc $710074.l,X		; FF 74 00 71
	sbc $9DFF8A.l,X		; FF 8A FF 9D
	sbc $730076.l,X		; FF 76 00 73
	sbc $9BFF8C.l,X		; FF 8C FF 9B
	sbc $750079.l,X		; FF 79 00 75
	sbc $99FF8E.l,X		; FF 8E FF 99
	sbc $77007B.l,X		; FF 7B 00 77
	sbc $97FF90.l,X		; FF 90 FF 97
	sbc $79007E.l,X		; FF 7E 00 79
	sbc $95FF92.l,X		; FF 92 FF 95
	sbc $7B0080.l,X		; FF 80 00 7B
	sbc $93FF93.l,X		; FF 93 FF 93
	sbc $7E0082.l,X		; FF 82 00 7E
	sbc $92FF95.l,X		; FF 95 FF 92
	sbc $800085.l,X		; FF 85 00 80
	sbc $90FF97.l,X		; FF 97 FF 90
	sbc $820087.l,X		; FF 87 00 82
	sbc $8EFF99.l,X		; FF 99 FF 8E
	sbc $850089.l,X		; FF 89 00 85
	sbc $8CFF9B.l,X		; FF 9B FF 8C
	sbc $87008B.l,X		; FF 8B 00 87
	sbc $8AFF9D.l,X		; FF 9D FF 8A
	sbc $8A008D.l,X		; FF 8D 00 8A
	sbc $89FF9F.l,X		; FF 9F FF 89
	sbc $8C008F.l,X		; FF 8F 00 8C
	sbc $87FFA1.l,X		; FF A1 FF 87
	sbc $8F0091.l,X		; FF 91 00 8F
	sbc $85FFA4.l,X		; FF A4 FF 85
	sbc $910093.l,X		; FF 93 00 91
	sbc $84FFA6.l,X		; FF A6 FF 84
	sbc $940095.l,X		; FF 95 00 94
	sbc $82FFA8.l,X		; FF A8 FF 82
	sbc $960097.l,X		; FF 97 00 96
	sbc $81FFAA.l,X		; FF AA FF 81
	sbc $990099.l,X		; FF 99 00 99
	sbc $7FFFAC.l,X		; FF AC FF 7F
	sbc $9C009B.l,X		; FF 9B 00 9C
	sbc $7EFFAF.l,X		; FF AF FF 7E
	sbc $9E009C.l,X		; FF 9C 00 9E
	sbc $7CFFB1.l,X		; FF B1 FF 7C
	sbc $A1009E.l,X		; FF 9E 00 A1
	sbc $7BFFB3.l,X		; FF B3 FF 7B
	sbc $A400A0.l,X		; FF A0 00 A4
	sbc $7AFFB6.l,X		; FF B6 FF 7A
	sbc $A700A1.l,X		; FF A1 00 A7
	sbc $78FFB8.l,X		; FF B8 FF 78
	sbc $A900A3.l,X		; FF A3 00 A9
	sbc $77FFBA.l,X		; FF BA FF 77
	sbc $AC00A4.l,X		; FF A4 00 AC
	sbc $76FFBD.l,X		; FF BD FF 76
	sbc $AF00A6.l,X		; FF A6 00 AF
	sbc $75FFBF.l,X		; FF BF FF 75
	sbc $B200A7.l,X		; FF A7 00 B2
	sbc $74FFC2.l,X		; FF C2 FF 74
	sbc $B500A8.l,X		; FF A8 00 B5
	sbc $73FFC4.l,X		; FF C4 FF 73
	sbc $B800AA.l,X		; FF AA 00 B8
	sbc $72FFC6.l,X		; FF C6 FF 72
	sbc $BB00AB.l,X		; FF AB 00 BB
	sbc $71FFC9.l,X		; FF C9 FF 71
	sbc $BE00AC.l,X		; FF AC 00 BE
	sbc $70FFCB.l,X		; FF CB FF 70
	sbc $C100AD.l,X		; FF AD 00 C1
	sbc $6FFFCE.l,X		; FF CE FF 6F
	sbc $C400AE.l,X		; FF AE 00 C4
	sbc $6EFFD1.l,X		; FF D1 FF 6E
	sbc $C700AF.l,X		; FF AF 00 C7
	sbc $6DFFD3.l,X		; FF D3 FF 6D
	sbc $CA00B0.l,X		; FF B0 00 CA
	sbc $6CFFD6.l,X		; FF D6 FF 6C
	sbc $CD00B1.l,X		; FF B1 00 CD
	sbc $6CFFD8.l,X		; FF D8 FF 6C
	sbc $D000B2.l,X		; FF B2 00 D0
	sbc $6BFFDB.l,X		; FF DB FF 6B
	sbc $D300B3.l,X		; FF B3 00 D3
	sbc $6AFFDD.l,X		; FF DD FF 6A
	sbc $D700B4.l,X		; FF B4 00 D7
	sbc $6AFFE0.l,X		; FF E0 FF 6A
	sbc $DA00B4.l,X		; FF B4 00 DA
	sbc $69FFE3.l,X		; FF E3 FF 69
	sbc $DD00B5.l,X		; FF B5 00 DD
	sbc $69FFE5.l,X		; FF E5 FF 69
	sbc $E000B6.l,X		; FF B6 00 E0
	sbc $68FFE8.l,X		; FF E8 FF 68
	sbc $E300B6.l,X		; FF B6 00 E3
	sbc $68FFEB.l,X		; FF EB FF 68
	sbc $E600B7.l,X		; FF B7 00 E6
	sbc $68FFED.l,X		; FF ED FF 68
	sbc $EA00B7.l,X		; FF B7 00 EA
	sbc $67FFF0.l,X		; FF F0 FF 67
	sbc $ED00B7.l,X		; FF B7 00 ED
	sbc $67FFF3.l,X		; FF F3 FF 67
	sbc $F000B8.l,X		; FF B8 00 F0
	sbc $67FFF5.l,X		; FF F5 FF 67
	sbc $F300B8.l,X		; FF B8 00 F3
	sbc $67FFF8.l,X		; FF F8 FF 67
	sbc $F600B8.l,X		; FF B8 00 F6
	sbc $66FFFB.l,X		; FF FB FF 66
	sbc $FA00B8.l,X		; FF B8 00 FA
	sbc $66FFFD.l,X		; FF FD FF 66
	sbc $FD00B8.l,X		; FF B8 00 FD
	sbc $660000.l,X		; FF 00 00 66
	sbc $0000B8.l,X		; FF B8 00 00
	brk $03.b		; 00 03
	brk $66.b		; 00 66
	sbc $0300B8.l,X		; FF B8 00 03
	brk $05.b		; 00 05
	brk $66.b		; 00 66
	sbc $0600B8.l,X		; FF B8 00 06
	brk $08.b		; 00 08
	brk $67.b		; 00 67
	sbc $0A00B8.l,X		; FF B8 00 0A
	brk $0B.b		; 00 0B
	brk $67.b		; 00 67
	sbc $0D00B8.l,X		; FF B8 00 0D
	brk $0D.b		; 00 0D
	brk $67.b		; 00 67
	sbc $1000B8.l,X		; FF B8 00 10
	brk $10.b		; 00 10
	brk $67.b		; 00 67
	sbc $1300B7.l,X		; FF B7 00 13
	brk $13.b		; 00 13
	brk $68.b		; 00 68
	sbc $1600B7.l,X		; FF B7 00 16
	brk $15.b		; 00 15
	brk $68.b		; 00 68
	sbc $1A00B7.l,X		; FF B7 00 1A
	brk $18.b		; 00 18
	brk $68.b		; 00 68
	sbc $1D00B6.l,X		; FF B6 00 1D
	brk $1B.b		; 00 1B
	brk $69.b		; 00 69
	sbc $2000B6.l,X		; FF B6 00 20
	brk $1D.b		; 00 1D
	brk $69.b		; 00 69
	sbc $2300B5.l,X		; FF B5 00 23
	brk $20.b		; 00 20
	brk $6A.b		; 00 6A
	sbc $2600B4.l,X		; FF B4 00 26
	brk $23.b		; 00 23
	brk $6A.b		; 00 6A
	sbc $2900B4.l,X		; FF B4 00 29
	brk $25.b		; 00 25
	brk $6B.b		; 00 6B
	sbc $2D00B3.l,X		; FF B3 00 2D
	brk $28.b		; 00 28
	brk $6C.b		; 00 6C
	sbc $3000B2.l,X		; FF B2 00 30
	brk $2A.b		; 00 2A
	brk $6C.b		; 00 6C
	sbc $3300B1.l,X		; FF B1 00 33
	brk $2D.b		; 00 2D
	brk $6D.b		; 00 6D
	sbc $3600B0.l,X		; FF B0 00 36
	brk $2F.b		; 00 2F
	brk $6E.b		; 00 6E
	sbc $3900AF.l,X		; FF AF 00 39
	brk $32.b		; 00 32
	brk $6F.b		; 00 6F
	sbc $3C00AE.l,X		; FF AE 00 3C
	brk $35.b		; 00 35
	brk $70.b		; 00 70
	sbc $3F00AD.l,X		; FF AD 00 3F
	brk $37.b		; 00 37
	brk $71.b		; 00 71
	sbc $4200AC.l,X		; FF AC 00 42
	brk $3A.b		; 00 3A
	brk $72.b		; 00 72
	sbc $4500AB.l,X		; FF AB 00 45
	brk $3C.b		; 00 3C
	brk $73.b		; 00 73
	sbc $4800AA.l,X		; FF AA 00 48
	brk $3E.b		; 00 3E
	brk $74.b		; 00 74
	sbc $4B00A8.l,X		; FF A8 00 4B
	brk $41.b		; 00 41
	brk $75.b		; 00 75
	sbc $4E00A7.l,X		; FF A7 00 4E
	brk $43.b		; 00 43
	brk $76.b		; 00 76
	sbc $5100A6.l,X		; FF A6 00 51
	brk $46.b		; 00 46
	brk $77.b		; 00 77
	sbc $5400A4.l,X		; FF A4 00 54
	brk $48.b		; 00 48
	brk $78.b		; 00 78
	sbc $5700A3.l,X		; FF A3 00 57
	brk $4A.b		; 00 4A
	brk $7A.b		; 00 7A
	sbc $5900A1.l,X		; FF A1 00 59
	brk $4D.b		; 00 4D
	brk $7B.b		; 00 7B
	sbc $5C00A0.l,X		; FF A0 00 5C
	brk $4F.b		; 00 4F
	brk $7C.b		; 00 7C
	sbc $5F009E.l,X		; FF 9E 00 5F
	brk $51.b		; 00 51
	brk $7E.b		; 00 7E
	sbc $62009C.l,X		; FF 9C 00 62
	brk $54.b		; 00 54
	brk $7F.b		; 00 7F
	sbc $64009B.l,X		; FF 9B 00 64
	brk $56.b		; 00 56
	brk $81.b		; 00 81
	sbc $670099.l,X		; FF 99 00 67
	brk $58.b		; 00 58
	brk $82.b		; 00 82
	sbc $6A0097.l,X		; FF 97 00 6A
	brk $5A.b		; 00 5A
	brk $84.b		; 00 84
	sbc $6C0095.l,X		; FF 95 00 6C
	brk $5C.b		; 00 5C
	brk $85.b		; 00 85
	sbc $6F0093.l,X		; FF 93 00 6F
	brk $5F.b		; 00 5F
	brk $87.b		; 00 87
	sbc $710091.l,X		; FF 91 00 71
	brk $61.b		; 00 61
	brk $89.b		; 00 89
	sbc $74008F.l,X		; FF 8F 00 74
	brk $63.b		; 00 63
	brk $8A.b		; 00 8A
	sbc $76008D.l,X		; FF 8D 00 76
	brk $65.b		; 00 65
	brk $8C.b		; 00 8C
	sbc $79008B.l,X		; FF 8B 00 79
	brk $67.b		; 00 67
	brk $8E.b		; 00 8E
	sbc $7B0089.l,X		; FF 89 00 7B
	brk $69.b		; 00 69
	brk $90.b		; 00 90
	sbc $7E0087.l,X		; FF 87 00 7E
	brk $6B.b		; 00 6B
	brk $92.b		; 00 92
	sbc $800085.l,X		; FF 85 00 80
	brk $6D.b		; 00 6D
	brk $93.b		; 00 93
	sbc $820082.l,X		; FF 82 00 82
	brk $6E.b		; 00 6E
	brk $95.b		; 00 95
	sbc $850080.l,X		; FF 80 00 85
	brk $70.b		; 00 70
	brk $97.b		; 00 97
	sbc $87007E.l,X		; FF 7E 00 87
	brk $72.b		; 00 72
	brk $99.b		; 00 99
	sbc $89007B.l,X		; FF 7B 00 89
	brk $74.b		; 00 74
	brk $9B.b		; 00 9B
	sbc $8B0079.l,X		; FF 79 00 8B
	brk $76.b		; 00 76
	brk $9D.b		; 00 9D
	sbc $8D0076.l,X		; FF 76 00 8D
	brk $77.b		; 00 77
	brk $9F.b		; 00 9F
	sbc $8F0074.l,X		; FF 74 00 8F
	brk $79.b		; 00 79
	brk $A1.b		; 00 A1
	sbc $910071.l,X		; FF 71 00 91
	brk $7B.b		; 00 7B
	brk $A4.b		; 00 A4
	sbc $93006F.l,X		; FF 6F 00 93
	brk $7C.b		; 00 7C
	brk $A6.b		; 00 A6
	sbc $95006C.l,X		; FF 6C 00 95
	brk $7E.b		; 00 7E
	brk $A8.b		; 00 A8
	sbc $97006A.l,X		; FF 6A 00 97
	brk $7F.b		; 00 7F
	brk $AA.b		; 00 AA
	sbc $990067.l,X		; FF 67 00 99
	brk $81.b		; 00 81
	brk $AC.b		; 00 AC
	sbc $9B0064.l,X		; FF 64 00 9B
	brk $82.b		; 00 82
	brk $AF.b		; 00 AF
	sbc $9C0062.l,X		; FF 62 00 9C
	brk $84.b		; 00 84
	brk $B1.b		; 00 B1
	sbc $9E005F.l,X		; FF 5F 00 9E
	brk $85.b		; 00 85
	brk $B3.b		; 00 B3
	sbc $A0005C.l,X		; FF 5C 00 A0
	brk $86.b		; 00 86
	brk $B6.b		; 00 B6
	sbc $A10059.l,X		; FF 59 00 A1
	brk $88.b		; 00 88
	brk $B8.b		; 00 B8
	sbc $A30057.l,X		; FF 57 00 A3
	brk $89.b		; 00 89
	brk $BA.b		; 00 BA
	sbc $A40054.l,X		; FF 54 00 A4
	brk $8A.b		; 00 8A
	brk $BD.b		; 00 BD
	sbc $A60051.l,X		; FF 51 00 A6
	brk $8B.b		; 00 8B
	brk $BF.b		; 00 BF
	sbc $A7004E.l,X		; FF 4E 00 A7
	brk $8C.b		; 00 8C
	brk $C2.b		; 00 C2
	sbc $A8004B.l,X		; FF 4B 00 A8
	brk $8D.b		; 00 8D
	brk $C4.b		; 00 C4
	sbc $AA0048.l,X		; FF 48 00 AA
	brk $8E.b		; 00 8E
	brk $C6.b		; 00 C6
	sbc $AB0045.l,X		; FF 45 00 AB
	brk $8F.b		; 00 8F
	brk $C9.b		; 00 C9
	sbc $AC0042.l,X		; FF 42 00 AC
	brk $90.b		; 00 90
	brk $CB.b		; 00 CB
	sbc $AD003F.l,X		; FF 3F 00 AD
	brk $91.b		; 00 91
	brk $CE.b		; 00 CE
	sbc $AE003C.l,X		; FF 3C 00 AE
	brk $92.b		; 00 92
	brk $D1.b		; 00 D1
	sbc $AF0039.l,X		; FF 39 00 AF
	brk $93.b		; 00 93
	brk $D3.b		; 00 D3
	sbc $B00036.l,X		; FF 36 00 B0
	brk $94.b		; 00 94
	brk $D6.b		; 00 D6
	sbc $B10033.l,X		; FF 33 00 B1
	brk $94.b		; 00 94
	brk $D8.b		; 00 D8
	sbc $B20030.l,X		; FF 30 00 B2
	brk $95.b		; 00 95
	brk $DB.b		; 00 DB
	sbc $B3002D.l,X		; FF 2D 00 B3
	brk $96.b		; 00 96
	brk $DD.b		; 00 DD
	sbc $B40029.l,X		; FF 29 00 B4
	brk $96.b		; 00 96
	brk $E0.b		; 00 E0
	sbc $B40026.l,X		; FF 26 00 B4
	brk $97.b		; 00 97
	brk $E3.b		; 00 E3
	sbc $B50023.l,X		; FF 23 00 B5
	brk $97.b		; 00 97
	brk $E5.b		; 00 E5
	sbc $B60020.l,X		; FF 20 00 B6
	brk $98.b		; 00 98
	brk $E8.b		; 00 E8
	sbc $B6001D.l,X		; FF 1D 00 B6
	brk $98.b		; 00 98
	brk $EB.b		; 00 EB
	sbc $B7001A.l,X		; FF 1A 00 B7
	brk $98.b		; 00 98
	brk $ED.b		; 00 ED
	sbc $B70016.l,X		; FF 16 00 B7
	brk $99.b		; 00 99
	brk $F0.b		; 00 F0
	sbc $B70013.l,X		; FF 13 00 B7
	brk $99.b		; 00 99
	brk $F3.b		; 00 F3
	sbc $B80010.l,X		; FF 10 00 B8
	brk $99.b		; 00 99
	brk $F5.b		; 00 F5
	sbc $B8000D.l,X		; FF 0D 00 B8
	brk $99.b		; 00 99
	brk $F8.b		; 00 F8
	sbc $B8000A.l,X		; FF 0A 00 B8
	brk $9A.b		; 00 9A
	brk $FB.b		; 00 FB
	sbc $B80006.l,X		; FF 06 00 B8
	brk $9A.b		; 00 9A
	brk $FD.b		; 00 FD
	sbc $B80003.l,X		; FF 03 00 B8
	brk $9A.b		; 00 9A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	brk $08.b		; 00 08
.ACCU 16
.INDEX 16
	rep #$30
	ldy #$0000.w
	lda #$BBAA.w
	cmp $2140.w
	bne  -5.b
.ACCU 8
	sep #$20
	lda #$CC.b
	bra  38.b
	lda [$00.b],Y
	iny
	xba
	lda #$00.b
	bra  11.b
	xba
	lda [$00.b],Y
	iny
	xba
	cmp $2140.w
	bne  -5.b
	inc A
.ACCU 16
	rep #$20
	sta APUIO0.w		; APU I/O Port 0
.ACCU 8
	sep #$20
	dex
	bne -21.b
	cmp $2140.w
	bne  -5.b
	adc #$03.b
	beq  -4.b
	pha
.ACCU 16
	rep #$20
	lda [$00.b],Y
	iny
	iny
	tax
	lda [$00.b],Y
	iny
	iny
	sta APUIO2.w		; APU I/O Port 2
.ACCU 8
	sep #$20
	cpx #$0001.w
	lda #$00.b
	rol A
	sta APUIO1.w		; APU I/O Port 1
	adc #$7F.b
	pla
	sta APUIO0.w		; APU I/O Port 0
	cmp $2140.w
	bne  -5.b
	bvs -77.b
	plp
	rts

	sbc ($FF.b,S),Y		; F3 FF
	.db $10, $00		; 10 00
	clv		; B8
	brk $99.b		; 00 99
	brk $F5.b		; 00 F5
	sbc $B8000D.l,X		; FF 0D 00 B8
	brk $99.b		; 00 99
	brk $F8.b		; 00 F8
	sbc $B8000A.l,X		; FF 0A 00 B8
	brk $9A.b		; 00 9A
	brk $FB.b		; 00 FB
	sbc $B80006.l,X		; FF 06 00 B8
	brk $9A.b		; 00 9A
	brk $FD.b		; 00 FD
	sbc $B80003.l,X		; FF 03 00 B8
	brk $9A.b		; 00 9A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	brk $08.b		; 00 08
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	ldy #$0000.w		; A0 00 00
	lda #$BBAA.w		; A9 AA BB
	cmp $2140.w		; CD 40 21
	.db $D0, $FB		; D0 FB
.ACCU 8
	sep #$20		; E2 20
	lda #$CC.b		; A9 CC
	.db $80, $26		; 80 26
	lda [$00.b],Y		; B7 00
	iny		; C8
	xba		; EB
	lda #$00.b		; A9 00
	.db $80, $0B		; 80 0B
	xba		; EB
	lda [$00.b],Y		; B7 00
	iny		; C8
	xba		; EB
	cmp $2140.w		; CD 40 21
	.db $D0, $FB		; D0 FB
	inc A		; 1A
.ACCU 16
	rep #$20		; C2 20
	sta APUIO0.w		; 8D 40 21
.ACCU 8
	sep #$20		; E2 20
	dex		; CA
	.db $D0, $EB		; D0 EB
	cmp $2140.w		; CD 40 21
	.db $D0, $FB		; D0 FB
	adc #$03.b		; 69 03
	.db $F0, $FC		; F0 FC
	pha		; 48
.ACCU 16
	rep #$20		; C2 20
	lda [$00.b],Y		; B7 00
	iny		; C8
	iny		; C8
	tax		; AA
	lda [$00.b],Y		; B7 00
	iny		; C8
	iny		; C8
	sta APUIO2.w		; 8D 42 21
.ACCU 8
	sep #$20		; E2 20
	cpx #$0001.w		; E0 01 00
	lda #$00.b		; A9 00
	rol A		; 2A
	sta APUIO1.w		; 8D 41 21
	adc #$7F.b		; 69 7F
	pla		; 68
	sta APUIO0.w		; 8D 40 21
	cmp $2140.w		; CD 40 21
	.db $D0, $FB		; D0 FB
	.db $70, $B3		; 70 B3
	plp		; 28
	rts		; 60

	cmp [$77.b],Y		; D7 77
	sbc $2BA8.w,X		; FD A8 2B
	cop $02.b		; 02 02
	dex		; CA
	cop $20.b		; 02 20
	jsr $FFFF.w		; 20 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BAFBFF.l,X		; FF FF FB BA
	eor [$6B.b]		; 47 6B
	ldy $15.b,X		; B4 15
	sbc $7F6F.w		; ED 6F 7F
	eor $7FFFFD.l,X		; 5F FD FF 7F
	sbc [$FF.b],Y		; F7 FF
	sbc $A9AB8A.l,X		; FF 8A AB A9
	brk $AB.b		; 00 AB
	dey		; 88
	plp		; 28
	ldx #$FFFF.w		; A2 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DBFEFF.l,X		; FF FF FE DB
	sta ($BF.b),Y		; 91 BF
	eor $FD01.w		; 4D 01 FD
	jmp ($D7DF.w)		; 6C DF D7
	sbc $F7FF.w,Y		; F9 FF F7
	sbc [$FF.b],Y		; F7 FF
	eor $AAABA8.l,X		; 5F A8 AB AA
	plp		; 28
	php		; 08
	rol A		; 2A
	.db $82, $A1, $FF		; 82 A1 FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FAFFFF.l,X		; FF FF FF FA
	cmp $6A3C.w		; CD 3C 6A
	stx $3A.b		; 86 3A
	jmp.w [$5FD7]		; DC D7 5F
	eor $5DFD7D.l,X		; 5F 7D FD 5D
	sbc $B0D7FF.l,X		; FF FF D7 B0
	and #$88.b		; 29 88
	plb		; AB
	tay		; A8
	rol A		; 2A
	phb		; 8B
	.db $82, $FF, $FF		; 82 FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $EBADFF.l,X		; FF FF AD EB
	sta [$BF.b],Y		; 97 BF
	dec A		; 3A
	cmp $F5D5D6.l,X		; DF D6 D5 F5
	eor $7B7FFF.l,X		; 5F FF 7F 7B
	cmp $DD.b,X		; D5 DD
	sbc $A8A002.l,X		; FF 02 A0 A8
	php		; 08
	and $22.b,S		; 23 22
	jsl $FFFFAA.l		; 22 AA FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F4ADFF.l,X		; FF FF AD F4
	eor $3B.b,X		; 55 3B
	sbc $6A.b,X		; F5 6A
	dey		; 88
	stp		; DB
	eor $DDFD7F.l,X		; 5F 7F FD DD
	cmp [$D7.b],Y		; D7 D7
	sbc $DF.b,X		; F5 DF
	dey		; 88
	lda ($2A.b,X)		; A1 2A
	phb		; 8B
	rol A		; 2A
	txa		; 8A
	cop $A0.b		; 02 A0
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $D0D5AB.l		; 6F AB D5 D0
	adc $FF.b		; 65 FF
	sbc [$D7.b],Y		; F7 D7
	sbc $5DFFFF.l,X		; FF FF FF 5D
	cmp $FD76.w,X		; DD 76 FD
	sbc $02A8.w,X		; FD A8 02
	txa		; 8A
	ror $2022.w		; 6E 22 20
	ldx #$FF2A.w		; A2 2A FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $B9FFFF.l,X		; FF FF FF B9
	sed		; F8
	cpx #$BE7B.w		; E0 7B BE
	trb $A305.w		; 1C 05 A3
	sbc $DFFF.w,X		; FD FF DF
	adc [$FD.b],Y		; 77 FD
	adc $7FFF.w,X		; 7D FF 7F
	plb		; AB
	plb		; AB
	plb		; AB
	.db $82, $8A, $AA		; 82 8A AA
	brk $A2.b		; 00 A2
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	dec $7D9F.w		; CE 9F 7D
	sed		; F8
	lda $ED.b,X		; B5 ED
	sei		; 78
	sta $7DFF.w,X		; 9D FF 7D
	sbc $FD7F.w,X		; FD 7F FD
	cmp $89DFFF.l,X		; DF FF DF 89
	ldx #$02A8.w		; A2 A8 02
	jsl $A8888A.l		; 22 8A 88 A8
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $6F6BFB.l,X		; 7F FB 6B 6F
	xba		; EB
	cmp $64.b,S		; C3 64
	sbc $5D57.w,X		; FD 57 5D
	sbc $FFDF57.l,X		; FF 57 DF FF
	sbc [$FF.b],Y		; F7 FF
	ldx #$3F2A.w		; A2 2A 3F
	php		; 08
	txa		; 8A
	txa		; 8A
	brk $82.b		; 00 82
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DAE7C5.l,X		; FF C5 E7 DA
	and [$FF.b],Y		; 37 FF
	rol $D7E7.w,X		; 3E E7 D7
	adc $FD77DF.l,X		; 7F DF 77 FD
	sbc $7FD5.w,X		; FD D5 7F
	.db $82, $0B, $2A		; 82 0B 2A
	.db $80, $8A		; 80 8A
	.db $80, $0A		; 80 0A
	.db $80, $FF		; 80 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F5FFFF.l,X		; FF FF FF F5
	sbc $FDFF.w,X		; FD FF FD
	ror A		; 6A
	jmp.w [$CDF2]		; DC F2 CD
	cmp $FFFDF7.l,X		; DF F7 FD FF
	eor [$5D.b],Y		; 57 5D
	adc $8BFF.w,X		; 7D FF 8B
	plb		; AB
	ora #$A8.b		; 09 A8
	jsl $826288.l		; 22 88 62 82
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inx		; E8
	adc $C2DA27.l		; 6F 27 DA C2
	and ($A3.b),Y		; 31 A3
	sta $FFD5.w		; 8D D5 FF
	adc [$FD.b],Y		; 77 FD
	sbc $FFFDDF.l,X		; FF DF FD FF
	tay		; A8
	ldy #$8220.w		; A0 20 82
	rol A		; 2A
	plp		; 28
	ldx #$FF2A.w		; A2 2A FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F3FFFF.l,X		; FF FF FF F3
	txa		; 8A
	adc $C728.w		; 6D 28 C7
	ora ($0A.b),Y		; 11 0A
	nop		; EA
	cmp [$FF.b],Y		; D7 FF
	sbc $FFFF.w,X		; FD FF FF
	cmp $CAD7DD.l,X		; DF DD D7 CA
	.db $80, $AA		; 80 AA
	.db $82, $AA, $8A		; 82 AA 8A
	asl $FFAA.w		; 0E AA FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	tyx		; BB
	cmp $ED.b,X		; D5 ED
	ldx $6C94.w,Y		; BE 94 6C
	sta $FFFFD7.l		; 8F D7 FF FF
	sbc ($FF.b,S),Y		; F3 FF
	sbc [$FD.b],Y		; F7 FD
	sbc $AAAABA.l,X		; FF BA AA AA
	ldx #$22AB.w		; A2 AB 22
	jsl $FFFF0A.l		; 22 0A FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $1E6CFF.l,X		; FF FF 6C 1E
	rol A		; 2A
	adc ($52.b)		; 72 52
	phy		; 5A
	lda $FDD7D2.l		; AF D2 D7 FD
	adc $FD7FD7.l,X		; 7F D7 7F FD
	sbc $A9AAFD.l,X		; FF FD AA A9
	.db $80, $33		; 80 33
	tay		; A8
	lda ($02.b,X)		; A1 02
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AFFFFF.l,X		; FF FF FF AF
	bit $FF.b		; 24 FF
	ora ($A5.b,S),Y		; 13 A5
	mvn $BF,$E2		; 54 E2 BF
	adc $F7FF5F.l,X		; 7F 5F FF F7
	sbc $FFFF.w,X		; FD FF FF
	sbc $8A2829.l,X		; FF 29 28 8A
	rol A		; 2A
	sty $A8.b		; 84 A8
	tax		; AA
	.db $82, $FF, $FF		; 82 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $49C2FF.l,X		; FF FF C2 49
	tad		; 5B
	and [$F8.b],Y		; 37 F8
	and $83.b		; 25 83
	ror $FF.b		; 66 FF
	cmp $FF7F.w,X		; DD 7F FF
	eor $F7.b,X		; 55 F7
	adc $A2A2FF.l,X		; 7F FF A2 A2
	cop $80.b		; 02 80
	pld		; 2B
	ora ($80.b,X)		; 01 80
	phd		; 0B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FC.b,X		; D5 FC
	dec $7C75.w,X		; DE 75 7C
	cmp ($D8.b)		; D2 D8
	jsr $DFF5.w		; 20 F5 DF
	sbc $FFFD.w,X		; FD FD FF
	sbc $88DFFF.l,X		; FF FF DF 88
	tay		; A8
	.db $B0, $8A		; B0 8A
	.db $80, $80		; 80 80
	tay		; A8
	txa		; 8A
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$83.b],Y		; F7 83
	lda ($BA.b,X)		; A1 BA
	dec $38F1.w,X		; DE F1 38
	lda $5FF5.w		; AD F5 5F
	adc $5FFFF7.l,X		; 7F F7 FF 5F
	sbc $2822FF.l,X		; FF FF 22 28
	tax		; AA
	sep #$0A		; E2 0A
	rol A		; 2A
	plp		; 28
	ldy #$FFFF.w		; A0 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $87EBFF.l,X		; FF FF EB 87
	tas		; 1B
	cld		; D8
	phd		; 0B
	bit $A19B.w,X		; 3C 9B A1
	adc $FD.b,X		; 75 FD
	adc [$FF.b],Y		; 77 FF
	adc $FFD7F7.l,X		; 7F F7 D7 FF
	.db $82, $AA, $A2		; 82 AA A2
	sta $22B2.w,Y		; 99 B2 22
	plp		; 28
	.db $80, $FF		; 80 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $CBFFFF.l,X		; FF FF FF CB
	adc $FFAC.w		; 6D AC FF
	sbc ($D3.b,X)		; E1 D3
	rti		; 40

	adc $FD.b,S		; 63 FD
	sbc [$FD.b],Y		; F7 FD
	sbc $7FFFFD.l,X		; FF FD FF 7F
	cmp $3A8228.l,X		; DF 28 82 3A
	plp		; 28
	dey		; 88
	jsl $FF028A.l		; 22 8A 02 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $B2FFFF.l,X		; FF FF FF B2
	lda $7033AA.l		; AF AA 33 70
	php		; 08
	.db $B0, $A1		; B0 A1
	cmp $FD.b,X		; D5 FD
	sbc [$FD.b],Y		; F7 FD
	adc $FD7FDF.l,X		; 7F DF 7F FD
	lda ($A6.b,X)		; A1 A6
	txa		; 8A
	txa		; 8A
	brk $02.b		; 00 02
	dex		; CA
	txa		; 8A
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	tda		; 7B
	adc [$3C.b]		; 67 3C
	sbc $627766.l,X		; FF 66 77 62
	plb		; AB
	cmp [$FD.b],Y		; D7 FD
	cmp $D75FF7.l,X		; DF F7 5F D7
	eor $2AFF.w,X		; 5D FF 2A
	tsx		; BA
	.db $82, $E8, $2B		; 82 E8 2B
	ldx #$A820.w		; A2 20 A8
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	txy		; 9B
	sbc $7AFB.w		; ED FB 7A
	tyx		; BB
	adc $5D74EA.l		; 6F EA 74 5D
	sbc $DFF5FD.l,X		; FF FD F5 DF
	adc $DF7F.w,X		; 7D 7F DF
	ldx #$A8AA.w		; A2 AA A8
	dey		; 88
	tax		; AA
	tay		; A8
	plp		; 28
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	cmp [$7C.b],Y		; D7 7C
	stz $78.b,X		; 74 78
	jmp ($DB20.w,X)		; 7C 20 DB
	eor [$DF.b],Y		; 57 DF
	sbc [$F7.b],Y		; F7 F7
	sbc $FFFD.w,X		; FD FD FF
	adc $0A0B26.l,X		; 7F 26 0B 0A
	rol A		; 2A
	tay		; A8
	ldx #$20A8.w		; A2 A8 20
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFEFF.l,X		; FF FF FE FD
	ora [$54.b]		; 07 54
	adc $BC.b		; 65 BC
	sbc #$F7C2.w		; E9 C2 F7
	cmp $57FFFF.l,X		; DF FF FF 57
	sbc $8AFFDD.l,X		; FF DD FF 8A
	tax		; AA
	bit #$A08B.w		; 89 8B A0
	ldx #$1988.w		; A2 88 19
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldy $7FDB.w,X		; BC DB 7F
	sta $7399D9.l,X		; 9F D9 99 73
	pea $FF7D.w		; F4 7D FF
	adc $DF7F7F.l,X		; 7F 7F 7F DF
	cmp $82A9FD.l,X		; DF FD A9 82
	and $A0.b,S		; 23 A0
	tax		; AA
	tay		; A8
	.db $80, $00		; 80 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lsr $7D6E.w,X		; 5E 6E 7D
	sbc $D27B.w,X		; FD 7B D2
	inc $5FF3.w,X		; FE F3 5F
	eor $57DDD7.l,X		; 5F D7 DD 57
	eor $485F75.l,X		; 5F 75 5F 48
	tax		; AA
	rol A		; 2A
	dey		; 88
	jsl $08A8A0.l		; 22 A0 A8 08
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$40.b]		; E7 40
	rtl		; 6B

	sta $4F.b,X		; 95 4F
	eor ($F7.b,X)		; 41 F7
	txa		; 8A
	sbc $FDD7D7.l,X		; FF D7 D7 FD
	adc $FFFDFF.l,X		; 7F FF FD FF
	.db $82, $22, $A8		; 82 22 A8
	rol A		; 2A
	plb		; AB
	txa		; 8A
	ldx #$FF8A.w		; A2 8A FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFDF.l,X		; FF DF FF F7
	ror $DB.b,X		; 76 DB
	tsx		; BA
	adc $0BC4.w		; 6D C4 0B
	sta $F5.b,X		; 95 F5
	cmp $DD77FF.l,X		; DF FF 77 DD
	sbc $D77E.w,X		; FD 7E D7
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	eor $611C.w		; 4D 1C 61
	trb $1C72.w		; 1C 72 1C
	stz $1C.b,X		; 74 1C
	adc #$6E1C.w		; 69 1C 6E
	trb $1C20.w		; 1C 20 1C
	eor $1C.b		; 45 1C
	adc $1C.b		; 65 1C
	adc ($1C.b,S),Y		; 73 1C
	adc $611C.w		; 6D 1C 61
	trb $1C61.w		; 1C 61 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	.db $50, $1C		; 50 1C
	jsr $521C.w		; 20 1C 52
	trb $1C20.w		; 1C 20 1C
	eor $1C201C.l		; 4F 1C 20 1C
	eor [$1C.b]		; 47 1C
	jsr $521C.w		; 20 1C 52
	trb $1C20.w		; 1C 20 1C
	eor ($1C.b,X)		; 41 1C
	jsr $4D1C.w		; 20 1C 4D
	trb $1C20.w		; 1C 20 1C
	eor $201C.w		; 4D 1C 20
	trb $1C49.w		; 1C 49 1C
	jsr $541C.w		; 20 1C 54
	trb $1C20.w		; 1C 20 1C
	eor $1C.b		; 45 1C
	jsr $531C.w		; 20 1C 53
	trb $1C20.w		; 1C 20 1C
	mvn $20,$1C		; 54 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	eor ($1C.b,S),Y		; 53 1C
	jsr $461C.w		; 20 1C 46
	trb $1C20.w		; 1C 20 1C
	eor $1C.b,S		; 43 1C
	jsr $2F1C.w		; 20 1C 2F
	trb $1C20.w		; 1C 20 1C
	eor ($1C.b,S),Y		; 53 1C
	jsr $4E1C.w		; 20 1C 4E
	trb $1C20.w		; 1C 20 1C
	eor $1C.b		; 45 1C
	jsr $531C.w		; 20 1C 53
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	mvn $20,$1C		; 54 1C 20
	trb $1C45.w		; 1C 45 1C
	jsr $531C.w		; 20 1C 53
	trb $1C20.w		; 1C 20 1C
	mvn $20,$1C		; 54 1C 20
	trb $1C49.w		; 1C 49 1C
	jsr $4D1C.w		; 20 1C 4D
	trb $1C20.w		; 1C 20 1C
	eor #$201C.w		; 49 1C 20
	trb $1C4E.w		; 1C 4E 1C
	jsr $451C.w		; 20 1C 45
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	.db $42, $1C		; 42 1C
	jsr $471C.w		; 20 1C 47
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C52.w		; 1C 52 1C
	jsr $451C.w		; 20 1C 45
	trb $1C20.w		; 1C 20 1C
	tax		; AA
	trb $1C20.w		; 1C 20 1C
	eor #$201C.w		; 49 1C 20
	trb $1C49.w		; 1C 49 1C
	jsr $4D1C.w		; 20 1C 4D
	trb $1C20.w		; 1C 20 1C
	.db $30, $1C		; 30 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	mvp $75,$1C		; 44 1C 75
	trb $1C62.w		; 1C 62 1C
	jsr $6B1C.w		; 20 1C 6B
	trb $1C65.w		; 1C 65 1C
	adc $1C.b		; 65 1C
	jmp ($3A1C.w)		; 6C 1C 3A
	trb $1C4D.w		; 1C 4D 1C
	adc ($1C.b,X)		; 61 1C
	adc ($1C.b)		; 72 1C
	stz $1C.b,X		; 74 1C
	adc #$6E1C.w		; 69 1C 6E
	trb $1C20.w		; 1C 20 1C
	eor $1C.b		; 45 1C
	adc $1C.b		; 65 1C
	adc ($1C.b,S),Y		; 73 1C
	adc $611C.w		; 6D 1C 61
	trb $1C61.w		; 1C 61 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $321C.w		; 20 1C 32
	trb $1C30.w		; 1C 30 1C
	and ($1C.b)		; 32 1C
	and $1C.b,X		; 35 1C
	and $321C.w		; 2D 1C 32
	trb $1C30.w		; 1C 30 1C
	and ($1C.b)		; 32 1C
	rol $1C.b,X		; 36 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C45.w		; 1C 45 1C
	adc $1C.b		; 65 1C
	adc ($1C.b,S),Y		; 73 1C
	stz $1C.b,X		; 74 1C
	adc #$201C.w		; 69 1C 20
	trb $1C76.w		; 1C 76 1C
	and ($1C.b),Y		; 31 1C
	rol $301C.w		; 2E 1C 30
	trb $1C2E.w		; 1C 2E 1C
	.db $30, $1C		; 30 1C
	and ($1C.b),Y		; 31 1C
	and $391C.w,Y		; 39 1C 39
	trb $1C30.w		; 1C 30 1C
	bit $4E1C.w		; 2C 1C 4E
	trb $1C69.w		; 1C 69 1C
	ror $741C.w		; 6E 1C 74
	trb $1C65.w		; 1C 65 1C
	ror $641C.w		; 6E 1C 64
	trb $1C6F.w		; 1C 6F 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	adc $611C.w		; 6D 1C 61
	trb $1C72.w		; 1C 72 1C
	stz $1C.b,X		; 74 1C
	adc #$6E1C.w		; 69 1C 6E
	trb $1C65.w		; 1C 65 1C
	adc $1C.b		; 65 1C
	adc ($1C.b,S),Y		; 73 1C
	adc $611C.w		; 6D 1C 61
	trb $1C61.w		; 1C 61 1C
	rol $6F1C.w		; 2E 1C 6F
	trb $1C72.w		; 1C 72 1C
	adc [$1C.b]		; 67 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1020.w		; 1C 20 10
	jsr $2010.w		; 20 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $4D.b		; 04 4D
	tsb $61.b		; 04 61
	tsb $72.b		; 04 72
	tsb $74.b		; 04 74
	tsb $69.b		; 04 69
	tsb $6E.b		; 04 6E
	tsb $20.b		; 04 20
	tsb $45.b		; 04 45
	tsb $65.b		; 04 65
	tsb $73.b		; 04 73
	tsb $6D.b		; 04 6D
	tsb $61.b		; 04 61
	tsb $61.b		; 04 61
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $50.b		; 04 50
	tsb $20.b		; 04 20
	tsb $52.b		; 04 52
	tsb $20.b		; 04 20
	tsb $4F.b		; 04 4F
	tsb $20.b		; 04 20
	tsb $47.b		; 04 47
	tsb $20.b		; 04 20
	tsb $52.b		; 04 52
	tsb $20.b		; 04 20
	tsb $41.b		; 04 41
	tsb $20.b		; 04 20
	tsb $4D.b		; 04 4D
	tsb $20.b		; 04 20
	tsb $4D.b		; 04 4D
	tsb $20.b		; 04 20
	tsb $49.b		; 04 49
	tsb $20.b		; 04 20
	tsb $54.b		; 04 54
	tsb $20.b		; 04 20
	tsb $45.b		; 04 45
	tsb $20.b		; 04 20
	tsb $53.b		; 04 53
	tsb $20.b		; 04 20
	tsb $54.b		; 04 54
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $53.b		; 04 53
	tsb $20.b		; 04 20
	tsb $46.b		; 04 46
	tsb $20.b		; 04 20
	tsb $43.b		; 04 43
	tsb $20.b		; 04 20
	tsb $2F.b		; 04 2F
	tsb $20.b		; 04 20
	tsb $53.b		; 04 53
	tsb $20.b		; 04 20
	tsb $4E.b		; 04 4E
	tsb $20.b		; 04 20
	tsb $45.b		; 04 45
	tsb $20.b		; 04 20
	tsb $53.b		; 04 53
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $54.b		; 04 54
	tsb $20.b		; 04 20
	tsb $45.b		; 04 45
	tsb $20.b		; 04 20
	tsb $53.b		; 04 53
	tsb $20.b		; 04 20
	tsb $54.b		; 04 54
	tsb $20.b		; 04 20
	tsb $49.b		; 04 49
	tsb $20.b		; 04 20
	tsb $4D.b		; 04 4D
	tsb $20.b		; 04 20
	tsb $49.b		; 04 49
	tsb $20.b		; 04 20
	tsb $4E.b		; 04 4E
	tsb $20.b		; 04 20
	tsb $45.b		; 04 45
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $2004.w		; 20 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	trb $0420.w		; 1C 20 04
	jsr $2004.w		; 20 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	trb $0420.w		; 1C 20 04
	jsr $2004.w		; 20 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $42.b		; 04 42
	tsb $20.b		; 04 20
	trb $0447.w		; 1C 47 04
	jsr $2004.w		; 20 04 20
	tsb $20.b		; 04 20
	tsb $52.b		; 04 52
	tsb $20.b		; 04 20
	tsb $45.b		; 04 45
	tsb $20.b		; 04 20
	tsb $AA.b		; 04 AA
	tsb $20.b		; 04 20
	tsb $49.b		; 04 49
	tsb $20.b		; 04 20
	tsb $49.b		; 04 49
	tsb $20.b		; 04 20
	tsb $4D.b		; 04 4D
	tsb $20.b		; 04 20
	tsb $30.b		; 04 30
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	trb $0420.w		; 1C 20 04
	jsr $2004.w		; 20 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	trb $0420.w		; 1C 20 04
	jsr $2004.w		; 20 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $44.b		; 04 44
	tsb $75.b		; 04 75
	tsb $62.b		; 04 62
	tsb $20.b		; 04 20
	tsb $6B.b		; 04 6B
	tsb $65.b		; 04 65
	tsb $65.b		; 04 65
	tsb $6C.b		; 04 6C
	tsb $3A.b		; 04 3A
	tsb $4D.b		; 04 4D
	tsb $61.b		; 04 61
	tsb $72.b		; 04 72
	tsb $74.b		; 04 74
	tsb $69.b		; 04 69
	tsb $6E.b		; 04 6E
	tsb $20.b		; 04 20
	tsb $45.b		; 04 45
	tsb $65.b		; 04 65
	tsb $73.b		; 04 73
	tsb $6D.b		; 04 6D
	tsb $61.b		; 04 61
	tsb $61.b		; 04 61
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $2004.w		; 20 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $201C.w		; 20 1C 20
	trb $1C20.w		; 1C 20 1C
	jsr $2004.w		; 20 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $32.b		; 04 32
	tsb $30.b		; 04 30
	tsb $32.b		; 04 32
	tsb $35.b		; 04 35
	tsb $2D.b		; 04 2D
	tsb $32.b		; 04 32
	tsb $30.b		; 04 30
	tsb $32.b		; 04 32
	tsb $36.b		; 04 36
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $45.b		; 04 45
	tsb $65.b		; 04 65
	tsb $73.b		; 04 73
	tsb $74.b		; 04 74
	tsb $69.b		; 04 69
	tsb $20.b		; 04 20
	tsb $76.b		; 04 76
	tsb $31.b		; 04 31
	tsb $2E.b		; 04 2E
	tsb $30.b		; 04 30
	tsb $2E.b		; 04 2E
	tsb $30.b		; 04 30
	tsb $31.b		; 04 31
	tsb $39.b		; 04 39
	tsb $39.b		; 04 39
	tsb $30.b		; 04 30
	tsb $2C.b		; 04 2C
	tsb $4E.b		; 04 4E
	tsb $69.b		; 04 69
	tsb $6E.b		; 04 6E
	tsb $74.b		; 04 74
	tsb $65.b		; 04 65
	tsb $6E.b		; 04 6E
	tsb $64.b		; 04 64
	tsb $6F.b		; 04 6F
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $6D.b		; 04 6D
	tsb $61.b		; 04 61
	tsb $72.b		; 04 72
	tsb $74.b		; 04 74
	tsb $69.b		; 04 69
	tsb $6E.b		; 04 6E
	tsb $65.b		; 04 65
	tsb $65.b		; 04 65
	tsb $73.b		; 04 73
	tsb $6D.b		; 04 6D
	tsb $61.b		; 04 61
	tsb $61.b		; 04 61
	tsb $2E.b		; 04 2E
	tsb $6F.b		; 04 6F
	tsb $72.b		; 04 72
	tsb $67.b		; 04 67
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $20.b		; 04 20
	tsb $24.b		; 04 24
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	eor $6108.w		; 4D 08 61
	php		; 08
	adc ($08.b)		; 72 08
	stz $08.b,X		; 74 08
	adc #$6E08.w		; 69 08 6E
	php		; 08
	jsr $4508.w		; 20 08 45
	php		; 08
	adc $08.b		; 65 08
	adc ($08.b,S),Y		; 73 08
	adc $6108.w		; 6D 08 61
	php		; 08
	adc ($08.b,X)		; 61 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	.db $50, $08		; 50 08
	jsr $5208.w		; 20 08 52
	php		; 08
	jsr $4F08.w		; 20 08 4F
	php		; 08
	jsr $4708.w		; 20 08 47
	php		; 08
	jsr $5208.w		; 20 08 52
	php		; 08
	jsr $4108.w		; 20 08 41
	php		; 08
	jsr $4D08.w		; 20 08 4D
	php		; 08
	jsr $4D08.w		; 20 08 4D
	php		; 08
	jsr $4908.w		; 20 08 49
	php		; 08
	jsr $5408.w		; 20 08 54
	php		; 08
	jsr $4508.w		; 20 08 45
	php		; 08
	jsr $5308.w		; 20 08 53
	php		; 08
	jsr $5408.w		; 20 08 54
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	eor ($08.b,S),Y		; 53 08
	jsr $4608.w		; 20 08 46
	php		; 08
	jsr $4308.w		; 20 08 43
	php		; 08
	jsr $2F08.w		; 20 08 2F
	php		; 08
	jsr $5308.w		; 20 08 53
	php		; 08
	jsr $4E08.w		; 20 08 4E
	php		; 08
	jsr $4508.w		; 20 08 45
	php		; 08
	jsr $5308.w		; 20 08 53
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $5408.w		; 20 08 54
	php		; 08
	jsr $4508.w		; 20 08 45
	php		; 08
	jsr $5308.w		; 20 08 53
	php		; 08
	jsr $5408.w		; 20 08 54
	php		; 08
	jsr $4908.w		; 20 08 49
	php		; 08
	jsr $4D08.w		; 20 08 4D
	php		; 08
	jsr $4908.w		; 20 08 49
	php		; 08
	jsr $4E08.w		; 20 08 4E
	php		; 08
	jsr $4508.w		; 20 08 45
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $AA08.w		; 20 08 AA
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $4208.w		; 20 08 42
	php		; 08
	jsr $4708.w		; 20 08 47
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $5208.w		; 20 08 52
	php		; 08
	jsr $4508.w		; 20 08 45
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $4908.w		; 20 08 49
	php		; 08
	jsr $4908.w		; 20 08 49
	php		; 08
	jsr $4D08.w		; 20 08 4D
	php		; 08
	jsr $3008.w		; 20 08 30
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $4408.w		; 20 08 44
	php		; 08
	adc $08.b,X		; 75 08
	.db $62, $08, $20		; 62 08 20
	php		; 08
	rtl		; 6B

	php		; 08
	adc $08.b		; 65 08
	adc $08.b		; 65 08
	jmp ($3A08.w)		; 6C 08 3A
	php		; 08
	eor $6108.w		; 4D 08 61
	php		; 08
	adc ($08.b)		; 72 08
	stz $08.b,X		; 74 08
	adc #$6E08.w		; 69 08 6E
	php		; 08
	jsr $4508.w		; 20 08 45
	php		; 08
	adc $08.b		; 65 08
	adc ($08.b,S),Y		; 73 08
	adc $6108.w		; 6D 08 61
	php		; 08
	adc ($08.b,X)		; 61 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	and ($08.b)		; 32 08
	.db $30, $08		; 30 08
	and ($08.b)		; 32 08
	and $08.b,X		; 35 08
	and $3208.w		; 2D 08 32
	php		; 08
	.db $30, $08		; 30 08
	and ($08.b)		; 32 08
	rol $08.b,X		; 36 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	eor $08.b		; 45 08
	adc $08.b		; 65 08
	adc ($08.b,S),Y		; 73 08
	stz $08.b,X		; 74 08
	adc #$2008.w		; 69 08 20
	php		; 08
	ror $08.b,X		; 76 08
	and ($08.b),Y		; 31 08
	rol $3008.w		; 2E 08 30
	php		; 08
	rol $3008.w		; 2E 08 30
	php		; 08
	and $3108.w		; 2D 08 31
	php		; 08
	and ($08.b),Y		; 31 08
	and $3908.w,Y		; 39 08 39
	php		; 08
	.db $30, $08		; 30 08
	bit $4E08.w		; 2C 08 4E
	php		; 08
	adc #$6E08.w		; 69 08 6E
	php		; 08
	stz $08.b,X		; 74 08
	adc $08.b		; 65 08
	ror $6408.w		; 6E 08 64
	php		; 08
	adc $082008.l		; 6F 08 20 08
	jsr $2008.w		; 20 08 20
	php		; 08
	adc $6108.w		; 6D 08 61
	php		; 08
	adc ($08.b)		; 72 08
	stz $08.b,X		; 74 08
	adc #$6E08.w		; 69 08 6E
	php		; 08
	adc $08.b		; 65 08
	adc $08.b		; 65 08
	adc ($08.b,S),Y		; 73 08
	adc $6108.w		; 6D 08 61
	php		; 08
	adc ($08.b,X)		; 61 08
	rol $6F08.w		; 2E 08 6F
	php		; 08
	adc ($08.b)		; 72 08
	adc [$08.b]		; 67 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2008.w		; 20 08 20
	php		; 08
	jsr $2010.w		; 20 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $4D		; 10 4D
	.db $10, $61		; 10 61
	.db $10, $72		; 10 72
	.db $10, $74		; 10 74
	.db $10, $69		; 10 69
	.db $10, $6E		; 10 6E
	.db $10, $20		; 10 20
	.db $10, $45		; 10 45
	.db $10, $65		; 10 65
	.db $10, $73		; 10 73
	.db $10, $6D		; 10 6D
	.db $10, $61		; 10 61
	.db $10, $61		; 10 61
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	jsr $1020.w		; 20 20 10
	jsr $2010.w		; 20 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $50		; 10 50
	.db $10, $20		; 10 20
	.db $10, $52		; 10 52
	.db $10, $20		; 10 20
	.db $10, $4F		; 10 4F
	.db $10, $20		; 10 20
	.db $10, $47		; 10 47
	.db $10, $20		; 10 20
	.db $10, $52		; 10 52
	.db $10, $20		; 10 20
	.db $10, $41		; 10 41
	.db $10, $20		; 10 20
	.db $10, $4D		; 10 4D
	.db $10, $20		; 10 20
	.db $10, $4D		; 10 4D
	.db $10, $20		; 10 20
	.db $10, $49		; 10 49
	.db $10, $20		; 10 20
	.db $10, $54		; 10 54
	.db $10, $20		; 10 20
	.db $10, $45		; 10 45
	.db $10, $20		; 10 20
	.db $10, $53		; 10 53
	.db $10, $20		; 10 20
	.db $10, $54		; 10 54
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $53		; 10 53
	.db $10, $20		; 10 20
	.db $10, $46		; 10 46
	.db $10, $20		; 10 20
	.db $10, $43		; 10 43
	.db $10, $20		; 10 20
	.db $10, $2F		; 10 2F
	.db $10, $20		; 10 20
	.db $10, $53		; 10 53
	.db $10, $20		; 10 20
	.db $10, $4E		; 10 4E
	.db $10, $20		; 10 20
	.db $10, $45		; 10 45
	.db $10, $20		; 10 20
	.db $10, $53		; 10 53
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $54		; 10 54
	.db $10, $20		; 10 20
	.db $10, $45		; 10 45
	.db $10, $20		; 10 20
	.db $10, $53		; 10 53
	.db $10, $20		; 10 20
	.db $10, $54		; 10 54
	.db $10, $20		; 10 20
	.db $10, $49		; 10 49
	.db $10, $20		; 10 20
	.db $10, $4D		; 10 4D
	.db $10, $20		; 10 20
	.db $10, $49		; 10 49
	.db $10, $20		; 10 20
	.db $10, $4E		; 10 4E
	.db $10, $20		; 10 20
	.db $10, $45		; 10 45
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $42		; 10 42
	.db $10, $20		; 10 20
	.db $10, $47		; 10 47
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $52		; 10 52
	.db $10, $20		; 10 20
	.db $10, $45		; 10 45
	.db $10, $20		; 10 20
	.db $10, $AA		; 10 AA
	.db $10, $20		; 10 20
	.db $10, $49		; 10 49
	.db $10, $20		; 10 20
	.db $10, $49		; 10 49
	.db $10, $20		; 10 20
	.db $10, $4D		; 10 4D
	.db $10, $20		; 10 20
	.db $10, $30		; 10 30
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $44		; 10 44
	.db $10, $75		; 10 75
	.db $10, $62		; 10 62
	.db $10, $20		; 10 20
	.db $10, $6B		; 10 6B
	.db $10, $65		; 10 65
	.db $10, $65		; 10 65
	.db $10, $6C		; 10 6C
	.db $10, $3A		; 10 3A
	.db $10, $4D		; 10 4D
	.db $10, $61		; 10 61
	.db $10, $72		; 10 72
	.db $10, $74		; 10 74
	.db $10, $69		; 10 69
	.db $10, $6E		; 10 6E
	.db $10, $20		; 10 20
	.db $10, $45		; 10 45
	.db $10, $65		; 10 65
	.db $10, $73		; 10 73
	.db $10, $6D		; 10 6D
	.db $10, $61		; 10 61
	.db $10, $61		; 10 61
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $32		; 10 32
	.db $10, $30		; 10 30
	.db $10, $32		; 10 32
	.db $10, $35		; 10 35
	.db $10, $2D		; 10 2D
	.db $10, $32		; 10 32
	.db $10, $30		; 10 30
	.db $10, $32		; 10 32
	.db $10, $36		; 10 36
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $45		; 10 45
	.db $10, $65		; 10 65
	.db $10, $73		; 10 73
	.db $10, $74		; 10 74
	.db $10, $69		; 10 69
	.db $10, $20		; 10 20
	.db $10, $76		; 10 76
	.db $10, $31		; 10 31
	.db $10, $2E		; 10 2E
	.db $10, $30		; 10 30
	.db $10, $2E		; 10 2E
	.db $10, $30		; 10 30
	.db $10, $31		; 10 31
	.db $10, $39		; 10 39
	.db $10, $39		; 10 39
	.db $10, $30		; 10 30
	.db $10, $2C		; 10 2C
	.db $10, $4E		; 10 4E
	.db $10, $69		; 10 69
	.db $10, $6E		; 10 6E
	.db $10, $74		; 10 74
	.db $10, $65		; 10 65
	.db $10, $6E		; 10 6E
	.db $10, $64		; 10 64
	.db $10, $6F		; 10 6F
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $6D		; 10 6D
	.db $10, $61		; 10 61
	.db $10, $72		; 10 72
	.db $10, $74		; 10 74
	.db $10, $69		; 10 69
	.db $10, $6E		; 10 6E
	.db $10, $65		; 10 65
	.db $10, $65		; 10 65
	.db $10, $73		; 10 73
	.db $10, $6D		; 10 6D
	.db $10, $61		; 10 61
	.db $10, $61		; 10 61
	.db $10, $2E		; 10 2E
	.db $10, $6F		; 10 6F
	.db $10, $72		; 10 72
	.db $10, $67		; 10 67
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $20		; 10 20
	.db $10, $00		; 10 00
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
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	rti		; 40

	.db $10, $42		; 10 42
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
	pha		; 48
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	rti		; 40

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
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	brk $80.b		; 00 80
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
	php		; 08
	brk $02.b		; 00 02
	jsl $200400.l		; 22 00 04 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	.db $10, $00		; 10 00
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
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	.db $10, $01		; 10 01
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
	brk $40.b		; 00 40
	brk $21.b		; 00 21
	brk $06.b		; 00 06
	jsr $0002.w		; 20 02 00
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
	brk $20.b		; 00 20
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	brk $00.b		; 00 00
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
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	.db $50, $40		; 50 40
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	jsr $0000.w		; 20 00 00
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
	brk $20.b		; 00 20
	brk $84.b		; 00 84
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
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
	sty $00.b		; 84 00
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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	tsb $20.b		; 04 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $40.b		; 00 40
	brk $41.b		; 00 41
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	php		; 08
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
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
	brk $01.b		; 00 01
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
	brk $10.b		; 00 10
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $41.b		; 00 41
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
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $04.b		; 00 04
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
	tsb $90.b		; 04 90
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	iny		; C8
	rti		; 40

	brk $20.b		; 00 20
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	and ($00.b,X)		; 21 00
	.db $50, $00		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $10.b		; 00 10
	ora ($00.b,X)		; 01 00
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
	brk $02.b		; 00 02
	brk $10.b		; 00 10
	trb $00.b		; 14 00
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
	rti		; 40

	brk $50.b		; 00 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $40		; 10 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
	.db $10, $10		; 10 10
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
	rti		; 40

	tsb $10.b		; 04 10
	.db $80, $00		; 80 00
	brk $02.b		; 00 02
	and ($00.b)		; 32 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $28.b		; 00 28
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $36.b		; 00 36
	tsx		; BA
	eor [$E9.b]		; 47 E9
	tax		; AA
	inc $792B.w		; EE 2B 79
	inc $FFFF.w,X		; FE FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFEFCE.l,X		; FF CE EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFF97.l,X		; FF 97 FF FD
	cmp $FDDFD5.l,X		; DF D5 DF FD
	adc [$EF.b],Y		; 77 EF
	xba		; EB
	stz $3AEA.w		; 9C EA 3A
	jsr ($A82B.w,X)		; FC 2B A8
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FF7F9A.l,X		; 7F 9A 7F FF
	cmp $FFFF.w,X		; DD FF FF
	sbc $757F7F.l,X		; FF 7F 7F 75
	cmp $FFFDFD.l,X		; DF FD FD FF
	sbc $FEFB.w,X		; FD FB FE
	dex		; CA
	ror $AABE.w,X		; 7E BE AA
	ldx $FFA3.w,Y		; BE A3 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFB.l		; AF FB FF FF
	lda $5FFFAF.l,X		; BF AF FF 5F
	cmp $D7.b,X		; D5 D7
	adc [$F7.b],Y		; 77 F7
	sbc [$FF.b],Y		; F7 FF
	sbc $AE8AFE.l,X		; FF FE 8A AE
	tax		; AA
	rol A		; 2A
	dec $22A0.w,X		; DE A0 22
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF5FF.l,X		; FF FF F5 FF
	sbc $D9AFFF.l		; EF FF AF D9
	xce		; FB
	sbc #$FF79.w		; E9 79 FF
	sbc $F777FD.l,X		; FF FD 77 F7
	sbc [$DF.b],Y		; F7 DF
	sbc $6B9B7F.l,X		; FF 7F 9B 6B
	tay		; A8
	sbc ($AB.b,X)		; E1 AB
	ldx $AF88.w		; AE 88 AF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFDFFF.l,X		; FF FF DF DF
	sbc $FDFFFD.l,X		; FF FD FF FD
	sbc $FDFBFF.l,X		; FF FF FB FD
	sbc $F75554.l,X		; FF 54 55 F7
	sbc $F7DF.w,X		; FD DF F7
	cmp $2FFF.w,X		; DD FF 2F
	tsx		; BA
	sta $EA4BE8.l,X		; 9F E8 4B EA
	ply		; 7A
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $67FFFE.l,X		; FF FE FF 67
	adc $EF7997.l,X		; 7F 97 79 EF
	cmp [$7F.b],Y		; D7 7F
	sbc $FF7D77.l,X		; FF 77 7D FF
	dec $FFFF.w,X		; DE FF FF
	nop		; EA
	txy		; 9B
	inc $F8BF.w		; EE BF F8
	inc $FF6F.w		; EE 6F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	xce		; FB
	sbc $DEDFCF.l,X		; FF CF DF DE
	xce		; FB
	cmp $51FDFF.l		; CF FF FD 51
	cmp [$F7.b],Y		; D7 F7
	sbc $BF7FFF.l,X		; FF FF 7F BF
	rol A		; 2A
	ldx $BAAA.w		; AE AA BA
	cld		; D8
	dec A		; 3A
	tax		; AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBDDB.l		; EF DB BD FF
	sbc $FDFBEF.l		; EF EF FB FD
	sbc $7DDF.w,X		; FD DF 7D
	cmp $FDDFEF.l,X		; DF EF DF FD
	eor $AEEAFF.l,X		; 5F FF EA AE
.ACCU 8
.INDEX 8
	sep #$3A		; E2 3A
	plx		; FA
	tsx		; BA
	txs		; 9A
	sbc $FEFFFF.l		; EF FF FF FE
	inc $FFFF.w,X		; FE FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FF5FFE.l,X		; FF FE 5F FF
	adc $F7F77F.l,X		; 7F 7F F7 F7
	sbc $FF57.w,X		; FD 57 FF
	plb		; AB
	plx		; FA
	tax		; AA
	dey		; 88
	php		; 08
	inc $FFAA.w,X		; FE AA FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEBFFE.l,X		; FF FE BF FE
	sbc $FFF5.w,Y		; F9 F5 FF
	sbc $FDF7D7.l,X		; FF D7 F7 FD
	eor $7FFFFF.l,X		; 5F FF FF 7F
	sbc $EAF8EA.l,X		; FF EA F8 EA
	dex		; CA
	ldy #$2A.b		; A0 2A
	.db $82, $FF, $FF		; 82 FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FB.b,X		; F5 FB
	xce		; FB
	sbc $DFDF.w,X		; FD DF DF
	sbc [$FF.b],Y		; F7 FF
	adc [$F5.b],Y		; 77 F5
	cmp $F7.b,X		; D5 F7
	adc $FD.b,X		; 75 FD
	sbc $E38AE2.l,X		; FF E2 8A E3
	sed		; F8
	stx $88.b		; 86 88
	sta ($FF.b)		; 92 FF
	sbc $FFEBFF.l,X		; FF FF EB FF
	sbc $77FFFF.l,X		; FF FF FF 77
	sbc $FBFB.w		; ED FB FB
	sta $F6DE77.l,X		; 9F 77 DE F6
	sbc $FDDFF5.l,X		; FF F5 DF FD
	sbc $77FF.w,X		; FD FF 77
	sbc [$EF.b],Y		; F7 EF
	plx		; FA
	inc $BF3E.w,X		; FE 3E BF
	nop		; EA
	txy		; 9B
	tax		; AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $EFA7FF.l,X		; 7F FF A7 EF
	cmp $7F7FFF.l,X		; DF FF 7F 7F
	eor $DDD77D.l,X		; 5F 7D D7 DD
	cmp [$FD.b]		; C7 FD
	sbc [$F7.b],Y		; F7 F7
	sbc $28DEB2.l,X		; FF B2 DE 28
	inc $AAA3.w,X		; FE A3 AA
	ldy $FFFF.w		; AC FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $BFF7FC.l,X		; 7F FC F7 BF
	sbc $F5C5FF.l,X		; FF FF C5 F5
	cmp [$FF.b],Y		; D7 FF
	cmp $DFFDF5.l,X		; DF F5 FD DF
	sbc $ACEEFA.l,X		; FF FA EE AC
	plb		; AB
	ldx $BE7A.w,Y		; BE 7A BE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FDBFFF.l,X		; FF FF BF FD
	sbc $FEFFD5.l,X		; FF D5 FF FE
	xce		; FB
	sbc $FFD7D7.l,X		; FF D7 D7 FF
	sbc $DF.b,X		; F5 DF
	sbc $DFFD.w,X		; FD FD DF
	sbc $2BAABA.l,X		; FF BA AA 2B
	rol $B38A.w,X		; 3E 8A B3
	plb		; AB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc ($FC.b,S),Y		; F3 FC
	inc $BFFC.w,X		; FE FC BF
	pei ($9F.b)		; D4 9F
	ldx $7DDF.w,Y		; BE DF 7D
	sbc $7DF7.w,X		; FD F7 7D
	cmp $FFFF77.l,X		; DF 77 FF FF
	dec $8EFA.w		; CE FA 8E
	ldx $29AA.w,Y		; BE AA 29
	tax		; AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFD.l,X		; BF FD FF FF
	adc [$55.b],Y		; 77 55
	eor $55D577.l,X		; 5F 77 D5 55
	sbc $A2BB7D.l,X		; FF 7D BB A2
	ldy $C82F.w,X		; BC 2F C8
	tax		; AA
	ldx #$E2.b		; A2 E2
	sbc $7FFCFF.l,X		; FF FF FC 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $DFFFFF.l,X		; 7F FF FF DF
	cmp $79FF7F.l,X		; DF 7F FF 79
	lda [$DF.b],Y		; B7 DF
	sbc $7FFFFB.l,X		; FF FB FF 7F
	sbc [$77.b],Y		; F7 77
	sbc $AEFAF2.l,X		; FF F2 FA AE
	inx		; E8
	tyx		; BB
	tax		; AA
	lda $FF.b,S		; A3 FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	xba		; EB
	xce		; FB
	tsa		; 3B
	sbc [$FF.b]		; E7 FF
	sbc $D5.b,X		; F5 D5
	eor [$F5.b],Y		; 57 F5
	eor $777F.w,X		; 5D 7F 77
	adc $4AFB7F.l,X		; 7F 7F FB 4A
	tsx		; BA
	inc $BA2F.w		; EE 2F BA
	tax		; AA
	stx $FF.b		; 86 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $7FFFFF.l,X		; FF FF FF 7F
	lda $F7F9FF.l,X		; BF FF F9 F7
	sbc $FF7775.l,X		; FF 75 77 FF
	adc $AFFFDD.l,X		; 7F DD FF AF
	txa		; 8A
	xba		; EB
	tsx		; BA
	lda $ABEA8B.l		; AF 8B EA AB
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FDB3FF.l,X		; FF FF B3 FD
	sbc $FF3FFF.l,X		; FF FF 3F FF
	cmp $FF9157.l,X		; DF 57 91 FF
	sbc $DF.b,X		; F5 DF
	eor $ADBB5F.l,X		; 5F 5F BB AD
	sbc $A9EAAA.l		; EF AA EA A9
	phb		; 8B
	txs		; 9A
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFBBBC.l		; EF BC BB DF
	adc $E7FB.w		; 6D FB E7
	cmp $DDFD.w,X		; DD FD DD
	sbc [$D7.b],Y		; F7 D7
	adc [$F7.b],Y		; 77 F7
	sbc $AAFFFF.l,X		; FF FF FF AA
	nop		; EA
	tsa		; 3B
	inx		; E8
	tsx		; BA
	tyx		; BB
	sta $FFFF.w,Y		; 99 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEBFFF.l,X		; FF FF BF FE
	plx		; FA
	inc $F7FF.w		; EE FF F7
	eor $F5DDF5.l,X		; 5F F5 DD F5
	cmp $D7DF.w,X		; DD DF D7
	cmp [$FF.b],Y		; D7 FF
	sbc $8ABBBF.l,X		; FF BF BB 8A
	dec A		; 3A
	inc $A68A.w		; EE 8A A6
	ldx $F7FF.w		; AE FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda [$FF.b]		; A7 FF
	lda [$AF.b],Y		; B7 AF
	sbc $FFFFFC.l,X		; FF FC FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFDDF.l,X		; FF DF FD FF
	ldx $EA9A.w		; AE 9A EA
	lda $2FAA3E.l		; AF 3E AA 2F
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBBFBF.l,X		; FF BF BF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $F5.b,X		; D5 F5
	sbc [$5D.b],Y		; F7 5D
	sbc $5DD7FF.l,X		; FF FF D7 5D
	ldx $FEE2.w,Y		; BE E2 FE
	inc A		; 1A
	inc $BAAF.w		; EE AF BA
	tax		; AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $DFDB.w,X		; FE DB DF
	sbc $C7.b,X		; F5 C7
	xce		; FB
	dec $F7FC.w		; CE FC F7
	eor $55F5F7.l,X		; 5F F7 F5 55
	adc [$FF.b],Y		; 77 FF
	adc $AEAAEF.l,X		; 7F EF AA AE
	xba		; EB
	tax		; AA
	lda ($EA.b)		; B2 EA
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $DFFFBF.l,X		; FF BF FF DF
	sbc $57FDFF.l,X		; FF FF FD 57
	eor $F5DF5D.l,X		; 5F 5D DF F5
	sbc $B3FB.w,X		; FD FB B3
	ldx $BAF6.w		; AE F6 BA
	lda $FFAB22.l		; AF 22 AB FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFD.l,X		; FF FD FD FF
	xce		; FB
	sbc $7FDFEB.l,X		; FF EB DF 7F
	eor $F7DD4D.l,X		; 5F 4D DD F7
	cmp $FDFF.w,X		; DD FF FD
	ldx $AAFA.w		; AE FA AA
	nop		; EA
	lda #$9E.b		; A9 9E
	tax		; AA
	sbc $FDFFFB.l,X		; FF FB FF FD
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFBD7.l		; EF D7 FB FF
	sbc $FEEDFF.l,X		; FF FF ED FE
	cmp $D7557F.l,X		; DF 7F 55 D7
	cmp $FFDD7D.l,X		; DF 7D DD FF
	sbc $BEBAAA.l		; EF AA BA BE
	.db $B0, $A8		; B0 A8
	rol A		; 2A
	clv		; B8
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FEFE7F.l,X		; 7F 7F FE FE
	inc $FFF3.w,X		; FE F3 FF
	dec $9FFF.w		; CE FF 9F
	sbc $DD.b,X		; F5 DD
	adc $DFDF.w,X		; 7D DF DF
	sbc $A8FF.w,X		; FD FF A8
	tay		; A8
	nop		; EA
	ror $E3A2.w,X		; 7E A2 E3
	ldx $FFFF.w		; AE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF9FF.l,X		; FF FF F9 FF
	sbc $FE5F7F.l,X		; FF 7F 5F FE
	sbc $DFF7FF.l,X		; FF FF F7 DF
	sbc $5FF7.w,X		; FD F7 5F
	sbc $F7.b,X		; F5 F7
	sbc $EF.b,X		; F5 EF
	plb		; AB
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	ldy $FF3C.w		; AC 3C FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDDFFE.l,X		; FF FE DF FD
	sbc [$BE.b],Y		; F7 BE
	ldx $FFFF.w,Y		; BE FF FF
	sbc $DF7F.w,X		; FD 7F DF
	adc $ABFFFD.l,X		; 7F FD FF AB
	inc $BAEB.w,X		; FE EB BA
	plb		; AB
	ldx $BAA8.w		; AE A8 BA
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFF.w,X		; FD FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	asl $FA7B.w		; 0E 7B FA
	lda $5FF7FB.l,X		; BF FB F7 5F
	adc [$DF.b],Y		; 77 DF
	eor $57.b,X		; 55 57
	cmp $ABFD.w,X		; DD FD AB
	adc $ACAB.w,X		; 7D AB AC
	ror A		; 6A
	sta $FFE5BA.l		; 8F BA E5 FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	adc $7FEBEF.l,X		; 7F EF EB 7F
	sbc $5585FE.l,X		; FF FE 85 55
	cmp $D5.b,X		; D5 D5
	sbc $D5.b,X		; F5 D5
	sbc $ECFFFF.l,X		; FF FF FF EC
	ldx $8FEB.w		; AE EB 8F
	sta $A9AF9F.l		; 8F 9F AF A9
	sbc $DFFFFD.l,X		; FF FD FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F5F5DF.l,X		; FF DF F5 F5
	sbc $BFFFFB.l,X		; FF FB FF BF
	sbc $FF.b		; E5 FF
	sbc $7D57FD.l,X		; FF FD 57 7D
	cmp $E8EFFF.l,X		; DF FF EF E8
	rol $A2AA.w		; 2E AA A2
	lda $8E.b,S		; A3 8E
	ldx $FFFF.w		; AE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F3F6FF.l,X		; FF FF F6 F3
	sbc $E7FA0F.l,X		; FF 0F FA E7
	adc $F57FB9.l,X		; 7F B9 7F F5
	sbc $FFDF.w,X		; FD DF FF
	sbc $FFDF.w,X		; FD DF FF
	ldx $FBEA.w		; AE EA FB
	rol $92EE.w		; 2E EE 92
	lda $0E.b,S		; A3 0E
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	lda $DBF7F5.l,X		; BF F5 F7 DB
	sbc $B8FFFF.l,X		; FF FF FF B8
	adc $5D7FF5.l,X		; 7F F5 7F 5D
	sbc $F7FD.w,X		; FD FD F7
	sbc $2EAEBF.l,X		; FF BF AE 2E
	inc $B9AA.w,X		; FE AA B9
	and #$3A.b		; 29 3A
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	dec $F7F3.w		; CE F3 F7
	sbc $CEFF.w,X		; FD FF CE
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	adc $FD.b,X		; 75 FD
	adc $D7F5.w,X		; 7D F5 D7
	adc $BBFF7D.l,X		; 7F 7D FF BB
	tax		; AA
	pld		; 2B
	inc $ABAB.w		; EE AB AB
	tsx		; BA
	tsx		; BA
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $3EFFF7.l,X		; FF F7 FF 3E
	sbc $FFFFFF.l		; EF FF FF FF
	cmp $7F.b,X		; D5 7F
	inc $F7FD.w		; EE FD F7
	cmp [$7F.b],Y		; D7 7F
	cmp $AAC2C8.l,X		; DF C8 C2 AA
	lda $AFA8.w		; AD A8 AF
	tax		; AA
	tax		; AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	xce		; FB
	lda [$FD.b]		; A7 FD
	sbc $E73F.w,X		; FD 3F E7
	inc $D7BF.w,X		; FE BF D7
	cmp [$7F.b],Y		; D7 7F
	adc $7FFF5F.l,X		; 7F 5F FF 7F
	sbc $AEAAEB.l,X		; FF EB AA AE
	tax		; AA
	tsx		; BA
	ldx $FFAA.w		; AE AA FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	xce		; FB
	cmp $FFDBBF.l,X		; DF BF DB FF
	adc $D5FF7F.l,X		; 7F 7F FF D5
	adc $77.b,X		; 75 77
	eor $FD57.w,X		; 5D 57 FD
	sbc $AADF.w,X		; FD DF AA
	inx		; E8
	lda #$BA.b		; A9 BA
	ldy $EAAA.w,X		; BC AA EA
	phx		; DA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	rtl		; 6B

	adc $FAE7B9.l,X		; 7F B9 E7 FA
	lda #$9D.b		; A9 9D
	sbc $FFFD57.l,X		; FF 57 FD FF
	sbc $DFD7DF.l,X		; FF DF D7 DF
	sbc $A7EB.w,X		; FD EB A7
	plb		; AB
	lda #$9A.b		; A9 9A
	sbc ($AE.b)		; F2 AE
	lda $DDFFFE.l		; AF FE FF DD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFBFF.l,X		; FF FF FB DF
	sbc $7AD7EF.l,X		; FF EF D7 7A
	xce		; FB
	cmp $7FFD.w,X		; DD FD 7F
	sbc $77F777.l,X		; FF 77 F7 77
	sbc $BAAF.w,X		; FD AF BA
	txs		; 9A
	tax		; AA
	txa		; 8A
	ldy #$AA.b		; A0 AA
	and #$FF.b		; 29 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	stp		; DB
	sbc $FB.b		; E5 FB
	sbc $FFC3.w,X		; FD C3 FF
	inc $F7.b,X		; F6 F7
	cmp $F7F5DF.l,X		; DF DF F5 F7
	sbc $CBFF5F.l,X		; FF 5F FF CB
	xce		; FB
	cmp [$AB.b]		; C7 AB
	xce		; FB
	nop		; EA
	inc $BA.b		; E6 BA
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $5FFFBF.l,X		; FF BF FF 5F
	sbc [$FF.b],Y		; F7 FF
	sbc $5477FD.l,X		; FF FD 77 54
	sta $F7D7F7.l,X		; 9F F7 D7 F7
	sbc $AAAEAB.l,X		; FF AB AE AA
	ldx $28BB.w		; AE BB 28
	.db $62, $E3, $FF		; 62 E3 FF
	adc $FFDFFF.l,X		; 7F FF DF FF
	sbc $ABFFFF.l,X		; FF FF FF AB
	xba		; EB
	sbc #$FF.b		; E9 FF
	jmp.w [$EFFF]		; DC FF EF
	xce		; FB
	sbc [$FF.b],Y		; F7 FF
	cmp $C7F5.w,X		; DD F5 C7
	cmp $FFFF.w,X		; DD FF FF
	plb		; AB
	plx		; FA
	sbc $BEBFBE.l		; EF BE BF BE
	rol A		; 2A
	cmp $FFFF.w,X		; DD FF FF
	sbc [$FF.b],Y		; F7 FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	xce		; FB
	inc $7F7E.w,X		; FE 7E 7F
	sbc $FF.b,X		; F5 FF
	sbc $5FFE.w,X		; FD FE 5F
	eor $7F.b,X		; 55 7F
	sbc $D5F75F.l,X		; FF 5F F7 D5
	cmp [$AF.b],Y		; D7 AF
	tax		; AA
	ldx #$2A.b		; A2 2A
	ldx #$1B.b		; A2 1B
	.db $B0, $A1		; B0 A1
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A7FFF5.l,X		; FF F5 FF A7
	adc [$F9.b],Y		; 77 F9
	inc $FFFE.w,X		; FE FE FF
	cmp $DDFDFF.l,X		; DF FF FD DD
	cmp $AADFFF.l,X		; DF FF DF AA
	tax		; AA
	plb		; AB
	inc $ECEA.w		; EE EA EC
	tax		; AA
	plb		; AB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFF.w,X		; FD FF FF
	lda [$FF.b],Y		; B7 FF
	lda $D55FFB.l,X		; BF FB 5F D5
	sbc $5F5F.w,X		; FD 5F 5F
	adc $FD5F75.l,X		; 7F 75 5F FD
	plb		; AB
	nop		; EA
	tax		; AA
	tay		; A8
	lda $0BDBEA.l		; AF EA DB 0B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	dec $FDEF.w,X		; DE EF FD
	sbc ($FE.b,S),Y		; F3 FE
	sbc $DFFFBF.l		; EF BF FF DF
	eor [$57.b],Y		; 57 57
	adc $F7FF.w,X		; 7D FF F7
	sbc $AEDF.w,X		; FD DF AE
	sei		; 78
	sbc $B6AA.w,Y		; F9 AA B6
	lda $BEBC.w,X		; BD BC BE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	and $D7EFBF.l		; 2F BF EF D7
	tas		; 1B
	lda $7F7FBF.l,X		; BF BF 7F 7F
	adc $75DD.w,X		; 7D DD 75
	sbc $7FFF.w,X		; FD FF 7F
	cmp $F4EE.w,X		; DD EE F4
	tsx		; BA
	and #$8A.b		; 29 8A
	pld		; 2B
	lda #$A2.b		; A9 A2
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FDFFFC.l,X		; FF FC FF FD
	sbc ($D7.b,S),Y		; F3 D7
	cmp $77.b,X		; D5 77
	sbc $7FFF5D.l,X		; FF 5D FF 7F
	sbc $EFBBFD.l,X		; FF FD BB EF
	tyx		; BB
	sbc ($EE.b,S),Y		; F3 EE
	ldx $AA.b		; A6 AA
	tay		; A8
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	lda $FFEFFF.l,X		; BF FF EF FF
	lda $FFFAF7.l		; AF F7 FA FF
	eor [$55.b],Y		; 57 55
	adc $FF.b,X		; 75 FF
	sbc $DDFF7F.l,X		; FF 7F FF DD
	rol $EBEA.w		; 2E EA EB
	ldx $EBAB.w		; AE AB EB
	lda ($FA.b)		; B2 FA
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $DBE3.w,X		; FE E3 DB
	sbc ($F7.b,S),Y		; F3 F7
	plx		; FA
	sbc $F5F7.w,X		; FD F7 F5
	cmp $FFDF5F.l,X		; DF 5F DF FF
	sbc $D7.b,X		; F5 D7
	sbc [$AA.b],Y		; F7 AA
	sta $EEABAA.l		; 8F AA AB EE
	xce		; FB
	ldx $FFA9.w,Y		; BE A9 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $5FFFFF.l,X		; FF FF FF 5F
	sbc $BF7FDF.l,X		; FF DF 7F BF
	plx		; FA
	lda $FCDDBF.l		; AF BF DD FC
	adc $DFDD.w,X		; 7D DD DF
	cmp [$FD.b],Y		; D7 FD
	sbc [$AA.b],Y		; F7 AA
	lda $9FABB7.l		; AF B7 AB 9F
	plb		; AB
	rol $FFA8.w		; 2E A8 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $D3FDFF.l,X		; FF FF FD D3
	cmp $9F7BE7.l,X		; DF E7 7B 9F
	eor $F5EE5F.l,X		; 5F 5F EE F5
	cmp $F57DDF.l,X		; DF DF 7D F5
	adc $BE7FF5.l,X		; 7F F5 7F BE
	ply		; 7A
	plx		; FA
	tsx		; BA
	tax		; AA
	plb		; AB
	xba		; EB
	xba		; EB
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $2BF6.w,X		; FE F6 2B
	inc $FEFB.w		; EE FB FE
	sbc $7DFD.w,X		; FD FD 7D
	sbc [$F5.b],Y		; F7 F5
	adc $57FFFF.l,X		; 7F FF FF 57
	sbc $A9B3.w,X		; FD B3 A9
	rtl		; 6B

	phk		; 4B
	tax		; AA
	stx $A282.w		; 8E 82 A2
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FDB7FF.l,X		; FF FF B7 FD
	tyx		; BB
	inc $EFDF.w,X		; FE DF EF
	adc [$FF.b],Y		; 77 FF
	cmp $FFF5.w,X		; DD F5 FF
	sbc $FDDF.w,X		; FD DF FD
	tax		; AA
	plb		; AB
	sta $FA.b,S		; 83 FA
	lda $AA2BEB.l		; AF EB 2B AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FD7A.w,X		; FD 7A FD
	xce		; FB
	sbc $FEDD.w,Y		; F9 DD FE
	adc $F577.w,X		; 7D 77 F5
	sbc $B3AAFD.l,X		; FF FD AA B3
	plb		; AB
	tax		; AA
	tsx		; BA
	tax		; AA
	tax		; AA
	plb		; AB
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda [$FF.b]		; A7 FF
	lda $FFD7FB.l,X		; BF FB D7 FF
	xce		; FB
	sbc $DDB77D.l,X		; FF 7D B7 DD
	eor [$FF.b],Y		; 57 FF
	sbc $AADFFF.l,X		; FF FF DF AA
	plx		; FA
	tax		; AA
	plb		; AB
	plx		; FA
	inc $A2EF.w		; EE EF A2
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldx $EEFF.w,Y		; BE FF EE
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $E5FF7F.l		; EF 7F FF E5
	cmp [$FF.b],Y		; D7 FF
	sbc $FFD7.w,X		; FD D7 FF
	tax		; AA
	phb		; 8B
	adc [$AA.b],Y		; 77 AA
	plb		; AB
	nop		; EA
	tyx		; BB
	.db $82, $FF, $FF		; 82 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFCFF.l,X		; FF FF FC 7F
	xce		; FB
	lda $F7D9EF.l		; AF EF D9 F7
	tsa		; 3B
	cmp [$FF.b],Y		; D7 FF
	sbc $F7FD.w,X		; FD FD F7
	sbc $FF5F.w,X		; FD 5F FF
	plb		; AB
	and $B2AB.w,Y		; 39 AB B2
	tsx		; BA
	txy		; 9B
	sta ($AB.b,X)		; 81 AB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFE.l,X		; FF FE FF BF
	sbc $DBFEBF.l		; EF BF FE DB
	adc [$FF.b],Y		; 77 FF
	cmp [$77.b],Y		; D7 77
	cmp [$5D.b],Y		; D7 5D
	eor $4BFEFF.l,X		; 5F FF FE 4B
	lda $22ED2A.l		; AF 2A ED 22
	ror A		; 6A
	tax		; AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $5F7D77.l,X		; FF 77 7D 5F
	ldx $F7.b		; A6 F7
	sbc ($DB.b,S),Y		; F3 DB
	cmp $F77FFD.l,X		; DF FD 7F F7
	adc $FFFF.w,X		; 7D FF FF
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
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
	jsr $0000.w		; 20 00 00
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
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
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	rti		; 40

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
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	and ($40.b,X)		; 21 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	php		; 08
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
	php		; 08
	.db $80, $00		; 80 00
	brk $0C.b		; 00 0C
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
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	eor ($00.b,X)		; 41 00
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	rti		; 40

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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0820.w		; 20 20 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	tsb $00.b		; 04 00
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
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	brk $01.b		; 00 01
	brk $10.b		; 00 10
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
	ora ($00.b,X)		; 01 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	brk $08.b		; 00 08
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
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $10, $40		; 10 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	cop $00.b		; 02 00
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
	brk $08.b		; 00 08
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
	php		; 08
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
	brk $10.b		; 00 10
	rti		; 40

	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	.db $80, $08		; 80 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $40.b		; 00 40
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
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	.db $10, $00		; 10 00
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $82.b		; 00 82
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
	jsr $1000.w		; 20 00 10
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
	.db $10, $00		; 10 00
	jsr $0006.w		; 20 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $40.b		; 04 40
	brk $08.b		; 00 08
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
	brk $01.b		; 00 01
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
	jsr $0008.w		; 20 08 00
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
	jsl $000000.l		; 22 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tsb $00.b		; 04 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	tsb $40.b		; 04 40
	.db $10, $00		; 10 00
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	.db $10, $00		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $80, $20		; 80 20
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
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	sty $00.b		; 84 00
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
	rti		; 40

	brk $01.b		; 00 01
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
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
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
	brk $01.b		; 00 01
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
	.db $80, $00		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	adc ($00.b,X)		; 61 00
	brk $00.b		; 00 00
Headers:
	; Auto-generated headers
.ENDS
