;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW32)
;--------------------------------------------------------
	.module uart
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _data
	.globl _uartTest3
	.globl _uartTest2
	.globl _uartTest1
	.globl _uartRXBuf
	.globl _uartRXStr
	.globl _uartRX
	.globl _uartWaitRXDone
	.globl _uartTXBuf
	.globl _uartTXStr
	.globl _uartTX
	.globl _uartWaitTXDone
	.globl _uartClose
	.globl _uartInit
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
	.globl _uartRXBuf_PARM_3
	.globl _uartRXBuf_PARM_2
	.globl _uartRXStr_PARM_3
	.globl _uartRXStr_PARM_2
	.globl _uartTXBuf_PARM_3
	.globl _uartTXBuf_PARM_2
	.globl _uartTXStr_PARM_2
	.globl _uartTX_PARM_2
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
Luart.uartTXBuf$i$1_0$26==.
_uartTXBuf_i_65536_26:
	.ds 2
Luart.uartRXStr$i$1_0$33==.
_uartRXStr_i_65536_33:
	.ds 2
Luart.uartRXBuf$i$1_0$36==.
_uartRXBuf_i_65536_36:
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
Luart.uartTX$d$1_0$20==.
_uartTX_PARM_2:
	.ds 1
Luart.uartTXStr$s$1_0$22==.
_uartTXStr_PARM_2:
	.ds 3
Luart.uartTXStr$device$1_0$22==.
_uartTXStr_device_65536_22:
	.ds 1
Luart.uartTXBuf$buf$1_0$25==.
_uartTXBuf_PARM_2:
	.ds 3
Luart.uartTXBuf$size$1_0$25==.
_uartTXBuf_PARM_3:
	.ds 2
Luart.uartTXBuf$device$1_0$25==.
_uartTXBuf_device_65536_25:
	.ds 1
Luart.uartRXStr$s$1_0$32==.
_uartRXStr_PARM_2:
	.ds 3
Luart.uartRXStr$size$1_0$32==.
_uartRXStr_PARM_3:
	.ds 2
Luart.uartRXStr$device$1_0$32==.
_uartRXStr_device_65536_32:
	.ds 1
Luart.uartRXBuf$buf$1_0$35==.
_uartRXBuf_PARM_2:
	.ds 3
Luart.uartRXBuf$size$1_0$35==.
_uartRXBuf_PARM_3:
	.ds 2
Luart.uartRXBuf$device$1_0$35==.
_uartRXBuf_device_65536_35:
	.ds 1
Luart.uartTest1$device$1_0$38==.
_uartTest1_device_65536_38:
	.ds 1
Luart.uartTest2$device$1_0$41==.
_uartTest2_device_65536_41:
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
;Allocation info for local variables in function 'uartInit'
;------------------------------------------------------------
;device                    Allocated with name '_uartInit_device_65536_14'
;------------------------------------------------------------
	G$uartInit$0$0 ==.
	C$uart.c$5$0_0$15 ==.
;	uart.c:5: void uartInit(char device)
;	-----------------------------------------
;	 function uartInit
;	-----------------------------------------
_uartInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$uart.c$7$1_0$15 ==.
;	uart.c:7: SCON = 0x50;
	mov	_SCON,#0x50
	C$uart.c$8$1_0$15 ==.
;	uart.c:8: TMOD = (TMOD & T0_MASK) | 0x21;
	mov	r6,_TMOD
	anl	ar6,#0x0f
	mov	r7,#0x00
	orl	ar6,#0x21
	mov	_TMOD,r6
	C$uart.c$9$1_0$15 ==.
;	uart.c:9: PCON = 0x80;
	mov	_PCON,#0x80
	C$uart.c$12$1_0$15 ==.
;	uart.c:12: TH1 = 0xFA;
	mov	_TH1,#0xfa
	C$uart.c$13$1_0$15 ==.
;	uart.c:13: TL1 = 0xFA;
	mov	_TL1,#0xfa
	C$uart.c$14$1_0$15 ==.
;	uart.c:14: TR1 = 1;
;	assignBit
	setb	_TR1
	C$uart.c$17$1_0$15 ==.
;	uart.c:17: }
	C$uart.c$17$1_0$15 ==.
	XG$uartInit$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartClose'
;------------------------------------------------------------
;device                    Allocated with name '_uartClose_device_65536_16'
;------------------------------------------------------------
	G$uartClose$0$0 ==.
	C$uart.c$19$1_0$17 ==.
;	uart.c:19: void uartClose(char device)
;	-----------------------------------------
;	 function uartClose
;	-----------------------------------------
_uartClose:
	C$uart.c$21$1_0$17 ==.
;	uart.c:21: SCON = 0x00;
	mov	_SCON,#0x00
	C$uart.c$22$1_0$17 ==.
;	uart.c:22: TMOD = (TMOD & T0_MASK);
	anl	_TMOD,#0x0f
	C$uart.c$23$1_0$17 ==.
;	uart.c:23: PCON &= ~SMOD;
	anl	_PCON,#0x7f
	C$uart.c$24$1_0$17 ==.
;	uart.c:24: TR1 = 0;
;	assignBit
	clr	_TR1
	C$uart.c$25$1_0$17 ==.
;	uart.c:25: }
	C$uart.c$25$1_0$17 ==.
	XG$uartClose$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartWaitTXDone'
;------------------------------------------------------------
;device                    Allocated with name '_uartWaitTXDone_device_65536_18'
;------------------------------------------------------------
	G$uartWaitTXDone$0$0 ==.
	C$uart.c$27$1_0$19 ==.
;	uart.c:27: void uartWaitTXDone(char device)
;	-----------------------------------------
;	 function uartWaitTXDone
;	-----------------------------------------
_uartWaitTXDone:
	C$uart.c$29$1_0$19 ==.
;	uart.c:29: while(!TI);
00101$:
	jnb	_TI,00101$
	C$uart.c$30$1_0$19 ==.
;	uart.c:30: }
	C$uart.c$30$1_0$19 ==.
	XG$uartWaitTXDone$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartTX'
;------------------------------------------------------------
;d                         Allocated with name '_uartTX_PARM_2'
;device                    Allocated with name '_uartTX_device_65536_20'
;------------------------------------------------------------
	G$uartTX$0$0 ==.
	C$uart.c$32$1_0$21 ==.
;	uart.c:32: void uartTX(char device, char d)
;	-----------------------------------------
;	 function uartTX
;	-----------------------------------------
_uartTX:
	C$uart.c$34$1_0$21 ==.
;	uart.c:34: TI = 0;
;	assignBit
	clr	_TI
	C$uart.c$35$1_0$21 ==.
;	uart.c:35: SBUF = d;
	mov	dptr,#_uartTX_PARM_2
	movx	a,@dptr
	mov	_SBUF,a
	C$uart.c$36$1_0$21 ==.
;	uart.c:36: while(!TI) /* assumes UART is initialized */ ;
00101$:
	jnb	_TI,00101$
	C$uart.c$37$1_0$21 ==.
;	uart.c:37: }
	C$uart.c$37$1_0$21 ==.
	XG$uartTX$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartTXStr'
;------------------------------------------------------------
;s                         Allocated with name '_uartTXStr_PARM_2'
;device                    Allocated with name '_uartTXStr_device_65536_22'
;------------------------------------------------------------
	G$uartTXStr$0$0 ==.
	C$uart.c$39$1_0$23 ==.
;	uart.c:39: void uartTXStr(char device, const char* s)
;	-----------------------------------------
;	 function uartTXStr
;	-----------------------------------------
_uartTXStr:
	mov	a,dpl
	mov	dptr,#_uartTXStr_device_65536_22
	movx	@dptr,a
	C$uart.c$41$2_0$24 ==.
;	uart.c:41: do
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uartTXStr_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
00101$:
	C$uart.c$43$2_0$24 ==.
;	uart.c:43: uartTX(device, *s);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dptr,#_uartTX_PARM_2
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r0,#_uartTX
	mov	r1,#(_uartTX >> 8)
	mov	r2,#(_uartTX >> 16)
	lcall	__sdcc_banked_call
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$uart.c$44$1_0$23 ==.
;	uart.c:44: }while(*s++);
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
	C$uart.c$45$1_0$23 ==.
;	uart.c:45: }
	C$uart.c$45$1_0$23 ==.
	XG$uartTXStr$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartTXBuf'
;------------------------------------------------------------
;i                         Allocated with name '_uartTXBuf_i_65536_26'
;buf                       Allocated with name '_uartTXBuf_PARM_2'
;size                      Allocated with name '_uartTXBuf_PARM_3'
;device                    Allocated with name '_uartTXBuf_device_65536_25'
;------------------------------------------------------------
	G$uartTXBuf$0$0 ==.
	C$uart.c$47$1_0$26 ==.
;	uart.c:47: void uartTXBuf(char device, const char* buf, unsigned int size)
;	-----------------------------------------
;	 function uartTXBuf
;	-----------------------------------------
_uartTXBuf:
	mov	a,dpl
	mov	dptr,#_uartTXBuf_device_65536_25
	movx	@dptr,a
	C$uart.c$51$2_0$27 ==.
;	uart.c:51: while(size--)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uartTXBuf_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	a
	mov	_uartTXBuf_i_65536_26,a
	mov	(_uartTXBuf_i_65536_26 + 1),a
	mov	dptr,#_uartTXBuf_PARM_3
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
	C$uart.c$53$1_0$26 ==.
;	uart.c:53: uartTX(device, buf[i++]);
	push	ar0
	push	ar1
	mov	r2,_uartTXBuf_i_65536_26
	mov	r3,(_uartTXBuf_i_65536_26 + 1)
	inc	_uartTXBuf_i_65536_26
	clr	a
	cjne	a,_uartTXBuf_i_65536_26,00117$
	inc	(_uartTXBuf_i_65536_26 + 1)
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
	mov	dptr,#_uartTX_PARM_2
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	mov	r0,#_uartTX
	mov	r1,#(_uartTX >> 8)
	mov	r2,#(_uartTX >> 16)
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
	C$uart.c$55$1_0$26 ==.
;	uart.c:55: }
	C$uart.c$55$1_0$26 ==.
	XG$uartTXBuf$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartWaitRXDone'
;------------------------------------------------------------
;device                    Allocated with name '_uartWaitRXDone_device_65536_28'
;------------------------------------------------------------
	G$uartWaitRXDone$0$0 ==.
	C$uart.c$57$1_0$29 ==.
;	uart.c:57: void uartWaitRXDone(char device)
;	-----------------------------------------
;	 function uartWaitRXDone
;	-----------------------------------------
_uartWaitRXDone:
	C$uart.c$59$1_0$29 ==.
;	uart.c:59: while(!RI);
00101$:
	jnb	_RI,00101$
	C$uart.c$60$1_0$29 ==.
;	uart.c:60: }
	C$uart.c$60$1_0$29 ==.
	XG$uartWaitRXDone$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartRX'
;------------------------------------------------------------
;device                    Allocated with name '_uartRX_device_65536_30'
;d                         Allocated to registers r7 
;------------------------------------------------------------
	G$uartRX$0$0 ==.
	C$uart.c$62$1_0$31 ==.
;	uart.c:62: char uartRX(char device)
;	-----------------------------------------
;	 function uartRX
;	-----------------------------------------
_uartRX:
	C$uart.c$66$1_0$31 ==.
;	uart.c:66: while(!RI) /* assumes UART is initialized */ ;
00101$:
	jnb	_RI,00101$
	C$uart.c$67$1_0$31 ==.
;	uart.c:67: d = SBUF;
	mov	r7,_SBUF
	C$uart.c$68$1_0$31 ==.
;	uart.c:68: RI = 0;
;	assignBit
	clr	_RI
	C$uart.c$70$1_0$31 ==.
;	uart.c:70: return d;
	mov	dpl,r7
	C$uart.c$71$1_0$31 ==.
;	uart.c:71: }
	C$uart.c$71$1_0$31 ==.
	XG$uartRX$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartRXStr'
;------------------------------------------------------------
;i                         Allocated with name '_uartRXStr_i_65536_33'
;s                         Allocated with name '_uartRXStr_PARM_2'
;size                      Allocated with name '_uartRXStr_PARM_3'
;device                    Allocated with name '_uartRXStr_device_65536_32'
;------------------------------------------------------------
	G$uartRXStr$0$0 ==.
	C$uart.c$73$1_0$33 ==.
;	uart.c:73: void uartRXStr(char device, char* s, unsigned int size)
;	-----------------------------------------
;	 function uartRXStr
;	-----------------------------------------
_uartRXStr:
	mov	a,dpl
	mov	dptr,#_uartRXStr_device_65536_32
	movx	@dptr,a
	C$uart.c$77$2_0$34 ==.
;	uart.c:77: while(size--)
	mov	dptr,#_uartRXStr_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uartRXStr_device_65536_32
	movx	a,@dptr
	mov	r4,a
	clr	a
	mov	_uartRXStr_i_65536_33,a
	mov	(_uartRXStr_i_65536_33 + 1),a
	mov	dptr,#_uartRXStr_PARM_3
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
	C$uart.c$79$1_0$33 ==.
;	uart.c:79: if((s[i++] = uartRX(device))==0)
	push	ar0
	push	ar1
	mov	r2,_uartRXStr_i_65536_33
	mov	r3,(_uartRXStr_i_65536_33 + 1)
	inc	_uartRXStr_i_65536_33
	clr	a
	cjne	a,_uartRXStr_i_65536_33,00119$
	inc	(_uartRXStr_i_65536_33 + 1)
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
	mov	r0,#_uartRX
	mov	r1,#(_uartRX >> 8)
	mov	r2,#(_uartRX >> 16)
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
	C$uart.c$80$1_0$33 ==.
;	uart.c:80: break;
00106$:
	C$uart.c$82$1_0$33 ==.
;	uart.c:82: }
	C$uart.c$82$1_0$33 ==.
	XG$uartRXStr$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartRXBuf'
;------------------------------------------------------------
;i                         Allocated with name '_uartRXBuf_i_65536_36'
;buf                       Allocated with name '_uartRXBuf_PARM_2'
;size                      Allocated with name '_uartRXBuf_PARM_3'
;device                    Allocated with name '_uartRXBuf_device_65536_35'
;------------------------------------------------------------
	G$uartRXBuf$0$0 ==.
	C$uart.c$84$1_0$36 ==.
;	uart.c:84: void uartRXBuf(char device, char* buf, unsigned int size)
;	-----------------------------------------
;	 function uartRXBuf
;	-----------------------------------------
_uartRXBuf:
	mov	a,dpl
	mov	dptr,#_uartRXBuf_device_65536_35
	movx	@dptr,a
	C$uart.c$88$2_0$37 ==.
;	uart.c:88: while(size--)
	mov	dptr,#_uartRXBuf_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uartRXBuf_device_65536_35
	movx	a,@dptr
	mov	r4,a
	clr	a
	mov	_uartRXBuf_i_65536_36,a
	mov	(_uartRXBuf_i_65536_36 + 1),a
	mov	dptr,#_uartRXBuf_PARM_3
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
	C$uart.c$90$1_0$36 ==.
;	uart.c:90: buf[i++] = uartRX(device);
	push	ar0
	push	ar1
	mov	r2,_uartRXBuf_i_65536_36
	mov	r3,(_uartRXBuf_i_65536_36 + 1)
	inc	_uartRXBuf_i_65536_36
	clr	a
	cjne	a,_uartRXBuf_i_65536_36,00117$
	inc	(_uartRXBuf_i_65536_36 + 1)
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
	mov	r0,#_uartRX
	mov	r1,#(_uartRX >> 8)
	mov	r2,#(_uartRX >> 16)
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
	C$uart.c$92$1_0$36 ==.
;	uart.c:92: }
	C$uart.c$92$1_0$36 ==.
	XG$uartRXBuf$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartTest1'
;------------------------------------------------------------
;device                    Allocated with name '_uartTest1_device_65536_38'
;------------------------------------------------------------
	G$uartTest1$0$0 ==.
	C$uart.c$94$1_0$39 ==.
;	uart.c:94: void uartTest1(char device)
;	-----------------------------------------
;	 function uartTest1
;	-----------------------------------------
_uartTest1:
	mov	a,dpl
	mov	dptr,#_uartTest1_device_65536_38
	movx	@dptr,a
	C$uart.c$96$1_0$39 ==.
;	uart.c:96: uartInit(device);
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	mov	r0,#_uartInit
	mov	r1,#(_uartInit >> 8)
	mov	r2,#(_uartInit >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$uart.c$97$1_0$39 ==.
;	uart.c:97: while(1)
00102$:
	C$uart.c$99$2_0$40 ==.
;	uart.c:99: uartTX(device, uartRX(device));
	mov	dpl,r7
	push	ar7
	mov	r0,#_uartRX
	mov	r1,#(_uartRX >> 8)
	mov	r2,#(_uartRX >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	pop	ar7
	mov	dptr,#_uartTX_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	mov	r0,#_uartTX
	mov	r1,#(_uartTX >> 8)
	mov	r2,#(_uartTX >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$uart.c$101$1_0$39 ==.
;	uart.c:101: }
	C$uart.c$101$1_0$39 ==.
	XG$uartTest1$0$0 ==.
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'uartTest2'
;------------------------------------------------------------
;device                    Allocated with name '_uartTest2_device_65536_41'
;------------------------------------------------------------
	G$uartTest2$0$0 ==.
	C$uart.c$113$1_0$42 ==.
;	uart.c:113: void uartTest2(char device)
;	-----------------------------------------
;	 function uartTest2
;	-----------------------------------------
_uartTest2:
	mov	a,dpl
	mov	dptr,#_uartTest2_device_65536_41
	movx	@dptr,a
	C$uart.c$115$1_0$42 ==.
;	uart.c:115: uartInit(device);
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	mov	r0,#_uartInit
	mov	r1,#(_uartInit >> 8)
	mov	r2,#(_uartInit >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$uart.c$116$1_0$42 ==.
;	uart.c:116: while(1)
00102$:
	C$uart.c$118$2_0$43 ==.
;	uart.c:118: uartTXStr(device, "Fuck you now!!!!\r\n");
	mov	dptr,#_uartTXStr_PARM_2
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
	mov	r0,#_uartTXStr
	mov	r1,#(_uartTXStr >> 8)
	mov	r2,#(_uartTXStr >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$uart.c$119$2_0$43 ==.
;	uart.c:119: uartTXBuf(device, data, 26*2);
	mov	dptr,#_uartTXBuf_PARM_2
	mov	a,#_data
	movx	@dptr,a
	mov	a,#(_data >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uartTXBuf_PARM_3
	mov	a,#0x34
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	mov	r0,#_uartTXBuf
	mov	r1,#(_uartTXBuf >> 8)
	mov	r2,#(_uartTXBuf >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$uart.c$121$1_0$42 ==.
;	uart.c:121: }
	C$uart.c$121$1_0$42 ==.
	XG$uartTest2$0$0 ==.
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'uartTest3'
;------------------------------------------------------------
;device                    Allocated with name '_uartTest3_device_65536_44'
;------------------------------------------------------------
	G$uartTest3$0$0 ==.
	C$uart.c$123$1_0$46 ==.
;	uart.c:123: void uartTest3(char device)
;	-----------------------------------------
;	 function uartTest3
;	-----------------------------------------
_uartTest3:
	C$uart.c$125$1_0$46 ==.
;	uart.c:125: }
	C$uart.c$125$1_0$46 ==.
	XG$uartTest3$0$0 ==.
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
Fuart$__str_0$0_0$0 == .
___str_0:
	.ascii "Fuck you now!!!!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
