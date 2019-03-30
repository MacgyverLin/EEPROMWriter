;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW32)
;--------------------------------------------------------
	.module fat
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sioTXBuf
	.globl _sioTXStr
	.globl _f_mount
	.globl _f_read
	.globl _f_close
	.globl _f_open
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
	.globl _filename
	.globl _fil
	.globl _fs
	.globl _br
	.globl _res
	.globl _fatfsTest
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
_res::
	.ds 1
_br::
	.ds 2
_fs::
	.ds 550
_fil::
	.ds 30
_fatfsTest_buf_65536_56:
	.ds 3
_fatfsTest_br_65536_57:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_filename::
	.ds 3
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
;Allocation info for local variables in function 'fatfsTest'
;------------------------------------------------------------
;buf                       Allocated with name '_fatfsTest_buf_65536_56'
;br                        Allocated with name '_fatfsTest_br_65536_57'
;------------------------------------------------------------
;	fat.c:11: unsigned int fatfsTest(char *buf)
;	-----------------------------------------
;	 function fatfsTest
;	-----------------------------------------
_fatfsTest:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_fatfsTest_buf_65536_56
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	fat.c:13: unsigned int br = 0;
	mov	dptr,#_fatfsTest_br_65536_57
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	fat.c:14: res = f_mount(&fs, "0:", 0);
	mov	dptr,#_f_mount_PARM_2
	mov	a,#___str_0
	movx	@dptr,a
	mov	a,#(___str_0 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_mount_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_fs
	mov	b,#0x00
	mov	r0,#_f_mount
	mov	r1,#(_f_mount >> 8)
	mov	r2,#(_f_mount >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	dptr,#_res
	mov	a,r7
	movx	@dptr,a
;	fat.c:15: if(res==FR_OK)
	mov	a,r7
	jnz	00102$
;	fat.c:17: sioTXStr(0, "f_mount OK\r\n");
	mov	dptr,#_sioTXStr_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	mov	r0,#_sioTXStr
	mov	r1,#(_sioTXStr >> 8)
	mov	r2,#(_sioTXStr >> 16)
	lcall	__sdcc_banked_call
	sjmp	00103$
00102$:
;	fat.c:21: sioTXStr(0, "f_mount failed\r\n");
	mov	dptr,#_sioTXStr_PARM_2
	mov	a,#___str_2
	movx	@dptr,a
	mov	a,#(___str_2 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	mov	r0,#_sioTXStr
	mov	r1,#(_sioTXStr >> 8)
	mov	r2,#(_sioTXStr >> 16)
	lcall	__sdcc_banked_call
00103$:
;	fat.c:24: sioTXStr(0, buf);
	mov	dptr,#_fatfsTest_buf_65536_56
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_sioTXStr_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	mov	r0,#_sioTXStr
	mov	r1,#(_sioTXStr >> 8)
	mov	r2,#(_sioTXStr >> 16)
	lcall	__sdcc_banked_call
;	fat.c:25: res = f_open(&fil, "1.txt", FA_READ);
	mov	dptr,#_f_open_PARM_2
	mov	a,#___str_3
	movx	@dptr,a
	mov	a,#(___str_3 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_open_PARM_3
	rl	a
	movx	@dptr,a
	mov	dptr,#_fil
	mov	b,#0x00
	mov	r0,#_f_open
	mov	r1,#(_f_open >> 8)
	mov	r2,#(_f_open >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	dptr,#_res
	mov	a,r7
	movx	@dptr,a
;	fat.c:26: if(res==FR_OK)
	mov	a,r7
	jnz	00105$
;	fat.c:28: sioTXStr(0, "f_open OK\r\n");
	mov	dptr,#_sioTXStr_PARM_2
	mov	a,#___str_4
	movx	@dptr,a
	mov	a,#(___str_4 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	mov	r0,#_sioTXStr
	mov	r1,#(_sioTXStr >> 8)
	mov	r2,#(_sioTXStr >> 16)
	lcall	__sdcc_banked_call
	sjmp	00106$
00105$:
;	fat.c:32: sioTXStr(0, "f_open failed\r\n");
	mov	dptr,#_sioTXStr_PARM_2
	mov	a,#___str_5
	movx	@dptr,a
	mov	a,#(___str_5 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	mov	r0,#_sioTXStr
	mov	r1,#(_sioTXStr >> 8)
	mov	r2,#(_sioTXStr >> 16)
	lcall	__sdcc_banked_call
00106$:
;	fat.c:35: res = f_read(&fil, buf, SECTOR_SIZE, &br);
	mov	dptr,#_fatfsTest_buf_65536_56
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dptr,#_f_read_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_read_PARM_3
	clr	a
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_read_PARM_4
	mov	a,#_fatfsTest_br_65536_57
	movx	@dptr,a
	mov	a,#(_fatfsTest_br_65536_57 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_fil
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_f_read
	mov	r1,#(_f_read >> 8)
	mov	r2,#(_f_read >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_res
	mov	a,r4
	movx	@dptr,a
;	fat.c:36: if(res==FR_OK)
	mov	a,r4
	jnz	00108$
;	fat.c:38: sioTXStr(0, "f_read OK\r\n");
	mov	dptr,#_sioTXStr_PARM_2
	mov	a,#___str_6
	movx	@dptr,a
	mov	a,#(___str_6 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_sioTXStr
	mov	r1,#(_sioTXStr >> 8)
	mov	r2,#(_sioTXStr >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	fat.c:39: sioTXBuf(0, buf, br);
	mov	dptr,#_fatfsTest_br_65536_57
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
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
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	mov	r0,#_sioTXBuf
	mov	r1,#(_sioTXBuf >> 8)
	mov	r2,#(_sioTXBuf >> 16)
	lcall	__sdcc_banked_call
	sjmp	00109$
00108$:
;	fat.c:43: sioTXStr(0, "f_read failed\r\n");
	mov	dptr,#_sioTXStr_PARM_2
	mov	a,#___str_7
	movx	@dptr,a
	mov	a,#(___str_7 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	mov	r0,#_sioTXStr
	mov	r1,#(_sioTXStr >> 8)
	mov	r2,#(_sioTXStr >> 16)
	lcall	__sdcc_banked_call
00109$:
;	fat.c:46: res = f_close(&fil);
	mov	dptr,#_fil
	mov	b,#0x00
	mov	r0,#_f_close
	mov	r1,#(_f_close >> 8)
	mov	r2,#(_f_close >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	dptr,#_res
	movx	@dptr,a
;	fat.c:48: return br;
	mov	dptr,#_fatfsTest_br_65536_57
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
;	fat.c:49: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "0:"
	.db 0x00
___str_1:
	.ascii "f_mount OK"
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_2:
	.ascii "f_mount failed"
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_3:
	.ascii "1.txt"
	.db 0x00
___str_4:
	.ascii "f_open OK"
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_5:
	.ascii "f_open failed"
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_6:
	.ascii "f_read OK"
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_7:
	.ascii "f_read failed"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
__xinit__filename:
	.byte ___str_3, (___str_3 >> 8),#0x80
	.area CABS    (ABS,CODE)
