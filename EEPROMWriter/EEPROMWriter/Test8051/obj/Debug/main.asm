;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _data
	.globl _main
	.globl _cf0Test
	.globl _uart0Test3
	.globl _uart0Test2
	.globl _uart0Test1
	.globl _uart0RXBuf
	.globl _uart0RXStr
	.globl _uart0RX
	.globl _uart0WaitRXDone
	.globl _uart0TXBuf
	.globl _uart0TXStr
	.globl _uart0TX
	.globl _uart0WaitTXDone
	.globl _uart0Close
	.globl _uart0Init
	.globl _pio1Test
	.globl _pio0Test
	.globl _ledTest
	.globl _delay_ms
	.globl _delay_us
	.globl _cf0ReadSector
	.globl _cf0WaitDataReady
	.globl _cf0WaitCommandReady
	.globl _cf0WaitIdle
	.globl _cf0Init
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
	.globl _buf
	.globl _uart0RXBuf_PARM_2
	.globl _uart0RXStr_PARM_2
	.globl _uart0TXBuf_PARM_2
	.globl _cf0ReadSector_PARM_2
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
Lmain.cf0ReadSector$i$1_0$9==.
_cf0ReadSector_i_65536_9:
	.ds 2
Lmain.uart0TXBuf$i$1_0$35==.
_uart0TXBuf_i_65536_35:
	.ds 2
Lmain.uart0RXStr$i$1_0$40==.
_uart0RXStr_i_65536_40:
	.ds 2
Lmain.uart0RXStr$sloc0$0_1$0==.
_uart0RXStr_sloc0_1_0:
	.ds 3
Lmain.uart0RXBuf$i$1_0$43==.
_uart0RXBuf_i_65536_43:
	.ds 2
Lmain.main$dst$2_0$53==.
_main_dst_131072_53:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
Lmain.cf0ReadSector$sectorCount$1_0$8==.
_cf0ReadSector_PARM_2:
	.ds 2
Lmain.cf0ReadSector$buf$1_0$8==.
_cf0ReadSector_buf_65536_8:
	.ds 3
Lmain.uart0TX$d$1_0$29==.
_uart0TX_d_65536_29:
	.ds 1
Lmain.uart0TXStr$s$1_0$31==.
_uart0TXStr_s_65536_31:
	.ds 3
Lmain.uart0TXBuf$size$1_0$34==.
_uart0TXBuf_PARM_2:
	.ds 2
Lmain.uart0TXBuf$buf$1_0$34==.
_uart0TXBuf_buf_65536_34:
	.ds 3
Lmain.uart0RXStr$size$1_0$39==.
_uart0RXStr_PARM_2:
	.ds 2
Lmain.uart0RXStr$s$1_0$39==.
_uart0RXStr_s_65536_39:
	.ds 3
Lmain.uart0RXBuf$size$1_0$42==.
_uart0RXBuf_PARM_2:
	.ds 2
Lmain.uart0RXBuf$buf$1_0$42==.
_uart0RXBuf_buf_65536_42:
	.ds 3
G$buf$0_0$0==.
_buf::
	.ds 512
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
;Allocation info for local variables in function 'cf0Init'
;------------------------------------------------------------
	G$cf0Init$0$0 ==.
	C$main.c$174$0_0$1 ==.
;	main.c:174: void cf0Init()
;	-----------------------------------------
;	 function cf0Init
;	-----------------------------------------
_cf0Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$main.c$176$1_0$1 ==.
;	main.c:176: cf0WriteFeatures(0x01); //  set 8 bit mode to features port
	mov	dptr,#0xff21
	mov	a,#0x01
	movx	@dptr,a
	C$main.c$178$1_0$1 ==.
;	main.c:178: cf0WriteCommand(0xef);  // command 'set features'
	mov	dptr,#0xff27
	mov	a,#0xef
	movx	@dptr,a
	C$main.c$179$1_0$1 ==.
;	main.c:179: }
	C$main.c$179$1_0$1 ==.
	XG$cf0Init$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cf0WaitIdle'
;------------------------------------------------------------
;status                    Allocated to registers r7 
;------------------------------------------------------------
	G$cf0WaitIdle$0$0 ==.
	C$main.c$181$1_0$2 ==.
;	main.c:181: void cf0WaitIdle()
;	-----------------------------------------
;	 function cf0WaitIdle
;	-----------------------------------------
_cf0WaitIdle:
	C$main.c$184$1_0$2 ==.
;	main.c:184: do
00101$:
	C$main.c$186$2_0$3 ==.
;	main.c:186: status = cf0ReadStatus();
	mov	dptr,#0xff27
	movx	a,@dptr
	C$main.c$187$1_0$2 ==.
;	main.c:187: }while((status & 0x80)!=0);
	mov	r7,a
	jb	acc.7,00101$
	C$main.c$188$1_0$2 ==.
;	main.c:188: }
	C$main.c$188$1_0$2 ==.
	XG$cf0WaitIdle$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cf0WaitCommandReady'
;------------------------------------------------------------
;status                    Allocated to registers r7 
;------------------------------------------------------------
	G$cf0WaitCommandReady$0$0 ==.
	C$main.c$190$1_0$4 ==.
;	main.c:190: void cf0WaitCommandReady()
;	-----------------------------------------
;	 function cf0WaitCommandReady
;	-----------------------------------------
_cf0WaitCommandReady:
	C$main.c$193$1_0$4 ==.
;	main.c:193: do
00101$:
	C$main.c$195$2_0$5 ==.
;	main.c:195: status = cf0ReadStatus();
	mov	dptr,#0xff27
	movx	a,@dptr
	mov	r7,a
	C$main.c$196$1_0$4 ==.
;	main.c:196: }while((status & 0xc0)!=0x40);
	anl	ar7,#0xc0
	mov	r6,#0x00
	cjne	r7,#0x40,00101$
	cjne	r6,#0x00,00101$
	C$main.c$197$1_0$4 ==.
;	main.c:197: }
	C$main.c$197$1_0$4 ==.
	XG$cf0WaitCommandReady$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cf0WaitDataReady'
;------------------------------------------------------------
;status                    Allocated to registers r7 
;------------------------------------------------------------
	G$cf0WaitDataReady$0$0 ==.
	C$main.c$199$1_0$6 ==.
;	main.c:199: void cf0WaitDataReady()
;	-----------------------------------------
;	 function cf0WaitDataReady
;	-----------------------------------------
_cf0WaitDataReady:
	C$main.c$202$1_0$6 ==.
;	main.c:202: do
00101$:
	C$main.c$204$2_0$7 ==.
;	main.c:204: status = cf0ReadStatus();
	mov	dptr,#0xff27
	movx	a,@dptr
	mov	r7,a
	C$main.c$205$1_0$6 ==.
;	main.c:205: }while((status & 0x88)!=0x08);
	anl	ar7,#0x88
	mov	r6,#0x00
	cjne	r7,#0x08,00101$
	cjne	r6,#0x00,00101$
	C$main.c$206$1_0$6 ==.
;	main.c:206: }
	C$main.c$206$1_0$6 ==.
	XG$cf0WaitDataReady$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cf0ReadSector'
;------------------------------------------------------------
;status                    Allocated to registers r7 
;i                         Allocated with name '_cf0ReadSector_i_65536_9'
;idx                       Allocated to registers 
;sectorCount               Allocated with name '_cf0ReadSector_PARM_2'
;buf                       Allocated with name '_cf0ReadSector_buf_65536_8'
;------------------------------------------------------------
	G$cf0ReadSector$0$0 ==.
	C$main.c$209$1_0$9 ==.
;	main.c:209: void cf0ReadSector(char* buf, unsigned int sectorCount)
;	-----------------------------------------
;	 function cf0ReadSector
;	-----------------------------------------
_cf0ReadSector:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_cf0ReadSector_buf_65536_8
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$main.c$215$1_0$9 ==.
;	main.c:215: P1 = 0xe1;
	mov	_P1,#0xe1
	C$main.c$216$1_0$9 ==.
;	main.c:216: cf0WaitIdle();
	mov	r0,#_cf0WaitIdle
	mov	r1,#(_cf0WaitIdle >> 8)
	mov	r2,#(_cf0WaitIdle >> 16)
	lcall	__sdcc_banked_call
	C$main.c$218$1_0$9 ==.
;	main.c:218: P1 = 0xe2;
	mov	_P1,#0xe2
	C$main.c$219$1_0$9 ==.
;	main.c:219: cf0WriteSectorCount(0x01);
	mov	dptr,#0xff22
	mov	a,#0x01
	movx	@dptr,a
	C$main.c$221$1_0$9 ==.
;	main.c:221: P1 = 0xe3;
	mov	_P1,#0xe3
	C$main.c$222$1_0$9 ==.
;	main.c:222: cf0WaitIdle();
	mov	r0,#_cf0WaitIdle
	mov	r1,#(_cf0WaitIdle >> 8)
	mov	r2,#(_cf0WaitIdle >> 16)
	lcall	__sdcc_banked_call
	C$main.c$224$1_0$9 ==.
;	main.c:224: P1 = 0xe4;
	mov	_P1,#0xe4
	C$main.c$225$1_0$9 ==.
;	main.c:225: cf0WriteLBA0(0x00);
	mov	dptr,#0xff23
	clr	a
	movx	@dptr,a
	C$main.c$227$1_0$9 ==.
;	main.c:227: P1 = 0xe5;
	mov	_P1,#0xe5
	C$main.c$228$1_0$9 ==.
;	main.c:228: cf0WaitIdle();
	mov	r0,#_cf0WaitIdle
	mov	r1,#(_cf0WaitIdle >> 8)
	mov	r2,#(_cf0WaitIdle >> 16)
	lcall	__sdcc_banked_call
	C$main.c$230$1_0$9 ==.
;	main.c:230: P1 = 0xe6;
	mov	_P1,#0xe6
	C$main.c$231$1_0$9 ==.
;	main.c:231: cf0WriteLBA1(0x00);
	mov	dptr,#0xff24
	clr	a
	movx	@dptr,a
	C$main.c$233$1_0$9 ==.
;	main.c:233: P1 = 0xe7;
	mov	_P1,#0xe7
	C$main.c$234$1_0$9 ==.
;	main.c:234: cf0WaitIdle();
	mov	r0,#_cf0WaitIdle
	mov	r1,#(_cf0WaitIdle >> 8)
	mov	r2,#(_cf0WaitIdle >> 16)
	lcall	__sdcc_banked_call
	C$main.c$236$1_0$9 ==.
;	main.c:236: P1 = 0xe8;
	mov	_P1,#0xe8
	C$main.c$237$1_0$9 ==.
;	main.c:237: cf0WriteLBA2(0x00);
	mov	dptr,#0xff25
	clr	a
	movx	@dptr,a
	C$main.c$239$1_0$9 ==.
;	main.c:239: P1 = 0xe9;
	mov	_P1,#0xe9
	C$main.c$240$1_0$9 ==.
;	main.c:240: cf0WaitIdle();
	mov	r0,#_cf0WaitIdle
	mov	r1,#(_cf0WaitIdle >> 8)
	mov	r2,#(_cf0WaitIdle >> 16)
	lcall	__sdcc_banked_call
	C$main.c$242$1_0$9 ==.
;	main.c:242: P1 = 0xea;
	mov	_P1,#0xea
	C$main.c$243$1_0$9 ==.
;	main.c:243: cf0WriteLBA3(0xe0);
	mov	dptr,#0xff26
	mov	a,#0xe0
	movx	@dptr,a
	C$main.c$245$1_0$9 ==.
;	main.c:245: do
00101$:
	C$main.c$247$2_0$10 ==.
;	main.c:247: P1 = 0xeb;
	mov	_P1,#0xeb
	C$main.c$248$2_0$10 ==.
;	main.c:248: cf0WaitCommandReady();
	mov	r0,#_cf0WaitCommandReady
	mov	r1,#(_cf0WaitCommandReady >> 8)
	mov	r2,#(_cf0WaitCommandReady >> 16)
	lcall	__sdcc_banked_call
	C$main.c$250$2_0$10 ==.
;	main.c:250: P1 = 0xec;
	mov	_P1,#0xec
	C$main.c$251$2_0$10 ==.
;	main.c:251: cf0WriteCommand(0x20);
	mov	dptr,#0xff27
	mov	a,#0x20
	movx	@dptr,a
	C$main.c$253$2_0$10 ==.
;	main.c:253: P1 = 0xed;
	mov	_P1,#0xed
	C$main.c$254$2_0$10 ==.
;	main.c:254: cf0WaitDataReady();
	mov	r0,#_cf0WaitDataReady
	mov	r1,#(_cf0WaitDataReady >> 8)
	mov	r2,#(_cf0WaitDataReady >> 16)
	lcall	__sdcc_banked_call
	C$main.c$256$2_0$10 ==.
;	main.c:256: P1 = 0xee;
	mov	_P1,#0xee
	C$main.c$257$2_0$10 ==.
;	main.c:257: status = cf0ReadStatus();
	mov	dptr,#0xff27
	movx	a,@dptr
	C$main.c$259$2_0$10 ==.
;	main.c:259: P1 = 0xef;
	C$main.c$260$1_0$9 ==.
;	main.c:260: }while((status & 0x01)!=0);
	mov	_P1,#0xef
	jb	acc.0,00101$
	C$main.c$266$3_0$12 ==.
;	main.c:266: while(i++ < SECTOR_SIZE)
	mov	dptr,#_cf0ReadSector_buf_65536_8
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	mov	_cf0ReadSector_i_65536_9,a
	mov	(_cf0ReadSector_i_65536_9 + 1),a
00104$:
	mov	r1,_cf0ReadSector_i_65536_9
	mov	r2,(_cf0ReadSector_i_65536_9 + 1)
	inc	_cf0ReadSector_i_65536_9
	clr	a
	cjne	a,_cf0ReadSector_i_65536_9,00127$
	inc	(_cf0ReadSector_i_65536_9 + 1)
00127$:
	mov	a,#0x100 - 0x02
	add	a,r2
	jc	00106$
	C$main.c$268$3_0$12 ==.
;	main.c:268: P1 = 0xf0;
	mov	_P1,#0xf0
	C$main.c$269$3_0$12 ==.
;	main.c:269: cf0WaitDataReady();
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_cf0WaitDataReady
	mov	r1,#(_cf0WaitDataReady >> 8)
	mov	r2,#(_cf0WaitDataReady >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
	C$main.c$271$3_0$12 ==.
;	main.c:271: P1 = 0xf1;
	mov	_P1,#0xf1
	C$main.c$272$3_0$12 ==.
;	main.c:272: buf[i+idx] = cf0ReadData();
	mov	a,_cf0ReadSector_i_65536_9
	add	a,r5
	mov	r0,a
	mov	a,(_cf0ReadSector_i_65536_9 + 1)
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dptr,#0xff20
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrput
	C$main.c$274$3_0$12 ==.
;	main.c:274: P1 = 0xf2;
	mov	_P1,#0xf2
	sjmp	00104$
00106$:
	C$main.c$279$1_0$9 ==.
;	main.c:279: P1 = 0xf3;
	mov	_P1,#0xf3
	C$main.c$280$1_0$9 ==.
;	main.c:280: }
	C$main.c$280$1_0$9 ==.
	XG$cf0ReadSector$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_us'
;------------------------------------------------------------
;us                        Allocated with name '_delay_us_us_65536_13'
;------------------------------------------------------------
	G$delay_us$0$0 ==.
	C$main.c$284$1_0$14 ==.
;	main.c:284: void delay_us(unsigned int us)
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	C$main.c$298$1_0$14 ==.
;	main.c:298: __endasm;
	PUSH	ar6
	PUSH	ar7
	MOV	R6, DPH
	delay_us_1:
	MOV R7, DPL
	delay_us_2:
	DJNZ R7, delay_us_2
	DJNZ	R6, delay_us_1
	POP	ar7
	POP	ar6
	C$main.c$299$1_0$14 ==.
;	main.c:299: }
	C$main.c$299$1_0$14 ==.
	XG$delay_us$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms                        Allocated with name '_delay_ms_ms_65536_15'
;------------------------------------------------------------
	G$delay_ms$0$0 ==.
	C$main.c$301$1_0$16 ==.
;	main.c:301: void delay_ms(unsigned int ms)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	C$main.c$321$1_0$16 ==.
;	main.c:321: __endasm;
	PUSH	ar4
	PUSH	ar5
	PUSH	ar6
	PUSH	ar7
	MOV	R4, DPH
	delay_ms_1:
	MOV R5, DPL
	delay_ms_2:
	MOV R6, #10
	delay_ms_3:
	MOV R7, #100
	delay_ms_4:
	DJNZ R7, delay_ms_4
	DJNZ	R6, delay_ms_3
	DJNZ	R5, delay_ms_2
	DJNZ	R4, delay_ms_1
	POP	ar7
	POP	ar6
	POP	ar5
	POP	ar4
	C$main.c$322$1_0$16 ==.
;	main.c:322: }
	C$main.c$322$1_0$16 ==.
	XG$delay_ms$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ledTest'
;------------------------------------------------------------
	G$ledTest$0$0 ==.
	C$main.c$326$1_0$17 ==.
;	main.c:326: void ledTest()
;	-----------------------------------------
;	 function ledTest
;	-----------------------------------------
_ledTest:
	C$main.c$328$1_0$17 ==.
;	main.c:328: P1 = ~0x01;
	mov	_P1,#0xfe
	C$main.c$329$1_0$17 ==.
;	main.c:329: delay_ms(500);
	mov	dptr,#0x01f4
	mov	r0,#_delay_ms
	mov	r1,#(_delay_ms >> 8)
	mov	r2,#(_delay_ms >> 16)
	lcall	__sdcc_banked_call
	C$main.c$331$1_0$17 ==.
;	main.c:331: P1 = ~0x02;
	mov	_P1,#0xfd
	C$main.c$332$1_0$17 ==.
;	main.c:332: delay_ms(500);
	mov	dptr,#0x01f4
	mov	r0,#_delay_ms
	mov	r1,#(_delay_ms >> 8)
	mov	r2,#(_delay_ms >> 16)
	lcall	__sdcc_banked_call
	C$main.c$334$1_0$17 ==.
;	main.c:334: P1 = ~0x04;
	mov	_P1,#0xfb
	C$main.c$335$1_0$17 ==.
;	main.c:335: delay_ms(500);
	mov	dptr,#0x01f4
	mov	r0,#_delay_ms
	mov	r1,#(_delay_ms >> 8)
	mov	r2,#(_delay_ms >> 16)
	lcall	__sdcc_banked_call
	C$main.c$337$1_0$17 ==.
;	main.c:337: P1 = ~0x08;
	mov	_P1,#0xf7
	C$main.c$338$1_0$17 ==.
;	main.c:338: delay_ms(500);
	mov	dptr,#0x01f4
	mov	r0,#_delay_ms
	mov	r1,#(_delay_ms >> 8)
	mov	r2,#(_delay_ms >> 16)
	lcall	__sdcc_banked_call
	C$main.c$340$1_0$17 ==.
;	main.c:340: P1 = ~0x10;
	mov	_P1,#0xef
	C$main.c$341$1_0$17 ==.
;	main.c:341: delay_ms(500);
	mov	dptr,#0x01f4
	mov	r0,#_delay_ms
	mov	r1,#(_delay_ms >> 8)
	mov	r2,#(_delay_ms >> 16)
	lcall	__sdcc_banked_call
	C$main.c$343$1_0$17 ==.
;	main.c:343: P1 = ~0x20;
	mov	_P1,#0xdf
	C$main.c$344$1_0$17 ==.
;	main.c:344: delay_ms(500);
	mov	dptr,#0x01f4
	mov	r0,#_delay_ms
	mov	r1,#(_delay_ms >> 8)
	mov	r2,#(_delay_ms >> 16)
	lcall	__sdcc_banked_call
	C$main.c$346$1_0$17 ==.
;	main.c:346: P1 = ~0x40;
	mov	_P1,#0xbf
	C$main.c$347$1_0$17 ==.
;	main.c:347: delay_ms(500);
	mov	dptr,#0x01f4
	mov	r0,#_delay_ms
	mov	r1,#(_delay_ms >> 8)
	mov	r2,#(_delay_ms >> 16)
	lcall	__sdcc_banked_call
	C$main.c$349$1_0$17 ==.
;	main.c:349: P1 = ~0x80;
	mov	_P1,#0x7f
	C$main.c$350$1_0$17 ==.
;	main.c:350: delay_ms(500);
	mov	dptr,#0x01f4
	mov	r0,#_delay_ms
	mov	r1,#(_delay_ms >> 8)
	mov	r2,#(_delay_ms >> 16)
	lcall	__sdcc_banked_call
	C$main.c$351$1_0$17 ==.
;	main.c:351: }
	C$main.c$351$1_0$17 ==.
	XG$ledTest$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pio0Test'
;------------------------------------------------------------
;v                         Allocated to registers r7 
;------------------------------------------------------------
	G$pio0Test$0$0 ==.
	C$main.c$355$1_0$18 ==.
;	main.c:355: void pio0Test()
;	-----------------------------------------
;	 function pio0Test
;	-----------------------------------------
_pio0Test:
	C$main.c$358$1_0$18 ==.
;	main.c:358: pio0WriteCtrl(0x80);
	mov	dptr,#0xff03
	mov	a,#0x80
	movx	@dptr,a
	C$main.c$361$1_0$18 ==.
;	main.c:361: do
	mov	r7,#0xff
00101$:
	C$main.c$363$2_0$19 ==.
;	main.c:363: delay_ms(500);
	mov	dptr,#0x01f4
	push	ar7
	mov	r0,#_delay_ms
	mov	r1,#(_delay_ms >> 8)
	mov	r2,#(_delay_ms >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$main.c$364$2_0$19 ==.
;	main.c:364: pio0WritePortA(v);
	mov	dptr,#0xff00
	mov	a,r7
	movx	@dptr,a
	C$main.c$365$1_0$18 ==.
;	main.c:365: }while(v--);
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00101$
	C$main.c$368$1_0$18 ==.
;	main.c:368: do
	mov	r7,#0xff
00104$:
	C$main.c$370$2_0$20 ==.
;	main.c:370: delay_ms(500);
	mov	dptr,#0x01f4
	push	ar7
	mov	r0,#_delay_ms
	mov	r1,#(_delay_ms >> 8)
	mov	r2,#(_delay_ms >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$main.c$371$2_0$20 ==.
;	main.c:371: pio0WritePortB(v);
	mov	dptr,#0xff01
	mov	a,r7
	movx	@dptr,a
	C$main.c$372$1_0$18 ==.
;	main.c:372: }while(v--);
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00104$
	C$main.c$375$1_0$18 ==.
;	main.c:375: do
	mov	r7,#0xff
00107$:
	C$main.c$377$2_0$21 ==.
;	main.c:377: delay_ms(500);
	mov	dptr,#0x01f4
	push	ar7
	mov	r0,#_delay_ms
	mov	r1,#(_delay_ms >> 8)
	mov	r2,#(_delay_ms >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$main.c$378$2_0$21 ==.
;	main.c:378: pio0WritePortC(v);
	mov	dptr,#0xff02
	mov	a,r7
	movx	@dptr,a
	C$main.c$379$1_0$18 ==.
;	main.c:379: }while(v--);
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00107$
	C$main.c$380$1_0$18 ==.
;	main.c:380: }
	C$main.c$380$1_0$18 ==.
	XG$pio0Test$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pio1Test'
;------------------------------------------------------------
;v                         Allocated to registers r7 
;------------------------------------------------------------
	G$pio1Test$0$0 ==.
	C$main.c$382$1_0$22 ==.
;	main.c:382: void pio1Test()
;	-----------------------------------------
;	 function pio1Test
;	-----------------------------------------
_pio1Test:
	C$main.c$385$1_0$22 ==.
;	main.c:385: pio1WriteCtrl(0x80);
	mov	dptr,#0xff13
	mov	a,#0x80
	movx	@dptr,a
	C$main.c$388$1_0$22 ==.
;	main.c:388: do
	mov	r7,#0xff
00101$:
	C$main.c$390$2_0$23 ==.
;	main.c:390: delay_ms(500);
	mov	dptr,#0x01f4
	push	ar7
	mov	r0,#_delay_ms
	mov	r1,#(_delay_ms >> 8)
	mov	r2,#(_delay_ms >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$main.c$391$2_0$23 ==.
;	main.c:391: pio1WritePortA(v);
	mov	dptr,#0xff10
	mov	a,r7
	movx	@dptr,a
	C$main.c$392$1_0$22 ==.
;	main.c:392: }while(v--);
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00101$
	C$main.c$395$1_0$22 ==.
;	main.c:395: do
	mov	r7,#0xff
00104$:
	C$main.c$397$2_0$24 ==.
;	main.c:397: delay_ms(500);
	mov	dptr,#0x01f4
	push	ar7
	mov	r0,#_delay_ms
	mov	r1,#(_delay_ms >> 8)
	mov	r2,#(_delay_ms >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$main.c$398$2_0$24 ==.
;	main.c:398: pio1WritePortB(v);
	mov	dptr,#0xff11
	mov	a,r7
	movx	@dptr,a
	C$main.c$399$1_0$22 ==.
;	main.c:399: }while(v--);
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00104$
	C$main.c$402$1_0$22 ==.
;	main.c:402: do
	mov	r7,#0xff
00107$:
	C$main.c$404$2_0$25 ==.
;	main.c:404: delay_ms(500);
	mov	dptr,#0x01f4
	push	ar7
	mov	r0,#_delay_ms
	mov	r1,#(_delay_ms >> 8)
	mov	r2,#(_delay_ms >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
	C$main.c$405$2_0$25 ==.
;	main.c:405: pio1WritePortC(v);
	mov	dptr,#0xff12
	mov	a,r7
	movx	@dptr,a
	C$main.c$406$1_0$22 ==.
;	main.c:406: }while(v--);
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00107$
	C$main.c$407$1_0$22 ==.
;	main.c:407: }
	C$main.c$407$1_0$22 ==.
	XG$pio1Test$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0Init'
;------------------------------------------------------------
	G$uart0Init$0$0 ==.
	C$main.c$411$1_0$26 ==.
;	main.c:411: void uart0Init()
;	-----------------------------------------
;	 function uart0Init
;	-----------------------------------------
_uart0Init:
	C$main.c$413$1_0$26 ==.
;	main.c:413: SCON = 0x50;
	mov	_SCON,#0x50
	C$main.c$414$1_0$26 ==.
;	main.c:414: TMOD = (TMOD & T0_MASK) | 0x21;
	mov	r6,_TMOD
	anl	ar6,#0x0f
	mov	r7,#0x00
	orl	ar6,#0x21
	mov	_TMOD,r6
	C$main.c$415$1_0$26 ==.
;	main.c:415: PCON = 0x80;
	mov	_PCON,#0x80
	C$main.c$418$1_0$26 ==.
;	main.c:418: TH1 = 0xFA;
	mov	_TH1,#0xfa
	C$main.c$419$1_0$26 ==.
;	main.c:419: TL1 = 0xFA;
	mov	_TL1,#0xfa
	C$main.c$420$1_0$26 ==.
;	main.c:420: TR1 = 1;
;	assignBit
	setb	_TR1
	C$main.c$423$1_0$26 ==.
;	main.c:423: }
	C$main.c$423$1_0$26 ==.
	XG$uart0Init$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0Close'
;------------------------------------------------------------
	G$uart0Close$0$0 ==.
	C$main.c$425$1_0$27 ==.
;	main.c:425: void uart0Close()
;	-----------------------------------------
;	 function uart0Close
;	-----------------------------------------
_uart0Close:
	C$main.c$427$1_0$27 ==.
;	main.c:427: SCON = 0x00;
	mov	_SCON,#0x00
	C$main.c$428$1_0$27 ==.
;	main.c:428: TMOD = (TMOD & T0_MASK);
	anl	_TMOD,#0x0f
	C$main.c$429$1_0$27 ==.
;	main.c:429: PCON &= ~SMOD;
	anl	_PCON,#0x7f
	C$main.c$430$1_0$27 ==.
;	main.c:430: TR1 = 0;
;	assignBit
	clr	_TR1
	C$main.c$431$1_0$27 ==.
;	main.c:431: }
	C$main.c$431$1_0$27 ==.
	XG$uart0Close$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0WaitTXDone'
;------------------------------------------------------------
	G$uart0WaitTXDone$0$0 ==.
	C$main.c$433$1_0$28 ==.
;	main.c:433: void uart0WaitTXDone()
;	-----------------------------------------
;	 function uart0WaitTXDone
;	-----------------------------------------
_uart0WaitTXDone:
	C$main.c$435$1_0$28 ==.
;	main.c:435: while(!TI);
00101$:
	jnb	_TI,00101$
	C$main.c$436$1_0$28 ==.
;	main.c:436: }
	C$main.c$436$1_0$28 ==.
	XG$uart0WaitTXDone$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0TX'
;------------------------------------------------------------
;d                         Allocated with name '_uart0TX_d_65536_29'
;------------------------------------------------------------
	G$uart0TX$0$0 ==.
	C$main.c$438$1_0$30 ==.
;	main.c:438: void uart0TX(char d)
;	-----------------------------------------
;	 function uart0TX
;	-----------------------------------------
_uart0TX:
	mov	a,dpl
	mov	dptr,#_uart0TX_d_65536_29
	movx	@dptr,a
	C$main.c$440$1_0$30 ==.
;	main.c:440: TI = 0;
;	assignBit
	clr	_TI
	C$main.c$441$1_0$30 ==.
;	main.c:441: SBUF = d;
	mov	dptr,#_uart0TX_d_65536_29
	movx	a,@dptr
	mov	_SBUF,a
	C$main.c$442$1_0$30 ==.
;	main.c:442: while(!TI) /* assumes UART is initialized */ ;
00101$:
	jnb	_TI,00101$
	C$main.c$443$1_0$30 ==.
;	main.c:443: }
	C$main.c$443$1_0$30 ==.
	XG$uart0TX$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0TXStr'
;------------------------------------------------------------
;s                         Allocated with name '_uart0TXStr_s_65536_31'
;------------------------------------------------------------
	G$uart0TXStr$0$0 ==.
	C$main.c$445$1_0$32 ==.
;	main.c:445: void uart0TXStr(const char* s)
;	-----------------------------------------
;	 function uart0TXStr
;	-----------------------------------------
_uart0TXStr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_uart0TXStr_s_65536_31
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$main.c$447$1_0$32 ==.
;	main.c:447: do
	mov	dptr,#_uart0TXStr_s_65536_31
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	C$main.c$449$2_0$33 ==.
;	main.c:449: uart0TX(*s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_uart0TX
	mov	r1,#(_uart0TX >> 8)
	mov	r2,#(_uart0TX >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
	C$main.c$450$1_0$32 ==.
;	main.c:450: }while(*s++);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dptr,#_uart0TXStr_s_65536_31
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	jnz	00101$
	mov	dptr,#_uart0TXStr_s_65536_31
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$main.c$451$1_0$32 ==.
;	main.c:451: }
	C$main.c$451$1_0$32 ==.
	XG$uart0TXStr$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0TXBuf'
;------------------------------------------------------------
;i                         Allocated with name '_uart0TXBuf_i_65536_35'
;size                      Allocated with name '_uart0TXBuf_PARM_2'
;buf                       Allocated with name '_uart0TXBuf_buf_65536_34'
;------------------------------------------------------------
	G$uart0TXBuf$0$0 ==.
	C$main.c$453$1_0$35 ==.
;	main.c:453: void uart0TXBuf(const char* buf, unsigned int size)
;	-----------------------------------------
;	 function uart0TXBuf
;	-----------------------------------------
_uart0TXBuf:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_uart0TXBuf_buf_65536_34
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$main.c$457$2_0$36 ==.
;	main.c:457: while(size--)
	mov	dptr,#_uart0TXBuf_buf_65536_34
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	mov	_uart0TXBuf_i_65536_35,a
	mov	(_uart0TXBuf_i_65536_35 + 1),a
	mov	dptr,#_uart0TXBuf_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
00101$:
	mov	ar0,r1
	mov	ar4,r2
	dec	r1
	cjne	r1,#0xff,00115$
	dec	r2
00115$:
	mov	a,r0
	orl	a,r4
	jz	00104$
	C$main.c$459$2_0$36 ==.
;	main.c:459: uart0TX(buf[i++]);
	mov	r3,_uart0TXBuf_i_65536_35
	mov	r4,(_uart0TXBuf_i_65536_35 + 1)
	inc	_uart0TXBuf_i_65536_35
	clr	a
	cjne	a,_uart0TXBuf_i_65536_35,00117$
	inc	(_uart0TXBuf_i_65536_35 + 1)
00117$:
	mov	a,r3
	add	a,r5
	mov	r3,a
	mov	a,r4
	addc	a,r6
	mov	r0,a
	mov	ar4,r7
	mov	dpl,r3
	mov	dph,r0
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar1
	mov	r0,#_uart0TX
	mov	r1,#(_uart0TX >> 8)
	mov	r2,#(_uart0TX >> 16)
	lcall	__sdcc_banked_call
	pop	ar1
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
	C$main.c$461$1_0$35 ==.
;	main.c:461: }
	C$main.c$461$1_0$35 ==.
	XG$uart0TXBuf$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0WaitRXDone'
;------------------------------------------------------------
	G$uart0WaitRXDone$0$0 ==.
	C$main.c$463$1_0$37 ==.
;	main.c:463: void uart0WaitRXDone()
;	-----------------------------------------
;	 function uart0WaitRXDone
;	-----------------------------------------
_uart0WaitRXDone:
	C$main.c$465$1_0$37 ==.
;	main.c:465: while(!RI);
00101$:
	jnb	_RI,00101$
	C$main.c$466$1_0$37 ==.
;	main.c:466: }
	C$main.c$466$1_0$37 ==.
	XG$uart0WaitRXDone$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0RX'
;------------------------------------------------------------
;d                         Allocated to registers r7 
;------------------------------------------------------------
	G$uart0RX$0$0 ==.
	C$main.c$468$1_0$38 ==.
;	main.c:468: char uart0RX()
;	-----------------------------------------
;	 function uart0RX
;	-----------------------------------------
_uart0RX:
	C$main.c$472$1_0$38 ==.
;	main.c:472: while(!RI) /* assumes UART is initialized */ ;
00101$:
	jnb	_RI,00101$
	C$main.c$473$1_0$38 ==.
;	main.c:473: d = SBUF;
	mov	r7,_SBUF
	C$main.c$474$1_0$38 ==.
;	main.c:474: RI = 0;
;	assignBit
	clr	_RI
	C$main.c$476$1_0$38 ==.
;	main.c:476: return d;
	mov	dpl,r7
	C$main.c$477$1_0$38 ==.
;	main.c:477: }
	C$main.c$477$1_0$38 ==.
	XG$uart0RX$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0RXStr'
;------------------------------------------------------------
;i                         Allocated with name '_uart0RXStr_i_65536_40'
;sloc0                     Allocated with name '_uart0RXStr_sloc0_1_0'
;size                      Allocated with name '_uart0RXStr_PARM_2'
;s                         Allocated with name '_uart0RXStr_s_65536_39'
;------------------------------------------------------------
	G$uart0RXStr$0$0 ==.
	C$main.c$479$1_0$40 ==.
;	main.c:479: void uart0RXStr(char* s, unsigned int size)
;	-----------------------------------------
;	 function uart0RXStr
;	-----------------------------------------
_uart0RXStr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_uart0RXStr_s_65536_39
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$main.c$483$2_0$41 ==.
;	main.c:483: while(size--)
	mov	dptr,#_uart0RXStr_s_65536_39
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	mov	_uart0RXStr_i_65536_40,a
	mov	(_uart0RXStr_i_65536_40 + 1),a
	mov	dptr,#_uart0RXStr_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
00103$:
	mov	ar0,r1
	mov	ar4,r2
	dec	r1
	cjne	r1,#0xff,00117$
	dec	r2
00117$:
	mov	a,r0
	orl	a,r4
	jz	00106$
	C$main.c$485$2_0$41 ==.
;	main.c:485: if((s[i++] = uart0RX())==0)
	mov	r3,_uart0RXStr_i_65536_40
	mov	r4,(_uart0RXStr_i_65536_40 + 1)
	inc	_uart0RXStr_i_65536_40
	clr	a
	cjne	a,_uart0RXStr_i_65536_40,00119$
	inc	(_uart0RXStr_i_65536_40 + 1)
00119$:
	mov	a,r3
	add	a,r5
	mov	_uart0RXStr_sloc0_1_0,a
	mov	a,r4
	addc	a,r6
	mov	(_uart0RXStr_sloc0_1_0 + 1),a
	mov	(_uart0RXStr_sloc0_1_0 + 2),r7
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar1
	mov	r0,#_uart0RX
	mov	r1,#(_uart0RX >> 8)
	mov	r2,#(_uart0RX >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar1
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,_uart0RXStr_sloc0_1_0
	mov	dph,(_uart0RXStr_sloc0_1_0 + 1)
	mov	b,(_uart0RXStr_sloc0_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	jnz	00103$
	C$main.c$486$1_0$40 ==.
;	main.c:486: break;
00106$:
	C$main.c$488$1_0$40 ==.
;	main.c:488: }
	C$main.c$488$1_0$40 ==.
	XG$uart0RXStr$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0RXBuf'
;------------------------------------------------------------
;i                         Allocated with name '_uart0RXBuf_i_65536_43'
;size                      Allocated with name '_uart0RXBuf_PARM_2'
;buf                       Allocated with name '_uart0RXBuf_buf_65536_42'
;------------------------------------------------------------
	G$uart0RXBuf$0$0 ==.
	C$main.c$490$1_0$43 ==.
;	main.c:490: void uart0RXBuf(char* buf, unsigned int size)
;	-----------------------------------------
;	 function uart0RXBuf
;	-----------------------------------------
_uart0RXBuf:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_uart0RXBuf_buf_65536_42
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$main.c$494$2_0$44 ==.
;	main.c:494: while(size--)
	mov	dptr,#_uart0RXBuf_buf_65536_42
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	mov	_uart0RXBuf_i_65536_43,a
	mov	(_uart0RXBuf_i_65536_43 + 1),a
	mov	dptr,#_uart0RXBuf_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
00101$:
	mov	ar0,r1
	mov	ar4,r2
	dec	r1
	cjne	r1,#0xff,00115$
	dec	r2
00115$:
	mov	a,r0
	orl	a,r4
	jz	00104$
	C$main.c$496$1_0$43 ==.
;	main.c:496: buf[i++] = uart0RX();
	push	ar1
	push	ar2
	mov	r3,_uart0RXBuf_i_65536_43
	mov	r4,(_uart0RXBuf_i_65536_43 + 1)
	inc	_uart0RXBuf_i_65536_43
	clr	a
	cjne	a,_uart0RXBuf_i_65536_43,00117$
	inc	(_uart0RXBuf_i_65536_43 + 1)
00117$:
	mov	a,r3
	add	a,r5
	mov	r3,a
	mov	a,r4
	addc	a,r6
	mov	r0,a
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar1
	push	ar0
	mov	r0,#_uart0RX
	mov	r1,#(_uart0RX >> 8)
	mov	r2,#(_uart0RX >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	pop	ar0
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r3
	mov	dph,r0
	mov	b,r4
	mov	a,r2
	lcall	__gptrput
	pop	ar2
	pop	ar1
	sjmp	00101$
00104$:
	C$main.c$498$1_0$43 ==.
;	main.c:498: }
	C$main.c$498$1_0$43 ==.
	XG$uart0RXBuf$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0Test1'
;------------------------------------------------------------
	G$uart0Test1$0$0 ==.
	C$main.c$500$1_0$45 ==.
;	main.c:500: void uart0Test1()
;	-----------------------------------------
;	 function uart0Test1
;	-----------------------------------------
_uart0Test1:
	C$main.c$502$1_0$45 ==.
;	main.c:502: uart0Init();
	mov	r0,#_uart0Init
	mov	r1,#(_uart0Init >> 8)
	mov	r2,#(_uart0Init >> 16)
	lcall	__sdcc_banked_call
	C$main.c$503$1_0$45 ==.
;	main.c:503: while(1)
00102$:
	C$main.c$505$2_0$46 ==.
;	main.c:505: uart0TX(uart0RX());
	mov	r0,#_uart0RX
	mov	r1,#(_uart0RX >> 8)
	mov	r2,#(_uart0RX >> 16)
	lcall	__sdcc_banked_call
	mov	r0,#_uart0TX
	mov	r1,#(_uart0TX >> 8)
	mov	r2,#(_uart0TX >> 16)
	lcall	__sdcc_banked_call
	C$main.c$507$1_0$45 ==.
;	main.c:507: }
	C$main.c$507$1_0$45 ==.
	XG$uart0Test1$0$0 ==.
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0Test2'
;------------------------------------------------------------
	G$uart0Test2$0$0 ==.
	C$main.c$519$1_0$47 ==.
;	main.c:519: void uart0Test2()
;	-----------------------------------------
;	 function uart0Test2
;	-----------------------------------------
_uart0Test2:
	C$main.c$521$1_0$47 ==.
;	main.c:521: uart0Init();
	mov	r0,#_uart0Init
	mov	r1,#(_uart0Init >> 8)
	mov	r2,#(_uart0Init >> 16)
	lcall	__sdcc_banked_call
	C$main.c$522$1_0$47 ==.
;	main.c:522: while(1)
00102$:
	C$main.c$524$2_0$48 ==.
;	main.c:524: uart0TXStr("Fuck you now!!!!\r\n");
	mov	dptr,#___str_0
	mov	b,#0x80
	mov	r0,#_uart0TXStr
	mov	r1,#(_uart0TXStr >> 8)
	mov	r2,#(_uart0TXStr >> 16)
	lcall	__sdcc_banked_call
	C$main.c$525$2_0$48 ==.
;	main.c:525: uart0TXBuf(data, 26*2);
	mov	dptr,#_uart0TXBuf_PARM_2
	mov	a,#0x34
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_data
	mov	b,#0x80
	mov	r0,#_uart0TXBuf
	mov	r1,#(_uart0TXBuf >> 8)
	mov	r2,#(_uart0TXBuf >> 16)
	lcall	__sdcc_banked_call
	C$main.c$527$1_0$47 ==.
;	main.c:527: }
	C$main.c$527$1_0$47 ==.
	XG$uart0Test2$0$0 ==.
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0Test3'
;------------------------------------------------------------
	G$uart0Test3$0$0 ==.
	C$main.c$529$1_0$50 ==.
;	main.c:529: void uart0Test3()
;	-----------------------------------------
;	 function uart0Test3
;	-----------------------------------------
_uart0Test3:
	C$main.c$531$1_0$50 ==.
;	main.c:531: }
	C$main.c$531$1_0$50 ==.
	XG$uart0Test3$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cf0Test'
;------------------------------------------------------------
	G$cf0Test$0$0 ==.
	C$main.c$536$1_0$51 ==.
;	main.c:536: void cf0Test()
;	-----------------------------------------
;	 function cf0Test
;	-----------------------------------------
_cf0Test:
	C$main.c$538$1_0$51 ==.
;	main.c:538: P1 = 0xc1;
	mov	_P1,#0xc1
	C$main.c$539$1_0$51 ==.
;	main.c:539: uart0Init();
	mov	r0,#_uart0Init
	mov	r1,#(_uart0Init >> 8)
	mov	r2,#(_uart0Init >> 16)
	lcall	__sdcc_banked_call
	C$main.c$540$1_0$51 ==.
;	main.c:540: P1 = 0xc2;
	mov	_P1,#0xc2
	C$main.c$541$1_0$51 ==.
;	main.c:541: cf0Init();
	mov	r0,#_cf0Init
	mov	r1,#(_cf0Init >> 8)
	mov	r2,#(_cf0Init >> 16)
	lcall	__sdcc_banked_call
	C$main.c$542$1_0$51 ==.
;	main.c:542: P1 = 0xc3;
	mov	_P1,#0xc3
	C$main.c$543$1_0$51 ==.
;	main.c:543: cf0ReadSector(buf, 1);
	mov	dptr,#_cf0ReadSector_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buf
	mov	b,#0x00
	mov	r0,#_cf0ReadSector
	mov	r1,#(_cf0ReadSector >> 8)
	mov	r2,#(_cf0ReadSector >> 16)
	lcall	__sdcc_banked_call
	C$main.c$544$1_0$51 ==.
;	main.c:544: P1 = 0xc4;
	mov	_P1,#0xc4
	C$main.c$545$1_0$51 ==.
;	main.c:545: uart0TXBuf(buf, SECTOR_SIZE);
	mov	dptr,#_uart0TXBuf_PARM_2
	clr	a
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buf
	mov	b,#0x00
	mov	r0,#_uart0TXBuf
	mov	r1,#(_uart0TXBuf >> 8)
	mov	r2,#(_uart0TXBuf >> 16)
	lcall	__sdcc_banked_call
	C$main.c$546$1_0$51 ==.
;	main.c:546: P1 = 0xc5;
	mov	_P1,#0xc5
	C$main.c$547$1_0$51 ==.
;	main.c:547: }
	C$main.c$547$1_0$51 ==.
	XG$cf0Test$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;res                       Allocated to registers 
;src                       Allocated to registers 
;dst                       Allocated with name '_main_dst_131072_53'
;count                     Allocated to registers r2 r3 
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$549$1_0$52 ==.
;	main.c:549: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$560$1_0$52 ==.
;	main.c:560: P1 = 0x01;
	mov	_P1,#0x01
	C$main.c$561$2_0$53 ==.
;	main.c:561: sysCopyBIOS(0x0000, 0x0000, 0x4000);
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
	cjne	r2,#0xff,00118$
	dec	r3
00118$:
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
	C$main.c$563$1_0$52 ==.
;	main.c:563: P1 = 0x02;
	mov	_P1,#0x02
	C$main.c$564$1_0$52 ==.
;	main.c:564: sysEnterNormalMode();
	mov	dptr,#0xff70
	clr	a
	movx	@dptr,a
	C$main.c$566$1_0$52 ==.
;	main.c:566: P1 = 0x03;
	mov	_P1,#0x03
	C$main.c$571$2_0$54 ==.
;	main.c:571: ledTest();
	mov	r0,#_ledTest
	mov	r1,#(_ledTest >> 8)
	mov	r2,#(_ledTest >> 16)
	lcall	__sdcc_banked_call
	C$main.c$575$2_0$54 ==.
;	main.c:575: P1 = 0x04;
	mov	_P1,#0x04
	C$main.c$578$2_0$54 ==.
;	main.c:578: P1 = 0x05;
	mov	_P1,#0x05
	C$main.c$581$2_0$54 ==.
;	main.c:581: P1 = 0x06;
	mov	_P1,#0x06
	C$main.c$609$2_0$54 ==.
;	main.c:609: P1 = 0x10;
	mov	_P1,#0x10
	C$main.c$612$2_0$54 ==.
;	main.c:612: P1 = 0x11;
	mov	_P1,#0x11
	C$main.c$615$2_0$54 ==.
;	main.c:615: P1 = 0x12;
	mov	_P1,#0x12
	C$main.c$618$2_0$54 ==.
;	main.c:618: P1 = 0x13;
	mov	_P1,#0x13
	C$main.c$619$2_0$54 ==.
;	main.c:619: cf0Test();
	mov	r0,#_cf0Test
	mov	r1,#(_cf0Test >> 8)
	mov	r2,#(_cf0Test >> 16)
	lcall	__sdcc_banked_call
	C$main.c$624$2_0$54 ==.
;	main.c:624: P1 = 0x81;
	mov	_P1,#0x81
	C$main.c$628$1_0$52 ==.
;	main.c:628: P1 = 0x82;
	C$main.c$630$1_0$52 ==.
;	main.c:630: }
	C$main.c$630$1_0$52 ==.
	XG$main$0$0 ==.
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
Fmain$__str_0$0_0$0 == .
___str_0:
	.ascii "Fuck you now!!!!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
