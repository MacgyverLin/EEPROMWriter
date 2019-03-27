;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated with name '_main_i_65536_1'
;src                       Allocated to registers 
;dst                       Allocated to registers 
;count                     Allocated to registers r2 r3 
;src                       Allocated to registers 
;dst                       Allocated to registers 
;count                     Allocated to registers r6 r7 
;dst                       Allocated to registers 
;count                     Allocated to registers r4 r5 
;------------------------------------------------------------
;	main.c:89: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:100: IOWRITE(0xff03, 0x80);
	mov	dptr,#0xff03
	mov	a,#0x80
	movx	@dptr,a
;	main.c:101: IOWRITE(0xff00, 0xA5);
	mov	dptr,#0xff00
	mov	a,#0xa5
	movx	@dptr,a
;	main.c:102: IOWRITE(0xff01, 0xC6);
	mov	dptr,#0xff01
	mov	a,#0xc6
	movx	@dptr,a
;	main.c:103: IOWRITE(0xff02, 0xE7);
	mov	dptr,#0xff02
	mov	a,#0xe7
	movx	@dptr,a
;	main.c:105: i = IOREAD(0xff00);
	mov	dptr,#0xff00
	movx	a,@dptr
;	main.c:106: i = IOREAD(0xff01);
	mov	dptr,#0xff01
	movx	a,@dptr
;	main.c:107: i = IOREAD(0xff02);
	mov	dptr,#0xff02
	movx	a,@dptr
;	main.c:108: i = IOREAD(0xff03);
	mov	dptr,#0xff03
	movx	a,@dptr
;	main.c:110: pio0WriteCtrl(0x80)  ;
	mov	dptr,#0xff03
	mov	a,#0x80
	movx	@dptr,a
;	main.c:111: pio0WritePortA(0x5A) ;
	mov	dptr,#0xff00
	mov	a,#0x5a
	movx	@dptr,a
;	main.c:112: pio0WritePortB(0x4B) ;
	mov	dptr,#0xff01
	mov	a,#0x4b
	movx	@dptr,a
;	main.c:113: pio0WritePortC(0x3C) ;
	mov	dptr,#0xff02
	mov	a,#0x3c
	movx	@dptr,a
;	main.c:114: pio1WriteCtrl(0x80)  ;
	mov	dptr,#0xff13
	mov	a,#0x80
	movx	@dptr,a
;	main.c:115: pio1WritePortA(0x5D) ;
	mov	dptr,#0xff10
	mov	a,#0x5d
	movx	@dptr,a
;	main.c:116: pio1WritePortB(0x4E) ;
	mov	dptr,#0xff11
	mov	a,#0x4e
	movx	@dptr,a
;	main.c:117: pio1WritePortC(0x3F) ;
	mov	dptr,#0xff12
	mov	a,#0x3f
	movx	@dptr,a
;	main.c:119: P1 = 1;
	mov	_P1,#0x01
;	main.c:121: sysCopyBIOS(0x0000, 0x0000, 0x4000);
	mov	dptr,#0x0000
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#0x0000
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	r2,#0x00
	mov	r3,#0x40
00101$:
	mov	ar0,r2
	mov	ar1,r3
	dec	r2
	cjne	r2,#0xff,00141$
	dec	r3
00141$:
	mov	a,r0
	orl	a,r1
	jz	00103$
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movc	a,@a+dptr
	mov	r1,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	mov	dpl,r4
	mov	dph,r5
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
	sjmp	00101$
00103$:
;	main.c:122: sysCheckBIOS(0x0000, 0x0000, 0x4000);
	mov	r6,#0x00
	mov	r7,#0x40
00106$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00143$
	dec	r7
00143$:
	mov	a,r4
	orl	a,r5
	jnz	00106$
;	main.c:123: sysClearMemory(0x0000, 0x4000);
	mov	dptr,#0x0000
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	r4,#0x00
	mov	r5,#0x40
00109$:
	mov	ar2,r4
	mov	ar3,r5
	dec	r4
	cjne	r4,#0xff,00145$
	dec	r5
00145$:
	mov	a,r2
	orl	a,r3
	jz	00111$
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	sjmp	00109$
00111$:
;	main.c:125: sysExitBootMode();
	mov	dptr,#0xfff0
	clr	a
	movx	@dptr,a
;	main.c:126: sysEnterISPMode();
	mov	dptr,#0xfff1
	movx	@dptr,a
;	main.c:127: sysColdBoot();
	mov	dptr,#0xfff2
	movx	@dptr,a
;	main.c:128: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
