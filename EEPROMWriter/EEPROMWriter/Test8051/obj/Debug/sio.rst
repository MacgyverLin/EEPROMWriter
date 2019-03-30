                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module sio
                                      6 	.optsdcc -mmcs51 --model-huge
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _data
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 	.globl _sioRXBuf_PARM_3
                                    109 	.globl _sioRXBuf_PARM_2
                                    110 	.globl _sioRXStr_PARM_3
                                    111 	.globl _sioRXStr_PARM_2
                                    112 	.globl _sioTXBuf_PARM_3
                                    113 	.globl _sioTXBuf_PARM_2
                                    114 	.globl _sioTXStr_PARM_2
                                    115 	.globl _sioTX_PARM_2
                                    116 	.globl _sioInit
                                    117 	.globl _sioClose
                                    118 	.globl _sioWaitTXDone
                                    119 	.globl _sioTX
                                    120 	.globl _sioTXStr
                                    121 	.globl _sioTXBuf
                                    122 	.globl _sioWaitRXDone
                                    123 	.globl _sioRX
                                    124 	.globl _sioRXStr
                                    125 	.globl _sioRXBuf
                                    126 	.globl _sioTest1
                                    127 	.globl _sioTest2
                                    128 	.globl _sioTest3
                                    129 ;--------------------------------------------------------
                                    130 ; special function registers
                                    131 ;--------------------------------------------------------
                                    132 	.area RSEG    (ABS,DATA)
      000000                        133 	.org 0x0000
                           000080   134 _P0	=	0x0080
                           000081   135 _SP	=	0x0081
                           000082   136 _DPL	=	0x0082
                           000083   137 _DPH	=	0x0083
                           000087   138 _PCON	=	0x0087
                           000088   139 _TCON	=	0x0088
                           000089   140 _TMOD	=	0x0089
                           00008A   141 _TL0	=	0x008a
                           00008B   142 _TL1	=	0x008b
                           00008C   143 _TH0	=	0x008c
                           00008D   144 _TH1	=	0x008d
                           000090   145 _P1	=	0x0090
                           000098   146 _SCON	=	0x0098
                           000099   147 _SBUF	=	0x0099
                           0000A0   148 _P2	=	0x00a0
                           0000A8   149 _IE	=	0x00a8
                           0000B0   150 _P3	=	0x00b0
                           0000B8   151 _IP	=	0x00b8
                           0000D0   152 _PSW	=	0x00d0
                           0000E0   153 _ACC	=	0x00e0
                           0000F0   154 _B	=	0x00f0
                                    155 ;--------------------------------------------------------
                                    156 ; special function bits
                                    157 ;--------------------------------------------------------
                                    158 	.area RSEG    (ABS,DATA)
      000000                        159 	.org 0x0000
                           000080   160 _P0_0	=	0x0080
                           000081   161 _P0_1	=	0x0081
                           000082   162 _P0_2	=	0x0082
                           000083   163 _P0_3	=	0x0083
                           000084   164 _P0_4	=	0x0084
                           000085   165 _P0_5	=	0x0085
                           000086   166 _P0_6	=	0x0086
                           000087   167 _P0_7	=	0x0087
                           000088   168 _IT0	=	0x0088
                           000089   169 _IE0	=	0x0089
                           00008A   170 _IT1	=	0x008a
                           00008B   171 _IE1	=	0x008b
                           00008C   172 _TR0	=	0x008c
                           00008D   173 _TF0	=	0x008d
                           00008E   174 _TR1	=	0x008e
                           00008F   175 _TF1	=	0x008f
                           000090   176 _P1_0	=	0x0090
                           000091   177 _P1_1	=	0x0091
                           000092   178 _P1_2	=	0x0092
                           000093   179 _P1_3	=	0x0093
                           000094   180 _P1_4	=	0x0094
                           000095   181 _P1_5	=	0x0095
                           000096   182 _P1_6	=	0x0096
                           000097   183 _P1_7	=	0x0097
                           000098   184 _RI	=	0x0098
                           000099   185 _TI	=	0x0099
                           00009A   186 _RB8	=	0x009a
                           00009B   187 _TB8	=	0x009b
                           00009C   188 _REN	=	0x009c
                           00009D   189 _SM2	=	0x009d
                           00009E   190 _SM1	=	0x009e
                           00009F   191 _SM0	=	0x009f
                           0000A0   192 _P2_0	=	0x00a0
                           0000A1   193 _P2_1	=	0x00a1
                           0000A2   194 _P2_2	=	0x00a2
                           0000A3   195 _P2_3	=	0x00a3
                           0000A4   196 _P2_4	=	0x00a4
                           0000A5   197 _P2_5	=	0x00a5
                           0000A6   198 _P2_6	=	0x00a6
                           0000A7   199 _P2_7	=	0x00a7
                           0000A8   200 _EX0	=	0x00a8
                           0000A9   201 _ET0	=	0x00a9
                           0000AA   202 _EX1	=	0x00aa
                           0000AB   203 _ET1	=	0x00ab
                           0000AC   204 _ES	=	0x00ac
                           0000AF   205 _EA	=	0x00af
                           0000B0   206 _P3_0	=	0x00b0
                           0000B1   207 _P3_1	=	0x00b1
                           0000B2   208 _P3_2	=	0x00b2
                           0000B3   209 _P3_3	=	0x00b3
                           0000B4   210 _P3_4	=	0x00b4
                           0000B5   211 _P3_5	=	0x00b5
                           0000B6   212 _P3_6	=	0x00b6
                           0000B7   213 _P3_7	=	0x00b7
                           0000B0   214 _RXD	=	0x00b0
                           0000B1   215 _TXD	=	0x00b1
                           0000B2   216 _INT0	=	0x00b2
                           0000B3   217 _INT1	=	0x00b3
                           0000B4   218 _T0	=	0x00b4
                           0000B5   219 _T1	=	0x00b5
                           0000B6   220 _WR	=	0x00b6
                           0000B7   221 _RD	=	0x00b7
                           0000B8   222 _PX0	=	0x00b8
                           0000B9   223 _PT0	=	0x00b9
                           0000BA   224 _PX1	=	0x00ba
                           0000BB   225 _PT1	=	0x00bb
                           0000BC   226 _PS	=	0x00bc
                           0000D0   227 _P	=	0x00d0
                           0000D1   228 _F1	=	0x00d1
                           0000D2   229 _OV	=	0x00d2
                           0000D3   230 _RS0	=	0x00d3
                           0000D4   231 _RS1	=	0x00d4
                           0000D5   232 _F0	=	0x00d5
                           0000D6   233 _AC	=	0x00d6
                           0000D7   234 _CY	=	0x00d7
                                    235 ;--------------------------------------------------------
                                    236 ; overlayable register banks
                                    237 ;--------------------------------------------------------
                                    238 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        239 	.ds 8
                                    240 ;--------------------------------------------------------
                                    241 ; internal ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area DSEG    (DATA)
      000013                        244 _sioTXBuf_sloc0_1_0:
      000013                        245 	.ds 1
      000014                        246 _sioRXStr_sloc0_1_0:
      000014                        247 	.ds 1
      000015                        248 _sioRXStr_sloc1_1_0:
      000015                        249 	.ds 3
      000018                        250 _sioRXBuf_sloc0_1_0:
      000018                        251 	.ds 1
      000019                        252 _sioRXBuf_sloc1_1_0:
      000019                        253 	.ds 3
                                    254 ;--------------------------------------------------------
                                    255 ; overlayable items in internal ram 
                                    256 ;--------------------------------------------------------
                                    257 ;--------------------------------------------------------
                                    258 ; indirectly addressable internal ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area ISEG    (DATA)
                                    261 ;--------------------------------------------------------
                                    262 ; absolute internal ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area IABS    (ABS,DATA)
                                    265 	.area IABS    (ABS,DATA)
                                    266 ;--------------------------------------------------------
                                    267 ; bit data
                                    268 ;--------------------------------------------------------
                                    269 	.area BSEG    (BIT)
                                    270 ;--------------------------------------------------------
                                    271 ; paged external ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area PSEG    (PAG,XDATA)
                                    274 ;--------------------------------------------------------
                                    275 ; external ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area XSEG    (XDATA)
      00A218                        278 _sioTX_PARM_2:
      00A218                        279 	.ds 1
      00A219                        280 _sioTXStr_PARM_2:
      00A219                        281 	.ds 3
      00A21C                        282 _sioTXStr_device_65536_22:
      00A21C                        283 	.ds 1
      00A21D                        284 _sioTXBuf_PARM_2:
      00A21D                        285 	.ds 3
      00A220                        286 _sioTXBuf_PARM_3:
      00A220                        287 	.ds 2
      00A222                        288 _sioTXBuf_device_65536_25:
      00A222                        289 	.ds 1
      00A223                        290 _sioRX_d_65536_32:
      00A223                        291 	.ds 1
      00A224                        292 _sioRXStr_PARM_2:
      00A224                        293 	.ds 3
      00A227                        294 _sioRXStr_PARM_3:
      00A227                        295 	.ds 2
      00A229                        296 _sioRXStr_device_65536_33:
      00A229                        297 	.ds 1
      00A22A                        298 _sioRXBuf_PARM_2:
      00A22A                        299 	.ds 3
      00A22D                        300 _sioRXBuf_PARM_3:
      00A22D                        301 	.ds 2
      00A22F                        302 _sioRXBuf_device_65536_37:
      00A22F                        303 	.ds 1
      00A230                        304 _sioTest1_device_65536_40:
      00A230                        305 	.ds 1
      00A231                        306 _sioTest2_device_65536_43:
      00A231                        307 	.ds 1
                                    308 ;--------------------------------------------------------
                                    309 ; absolute external ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area XABS    (ABS,XDATA)
                                    312 ;--------------------------------------------------------
                                    313 ; external initialized ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area XISEG   (XDATA)
                                    316 	.area HOME    (CODE)
                                    317 	.area GSINIT0 (CODE)
                                    318 	.area GSINIT1 (CODE)
                                    319 	.area GSINIT2 (CODE)
                                    320 	.area GSINIT3 (CODE)
                                    321 	.area GSINIT4 (CODE)
                                    322 	.area GSINIT5 (CODE)
                                    323 	.area GSINIT  (CODE)
                                    324 	.area GSFINAL (CODE)
                                    325 	.area CSEG    (CODE)
                                    326 ;--------------------------------------------------------
                                    327 ; global & static initialisations
                                    328 ;--------------------------------------------------------
                                    329 	.area HOME    (CODE)
                                    330 	.area GSINIT  (CODE)
                                    331 	.area GSFINAL (CODE)
                                    332 	.area GSINIT  (CODE)
                                    333 ;--------------------------------------------------------
                                    334 ; Home
                                    335 ;--------------------------------------------------------
                                    336 	.area HOME    (CODE)
                                    337 	.area HOME    (CODE)
                                    338 ;--------------------------------------------------------
                                    339 ; code
                                    340 ;--------------------------------------------------------
                                    341 	.area CSEG    (CODE)
                                    342 ;------------------------------------------------------------
                                    343 ;Allocation info for local variables in function 'sioInit'
                                    344 ;------------------------------------------------------------
                                    345 ;device                    Allocated with name '_sioInit_device_65536_14'
                                    346 ;------------------------------------------------------------
                                    347 ;	sio.c:5: void sioInit(char device)
                                    348 ;	-----------------------------------------
                                    349 ;	 function sioInit
                                    350 ;	-----------------------------------------
      00069F                        351 _sioInit:
                           000007   352 	ar7 = 0x07
                           000006   353 	ar6 = 0x06
                           000005   354 	ar5 = 0x05
                           000004   355 	ar4 = 0x04
                           000003   356 	ar3 = 0x03
                           000002   357 	ar2 = 0x02
                           000001   358 	ar1 = 0x01
                           000000   359 	ar0 = 0x00
                                    360 ;	sio.c:9: SCON = 0x50;
      00069F 75 98 50         [24]  361 	mov	_SCON,#0x50
                                    362 ;	sio.c:10: TMOD = (TMOD & T0_MASK) | 0x21;
      0006A2 AE 89            [24]  363 	mov	r6,_TMOD
      0006A4 53 06 0F         [24]  364 	anl	ar6,#0x0f
      0006A7 7F 00            [12]  365 	mov	r7,#0x00
      0006A9 43 06 21         [24]  366 	orl	ar6,#0x21
      0006AC 8E 89            [24]  367 	mov	_TMOD,r6
                                    368 ;	sio.c:11: PCON = 0x80;
      0006AE 75 87 80         [24]  369 	mov	_PCON,#0x80
                                    370 ;	sio.c:14: TH1 = 0xFA;
      0006B1 75 8D FA         [24]  371 	mov	_TH1,#0xfa
                                    372 ;	sio.c:15: TL1 = 0xFA;
      0006B4 75 8B FA         [24]  373 	mov	_TL1,#0xfa
                                    374 ;	sio.c:16: TR1 = 1;
                                    375 ;	assignBit
      0006B7 D2 8E            [12]  376 	setb	_TR1
                                    377 ;	sio.c:19: }
      0006B9 02 00 18         [24]  378 	ljmp	__sdcc_banked_ret
                                    379 ;------------------------------------------------------------
                                    380 ;Allocation info for local variables in function 'sioClose'
                                    381 ;------------------------------------------------------------
                                    382 ;device                    Allocated with name '_sioClose_device_65536_16'
                                    383 ;------------------------------------------------------------
                                    384 ;	sio.c:21: void sioClose(char device)
                                    385 ;	-----------------------------------------
                                    386 ;	 function sioClose
                                    387 ;	-----------------------------------------
      0006BC                        388 _sioClose:
                                    389 ;	sio.c:25: SCON = 0x00;
      0006BC 75 98 00         [24]  390 	mov	_SCON,#0x00
                                    391 ;	sio.c:26: TMOD = (TMOD & T0_MASK);
      0006BF 53 89 0F         [24]  392 	anl	_TMOD,#0x0f
                                    393 ;	sio.c:27: PCON &= ~SMOD;
      0006C2 53 87 7F         [24]  394 	anl	_PCON,#0x7f
                                    395 ;	sio.c:28: TR1 = 0;
                                    396 ;	assignBit
      0006C5 C2 8E            [12]  397 	clr	_TR1
                                    398 ;	sio.c:29: }
      0006C7 02 00 18         [24]  399 	ljmp	__sdcc_banked_ret
                                    400 ;------------------------------------------------------------
                                    401 ;Allocation info for local variables in function 'sioWaitTXDone'
                                    402 ;------------------------------------------------------------
                                    403 ;device                    Allocated with name '_sioWaitTXDone_device_65536_18'
                                    404 ;------------------------------------------------------------
                                    405 ;	sio.c:31: void sioWaitTXDone(char device)
                                    406 ;	-----------------------------------------
                                    407 ;	 function sioWaitTXDone
                                    408 ;	-----------------------------------------
      0006CA                        409 _sioWaitTXDone:
                                    410 ;	sio.c:35: while(!TI);
      0006CA                        411 00101$:
      0006CA 30 99 FD         [24]  412 	jnb	_TI,00101$
                                    413 ;	sio.c:36: }
      0006CD 02 00 18         [24]  414 	ljmp	__sdcc_banked_ret
                                    415 ;------------------------------------------------------------
                                    416 ;Allocation info for local variables in function 'sioTX'
                                    417 ;------------------------------------------------------------
                                    418 ;d                         Allocated with name '_sioTX_PARM_2'
                                    419 ;device                    Allocated with name '_sioTX_device_65536_20'
                                    420 ;------------------------------------------------------------
                                    421 ;	sio.c:38: void sioTX(char device, char d)
                                    422 ;	-----------------------------------------
                                    423 ;	 function sioTX
                                    424 ;	-----------------------------------------
      0006D0                        425 _sioTX:
                                    426 ;	sio.c:42: TI = 0;
                                    427 ;	assignBit
      0006D0 C2 99            [12]  428 	clr	_TI
                                    429 ;	sio.c:43: SBUF = d;
      0006D2 90 A2 18         [24]  430 	mov	dptr,#_sioTX_PARM_2
      0006D5 E0               [24]  431 	movx	a,@dptr
      0006D6 F5 99            [12]  432 	mov	_SBUF,a
                                    433 ;	sio.c:44: while(!TI) /* assumes UART is initialized */ ;
      0006D8                        434 00101$:
      0006D8 30 99 FD         [24]  435 	jnb	_TI,00101$
                                    436 ;	sio.c:45: }
      0006DB 02 00 18         [24]  437 	ljmp	__sdcc_banked_ret
                                    438 ;------------------------------------------------------------
                                    439 ;Allocation info for local variables in function 'sioTXStr'
                                    440 ;------------------------------------------------------------
                                    441 ;s                         Allocated with name '_sioTXStr_PARM_2'
                                    442 ;device                    Allocated with name '_sioTXStr_device_65536_22'
                                    443 ;------------------------------------------------------------
                                    444 ;	sio.c:47: void sioTXStr(char device, const char* s)
                                    445 ;	-----------------------------------------
                                    446 ;	 function sioTXStr
                                    447 ;	-----------------------------------------
      0006DE                        448 _sioTXStr:
      0006DE E5 82            [12]  449 	mov	a,dpl
      0006E0 90 A2 1C         [24]  450 	mov	dptr,#_sioTXStr_device_65536_22
      0006E3 F0               [24]  451 	movx	@dptr,a
                                    452 ;	sio.c:51: do
      0006E4 E0               [24]  453 	movx	a,@dptr
      0006E5 FF               [12]  454 	mov	r7,a
      0006E6 90 A2 19         [24]  455 	mov	dptr,#_sioTXStr_PARM_2
      0006E9 E0               [24]  456 	movx	a,@dptr
      0006EA FC               [12]  457 	mov	r4,a
      0006EB A3               [24]  458 	inc	dptr
      0006EC E0               [24]  459 	movx	a,@dptr
      0006ED FD               [12]  460 	mov	r5,a
      0006EE A3               [24]  461 	inc	dptr
      0006EF E0               [24]  462 	movx	a,@dptr
      0006F0 FE               [12]  463 	mov	r6,a
      0006F1                        464 00101$:
                                    465 ;	sio.c:53: sioTX(device, *s);
      0006F1 8C 82            [24]  466 	mov	dpl,r4
      0006F3 8D 83            [24]  467 	mov	dph,r5
      0006F5 8E F0            [24]  468 	mov	b,r6
      0006F7 12 09 75         [24]  469 	lcall	__gptrget
      0006FA 90 A2 18         [24]  470 	mov	dptr,#_sioTX_PARM_2
      0006FD F0               [24]  471 	movx	@dptr,a
      0006FE 8F 82            [24]  472 	mov	dpl,r7
      000700 C0 07            [24]  473 	push	ar7
      000702 C0 06            [24]  474 	push	ar6
      000704 C0 05            [24]  475 	push	ar5
      000706 C0 04            [24]  476 	push	ar4
      000708 78 D0            [12]  477 	mov	r0,#_sioTX
      00070A 79 06            [12]  478 	mov	r1,#(_sioTX >> 8)
      00070C 7A 00            [12]  479 	mov	r2,#(_sioTX >> 16)
      00070E 12 00 06         [24]  480 	lcall	__sdcc_banked_call
      000711 D0 04            [24]  481 	pop	ar4
      000713 D0 05            [24]  482 	pop	ar5
      000715 D0 06            [24]  483 	pop	ar6
      000717 D0 07            [24]  484 	pop	ar7
                                    485 ;	sio.c:54: }while(*s++);
      000719 8C 82            [24]  486 	mov	dpl,r4
      00071B 8D 83            [24]  487 	mov	dph,r5
      00071D 8E F0            [24]  488 	mov	b,r6
      00071F 12 09 75         [24]  489 	lcall	__gptrget
      000722 FB               [12]  490 	mov	r3,a
      000723 A3               [24]  491 	inc	dptr
      000724 AC 82            [24]  492 	mov	r4,dpl
      000726 AD 83            [24]  493 	mov	r5,dph
      000728 EB               [12]  494 	mov	a,r3
      000729 70 C6            [24]  495 	jnz	00101$
                                    496 ;	sio.c:55: }
      00072B 02 00 18         [24]  497 	ljmp	__sdcc_banked_ret
                                    498 ;------------------------------------------------------------
                                    499 ;Allocation info for local variables in function 'sioTXBuf'
                                    500 ;------------------------------------------------------------
                                    501 ;sloc0                     Allocated with name '_sioTXBuf_sloc0_1_0'
                                    502 ;buf                       Allocated with name '_sioTXBuf_PARM_2'
                                    503 ;size                      Allocated with name '_sioTXBuf_PARM_3'
                                    504 ;device                    Allocated with name '_sioTXBuf_device_65536_25'
                                    505 ;i                         Allocated with name '_sioTXBuf_i_65536_26'
                                    506 ;------------------------------------------------------------
                                    507 ;	sio.c:57: void sioTXBuf(char device, const char* buf, unsigned int size)
                                    508 ;	-----------------------------------------
                                    509 ;	 function sioTXBuf
                                    510 ;	-----------------------------------------
      00072E                        511 _sioTXBuf:
      00072E E5 82            [12]  512 	mov	a,dpl
      000730 90 A2 22         [24]  513 	mov	dptr,#_sioTXBuf_device_65536_25
      000733 F0               [24]  514 	movx	@dptr,a
                                    515 ;	sio.c:61: for(i=0; i<size; i++)
      000734 E0               [24]  516 	movx	a,@dptr
      000735 F5 13            [12]  517 	mov	_sioTXBuf_sloc0_1_0,a
      000737 90 A2 1D         [24]  518 	mov	dptr,#_sioTXBuf_PARM_2
      00073A E0               [24]  519 	movx	a,@dptr
      00073B FC               [12]  520 	mov	r4,a
      00073C A3               [24]  521 	inc	dptr
      00073D E0               [24]  522 	movx	a,@dptr
      00073E FD               [12]  523 	mov	r5,a
      00073F A3               [24]  524 	inc	dptr
      000740 E0               [24]  525 	movx	a,@dptr
      000741 FE               [12]  526 	mov	r6,a
      000742 90 A2 20         [24]  527 	mov	dptr,#_sioTXBuf_PARM_3
      000745 E0               [24]  528 	movx	a,@dptr
      000746 FA               [12]  529 	mov	r2,a
      000747 A3               [24]  530 	inc	dptr
      000748 E0               [24]  531 	movx	a,@dptr
      000749 FB               [12]  532 	mov	r3,a
      00074A 78 00            [12]  533 	mov	r0,#0x00
      00074C 79 00            [12]  534 	mov	r1,#0x00
      00074E                        535 00103$:
      00074E C3               [12]  536 	clr	c
      00074F E8               [12]  537 	mov	a,r0
      000750 9A               [12]  538 	subb	a,r2
      000751 E9               [12]  539 	mov	a,r1
      000752 9B               [12]  540 	subb	a,r3
      000753 50 4D            [24]  541 	jnc	00105$
                                    542 ;	sio.c:63: sioTX(device, buf[i]);
      000755 C0 02            [24]  543 	push	ar2
      000757 C0 03            [24]  544 	push	ar3
      000759 E8               [12]  545 	mov	a,r0
      00075A 2C               [12]  546 	add	a,r4
      00075B FA               [12]  547 	mov	r2,a
      00075C E9               [12]  548 	mov	a,r1
      00075D 3D               [12]  549 	addc	a,r5
      00075E FB               [12]  550 	mov	r3,a
      00075F 8E 07            [24]  551 	mov	ar7,r6
      000761 8A 82            [24]  552 	mov	dpl,r2
      000763 8B 83            [24]  553 	mov	dph,r3
      000765 8F F0            [24]  554 	mov	b,r7
      000767 12 09 75         [24]  555 	lcall	__gptrget
      00076A FA               [12]  556 	mov	r2,a
      00076B 90 A2 18         [24]  557 	mov	dptr,#_sioTX_PARM_2
      00076E F0               [24]  558 	movx	@dptr,a
      00076F 85 13 82         [24]  559 	mov	dpl,_sioTXBuf_sloc0_1_0
      000772 C0 06            [24]  560 	push	ar6
      000774 C0 05            [24]  561 	push	ar5
      000776 C0 04            [24]  562 	push	ar4
      000778 C0 03            [24]  563 	push	ar3
      00077A C0 02            [24]  564 	push	ar2
      00077C C0 01            [24]  565 	push	ar1
      00077E C0 00            [24]  566 	push	ar0
      000780 78 D0            [12]  567 	mov	r0,#_sioTX
      000782 79 06            [12]  568 	mov	r1,#(_sioTX >> 8)
      000784 7A 00            [12]  569 	mov	r2,#(_sioTX >> 16)
      000786 12 00 06         [24]  570 	lcall	__sdcc_banked_call
      000789 D0 00            [24]  571 	pop	ar0
      00078B D0 01            [24]  572 	pop	ar1
      00078D D0 02            [24]  573 	pop	ar2
      00078F D0 03            [24]  574 	pop	ar3
      000791 D0 04            [24]  575 	pop	ar4
      000793 D0 05            [24]  576 	pop	ar5
      000795 D0 06            [24]  577 	pop	ar6
                                    578 ;	sio.c:61: for(i=0; i<size; i++)
      000797 08               [12]  579 	inc	r0
      000798 B8 00 01         [24]  580 	cjne	r0,#0x00,00117$
      00079B 09               [12]  581 	inc	r1
      00079C                        582 00117$:
      00079C D0 03            [24]  583 	pop	ar3
      00079E D0 02            [24]  584 	pop	ar2
      0007A0 80 AC            [24]  585 	sjmp	00103$
      0007A2                        586 00105$:
                                    587 ;	sio.c:65: }
      0007A2 02 00 18         [24]  588 	ljmp	__sdcc_banked_ret
                                    589 ;------------------------------------------------------------
                                    590 ;Allocation info for local variables in function 'sioWaitRXDone'
                                    591 ;------------------------------------------------------------
                                    592 ;device                    Allocated with name '_sioWaitRXDone_device_65536_29'
                                    593 ;------------------------------------------------------------
                                    594 ;	sio.c:67: void sioWaitRXDone(char device)
                                    595 ;	-----------------------------------------
                                    596 ;	 function sioWaitRXDone
                                    597 ;	-----------------------------------------
      0007A5                        598 _sioWaitRXDone:
                                    599 ;	sio.c:71: while(!RI);
      0007A5                        600 00101$:
      0007A5 30 98 FD         [24]  601 	jnb	_RI,00101$
                                    602 ;	sio.c:72: }
      0007A8 02 00 18         [24]  603 	ljmp	__sdcc_banked_ret
                                    604 ;------------------------------------------------------------
                                    605 ;Allocation info for local variables in function 'sioRX'
                                    606 ;------------------------------------------------------------
                                    607 ;device                    Allocated with name '_sioRX_device_65536_31'
                                    608 ;d                         Allocated with name '_sioRX_d_65536_32'
                                    609 ;------------------------------------------------------------
                                    610 ;	sio.c:74: char sioRX(char device)
                                    611 ;	-----------------------------------------
                                    612 ;	 function sioRX
                                    613 ;	-----------------------------------------
      0007AB                        614 _sioRX:
                                    615 ;	sio.c:80: while(!RI) /* assumes UART is initialized */ ;
      0007AB                        616 00101$:
      0007AB 30 98 FD         [24]  617 	jnb	_RI,00101$
                                    618 ;	sio.c:81: d = SBUF;
      0007AE 90 A2 23         [24]  619 	mov	dptr,#_sioRX_d_65536_32
      0007B1 E5 99            [12]  620 	mov	a,_SBUF
      0007B3 F0               [24]  621 	movx	@dptr,a
                                    622 ;	sio.c:82: RI = 0;
                                    623 ;	assignBit
      0007B4 C2 98            [12]  624 	clr	_RI
                                    625 ;	sio.c:84: return d;
      0007B6 90 A2 23         [24]  626 	mov	dptr,#_sioRX_d_65536_32
      0007B9 E0               [24]  627 	movx	a,@dptr
      0007BA FF               [12]  628 	mov	r7,a
      0007BB F5 82            [12]  629 	mov	dpl,a
                                    630 ;	sio.c:85: }
      0007BD 02 00 18         [24]  631 	ljmp	__sdcc_banked_ret
                                    632 ;------------------------------------------------------------
                                    633 ;Allocation info for local variables in function 'sioRXStr'
                                    634 ;------------------------------------------------------------
                                    635 ;sloc0                     Allocated with name '_sioRXStr_sloc0_1_0'
                                    636 ;sloc1                     Allocated with name '_sioRXStr_sloc1_1_0'
                                    637 ;s                         Allocated with name '_sioRXStr_PARM_2'
                                    638 ;size                      Allocated with name '_sioRXStr_PARM_3'
                                    639 ;device                    Allocated with name '_sioRXStr_device_65536_33'
                                    640 ;i                         Allocated with name '_sioRXStr_i_65536_34'
                                    641 ;------------------------------------------------------------
                                    642 ;	sio.c:87: void sioRXStr(char device, char* s, unsigned int size)
                                    643 ;	-----------------------------------------
                                    644 ;	 function sioRXStr
                                    645 ;	-----------------------------------------
      0007C0                        646 _sioRXStr:
      0007C0 E5 82            [12]  647 	mov	a,dpl
      0007C2 90 A2 29         [24]  648 	mov	dptr,#_sioRXStr_device_65536_33
      0007C5 F0               [24]  649 	movx	@dptr,a
                                    650 ;	sio.c:91: for(i=0; i<size; i++)
      0007C6 90 A2 24         [24]  651 	mov	dptr,#_sioRXStr_PARM_2
      0007C9 E0               [24]  652 	movx	a,@dptr
      0007CA FD               [12]  653 	mov	r5,a
      0007CB A3               [24]  654 	inc	dptr
      0007CC E0               [24]  655 	movx	a,@dptr
      0007CD FE               [12]  656 	mov	r6,a
      0007CE A3               [24]  657 	inc	dptr
      0007CF E0               [24]  658 	movx	a,@dptr
      0007D0 FF               [12]  659 	mov	r7,a
      0007D1 90 A2 29         [24]  660 	mov	dptr,#_sioRXStr_device_65536_33
      0007D4 E0               [24]  661 	movx	a,@dptr
      0007D5 F5 14            [12]  662 	mov	_sioRXStr_sloc0_1_0,a
      0007D7 90 A2 27         [24]  663 	mov	dptr,#_sioRXStr_PARM_3
      0007DA E0               [24]  664 	movx	a,@dptr
      0007DB FA               [12]  665 	mov	r2,a
      0007DC A3               [24]  666 	inc	dptr
      0007DD E0               [24]  667 	movx	a,@dptr
      0007DE FB               [12]  668 	mov	r3,a
      0007DF 78 00            [12]  669 	mov	r0,#0x00
      0007E1 79 00            [12]  670 	mov	r1,#0x00
      0007E3                        671 00105$:
      0007E3 C3               [12]  672 	clr	c
      0007E4 E8               [12]  673 	mov	a,r0
      0007E5 9A               [12]  674 	subb	a,r2
      0007E6 E9               [12]  675 	mov	a,r1
      0007E7 9B               [12]  676 	subb	a,r3
      0007E8 50 53            [24]  677 	jnc	00107$
                                    678 ;	sio.c:93: if((s[i] = sioRX(device))==0)
      0007EA C0 02            [24]  679 	push	ar2
      0007EC C0 03            [24]  680 	push	ar3
      0007EE E8               [12]  681 	mov	a,r0
      0007EF 2D               [12]  682 	add	a,r5
      0007F0 F5 15            [12]  683 	mov	_sioRXStr_sloc1_1_0,a
      0007F2 E9               [12]  684 	mov	a,r1
      0007F3 3E               [12]  685 	addc	a,r6
      0007F4 F5 16            [12]  686 	mov	(_sioRXStr_sloc1_1_0 + 1),a
      0007F6 8F 17            [24]  687 	mov	(_sioRXStr_sloc1_1_0 + 2),r7
      0007F8 85 14 82         [24]  688 	mov	dpl,_sioRXStr_sloc0_1_0
      0007FB C0 07            [24]  689 	push	ar7
      0007FD C0 06            [24]  690 	push	ar6
      0007FF C0 05            [24]  691 	push	ar5
      000801 C0 03            [24]  692 	push	ar3
      000803 C0 02            [24]  693 	push	ar2
      000805 C0 01            [24]  694 	push	ar1
      000807 C0 00            [24]  695 	push	ar0
      000809 78 AB            [12]  696 	mov	r0,#_sioRX
      00080B 79 07            [12]  697 	mov	r1,#(_sioRX >> 8)
      00080D 7A 00            [12]  698 	mov	r2,#(_sioRX >> 16)
      00080F 12 00 06         [24]  699 	lcall	__sdcc_banked_call
      000812 AC 82            [24]  700 	mov	r4,dpl
      000814 D0 00            [24]  701 	pop	ar0
      000816 D0 01            [24]  702 	pop	ar1
      000818 D0 02            [24]  703 	pop	ar2
      00081A D0 03            [24]  704 	pop	ar3
      00081C D0 05            [24]  705 	pop	ar5
      00081E D0 06            [24]  706 	pop	ar6
      000820 D0 07            [24]  707 	pop	ar7
      000822 85 15 82         [24]  708 	mov	dpl,_sioRXStr_sloc1_1_0
      000825 85 16 83         [24]  709 	mov	dph,(_sioRXStr_sloc1_1_0 + 1)
      000828 85 17 F0         [24]  710 	mov	b,(_sioRXStr_sloc1_1_0 + 2)
      00082B EC               [12]  711 	mov	a,r4
      00082C 12 09 5A         [24]  712 	lcall	__gptrput
      00082F D0 03            [24]  713 	pop	ar3
      000831 D0 02            [24]  714 	pop	ar2
      000833 EC               [12]  715 	mov	a,r4
      000834 60 07            [24]  716 	jz	00107$
                                    717 ;	sio.c:91: for(i=0; i<size; i++)
      000836 08               [12]  718 	inc	r0
      000837 B8 00 A9         [24]  719 	cjne	r0,#0x00,00105$
      00083A 09               [12]  720 	inc	r1
      00083B 80 A6            [24]  721 	sjmp	00105$
      00083D                        722 00107$:
                                    723 ;	sio.c:96: }
      00083D 02 00 18         [24]  724 	ljmp	__sdcc_banked_ret
                                    725 ;------------------------------------------------------------
                                    726 ;Allocation info for local variables in function 'sioRXBuf'
                                    727 ;------------------------------------------------------------
                                    728 ;sloc0                     Allocated with name '_sioRXBuf_sloc0_1_0'
                                    729 ;sloc1                     Allocated with name '_sioRXBuf_sloc1_1_0'
                                    730 ;buf                       Allocated with name '_sioRXBuf_PARM_2'
                                    731 ;size                      Allocated with name '_sioRXBuf_PARM_3'
                                    732 ;device                    Allocated with name '_sioRXBuf_device_65536_37'
                                    733 ;i                         Allocated with name '_sioRXBuf_i_65536_38'
                                    734 ;------------------------------------------------------------
                                    735 ;	sio.c:98: void sioRXBuf(char device, char* buf, unsigned int size)
                                    736 ;	-----------------------------------------
                                    737 ;	 function sioRXBuf
                                    738 ;	-----------------------------------------
      000840                        739 _sioRXBuf:
      000840 E5 82            [12]  740 	mov	a,dpl
      000842 90 A2 2F         [24]  741 	mov	dptr,#_sioRXBuf_device_65536_37
      000845 F0               [24]  742 	movx	@dptr,a
                                    743 ;	sio.c:102: for(i=0; i<size; i++)
      000846 90 A2 2A         [24]  744 	mov	dptr,#_sioRXBuf_PARM_2
      000849 E0               [24]  745 	movx	a,@dptr
      00084A FD               [12]  746 	mov	r5,a
      00084B A3               [24]  747 	inc	dptr
      00084C E0               [24]  748 	movx	a,@dptr
      00084D FE               [12]  749 	mov	r6,a
      00084E A3               [24]  750 	inc	dptr
      00084F E0               [24]  751 	movx	a,@dptr
      000850 FF               [12]  752 	mov	r7,a
      000851 90 A2 2F         [24]  753 	mov	dptr,#_sioRXBuf_device_65536_37
      000854 E0               [24]  754 	movx	a,@dptr
      000855 F5 18            [12]  755 	mov	_sioRXBuf_sloc0_1_0,a
      000857 90 A2 2D         [24]  756 	mov	dptr,#_sioRXBuf_PARM_3
      00085A E0               [24]  757 	movx	a,@dptr
      00085B FA               [12]  758 	mov	r2,a
      00085C A3               [24]  759 	inc	dptr
      00085D E0               [24]  760 	movx	a,@dptr
      00085E FB               [12]  761 	mov	r3,a
      00085F 78 00            [12]  762 	mov	r0,#0x00
      000861 79 00            [12]  763 	mov	r1,#0x00
      000863                        764 00103$:
      000863 C3               [12]  765 	clr	c
      000864 E8               [12]  766 	mov	a,r0
      000865 9A               [12]  767 	subb	a,r2
      000866 E9               [12]  768 	mov	a,r1
      000867 9B               [12]  769 	subb	a,r3
      000868 50 50            [24]  770 	jnc	00105$
                                    771 ;	sio.c:103: buf[i] = sioRX(device);
      00086A C0 02            [24]  772 	push	ar2
      00086C C0 03            [24]  773 	push	ar3
      00086E E8               [12]  774 	mov	a,r0
      00086F 2D               [12]  775 	add	a,r5
      000870 F5 19            [12]  776 	mov	_sioRXBuf_sloc1_1_0,a
      000872 E9               [12]  777 	mov	a,r1
      000873 3E               [12]  778 	addc	a,r6
      000874 F5 1A            [12]  779 	mov	(_sioRXBuf_sloc1_1_0 + 1),a
      000876 8F 1B            [24]  780 	mov	(_sioRXBuf_sloc1_1_0 + 2),r7
      000878 85 18 82         [24]  781 	mov	dpl,_sioRXBuf_sloc0_1_0
      00087B C0 07            [24]  782 	push	ar7
      00087D C0 06            [24]  783 	push	ar6
      00087F C0 05            [24]  784 	push	ar5
      000881 C0 03            [24]  785 	push	ar3
      000883 C0 02            [24]  786 	push	ar2
      000885 C0 01            [24]  787 	push	ar1
      000887 C0 00            [24]  788 	push	ar0
      000889 78 AB            [12]  789 	mov	r0,#_sioRX
      00088B 79 07            [12]  790 	mov	r1,#(_sioRX >> 8)
      00088D 7A 00            [12]  791 	mov	r2,#(_sioRX >> 16)
      00088F 12 00 06         [24]  792 	lcall	__sdcc_banked_call
      000892 AC 82            [24]  793 	mov	r4,dpl
      000894 D0 00            [24]  794 	pop	ar0
      000896 D0 01            [24]  795 	pop	ar1
      000898 D0 02            [24]  796 	pop	ar2
      00089A D0 03            [24]  797 	pop	ar3
      00089C D0 05            [24]  798 	pop	ar5
      00089E D0 06            [24]  799 	pop	ar6
      0008A0 D0 07            [24]  800 	pop	ar7
      0008A2 85 19 82         [24]  801 	mov	dpl,_sioRXBuf_sloc1_1_0
      0008A5 85 1A 83         [24]  802 	mov	dph,(_sioRXBuf_sloc1_1_0 + 1)
      0008A8 85 1B F0         [24]  803 	mov	b,(_sioRXBuf_sloc1_1_0 + 2)
      0008AB EC               [12]  804 	mov	a,r4
      0008AC 12 09 5A         [24]  805 	lcall	__gptrput
                                    806 ;	sio.c:102: for(i=0; i<size; i++)
      0008AF 08               [12]  807 	inc	r0
      0008B0 B8 00 01         [24]  808 	cjne	r0,#0x00,00117$
      0008B3 09               [12]  809 	inc	r1
      0008B4                        810 00117$:
      0008B4 D0 03            [24]  811 	pop	ar3
      0008B6 D0 02            [24]  812 	pop	ar2
      0008B8 80 A9            [24]  813 	sjmp	00103$
      0008BA                        814 00105$:
                                    815 ;	sio.c:104: }
      0008BA 02 00 18         [24]  816 	ljmp	__sdcc_banked_ret
                                    817 ;------------------------------------------------------------
                                    818 ;Allocation info for local variables in function 'sioTest1'
                                    819 ;------------------------------------------------------------
                                    820 ;device                    Allocated with name '_sioTest1_device_65536_40'
                                    821 ;------------------------------------------------------------
                                    822 ;	sio.c:106: void sioTest1(char device)
                                    823 ;	-----------------------------------------
                                    824 ;	 function sioTest1
                                    825 ;	-----------------------------------------
      0008BD                        826 _sioTest1:
      0008BD E5 82            [12]  827 	mov	a,dpl
      0008BF 90 A2 30         [24]  828 	mov	dptr,#_sioTest1_device_65536_40
      0008C2 F0               [24]  829 	movx	@dptr,a
                                    830 ;	sio.c:108: sioInit(device);
      0008C3 E0               [24]  831 	movx	a,@dptr
      0008C4 FF               [12]  832 	mov	r7,a
      0008C5 F5 82            [12]  833 	mov	dpl,a
      0008C7 C0 07            [24]  834 	push	ar7
      0008C9 78 9F            [12]  835 	mov	r0,#_sioInit
      0008CB 79 06            [12]  836 	mov	r1,#(_sioInit >> 8)
      0008CD 7A 00            [12]  837 	mov	r2,#(_sioInit >> 16)
      0008CF 12 00 06         [24]  838 	lcall	__sdcc_banked_call
      0008D2 D0 07            [24]  839 	pop	ar7
                                    840 ;	sio.c:109: while(1)
      0008D4                        841 00102$:
                                    842 ;	sio.c:111: sioTX(device, sioRX(device));
      0008D4 8F 82            [24]  843 	mov	dpl,r7
      0008D6 C0 07            [24]  844 	push	ar7
      0008D8 78 AB            [12]  845 	mov	r0,#_sioRX
      0008DA 79 07            [12]  846 	mov	r1,#(_sioRX >> 8)
      0008DC 7A 00            [12]  847 	mov	r2,#(_sioRX >> 16)
      0008DE 12 00 06         [24]  848 	lcall	__sdcc_banked_call
      0008E1 AE 82            [24]  849 	mov	r6,dpl
      0008E3 D0 07            [24]  850 	pop	ar7
      0008E5 90 A2 18         [24]  851 	mov	dptr,#_sioTX_PARM_2
      0008E8 EE               [12]  852 	mov	a,r6
      0008E9 F0               [24]  853 	movx	@dptr,a
      0008EA 8F 82            [24]  854 	mov	dpl,r7
      0008EC C0 07            [24]  855 	push	ar7
      0008EE 78 D0            [12]  856 	mov	r0,#_sioTX
      0008F0 79 06            [12]  857 	mov	r1,#(_sioTX >> 8)
      0008F2 7A 00            [12]  858 	mov	r2,#(_sioTX >> 16)
      0008F4 12 00 06         [24]  859 	lcall	__sdcc_banked_call
      0008F7 D0 07            [24]  860 	pop	ar7
                                    861 ;	sio.c:113: }
      0008F9 80 D9            [24]  862 	sjmp	00102$
                                    863 ;------------------------------------------------------------
                                    864 ;Allocation info for local variables in function 'sioTest2'
                                    865 ;------------------------------------------------------------
                                    866 ;device                    Allocated with name '_sioTest2_device_65536_43'
                                    867 ;------------------------------------------------------------
                                    868 ;	sio.c:125: void sioTest2(char device)
                                    869 ;	-----------------------------------------
                                    870 ;	 function sioTest2
                                    871 ;	-----------------------------------------
      0008FB                        872 _sioTest2:
      0008FB E5 82            [12]  873 	mov	a,dpl
      0008FD 90 A2 31         [24]  874 	mov	dptr,#_sioTest2_device_65536_43
      000900 F0               [24]  875 	movx	@dptr,a
                                    876 ;	sio.c:127: sioInit(device);
      000901 E0               [24]  877 	movx	a,@dptr
      000902 FF               [12]  878 	mov	r7,a
      000903 F5 82            [12]  879 	mov	dpl,a
      000905 C0 07            [24]  880 	push	ar7
      000907 78 9F            [12]  881 	mov	r0,#_sioInit
      000909 79 06            [12]  882 	mov	r1,#(_sioInit >> 8)
      00090B 7A 00            [12]  883 	mov	r2,#(_sioInit >> 16)
      00090D 12 00 06         [24]  884 	lcall	__sdcc_banked_call
      000910 D0 07            [24]  885 	pop	ar7
                                    886 ;	sio.c:128: while(1)
      000912                        887 00102$:
                                    888 ;	sio.c:130: sioTXStr(device, "Fuck you now!!!!\r\n");
      000912 90 A2 19         [24]  889 	mov	dptr,#_sioTXStr_PARM_2
      000915 74 C9            [12]  890 	mov	a,#___str_0
      000917 F0               [24]  891 	movx	@dptr,a
      000918 74 09            [12]  892 	mov	a,#(___str_0 >> 8)
      00091A A3               [24]  893 	inc	dptr
      00091B F0               [24]  894 	movx	@dptr,a
      00091C 74 80            [12]  895 	mov	a,#0x80
      00091E A3               [24]  896 	inc	dptr
      00091F F0               [24]  897 	movx	@dptr,a
      000920 8F 82            [24]  898 	mov	dpl,r7
      000922 C0 07            [24]  899 	push	ar7
      000924 78 DE            [12]  900 	mov	r0,#_sioTXStr
      000926 79 06            [12]  901 	mov	r1,#(_sioTXStr >> 8)
      000928 7A 00            [12]  902 	mov	r2,#(_sioTXStr >> 16)
      00092A 12 00 06         [24]  903 	lcall	__sdcc_banked_call
      00092D D0 07            [24]  904 	pop	ar7
                                    905 ;	sio.c:131: sioTXBuf(device, data, 26*2);
      00092F 90 A2 1D         [24]  906 	mov	dptr,#_sioTXBuf_PARM_2
      000932 74 95            [12]  907 	mov	a,#_data
      000934 F0               [24]  908 	movx	@dptr,a
      000935 74 09            [12]  909 	mov	a,#(_data >> 8)
      000937 A3               [24]  910 	inc	dptr
      000938 F0               [24]  911 	movx	@dptr,a
      000939 74 80            [12]  912 	mov	a,#0x80
      00093B A3               [24]  913 	inc	dptr
      00093C F0               [24]  914 	movx	@dptr,a
      00093D 90 A2 20         [24]  915 	mov	dptr,#_sioTXBuf_PARM_3
      000940 74 34            [12]  916 	mov	a,#0x34
      000942 F0               [24]  917 	movx	@dptr,a
      000943 E4               [12]  918 	clr	a
      000944 A3               [24]  919 	inc	dptr
      000945 F0               [24]  920 	movx	@dptr,a
      000946 8F 82            [24]  921 	mov	dpl,r7
      000948 C0 07            [24]  922 	push	ar7
      00094A 78 2E            [12]  923 	mov	r0,#_sioTXBuf
      00094C 79 07            [12]  924 	mov	r1,#(_sioTXBuf >> 8)
      00094E 7A 00            [12]  925 	mov	r2,#(_sioTXBuf >> 16)
      000950 12 00 06         [24]  926 	lcall	__sdcc_banked_call
      000953 D0 07            [24]  927 	pop	ar7
                                    928 ;	sio.c:133: }
      000955 80 BB            [24]  929 	sjmp	00102$
                                    930 ;------------------------------------------------------------
                                    931 ;Allocation info for local variables in function 'sioTest3'
                                    932 ;------------------------------------------------------------
                                    933 ;device                    Allocated with name '_sioTest3_device_65536_46'
                                    934 ;------------------------------------------------------------
                                    935 ;	sio.c:135: void sioTest3(char device)
                                    936 ;	-----------------------------------------
                                    937 ;	 function sioTest3
                                    938 ;	-----------------------------------------
      000957                        939 _sioTest3:
                                    940 ;	sio.c:137: device;
                                    941 ;	sio.c:138: }
      000957 02 00 18         [24]  942 	ljmp	__sdcc_banked_ret
                                    943 	.area CSEG    (CODE)
                                    944 	.area CONST   (CODE)
      000995                        945 _data:
      000995 61                     946 	.db #0x61	; 97	'a'
      000996 62                     947 	.db #0x62	; 98	'b'
      000997 63                     948 	.db #0x63	; 99	'c'
      000998 64                     949 	.db #0x64	; 100	'd'
      000999 65                     950 	.db #0x65	; 101	'e'
      00099A 66                     951 	.db #0x66	; 102	'f'
      00099B 67                     952 	.db #0x67	; 103	'g'
      00099C 68                     953 	.db #0x68	; 104	'h'
      00099D 69                     954 	.db #0x69	; 105	'i'
      00099E 6A                     955 	.db #0x6a	; 106	'j'
      00099F 6B                     956 	.db #0x6b	; 107	'k'
      0009A0 6C                     957 	.db #0x6c	; 108	'l'
      0009A1 6D                     958 	.db #0x6d	; 109	'm'
      0009A2 6E                     959 	.db #0x6e	; 110	'n'
      0009A3 6F                     960 	.db #0x6f	; 111	'o'
      0009A4 70                     961 	.db #0x70	; 112	'p'
      0009A5 71                     962 	.db #0x71	; 113	'q'
      0009A6 72                     963 	.db #0x72	; 114	'r'
      0009A7 73                     964 	.db #0x73	; 115	's'
      0009A8 74                     965 	.db #0x74	; 116	't'
      0009A9 75                     966 	.db #0x75	; 117	'u'
      0009AA 76                     967 	.db #0x76	; 118	'v'
      0009AB 77                     968 	.db #0x77	; 119	'w'
      0009AC 78                     969 	.db #0x78	; 120	'x'
      0009AD 79                     970 	.db #0x79	; 121	'y'
      0009AE 7A                     971 	.db #0x7a	; 122	'z'
      0009AF 41                     972 	.db #0x41	; 65	'A'
      0009B0 42                     973 	.db #0x42	; 66	'B'
      0009B1 43                     974 	.db #0x43	; 67	'C'
      0009B2 44                     975 	.db #0x44	; 68	'D'
      0009B3 45                     976 	.db #0x45	; 69	'E'
      0009B4 46                     977 	.db #0x46	; 70	'F'
      0009B5 47                     978 	.db #0x47	; 71	'G'
      0009B6 48                     979 	.db #0x48	; 72	'H'
      0009B7 49                     980 	.db #0x49	; 73	'I'
      0009B8 4A                     981 	.db #0x4a	; 74	'J'
      0009B9 4B                     982 	.db #0x4b	; 75	'K'
      0009BA 4C                     983 	.db #0x4c	; 76	'L'
      0009BB 4D                     984 	.db #0x4d	; 77	'M'
      0009BC 4E                     985 	.db #0x4e	; 78	'N'
      0009BD 4F                     986 	.db #0x4f	; 79	'O'
      0009BE 50                     987 	.db #0x50	; 80	'P'
      0009BF 51                     988 	.db #0x51	; 81	'Q'
      0009C0 52                     989 	.db #0x52	; 82	'R'
      0009C1 53                     990 	.db #0x53	; 83	'S'
      0009C2 54                     991 	.db #0x54	; 84	'T'
      0009C3 55                     992 	.db #0x55	; 85	'U'
      0009C4 56                     993 	.db #0x56	; 86	'V'
      0009C5 57                     994 	.db #0x57	; 87	'W'
      0009C6 58                     995 	.db #0x58	; 88	'X'
      0009C7 59                     996 	.db #0x59	; 89	'Y'
      0009C8 5A                     997 	.db #0x5a	; 90	'Z'
      0009C9                        998 ___str_0:
      0009C9 46 75 63 6B 20 79 6F   999 	.ascii "Fuck you now!!!!"
             75 20 6E 6F 77 21 21
             21 21
      0009D9 0D                    1000 	.db 0x0d
      0009DA 0A                    1001 	.db 0x0a
      0009DB 00                    1002 	.db 0x00
                                   1003 	.area XINIT   (CODE)
                                   1004 	.area CABS    (ABS,CODE)
