;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Id
	.globl _p3
	.globl _p2
	.globl _code_v
	.globl _main
	.globl _SysClearMemory
	.globl _SysCheckBIOS
	.globl _SysCopyBIOS
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
	.globl _SysClearMemory_PARM_2
	.globl _SysCheckBIOS_PARM_3
	.globl _SysCheckBIOS_PARM_2
	.globl _SysCopyBIOS_PARM_3
	.globl _SysCopyBIOS_PARM_2
	.globl _PORTA_8255
	.globl _chksum
	.globl _p5
	.globl _p4
	.globl _p1
	.globl _xdata_v
	.globl _pdata_v
	.globl _bvar
	.globl _idata_v
	.globl _fp
	.globl _p0
	.globl _data_v
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
G$data_v$0_0$0==.
_data_v::
	.ds 1
G$p0$0_0$0==.
_p0::
	.ds 2
G$fp$0_0$0==.
_fp::
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
G$idata_v$0_0$0==.
_idata_v::
	.ds 1
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
G$bvar$0_0$0 == 0x0002
_bvar	=	0x0002
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
G$pdata_v$0_0$0==.
_pdata_v::
	.ds 1
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
G$xdata_v$0_0$0==.
_xdata_v::
	.ds 1
G$p1$0_0$0==.
_p1::
	.ds 1
G$p4$0_0$0==.
_p4::
	.ds 3
G$p5$0_0$0==.
_p5::
	.ds 3
G$chksum$0_0$0 == 0x7ffe
_chksum	=	0x7ffe
G$PORTA_8255$0_0$0 == 0x8000
_PORTA_8255	=	0x8000
Lmain.SysCopyBIOS$dstAddr$1_0$2==.
_SysCopyBIOS_PARM_2:
	.ds 2
Lmain.SysCopyBIOS$size$1_0$2==.
_SysCopyBIOS_PARM_3:
	.ds 2
Lmain.SysCopyBIOS$srcAddr$1_0$2==.
_SysCopyBIOS_srcAddr_65536_2:
	.ds 2
Lmain.SysCheckBIOS$dstAddr$1_0$5==.
_SysCheckBIOS_PARM_2:
	.ds 2
Lmain.SysCheckBIOS$size$1_0$5==.
_SysCheckBIOS_PARM_3:
	.ds 2
Lmain.SysCheckBIOS$srcAddr$1_0$5==.
_SysCheckBIOS_srcAddr_65536_5:
	.ds 2
Lmain.SysClearMemory$size$1_0$8==.
_SysClearMemory_PARM_2:
	.ds 2
Lmain.SysClearMemory$address$1_0$8==.
_SysClearMemory_address_65536_8:
	.ds 2
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
;Allocation info for local variables in function 'SysCopyBIOS'
;------------------------------------------------------------
;dstAddr                   Allocated with name '_SysCopyBIOS_PARM_2'
;size                      Allocated with name '_SysCopyBIOS_PARM_3'
;srcAddr                   Allocated with name '_SysCopyBIOS_srcAddr_65536_2'
;src                       Allocated to registers 
;dst                       Allocated to registers 
;------------------------------------------------------------
	G$SysCopyBIOS$0$0 ==.
	C$main.c$47$0_0$3 ==.
;	main.c:47: void SysCopyBIOS(unsigned int srcAddr, unsigned int dstAddr, unsigned int size)
;	-----------------------------------------
;	 function SysCopyBIOS
;	-----------------------------------------
_SysCopyBIOS:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_SysCopyBIOS_srcAddr_65536_2
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$main.c$49$1_0$3 ==.
;	main.c:49: __code unsigned char * __data src = *((__code unsigned char * __data)srcAddr);
	mov	dptr,#_SysCopyBIOS_srcAddr_65536_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	r7,#0x00
	C$main.c$50$1_0$3 ==.
;	main.c:50: __xdata unsigned char *__data dst = *((__xdata unsigned char * __data)dstAddr);
	mov	dptr,#_SysCopyBIOS_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	C$main.c$51$1_0$3 ==.
;	main.c:51: while(size--)
	mov	dptr,#_SysCopyBIOS_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
00101$:
	mov	ar0,r2
	mov	ar1,r3
	dec	r2
	cjne	r2,#0xff,00115$
	dec	r3
00115$:
	mov	a,r0
	orl	a,r1
	jz	00104$
	C$main.c$53$2_0$4 ==.
;	main.c:53: *dst++ = *src++;
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
00104$:
	C$main.c$55$1_0$3 ==.
;	main.c:55: }
	C$main.c$55$1_0$3 ==.
	XG$SysCopyBIOS$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SysCheckBIOS'
;------------------------------------------------------------
;dstAddr                   Allocated with name '_SysCheckBIOS_PARM_2'
;size                      Allocated with name '_SysCheckBIOS_PARM_3'
;srcAddr                   Allocated with name '_SysCheckBIOS_srcAddr_65536_5'
;src                       Allocated to registers 
;dst                       Allocated to registers 
;------------------------------------------------------------
	G$SysCheckBIOS$0$0 ==.
	C$main.c$57$1_0$6 ==.
;	main.c:57: char SysCheckBIOS(unsigned int srcAddr, unsigned int dstAddr, unsigned int size)
;	-----------------------------------------
;	 function SysCheckBIOS
;	-----------------------------------------
_SysCheckBIOS:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_SysCheckBIOS_srcAddr_65536_5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$main.c$59$1_0$6 ==.
;	main.c:59: __code unsigned char * __data src = *((__code unsigned char * __data)srcAddr);
	mov	dptr,#_SysCheckBIOS_srcAddr_65536_5
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	r7,#0x00
	C$main.c$60$1_0$6 ==.
;	main.c:60: __xdata unsigned char *__data dst = *((__xdata unsigned char * __data)dstAddr);
	mov	dptr,#_SysCheckBIOS_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	C$main.c$61$1_0$6 ==.
;	main.c:61: while(size--)
	mov	dptr,#_SysCheckBIOS_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
00103$:
	mov	ar0,r2
	mov	ar1,r3
	dec	r2
	cjne	r2,#0xff,00120$
	dec	r3
00120$:
	mov	a,r0
	orl	a,r1
	jz	00105$
	C$main.c$63$2_0$7 ==.
;	main.c:63: if(*dst++ != *src++)
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	mov	a,r1
	cjne	a,ar0,00122$
	sjmp	00103$
00122$:
	C$main.c$64$2_0$7 ==.
;	main.c:64: return 0;
	mov	dpl,#0x00
	sjmp	00106$
00105$:
	C$main.c$66$1_0$6 ==.
;	main.c:66: return -1;
	mov	dpl,#0xff
00106$:
	C$main.c$67$1_0$6 ==.
;	main.c:67: }
	C$main.c$67$1_0$6 ==.
	XG$SysCheckBIOS$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SysClearMemory'
;------------------------------------------------------------
;size                      Allocated with name '_SysClearMemory_PARM_2'
;address                   Allocated with name '_SysClearMemory_address_65536_8'
;dst                       Allocated to registers 
;------------------------------------------------------------
	G$SysClearMemory$0$0 ==.
	C$main.c$69$1_0$9 ==.
;	main.c:69: void SysClearMemory(unsigned int address, unsigned int size)
;	-----------------------------------------
;	 function SysClearMemory
;	-----------------------------------------
_SysClearMemory:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_SysClearMemory_address_65536_8
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$main.c$71$1_0$9 ==.
;	main.c:71: __xdata unsigned char *__data dst = *((__xdata unsigned char * __data)address);
	mov	dptr,#_SysClearMemory_address_65536_8
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	C$main.c$72$1_0$9 ==.
;	main.c:72: while(size--)
	mov	dptr,#_SysClearMemory_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00101$:
	mov	ar2,r4
	mov	ar3,r5
	dec	r4
	cjne	r4,#0xff,00115$
	dec	r5
00115$:
	mov	a,r2
	orl	a,r3
	jz	00104$
	C$main.c$74$2_0$10 ==.
;	main.c:74: *dst++ = 0;
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	sjmp	00101$
00104$:
	C$main.c$76$1_0$9 ==.
;	main.c:76: }
	C$main.c$76$1_0$9 ==.
	XG$SysClearMemory$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated with name '_main_i_65536_11'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$79$1_0$11 ==.
;	main.c:79: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$83$1_0$11 ==.
;	main.c:83: data_v =  1;
	mov	_data_v,#0x01
	C$main.c$84$1_0$11 ==.
;	main.c:84: idata_v = 1;
	mov	r0,#_idata_v
	mov	@r0,#0x01
	C$main.c$85$1_0$11 ==.
;	main.c:85: pdata_v = 1;
	mov	r0,#_pdata_v
	mov	a,#0x01
	movx	@r0,a
	C$main.c$86$1_0$11 ==.
;	main.c:86: xdata_v = 1;
	mov	dptr,#_xdata_v
	movx	@dptr,a
	C$main.c$90$1_0$11 ==.
;	main.c:90: IOWRITE(0xfff3, 0x80);
	mov	dptr,#0xfff3
	rr	a
	movx	@dptr,a
	C$main.c$91$1_0$11 ==.
;	main.c:91: IOWRITE(0xfff0, 0xA5);
	mov	dptr,#0xfff0
	mov	a,#0xa5
	movx	@dptr,a
	C$main.c$92$1_0$11 ==.
;	main.c:92: IOWRITE(0xfff1, 0xA5);
	mov	dptr,#0xfff1
	movx	@dptr,a
	C$main.c$93$1_0$11 ==.
;	main.c:93: IOWRITE(0xfff2, 0xA5);
	mov	dptr,#0xfff2
	movx	@dptr,a
	C$main.c$95$1_0$11 ==.
;	main.c:95: i = IOREAD(0xfff0);
	mov	dptr,#0xfff0
	movx	a,@dptr
	C$main.c$97$1_0$11 ==.
;	main.c:97: PIO0WriteCtrl(0x80)  ;
	mov	dptr,#0xff03
	mov	a,#0x80
	movx	@dptr,a
	C$main.c$98$1_0$11 ==.
;	main.c:98: PIO0WritePortA(0x5A) ;
	mov	dptr,#0xff00
	mov	a,#0x5a
	movx	@dptr,a
	C$main.c$99$1_0$11 ==.
;	main.c:99: PIO0WritePortB(0x5A) ;
	mov	dptr,#0xff01
	movx	@dptr,a
	C$main.c$100$1_0$11 ==.
;	main.c:100: PIO0WritePortC(0x5A) ;
	mov	dptr,#0xff02
	movx	@dptr,a
	C$main.c$101$1_0$11 ==.
;	main.c:101: PIO1WriteCtrl(0x80)  ;
	mov	dptr,#0xff13
	mov	a,#0x80
	movx	@dptr,a
	C$main.c$102$1_0$11 ==.
;	main.c:102: PIO1WritePortA(0x5A) ;
	mov	dptr,#0xff10
	mov	a,#0x5a
	movx	@dptr,a
	C$main.c$103$1_0$11 ==.
;	main.c:103: PIO1WritePortB(0x5A) ;
	mov	dptr,#0xff11
	movx	@dptr,a
	C$main.c$104$1_0$11 ==.
;	main.c:104: PIO1WritePortC(0x5A) ;
	mov	dptr,#0xff12
	movx	@dptr,a
	C$main.c$106$1_0$11 ==.
;	main.c:106: SysCopyBIOS(0x0000, 0x0000, 0x4000);
	mov	dptr,#_SysCopyBIOS_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_SysCopyBIOS_PARM_3
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	r0,#_SysCopyBIOS
	mov	r1,#(_SysCopyBIOS >> 8)
	mov	r2,#(_SysCopyBIOS >> 16)
	lcall	__sdcc_banked_call
	C$main.c$107$1_0$11 ==.
;	main.c:107: SysCheckBIOS(0x0000, 0x0000, 0x4000);
	mov	dptr,#_SysCheckBIOS_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_SysCheckBIOS_PARM_3
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	r0,#_SysCheckBIOS
	mov	r1,#(_SysCheckBIOS >> 8)
	mov	r2,#(_SysCheckBIOS >> 16)
	lcall	__sdcc_banked_call
	C$main.c$108$1_0$11 ==.
;	main.c:108: SysClearMemory(0x0000, 0x4000);
	mov	dptr,#_SysClearMemory_PARM_2
	clr	a
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	r0,#_SysClearMemory
	mov	r1,#(_SysClearMemory >> 8)
	mov	r2,#(_SysClearMemory >> 16)
	lcall	__sdcc_banked_call
	C$main.c$109$1_0$11 ==.
;	main.c:109: }
	C$main.c$109$1_0$11 ==.
	XG$main$0$0 ==.
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$code_v$0_0$0 == .
_code_v:
	.db #0xff	; 255
G$p2$0_0$0 == .
_p2:
	.ds 2
G$p3$0_0$0 == .
_p3:
	.ds 2
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
	.org 0x7FF0
G$Id$0_0$0 == .
_Id:
	.db #0x53	; 83	'S'
	.db #0x44	; 68	'D'
	.db #0x43	; 67	'C'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
