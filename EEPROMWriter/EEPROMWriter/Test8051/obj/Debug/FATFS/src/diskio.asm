;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW32)
;--------------------------------------------------------
	.module diskio
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ff_memfree
	.globl _ff_memalloc
	.globl _get_fattime
	.globl _cfReadSector
	.globl _cfInit
	.globl _free
	.globl _malloc
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
	.globl _disk_ioctl_PARM_3
	.globl _disk_ioctl_PARM_2
	.globl _disk_write_PARM_4
	.globl _disk_write_PARM_3
	.globl _disk_write_PARM_2
	.globl _disk_read_PARM_4
	.globl _disk_read_PARM_3
	.globl _disk_read_PARM_2
	.globl _disk_initialize
	.globl _disk_status
	.globl _disk_read
	.globl _disk_write
	.globl _disk_ioctl
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
_disk_read_sloc0_1_0:
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
_disk_initialize_pdrv_65536_38:
	.ds 1
_disk_status_pdrv_65536_41:
	.ds 1
_disk_read_PARM_2:
	.ds 3
_disk_read_PARM_3:
	.ds 4
_disk_read_PARM_4:
	.ds 2
_disk_read_pdrv_65536_44:
	.ds 1
_disk_write_PARM_2:
	.ds 3
_disk_write_PARM_3:
	.ds 4
_disk_write_PARM_4:
	.ds 2
_disk_write_pdrv_65536_47:
	.ds 1
_disk_ioctl_PARM_2:
	.ds 1
_disk_ioctl_PARM_3:
	.ds 3
_disk_ioctl_pdrv_65536_50:
	.ds 1
_disk_ioctl_res_65536_51:
	.ds 1
_ff_memalloc_size_65536_65:
	.ds 2
_ff_memfree_mf_65536_67:
	.ds 3
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
;Allocation info for local variables in function 'disk_initialize'
;------------------------------------------------------------
;pdrv                      Allocated with name '_disk_initialize_pdrv_65536_38'
;------------------------------------------------------------
;	FATFS\src\diskio.c:23: DSTATUS disk_initialize(BYTE pdrv)
;	-----------------------------------------
;	 function disk_initialize
;	-----------------------------------------
_disk_initialize:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_disk_initialize_pdrv_65536_38
	movx	@dptr,a
;	FATFS\src\diskio.c:25: switch (pdrv)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x04
	jc	00102$
	mov	a,r7
	add	a,r7
;	FATFS\src\diskio.c:28: case COMPACT_FLASH:
	mov	dptr,#00115$
	jmp	@a+dptr
00115$:
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
	sjmp	00105$
	sjmp	00106$
00102$:
;	FATFS\src\diskio.c:30: cfInit(0);
	mov	dpl,#0x00
	mov	r0,#_cfInit
	mov	r1,#(_cfInit >> 8)
	mov	r2,#(_cfInit >> 16)
	lcall	__sdcc_banked_call
;	FATFS\src\diskio.c:31: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:33: case SIO_DRIVE_0:
	sjmp	00108$
00103$:
;	FATFS\src\diskio.c:34: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:36: case SIO_DRIVE_1:
	sjmp	00108$
00104$:
;	FATFS\src\diskio.c:37: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:39: case SIO_DRIVE_2:
	sjmp	00108$
00105$:
;	FATFS\src\diskio.c:40: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:42: case SIO_DRIVE_3:
	sjmp	00108$
00106$:
;	FATFS\src\diskio.c:43: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:44: };
00108$:
;	FATFS\src\diskio.c:45: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disk_status'
;------------------------------------------------------------
;pdrv                      Allocated with name '_disk_status_pdrv_65536_41'
;------------------------------------------------------------
;	FATFS\src\diskio.c:51: DSTATUS disk_status (
;	-----------------------------------------
;	 function disk_status
;	-----------------------------------------
_disk_status:
	mov	a,dpl
	mov	dptr,#_disk_status_pdrv_65536_41
	movx	@dptr,a
;	FATFS\src\diskio.c:55: switch (pdrv)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00125$
	sjmp	00102$
00125$:
	cjne	r7,#0x02,00126$
	sjmp	00103$
00126$:
	cjne	r7,#0x03,00127$
	sjmp	00104$
00127$:
	cjne	r7,#0x04,00128$
	sjmp	00105$
00128$:
;	FATFS\src\diskio.c:58: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:60: case SIO_DRIVE_0:
	sjmp	00107$
00102$:
;	FATFS\src\diskio.c:61: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:63: case SIO_DRIVE_1:
	sjmp	00107$
00103$:
;	FATFS\src\diskio.c:64: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:66: case SIO_DRIVE_2:
	sjmp	00107$
00104$:
;	FATFS\src\diskio.c:67: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:69: case SIO_DRIVE_3:
	sjmp	00107$
00105$:
;	FATFS\src\diskio.c:70: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:71: };
00107$:
;	FATFS\src\diskio.c:72: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disk_read'
;------------------------------------------------------------
;sloc0                     Allocated with name '_disk_read_sloc0_1_0'
;buff                      Allocated with name '_disk_read_PARM_2'
;sector                    Allocated with name '_disk_read_PARM_3'
;count                     Allocated with name '_disk_read_PARM_4'
;pdrv                      Allocated with name '_disk_read_pdrv_65536_44'
;------------------------------------------------------------
;	FATFS\src\diskio.c:80: DRESULT disk_read (
;	-----------------------------------------
;	 function disk_read
;	-----------------------------------------
_disk_read:
	mov	a,dpl
	mov	dptr,#_disk_read_pdrv_65536_44
	movx	@dptr,a
;	FATFS\src\diskio.c:87: switch (pdrv)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x04
	jc	00102$
	mov	a,r7
	add	a,r7
;	FATFS\src\diskio.c:90: case COMPACT_FLASH:
	mov	dptr,#00115$
	jmp	@a+dptr
00115$:
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
	sjmp	00105$
	sjmp	00106$
00102$:
;	FATFS\src\diskio.c:91: cfReadSector(0, buff, sector, count);
	mov	dptr,#_disk_read_PARM_2
	movx	a,@dptr
	mov	_disk_read_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_disk_read_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_disk_read_sloc0_1_0 + 2),a
	mov	dptr,#_disk_read_PARM_3
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_disk_read_PARM_4
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_cfReadSector_PARM_2
	mov	a,_disk_read_sloc0_1_0
	movx	@dptr,a
	mov	a,(_disk_read_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_disk_read_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_cfReadSector_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_cfReadSector_PARM_4
	mov	a,r0
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	mov	r0,#_cfReadSector
	mov	r1,#(_cfReadSector >> 8)
	mov	r2,#(_cfReadSector >> 16)
	lcall	__sdcc_banked_call
;	FATFS\src\diskio.c:93: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:95: case SIO_DRIVE_0:
	sjmp	00108$
00103$:
;	FATFS\src\diskio.c:96: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:98: case SIO_DRIVE_1:
	sjmp	00108$
00104$:
;	FATFS\src\diskio.c:99: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:101: case SIO_DRIVE_2:
	sjmp	00108$
00105$:
;	FATFS\src\diskio.c:102: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:104: case SIO_DRIVE_3:
	sjmp	00108$
00106$:
;	FATFS\src\diskio.c:105: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:106: };
00108$:
;	FATFS\src\diskio.c:107: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disk_write'
;------------------------------------------------------------
;buff                      Allocated with name '_disk_write_PARM_2'
;sector                    Allocated with name '_disk_write_PARM_3'
;count                     Allocated with name '_disk_write_PARM_4'
;pdrv                      Allocated with name '_disk_write_pdrv_65536_47'
;------------------------------------------------------------
;	FATFS\src\diskio.c:116: DRESULT disk_write (
;	-----------------------------------------
;	 function disk_write
;	-----------------------------------------
_disk_write:
	mov	a,dpl
	mov	dptr,#_disk_write_pdrv_65536_47
	movx	@dptr,a
;	FATFS\src\diskio.c:123: switch (pdrv)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x04
	jc	00102$
	mov	a,r7
	add	a,r7
;	FATFS\src\diskio.c:126: case COMPACT_FLASH:
	mov	dptr,#00115$
	jmp	@a+dptr
00115$:
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
	sjmp	00105$
	sjmp	00106$
00102$:
;	FATFS\src\diskio.c:129: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:131: case SIO_DRIVE_0:
	sjmp	00108$
00103$:
;	FATFS\src\diskio.c:132: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:134: case SIO_DRIVE_1:
	sjmp	00108$
00104$:
;	FATFS\src\diskio.c:135: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:137: case SIO_DRIVE_2:
	sjmp	00108$
00105$:
;	FATFS\src\diskio.c:138: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:140: case SIO_DRIVE_3:
	sjmp	00108$
00106$:
;	FATFS\src\diskio.c:141: return RES_OK;
	mov	dpl,#0x00
;	FATFS\src\diskio.c:142: };
00108$:
;	FATFS\src\diskio.c:150: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disk_ioctl'
;------------------------------------------------------------
;cmd                       Allocated with name '_disk_ioctl_PARM_2'
;buff                      Allocated with name '_disk_ioctl_PARM_3'
;pdrv                      Allocated with name '_disk_ioctl_pdrv_65536_50'
;res                       Allocated with name '_disk_ioctl_res_65536_51'
;------------------------------------------------------------
;	FATFS\src\diskio.c:159: DRESULT disk_ioctl (
;	-----------------------------------------
;	 function disk_ioctl
;	-----------------------------------------
_disk_ioctl:
	mov	a,dpl
	mov	dptr,#_disk_ioctl_pdrv_65536_50
	movx	@dptr,a
;	FATFS\src\diskio.c:167: switch (pdrv)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x04
	jc	00102$
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00165$
	jmp	@a+dptr
00165$:
	ljmp	00102$
	ljmp	00109$
	ljmp	00116$
	ljmp	00123$
	ljmp	00130$
;	FATFS\src\diskio.c:170: case COMPACT_FLASH:
00102$:
;	FATFS\src\diskio.c:172: switch(cmd)
	mov	dptr,#_disk_ioctl_PARM_2
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x03
	jnc	00166$
	ljmp	00107$
00166$:
	mov	a,r7
	add	a,r7
;	FATFS\src\diskio.c:174: case CTRL_SYNC:
	mov	dptr,#00167$
	jmp	@a+dptr
00167$:
	sjmp	00103$
	sjmp	00106$
	sjmp	00104$
	sjmp	00105$
00103$:
;	FATFS\src\diskio.c:175: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	clr	a
	movx	@dptr,a
;	FATFS\src\diskio.c:176: break;
	ljmp	00137$
;	FATFS\src\diskio.c:177: case GET_SECTOR_SIZE:
00104$:
;	FATFS\src\diskio.c:178: *(DWORD*)buff=512;
	mov	dptr,#_disk_ioctl_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	a,#0x02
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\diskio.c:179: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	movx	@dptr,a
;	FATFS\src\diskio.c:180: break;
	ljmp	00137$
;	FATFS\src\diskio.c:181: case GET_BLOCK_SIZE:
00105$:
;	FATFS\src\diskio.c:182: *(DWORD*)buff=8;
	mov	dptr,#_disk_ioctl_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\diskio.c:183: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	movx	@dptr,a
;	FATFS\src\diskio.c:184: break;
	ljmp	00137$
;	FATFS\src\diskio.c:185: case GET_SECTOR_COUNT:
00106$:
;	FATFS\src\diskio.c:186: *(DWORD*)buff = 10000;//SD_GetSectorCount();
	mov	dptr,#_disk_ioctl_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x10
	lcall	__gptrput
	inc	dptr
	mov	a,#0x27
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\diskio.c:187: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	movx	@dptr,a
;	FATFS\src\diskio.c:188: break;
	ljmp	00137$
;	FATFS\src\diskio.c:189: default:
00107$:
;	FATFS\src\diskio.c:190: res = RES_PARERR;
	mov	dptr,#_disk_ioctl_res_65536_51
	mov	a,#0x04
	movx	@dptr,a
;	FATFS\src\diskio.c:194: break;
	ljmp	00137$
;	FATFS\src\diskio.c:196: case SIO_DRIVE_0:
00109$:
;	FATFS\src\diskio.c:198: switch(cmd)
	mov	dptr,#_disk_ioctl_PARM_2
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x03
	jnc	00168$
	ljmp	00114$
00168$:
	mov	a,r7
	add	a,r7
;	FATFS\src\diskio.c:200: case CTRL_SYNC:
	mov	dptr,#00169$
	jmp	@a+dptr
00169$:
	sjmp	00110$
	sjmp	00113$
	sjmp	00111$
	sjmp	00112$
00110$:
;	FATFS\src\diskio.c:201: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	clr	a
	movx	@dptr,a
;	FATFS\src\diskio.c:202: break;
	ljmp	00137$
;	FATFS\src\diskio.c:203: case GET_SECTOR_SIZE:
00111$:
;	FATFS\src\diskio.c:204: *(DWORD*)buff=512;
	mov	dptr,#_disk_ioctl_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	a,#0x02
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\diskio.c:205: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	movx	@dptr,a
;	FATFS\src\diskio.c:206: break;
	ljmp	00137$
;	FATFS\src\diskio.c:207: case GET_BLOCK_SIZE:
00112$:
;	FATFS\src\diskio.c:208: *(DWORD*)buff=8;
	mov	dptr,#_disk_ioctl_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\diskio.c:209: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	movx	@dptr,a
;	FATFS\src\diskio.c:210: break;
	ljmp	00137$
;	FATFS\src\diskio.c:211: case GET_SECTOR_COUNT:
00113$:
;	FATFS\src\diskio.c:212: *(DWORD*)buff = 10000;// SD_GetSectorCount();
	mov	dptr,#_disk_ioctl_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x10
	lcall	__gptrput
	inc	dptr
	mov	a,#0x27
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\diskio.c:213: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	movx	@dptr,a
;	FATFS\src\diskio.c:214: break;
	ljmp	00137$
;	FATFS\src\diskio.c:215: default:
00114$:
;	FATFS\src\diskio.c:216: res = RES_PARERR;
	mov	dptr,#_disk_ioctl_res_65536_51
	mov	a,#0x04
	movx	@dptr,a
;	FATFS\src\diskio.c:220: break;
	ljmp	00137$
;	FATFS\src\diskio.c:222: case SIO_DRIVE_1:
00116$:
;	FATFS\src\diskio.c:224: switch(cmd)
	mov	dptr,#_disk_ioctl_PARM_2
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x03
	jnc	00170$
	ljmp	00121$
00170$:
	mov	a,r7
	add	a,r7
;	FATFS\src\diskio.c:226: case CTRL_SYNC:
	mov	dptr,#00171$
	jmp	@a+dptr
00171$:
	sjmp	00117$
	sjmp	00120$
	sjmp	00118$
	sjmp	00119$
00117$:
;	FATFS\src\diskio.c:227: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	clr	a
	movx	@dptr,a
;	FATFS\src\diskio.c:228: break;
	ljmp	00137$
;	FATFS\src\diskio.c:229: case GET_SECTOR_SIZE:
00118$:
;	FATFS\src\diskio.c:230: *(DWORD*)buff=512;
	mov	dptr,#_disk_ioctl_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	a,#0x02
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\diskio.c:231: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	movx	@dptr,a
;	FATFS\src\diskio.c:232: break;
	ljmp	00137$
;	FATFS\src\diskio.c:233: case GET_BLOCK_SIZE:
00119$:
;	FATFS\src\diskio.c:234: *(DWORD*)buff=8;
	mov	dptr,#_disk_ioctl_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\diskio.c:235: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	movx	@dptr,a
;	FATFS\src\diskio.c:236: break;
	ljmp	00137$
;	FATFS\src\diskio.c:237: case GET_SECTOR_COUNT:
00120$:
;	FATFS\src\diskio.c:238: *(DWORD*)buff = 10000;// SD_GetSectorCount();
	mov	dptr,#_disk_ioctl_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x10
	lcall	__gptrput
	inc	dptr
	mov	a,#0x27
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\diskio.c:239: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	movx	@dptr,a
;	FATFS\src\diskio.c:240: break;
	ljmp	00137$
;	FATFS\src\diskio.c:241: default:
00121$:
;	FATFS\src\diskio.c:242: res = RES_PARERR;
	mov	dptr,#_disk_ioctl_res_65536_51
	mov	a,#0x04
	movx	@dptr,a
;	FATFS\src\diskio.c:246: break;
	ljmp	00137$
;	FATFS\src\diskio.c:248: case SIO_DRIVE_2:
00123$:
;	FATFS\src\diskio.c:250: switch(cmd)
	mov	dptr,#_disk_ioctl_PARM_2
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x03
	jnc	00172$
	ljmp	00128$
00172$:
	mov	a,r7
	add	a,r7
;	FATFS\src\diskio.c:252: case CTRL_SYNC:
	mov	dptr,#00173$
	jmp	@a+dptr
00173$:
	sjmp	00124$
	sjmp	00127$
	sjmp	00125$
	sjmp	00126$
00124$:
;	FATFS\src\diskio.c:253: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	clr	a
	movx	@dptr,a
;	FATFS\src\diskio.c:254: break;
	ljmp	00137$
;	FATFS\src\diskio.c:255: case GET_SECTOR_SIZE:
00125$:
;	FATFS\src\diskio.c:256: *(DWORD*)buff=512;
	mov	dptr,#_disk_ioctl_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	a,#0x02
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\diskio.c:257: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	movx	@dptr,a
;	FATFS\src\diskio.c:258: break;
	ljmp	00137$
;	FATFS\src\diskio.c:259: case GET_BLOCK_SIZE:
00126$:
;	FATFS\src\diskio.c:260: *(DWORD*)buff=8;
	mov	dptr,#_disk_ioctl_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\diskio.c:261: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	movx	@dptr,a
;	FATFS\src\diskio.c:262: break;
	ljmp	00137$
;	FATFS\src\diskio.c:263: case GET_SECTOR_COUNT:
00127$:
;	FATFS\src\diskio.c:264: *(DWORD*)buff = 10000;// SD_GetSectorCount();
	mov	dptr,#_disk_ioctl_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x10
	lcall	__gptrput
	inc	dptr
	mov	a,#0x27
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\diskio.c:265: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	movx	@dptr,a
;	FATFS\src\diskio.c:266: break;
	ljmp	00137$
;	FATFS\src\diskio.c:267: default:
00128$:
;	FATFS\src\diskio.c:268: res = RES_PARERR;
	mov	dptr,#_disk_ioctl_res_65536_51
	mov	a,#0x04
	movx	@dptr,a
;	FATFS\src\diskio.c:272: break;
	ljmp	00137$
;	FATFS\src\diskio.c:274: case SIO_DRIVE_3:
00130$:
;	FATFS\src\diskio.c:276: switch(cmd)
	mov	dptr,#_disk_ioctl_PARM_2
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x03
	jnc	00174$
	ljmp	00135$
00174$:
	mov	a,r7
	add	a,r7
;	FATFS\src\diskio.c:278: case CTRL_SYNC:
	mov	dptr,#00175$
	jmp	@a+dptr
00175$:
	sjmp	00131$
	sjmp	00134$
	sjmp	00132$
	sjmp	00133$
00131$:
;	FATFS\src\diskio.c:279: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	clr	a
	movx	@dptr,a
;	FATFS\src\diskio.c:280: break;
	ljmp	00137$
;	FATFS\src\diskio.c:281: case GET_SECTOR_SIZE:
00132$:
;	FATFS\src\diskio.c:282: *(DWORD*)buff=512;
	mov	dptr,#_disk_ioctl_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	a,#0x02
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\diskio.c:283: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	movx	@dptr,a
;	FATFS\src\diskio.c:284: break;
;	FATFS\src\diskio.c:285: case GET_BLOCK_SIZE:
	sjmp	00137$
00133$:
;	FATFS\src\diskio.c:286: *(DWORD*)buff=8;
	mov	dptr,#_disk_ioctl_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\diskio.c:287: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	movx	@dptr,a
;	FATFS\src\diskio.c:288: break;
;	FATFS\src\diskio.c:289: case GET_SECTOR_COUNT:
	sjmp	00137$
00134$:
;	FATFS\src\diskio.c:290: *(DWORD*)buff = 10000;// SD_GetSectorCount();
	mov	dptr,#_disk_ioctl_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x10
	lcall	__gptrput
	inc	dptr
	mov	a,#0x27
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\diskio.c:291: res=RES_OK;
	mov	dptr,#_disk_ioctl_res_65536_51
	movx	@dptr,a
;	FATFS\src\diskio.c:292: break;
;	FATFS\src\diskio.c:293: default:
	sjmp	00137$
00135$:
;	FATFS\src\diskio.c:294: res = RES_PARERR;
	mov	dptr,#_disk_ioctl_res_65536_51
	mov	a,#0x04
	movx	@dptr,a
;	FATFS\src\diskio.c:299: }
00137$:
;	FATFS\src\diskio.c:307: return res;
	mov	dptr,#_disk_ioctl_res_65536_51
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
;	FATFS\src\diskio.c:308: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_fattime'
;------------------------------------------------------------
;	FATFS\src\diskio.c:310: DWORD get_fattime (void)
;	-----------------------------------------
;	 function get_fattime
;	-----------------------------------------
_get_fattime:
;	FATFS\src\diskio.c:312: return 0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
;	FATFS\src\diskio.c:313: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ff_memalloc'
;------------------------------------------------------------
;size                      Allocated with name '_ff_memalloc_size_65536_65'
;------------------------------------------------------------
;	FATFS\src\diskio.c:315: void *ff_memalloc (UINT size)
;	-----------------------------------------
;	 function ff_memalloc
;	-----------------------------------------
_ff_memalloc:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_ff_memalloc_size_65536_65
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\diskio.c:317: return malloc(size);
	mov	dptr,#_ff_memalloc_size_65536_65
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	r0,#_malloc
	mov	r1,#(_malloc >> 8)
	mov	r2,#(_malloc >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
;	FATFS\src\diskio.c:318: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ff_memfree'
;------------------------------------------------------------
;mf                        Allocated with name '_ff_memfree_mf_65536_67'
;------------------------------------------------------------
;	FATFS\src\diskio.c:320: void ff_memfree (void* mf)
;	-----------------------------------------
;	 function ff_memfree
;	-----------------------------------------
_ff_memfree:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ff_memfree_mf_65536_67
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\diskio.c:322: free(mf);
	mov	dptr,#_ff_memfree_mf_65536_67
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_free
	mov	r1,#(_free >> 8)
	mov	r2,#(_free >> 16)
	lcall	__sdcc_banked_call
;	FATFS\src\diskio.c:323: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
