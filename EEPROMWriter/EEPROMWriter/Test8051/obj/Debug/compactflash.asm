;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW32)
;--------------------------------------------------------
	.module compactflash
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sioTXBuf
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
	.globl _cfReadSector_PARM_4
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
_cfReadSector_sloc0_1_0:
	.ds 2
_cfReadSector_sloc1_1_0:
	.ds 4
_cfReadSector_sloc2_1_0:
	.ds 2
_cfReadSector_sloc3_1_0:
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
_cfInit_device_65536_20:
	.ds 1
_cfWaitIdle_device_65536_22:
	.ds 1
_cfWaitCommandReady_device_65536_25:
	.ds 1
_cfWaitDataReady_device_65536_28:
	.ds 1
_cfReadSector_PARM_2:
	.ds 3
_cfReadSector_PARM_3:
	.ds 4
_cfReadSector_PARM_4:
	.ds 2
_cfReadSector_device_65536_31:
	.ds 1
_cfTest_PARM_2:
	.ds 3
_cfTest_device_65536_37:
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
;device                    Allocated with name '_cfInit_device_65536_20'
;------------------------------------------------------------
;	compactflash.c:4: void cfInit(char device)
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
	mov	dptr,#_cfInit_device_65536_20
	movx	@dptr,a
;	compactflash.c:6: cfWriteFeatures(device, 0x01); //  set 8 bit mode to features port
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
;	compactflash.c:8: cfWriteCommand(device, 0xef);  // command 'set features'
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
;	compactflash.c:9: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cfWaitIdle'
;------------------------------------------------------------
;device                    Allocated with name '_cfWaitIdle_device_65536_22'
;status                    Allocated with name '_cfWaitIdle_status_65536_23'
;------------------------------------------------------------
;	compactflash.c:11: void cfWaitIdle(char device)
;	-----------------------------------------
;	 function cfWaitIdle
;	-----------------------------------------
_cfWaitIdle:
	mov	a,dpl
	mov	dptr,#_cfWaitIdle_device_65536_22
	movx	@dptr,a
;	compactflash.c:14: do
	movx	a,@dptr
	mov	r7,a
00101$:
;	compactflash.c:16: status = cfReadStatus(device);
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
;	compactflash.c:18: while((status & 0x80)!=0);
	mov	r6,a
	jb	acc.7,00101$
;	compactflash.c:19: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cfWaitCommandReady'
;------------------------------------------------------------
;device                    Allocated with name '_cfWaitCommandReady_device_65536_25'
;status                    Allocated with name '_cfWaitCommandReady_status_65536_26'
;------------------------------------------------------------
;	compactflash.c:21: void cfWaitCommandReady(char device)
;	-----------------------------------------
;	 function cfWaitCommandReady
;	-----------------------------------------
_cfWaitCommandReady:
	mov	a,dpl
	mov	dptr,#_cfWaitCommandReady_device_65536_25
	movx	@dptr,a
;	compactflash.c:25: do
	movx	a,@dptr
	mov	r7,a
00101$:
;	compactflash.c:27: status = cfReadStatus(device);
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
;	compactflash.c:29: while((status & 0xc0)!=0x40);
	anl	ar6,#0xc0
	mov	r5,#0x00
	cjne	r6,#0x40,00101$
	cjne	r5,#0x00,00101$
;	compactflash.c:30: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cfWaitDataReady'
;------------------------------------------------------------
;device                    Allocated with name '_cfWaitDataReady_device_65536_28'
;status                    Allocated with name '_cfWaitDataReady_status_65536_29'
;------------------------------------------------------------
;	compactflash.c:32: void cfWaitDataReady(char device)
;	-----------------------------------------
;	 function cfWaitDataReady
;	-----------------------------------------
_cfWaitDataReady:
	mov	a,dpl
	mov	dptr,#_cfWaitDataReady_device_65536_28
	movx	@dptr,a
;	compactflash.c:35: do
	movx	a,@dptr
	mov	r7,a
00101$:
;	compactflash.c:37: status = cfReadStatus(device);
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
;	compactflash.c:39: while((status & 0x88)!=0x08);
	anl	ar6,#0x88
	mov	r5,#0x00
	cjne	r6,#0x08,00101$
	cjne	r5,#0x00,00101$
;	compactflash.c:40: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cfReadSector'
;------------------------------------------------------------
;sloc0                     Allocated with name '_cfReadSector_sloc0_1_0'
;sloc1                     Allocated with name '_cfReadSector_sloc1_1_0'
;sloc2                     Allocated with name '_cfReadSector_sloc2_1_0'
;sloc3                     Allocated with name '_cfReadSector_sloc3_1_0'
;buf                       Allocated with name '_cfReadSector_PARM_2'
;LBA                       Allocated with name '_cfReadSector_PARM_3'
;sectorCount               Allocated with name '_cfReadSector_PARM_4'
;device                    Allocated with name '_cfReadSector_device_65536_31'
;status                    Allocated with name '_cfReadSector_status_65536_32'
;i                         Allocated with name '_cfReadSector_i_65536_32'
;idx                       Allocated with name '_cfReadSector_idx_65536_32'
;------------------------------------------------------------
;	compactflash.c:42: void cfReadSector(char device, char* buf, unsigned long LBA, unsigned int sectorCount)
;	-----------------------------------------
;	 function cfReadSector
;	-----------------------------------------
_cfReadSector:
	mov	a,dpl
	mov	dptr,#_cfReadSector_device_65536_31
	movx	@dptr,a
;	compactflash.c:51: P1 = 0xe1;
	mov	_P1,#0xe1
;	compactflash.c:52: cfWaitIdle(device);
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	mov	r0,#_cfWaitIdle
	mov	r1,#(_cfWaitIdle >> 8)
	mov	r2,#(_cfWaitIdle >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
;	compactflash.c:55: P1 = 0xe2;
	mov	_P1,#0xe2
;	compactflash.c:56: cfWriteSectorCount(device, 0x01);
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
;	compactflash.c:59: P1 = 0xe3;
	mov	_P1,#0xe3
;	compactflash.c:60: cfWaitIdle(device);
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
;	compactflash.c:63: P1 = 0xe4;
	mov	_P1,#0xe4
;	compactflash.c:64: cfWriteLBA0(device, ((LBA    ) & 0xff) );
	mov	a,#0x23
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r6
	mov	r4,a
	mov	_cfReadSector_sloc0_1_0,r3
	mov	(_cfReadSector_sloc0_1_0 + 1),r4
	mov	dptr,#_cfReadSector_PARM_3
	movx	a,@dptr
	mov	_cfReadSector_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_cfReadSector_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_cfReadSector_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_cfReadSector_sloc1_1_0 + 3),a
	mov	r3,_cfReadSector_sloc1_1_0
	mov	dpl,_cfReadSector_sloc0_1_0
	mov	dph,(_cfReadSector_sloc0_1_0 + 1)
	mov	a,r3
	movx	@dptr,a
;	compactflash.c:67: P1 = 0xe5;
	mov	_P1,#0xe5
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
;	compactflash.c:71: P1 = 0xe6;
	mov	_P1,#0xe6
;	compactflash.c:72: cfWriteLBA1(device, ((LBA>>8 ) & 0xff) );
	mov	a,#0x24
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r6
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	a,(_cfReadSector_sloc1_1_0 + 1)
	movx	@dptr,a
;	compactflash.c:75: P1 = 0xe7;
	mov	_P1,#0xe7
;	compactflash.c:76: cfWaitIdle(device);
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
;	compactflash.c:79: P1 = 0xe8;
	mov	_P1,#0xe8
;	compactflash.c:80: cfWriteLBA2(device, ((LBA>>16) & 0xff) );
	mov	a,#0x25
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r6
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	a,(_cfReadSector_sloc1_1_0 + 2)
	movx	@dptr,a
;	compactflash.c:83: P1 = 0xe9;
	mov	_P1,#0xe9
;	compactflash.c:84: cfWaitIdle(device);
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
;	compactflash.c:87: P1 = 0xea;
	mov	_P1,#0xea
;	compactflash.c:88: cfWriteLBA3(device, (0xe0 | 0x00 | ((LBA>>24) & 0x0f)) );
	mov	a,#0x26
	add	a,r5
	mov	r5,a
	mov	a,#0xff
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	r6,(_cfReadSector_sloc1_1_0 + 3)
	anl	ar6,#0x0f
	mov	r5,#0x00
	orl	ar6,#0xe0
	mov	a,r6
	movx	@dptr,a
;	compactflash.c:91: while(sectorCount--)
	mov	ar6,r7
	mov	dptr,#_cfReadSector_PARM_2
	movx	a,@dptr
	mov	_cfReadSector_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_cfReadSector_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_cfReadSector_sloc3_1_0 + 2),a
	clr	a
	mov	_cfReadSector_sloc0_1_0,a
	mov	(_cfReadSector_sloc0_1_0 + 1),a
	mov	dptr,#_cfReadSector_PARM_4
	movx	a,@dptr
	mov	_cfReadSector_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_cfReadSector_sloc1_1_0 + 1),a
00105$:
	mov	r0,_cfReadSector_sloc1_1_0
	mov	r2,(_cfReadSector_sloc1_1_0 + 1)
	dec	_cfReadSector_sloc1_1_0
	mov	a,#0xff
	cjne	a,_cfReadSector_sloc1_1_0,00134$
	dec	(_cfReadSector_sloc1_1_0 + 1)
00134$:
	mov	a,r0
	orl	a,r2
	jnz	00135$
	ljmp	00107$
00135$:
;	compactflash.c:93: do
00101$:
;	compactflash.c:95: P1 = 0xeb;
	mov	_P1,#0xeb
;	compactflash.c:96: cfWaitCommandReady(device);
	mov	dpl,r6
	push	ar7
	push	ar6
	mov	r0,#_cfWaitCommandReady
	mov	r1,#(_cfWaitCommandReady >> 8)
	mov	r2,#(_cfWaitCommandReady >> 16)
	lcall	__sdcc_banked_call
	pop	ar6
	pop	ar7
;	compactflash.c:98: P1 = 0xec;
	mov	_P1,#0xec
;	compactflash.c:99: cfWriteCommand(device, 0x20);
	mov	ar1,r6
	clr	a
	xch	a,r1
	swap	a
	xch	a,r1
	xrl	a,r1
	xch	a,r1
	anl	a,#0xf0
	xch	a,r1
	xrl	a,r1
	mov	r2,a
	mov	a,#0x27
	add	a,r1
	mov	r1,a
	mov	a,#0xff
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	a,#0x20
	movx	@dptr,a
;	compactflash.c:101: P1 = 0xed;
	mov	_P1,#0xed
;	compactflash.c:104: P1 = 0xee;
	mov	_P1,#0xee
;	compactflash.c:105: status = cfReadStatus(device);
	mov	dpl,r1
	mov	dph,r2
	movx	a,@dptr
;	compactflash.c:107: P1 = 0xef;
;	compactflash.c:109: while((status & 0x01)!=0);
	mov	_P1,#0xef
	jb	acc.0,00101$
;	compactflash.c:111: for(i=0; i<SECTOR_SIZE; i++)
	mov	r1,_cfReadSector_sloc0_1_0
	mov	r2,(_cfReadSector_sloc0_1_0 + 1)
	clr	a
	mov	_cfReadSector_sloc2_1_0,a
	mov	(_cfReadSector_sloc2_1_0 + 1),a
00108$:
;	compactflash.c:113: P1 = 0xf0;
	push	ar6
	mov	_P1,#0xf0
;	compactflash.c:114: cfWaitDataReady(device);
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar2
	push	ar1
	mov	r0,#_cfWaitDataReady
	mov	r1,#(_cfWaitDataReady >> 8)
	mov	r2,#(_cfWaitDataReady >> 16)
	lcall	__sdcc_banked_call
	pop	ar1
	pop	ar2
	pop	ar6
	pop	ar7
;	compactflash.c:116: P1 = 0xf1;
	mov	_P1,#0xf1
;	compactflash.c:117: buf[i+idx] = cfReadData(device);
	mov	a,r1
	add	a,_cfReadSector_sloc2_1_0
	mov	r0,a
	mov	a,r2
	addc	a,(_cfReadSector_sloc2_1_0 + 1)
	mov	r6,a
	mov	a,r0
	add	a,_cfReadSector_sloc3_1_0
	mov	r0,a
	mov	a,r6
	addc	a,(_cfReadSector_sloc3_1_0 + 1)
	mov	r5,a
	mov	r6,(_cfReadSector_sloc3_1_0 + 2)
	mov	ar3,r7
	clr	a
	xch	a,r3
	swap	a
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	anl	a,#0xf0
	xch	a,r3
	xrl	a,r3
	mov	r4,a
	mov	a,#0x20
	add	a,r3
	mov	r3,a
	mov	a,#0xff
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r0
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	compactflash.c:119: P1 = 0xf2;
	mov	_P1,#0xf2
;	compactflash.c:111: for(i=0; i<SECTOR_SIZE; i++)
	inc	_cfReadSector_sloc2_1_0
	clr	a
	cjne	a,_cfReadSector_sloc2_1_0,00137$
	inc	(_cfReadSector_sloc2_1_0 + 1)
00137$:
	clr	c
	mov	a,(_cfReadSector_sloc2_1_0 + 1)
	subb	a,#0x02
	pop	ar6
	jc	00108$
;	compactflash.c:121: idx += SECTOR_SIZE;
	mov	_cfReadSector_sloc0_1_0,r1
	mov	a,#0x02
	add	a,r2
	mov	(_cfReadSector_sloc0_1_0 + 1),a
	ljmp	00105$
00107$:
;	compactflash.c:124: P1 = 0xf3;
	mov	_P1,#0xf3
;	compactflash.c:125: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cfTest'
;------------------------------------------------------------
;buf                       Allocated with name '_cfTest_PARM_2'
;device                    Allocated with name '_cfTest_device_65536_37'
;------------------------------------------------------------
;	compactflash.c:129: void cfTest(char device, char* buf)
;	-----------------------------------------
;	 function cfTest
;	-----------------------------------------
_cfTest:
	mov	a,dpl
	mov	dptr,#_cfTest_device_65536_37
	movx	@dptr,a
;	compactflash.c:135: cfInit(device);
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	mov	r0,#_cfInit
	mov	r1,#(_cfInit >> 8)
	mov	r2,#(_cfInit >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
;	compactflash.c:138: cfReadSector(device, buf, 0, 1);
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
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_cfReadSector_PARM_4
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	mov	r0,#_cfReadSector
	mov	r1,#(_cfReadSector >> 8)
	mov	r2,#(_cfReadSector >> 16)
	lcall	__sdcc_banked_call
;	compactflash.c:139: sioTXBuf(0, buf, 512);
	mov	dptr,#_cfTest_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_sioTXBuf_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sioTXBuf_PARM_3
	clr	a
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	mov	r0,#_sioTXBuf
	mov	r1,#(_sioTXBuf >> 8)
	mov	r2,#(_sioTXBuf >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
;	compactflash.c:143: cfReadSector(device, buf, 1, 1);
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
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_cfReadSector_PARM_4
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	r0,#_cfReadSector
	mov	r1,#(_cfReadSector >> 8)
	mov	r2,#(_cfReadSector >> 16)
	lcall	__sdcc_banked_call
;	compactflash.c:144: sioTXBuf(0, buf, 512);
	mov	dptr,#_cfTest_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_sioTXBuf_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sioTXBuf_PARM_3
	clr	a
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	mov	r0,#_sioTXBuf
	mov	r1,#(_sioTXBuf >> 8)
	mov	r2,#(_sioTXBuf >> 16)
	lcall	__sdcc_banked_call
;	compactflash.c:146: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
