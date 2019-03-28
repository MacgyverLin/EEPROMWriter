;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW32)
;--------------------------------------------------------
	.module compactflash
	.optsdcc -mmcs51 --model-huge
	
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
	.globl _cfTest_PARM_2
	.globl _cfReadSector_PARM_3
	.globl _cfReadSector_PARM_2
	.globl _cfInit
	.globl _cfWaitIdle
	.globl _cfWaitCommandReady
	.globl _cfWaitDataReady
	.globl _cfReadSector
	.globl _cfTest
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
Lcompactflash.cfReadSector$i$1_0$19==.
_cfReadSector_i_65536_19:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
Lcompactflash.cfInit$device$1_0$7==.
_cfInit_device_65536_7:
	.ds 1
Lcompactflash.cfWaitIdle$device$1_0$9==.
_cfWaitIdle_device_65536_9:
	.ds 1
Lcompactflash.cfWaitCommandReady$device$1_0$12==.
_cfWaitCommandReady_device_65536_12:
	.ds 1
Lcompactflash.cfWaitDataReady$device$1_0$15==.
_cfWaitDataReady_device_65536_15:
	.ds 1
Lcompactflash.cfReadSector$buf$1_0$18==.
_cfReadSector_PARM_2:
	.ds 3
Lcompactflash.cfReadSector$sectorCount$1_0$18==.
_cfReadSector_PARM_3:
	.ds 2
Lcompactflash.cfReadSector$device$1_0$18==.
_cfReadSector_device_65536_18:
	.ds 1
Lcompactflash.cfTest$buf$1_0$22==.
_cfTest_PARM_2:
	.ds 3
Lcompactflash.cfTest$device$1_0$22==.
_cfTest_device_65536_22:
	.ds 1
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
;device                    Allocated with name '_cfInit_device_65536_7'
;------------------------------------------------------------
	G$cfInit$0$0 ==.
	C$compactflash.c$3$0_0$8 ==.
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
	mov	a,dpl
	mov	dptr,#_cfInit_device_65536_7
	movx	@dptr,a
	C$compactflash.c$5$1_0$8 ==.
;	compactflash.c:5: cfWriteFeatures(device, 0x01); //  set 8 bit mode to features port
	movx	a,@dptr
	mov	r7,a
	clr	a
	swap	a
	anl	a,#0xf0
	xch	a,r7
	swap	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf0
	xch	a,r7
	xrl	a,r7
	mov	r6,a
	mov	a,#0x21
	add	a,r7
	mov	r4,a
	mov	a,#0xff
	addc	a,r6
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,#0x01
	movx	@dptr,a
	C$compactflash.c$7$1_0$8 ==.
;	compactflash.c:7: cfWriteCommand(device, 0xef);  // command 'set features'
	mov	a,#0x27
	add	a,r7
	mov	r7,a
	mov	a,#0xff
	addc	a,r6
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	mov	a,#0xef
	movx	@dptr,a
	C$compactflash.c$8$1_0$8 ==.
;	compactflash.c:8: }
	C$compactflash.c$8$1_0$8 ==.
	XG$cfInit$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cfWaitIdle'
;------------------------------------------------------------
;device                    Allocated with name '_cfWaitIdle_device_65536_9'
;status                    Allocated to registers r6 
;------------------------------------------------------------
	G$cfWaitIdle$0$0 ==.
	C$compactflash.c$10$1_0$10 ==.
;	compactflash.c:10: void cfWaitIdle(char device)
;	-----------------------------------------
;	 function cfWaitIdle
;	-----------------------------------------
_cfWaitIdle:
	mov	a,dpl
	mov	dptr,#_cfWaitIdle_device_65536_9
	movx	@dptr,a
	C$compactflash.c$13$2_0$11 ==.
;	compactflash.c:13: do
	movx	a,@dptr
	mov	r7,a
00101$:
	C$compactflash.c$15$2_0$11 ==.
;	compactflash.c:15: status = cfReadStatus(device);
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
	C$compactflash.c$17$1_0$10 ==.
;	compactflash.c:17: while((status & 0x80)!=0);
	mov	r6,a
	jb	acc.7,00101$
	C$compactflash.c$18$1_0$10 ==.
;	compactflash.c:18: }
	C$compactflash.c$18$1_0$10 ==.
	XG$cfWaitIdle$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cfWaitCommandReady'
;------------------------------------------------------------
;device                    Allocated with name '_cfWaitCommandReady_device_65536_12'
;status                    Allocated to registers r6 
;------------------------------------------------------------
	G$cfWaitCommandReady$0$0 ==.
	C$compactflash.c$20$1_0$13 ==.
;	compactflash.c:20: void cfWaitCommandReady(char device)
;	-----------------------------------------
;	 function cfWaitCommandReady
;	-----------------------------------------
_cfWaitCommandReady:
	mov	a,dpl
	mov	dptr,#_cfWaitCommandReady_device_65536_12
	movx	@dptr,a
	C$compactflash.c$24$2_0$14 ==.
;	compactflash.c:24: do
	movx	a,@dptr
	mov	r7,a
00101$:
	C$compactflash.c$26$2_0$14 ==.
;	compactflash.c:26: status = cfReadStatus(device);
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
	C$compactflash.c$28$1_0$13 ==.
;	compactflash.c:28: while((status & 0xc0)!=0x40);
	anl	ar6,#0xc0
	mov	r5,#0x00
	cjne	r6,#0x40,00101$
	cjne	r5,#0x00,00101$
	C$compactflash.c$29$1_0$13 ==.
;	compactflash.c:29: }
	C$compactflash.c$29$1_0$13 ==.
	XG$cfWaitCommandReady$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cfWaitDataReady'
;------------------------------------------------------------
;device                    Allocated with name '_cfWaitDataReady_device_65536_15'
;status                    Allocated to registers r6 
;------------------------------------------------------------
	G$cfWaitDataReady$0$0 ==.
	C$compactflash.c$31$1_0$16 ==.
;	compactflash.c:31: void cfWaitDataReady(char device)
;	-----------------------------------------
;	 function cfWaitDataReady
;	-----------------------------------------
_cfWaitDataReady:
	mov	a,dpl
	mov	dptr,#_cfWaitDataReady_device_65536_15
	movx	@dptr,a
	C$compactflash.c$34$2_0$17 ==.
;	compactflash.c:34: do
	movx	a,@dptr
	mov	r7,a
00101$:
	C$compactflash.c$36$2_0$17 ==.
;	compactflash.c:36: status = cfReadStatus(device);
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
	C$compactflash.c$38$1_0$16 ==.
;	compactflash.c:38: while((status & 0x88)!=0x08);
	anl	ar6,#0x88
	mov	r5,#0x00
	cjne	r6,#0x08,00101$
	cjne	r5,#0x00,00101$
	C$compactflash.c$39$1_0$16 ==.
;	compactflash.c:39: }
	C$compactflash.c$39$1_0$16 ==.
	XG$cfWaitDataReady$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cfReadSector'
;------------------------------------------------------------
;status                    Allocated to registers r5 
;i                         Allocated with name '_cfReadSector_i_65536_19'
;idx                       Allocated to registers 
;buf                       Allocated with name '_cfReadSector_PARM_2'
;sectorCount               Allocated with name '_cfReadSector_PARM_3'
;device                    Allocated with name '_cfReadSector_device_65536_18'
;------------------------------------------------------------
	G$cfReadSector$0$0 ==.
	C$compactflash.c$41$1_0$19 ==.
;	compactflash.c:41: void cfReadSector(char device, char* buf, unsigned int sectorCount)
;	-----------------------------------------
;	 function cfReadSector
;	-----------------------------------------
_cfReadSector:
	mov	a,dpl
	mov	dptr,#_cfReadSector_device_65536_18
	movx	@dptr,a
	C$compactflash.c$49$1_0$19 ==.
;	compactflash.c:49: P1 = 0xe1;
	mov	_P1,#0xe1
	C$compactflash.c$50$1_0$19 ==.
;	compactflash.c:50: cfWaitIdle(device);
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	mov	r0,#_cfWaitIdle
	mov	r1,#(_cfWaitIdle >> 8)
	mov	r2,#(_cfWaitIdle >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$compactflash.c$52$1_0$19 ==.
;	compactflash.c:52: P1 = 0xe2;
	mov	_P1,#0xe2
	C$compactflash.c$53$1_0$19 ==.
;	compactflash.c:53: cfWriteSectorCount(device, 0x01);
	mov	ar5,r7
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
	C$compactflash.c$55$1_0$19 ==.
;	compactflash.c:55: P1 = 0xe3;
	mov	_P1,#0xe3
	C$compactflash.c$56$1_0$19 ==.
;	compactflash.c:56: cfWaitIdle(device);
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_cfWaitIdle
	mov	r1,#(_cfWaitIdle >> 8)
	mov	r2,#(_cfWaitIdle >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
	C$compactflash.c$58$1_0$19 ==.
;	compactflash.c:58: P1 = 0xe4;
	mov	_P1,#0xe4
	C$compactflash.c$59$1_0$19 ==.
;	compactflash.c:59: cfWriteLBA0(device, 0x00);
	mov	a,#0x23
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r6
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	clr	a
	movx	@dptr,a
	C$compactflash.c$61$1_0$19 ==.
;	compactflash.c:61: P1 = 0xe5;
	mov	_P1,#0xe5
	C$compactflash.c$62$1_0$19 ==.
;	compactflash.c:62: cfWaitIdle(device);
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_cfWaitIdle
	mov	r1,#(_cfWaitIdle >> 8)
	mov	r2,#(_cfWaitIdle >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
	C$compactflash.c$64$1_0$19 ==.
;	compactflash.c:64: P1 = 0xe6;
	mov	_P1,#0xe6
	C$compactflash.c$65$1_0$19 ==.
;	compactflash.c:65: cfWriteLBA1(device, 0x00);
	mov	a,#0x24
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r6
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	clr	a
	movx	@dptr,a
	C$compactflash.c$67$1_0$19 ==.
;	compactflash.c:67: P1 = 0xe7;
	mov	_P1,#0xe7
	C$compactflash.c$68$1_0$19 ==.
;	compactflash.c:68: cfWaitIdle(device);
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_cfWaitIdle
	mov	r1,#(_cfWaitIdle >> 8)
	mov	r2,#(_cfWaitIdle >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
	C$compactflash.c$70$1_0$19 ==.
;	compactflash.c:70: P1 = 0xe8;
	mov	_P1,#0xe8
	C$compactflash.c$71$1_0$19 ==.
;	compactflash.c:71: cfWriteLBA2(device, 0x00);
	mov	a,#0x25
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r6
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	clr	a
	movx	@dptr,a
	C$compactflash.c$73$1_0$19 ==.
;	compactflash.c:73: P1 = 0xe9;
	mov	_P1,#0xe9
	C$compactflash.c$74$1_0$19 ==.
;	compactflash.c:74: cfWaitIdle(device);
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_cfWaitIdle
	mov	r1,#(_cfWaitIdle >> 8)
	mov	r2,#(_cfWaitIdle >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
	C$compactflash.c$76$1_0$19 ==.
;	compactflash.c:76: P1 = 0xea;
	mov	_P1,#0xea
	C$compactflash.c$77$1_0$19 ==.
;	compactflash.c:77: cfWriteLBA3(device, 0xe0);
	mov	a,#0x26
	add	a,r5
	mov	r5,a
	mov	a,#0xff
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	a,#0xe0
	movx	@dptr,a
	C$compactflash.c$82$2_0$20 ==.
;	compactflash.c:82: do
00101$:
	C$compactflash.c$84$2_0$20 ==.
;	compactflash.c:84: P1 = 0xeb;
	mov	_P1,#0xeb
	C$compactflash.c$85$2_0$20 ==.
;	compactflash.c:85: cfWaitCommandReady(device);
	mov	dpl,r7
	push	ar7
	mov	r0,#_cfWaitCommandReady
	mov	r1,#(_cfWaitCommandReady >> 8)
	mov	r2,#(_cfWaitCommandReady >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$compactflash.c$87$2_0$20 ==.
;	compactflash.c:87: P1 = 0xec;
	mov	_P1,#0xec
	C$compactflash.c$88$2_0$20 ==.
;	compactflash.c:88: cfWriteCommand(device, 0x20);
	mov	ar5,r7
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
	mov	a,#0x27
	add	a,r5
	mov	r5,a
	mov	a,#0xff
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	a,#0x20
	movx	@dptr,a
	C$compactflash.c$90$2_0$20 ==.
;	compactflash.c:90: P1 = 0xed;
	mov	_P1,#0xed
	C$compactflash.c$91$2_0$20 ==.
;	compactflash.c:91: cfWaitDataReady(device);
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_cfWaitDataReady
	mov	r1,#(_cfWaitDataReady >> 8)
	mov	r2,#(_cfWaitDataReady >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
	C$compactflash.c$93$2_0$20 ==.
;	compactflash.c:93: P1 = 0xee;
	mov	_P1,#0xee
	C$compactflash.c$94$2_0$20 ==.
;	compactflash.c:94: status = cfReadStatus(device);
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	C$compactflash.c$96$2_0$20 ==.
;	compactflash.c:96: P1 = 0xef;
	C$compactflash.c$98$1_0$19 ==.
;	compactflash.c:98: while((status & 0x01)!=0);
	mov	_P1,#0xef
	jb	acc.0,00101$
	C$compactflash.c$101$2_0$21 ==.
;	compactflash.c:101: while(i++ < SECTOR_SIZE)
	mov	dptr,#_cfReadSector_device_65536_18
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_cfReadSector_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	a
	mov	_cfReadSector_i_65536_19,a
	mov	(_cfReadSector_i_65536_19 + 1),a
00104$:
	mov	r0,_cfReadSector_i_65536_19
	mov	r1,(_cfReadSector_i_65536_19 + 1)
	inc	_cfReadSector_i_65536_19
	clr	a
	cjne	a,_cfReadSector_i_65536_19,00127$
	inc	(_cfReadSector_i_65536_19 + 1)
00127$:
	mov	a,#0x100 - 0x02
	add	a,r1
	jc	00106$
	C$compactflash.c$103$2_0$21 ==.
;	compactflash.c:103: P1 = 0xf0;
	mov	_P1,#0xf0
	C$compactflash.c$104$2_0$21 ==.
;	compactflash.c:104: cfWaitDataReady(device);
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r0,#_cfWaitDataReady
	mov	r1,#(_cfWaitDataReady >> 8)
	mov	r2,#(_cfWaitDataReady >> 16)
	lcall	__sdcc_banked_call
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$compactflash.c$106$2_0$21 ==.
;	compactflash.c:106: P1 = 0xf1;
	mov	_P1,#0xf1
	C$compactflash.c$107$2_0$21 ==.
;	compactflash.c:107: buf[i+idx] = cfReadData(device);
	mov	a,_cfReadSector_i_65536_19
	add	a,r4
	mov	r0,a
	mov	a,(_cfReadSector_i_65536_19 + 1)
	addc	a,r5
	mov	r1,a
	mov	ar3,r6
	push	ar4
	push	ar5
	push	ar6
	mov	ar2,r7
	clr	a
	xch	a,r2
	swap	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xf0
	xch	a,r2
	xrl	a,r2
	mov	r6,a
	mov	a,#0x20
	add	a,r2
	mov	r2,a
	mov	a,#0xff
	addc	a,r6
	mov	r6,a
	mov	dpl,r2
	mov	dph,r6
	movx	a,@dptr
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	__gptrput
	C$compactflash.c$109$2_0$21 ==.
;	compactflash.c:109: P1 = 0xf2;
	mov	_P1,#0xf2
	pop	ar6
	pop	ar5
	pop	ar4
	sjmp	00104$
00106$:
	C$compactflash.c$114$1_0$19 ==.
;	compactflash.c:114: P1 = 0xf3;
	mov	_P1,#0xf3
	C$compactflash.c$115$1_0$19 ==.
;	compactflash.c:115: }
	C$compactflash.c$115$1_0$19 ==.
	XG$cfReadSector$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cfTest'
;------------------------------------------------------------
;buf                       Allocated with name '_cfTest_PARM_2'
;device                    Allocated with name '_cfTest_device_65536_22'
;------------------------------------------------------------
	G$cfTest$0$0 ==.
	C$compactflash.c$119$1_0$23 ==.
;	compactflash.c:119: void cfTest(char device, char* buf)
;	-----------------------------------------
;	 function cfTest
;	-----------------------------------------
_cfTest:
	mov	a,dpl
	mov	dptr,#_cfTest_device_65536_22
	movx	@dptr,a
	C$compactflash.c$124$1_0$23 ==.
;	compactflash.c:124: P1 = 0xc2;
	mov	_P1,#0xc2
	C$compactflash.c$125$1_0$23 ==.
;	compactflash.c:125: cfInit(device);
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	mov	r0,#_cfInit
	mov	r1,#(_cfInit >> 8)
	mov	r2,#(_cfInit >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$compactflash.c$127$1_0$23 ==.
;	compactflash.c:127: P1 = 0xc3;
	mov	_P1,#0xc3
	C$compactflash.c$128$1_0$23 ==.
;	compactflash.c:128: cfReadSector(device, buf, 1);
	mov	dptr,#_cfTest_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_cfReadSector_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_cfReadSector_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	r0,#_cfReadSector
	mov	r1,#(_cfReadSector >> 8)
	mov	r2,#(_cfReadSector >> 16)
	lcall	__sdcc_banked_call
	C$compactflash.c$130$1_0$23 ==.
;	compactflash.c:130: P1 = 0xc4;
	mov	_P1,#0xc4
	C$compactflash.c$133$1_0$23 ==.
;	compactflash.c:133: }
	C$compactflash.c$133$1_0$23 ==.
	XG$cfTest$0$0 ==.
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
