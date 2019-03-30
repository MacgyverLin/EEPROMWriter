                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module diskio
                                      6 	.optsdcc -mmcs51 --model-huge
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ff_memfree
                                     12 	.globl _ff_memalloc
                                     13 	.globl _get_fattime
                                     14 	.globl _cfReadSector
                                     15 	.globl _cfInit
                                     16 	.globl _free
                                     17 	.globl _malloc
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _F1
                                     25 	.globl _P
                                     26 	.globl _PS
                                     27 	.globl _PT1
                                     28 	.globl _PX1
                                     29 	.globl _PT0
                                     30 	.globl _PX0
                                     31 	.globl _RD
                                     32 	.globl _WR
                                     33 	.globl _T1
                                     34 	.globl _T0
                                     35 	.globl _INT1
                                     36 	.globl _INT0
                                     37 	.globl _TXD
                                     38 	.globl _RXD
                                     39 	.globl _P3_7
                                     40 	.globl _P3_6
                                     41 	.globl _P3_5
                                     42 	.globl _P3_4
                                     43 	.globl _P3_3
                                     44 	.globl _P3_2
                                     45 	.globl _P3_1
                                     46 	.globl _P3_0
                                     47 	.globl _EA
                                     48 	.globl _ES
                                     49 	.globl _ET1
                                     50 	.globl _EX1
                                     51 	.globl _ET0
                                     52 	.globl _EX0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _SM0
                                     62 	.globl _SM1
                                     63 	.globl _SM2
                                     64 	.globl _REN
                                     65 	.globl _TB8
                                     66 	.globl _RB8
                                     67 	.globl _TI
                                     68 	.globl _RI
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _TF1
                                     78 	.globl _TR1
                                     79 	.globl _TF0
                                     80 	.globl _TR0
                                     81 	.globl _IE1
                                     82 	.globl _IT1
                                     83 	.globl _IE0
                                     84 	.globl _IT0
                                     85 	.globl _P0_7
                                     86 	.globl _P0_6
                                     87 	.globl _P0_5
                                     88 	.globl _P0_4
                                     89 	.globl _P0_3
                                     90 	.globl _P0_2
                                     91 	.globl _P0_1
                                     92 	.globl _P0_0
                                     93 	.globl _B
                                     94 	.globl _ACC
                                     95 	.globl _PSW
                                     96 	.globl _IP
                                     97 	.globl _P3
                                     98 	.globl _IE
                                     99 	.globl _P2
                                    100 	.globl _SBUF
                                    101 	.globl _SCON
                                    102 	.globl _P1
                                    103 	.globl _TH1
                                    104 	.globl _TH0
                                    105 	.globl _TL1
                                    106 	.globl _TL0
                                    107 	.globl _TMOD
                                    108 	.globl _TCON
                                    109 	.globl _PCON
                                    110 	.globl _DPH
                                    111 	.globl _DPL
                                    112 	.globl _SP
                                    113 	.globl _P0
                                    114 	.globl _disk_initialize
                                    115 	.globl _disk_status
                                    116 	.globl _disk_read
                                    117 	.globl _disk_write
                                    118 	.globl _disk_ioctl
                                    119 ;--------------------------------------------------------
                                    120 ; special function registers
                                    121 ;--------------------------------------------------------
                                    122 	.area RSEG    (ABS,DATA)
      000000                        123 	.org 0x0000
                           000080   124 _P0	=	0x0080
                           000081   125 _SP	=	0x0081
                           000082   126 _DPL	=	0x0082
                           000083   127 _DPH	=	0x0083
                           000087   128 _PCON	=	0x0087
                           000088   129 _TCON	=	0x0088
                           000089   130 _TMOD	=	0x0089
                           00008A   131 _TL0	=	0x008a
                           00008B   132 _TL1	=	0x008b
                           00008C   133 _TH0	=	0x008c
                           00008D   134 _TH1	=	0x008d
                           000090   135 _P1	=	0x0090
                           000098   136 _SCON	=	0x0098
                           000099   137 _SBUF	=	0x0099
                           0000A0   138 _P2	=	0x00a0
                           0000A8   139 _IE	=	0x00a8
                           0000B0   140 _P3	=	0x00b0
                           0000B8   141 _IP	=	0x00b8
                           0000D0   142 _PSW	=	0x00d0
                           0000E0   143 _ACC	=	0x00e0
                           0000F0   144 _B	=	0x00f0
                                    145 ;--------------------------------------------------------
                                    146 ; special function bits
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 _P0_0	=	0x0080
                           000081   151 _P0_1	=	0x0081
                           000082   152 _P0_2	=	0x0082
                           000083   153 _P0_3	=	0x0083
                           000084   154 _P0_4	=	0x0084
                           000085   155 _P0_5	=	0x0085
                           000086   156 _P0_6	=	0x0086
                           000087   157 _P0_7	=	0x0087
                           000088   158 _IT0	=	0x0088
                           000089   159 _IE0	=	0x0089
                           00008A   160 _IT1	=	0x008a
                           00008B   161 _IE1	=	0x008b
                           00008C   162 _TR0	=	0x008c
                           00008D   163 _TF0	=	0x008d
                           00008E   164 _TR1	=	0x008e
                           00008F   165 _TF1	=	0x008f
                           000090   166 _P1_0	=	0x0090
                           000091   167 _P1_1	=	0x0091
                           000092   168 _P1_2	=	0x0092
                           000093   169 _P1_3	=	0x0093
                           000094   170 _P1_4	=	0x0094
                           000095   171 _P1_5	=	0x0095
                           000096   172 _P1_6	=	0x0096
                           000097   173 _P1_7	=	0x0097
                           000098   174 _RI	=	0x0098
                           000099   175 _TI	=	0x0099
                           00009A   176 _RB8	=	0x009a
                           00009B   177 _TB8	=	0x009b
                           00009C   178 _REN	=	0x009c
                           00009D   179 _SM2	=	0x009d
                           00009E   180 _SM1	=	0x009e
                           00009F   181 _SM0	=	0x009f
                           0000A0   182 _P2_0	=	0x00a0
                           0000A1   183 _P2_1	=	0x00a1
                           0000A2   184 _P2_2	=	0x00a2
                           0000A3   185 _P2_3	=	0x00a3
                           0000A4   186 _P2_4	=	0x00a4
                           0000A5   187 _P2_5	=	0x00a5
                           0000A6   188 _P2_6	=	0x00a6
                           0000A7   189 _P2_7	=	0x00a7
                           0000A8   190 _EX0	=	0x00a8
                           0000A9   191 _ET0	=	0x00a9
                           0000AA   192 _EX1	=	0x00aa
                           0000AB   193 _ET1	=	0x00ab
                           0000AC   194 _ES	=	0x00ac
                           0000AF   195 _EA	=	0x00af
                           0000B0   196 _P3_0	=	0x00b0
                           0000B1   197 _P3_1	=	0x00b1
                           0000B2   198 _P3_2	=	0x00b2
                           0000B3   199 _P3_3	=	0x00b3
                           0000B4   200 _P3_4	=	0x00b4
                           0000B5   201 _P3_5	=	0x00b5
                           0000B6   202 _P3_6	=	0x00b6
                           0000B7   203 _P3_7	=	0x00b7
                           0000B0   204 _RXD	=	0x00b0
                           0000B1   205 _TXD	=	0x00b1
                           0000B2   206 _INT0	=	0x00b2
                           0000B3   207 _INT1	=	0x00b3
                           0000B4   208 _T0	=	0x00b4
                           0000B5   209 _T1	=	0x00b5
                           0000B6   210 _WR	=	0x00b6
                           0000B7   211 _RD	=	0x00b7
                           0000B8   212 _PX0	=	0x00b8
                           0000B9   213 _PT0	=	0x00b9
                           0000BA   214 _PX1	=	0x00ba
                           0000BB   215 _PT1	=	0x00bb
                           0000BC   216 _PS	=	0x00bc
                           0000D0   217 _P	=	0x00d0
                           0000D1   218 _F1	=	0x00d1
                           0000D2   219 _OV	=	0x00d2
                           0000D3   220 _RS0	=	0x00d3
                           0000D4   221 _RS1	=	0x00d4
                           0000D5   222 _F0	=	0x00d5
                           0000D6   223 _AC	=	0x00d6
                           0000D7   224 _CY	=	0x00d7
                                    225 ;--------------------------------------------------------
                                    226 ; overlayable register banks
                                    227 ;--------------------------------------------------------
                                    228 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        229 	.ds 8
                                    230 ;--------------------------------------------------------
                                    231 ; internal ram data
                                    232 ;--------------------------------------------------------
                                    233 	.area DSEG    (DATA)
                                    234 ;--------------------------------------------------------
                                    235 ; overlayable items in internal ram 
                                    236 ;--------------------------------------------------------
                                    237 ;--------------------------------------------------------
                                    238 ; indirectly addressable internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area ISEG    (DATA)
                                    241 ;--------------------------------------------------------
                                    242 ; absolute internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area IABS    (ABS,DATA)
                                    245 	.area IABS    (ABS,DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; bit data
                                    248 ;--------------------------------------------------------
                                    249 	.area BSEG    (BIT)
                                    250 ;--------------------------------------------------------
                                    251 ; paged external ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area PSEG    (PAG,XDATA)
                                    254 ;--------------------------------------------------------
                                    255 ; external ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area XSEG    (XDATA)
                                    258 ;--------------------------------------------------------
                                    259 ; absolute external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area XABS    (ABS,XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; external initialized ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XISEG   (XDATA)
                                    266 	.area HOME    (CODE)
                                    267 	.area GSINIT0 (CODE)
                                    268 	.area GSINIT1 (CODE)
                                    269 	.area GSINIT2 (CODE)
                                    270 	.area GSINIT3 (CODE)
                                    271 	.area GSINIT4 (CODE)
                                    272 	.area GSINIT5 (CODE)
                                    273 	.area GSINIT  (CODE)
                                    274 	.area GSFINAL (CODE)
                                    275 	.area CSEG    (CODE)
                                    276 ;--------------------------------------------------------
                                    277 ; global & static initialisations
                                    278 ;--------------------------------------------------------
                                    279 	.area HOME    (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 	.area GSFINAL (CODE)
                                    282 	.area GSINIT  (CODE)
                                    283 ;--------------------------------------------------------
                                    284 ; Home
                                    285 ;--------------------------------------------------------
                                    286 	.area HOME    (CODE)
                                    287 	.area HOME    (CODE)
                                    288 ;--------------------------------------------------------
                                    289 ; code
                                    290 ;--------------------------------------------------------
                                    291 	.area CSEG    (CODE)
                                    292 ;------------------------------------------------------------
                                    293 ;Allocation info for local variables in function 'disk_initialize'
                                    294 ;------------------------------------------------------------
                                    295 ;pdrv                      Allocated to registers r7 
                                    296 ;------------------------------------------------------------
                                    297 ;	FATFS\src\diskio.c:23: DSTATUS disk_initialize(BYTE pdrv)
                                    298 ;	-----------------------------------------
                                    299 ;	 function disk_initialize
                                    300 ;	-----------------------------------------
      0006F3                        301 _disk_initialize:
                           000007   302 	ar7 = 0x07
                           000006   303 	ar6 = 0x06
                           000005   304 	ar5 = 0x05
                           000004   305 	ar4 = 0x04
                           000003   306 	ar3 = 0x03
                           000002   307 	ar2 = 0x02
                           000001   308 	ar1 = 0x01
                           000000   309 	ar0 = 0x00
                                    310 ;	FATFS\src\diskio.c:25: switch (pdrv)
      0006F3 E5 82            [12]  311 	mov	a,dpl
      0006F5 FF               [12]  312 	mov	r7,a
      0006F6 24 FB            [12]  313 	add	a,#0xff - 0x04
      0006F8 40 10            [24]  314 	jc	00102$
      0006FA EF               [12]  315 	mov	a,r7
      0006FB 2F               [12]  316 	add	a,r7
                                    317 ;	FATFS\src\diskio.c:28: case COMPACT_FLASH:
      0006FC 90 07 00         [24]  318 	mov	dptr,#00115$
      0006FF 73               [24]  319 	jmp	@a+dptr
      000700                        320 00115$:
      000700 80 08            [24]  321 	sjmp	00102$
      000702 80 17            [24]  322 	sjmp	00103$
      000704 80 1A            [24]  323 	sjmp	00104$
      000706 80 1D            [24]  324 	sjmp	00105$
      000708 80 20            [24]  325 	sjmp	00106$
      00070A                        326 00102$:
                                    327 ;	FATFS\src\diskio.c:30: cfInit(0);
      00070A 75 82 00         [24]  328 	mov	dpl,#0x00
      00070D 78 09            [12]  329 	mov	r0,#_cfInit
      00070F 79 00            [12]  330 	mov	r1,#(_cfInit >> 8)
      000711 7A 00            [12]  331 	mov	r2,#(_cfInit >> 16)
      000713 12 00 00         [24]  332 	lcall	__sdcc_banked_call
                                    333 ;	FATFS\src\diskio.c:31: return RES_OK;
      000716 75 82 00         [24]  334 	mov	dpl,#0x00
                                    335 ;	FATFS\src\diskio.c:33: case SIO_DRIVE_0:
      000719 80 12            [24]  336 	sjmp	00108$
      00071B                        337 00103$:
                                    338 ;	FATFS\src\diskio.c:34: return RES_OK;
      00071B 75 82 00         [24]  339 	mov	dpl,#0x00
                                    340 ;	FATFS\src\diskio.c:36: case SIO_DRIVE_1:
      00071E 80 0D            [24]  341 	sjmp	00108$
      000720                        342 00104$:
                                    343 ;	FATFS\src\diskio.c:37: return RES_OK;
      000720 75 82 00         [24]  344 	mov	dpl,#0x00
                                    345 ;	FATFS\src\diskio.c:39: case SIO_DRIVE_2:
      000723 80 08            [24]  346 	sjmp	00108$
      000725                        347 00105$:
                                    348 ;	FATFS\src\diskio.c:40: return RES_OK;
      000725 75 82 00         [24]  349 	mov	dpl,#0x00
                                    350 ;	FATFS\src\diskio.c:42: case SIO_DRIVE_3:
      000728 80 03            [24]  351 	sjmp	00108$
      00072A                        352 00106$:
                                    353 ;	FATFS\src\diskio.c:43: return RES_OK;
      00072A 75 82 00         [24]  354 	mov	dpl,#0x00
                                    355 ;	FATFS\src\diskio.c:44: };
      00072D                        356 00108$:
                                    357 ;	FATFS\src\diskio.c:45: }
      00072D 02 00 00         [24]  358 	ljmp	__sdcc_banked_ret
                                    359 ;------------------------------------------------------------
                                    360 ;Allocation info for local variables in function 'disk_status'
                                    361 ;------------------------------------------------------------
                                    362 ;pdrv                      Allocated to registers r7 
                                    363 ;------------------------------------------------------------
                                    364 ;	FATFS\src\diskio.c:51: DSTATUS disk_status (
                                    365 ;	-----------------------------------------
                                    366 ;	 function disk_status
                                    367 ;	-----------------------------------------
      000730                        368 _disk_status:
      000730 AF 82            [24]  369 	mov	r7,dpl
                                    370 ;	FATFS\src\diskio.c:55: switch (pdrv)
      000732 BF 01 02         [24]  371 	cjne	r7,#0x01,00125$
      000735 80 14            [24]  372 	sjmp	00102$
      000737                        373 00125$:
      000737 BF 02 02         [24]  374 	cjne	r7,#0x02,00126$
      00073A 80 14            [24]  375 	sjmp	00103$
      00073C                        376 00126$:
      00073C BF 03 02         [24]  377 	cjne	r7,#0x03,00127$
      00073F 80 14            [24]  378 	sjmp	00104$
      000741                        379 00127$:
      000741 BF 04 02         [24]  380 	cjne	r7,#0x04,00128$
      000744 80 14            [24]  381 	sjmp	00105$
      000746                        382 00128$:
                                    383 ;	FATFS\src\diskio.c:58: return RES_OK;
      000746 75 82 00         [24]  384 	mov	dpl,#0x00
                                    385 ;	FATFS\src\diskio.c:60: case SIO_DRIVE_0:
      000749 80 12            [24]  386 	sjmp	00107$
      00074B                        387 00102$:
                                    388 ;	FATFS\src\diskio.c:61: return RES_OK;
      00074B 75 82 00         [24]  389 	mov	dpl,#0x00
                                    390 ;	FATFS\src\diskio.c:63: case SIO_DRIVE_1:
      00074E 80 0D            [24]  391 	sjmp	00107$
      000750                        392 00103$:
                                    393 ;	FATFS\src\diskio.c:64: return RES_OK;
      000750 75 82 00         [24]  394 	mov	dpl,#0x00
                                    395 ;	FATFS\src\diskio.c:66: case SIO_DRIVE_2:
      000753 80 08            [24]  396 	sjmp	00107$
      000755                        397 00104$:
                                    398 ;	FATFS\src\diskio.c:67: return RES_OK;
      000755 75 82 00         [24]  399 	mov	dpl,#0x00
                                    400 ;	FATFS\src\diskio.c:69: case SIO_DRIVE_3:
      000758 80 03            [24]  401 	sjmp	00107$
      00075A                        402 00105$:
                                    403 ;	FATFS\src\diskio.c:70: return RES_OK;
      00075A 75 82 00         [24]  404 	mov	dpl,#0x00
                                    405 ;	FATFS\src\diskio.c:71: };
      00075D                        406 00107$:
                                    407 ;	FATFS\src\diskio.c:72: }
      00075D 02 00 00         [24]  408 	ljmp	__sdcc_banked_ret
                                    409 ;------------------------------------------------------------
                                    410 ;Allocation info for local variables in function 'disk_read'
                                    411 ;------------------------------------------------------------
                                    412 ;buff                      Allocated to stack - _bp -6
                                    413 ;sector                    Allocated to stack - _bp -10
                                    414 ;count                     Allocated to stack - _bp -12
                                    415 ;pdrv                      Allocated to registers r7 
                                    416 ;------------------------------------------------------------
                                    417 ;	FATFS\src\diskio.c:80: DRESULT disk_read (
                                    418 ;	-----------------------------------------
                                    419 ;	 function disk_read
                                    420 ;	-----------------------------------------
      000760                        421 _disk_read:
      000760 C0 00            [24]  422 	push	_bp
      000762 85 81 00         [24]  423 	mov	_bp,sp
                                    424 ;	FATFS\src\diskio.c:87: switch (pdrv)
      000765 E5 82            [12]  425 	mov	a,dpl
      000767 FF               [12]  426 	mov	r7,a
      000768 24 FB            [12]  427 	add	a,#0xff - 0x04
      00076A 40 10            [24]  428 	jc	00102$
      00076C EF               [12]  429 	mov	a,r7
      00076D 2F               [12]  430 	add	a,r7
                                    431 ;	FATFS\src\diskio.c:90: case COMPACT_FLASH:
      00076E 90 07 72         [24]  432 	mov	dptr,#00115$
      000771 73               [24]  433 	jmp	@a+dptr
      000772                        434 00115$:
      000772 80 08            [24]  435 	sjmp	00102$
      000774 80 4D            [24]  436 	sjmp	00103$
      000776 80 50            [24]  437 	sjmp	00104$
      000778 80 53            [24]  438 	sjmp	00105$
      00077A 80 56            [24]  439 	sjmp	00106$
      00077C                        440 00102$:
                                    441 ;	FATFS\src\diskio.c:91: cfReadSector(0, buff, sector, count);
      00077C E5 00            [12]  442 	mov	a,_bp
      00077E 24 F4            [12]  443 	add	a,#0xf4
      000780 F8               [12]  444 	mov	r0,a
      000781 E6               [12]  445 	mov	a,@r0
      000782 C0 E0            [24]  446 	push	acc
      000784 08               [12]  447 	inc	r0
      000785 E6               [12]  448 	mov	a,@r0
      000786 C0 E0            [24]  449 	push	acc
      000788 E5 00            [12]  450 	mov	a,_bp
      00078A 24 F6            [12]  451 	add	a,#0xf6
      00078C F8               [12]  452 	mov	r0,a
      00078D E6               [12]  453 	mov	a,@r0
      00078E C0 E0            [24]  454 	push	acc
      000790 08               [12]  455 	inc	r0
      000791 E6               [12]  456 	mov	a,@r0
      000792 C0 E0            [24]  457 	push	acc
      000794 08               [12]  458 	inc	r0
      000795 E6               [12]  459 	mov	a,@r0
      000796 C0 E0            [24]  460 	push	acc
      000798 08               [12]  461 	inc	r0
      000799 E6               [12]  462 	mov	a,@r0
      00079A C0 E0            [24]  463 	push	acc
      00079C E5 00            [12]  464 	mov	a,_bp
      00079E 24 FA            [12]  465 	add	a,#0xfa
      0007A0 F8               [12]  466 	mov	r0,a
      0007A1 E6               [12]  467 	mov	a,@r0
      0007A2 C0 E0            [24]  468 	push	acc
      0007A4 08               [12]  469 	inc	r0
      0007A5 E6               [12]  470 	mov	a,@r0
      0007A6 C0 E0            [24]  471 	push	acc
      0007A8 08               [12]  472 	inc	r0
      0007A9 E6               [12]  473 	mov	a,@r0
      0007AA C0 E0            [24]  474 	push	acc
      0007AC 75 82 00         [24]  475 	mov	dpl,#0x00
      0007AF 78 BC            [12]  476 	mov	r0,#_cfReadSector
      0007B1 79 00            [12]  477 	mov	r1,#(_cfReadSector >> 8)
      0007B3 7A 00            [12]  478 	mov	r2,#(_cfReadSector >> 16)
      0007B5 12 00 00         [24]  479 	lcall	__sdcc_banked_call
      0007B8 E5 81            [12]  480 	mov	a,sp
      0007BA 24 F7            [12]  481 	add	a,#0xf7
      0007BC F5 81            [12]  482 	mov	sp,a
                                    483 ;	FATFS\src\diskio.c:93: return RES_OK;
      0007BE 75 82 00         [24]  484 	mov	dpl,#0x00
                                    485 ;	FATFS\src\diskio.c:95: case SIO_DRIVE_0:
      0007C1 80 12            [24]  486 	sjmp	00108$
      0007C3                        487 00103$:
                                    488 ;	FATFS\src\diskio.c:96: return RES_OK;
      0007C3 75 82 00         [24]  489 	mov	dpl,#0x00
                                    490 ;	FATFS\src\diskio.c:98: case SIO_DRIVE_1:
      0007C6 80 0D            [24]  491 	sjmp	00108$
      0007C8                        492 00104$:
                                    493 ;	FATFS\src\diskio.c:99: return RES_OK;
      0007C8 75 82 00         [24]  494 	mov	dpl,#0x00
                                    495 ;	FATFS\src\diskio.c:101: case SIO_DRIVE_2:
      0007CB 80 08            [24]  496 	sjmp	00108$
      0007CD                        497 00105$:
                                    498 ;	FATFS\src\diskio.c:102: return RES_OK;
      0007CD 75 82 00         [24]  499 	mov	dpl,#0x00
                                    500 ;	FATFS\src\diskio.c:104: case SIO_DRIVE_3:
      0007D0 80 03            [24]  501 	sjmp	00108$
      0007D2                        502 00106$:
                                    503 ;	FATFS\src\diskio.c:105: return RES_OK;
      0007D2 75 82 00         [24]  504 	mov	dpl,#0x00
                                    505 ;	FATFS\src\diskio.c:106: };
      0007D5                        506 00108$:
                                    507 ;	FATFS\src\diskio.c:107: }
      0007D5 D0 00            [24]  508 	pop	_bp
      0007D7 02 00 00         [24]  509 	ljmp	__sdcc_banked_ret
                                    510 ;------------------------------------------------------------
                                    511 ;Allocation info for local variables in function 'disk_write'
                                    512 ;------------------------------------------------------------
                                    513 ;buff                      Allocated to stack - _bp -6
                                    514 ;sector                    Allocated to stack - _bp -10
                                    515 ;count                     Allocated to stack - _bp -12
                                    516 ;pdrv                      Allocated to registers r7 
                                    517 ;------------------------------------------------------------
                                    518 ;	FATFS\src\diskio.c:116: DRESULT disk_write (
                                    519 ;	-----------------------------------------
                                    520 ;	 function disk_write
                                    521 ;	-----------------------------------------
      0007DA                        522 _disk_write:
      0007DA C0 00            [24]  523 	push	_bp
      0007DC 85 81 00         [24]  524 	mov	_bp,sp
                                    525 ;	FATFS\src\diskio.c:123: switch (pdrv)
      0007DF E5 82            [12]  526 	mov	a,dpl
      0007E1 FF               [12]  527 	mov	r7,a
      0007E2 24 FB            [12]  528 	add	a,#0xff - 0x04
      0007E4 40 10            [24]  529 	jc	00102$
      0007E6 EF               [12]  530 	mov	a,r7
      0007E7 2F               [12]  531 	add	a,r7
                                    532 ;	FATFS\src\diskio.c:126: case COMPACT_FLASH:
      0007E8 90 07 EC         [24]  533 	mov	dptr,#00115$
      0007EB 73               [24]  534 	jmp	@a+dptr
      0007EC                        535 00115$:
      0007EC 80 08            [24]  536 	sjmp	00102$
      0007EE 80 0B            [24]  537 	sjmp	00103$
      0007F0 80 0E            [24]  538 	sjmp	00104$
      0007F2 80 11            [24]  539 	sjmp	00105$
      0007F4 80 14            [24]  540 	sjmp	00106$
      0007F6                        541 00102$:
                                    542 ;	FATFS\src\diskio.c:129: return RES_OK;
      0007F6 75 82 00         [24]  543 	mov	dpl,#0x00
                                    544 ;	FATFS\src\diskio.c:131: case SIO_DRIVE_0:
      0007F9 80 12            [24]  545 	sjmp	00108$
      0007FB                        546 00103$:
                                    547 ;	FATFS\src\diskio.c:132: return RES_OK;
      0007FB 75 82 00         [24]  548 	mov	dpl,#0x00
                                    549 ;	FATFS\src\diskio.c:134: case SIO_DRIVE_1:
      0007FE 80 0D            [24]  550 	sjmp	00108$
      000800                        551 00104$:
                                    552 ;	FATFS\src\diskio.c:135: return RES_OK;
      000800 75 82 00         [24]  553 	mov	dpl,#0x00
                                    554 ;	FATFS\src\diskio.c:137: case SIO_DRIVE_2:
      000803 80 08            [24]  555 	sjmp	00108$
      000805                        556 00105$:
                                    557 ;	FATFS\src\diskio.c:138: return RES_OK;
      000805 75 82 00         [24]  558 	mov	dpl,#0x00
                                    559 ;	FATFS\src\diskio.c:140: case SIO_DRIVE_3:
      000808 80 03            [24]  560 	sjmp	00108$
      00080A                        561 00106$:
                                    562 ;	FATFS\src\diskio.c:141: return RES_OK;
      00080A 75 82 00         [24]  563 	mov	dpl,#0x00
                                    564 ;	FATFS\src\diskio.c:142: };
      00080D                        565 00108$:
                                    566 ;	FATFS\src\diskio.c:150: }
      00080D D0 00            [24]  567 	pop	_bp
      00080F 02 00 00         [24]  568 	ljmp	__sdcc_banked_ret
                                    569 ;------------------------------------------------------------
                                    570 ;Allocation info for local variables in function 'disk_ioctl'
                                    571 ;------------------------------------------------------------
                                    572 ;cmd                       Allocated to stack - _bp -4
                                    573 ;buff                      Allocated to stack - _bp -7
                                    574 ;pdrv                      Allocated to registers r7 
                                    575 ;res                       Allocated to registers r7 
                                    576 ;------------------------------------------------------------
                                    577 ;	FATFS\src\diskio.c:159: DRESULT disk_ioctl (
                                    578 ;	-----------------------------------------
                                    579 ;	 function disk_ioctl
                                    580 ;	-----------------------------------------
      000812                        581 _disk_ioctl:
      000812 C0 00            [24]  582 	push	_bp
      000814 85 81 00         [24]  583 	mov	_bp,sp
                                    584 ;	FATFS\src\diskio.c:167: switch (pdrv)
      000817 E5 82            [12]  585 	mov	a,dpl
      000819 FF               [12]  586 	mov	r7,a
      00081A 24 FB            [12]  587 	add	a,#0xff - 0x04
      00081C 40 16            [24]  588 	jc	00102$
      00081E EF               [12]  589 	mov	a,r7
      00081F 2F               [12]  590 	add	a,r7
      000820 2F               [12]  591 	add	a,r7
      000821 90 08 25         [24]  592 	mov	dptr,#00165$
      000824 73               [24]  593 	jmp	@a+dptr
      000825                        594 00165$:
      000825 02 08 34         [24]  595 	ljmp	00102$
      000828 02 08 DF         [24]  596 	ljmp	00109$
      00082B 02 09 8A         [24]  597 	ljmp	00116$
      00082E 02 0A 35         [24]  598 	ljmp	00123$
      000831 02 0A E0         [24]  599 	ljmp	00130$
                                    600 ;	FATFS\src\diskio.c:170: case COMPACT_FLASH:
      000834                        601 00102$:
                                    602 ;	FATFS\src\diskio.c:172: switch(cmd)
      000834 E5 00            [12]  603 	mov	a,_bp
      000836 24 FC            [12]  604 	add	a,#0xfc
      000838 F8               [12]  605 	mov	r0,a
      000839 E6               [12]  606 	mov	a,@r0
      00083A 24 FC            [12]  607 	add	a,#0xff - 0x03
      00083C 50 03            [24]  608 	jnc	00166$
      00083E 02 08 DA         [24]  609 	ljmp	00107$
      000841                        610 00166$:
      000841 E5 00            [12]  611 	mov	a,_bp
      000843 24 FC            [12]  612 	add	a,#0xfc
      000845 F8               [12]  613 	mov	r0,a
      000846 E6               [12]  614 	mov	a,@r0
      000847 26               [12]  615 	add	a,@r0
                                    616 ;	FATFS\src\diskio.c:174: case CTRL_SYNC:
      000848 90 08 4C         [24]  617 	mov	dptr,#00167$
      00084B 73               [24]  618 	jmp	@a+dptr
      00084C                        619 00167$:
      00084C 80 06            [24]  620 	sjmp	00103$
      00084E 80 5E            [24]  621 	sjmp	00106$
      000850 80 07            [24]  622 	sjmp	00104$
      000852 80 30            [24]  623 	sjmp	00105$
      000854                        624 00103$:
                                    625 ;	FATFS\src\diskio.c:175: res=RES_OK;
      000854 7F 00            [12]  626 	mov	r7,#0x00
                                    627 ;	FATFS\src\diskio.c:176: break;
      000856 02 0B 85         [24]  628 	ljmp	00137$
                                    629 ;	FATFS\src\diskio.c:177: case GET_SECTOR_SIZE:
      000859                        630 00104$:
                                    631 ;	FATFS\src\diskio.c:178: *(DWORD*)buff=512;
      000859 E5 00            [12]  632 	mov	a,_bp
      00085B 24 F9            [12]  633 	add	a,#0xf9
      00085D F8               [12]  634 	mov	r0,a
      00085E 86 04            [24]  635 	mov	ar4,@r0
      000860 08               [12]  636 	inc	r0
      000861 86 05            [24]  637 	mov	ar5,@r0
      000863 08               [12]  638 	inc	r0
      000864 86 06            [24]  639 	mov	ar6,@r0
      000866 8C 82            [24]  640 	mov	dpl,r4
      000868 8D 83            [24]  641 	mov	dph,r5
      00086A 8E F0            [24]  642 	mov	b,r6
      00086C E4               [12]  643 	clr	a
      00086D 12 00 00         [24]  644 	lcall	__gptrput
      000870 A3               [24]  645 	inc	dptr
      000871 74 02            [12]  646 	mov	a,#0x02
      000873 12 00 00         [24]  647 	lcall	__gptrput
      000876 A3               [24]  648 	inc	dptr
      000877 E4               [12]  649 	clr	a
      000878 12 00 00         [24]  650 	lcall	__gptrput
      00087B A3               [24]  651 	inc	dptr
      00087C 12 00 00         [24]  652 	lcall	__gptrput
                                    653 ;	FATFS\src\diskio.c:179: res=RES_OK;
      00087F 7F 00            [12]  654 	mov	r7,#0x00
                                    655 ;	FATFS\src\diskio.c:180: break;
      000881 02 0B 85         [24]  656 	ljmp	00137$
                                    657 ;	FATFS\src\diskio.c:181: case GET_BLOCK_SIZE:
      000884                        658 00105$:
                                    659 ;	FATFS\src\diskio.c:182: *(DWORD*)buff=8;
      000884 E5 00            [12]  660 	mov	a,_bp
      000886 24 F9            [12]  661 	add	a,#0xf9
      000888 F8               [12]  662 	mov	r0,a
      000889 86 04            [24]  663 	mov	ar4,@r0
      00088B 08               [12]  664 	inc	r0
      00088C 86 05            [24]  665 	mov	ar5,@r0
      00088E 08               [12]  666 	inc	r0
      00088F 86 06            [24]  667 	mov	ar6,@r0
      000891 8C 82            [24]  668 	mov	dpl,r4
      000893 8D 83            [24]  669 	mov	dph,r5
      000895 8E F0            [24]  670 	mov	b,r6
      000897 74 08            [12]  671 	mov	a,#0x08
      000899 12 00 00         [24]  672 	lcall	__gptrput
      00089C A3               [24]  673 	inc	dptr
      00089D E4               [12]  674 	clr	a
      00089E 12 00 00         [24]  675 	lcall	__gptrput
      0008A1 A3               [24]  676 	inc	dptr
      0008A2 12 00 00         [24]  677 	lcall	__gptrput
      0008A5 A3               [24]  678 	inc	dptr
      0008A6 12 00 00         [24]  679 	lcall	__gptrput
                                    680 ;	FATFS\src\diskio.c:183: res=RES_OK;
      0008A9 7F 00            [12]  681 	mov	r7,#0x00
                                    682 ;	FATFS\src\diskio.c:184: break;
      0008AB 02 0B 85         [24]  683 	ljmp	00137$
                                    684 ;	FATFS\src\diskio.c:185: case GET_SECTOR_COUNT:
      0008AE                        685 00106$:
                                    686 ;	FATFS\src\diskio.c:186: *(DWORD*)buff = 10000;//SD_GetSectorCount();
      0008AE E5 00            [12]  687 	mov	a,_bp
      0008B0 24 F9            [12]  688 	add	a,#0xf9
      0008B2 F8               [12]  689 	mov	r0,a
      0008B3 86 04            [24]  690 	mov	ar4,@r0
      0008B5 08               [12]  691 	inc	r0
      0008B6 86 05            [24]  692 	mov	ar5,@r0
      0008B8 08               [12]  693 	inc	r0
      0008B9 86 06            [24]  694 	mov	ar6,@r0
      0008BB 8C 82            [24]  695 	mov	dpl,r4
      0008BD 8D 83            [24]  696 	mov	dph,r5
      0008BF 8E F0            [24]  697 	mov	b,r6
      0008C1 74 10            [12]  698 	mov	a,#0x10
      0008C3 12 00 00         [24]  699 	lcall	__gptrput
      0008C6 A3               [24]  700 	inc	dptr
      0008C7 74 27            [12]  701 	mov	a,#0x27
      0008C9 12 00 00         [24]  702 	lcall	__gptrput
      0008CC A3               [24]  703 	inc	dptr
      0008CD E4               [12]  704 	clr	a
      0008CE 12 00 00         [24]  705 	lcall	__gptrput
      0008D1 A3               [24]  706 	inc	dptr
      0008D2 12 00 00         [24]  707 	lcall	__gptrput
                                    708 ;	FATFS\src\diskio.c:187: res=RES_OK;
      0008D5 7F 00            [12]  709 	mov	r7,#0x00
                                    710 ;	FATFS\src\diskio.c:188: break;
      0008D7 02 0B 85         [24]  711 	ljmp	00137$
                                    712 ;	FATFS\src\diskio.c:189: default:
      0008DA                        713 00107$:
                                    714 ;	FATFS\src\diskio.c:190: res = RES_PARERR;
      0008DA 7F 04            [12]  715 	mov	r7,#0x04
                                    716 ;	FATFS\src\diskio.c:194: break;
      0008DC 02 0B 85         [24]  717 	ljmp	00137$
                                    718 ;	FATFS\src\diskio.c:196: case SIO_DRIVE_0:
      0008DF                        719 00109$:
                                    720 ;	FATFS\src\diskio.c:198: switch(cmd)
      0008DF E5 00            [12]  721 	mov	a,_bp
      0008E1 24 FC            [12]  722 	add	a,#0xfc
      0008E3 F8               [12]  723 	mov	r0,a
      0008E4 E6               [12]  724 	mov	a,@r0
      0008E5 24 FC            [12]  725 	add	a,#0xff - 0x03
      0008E7 50 03            [24]  726 	jnc	00168$
      0008E9 02 09 85         [24]  727 	ljmp	00114$
      0008EC                        728 00168$:
      0008EC E5 00            [12]  729 	mov	a,_bp
      0008EE 24 FC            [12]  730 	add	a,#0xfc
      0008F0 F8               [12]  731 	mov	r0,a
      0008F1 E6               [12]  732 	mov	a,@r0
      0008F2 26               [12]  733 	add	a,@r0
                                    734 ;	FATFS\src\diskio.c:200: case CTRL_SYNC:
      0008F3 90 08 F7         [24]  735 	mov	dptr,#00169$
      0008F6 73               [24]  736 	jmp	@a+dptr
      0008F7                        737 00169$:
      0008F7 80 06            [24]  738 	sjmp	00110$
      0008F9 80 5E            [24]  739 	sjmp	00113$
      0008FB 80 07            [24]  740 	sjmp	00111$
      0008FD 80 30            [24]  741 	sjmp	00112$
      0008FF                        742 00110$:
                                    743 ;	FATFS\src\diskio.c:201: res=RES_OK;
      0008FF 7F 00            [12]  744 	mov	r7,#0x00
                                    745 ;	FATFS\src\diskio.c:202: break;
      000901 02 0B 85         [24]  746 	ljmp	00137$
                                    747 ;	FATFS\src\diskio.c:203: case GET_SECTOR_SIZE:
      000904                        748 00111$:
                                    749 ;	FATFS\src\diskio.c:204: *(DWORD*)buff=512;
      000904 E5 00            [12]  750 	mov	a,_bp
      000906 24 F9            [12]  751 	add	a,#0xf9
      000908 F8               [12]  752 	mov	r0,a
      000909 86 04            [24]  753 	mov	ar4,@r0
      00090B 08               [12]  754 	inc	r0
      00090C 86 05            [24]  755 	mov	ar5,@r0
      00090E 08               [12]  756 	inc	r0
      00090F 86 06            [24]  757 	mov	ar6,@r0
      000911 8C 82            [24]  758 	mov	dpl,r4
      000913 8D 83            [24]  759 	mov	dph,r5
      000915 8E F0            [24]  760 	mov	b,r6
      000917 E4               [12]  761 	clr	a
      000918 12 00 00         [24]  762 	lcall	__gptrput
      00091B A3               [24]  763 	inc	dptr
      00091C 74 02            [12]  764 	mov	a,#0x02
      00091E 12 00 00         [24]  765 	lcall	__gptrput
      000921 A3               [24]  766 	inc	dptr
      000922 E4               [12]  767 	clr	a
      000923 12 00 00         [24]  768 	lcall	__gptrput
      000926 A3               [24]  769 	inc	dptr
      000927 12 00 00         [24]  770 	lcall	__gptrput
                                    771 ;	FATFS\src\diskio.c:205: res=RES_OK;
      00092A 7F 00            [12]  772 	mov	r7,#0x00
                                    773 ;	FATFS\src\diskio.c:206: break;
      00092C 02 0B 85         [24]  774 	ljmp	00137$
                                    775 ;	FATFS\src\diskio.c:207: case GET_BLOCK_SIZE:
      00092F                        776 00112$:
                                    777 ;	FATFS\src\diskio.c:208: *(DWORD*)buff=8;
      00092F E5 00            [12]  778 	mov	a,_bp
      000931 24 F9            [12]  779 	add	a,#0xf9
      000933 F8               [12]  780 	mov	r0,a
      000934 86 04            [24]  781 	mov	ar4,@r0
      000936 08               [12]  782 	inc	r0
      000937 86 05            [24]  783 	mov	ar5,@r0
      000939 08               [12]  784 	inc	r0
      00093A 86 06            [24]  785 	mov	ar6,@r0
      00093C 8C 82            [24]  786 	mov	dpl,r4
      00093E 8D 83            [24]  787 	mov	dph,r5
      000940 8E F0            [24]  788 	mov	b,r6
      000942 74 08            [12]  789 	mov	a,#0x08
      000944 12 00 00         [24]  790 	lcall	__gptrput
      000947 A3               [24]  791 	inc	dptr
      000948 E4               [12]  792 	clr	a
      000949 12 00 00         [24]  793 	lcall	__gptrput
      00094C A3               [24]  794 	inc	dptr
      00094D 12 00 00         [24]  795 	lcall	__gptrput
      000950 A3               [24]  796 	inc	dptr
      000951 12 00 00         [24]  797 	lcall	__gptrput
                                    798 ;	FATFS\src\diskio.c:209: res=RES_OK;
      000954 7F 00            [12]  799 	mov	r7,#0x00
                                    800 ;	FATFS\src\diskio.c:210: break;
      000956 02 0B 85         [24]  801 	ljmp	00137$
                                    802 ;	FATFS\src\diskio.c:211: case GET_SECTOR_COUNT:
      000959                        803 00113$:
                                    804 ;	FATFS\src\diskio.c:212: *(DWORD*)buff = 10000;// SD_GetSectorCount();
      000959 E5 00            [12]  805 	mov	a,_bp
      00095B 24 F9            [12]  806 	add	a,#0xf9
      00095D F8               [12]  807 	mov	r0,a
      00095E 86 04            [24]  808 	mov	ar4,@r0
      000960 08               [12]  809 	inc	r0
      000961 86 05            [24]  810 	mov	ar5,@r0
      000963 08               [12]  811 	inc	r0
      000964 86 06            [24]  812 	mov	ar6,@r0
      000966 8C 82            [24]  813 	mov	dpl,r4
      000968 8D 83            [24]  814 	mov	dph,r5
      00096A 8E F0            [24]  815 	mov	b,r6
      00096C 74 10            [12]  816 	mov	a,#0x10
      00096E 12 00 00         [24]  817 	lcall	__gptrput
      000971 A3               [24]  818 	inc	dptr
      000972 74 27            [12]  819 	mov	a,#0x27
      000974 12 00 00         [24]  820 	lcall	__gptrput
      000977 A3               [24]  821 	inc	dptr
      000978 E4               [12]  822 	clr	a
      000979 12 00 00         [24]  823 	lcall	__gptrput
      00097C A3               [24]  824 	inc	dptr
      00097D 12 00 00         [24]  825 	lcall	__gptrput
                                    826 ;	FATFS\src\diskio.c:213: res=RES_OK;
      000980 7F 00            [12]  827 	mov	r7,#0x00
                                    828 ;	FATFS\src\diskio.c:214: break;
      000982 02 0B 85         [24]  829 	ljmp	00137$
                                    830 ;	FATFS\src\diskio.c:215: default:
      000985                        831 00114$:
                                    832 ;	FATFS\src\diskio.c:216: res = RES_PARERR;
      000985 7F 04            [12]  833 	mov	r7,#0x04
                                    834 ;	FATFS\src\diskio.c:220: break;
      000987 02 0B 85         [24]  835 	ljmp	00137$
                                    836 ;	FATFS\src\diskio.c:222: case SIO_DRIVE_1:
      00098A                        837 00116$:
                                    838 ;	FATFS\src\diskio.c:224: switch(cmd)
      00098A E5 00            [12]  839 	mov	a,_bp
      00098C 24 FC            [12]  840 	add	a,#0xfc
      00098E F8               [12]  841 	mov	r0,a
      00098F E6               [12]  842 	mov	a,@r0
      000990 24 FC            [12]  843 	add	a,#0xff - 0x03
      000992 50 03            [24]  844 	jnc	00170$
      000994 02 0A 30         [24]  845 	ljmp	00121$
      000997                        846 00170$:
      000997 E5 00            [12]  847 	mov	a,_bp
      000999 24 FC            [12]  848 	add	a,#0xfc
      00099B F8               [12]  849 	mov	r0,a
      00099C E6               [12]  850 	mov	a,@r0
      00099D 26               [12]  851 	add	a,@r0
                                    852 ;	FATFS\src\diskio.c:226: case CTRL_SYNC:
      00099E 90 09 A2         [24]  853 	mov	dptr,#00171$
      0009A1 73               [24]  854 	jmp	@a+dptr
      0009A2                        855 00171$:
      0009A2 80 06            [24]  856 	sjmp	00117$
      0009A4 80 5E            [24]  857 	sjmp	00120$
      0009A6 80 07            [24]  858 	sjmp	00118$
      0009A8 80 30            [24]  859 	sjmp	00119$
      0009AA                        860 00117$:
                                    861 ;	FATFS\src\diskio.c:227: res=RES_OK;
      0009AA 7F 00            [12]  862 	mov	r7,#0x00
                                    863 ;	FATFS\src\diskio.c:228: break;
      0009AC 02 0B 85         [24]  864 	ljmp	00137$
                                    865 ;	FATFS\src\diskio.c:229: case GET_SECTOR_SIZE:
      0009AF                        866 00118$:
                                    867 ;	FATFS\src\diskio.c:230: *(DWORD*)buff=512;
      0009AF E5 00            [12]  868 	mov	a,_bp
      0009B1 24 F9            [12]  869 	add	a,#0xf9
      0009B3 F8               [12]  870 	mov	r0,a
      0009B4 86 04            [24]  871 	mov	ar4,@r0
      0009B6 08               [12]  872 	inc	r0
      0009B7 86 05            [24]  873 	mov	ar5,@r0
      0009B9 08               [12]  874 	inc	r0
      0009BA 86 06            [24]  875 	mov	ar6,@r0
      0009BC 8C 82            [24]  876 	mov	dpl,r4
      0009BE 8D 83            [24]  877 	mov	dph,r5
      0009C0 8E F0            [24]  878 	mov	b,r6
      0009C2 E4               [12]  879 	clr	a
      0009C3 12 00 00         [24]  880 	lcall	__gptrput
      0009C6 A3               [24]  881 	inc	dptr
      0009C7 74 02            [12]  882 	mov	a,#0x02
      0009C9 12 00 00         [24]  883 	lcall	__gptrput
      0009CC A3               [24]  884 	inc	dptr
      0009CD E4               [12]  885 	clr	a
      0009CE 12 00 00         [24]  886 	lcall	__gptrput
      0009D1 A3               [24]  887 	inc	dptr
      0009D2 12 00 00         [24]  888 	lcall	__gptrput
                                    889 ;	FATFS\src\diskio.c:231: res=RES_OK;
      0009D5 7F 00            [12]  890 	mov	r7,#0x00
                                    891 ;	FATFS\src\diskio.c:232: break;
      0009D7 02 0B 85         [24]  892 	ljmp	00137$
                                    893 ;	FATFS\src\diskio.c:233: case GET_BLOCK_SIZE:
      0009DA                        894 00119$:
                                    895 ;	FATFS\src\diskio.c:234: *(DWORD*)buff=8;
      0009DA E5 00            [12]  896 	mov	a,_bp
      0009DC 24 F9            [12]  897 	add	a,#0xf9
      0009DE F8               [12]  898 	mov	r0,a
      0009DF 86 04            [24]  899 	mov	ar4,@r0
      0009E1 08               [12]  900 	inc	r0
      0009E2 86 05            [24]  901 	mov	ar5,@r0
      0009E4 08               [12]  902 	inc	r0
      0009E5 86 06            [24]  903 	mov	ar6,@r0
      0009E7 8C 82            [24]  904 	mov	dpl,r4
      0009E9 8D 83            [24]  905 	mov	dph,r5
      0009EB 8E F0            [24]  906 	mov	b,r6
      0009ED 74 08            [12]  907 	mov	a,#0x08
      0009EF 12 00 00         [24]  908 	lcall	__gptrput
      0009F2 A3               [24]  909 	inc	dptr
      0009F3 E4               [12]  910 	clr	a
      0009F4 12 00 00         [24]  911 	lcall	__gptrput
      0009F7 A3               [24]  912 	inc	dptr
      0009F8 12 00 00         [24]  913 	lcall	__gptrput
      0009FB A3               [24]  914 	inc	dptr
      0009FC 12 00 00         [24]  915 	lcall	__gptrput
                                    916 ;	FATFS\src\diskio.c:235: res=RES_OK;
      0009FF 7F 00            [12]  917 	mov	r7,#0x00
                                    918 ;	FATFS\src\diskio.c:236: break;
      000A01 02 0B 85         [24]  919 	ljmp	00137$
                                    920 ;	FATFS\src\diskio.c:237: case GET_SECTOR_COUNT:
      000A04                        921 00120$:
                                    922 ;	FATFS\src\diskio.c:238: *(DWORD*)buff = 10000;// SD_GetSectorCount();
      000A04 E5 00            [12]  923 	mov	a,_bp
      000A06 24 F9            [12]  924 	add	a,#0xf9
      000A08 F8               [12]  925 	mov	r0,a
      000A09 86 04            [24]  926 	mov	ar4,@r0
      000A0B 08               [12]  927 	inc	r0
      000A0C 86 05            [24]  928 	mov	ar5,@r0
      000A0E 08               [12]  929 	inc	r0
      000A0F 86 06            [24]  930 	mov	ar6,@r0
      000A11 8C 82            [24]  931 	mov	dpl,r4
      000A13 8D 83            [24]  932 	mov	dph,r5
      000A15 8E F0            [24]  933 	mov	b,r6
      000A17 74 10            [12]  934 	mov	a,#0x10
      000A19 12 00 00         [24]  935 	lcall	__gptrput
      000A1C A3               [24]  936 	inc	dptr
      000A1D 74 27            [12]  937 	mov	a,#0x27
      000A1F 12 00 00         [24]  938 	lcall	__gptrput
      000A22 A3               [24]  939 	inc	dptr
      000A23 E4               [12]  940 	clr	a
      000A24 12 00 00         [24]  941 	lcall	__gptrput
      000A27 A3               [24]  942 	inc	dptr
      000A28 12 00 00         [24]  943 	lcall	__gptrput
                                    944 ;	FATFS\src\diskio.c:239: res=RES_OK;
      000A2B 7F 00            [12]  945 	mov	r7,#0x00
                                    946 ;	FATFS\src\diskio.c:240: break;
      000A2D 02 0B 85         [24]  947 	ljmp	00137$
                                    948 ;	FATFS\src\diskio.c:241: default:
      000A30                        949 00121$:
                                    950 ;	FATFS\src\diskio.c:242: res = RES_PARERR;
      000A30 7F 04            [12]  951 	mov	r7,#0x04
                                    952 ;	FATFS\src\diskio.c:246: break;
      000A32 02 0B 85         [24]  953 	ljmp	00137$
                                    954 ;	FATFS\src\diskio.c:248: case SIO_DRIVE_2:
      000A35                        955 00123$:
                                    956 ;	FATFS\src\diskio.c:250: switch(cmd)
      000A35 E5 00            [12]  957 	mov	a,_bp
      000A37 24 FC            [12]  958 	add	a,#0xfc
      000A39 F8               [12]  959 	mov	r0,a
      000A3A E6               [12]  960 	mov	a,@r0
      000A3B 24 FC            [12]  961 	add	a,#0xff - 0x03
      000A3D 50 03            [24]  962 	jnc	00172$
      000A3F 02 0A DB         [24]  963 	ljmp	00128$
      000A42                        964 00172$:
      000A42 E5 00            [12]  965 	mov	a,_bp
      000A44 24 FC            [12]  966 	add	a,#0xfc
      000A46 F8               [12]  967 	mov	r0,a
      000A47 E6               [12]  968 	mov	a,@r0
      000A48 26               [12]  969 	add	a,@r0
                                    970 ;	FATFS\src\diskio.c:252: case CTRL_SYNC:
      000A49 90 0A 4D         [24]  971 	mov	dptr,#00173$
      000A4C 73               [24]  972 	jmp	@a+dptr
      000A4D                        973 00173$:
      000A4D 80 06            [24]  974 	sjmp	00124$
      000A4F 80 5E            [24]  975 	sjmp	00127$
      000A51 80 07            [24]  976 	sjmp	00125$
      000A53 80 30            [24]  977 	sjmp	00126$
      000A55                        978 00124$:
                                    979 ;	FATFS\src\diskio.c:253: res=RES_OK;
      000A55 7F 00            [12]  980 	mov	r7,#0x00
                                    981 ;	FATFS\src\diskio.c:254: break;
      000A57 02 0B 85         [24]  982 	ljmp	00137$
                                    983 ;	FATFS\src\diskio.c:255: case GET_SECTOR_SIZE:
      000A5A                        984 00125$:
                                    985 ;	FATFS\src\diskio.c:256: *(DWORD*)buff=512;
      000A5A E5 00            [12]  986 	mov	a,_bp
      000A5C 24 F9            [12]  987 	add	a,#0xf9
      000A5E F8               [12]  988 	mov	r0,a
      000A5F 86 04            [24]  989 	mov	ar4,@r0
      000A61 08               [12]  990 	inc	r0
      000A62 86 05            [24]  991 	mov	ar5,@r0
      000A64 08               [12]  992 	inc	r0
      000A65 86 06            [24]  993 	mov	ar6,@r0
      000A67 8C 82            [24]  994 	mov	dpl,r4
      000A69 8D 83            [24]  995 	mov	dph,r5
      000A6B 8E F0            [24]  996 	mov	b,r6
      000A6D E4               [12]  997 	clr	a
      000A6E 12 00 00         [24]  998 	lcall	__gptrput
      000A71 A3               [24]  999 	inc	dptr
      000A72 74 02            [12] 1000 	mov	a,#0x02
      000A74 12 00 00         [24] 1001 	lcall	__gptrput
      000A77 A3               [24] 1002 	inc	dptr
      000A78 E4               [12] 1003 	clr	a
      000A79 12 00 00         [24] 1004 	lcall	__gptrput
      000A7C A3               [24] 1005 	inc	dptr
      000A7D 12 00 00         [24] 1006 	lcall	__gptrput
                                   1007 ;	FATFS\src\diskio.c:257: res=RES_OK;
      000A80 7F 00            [12] 1008 	mov	r7,#0x00
                                   1009 ;	FATFS\src\diskio.c:258: break;
      000A82 02 0B 85         [24] 1010 	ljmp	00137$
                                   1011 ;	FATFS\src\diskio.c:259: case GET_BLOCK_SIZE:
      000A85                       1012 00126$:
                                   1013 ;	FATFS\src\diskio.c:260: *(DWORD*)buff=8;
      000A85 E5 00            [12] 1014 	mov	a,_bp
      000A87 24 F9            [12] 1015 	add	a,#0xf9
      000A89 F8               [12] 1016 	mov	r0,a
      000A8A 86 04            [24] 1017 	mov	ar4,@r0
      000A8C 08               [12] 1018 	inc	r0
      000A8D 86 05            [24] 1019 	mov	ar5,@r0
      000A8F 08               [12] 1020 	inc	r0
      000A90 86 06            [24] 1021 	mov	ar6,@r0
      000A92 8C 82            [24] 1022 	mov	dpl,r4
      000A94 8D 83            [24] 1023 	mov	dph,r5
      000A96 8E F0            [24] 1024 	mov	b,r6
      000A98 74 08            [12] 1025 	mov	a,#0x08
      000A9A 12 00 00         [24] 1026 	lcall	__gptrput
      000A9D A3               [24] 1027 	inc	dptr
      000A9E E4               [12] 1028 	clr	a
      000A9F 12 00 00         [24] 1029 	lcall	__gptrput
      000AA2 A3               [24] 1030 	inc	dptr
      000AA3 12 00 00         [24] 1031 	lcall	__gptrput
      000AA6 A3               [24] 1032 	inc	dptr
      000AA7 12 00 00         [24] 1033 	lcall	__gptrput
                                   1034 ;	FATFS\src\diskio.c:261: res=RES_OK;
      000AAA 7F 00            [12] 1035 	mov	r7,#0x00
                                   1036 ;	FATFS\src\diskio.c:262: break;
      000AAC 02 0B 85         [24] 1037 	ljmp	00137$
                                   1038 ;	FATFS\src\diskio.c:263: case GET_SECTOR_COUNT:
      000AAF                       1039 00127$:
                                   1040 ;	FATFS\src\diskio.c:264: *(DWORD*)buff = 10000;// SD_GetSectorCount();
      000AAF E5 00            [12] 1041 	mov	a,_bp
      000AB1 24 F9            [12] 1042 	add	a,#0xf9
      000AB3 F8               [12] 1043 	mov	r0,a
      000AB4 86 04            [24] 1044 	mov	ar4,@r0
      000AB6 08               [12] 1045 	inc	r0
      000AB7 86 05            [24] 1046 	mov	ar5,@r0
      000AB9 08               [12] 1047 	inc	r0
      000ABA 86 06            [24] 1048 	mov	ar6,@r0
      000ABC 8C 82            [24] 1049 	mov	dpl,r4
      000ABE 8D 83            [24] 1050 	mov	dph,r5
      000AC0 8E F0            [24] 1051 	mov	b,r6
      000AC2 74 10            [12] 1052 	mov	a,#0x10
      000AC4 12 00 00         [24] 1053 	lcall	__gptrput
      000AC7 A3               [24] 1054 	inc	dptr
      000AC8 74 27            [12] 1055 	mov	a,#0x27
      000ACA 12 00 00         [24] 1056 	lcall	__gptrput
      000ACD A3               [24] 1057 	inc	dptr
      000ACE E4               [12] 1058 	clr	a
      000ACF 12 00 00         [24] 1059 	lcall	__gptrput
      000AD2 A3               [24] 1060 	inc	dptr
      000AD3 12 00 00         [24] 1061 	lcall	__gptrput
                                   1062 ;	FATFS\src\diskio.c:265: res=RES_OK;
      000AD6 7F 00            [12] 1063 	mov	r7,#0x00
                                   1064 ;	FATFS\src\diskio.c:266: break;
      000AD8 02 0B 85         [24] 1065 	ljmp	00137$
                                   1066 ;	FATFS\src\diskio.c:267: default:
      000ADB                       1067 00128$:
                                   1068 ;	FATFS\src\diskio.c:268: res = RES_PARERR;
      000ADB 7F 04            [12] 1069 	mov	r7,#0x04
                                   1070 ;	FATFS\src\diskio.c:272: break;
      000ADD 02 0B 85         [24] 1071 	ljmp	00137$
                                   1072 ;	FATFS\src\diskio.c:274: case SIO_DRIVE_3:
      000AE0                       1073 00130$:
                                   1074 ;	FATFS\src\diskio.c:276: switch(cmd)
      000AE0 E5 00            [12] 1075 	mov	a,_bp
      000AE2 24 FC            [12] 1076 	add	a,#0xfc
      000AE4 F8               [12] 1077 	mov	r0,a
      000AE5 E6               [12] 1078 	mov	a,@r0
      000AE6 24 FC            [12] 1079 	add	a,#0xff - 0x03
      000AE8 50 03            [24] 1080 	jnc	00174$
      000AEA 02 0B 83         [24] 1081 	ljmp	00135$
      000AED                       1082 00174$:
      000AED E5 00            [12] 1083 	mov	a,_bp
      000AEF 24 FC            [12] 1084 	add	a,#0xfc
      000AF1 F8               [12] 1085 	mov	r0,a
      000AF2 E6               [12] 1086 	mov	a,@r0
      000AF3 26               [12] 1087 	add	a,@r0
                                   1088 ;	FATFS\src\diskio.c:278: case CTRL_SYNC:
      000AF4 90 0A F8         [24] 1089 	mov	dptr,#00175$
      000AF7 73               [24] 1090 	jmp	@a+dptr
      000AF8                       1091 00175$:
      000AF8 80 06            [24] 1092 	sjmp	00131$
      000AFA 80 5C            [24] 1093 	sjmp	00134$
      000AFC 80 07            [24] 1094 	sjmp	00132$
      000AFE 80 2F            [24] 1095 	sjmp	00133$
      000B00                       1096 00131$:
                                   1097 ;	FATFS\src\diskio.c:279: res=RES_OK;
      000B00 7F 00            [12] 1098 	mov	r7,#0x00
                                   1099 ;	FATFS\src\diskio.c:280: break;
      000B02 02 0B 85         [24] 1100 	ljmp	00137$
                                   1101 ;	FATFS\src\diskio.c:281: case GET_SECTOR_SIZE:
      000B05                       1102 00132$:
                                   1103 ;	FATFS\src\diskio.c:282: *(DWORD*)buff=512;
      000B05 E5 00            [12] 1104 	mov	a,_bp
      000B07 24 F9            [12] 1105 	add	a,#0xf9
      000B09 F8               [12] 1106 	mov	r0,a
      000B0A 86 04            [24] 1107 	mov	ar4,@r0
      000B0C 08               [12] 1108 	inc	r0
      000B0D 86 05            [24] 1109 	mov	ar5,@r0
      000B0F 08               [12] 1110 	inc	r0
      000B10 86 06            [24] 1111 	mov	ar6,@r0
      000B12 8C 82            [24] 1112 	mov	dpl,r4
      000B14 8D 83            [24] 1113 	mov	dph,r5
      000B16 8E F0            [24] 1114 	mov	b,r6
      000B18 E4               [12] 1115 	clr	a
      000B19 12 00 00         [24] 1116 	lcall	__gptrput
      000B1C A3               [24] 1117 	inc	dptr
      000B1D 74 02            [12] 1118 	mov	a,#0x02
      000B1F 12 00 00         [24] 1119 	lcall	__gptrput
      000B22 A3               [24] 1120 	inc	dptr
      000B23 E4               [12] 1121 	clr	a
      000B24 12 00 00         [24] 1122 	lcall	__gptrput
      000B27 A3               [24] 1123 	inc	dptr
      000B28 12 00 00         [24] 1124 	lcall	__gptrput
                                   1125 ;	FATFS\src\diskio.c:283: res=RES_OK;
      000B2B 7F 00            [12] 1126 	mov	r7,#0x00
                                   1127 ;	FATFS\src\diskio.c:284: break;
                                   1128 ;	FATFS\src\diskio.c:285: case GET_BLOCK_SIZE:
      000B2D 80 56            [24] 1129 	sjmp	00137$
      000B2F                       1130 00133$:
                                   1131 ;	FATFS\src\diskio.c:286: *(DWORD*)buff=8;
      000B2F E5 00            [12] 1132 	mov	a,_bp
      000B31 24 F9            [12] 1133 	add	a,#0xf9
      000B33 F8               [12] 1134 	mov	r0,a
      000B34 86 04            [24] 1135 	mov	ar4,@r0
      000B36 08               [12] 1136 	inc	r0
      000B37 86 05            [24] 1137 	mov	ar5,@r0
      000B39 08               [12] 1138 	inc	r0
      000B3A 86 06            [24] 1139 	mov	ar6,@r0
      000B3C 8C 82            [24] 1140 	mov	dpl,r4
      000B3E 8D 83            [24] 1141 	mov	dph,r5
      000B40 8E F0            [24] 1142 	mov	b,r6
      000B42 74 08            [12] 1143 	mov	a,#0x08
      000B44 12 00 00         [24] 1144 	lcall	__gptrput
      000B47 A3               [24] 1145 	inc	dptr
      000B48 E4               [12] 1146 	clr	a
      000B49 12 00 00         [24] 1147 	lcall	__gptrput
      000B4C A3               [24] 1148 	inc	dptr
      000B4D 12 00 00         [24] 1149 	lcall	__gptrput
      000B50 A3               [24] 1150 	inc	dptr
      000B51 12 00 00         [24] 1151 	lcall	__gptrput
                                   1152 ;	FATFS\src\diskio.c:287: res=RES_OK;
      000B54 7F 00            [12] 1153 	mov	r7,#0x00
                                   1154 ;	FATFS\src\diskio.c:288: break;
                                   1155 ;	FATFS\src\diskio.c:289: case GET_SECTOR_COUNT:
      000B56 80 2D            [24] 1156 	sjmp	00137$
      000B58                       1157 00134$:
                                   1158 ;	FATFS\src\diskio.c:290: *(DWORD*)buff = 10000;// SD_GetSectorCount();
      000B58 E5 00            [12] 1159 	mov	a,_bp
      000B5A 24 F9            [12] 1160 	add	a,#0xf9
      000B5C F8               [12] 1161 	mov	r0,a
      000B5D 86 04            [24] 1162 	mov	ar4,@r0
      000B5F 08               [12] 1163 	inc	r0
      000B60 86 05            [24] 1164 	mov	ar5,@r0
      000B62 08               [12] 1165 	inc	r0
      000B63 86 06            [24] 1166 	mov	ar6,@r0
      000B65 8C 82            [24] 1167 	mov	dpl,r4
      000B67 8D 83            [24] 1168 	mov	dph,r5
      000B69 8E F0            [24] 1169 	mov	b,r6
      000B6B 74 10            [12] 1170 	mov	a,#0x10
      000B6D 12 00 00         [24] 1171 	lcall	__gptrput
      000B70 A3               [24] 1172 	inc	dptr
      000B71 74 27            [12] 1173 	mov	a,#0x27
      000B73 12 00 00         [24] 1174 	lcall	__gptrput
      000B76 A3               [24] 1175 	inc	dptr
      000B77 E4               [12] 1176 	clr	a
      000B78 12 00 00         [24] 1177 	lcall	__gptrput
      000B7B A3               [24] 1178 	inc	dptr
      000B7C 12 00 00         [24] 1179 	lcall	__gptrput
                                   1180 ;	FATFS\src\diskio.c:291: res=RES_OK;
      000B7F 7F 00            [12] 1181 	mov	r7,#0x00
                                   1182 ;	FATFS\src\diskio.c:292: break;
                                   1183 ;	FATFS\src\diskio.c:293: default:
      000B81 80 02            [24] 1184 	sjmp	00137$
      000B83                       1185 00135$:
                                   1186 ;	FATFS\src\diskio.c:294: res = RES_PARERR;
      000B83 7F 04            [12] 1187 	mov	r7,#0x04
                                   1188 ;	FATFS\src\diskio.c:299: }
      000B85                       1189 00137$:
                                   1190 ;	FATFS\src\diskio.c:307: return res;
      000B85 8F 82            [24] 1191 	mov	dpl,r7
                                   1192 ;	FATFS\src\diskio.c:308: }
      000B87 D0 00            [24] 1193 	pop	_bp
      000B89 02 00 00         [24] 1194 	ljmp	__sdcc_banked_ret
                                   1195 ;------------------------------------------------------------
                                   1196 ;Allocation info for local variables in function 'get_fattime'
                                   1197 ;------------------------------------------------------------
                                   1198 ;	FATFS\src\diskio.c:310: DWORD get_fattime (void)
                                   1199 ;	-----------------------------------------
                                   1200 ;	 function get_fattime
                                   1201 ;	-----------------------------------------
      000B8C                       1202 _get_fattime:
                                   1203 ;	FATFS\src\diskio.c:312: return 0;
      000B8C 90 00 00         [24] 1204 	mov	dptr,#(0x00&0x00ff)
      000B8F E4               [12] 1205 	clr	a
      000B90 F5 F0            [12] 1206 	mov	b,a
                                   1207 ;	FATFS\src\diskio.c:313: }
      000B92 02 00 00         [24] 1208 	ljmp	__sdcc_banked_ret
                                   1209 ;------------------------------------------------------------
                                   1210 ;Allocation info for local variables in function 'ff_memalloc'
                                   1211 ;------------------------------------------------------------
                                   1212 ;size                      Allocated to registers r6 r7 
                                   1213 ;------------------------------------------------------------
                                   1214 ;	FATFS\src\diskio.c:315: void *ff_memalloc (UINT size)
                                   1215 ;	-----------------------------------------
                                   1216 ;	 function ff_memalloc
                                   1217 ;	-----------------------------------------
      000B95                       1218 _ff_memalloc:
                                   1219 ;	FATFS\src\diskio.c:317: return malloc(size);
      000B95 78 43            [12] 1220 	mov	r0,#_malloc
      000B97 79 01            [12] 1221 	mov	r1,#(_malloc >> 8)
      000B99 7A 00            [12] 1222 	mov	r2,#(_malloc >> 16)
      000B9B 12 00 00         [24] 1223 	lcall	__sdcc_banked_call
      000B9E AE 82            [24] 1224 	mov	r6,dpl
      000BA0 AF 83            [24] 1225 	mov	r7,dph
      000BA2 7D 00            [12] 1226 	mov	r5,#0x00
      000BA4 8E 82            [24] 1227 	mov	dpl,r6
      000BA6 8F 83            [24] 1228 	mov	dph,r7
      000BA8 8D F0            [24] 1229 	mov	b,r5
                                   1230 ;	FATFS\src\diskio.c:318: }
      000BAA 02 00 00         [24] 1231 	ljmp	__sdcc_banked_ret
                                   1232 ;------------------------------------------------------------
                                   1233 ;Allocation info for local variables in function 'ff_memfree'
                                   1234 ;------------------------------------------------------------
                                   1235 ;mf                        Allocated to registers r5 r6 r7 
                                   1236 ;------------------------------------------------------------
                                   1237 ;	FATFS\src\diskio.c:320: void ff_memfree (void* mf)
                                   1238 ;	-----------------------------------------
                                   1239 ;	 function ff_memfree
                                   1240 ;	-----------------------------------------
      000BAD                       1241 _ff_memfree:
                                   1242 ;	FATFS\src\diskio.c:322: free(mf);
      000BAD 78 20            [12] 1243 	mov	r0,#_free
      000BAF 79 00            [12] 1244 	mov	r1,#(_free >> 8)
      000BB1 7A 00            [12] 1245 	mov	r2,#(_free >> 16)
      000BB3 12 00 00         [24] 1246 	lcall	__sdcc_banked_call
                                   1247 ;	FATFS\src\diskio.c:323: }
      000BB6 02 00 00         [24] 1248 	ljmp	__sdcc_banked_ret
                                   1249 	.area CSEG    (CODE)
                                   1250 	.area CONST   (CODE)
                                   1251 	.area XINIT   (CODE)
                                   1252 	.area CABS    (ABS,CODE)
