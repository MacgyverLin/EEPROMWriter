;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW32)
;--------------------------------------------------------
	.module sio
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _data
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
	.globl _sioRXBuf_PARM_3
	.globl _sioRXBuf_PARM_2
	.globl _sioRXStr_PARM_3
	.globl _sioRXStr_PARM_2
	.globl _sioTXBuf_PARM_3
	.globl _sioTXBuf_PARM_2
	.globl _sioTXStr_PARM_2
	.globl _sioTX_PARM_2
	.globl _sioInit
	.globl _sioClose
	.globl _sioWaitTXDone
	.globl _sioTX
	.globl _sioTXStr
	.globl _sioTXBuf
	.globl _sioWaitRXDone
	.globl _sioRX
	.globl _sioRXStr
	.globl _sioRXBuf
	.globl _sioTest1
	.globl _sioTest2
	.globl _sioTest3
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
Lsio.sioTXBuf$i$1_0$26==.
_sioTXBuf_i_65536_26:
	.ds 2
Lsio.sioRXStr$i$1_0$33==.
_sioRXStr_i_65536_33:
	.ds 2
Lsio.sioRXBuf$i$1_0$36==.
_sioRXBuf_i_65536_36:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
Lsio.sioTX$d$1_0$20==.
_sioTX_PARM_2:
	.ds 1
Lsio.sioTXStr$s$1_0$22==.
_sioTXStr_PARM_2:
	.ds 3
Lsio.sioTXStr$device$1_0$22==.
_sioTXStr_device_65536_22:
	.ds 1
Lsio.sioTXBuf$buf$1_0$25==.
_sioTXBuf_PARM_2:
	.ds 3
Lsio.sioTXBuf$size$1_0$25==.
_sioTXBuf_PARM_3:
	.ds 2
Lsio.sioTXBuf$device$1_0$25==.
_sioTXBuf_device_65536_25:
	.ds 1
Lsio.sioRXStr$s$1_0$32==.
_sioRXStr_PARM_2:
	.ds 3
Lsio.sioRXStr$size$1_0$32==.
_sioRXStr_PARM_3:
	.ds 2
Lsio.sioRXStr$device$1_0$32==.
_sioRXStr_device_65536_32:
	.ds 1
Lsio.sioRXBuf$buf$1_0$35==.
_sioRXBuf_PARM_2:
	.ds 3
Lsio.sioRXBuf$size$1_0$35==.
_sioRXBuf_PARM_3:
	.ds 2
Lsio.sioRXBuf$device$1_0$35==.
_sioRXBuf_device_65536_35:
	.ds 1
Lsio.sioTest1$device$1_0$38==.
_sioTest1_device_65536_38:
	.ds 1
Lsio.sioTest2$device$1_0$41==.
_sioTest2_device_65536_41:
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
;Allocation info for local variables in function 'sioInit'
;------------------------------------------------------------
;device                    Allocated with name '_sioInit_device_65536_14'
;------------------------------------------------------------
	G$sioInit$0$0 ==.
	C$sio.c$5$0_0$15 ==.
;	sio.c:5: void sioInit(char device)
;	-----------------------------------------
;	 function sioInit
;	-----------------------------------------
_sioInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$sio.c$9$1_0$15 ==.
;	sio.c:9: SCON = 0x50;
	mov	_SCON,#0x50
	C$sio.c$10$1_0$15 ==.
;	sio.c:10: TMOD = (TMOD & T0_MASK) | 0x21;
	mov	r6,_TMOD
	anl	ar6,#0x0f
	mov	r7,#0x00
	orl	ar6,#0x21
	mov	_TMOD,r6
	C$sio.c$11$1_0$15 ==.
;	sio.c:11: PCON = 0x80;
	mov	_PCON,#0x80
	C$sio.c$14$1_0$15 ==.
;	sio.c:14: TH1 = 0xFA;
	mov	_TH1,#0xfa
	C$sio.c$15$1_0$15 ==.
;	sio.c:15: TL1 = 0xFA;
	mov	_TL1,#0xfa
	C$sio.c$16$1_0$15 ==.
;	sio.c:16: TR1 = 1;
;	assignBit
	setb	_TR1
	C$sio.c$19$1_0$15 ==.
;	sio.c:19: }
	C$sio.c$19$1_0$15 ==.
	XG$sioInit$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioClose'
;------------------------------------------------------------
;device                    Allocated with name '_sioClose_device_65536_16'
;------------------------------------------------------------
	G$sioClose$0$0 ==.
	C$sio.c$21$1_0$17 ==.
;	sio.c:21: void sioClose(char device)
;	-----------------------------------------
;	 function sioClose
;	-----------------------------------------
_sioClose:
	C$sio.c$25$1_0$17 ==.
;	sio.c:25: SCON = 0x00;
	mov	_SCON,#0x00
	C$sio.c$26$1_0$17 ==.
;	sio.c:26: TMOD = (TMOD & T0_MASK);
	anl	_TMOD,#0x0f
	C$sio.c$27$1_0$17 ==.
;	sio.c:27: PCON &= ~SMOD;
	anl	_PCON,#0x7f
	C$sio.c$28$1_0$17 ==.
;	sio.c:28: TR1 = 0;
;	assignBit
	clr	_TR1
	C$sio.c$29$1_0$17 ==.
;	sio.c:29: }
	C$sio.c$29$1_0$17 ==.
	XG$sioClose$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioWaitTXDone'
;------------------------------------------------------------
;device                    Allocated with name '_sioWaitTXDone_device_65536_18'
;------------------------------------------------------------
	G$sioWaitTXDone$0$0 ==.
	C$sio.c$31$1_0$19 ==.
;	sio.c:31: void sioWaitTXDone(char device)
;	-----------------------------------------
;	 function sioWaitTXDone
;	-----------------------------------------
_sioWaitTXDone:
	C$sio.c$35$1_0$19 ==.
;	sio.c:35: while(!TI);
00101$:
	jnb	_TI,00101$
	C$sio.c$36$1_0$19 ==.
;	sio.c:36: }
	C$sio.c$36$1_0$19 ==.
	XG$sioWaitTXDone$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioTX'
;------------------------------------------------------------
;d                         Allocated with name '_sioTX_PARM_2'
;device                    Allocated with name '_sioTX_device_65536_20'
;------------------------------------------------------------
	G$sioTX$0$0 ==.
	C$sio.c$38$1_0$21 ==.
;	sio.c:38: void sioTX(char device, char d)
;	-----------------------------------------
;	 function sioTX
;	-----------------------------------------
_sioTX:
	C$sio.c$42$1_0$21 ==.
;	sio.c:42: TI = 0;
;	assignBit
	clr	_TI
	C$sio.c$43$1_0$21 ==.
;	sio.c:43: SBUF = d;
	mov	dptr,#_sioTX_PARM_2
	movx	a,@dptr
	mov	_SBUF,a
	C$sio.c$44$1_0$21 ==.
;	sio.c:44: while(!TI) /* assumes UART is initialized */ ;
00101$:
	jnb	_TI,00101$
	C$sio.c$45$1_0$21 ==.
;	sio.c:45: }
	C$sio.c$45$1_0$21 ==.
	XG$sioTX$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioTXStr'
;------------------------------------------------------------
;s                         Allocated with name '_sioTXStr_PARM_2'
;device                    Allocated with name '_sioTXStr_device_65536_22'
;------------------------------------------------------------
	G$sioTXStr$0$0 ==.
	C$sio.c$47$1_0$23 ==.
;	sio.c:47: void sioTXStr(char device, const char* s)
;	-----------------------------------------
;	 function sioTXStr
;	-----------------------------------------
_sioTXStr:
	mov	a,dpl
	mov	dptr,#_sioTXStr_device_65536_22
	movx	@dptr,a
	C$sio.c$51$2_0$24 ==.
;	sio.c:51: do
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_sioTXStr_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
00101$:
	C$sio.c$53$2_0$24 ==.
;	sio.c:53: sioTX(device, *s);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dptr,#_sioTX_PARM_2
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r0,#_sioTX
	mov	r1,#(_sioTX >> 8)
	mov	r2,#(_sioTX >> 16)
	lcall	__sdcc_banked_call
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$sio.c$54$1_0$23 ==.
;	sio.c:54: }while(*s++);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
	mov	a,r3
	jnz	00101$
	C$sio.c$55$1_0$23 ==.
;	sio.c:55: }
	C$sio.c$55$1_0$23 ==.
	XG$sioTXStr$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioTXBuf'
;------------------------------------------------------------
;i                         Allocated with name '_sioTXBuf_i_65536_26'
;buf                       Allocated with name '_sioTXBuf_PARM_2'
;size                      Allocated with name '_sioTXBuf_PARM_3'
;device                    Allocated with name '_sioTXBuf_device_65536_25'
;------------------------------------------------------------
	G$sioTXBuf$0$0 ==.
	C$sio.c$57$1_0$26 ==.
;	sio.c:57: void sioTXBuf(char device, const char* buf, unsigned int size)
;	-----------------------------------------
;	 function sioTXBuf
;	-----------------------------------------
_sioTXBuf:
	mov	a,dpl
	mov	dptr,#_sioTXBuf_device_65536_25
	movx	@dptr,a
	C$sio.c$63$2_0$27 ==.
;	sio.c:63: while(size--)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_sioTXBuf_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	a
	mov	_sioTXBuf_i_65536_26,a
	mov	(_sioTXBuf_i_65536_26 + 1),a
	mov	dptr,#_sioTXBuf_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
00101$:
	mov	ar2,r0
	mov	ar3,r1
	dec	r0
	cjne	r0,#0xff,00115$
	dec	r1
00115$:
	mov	a,r2
	orl	a,r3
	jz	00104$
	C$sio.c$65$1_0$26 ==.
;	sio.c:65: sioTX(device, buf[i++]);
	push	ar0
	push	ar1
	mov	r2,_sioTXBuf_i_65536_26
	mov	r3,(_sioTXBuf_i_65536_26 + 1)
	inc	_sioTXBuf_i_65536_26
	clr	a
	cjne	a,_sioTXBuf_i_65536_26,00117$
	inc	(_sioTXBuf_i_65536_26 + 1)
00117$:
	mov	a,r2
	add	a,r4
	mov	r2,a
	mov	a,r3
	addc	a,r5
	mov	r1,a
	mov	ar3,r6
	mov	dpl,r2
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	dptr,#_sioTX_PARM_2
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	mov	r0,#_sioTX
	mov	r1,#(_sioTX >> 8)
	mov	r2,#(_sioTX >> 16)
	lcall	__sdcc_banked_call
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar1
	pop	ar0
	sjmp	00101$
00104$:
	C$sio.c$67$1_0$26 ==.
;	sio.c:67: }
	C$sio.c$67$1_0$26 ==.
	XG$sioTXBuf$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioWaitRXDone'
;------------------------------------------------------------
;device                    Allocated with name '_sioWaitRXDone_device_65536_28'
;------------------------------------------------------------
	G$sioWaitRXDone$0$0 ==.
	C$sio.c$69$1_0$29 ==.
;	sio.c:69: void sioWaitRXDone(char device)
;	-----------------------------------------
;	 function sioWaitRXDone
;	-----------------------------------------
_sioWaitRXDone:
	C$sio.c$73$1_0$29 ==.
;	sio.c:73: while(!RI);
00101$:
	jnb	_RI,00101$
	C$sio.c$74$1_0$29 ==.
;	sio.c:74: }
	C$sio.c$74$1_0$29 ==.
	XG$sioWaitRXDone$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioRX'
;------------------------------------------------------------
;device                    Allocated with name '_sioRX_device_65536_30'
;d                         Allocated to registers r7 
;------------------------------------------------------------
	G$sioRX$0$0 ==.
	C$sio.c$76$1_0$31 ==.
;	sio.c:76: char sioRX(char device)
;	-----------------------------------------
;	 function sioRX
;	-----------------------------------------
_sioRX:
	C$sio.c$82$1_0$31 ==.
;	sio.c:82: while(!RI) /* assumes UART is initialized */ ;
00101$:
	jnb	_RI,00101$
	C$sio.c$83$1_0$31 ==.
;	sio.c:83: d = SBUF;
	mov	r7,_SBUF
	C$sio.c$84$1_0$31 ==.
;	sio.c:84: RI = 0;
;	assignBit
	clr	_RI
	C$sio.c$86$1_0$31 ==.
;	sio.c:86: return d;
	mov	dpl,r7
	C$sio.c$87$1_0$31 ==.
;	sio.c:87: }
	C$sio.c$87$1_0$31 ==.
	XG$sioRX$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioRXStr'
;------------------------------------------------------------
;i                         Allocated with name '_sioRXStr_i_65536_33'
;s                         Allocated with name '_sioRXStr_PARM_2'
;size                      Allocated with name '_sioRXStr_PARM_3'
;device                    Allocated with name '_sioRXStr_device_65536_32'
;------------------------------------------------------------
	G$sioRXStr$0$0 ==.
	C$sio.c$89$1_0$33 ==.
;	sio.c:89: void sioRXStr(char device, char* s, unsigned int size)
;	-----------------------------------------
;	 function sioRXStr
;	-----------------------------------------
_sioRXStr:
	mov	a,dpl
	mov	dptr,#_sioRXStr_device_65536_32
	movx	@dptr,a
	C$sio.c$95$2_0$34 ==.
;	sio.c:95: while(size--)
	mov	dptr,#_sioRXStr_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_sioRXStr_device_65536_32
	movx	a,@dptr
	mov	r4,a
	clr	a
	mov	_sioRXStr_i_65536_33,a
	mov	(_sioRXStr_i_65536_33 + 1),a
	mov	dptr,#_sioRXStr_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
00103$:
	mov	ar2,r0
	mov	ar3,r1
	dec	r0
	cjne	r0,#0xff,00117$
	dec	r1
00117$:
	mov	a,r2
	orl	a,r3
	jz	00106$
	C$sio.c$97$1_0$33 ==.
;	sio.c:97: if((s[i++] = sioRX(device))==0)
	push	ar0
	push	ar1
	mov	r2,_sioRXStr_i_65536_33
	mov	r3,(_sioRXStr_i_65536_33 + 1)
	inc	_sioRXStr_i_65536_33
	clr	a
	cjne	a,_sioRXStr_i_65536_33,00119$
	inc	(_sioRXStr_i_65536_33 + 1)
00119$:
	mov	a,r2
	add	a,r5
	mov	r2,a
	mov	a,r3
	addc	a,r6
	mov	r1,a
	mov	ar3,r7
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	mov	r0,#_sioRX
	mov	r1,#(_sioRX >> 8)
	mov	r2,#(_sioRX >> 16)
	lcall	__sdcc_banked_call
	mov	r0,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r1
	mov	b,r3
	mov	a,r0
	lcall	__gptrput
	pop	ar1
	pop	ar0
	jnz	00103$
	C$sio.c$98$1_0$33 ==.
;	sio.c:98: break;
00106$:
	C$sio.c$100$1_0$33 ==.
;	sio.c:100: }
	C$sio.c$100$1_0$33 ==.
	XG$sioRXStr$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioRXBuf'
;------------------------------------------------------------
;i                         Allocated with name '_sioRXBuf_i_65536_36'
;buf                       Allocated with name '_sioRXBuf_PARM_2'
;size                      Allocated with name '_sioRXBuf_PARM_3'
;device                    Allocated with name '_sioRXBuf_device_65536_35'
;------------------------------------------------------------
	G$sioRXBuf$0$0 ==.
	C$sio.c$102$1_0$36 ==.
;	sio.c:102: void sioRXBuf(char device, char* buf, unsigned int size)
;	-----------------------------------------
;	 function sioRXBuf
;	-----------------------------------------
_sioRXBuf:
	mov	a,dpl
	mov	dptr,#_sioRXBuf_device_65536_35
	movx	@dptr,a
	C$sio.c$108$2_0$37 ==.
;	sio.c:108: while(size--)
	mov	dptr,#_sioRXBuf_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_sioRXBuf_device_65536_35
	movx	a,@dptr
	mov	r4,a
	clr	a
	mov	_sioRXBuf_i_65536_36,a
	mov	(_sioRXBuf_i_65536_36 + 1),a
	mov	dptr,#_sioRXBuf_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
00101$:
	mov	ar2,r0
	mov	ar3,r1
	dec	r0
	cjne	r0,#0xff,00115$
	dec	r1
00115$:
	mov	a,r2
	orl	a,r3
	jz	00104$
	C$sio.c$110$1_0$36 ==.
;	sio.c:110: buf[i++] = sioRX(device);
	push	ar0
	push	ar1
	mov	r2,_sioRXBuf_i_65536_36
	mov	r3,(_sioRXBuf_i_65536_36 + 1)
	inc	_sioRXBuf_i_65536_36
	clr	a
	cjne	a,_sioRXBuf_i_65536_36,00117$
	inc	(_sioRXBuf_i_65536_36 + 1)
00117$:
	mov	a,r2
	add	a,r5
	mov	r2,a
	mov	a,r3
	addc	a,r6
	mov	r1,a
	mov	ar3,r7
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	mov	r0,#_sioRX
	mov	r1,#(_sioRX >> 8)
	mov	r2,#(_sioRX >> 16)
	lcall	__sdcc_banked_call
	mov	r0,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r1
	mov	b,r3
	mov	a,r0
	lcall	__gptrput
	pop	ar1
	pop	ar0
	sjmp	00101$
00104$:
	C$sio.c$112$1_0$36 ==.
;	sio.c:112: }
	C$sio.c$112$1_0$36 ==.
	XG$sioRXBuf$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioTest1'
;------------------------------------------------------------
;device                    Allocated with name '_sioTest1_device_65536_38'
;------------------------------------------------------------
	G$sioTest1$0$0 ==.
	C$sio.c$114$1_0$39 ==.
;	sio.c:114: void sioTest1(char device)
;	-----------------------------------------
;	 function sioTest1
;	-----------------------------------------
_sioTest1:
	mov	a,dpl
	mov	dptr,#_sioTest1_device_65536_38
	movx	@dptr,a
	C$sio.c$116$1_0$39 ==.
;	sio.c:116: sioInit(device);
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	mov	r0,#_sioInit
	mov	r1,#(_sioInit >> 8)
	mov	r2,#(_sioInit >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$sio.c$117$1_0$39 ==.
;	sio.c:117: while(1)
00102$:
	C$sio.c$119$2_0$40 ==.
;	sio.c:119: sioTX(device, sioRX(device));
	mov	dpl,r7
	push	ar7
	mov	r0,#_sioRX
	mov	r1,#(_sioRX >> 8)
	mov	r2,#(_sioRX >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	pop	ar7
	mov	dptr,#_sioTX_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	mov	r0,#_sioTX
	mov	r1,#(_sioTX >> 8)
	mov	r2,#(_sioTX >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$sio.c$121$1_0$39 ==.
;	sio.c:121: }
	C$sio.c$121$1_0$39 ==.
	XG$sioTest1$0$0 ==.
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'sioTest2'
;------------------------------------------------------------
;device                    Allocated with name '_sioTest2_device_65536_41'
;------------------------------------------------------------
	G$sioTest2$0$0 ==.
	C$sio.c$133$1_0$42 ==.
;	sio.c:133: void sioTest2(char device)
;	-----------------------------------------
;	 function sioTest2
;	-----------------------------------------
_sioTest2:
	mov	a,dpl
	mov	dptr,#_sioTest2_device_65536_41
	movx	@dptr,a
	C$sio.c$135$1_0$42 ==.
;	sio.c:135: sioInit(device);
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	mov	r0,#_sioInit
	mov	r1,#(_sioInit >> 8)
	mov	r2,#(_sioInit >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$sio.c$136$1_0$42 ==.
;	sio.c:136: while(1)
00102$:
	C$sio.c$138$2_0$43 ==.
;	sio.c:138: sioTXStr(device, "Fuck you now!!!!\r\n");
	mov	dptr,#_sioTXStr_PARM_2
	mov	a,#___str_0
	movx	@dptr,a
	mov	a,#(___str_0 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	mov	r0,#_sioTXStr
	mov	r1,#(_sioTXStr >> 8)
	mov	r2,#(_sioTXStr >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$sio.c$139$2_0$43 ==.
;	sio.c:139: sioTXBuf(device, data, 26*2);
	mov	dptr,#_sioTXBuf_PARM_2
	mov	a,#_data
	movx	@dptr,a
	mov	a,#(_data >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sioTXBuf_PARM_3
	mov	a,#0x34
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	mov	r0,#_sioTXBuf
	mov	r1,#(_sioTXBuf >> 8)
	mov	r2,#(_sioTXBuf >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$sio.c$141$1_0$42 ==.
;	sio.c:141: }
	C$sio.c$141$1_0$42 ==.
	XG$sioTest2$0$0 ==.
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'sioTest3'
;------------------------------------------------------------
;device                    Allocated with name '_sioTest3_device_65536_44'
;------------------------------------------------------------
	G$sioTest3$0$0 ==.
	C$sio.c$143$1_0$45 ==.
;	sio.c:143: void sioTest3(char device)
;	-----------------------------------------
;	 function sioTest3
;	-----------------------------------------
_sioTest3:
	C$sio.c$145$1_0$45 ==.
;	sio.c:145: device;
	C$sio.c$146$1_0$45 ==.
;	sio.c:146: }
	C$sio.c$146$1_0$45 ==.
	XG$sioTest3$0$0 ==.
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$data$0_0$0 == .
_data:
	.db #0x61	; 97	'a'
	.db #0x62	; 98	'b'
	.db #0x63	; 99	'c'
	.db #0x64	; 100	'd'
	.db #0x65	; 101	'e'
	.db #0x66	; 102	'f'
	.db #0x67	; 103	'g'
	.db #0x68	; 104	'h'
	.db #0x69	; 105	'i'
	.db #0x6a	; 106	'j'
	.db #0x6b	; 107	'k'
	.db #0x6c	; 108	'l'
	.db #0x6d	; 109	'm'
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x70	; 112	'p'
	.db #0x71	; 113	'q'
	.db #0x72	; 114	'r'
	.db #0x73	; 115	's'
	.db #0x74	; 116	't'
	.db #0x75	; 117	'u'
	.db #0x76	; 118	'v'
	.db #0x77	; 119	'w'
	.db #0x78	; 120	'x'
	.db #0x79	; 121	'y'
	.db #0x7a	; 122	'z'
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4a	; 74	'J'
	.db #0x4b	; 75	'K'
	.db #0x4c	; 76	'L'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x50	; 80	'P'
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x56	; 86	'V'
	.db #0x57	; 87	'W'
	.db #0x58	; 88	'X'
	.db #0x59	; 89	'Y'
	.db #0x5a	; 90	'Z'
Fsio$__str_0$0_0$0 == .
___str_0:
	.ascii "Fuck you now!!!!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
