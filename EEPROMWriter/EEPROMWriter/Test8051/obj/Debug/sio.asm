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
_sioTXBuf_sloc0_1_0:
	.ds 1
_sioRXStr_sloc0_1_0:
	.ds 1
_sioRXStr_sloc1_1_0:
	.ds 3
_sioRXBuf_sloc0_1_0:
	.ds 1
_sioRXBuf_sloc1_1_0:
	.ds 3
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
_sioTX_PARM_2:
	.ds 1
_sioTXStr_PARM_2:
	.ds 3
_sioTXStr_device_65536_22:
	.ds 1
_sioTXBuf_PARM_2:
	.ds 3
_sioTXBuf_PARM_3:
	.ds 2
_sioTXBuf_device_65536_25:
	.ds 1
_sioRX_d_65536_32:
	.ds 1
_sioRXStr_PARM_2:
	.ds 3
_sioRXStr_PARM_3:
	.ds 2
_sioRXStr_device_65536_33:
	.ds 1
_sioRXBuf_PARM_2:
	.ds 3
_sioRXBuf_PARM_3:
	.ds 2
_sioRXBuf_device_65536_37:
	.ds 1
_sioTest1_device_65536_40:
	.ds 1
_sioTest2_device_65536_43:
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
;	sio.c:9: SCON = 0x50;
	mov	_SCON,#0x50
;	sio.c:10: TMOD = (TMOD & T0_MASK) | 0x21;
	mov	r6,_TMOD
	anl	ar6,#0x0f
	mov	r7,#0x00
	orl	ar6,#0x21
	mov	_TMOD,r6
;	sio.c:11: PCON = 0x80;
	mov	_PCON,#0x80
;	sio.c:14: TH1 = 0xFA;
	mov	_TH1,#0xfa
;	sio.c:15: TL1 = 0xFA;
	mov	_TL1,#0xfa
;	sio.c:16: TR1 = 1;
;	assignBit
	setb	_TR1
;	sio.c:19: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioClose'
;------------------------------------------------------------
;device                    Allocated with name '_sioClose_device_65536_16'
;------------------------------------------------------------
;	sio.c:21: void sioClose(char device)
;	-----------------------------------------
;	 function sioClose
;	-----------------------------------------
_sioClose:
;	sio.c:25: SCON = 0x00;
	mov	_SCON,#0x00
;	sio.c:26: TMOD = (TMOD & T0_MASK);
	anl	_TMOD,#0x0f
;	sio.c:27: PCON &= ~SMOD;
	anl	_PCON,#0x7f
;	sio.c:28: TR1 = 0;
;	assignBit
	clr	_TR1
;	sio.c:29: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioWaitTXDone'
;------------------------------------------------------------
;device                    Allocated with name '_sioWaitTXDone_device_65536_18'
;------------------------------------------------------------
;	sio.c:31: void sioWaitTXDone(char device)
;	-----------------------------------------
;	 function sioWaitTXDone
;	-----------------------------------------
_sioWaitTXDone:
;	sio.c:35: while(!TI);
00101$:
	jnb	_TI,00101$
;	sio.c:36: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioTX'
;------------------------------------------------------------
;d                         Allocated with name '_sioTX_PARM_2'
;device                    Allocated with name '_sioTX_device_65536_20'
;------------------------------------------------------------
;	sio.c:38: void sioTX(char device, char d)
;	-----------------------------------------
;	 function sioTX
;	-----------------------------------------
_sioTX:
;	sio.c:42: TI = 0;
;	assignBit
	clr	_TI
;	sio.c:43: SBUF = d;
	mov	dptr,#_sioTX_PARM_2
	movx	a,@dptr
	mov	_SBUF,a
;	sio.c:44: while(!TI) /* assumes UART is initialized */ ;
00101$:
	jnb	_TI,00101$
;	sio.c:45: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioTXStr'
;------------------------------------------------------------
;s                         Allocated with name '_sioTXStr_PARM_2'
;device                    Allocated with name '_sioTXStr_device_65536_22'
;------------------------------------------------------------
;	sio.c:47: void sioTXStr(char device, const char* s)
;	-----------------------------------------
;	 function sioTXStr
;	-----------------------------------------
_sioTXStr:
	mov	a,dpl
	mov	dptr,#_sioTXStr_device_65536_22
	movx	@dptr,a
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
;	sio.c:55: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioTXBuf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_sioTXBuf_sloc0_1_0'
;buf                       Allocated with name '_sioTXBuf_PARM_2'
;size                      Allocated with name '_sioTXBuf_PARM_3'
;device                    Allocated with name '_sioTXBuf_device_65536_25'
;i                         Allocated with name '_sioTXBuf_i_65536_26'
;------------------------------------------------------------
;	sio.c:57: void sioTXBuf(char device, const char* buf, unsigned int size)
;	-----------------------------------------
;	 function sioTXBuf
;	-----------------------------------------
_sioTXBuf:
	mov	a,dpl
	mov	dptr,#_sioTXBuf_device_65536_25
	movx	@dptr,a
;	sio.c:61: for(i=0; i<size; i++)
	movx	a,@dptr
	mov	_sioTXBuf_sloc0_1_0,a
	mov	dptr,#_sioTXBuf_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_sioTXBuf_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r0,#0x00
	mov	r1,#0x00
00103$:
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r3
	jnc	00105$
;	sio.c:63: sioTX(device, buf[i]);
	push	ar2
	push	ar3
	mov	a,r0
	add	a,r4
	mov	r2,a
	mov	a,r1
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_sioTX_PARM_2
	movx	@dptr,a
	mov	dpl,_sioTXBuf_sloc0_1_0
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	mov	r0,#_sioTX
	mov	r1,#(_sioTX >> 8)
	mov	r2,#(_sioTX >> 16)
	lcall	__sdcc_banked_call
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	sio.c:61: for(i=0; i<size; i++)
	inc	r0
	cjne	r0,#0x00,00117$
	inc	r1
00117$:
	pop	ar3
	pop	ar2
	sjmp	00103$
00105$:
;	sio.c:65: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioWaitRXDone'
;------------------------------------------------------------
;device                    Allocated with name '_sioWaitRXDone_device_65536_29'
;------------------------------------------------------------
;	sio.c:67: void sioWaitRXDone(char device)
;	-----------------------------------------
;	 function sioWaitRXDone
;	-----------------------------------------
_sioWaitRXDone:
;	sio.c:71: while(!RI);
00101$:
	jnb	_RI,00101$
;	sio.c:72: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioRX'
;------------------------------------------------------------
;device                    Allocated with name '_sioRX_device_65536_31'
;d                         Allocated with name '_sioRX_d_65536_32'
;------------------------------------------------------------
;	sio.c:74: char sioRX(char device)
;	-----------------------------------------
;	 function sioRX
;	-----------------------------------------
_sioRX:
;	sio.c:80: while(!RI) /* assumes UART is initialized */ ;
00101$:
	jnb	_RI,00101$
;	sio.c:81: d = SBUF;
	mov	dptr,#_sioRX_d_65536_32
	mov	a,_SBUF
	movx	@dptr,a
;	sio.c:82: RI = 0;
;	assignBit
	clr	_RI
;	sio.c:84: return d;
	mov	dptr,#_sioRX_d_65536_32
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
;	sio.c:85: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioRXStr'
;------------------------------------------------------------
;sloc0                     Allocated with name '_sioRXStr_sloc0_1_0'
;sloc1                     Allocated with name '_sioRXStr_sloc1_1_0'
;s                         Allocated with name '_sioRXStr_PARM_2'
;size                      Allocated with name '_sioRXStr_PARM_3'
;device                    Allocated with name '_sioRXStr_device_65536_33'
;i                         Allocated with name '_sioRXStr_i_65536_34'
;------------------------------------------------------------
;	sio.c:87: void sioRXStr(char device, char* s, unsigned int size)
;	-----------------------------------------
;	 function sioRXStr
;	-----------------------------------------
_sioRXStr:
	mov	a,dpl
	mov	dptr,#_sioRXStr_device_65536_33
	movx	@dptr,a
;	sio.c:91: for(i=0; i<size; i++)
	mov	dptr,#_sioRXStr_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_sioRXStr_device_65536_33
	movx	a,@dptr
	mov	_sioRXStr_sloc0_1_0,a
	mov	dptr,#_sioRXStr_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r0,#0x00
	mov	r1,#0x00
00105$:
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r3
	jnc	00107$
;	sio.c:93: if((s[i] = sioRX(device))==0)
	push	ar2
	push	ar3
	mov	a,r0
	add	a,r5
	mov	_sioRXStr_sloc1_1_0,a
	mov	a,r1
	addc	a,r6
	mov	(_sioRXStr_sloc1_1_0 + 1),a
	mov	(_sioRXStr_sloc1_1_0 + 2),r7
	mov	dpl,_sioRXStr_sloc0_1_0
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	mov	r0,#_sioRX
	mov	r1,#(_sioRX >> 8)
	mov	r2,#(_sioRX >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,_sioRXStr_sloc1_1_0
	mov	dph,(_sioRXStr_sloc1_1_0 + 1)
	mov	b,(_sioRXStr_sloc1_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	pop	ar3
	pop	ar2
	mov	a,r4
	jz	00107$
;	sio.c:91: for(i=0; i<size; i++)
	inc	r0
	cjne	r0,#0x00,00105$
	inc	r1
	sjmp	00105$
00107$:
;	sio.c:96: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioRXBuf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_sioRXBuf_sloc0_1_0'
;sloc1                     Allocated with name '_sioRXBuf_sloc1_1_0'
;buf                       Allocated with name '_sioRXBuf_PARM_2'
;size                      Allocated with name '_sioRXBuf_PARM_3'
;device                    Allocated with name '_sioRXBuf_device_65536_37'
;i                         Allocated with name '_sioRXBuf_i_65536_38'
;------------------------------------------------------------
;	sio.c:98: void sioRXBuf(char device, char* buf, unsigned int size)
;	-----------------------------------------
;	 function sioRXBuf
;	-----------------------------------------
_sioRXBuf:
	mov	a,dpl
	mov	dptr,#_sioRXBuf_device_65536_37
	movx	@dptr,a
;	sio.c:102: for(i=0; i<size; i++)
	mov	dptr,#_sioRXBuf_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_sioRXBuf_device_65536_37
	movx	a,@dptr
	mov	_sioRXBuf_sloc0_1_0,a
	mov	dptr,#_sioRXBuf_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r0,#0x00
	mov	r1,#0x00
00103$:
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r3
	jnc	00105$
;	sio.c:103: buf[i] = sioRX(device);
	push	ar2
	push	ar3
	mov	a,r0
	add	a,r5
	mov	_sioRXBuf_sloc1_1_0,a
	mov	a,r1
	addc	a,r6
	mov	(_sioRXBuf_sloc1_1_0 + 1),a
	mov	(_sioRXBuf_sloc1_1_0 + 2),r7
	mov	dpl,_sioRXBuf_sloc0_1_0
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	mov	r0,#_sioRX
	mov	r1,#(_sioRX >> 8)
	mov	r2,#(_sioRX >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,_sioRXBuf_sloc1_1_0
	mov	dph,(_sioRXBuf_sloc1_1_0 + 1)
	mov	b,(_sioRXBuf_sloc1_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
;	sio.c:102: for(i=0; i<size; i++)
	inc	r0
	cjne	r0,#0x00,00117$
	inc	r1
00117$:
	pop	ar3
	pop	ar2
	sjmp	00103$
00105$:
;	sio.c:104: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sioTest1'
;------------------------------------------------------------
;device                    Allocated with name '_sioTest1_device_65536_40'
;------------------------------------------------------------
;	sio.c:106: void sioTest1(char device)
;	-----------------------------------------
;	 function sioTest1
;	-----------------------------------------
_sioTest1:
	mov	a,dpl
	mov	dptr,#_sioTest1_device_65536_40
	movx	@dptr,a
;	sio.c:108: sioInit(device);
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	mov	r0,#_sioInit
	mov	r1,#(_sioInit >> 8)
	mov	r2,#(_sioInit >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
;	sio.c:109: while(1)
00102$:
;	sio.c:111: sioTX(device, sioRX(device));
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
;	sio.c:113: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'sioTest2'
;------------------------------------------------------------
;device                    Allocated with name '_sioTest2_device_65536_43'
;------------------------------------------------------------
;	sio.c:125: void sioTest2(char device)
;	-----------------------------------------
;	 function sioTest2
;	-----------------------------------------
_sioTest2:
	mov	a,dpl
	mov	dptr,#_sioTest2_device_65536_43
	movx	@dptr,a
;	sio.c:127: sioInit(device);
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	mov	r0,#_sioInit
	mov	r1,#(_sioInit >> 8)
	mov	r2,#(_sioInit >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
;	sio.c:128: while(1)
00102$:
;	sio.c:130: sioTXStr(device, "Fuck you now!!!!\r\n");
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
;	sio.c:131: sioTXBuf(device, data, 26*2);
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
;	sio.c:133: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'sioTest3'
;------------------------------------------------------------
;device                    Allocated with name '_sioTest3_device_65536_46'
;------------------------------------------------------------
;	sio.c:135: void sioTest3(char device)
;	-----------------------------------------
;	 function sioTest3
;	-----------------------------------------
_sioTest3:
;	sio.c:137: device;
;	sio.c:138: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
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
___str_0:
	.ascii "Fuck you now!!!!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
