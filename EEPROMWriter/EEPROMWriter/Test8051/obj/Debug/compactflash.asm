;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW32)
;--------------------------------------------------------
	.module compactflash
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _cfInit
	.globl _cfWaitIdle
	.globl _cfWaitCommandReady
	.globl _cfWaitDataReady
	.globl _cfReadSector
	.globl _cfWriteSector
	.globl _cfDiskGetSectorCount
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0_0$0 == 0x0080
_P0	=	0x0080
G$SP$0_0$0 == 0x0081
_SP	=	0x0081
G$DPL$0_0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0_0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0_0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0_0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0_0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0_0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0_0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0_0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0_0$0 == 0x008d
_TH1	=	0x008d
G$P1$0_0$0 == 0x0090
_P1	=	0x0090
G$SCON$0_0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0_0$0 == 0x0099
_SBUF	=	0x0099
G$P2$0_0$0 == 0x00a0
_P2	=	0x00a0
G$IE$0_0$0 == 0x00a8
_IE	=	0x00a8
G$P3$0_0$0 == 0x00b0
_P3	=	0x00b0
G$IP$0_0$0 == 0x00b8
_IP	=	0x00b8
G$PSW$0_0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0_0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0_0$0 == 0x00f0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0_0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0_0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0_0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0_0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0_0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0_0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0_0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0_0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0_0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0_0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0_0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0_0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0_0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0_0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0_0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0_0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0_0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0_0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0_0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0_0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0_0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0_0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0_0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0_0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0_0$0 == 0x0098
_RI	=	0x0098
G$TI$0_0$0 == 0x0099
_TI	=	0x0099
G$RB8$0_0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0_0$0 == 0x009b
_TB8	=	0x009b
G$REN$0_0$0 == 0x009c
_REN	=	0x009c
G$SM2$0_0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0_0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0_0$0 == 0x009f
_SM0	=	0x009f
G$P2_0$0_0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0_0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0_0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0_0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0_0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0_0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0_0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0_0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0_0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0_0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0_0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0_0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0_0$0 == 0x00ac
_ES	=	0x00ac
G$EA$0_0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0_0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0_0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0_0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0_0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0_0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0_0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0_0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0_0$0 == 0x00b7
_P3_7	=	0x00b7
G$RXD$0_0$0 == 0x00b0
_RXD	=	0x00b0
G$TXD$0_0$0 == 0x00b1
_TXD	=	0x00b1
G$INT0$0_0$0 == 0x00b2
_INT0	=	0x00b2
G$INT1$0_0$0 == 0x00b3
_INT1	=	0x00b3
G$T0$0_0$0 == 0x00b4
_T0	=	0x00b4
G$T1$0_0$0 == 0x00b5
_T1	=	0x00b5
G$WR$0_0$0 == 0x00b6
_WR	=	0x00b6
G$RD$0_0$0 == 0x00b7
_RD	=	0x00b7
G$PX0$0_0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0_0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0_0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0_0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0_0$0 == 0x00bc
_PS	=	0x00bc
G$P$0_0$0 == 0x00d0
_P	=	0x00d0
G$F1$0_0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0_0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0_0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0_0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0_0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0_0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0_0$0 == 0x00d7
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'cfInit'
;------------------------------------------------------------
;device                    Allocated to registers r7 
;------------------------------------------------------------
	G$cfInit$0$0 ==.
	C$compactflash.c$3$0_0$9 ==.
;	compactflash.c:3: void cfInit(char device)
;	-----------------------------------------
;	 function cfInit
;	-----------------------------------------
_cfInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$compactflash.c$5$1_0$9 ==.
;	compactflash.c:5: cfWaitIdle(device);
	mov  r7,dpl
	push	ar7
	lcall	_cfWaitIdle
	pop	ar7
	C$compactflash.c$7$1_0$9 ==.
;	compactflash.c:7: cfWriteFeatures(device, 0x01); //  set 8 bit mode to features port
	mov	ar5,r7
	clr	a
	swap	a
	anl	a,#0xf0
	xch	a,r5
	swap	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf0
	xch	a,r5
	xrl	a,r5
	mov	r6,a
	mov	a,#0x21
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r6
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	a,#0x01
	movx	@dptr,a
	C$compactflash.c$9$1_0$9 ==.
;	compactflash.c:9: cfWaitIdle(device);
	mov	dpl,r7
	push	ar6
	push	ar5
	lcall	_cfWaitIdle
	pop	ar5
	pop	ar6
	C$compactflash.c$11$1_0$9 ==.
;	compactflash.c:11: cfWriteCommand(device, 0xef);  // command 'set features'
	mov	a,#0x27
	add	a,r5
	mov	r5,a
	mov	a,#0xff
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	a,#0xef
	movx	@dptr,a
	C$compactflash.c$12$1_0$9 ==.
;	compactflash.c:12: }
	C$compactflash.c$12$1_0$9 ==.
	XG$cfInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cfWaitIdle'
;------------------------------------------------------------
;device                    Allocated to registers r7 
;status                    Allocated to registers r6 
;------------------------------------------------------------
	G$cfWaitIdle$0$0 ==.
	C$compactflash.c$14$1_0$11 ==.
;	compactflash.c:14: void cfWaitIdle(char device)
;	-----------------------------------------
;	 function cfWaitIdle
;	-----------------------------------------
_cfWaitIdle:
	mov	r7,dpl
	C$compactflash.c$17$1_0$11 ==.
;	compactflash.c:17: do
00101$:
	C$compactflash.c$19$2_0$12 ==.
;	compactflash.c:19: status = cfReadStatus(device);
	mov	ar5,r7
	clr	a
	swap	a
	anl	a,#0xf0
	xch	a,r5
	swap	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf0
	xch	a,r5
	xrl	a,r5
	mov	r6,a
	mov	a,#0x27
	add	a,r5
	mov	r5,a
	mov	a,#0xff
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	C$compactflash.c$21$1_0$11 ==.
;	compactflash.c:21: while((status & 0x80)!=0);
	jb	acc.7,00101$
	C$compactflash.c$22$1_0$11 ==.
;	compactflash.c:22: }
	C$compactflash.c$22$1_0$11 ==.
	XG$cfWaitIdle$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cfWaitCommandReady'
;------------------------------------------------------------
;device                    Allocated to registers r7 
;status                    Allocated to registers r6 
;------------------------------------------------------------
	G$cfWaitCommandReady$0$0 ==.
	C$compactflash.c$24$1_0$14 ==.
;	compactflash.c:24: void cfWaitCommandReady(char device)
;	-----------------------------------------
;	 function cfWaitCommandReady
;	-----------------------------------------
_cfWaitCommandReady:
	mov	r7,dpl
	C$compactflash.c$28$1_0$14 ==.
;	compactflash.c:28: do
00101$:
	C$compactflash.c$30$2_0$15 ==.
;	compactflash.c:30: status = cfReadStatus(device);
	mov	ar5,r7
	clr	a
	swap	a
	anl	a,#0xf0
	xch	a,r5
	swap	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf0
	xch	a,r5
	xrl	a,r5
	mov	r6,a
	mov	a,#0x27
	add	a,r5
	mov	r5,a
	mov	a,#0xff
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r6,a
	C$compactflash.c$32$1_0$14 ==.
;	compactflash.c:32: while((status & 0xc0)!=0x40);
	anl	ar6,#0xc0
	mov	r5,#0x00
	cjne	r6,#0x40,00101$
	cjne	r5,#0x00,00101$
	C$compactflash.c$33$1_0$14 ==.
;	compactflash.c:33: }
	C$compactflash.c$33$1_0$14 ==.
	XG$cfWaitCommandReady$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cfWaitDataReady'
;------------------------------------------------------------
;device                    Allocated to registers r7 
;status                    Allocated to registers r6 
;------------------------------------------------------------
	G$cfWaitDataReady$0$0 ==.
	C$compactflash.c$35$1_0$17 ==.
;	compactflash.c:35: void cfWaitDataReady(char device)
;	-----------------------------------------
;	 function cfWaitDataReady
;	-----------------------------------------
_cfWaitDataReady:
	mov	r7,dpl
	C$compactflash.c$38$1_0$17 ==.
;	compactflash.c:38: do
00101$:
	C$compactflash.c$40$2_0$18 ==.
;	compactflash.c:40: status = cfReadStatus(device);
	mov	ar5,r7
	clr	a
	swap	a
	anl	a,#0xf0
	xch	a,r5
	swap	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf0
	xch	a,r5
	xrl	a,r5
	mov	r6,a
	mov	a,#0x27
	add	a,r5
	mov	r5,a
	mov	a,#0xff
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r6,a
	C$compactflash.c$42$1_0$17 ==.
;	compactflash.c:42: while((status & 0x88)!=0x08);
	anl	ar6,#0x88
	mov	r5,#0x00
	cjne	r6,#0x08,00101$
	cjne	r5,#0x00,00101$
	C$compactflash.c$43$1_0$17 ==.
;	compactflash.c:43: }
	C$compactflash.c$43$1_0$17 ==.
	XG$cfWaitDataReady$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cfReadSector'
;------------------------------------------------------------
;buf                       Allocated to stack - _bp -5
;LBA                       Allocated to stack - _bp -9
;sectorCount               Allocated to stack - _bp -11
;device                    Allocated to stack - _bp +1
;status                    Allocated to registers r2 
;i                         Allocated to stack - _bp +4
;idx                       Allocated to stack - _bp +6
;sloc0                     Allocated to stack - _bp +2
;------------------------------------------------------------
	G$cfReadSector$0$0 ==.
	C$compactflash.c$45$1_0$20 ==.
;	compactflash.c:45: void cfReadSector(char device, char* buf, unsigned long LBA, unsigned int sectorCount)
;	-----------------------------------------
;	 function cfReadSector
;	-----------------------------------------
_cfReadSector:
	push	_bp
	mov	_bp,sp
	push	dpl
	mov	a,sp
	add	a,#0x06
	mov	sp,a
	C$compactflash.c$53$1_0$20 ==.
;	compactflash.c:53: P1 = 0xe1;
	mov	_P1,#0xe1
	C$compactflash.c$54$1_0$20 ==.
;	compactflash.c:54: cfWaitIdle(device);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_cfWaitIdle
	C$compactflash.c$56$1_0$20 ==.
;	compactflash.c:56: P1 = 0xe2;
	mov	_P1,#0xe2
	C$compactflash.c$57$1_0$20 ==.
;	compactflash.c:57: cfWriteSectorCount(device, 0x01);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	clr	a
	xch	a,r5
	swap	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf0
	xch	a,r5
	xrl	a,r5
	mov	r6,a
	mov	a,#0x22
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r6
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	a,#0x01
	movx	@dptr,a
	C$compactflash.c$59$1_0$20 ==.
;	compactflash.c:59: P1 = 0xe3;
	mov	_P1,#0xe3
	C$compactflash.c$60$1_0$20 ==.
;	compactflash.c:60: cfWaitIdle(device);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	ar6
	push	ar5
	lcall	_cfWaitIdle
	pop	ar5
	pop	ar6
	C$compactflash.c$62$1_0$20 ==.
;	compactflash.c:62: P1 = 0xe4;
	mov	_P1,#0xe4
	C$compactflash.c$63$1_0$20 ==.
;	compactflash.c:63: cfWriteLBA0(device, ((LBA   ) & 0xff) );
	mov	a,#0x23
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r6
	mov	r4,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	ar2,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
	C$compactflash.c$65$1_0$20 ==.
;	compactflash.c:65: P1 = 0xe5;
	mov	_P1,#0xe5
	C$compactflash.c$66$1_0$20 ==.
;	compactflash.c:66: cfWaitIdle(device);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	ar6
	push	ar5
	lcall	_cfWaitIdle
	pop	ar5
	pop	ar6
	C$compactflash.c$68$1_0$20 ==.
;	compactflash.c:68: P1 = 0xe6;
	mov	_P1,#0xe6
	C$compactflash.c$69$1_0$20 ==.
;	compactflash.c:69: cfWriteLBA1(device, ((LBA>>8) & 0xff) );
	mov	a,#0x24
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r6
	mov	r4,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
	C$compactflash.c$71$1_0$20 ==.
;	compactflash.c:71: P1 = 0xe7;
	mov	_P1,#0xe7
	C$compactflash.c$72$1_0$20 ==.
;	compactflash.c:72: cfWaitIdle(device);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	ar6
	push	ar5
	lcall	_cfWaitIdle
	pop	ar5
	pop	ar6
	C$compactflash.c$74$1_0$20 ==.
;	compactflash.c:74: P1 = 0xe8;
	mov	_P1,#0xe8
	C$compactflash.c$75$1_0$20 ==.
;	compactflash.c:75: cfWriteLBA2(device, ((LBA>>16) & 0xff) );
	mov	a,#0x25
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r6
	mov	r4,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	inc	r0
	inc	r0
	mov	ar2,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
	C$compactflash.c$77$1_0$20 ==.
;	compactflash.c:77: P1 = 0xe9;
	mov	_P1,#0xe9
	C$compactflash.c$78$1_0$20 ==.
;	compactflash.c:78: cfWaitIdle(device);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	ar6
	push	ar5
	lcall	_cfWaitIdle
	pop	ar5
	pop	ar6
	C$compactflash.c$80$1_0$20 ==.
;	compactflash.c:80: P1 = 0xea;
	mov	_P1,#0xea
	C$compactflash.c$81$1_0$20 ==.
;	compactflash.c:81: cfWriteLBA3(device, (( ((LBA>>24) & 0x1f) | 0xe0)) );
	mov	a,#0x26
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r6
	mov	r4,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	ar2,@r0
	anl	ar2,#0x1f
	orl	ar2,#0xe0
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
	C$compactflash.c$84$3_0$22 ==.
;	compactflash.c:84: while(sectorCount--)
	mov	a,#0x27
	add	a,r5
	mov	r4,a
	mov	a,#0xff
	addc	a,r6
	mov	r7,a
	mov	a,#0x20
	add	a,r5
	mov	r5,a
	mov	a,#0xff
	addc	a,r6
	mov	r6,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	r1,_bp
	inc	r1
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00107$:
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	mov	r0,_bp
	inc	r0
	inc	r0
	dec	@r0
	cjne	@r0,#0xff,00134$
	inc	r0
	dec	@r0
00134$:
	mov	a,r2
	orl	a,r3
	jnz	00135$
	ljmp	00109$
00135$:
	C$compactflash.c$86$2_0$21 ==.
;	compactflash.c:86: do
00101$:
	C$compactflash.c$88$3_0$22 ==.
;	compactflash.c:88: P1 = 0xeb;
	mov	_P1,#0xeb
	C$compactflash.c$89$3_0$22 ==.
;	compactflash.c:89: cfWaitCommandReady(device);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_cfWaitCommandReady
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$compactflash.c$91$3_0$22 ==.
;	compactflash.c:91: P1 = 0xec;
	mov	_P1,#0xec
	C$compactflash.c$92$3_0$22 ==.
;	compactflash.c:92: cfWriteCommand(device, 0x20);
	mov	ar2,r4
	mov	ar3,r7
	mov	dpl,r2
	mov	dph,r3
	mov	a,#0x20
	movx	@dptr,a
	C$compactflash.c$94$3_0$22 ==.
;	compactflash.c:94: P1 = 0xed;
	mov	_P1,#0xed
	C$compactflash.c$95$3_0$22 ==.
;	compactflash.c:95: cfWaitDataReady(device);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_cfWaitDataReady
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$compactflash.c$97$3_0$22 ==.
;	compactflash.c:97: P1 = 0xee;
	mov	_P1,#0xee
	C$compactflash.c$98$3_0$22 ==.
;	compactflash.c:98: status = cfReadStatus(device);
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	C$compactflash.c$100$3_0$22 ==.
;	compactflash.c:100: P1 = 0xef;
	C$compactflash.c$102$2_0$21 ==.
;	compactflash.c:102: while((status & 0x01)!=0);
	mov	r2,a
	mov	_P1,#0xef
	jb	acc.0,00101$
	C$compactflash.c$105$1_0$20 ==.
;	compactflash.c:105: while(i < CF_SECTOR_SIZE)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00104$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	c
	inc	r0
	mov	a,@r0
	subb	a,#0x02
	jnc	00106$
	C$compactflash.c$107$1_0$20 ==.
;	compactflash.c:107: P1 = 0xf0;
	push	ar4
	push	ar7
	mov	_P1,#0xf0
	C$compactflash.c$108$3_0$23 ==.
;	compactflash.c:108: cfWaitDataReady(device);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_cfWaitDataReady
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$compactflash.c$110$3_0$23 ==.
;	compactflash.c:110: P1 = 0xf1;
	mov	_P1,#0xf1
	C$compactflash.c$111$3_0$23 ==.
;	compactflash.c:111: buf[i+idx] = cfReadData(device);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r4
	mov	dph,r3
	mov	b,r7
	lcall	__gptrput
	C$compactflash.c$113$3_0$23 ==.
;	compactflash.c:113: i++;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00138$
	inc	r0
	inc	@r0
00138$:
	C$compactflash.c$115$3_0$23 ==.
;	compactflash.c:115: P1 = 0xf2;
	mov	_P1,#0xf2
	pop	ar7
	pop	ar4
	sjmp	00104$
00106$:
	C$compactflash.c$117$2_0$21 ==.
;	compactflash.c:117: idx += CF_SECTOR_SIZE;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x02
	inc	r0
	add	a,@r0
	mov	@r0,a
	ljmp	00107$
00109$:
	C$compactflash.c$120$1_0$20 ==.
;	compactflash.c:120: P1 = 0xf3;
	mov	_P1,#0xf3
	C$compactflash.c$121$1_0$20 ==.
;	compactflash.c:121: }
	mov	sp,_bp
	pop	_bp
	C$compactflash.c$121$1_0$20 ==.
	XG$cfReadSector$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cfWriteSector'
;------------------------------------------------------------
;buf                       Allocated to stack - _bp -5
;LBA                       Allocated to stack - _bp -9
;sectorCount               Allocated to stack - _bp -11
;device                    Allocated to stack - _bp +1
;status                    Allocated to registers r2 
;i                         Allocated to stack - _bp +8
;idx                       Allocated to stack - _bp +6
;sloc0                     Allocated to stack - _bp +2
;sloc1                     Allocated to stack - _bp +4
;------------------------------------------------------------
	G$cfWriteSector$0$0 ==.
	C$compactflash.c$123$1_0$25 ==.
;	compactflash.c:123: void cfWriteSector(char device, const char* buf, unsigned long LBA, unsigned int sectorCount)
;	-----------------------------------------
;	 function cfWriteSector
;	-----------------------------------------
_cfWriteSector:
	push	_bp
	mov	_bp,sp
	push	dpl
	mov	a,sp
	add	a,#0x08
	mov	sp,a
	C$compactflash.c$131$1_0$25 ==.
;	compactflash.c:131: P1 = 0xe1;
	mov	_P1,#0xe1
	C$compactflash.c$132$1_0$25 ==.
;	compactflash.c:132: cfWaitIdle(device);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_cfWaitIdle
	C$compactflash.c$134$1_0$25 ==.
;	compactflash.c:134: P1 = 0xe2;
	mov	_P1,#0xe2
	C$compactflash.c$135$1_0$25 ==.
;	compactflash.c:135: cfWriteSectorCount(device, 0x01);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	clr	a
	xch	a,r5
	swap	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf0
	xch	a,r5
	xrl	a,r5
	mov	r6,a
	mov	a,#0x22
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r6
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	a,#0x01
	movx	@dptr,a
	C$compactflash.c$137$1_0$25 ==.
;	compactflash.c:137: P1 = 0xe3;
	mov	_P1,#0xe3
	C$compactflash.c$138$1_0$25 ==.
;	compactflash.c:138: cfWaitIdle(device);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	ar6
	push	ar5
	lcall	_cfWaitIdle
	pop	ar5
	pop	ar6
	C$compactflash.c$140$1_0$25 ==.
;	compactflash.c:140: P1 = 0xe4;
	mov	_P1,#0xe4
	C$compactflash.c$141$1_0$25 ==.
;	compactflash.c:141: cfWriteLBA0(device, ((LBA   ) & 0xff) );
	mov	a,#0x23
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r6
	mov	r4,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	ar2,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
	C$compactflash.c$143$1_0$25 ==.
;	compactflash.c:143: P1 = 0xe5;
	mov	_P1,#0xe5
	C$compactflash.c$144$1_0$25 ==.
;	compactflash.c:144: cfWaitIdle(device);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	ar6
	push	ar5
	lcall	_cfWaitIdle
	pop	ar5
	pop	ar6
	C$compactflash.c$146$1_0$25 ==.
;	compactflash.c:146: P1 = 0xe6;
	mov	_P1,#0xe6
	C$compactflash.c$147$1_0$25 ==.
;	compactflash.c:147: cfWriteLBA1(device, ((LBA>>8) & 0xff) );
	mov	a,#0x24
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r6
	mov	r4,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
	C$compactflash.c$149$1_0$25 ==.
;	compactflash.c:149: P1 = 0xe7;
	mov	_P1,#0xe7
	C$compactflash.c$150$1_0$25 ==.
;	compactflash.c:150: cfWaitIdle(device);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	ar6
	push	ar5
	lcall	_cfWaitIdle
	pop	ar5
	pop	ar6
	C$compactflash.c$152$1_0$25 ==.
;	compactflash.c:152: P1 = 0xe8;
	mov	_P1,#0xe8
	C$compactflash.c$153$1_0$25 ==.
;	compactflash.c:153: cfWriteLBA2(device, ((LBA>>16) & 0xff) );
	mov	a,#0x25
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r6
	mov	r4,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	inc	r0
	inc	r0
	mov	ar2,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
	C$compactflash.c$155$1_0$25 ==.
;	compactflash.c:155: P1 = 0xe9;
	mov	_P1,#0xe9
	C$compactflash.c$156$1_0$25 ==.
;	compactflash.c:156: cfWaitIdle(device);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	ar6
	push	ar5
	lcall	_cfWaitIdle
	pop	ar5
	pop	ar6
	C$compactflash.c$158$1_0$25 ==.
;	compactflash.c:158: P1 = 0xea;
	mov	_P1,#0xea
	C$compactflash.c$159$1_0$25 ==.
;	compactflash.c:159: cfWriteLBA3(device, (((LBA>>24) | 0xe0) & 0xff) );
	mov	a,#0x26
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r6
	mov	r4,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	ar2,@r0
	orl	ar2,#0xe0
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
	C$compactflash.c$162$3_0$27 ==.
;	compactflash.c:162: while(sectorCount--)
	mov	a,#0x27
	add	a,r5
	mov	r4,a
	mov	a,#0xff
	addc	a,r6
	mov	r7,a
	mov	a,#0x20
	add	a,r5
	mov	r5,a
	mov	a,#0xff
	addc	a,r6
	mov	r6,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	r1,_bp
	inc	r1
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00107$:
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	mov	r0,_bp
	inc	r0
	inc	r0
	dec	@r0
	cjne	@r0,#0xff,00134$
	inc	r0
	dec	@r0
00134$:
	mov	a,r2
	orl	a,r3
	jnz	00135$
	ljmp	00109$
00135$:
	C$compactflash.c$164$2_0$26 ==.
;	compactflash.c:164: do
00101$:
	C$compactflash.c$166$3_0$27 ==.
;	compactflash.c:166: P1 = 0xeb;
	mov	_P1,#0xeb
	C$compactflash.c$167$3_0$27 ==.
;	compactflash.c:167: cfWaitCommandReady(device);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_cfWaitCommandReady
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$compactflash.c$169$3_0$27 ==.
;	compactflash.c:169: P1 = 0xec;
	mov	_P1,#0xec
	C$compactflash.c$170$3_0$27 ==.
;	compactflash.c:170: cfWriteCommand(device, 0x30);
	mov	ar2,r4
	mov	ar3,r7
	mov	dpl,r2
	mov	dph,r3
	mov	a,#0x30
	movx	@dptr,a
	C$compactflash.c$172$3_0$27 ==.
;	compactflash.c:172: P1 = 0xed;
	mov	_P1,#0xed
	C$compactflash.c$173$3_0$27 ==.
;	compactflash.c:173: cfWaitDataReady(device);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_cfWaitDataReady
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$compactflash.c$175$3_0$27 ==.
;	compactflash.c:175: P1 = 0xee;
	mov	_P1,#0xee
	C$compactflash.c$176$3_0$27 ==.
;	compactflash.c:176: status = cfReadStatus(device);
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	C$compactflash.c$178$3_0$27 ==.
;	compactflash.c:178: P1 = 0xef;
	C$compactflash.c$180$2_0$26 ==.
;	compactflash.c:180: while((status & 0x01)!=0);
	mov	r2,a
	mov	_P1,#0xef
	jb	acc.0,00101$
	C$compactflash.c$183$1_0$25 ==.
;	compactflash.c:183: while(i < CF_SECTOR_SIZE)
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00104$:
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	clr	c
	inc	r0
	mov	a,@r0
	subb	a,#0x02
	jnc	00106$
	C$compactflash.c$185$1_0$25 ==.
;	compactflash.c:185: P1 = 0xf0;
	push	ar4
	push	ar7
	mov	_P1,#0xf0
	C$compactflash.c$186$3_0$28 ==.
;	compactflash.c:186: cfWaitDataReady(device);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_cfWaitDataReady
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$compactflash.c$188$3_0$28 ==.
;	compactflash.c:188: P1 = 0xf1;
	mov	_P1,#0xf1
	C$compactflash.c$189$3_0$28 ==.
;	compactflash.c:189: cfWriteData(device, buf[i+idx]);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r2
	movx	@dptr,a
	C$compactflash.c$191$3_0$28 ==.
;	compactflash.c:191: i++;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00138$
	inc	r0
	inc	@r0
00138$:
	C$compactflash.c$193$3_0$28 ==.
;	compactflash.c:193: P1 = 0xf2;
	mov	_P1,#0xf2
	pop	ar7
	pop	ar4
	ljmp	00104$
00106$:
	C$compactflash.c$195$2_0$26 ==.
;	compactflash.c:195: idx += CF_SECTOR_SIZE;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x02
	inc	r0
	add	a,@r0
	mov	@r0,a
	ljmp	00107$
00109$:
	C$compactflash.c$198$1_0$25 ==.
;	compactflash.c:198: P1 = 0xf3;
	mov	_P1,#0xf3
	C$compactflash.c$199$1_0$25 ==.
;	compactflash.c:199: }
	mov	sp,_bp
	pop	_bp
	C$compactflash.c$199$1_0$25 ==.
	XG$cfWriteSector$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cfDiskGetSectorCount'
;------------------------------------------------------------
;device                    Allocated to registers 
;------------------------------------------------------------
	G$cfDiskGetSectorCount$0$0 ==.
	C$compactflash.c$201$1_0$30 ==.
;	compactflash.c:201: unsigned long cfDiskGetSectorCount(char device)
;	-----------------------------------------
;	 function cfDiskGetSectorCount
;	-----------------------------------------
_cfDiskGetSectorCount:
	C$compactflash.c$203$1_0$30 ==.
;	compactflash.c:203: return 10000;
	mov	dptr,#0x2710
	clr	a
	mov	b,a
	C$compactflash.c$204$1_0$30 ==.
;	compactflash.c:204: }
	C$compactflash.c$204$1_0$30 ==.
	XG$cfDiskGetSectorCount$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
