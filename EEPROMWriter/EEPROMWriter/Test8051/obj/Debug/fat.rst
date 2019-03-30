                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module fat
                                      6 	.optsdcc -mmcs51 --model-huge
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _sioTXBuf
                                     12 	.globl _sioTXStr
                                     13 	.globl _f_mount
                                     14 	.globl _f_read
                                     15 	.globl _f_close
                                     16 	.globl _f_open
                                     17 	.globl _CY
                                     18 	.globl _AC
                                     19 	.globl _F0
                                     20 	.globl _RS1
                                     21 	.globl _RS0
                                     22 	.globl _OV
                                     23 	.globl _F1
                                     24 	.globl _P
                                     25 	.globl _PS
                                     26 	.globl _PT1
                                     27 	.globl _PX1
                                     28 	.globl _PT0
                                     29 	.globl _PX0
                                     30 	.globl _RD
                                     31 	.globl _WR
                                     32 	.globl _T1
                                     33 	.globl _T0
                                     34 	.globl _INT1
                                     35 	.globl _INT0
                                     36 	.globl _TXD
                                     37 	.globl _RXD
                                     38 	.globl _P3_7
                                     39 	.globl _P3_6
                                     40 	.globl _P3_5
                                     41 	.globl _P3_4
                                     42 	.globl _P3_3
                                     43 	.globl _P3_2
                                     44 	.globl _P3_1
                                     45 	.globl _P3_0
                                     46 	.globl _EA
                                     47 	.globl _ES
                                     48 	.globl _ET1
                                     49 	.globl _EX1
                                     50 	.globl _ET0
                                     51 	.globl _EX0
                                     52 	.globl _P2_7
                                     53 	.globl _P2_6
                                     54 	.globl _P2_5
                                     55 	.globl _P2_4
                                     56 	.globl _P2_3
                                     57 	.globl _P2_2
                                     58 	.globl _P2_1
                                     59 	.globl _P2_0
                                     60 	.globl _SM0
                                     61 	.globl _SM1
                                     62 	.globl _SM2
                                     63 	.globl _REN
                                     64 	.globl _TB8
                                     65 	.globl _RB8
                                     66 	.globl _TI
                                     67 	.globl _RI
                                     68 	.globl _P1_7
                                     69 	.globl _P1_6
                                     70 	.globl _P1_5
                                     71 	.globl _P1_4
                                     72 	.globl _P1_3
                                     73 	.globl _P1_2
                                     74 	.globl _P1_1
                                     75 	.globl _P1_0
                                     76 	.globl _TF1
                                     77 	.globl _TR1
                                     78 	.globl _TF0
                                     79 	.globl _TR0
                                     80 	.globl _IE1
                                     81 	.globl _IT1
                                     82 	.globl _IE0
                                     83 	.globl _IT0
                                     84 	.globl _P0_7
                                     85 	.globl _P0_6
                                     86 	.globl _P0_5
                                     87 	.globl _P0_4
                                     88 	.globl _P0_3
                                     89 	.globl _P0_2
                                     90 	.globl _P0_1
                                     91 	.globl _P0_0
                                     92 	.globl _B
                                     93 	.globl _ACC
                                     94 	.globl _PSW
                                     95 	.globl _IP
                                     96 	.globl _P3
                                     97 	.globl _IE
                                     98 	.globl _P2
                                     99 	.globl _SBUF
                                    100 	.globl _SCON
                                    101 	.globl _P1
                                    102 	.globl _TH1
                                    103 	.globl _TH0
                                    104 	.globl _TL1
                                    105 	.globl _TL0
                                    106 	.globl _TMOD
                                    107 	.globl _TCON
                                    108 	.globl _PCON
                                    109 	.globl _DPH
                                    110 	.globl _DPL
                                    111 	.globl _SP
                                    112 	.globl _P0
                                    113 	.globl _filename
                                    114 	.globl _fil
                                    115 	.globl _fs
                                    116 	.globl _br
                                    117 	.globl _res
                                    118 	.globl _fatfsTest
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
      00A012                        258 _res::
      00A012                        259 	.ds 1
      00A013                        260 _br::
      00A013                        261 	.ds 2
      00A015                        262 _fs::
      00A015                        263 	.ds 550
      00A23B                        264 _fil::
      00A23B                        265 	.ds 30
      00A259                        266 _fatfsTest_buf_65536_56:
      00A259                        267 	.ds 3
      00A25C                        268 _fatfsTest_br_65536_57:
      00A25C                        269 	.ds 2
                                    270 ;--------------------------------------------------------
                                    271 ; absolute external ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area XABS    (ABS,XDATA)
                                    274 ;--------------------------------------------------------
                                    275 ; external initialized ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area XISEG   (XDATA)
      00A47F                        278 _filename::
      00A47F                        279 	.ds 3
                                    280 	.area HOME    (CODE)
                                    281 	.area GSINIT0 (CODE)
                                    282 	.area GSINIT1 (CODE)
                                    283 	.area GSINIT2 (CODE)
                                    284 	.area GSINIT3 (CODE)
                                    285 	.area GSINIT4 (CODE)
                                    286 	.area GSINIT5 (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 	.area GSFINAL (CODE)
                                    289 	.area CSEG    (CODE)
                                    290 ;--------------------------------------------------------
                                    291 ; global & static initialisations
                                    292 ;--------------------------------------------------------
                                    293 	.area HOME    (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.area GSFINAL (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 ;--------------------------------------------------------
                                    298 ; Home
                                    299 ;--------------------------------------------------------
                                    300 	.area HOME    (CODE)
                                    301 	.area HOME    (CODE)
                                    302 ;--------------------------------------------------------
                                    303 ; code
                                    304 ;--------------------------------------------------------
                                    305 	.area CSEG    (CODE)
                                    306 ;------------------------------------------------------------
                                    307 ;Allocation info for local variables in function 'fatfsTest'
                                    308 ;------------------------------------------------------------
                                    309 ;buf                       Allocated with name '_fatfsTest_buf_65536_56'
                                    310 ;br                        Allocated with name '_fatfsTest_br_65536_57'
                                    311 ;------------------------------------------------------------
                                    312 ;	fat.c:11: unsigned int fatfsTest(char *buf)
                                    313 ;	-----------------------------------------
                                    314 ;	 function fatfsTest
                                    315 ;	-----------------------------------------
      000460                        316 _fatfsTest:
                           000007   317 	ar7 = 0x07
                           000006   318 	ar6 = 0x06
                           000005   319 	ar5 = 0x05
                           000004   320 	ar4 = 0x04
                           000003   321 	ar3 = 0x03
                           000002   322 	ar2 = 0x02
                           000001   323 	ar1 = 0x01
                           000000   324 	ar0 = 0x00
      000460 AF F0            [24]  325 	mov	r7,b
      000462 AE 83            [24]  326 	mov	r6,dph
      000464 E5 82            [12]  327 	mov	a,dpl
      000466 90 A2 59         [24]  328 	mov	dptr,#_fatfsTest_buf_65536_56
      000469 F0               [24]  329 	movx	@dptr,a
      00046A EE               [12]  330 	mov	a,r6
      00046B A3               [24]  331 	inc	dptr
      00046C F0               [24]  332 	movx	@dptr,a
      00046D EF               [12]  333 	mov	a,r7
      00046E A3               [24]  334 	inc	dptr
      00046F F0               [24]  335 	movx	@dptr,a
                                    336 ;	fat.c:13: unsigned int br = 0;
      000470 90 A2 5C         [24]  337 	mov	dptr,#_fatfsTest_br_65536_57
      000473 E4               [12]  338 	clr	a
      000474 F0               [24]  339 	movx	@dptr,a
      000475 A3               [24]  340 	inc	dptr
      000476 F0               [24]  341 	movx	@dptr,a
                                    342 ;	fat.c:14: res = f_mount(&fs, "0:", 0);
      000477 90 00 00         [24]  343 	mov	dptr,#_f_mount_PARM_2
      00047A 74 72            [12]  344 	mov	a,#___str_0
      00047C F0               [24]  345 	movx	@dptr,a
      00047D 74 0B            [12]  346 	mov	a,#(___str_0 >> 8)
      00047F A3               [24]  347 	inc	dptr
      000480 F0               [24]  348 	movx	@dptr,a
      000481 74 80            [12]  349 	mov	a,#0x80
      000483 A3               [24]  350 	inc	dptr
      000484 F0               [24]  351 	movx	@dptr,a
      000485 90 00 00         [24]  352 	mov	dptr,#_f_mount_PARM_3
      000488 E4               [12]  353 	clr	a
      000489 F0               [24]  354 	movx	@dptr,a
      00048A 90 A0 15         [24]  355 	mov	dptr,#_fs
      00048D 75 F0 00         [24]  356 	mov	b,#0x00
      000490 78 00            [12]  357 	mov	r0,#_f_mount
      000492 79 00            [12]  358 	mov	r1,#(_f_mount >> 8)
      000494 7A 00            [12]  359 	mov	r2,#(_f_mount >> 16)
      000496 12 00 06         [24]  360 	lcall	__sdcc_banked_call
      000499 AF 82            [24]  361 	mov	r7,dpl
      00049B 90 A0 12         [24]  362 	mov	dptr,#_res
      00049E EF               [12]  363 	mov	a,r7
      00049F F0               [24]  364 	movx	@dptr,a
                                    365 ;	fat.c:15: if(res==FR_OK)
      0004A0 EF               [12]  366 	mov	a,r7
      0004A1 70 1C            [24]  367 	jnz	00102$
                                    368 ;	fat.c:17: sioTXStr(0, "f_mount OK\r\n");
      0004A3 90 A4 65         [24]  369 	mov	dptr,#_sioTXStr_PARM_2
      0004A6 74 75            [12]  370 	mov	a,#___str_1
      0004A8 F0               [24]  371 	movx	@dptr,a
      0004A9 74 0B            [12]  372 	mov	a,#(___str_1 >> 8)
      0004AB A3               [24]  373 	inc	dptr
      0004AC F0               [24]  374 	movx	@dptr,a
      0004AD 74 80            [12]  375 	mov	a,#0x80
      0004AF A3               [24]  376 	inc	dptr
      0004B0 F0               [24]  377 	movx	@dptr,a
      0004B1 75 82 00         [24]  378 	mov	dpl,#0x00
      0004B4 78 BF            [12]  379 	mov	r0,#_sioTXStr
      0004B6 79 08            [12]  380 	mov	r1,#(_sioTXStr >> 8)
      0004B8 7A 00            [12]  381 	mov	r2,#(_sioTXStr >> 16)
      0004BA 12 00 06         [24]  382 	lcall	__sdcc_banked_call
      0004BD 80 1A            [24]  383 	sjmp	00103$
      0004BF                        384 00102$:
                                    385 ;	fat.c:21: sioTXStr(0, "f_mount failed\r\n");
      0004BF 90 A4 65         [24]  386 	mov	dptr,#_sioTXStr_PARM_2
      0004C2 74 82            [12]  387 	mov	a,#___str_2
      0004C4 F0               [24]  388 	movx	@dptr,a
      0004C5 74 0B            [12]  389 	mov	a,#(___str_2 >> 8)
      0004C7 A3               [24]  390 	inc	dptr
      0004C8 F0               [24]  391 	movx	@dptr,a
      0004C9 74 80            [12]  392 	mov	a,#0x80
      0004CB A3               [24]  393 	inc	dptr
      0004CC F0               [24]  394 	movx	@dptr,a
      0004CD 75 82 00         [24]  395 	mov	dpl,#0x00
      0004D0 78 BF            [12]  396 	mov	r0,#_sioTXStr
      0004D2 79 08            [12]  397 	mov	r1,#(_sioTXStr >> 8)
      0004D4 7A 00            [12]  398 	mov	r2,#(_sioTXStr >> 16)
      0004D6 12 00 06         [24]  399 	lcall	__sdcc_banked_call
      0004D9                        400 00103$:
                                    401 ;	fat.c:24: sioTXStr(0, buf);
      0004D9 90 A2 59         [24]  402 	mov	dptr,#_fatfsTest_buf_65536_56
      0004DC E0               [24]  403 	movx	a,@dptr
      0004DD FD               [12]  404 	mov	r5,a
      0004DE A3               [24]  405 	inc	dptr
      0004DF E0               [24]  406 	movx	a,@dptr
      0004E0 FE               [12]  407 	mov	r6,a
      0004E1 A3               [24]  408 	inc	dptr
      0004E2 E0               [24]  409 	movx	a,@dptr
      0004E3 FF               [12]  410 	mov	r7,a
      0004E4 90 A4 65         [24]  411 	mov	dptr,#_sioTXStr_PARM_2
      0004E7 ED               [12]  412 	mov	a,r5
      0004E8 F0               [24]  413 	movx	@dptr,a
      0004E9 EE               [12]  414 	mov	a,r6
      0004EA A3               [24]  415 	inc	dptr
      0004EB F0               [24]  416 	movx	@dptr,a
      0004EC EF               [12]  417 	mov	a,r7
      0004ED A3               [24]  418 	inc	dptr
      0004EE F0               [24]  419 	movx	@dptr,a
      0004EF 75 82 00         [24]  420 	mov	dpl,#0x00
      0004F2 78 BF            [12]  421 	mov	r0,#_sioTXStr
      0004F4 79 08            [12]  422 	mov	r1,#(_sioTXStr >> 8)
      0004F6 7A 00            [12]  423 	mov	r2,#(_sioTXStr >> 16)
      0004F8 12 00 06         [24]  424 	lcall	__sdcc_banked_call
                                    425 ;	fat.c:25: res = f_open(&fil, "1.txt", FA_READ);
      0004FB 90 00 00         [24]  426 	mov	dptr,#_f_open_PARM_2
      0004FE 74 93            [12]  427 	mov	a,#___str_3
      000500 F0               [24]  428 	movx	@dptr,a
      000501 74 0B            [12]  429 	mov	a,#(___str_3 >> 8)
      000503 A3               [24]  430 	inc	dptr
      000504 F0               [24]  431 	movx	@dptr,a
      000505 74 80            [12]  432 	mov	a,#0x80
      000507 A3               [24]  433 	inc	dptr
      000508 F0               [24]  434 	movx	@dptr,a
      000509 90 00 00         [24]  435 	mov	dptr,#_f_open_PARM_3
      00050C 23               [12]  436 	rl	a
      00050D F0               [24]  437 	movx	@dptr,a
      00050E 90 A2 3B         [24]  438 	mov	dptr,#_fil
      000511 75 F0 00         [24]  439 	mov	b,#0x00
      000514 78 00            [12]  440 	mov	r0,#_f_open
      000516 79 00            [12]  441 	mov	r1,#(_f_open >> 8)
      000518 7A 00            [12]  442 	mov	r2,#(_f_open >> 16)
      00051A 12 00 06         [24]  443 	lcall	__sdcc_banked_call
      00051D AF 82            [24]  444 	mov	r7,dpl
      00051F 90 A0 12         [24]  445 	mov	dptr,#_res
      000522 EF               [12]  446 	mov	a,r7
      000523 F0               [24]  447 	movx	@dptr,a
                                    448 ;	fat.c:26: if(res==FR_OK)
      000524 EF               [12]  449 	mov	a,r7
      000525 70 1C            [24]  450 	jnz	00105$
                                    451 ;	fat.c:28: sioTXStr(0, "f_open OK\r\n");
      000527 90 A4 65         [24]  452 	mov	dptr,#_sioTXStr_PARM_2
      00052A 74 99            [12]  453 	mov	a,#___str_4
      00052C F0               [24]  454 	movx	@dptr,a
      00052D 74 0B            [12]  455 	mov	a,#(___str_4 >> 8)
      00052F A3               [24]  456 	inc	dptr
      000530 F0               [24]  457 	movx	@dptr,a
      000531 74 80            [12]  458 	mov	a,#0x80
      000533 A3               [24]  459 	inc	dptr
      000534 F0               [24]  460 	movx	@dptr,a
      000535 75 82 00         [24]  461 	mov	dpl,#0x00
      000538 78 BF            [12]  462 	mov	r0,#_sioTXStr
      00053A 79 08            [12]  463 	mov	r1,#(_sioTXStr >> 8)
      00053C 7A 00            [12]  464 	mov	r2,#(_sioTXStr >> 16)
      00053E 12 00 06         [24]  465 	lcall	__sdcc_banked_call
      000541 80 1A            [24]  466 	sjmp	00106$
      000543                        467 00105$:
                                    468 ;	fat.c:32: sioTXStr(0, "f_open failed\r\n");
      000543 90 A4 65         [24]  469 	mov	dptr,#_sioTXStr_PARM_2
      000546 74 A5            [12]  470 	mov	a,#___str_5
      000548 F0               [24]  471 	movx	@dptr,a
      000549 74 0B            [12]  472 	mov	a,#(___str_5 >> 8)
      00054B A3               [24]  473 	inc	dptr
      00054C F0               [24]  474 	movx	@dptr,a
      00054D 74 80            [12]  475 	mov	a,#0x80
      00054F A3               [24]  476 	inc	dptr
      000550 F0               [24]  477 	movx	@dptr,a
      000551 75 82 00         [24]  478 	mov	dpl,#0x00
      000554 78 BF            [12]  479 	mov	r0,#_sioTXStr
      000556 79 08            [12]  480 	mov	r1,#(_sioTXStr >> 8)
      000558 7A 00            [12]  481 	mov	r2,#(_sioTXStr >> 16)
      00055A 12 00 06         [24]  482 	lcall	__sdcc_banked_call
      00055D                        483 00106$:
                                    484 ;	fat.c:35: res = f_read(&fil, buf, SECTOR_SIZE, &br);
      00055D 90 A2 59         [24]  485 	mov	dptr,#_fatfsTest_buf_65536_56
      000560 E0               [24]  486 	movx	a,@dptr
      000561 FD               [12]  487 	mov	r5,a
      000562 A3               [24]  488 	inc	dptr
      000563 E0               [24]  489 	movx	a,@dptr
      000564 FE               [12]  490 	mov	r6,a
      000565 A3               [24]  491 	inc	dptr
      000566 E0               [24]  492 	movx	a,@dptr
      000567 FF               [12]  493 	mov	r7,a
      000568 8D 02            [24]  494 	mov	ar2,r5
      00056A 8E 03            [24]  495 	mov	ar3,r6
      00056C 8F 04            [24]  496 	mov	ar4,r7
      00056E 90 00 00         [24]  497 	mov	dptr,#_f_read_PARM_2
      000571 EA               [12]  498 	mov	a,r2
      000572 F0               [24]  499 	movx	@dptr,a
      000573 EB               [12]  500 	mov	a,r3
      000574 A3               [24]  501 	inc	dptr
      000575 F0               [24]  502 	movx	@dptr,a
      000576 EC               [12]  503 	mov	a,r4
      000577 A3               [24]  504 	inc	dptr
      000578 F0               [24]  505 	movx	@dptr,a
      000579 90 00 00         [24]  506 	mov	dptr,#_f_read_PARM_3
      00057C E4               [12]  507 	clr	a
      00057D F0               [24]  508 	movx	@dptr,a
      00057E 74 02            [12]  509 	mov	a,#0x02
      000580 A3               [24]  510 	inc	dptr
      000581 F0               [24]  511 	movx	@dptr,a
      000582 90 00 00         [24]  512 	mov	dptr,#_f_read_PARM_4
      000585 74 5C            [12]  513 	mov	a,#_fatfsTest_br_65536_57
      000587 F0               [24]  514 	movx	@dptr,a
      000588 74 A2            [12]  515 	mov	a,#(_fatfsTest_br_65536_57 >> 8)
      00058A A3               [24]  516 	inc	dptr
      00058B F0               [24]  517 	movx	@dptr,a
      00058C E4               [12]  518 	clr	a
      00058D A3               [24]  519 	inc	dptr
      00058E F0               [24]  520 	movx	@dptr,a
      00058F 90 A2 3B         [24]  521 	mov	dptr,#_fil
      000592 75 F0 00         [24]  522 	mov	b,#0x00
      000595 C0 07            [24]  523 	push	ar7
      000597 C0 06            [24]  524 	push	ar6
      000599 C0 05            [24]  525 	push	ar5
      00059B 78 00            [12]  526 	mov	r0,#_f_read
      00059D 79 00            [12]  527 	mov	r1,#(_f_read >> 8)
      00059F 7A 00            [12]  528 	mov	r2,#(_f_read >> 16)
      0005A1 12 00 06         [24]  529 	lcall	__sdcc_banked_call
      0005A4 AC 82            [24]  530 	mov	r4,dpl
      0005A6 D0 05            [24]  531 	pop	ar5
      0005A8 D0 06            [24]  532 	pop	ar6
      0005AA D0 07            [24]  533 	pop	ar7
      0005AC 90 A0 12         [24]  534 	mov	dptr,#_res
      0005AF EC               [12]  535 	mov	a,r4
      0005B0 F0               [24]  536 	movx	@dptr,a
                                    537 ;	fat.c:36: if(res==FR_OK)
      0005B1 EC               [12]  538 	mov	a,r4
      0005B2 70 4F            [24]  539 	jnz	00108$
                                    540 ;	fat.c:38: sioTXStr(0, "f_read OK\r\n");
      0005B4 90 A4 65         [24]  541 	mov	dptr,#_sioTXStr_PARM_2
      0005B7 74 B5            [12]  542 	mov	a,#___str_6
      0005B9 F0               [24]  543 	movx	@dptr,a
      0005BA 74 0B            [12]  544 	mov	a,#(___str_6 >> 8)
      0005BC A3               [24]  545 	inc	dptr
      0005BD F0               [24]  546 	movx	@dptr,a
      0005BE 74 80            [12]  547 	mov	a,#0x80
      0005C0 A3               [24]  548 	inc	dptr
      0005C1 F0               [24]  549 	movx	@dptr,a
      0005C2 75 82 00         [24]  550 	mov	dpl,#0x00
      0005C5 C0 07            [24]  551 	push	ar7
      0005C7 C0 06            [24]  552 	push	ar6
      0005C9 C0 05            [24]  553 	push	ar5
      0005CB 78 BF            [12]  554 	mov	r0,#_sioTXStr
      0005CD 79 08            [12]  555 	mov	r1,#(_sioTXStr >> 8)
      0005CF 7A 00            [12]  556 	mov	r2,#(_sioTXStr >> 16)
      0005D1 12 00 06         [24]  557 	lcall	__sdcc_banked_call
      0005D4 D0 05            [24]  558 	pop	ar5
      0005D6 D0 06            [24]  559 	pop	ar6
      0005D8 D0 07            [24]  560 	pop	ar7
                                    561 ;	fat.c:39: sioTXBuf(0, buf, br);
      0005DA 90 A2 5C         [24]  562 	mov	dptr,#_fatfsTest_br_65536_57
      0005DD E0               [24]  563 	movx	a,@dptr
      0005DE FB               [12]  564 	mov	r3,a
      0005DF A3               [24]  565 	inc	dptr
      0005E0 E0               [24]  566 	movx	a,@dptr
      0005E1 FC               [12]  567 	mov	r4,a
      0005E2 90 A4 69         [24]  568 	mov	dptr,#_sioTXBuf_PARM_2
      0005E5 ED               [12]  569 	mov	a,r5
      0005E6 F0               [24]  570 	movx	@dptr,a
      0005E7 EE               [12]  571 	mov	a,r6
      0005E8 A3               [24]  572 	inc	dptr
      0005E9 F0               [24]  573 	movx	@dptr,a
      0005EA EF               [12]  574 	mov	a,r7
      0005EB A3               [24]  575 	inc	dptr
      0005EC F0               [24]  576 	movx	@dptr,a
      0005ED 90 A4 6C         [24]  577 	mov	dptr,#_sioTXBuf_PARM_3
      0005F0 EB               [12]  578 	mov	a,r3
      0005F1 F0               [24]  579 	movx	@dptr,a
      0005F2 EC               [12]  580 	mov	a,r4
      0005F3 A3               [24]  581 	inc	dptr
      0005F4 F0               [24]  582 	movx	@dptr,a
      0005F5 75 82 00         [24]  583 	mov	dpl,#0x00
      0005F8 78 0F            [12]  584 	mov	r0,#_sioTXBuf
      0005FA 79 09            [12]  585 	mov	r1,#(_sioTXBuf >> 8)
      0005FC 7A 00            [12]  586 	mov	r2,#(_sioTXBuf >> 16)
      0005FE 12 00 06         [24]  587 	lcall	__sdcc_banked_call
      000601 80 1A            [24]  588 	sjmp	00109$
      000603                        589 00108$:
                                    590 ;	fat.c:43: sioTXStr(0, "f_read failed\r\n");
      000603 90 A4 65         [24]  591 	mov	dptr,#_sioTXStr_PARM_2
      000606 74 C1            [12]  592 	mov	a,#___str_7
      000608 F0               [24]  593 	movx	@dptr,a
      000609 74 0B            [12]  594 	mov	a,#(___str_7 >> 8)
      00060B A3               [24]  595 	inc	dptr
      00060C F0               [24]  596 	movx	@dptr,a
      00060D 74 80            [12]  597 	mov	a,#0x80
      00060F A3               [24]  598 	inc	dptr
      000610 F0               [24]  599 	movx	@dptr,a
      000611 75 82 00         [24]  600 	mov	dpl,#0x00
      000614 78 BF            [12]  601 	mov	r0,#_sioTXStr
      000616 79 08            [12]  602 	mov	r1,#(_sioTXStr >> 8)
      000618 7A 00            [12]  603 	mov	r2,#(_sioTXStr >> 16)
      00061A 12 00 06         [24]  604 	lcall	__sdcc_banked_call
      00061D                        605 00109$:
                                    606 ;	fat.c:46: res = f_close(&fil);
      00061D 90 A2 3B         [24]  607 	mov	dptr,#_fil
      000620 75 F0 00         [24]  608 	mov	b,#0x00
      000623 78 00            [12]  609 	mov	r0,#_f_close
      000625 79 00            [12]  610 	mov	r1,#(_f_close >> 8)
      000627 7A 00            [12]  611 	mov	r2,#(_f_close >> 16)
      000629 12 00 06         [24]  612 	lcall	__sdcc_banked_call
      00062C E5 82            [12]  613 	mov	a,dpl
      00062E 90 A0 12         [24]  614 	mov	dptr,#_res
      000631 F0               [24]  615 	movx	@dptr,a
                                    616 ;	fat.c:48: return br;
      000632 90 A2 5C         [24]  617 	mov	dptr,#_fatfsTest_br_65536_57
      000635 E0               [24]  618 	movx	a,@dptr
      000636 FE               [12]  619 	mov	r6,a
      000637 A3               [24]  620 	inc	dptr
      000638 E0               [24]  621 	movx	a,@dptr
      000639 FF               [12]  622 	mov	r7,a
      00063A 8E 82            [24]  623 	mov	dpl,r6
      00063C 8F 83            [24]  624 	mov	dph,r7
                                    625 ;	fat.c:49: }
      00063E 02 00 18         [24]  626 	ljmp	__sdcc_banked_ret
                                    627 	.area CSEG    (CODE)
                                    628 	.area CONST   (CODE)
      000B72                        629 ___str_0:
      000B72 30 3A                  630 	.ascii "0:"
      000B74 00                     631 	.db 0x00
      000B75                        632 ___str_1:
      000B75 66 5F 6D 6F 75 6E 74   633 	.ascii "f_mount OK"
             20 4F 4B
      000B7F 0D                     634 	.db 0x0d
      000B80 0A                     635 	.db 0x0a
      000B81 00                     636 	.db 0x00
      000B82                        637 ___str_2:
      000B82 66 5F 6D 6F 75 6E 74   638 	.ascii "f_mount failed"
             20 66 61 69 6C 65 64
      000B90 0D                     639 	.db 0x0d
      000B91 0A                     640 	.db 0x0a
      000B92 00                     641 	.db 0x00
      000B93                        642 ___str_3:
      000B93 31 2E 74 78 74         643 	.ascii "1.txt"
      000B98 00                     644 	.db 0x00
      000B99                        645 ___str_4:
      000B99 66 5F 6F 70 65 6E 20   646 	.ascii "f_open OK"
             4F 4B
      000BA2 0D                     647 	.db 0x0d
      000BA3 0A                     648 	.db 0x0a
      000BA4 00                     649 	.db 0x00
      000BA5                        650 ___str_5:
      000BA5 66 5F 6F 70 65 6E 20   651 	.ascii "f_open failed"
             66 61 69 6C 65 64
      000BB2 0D                     652 	.db 0x0d
      000BB3 0A                     653 	.db 0x0a
      000BB4 00                     654 	.db 0x00
      000BB5                        655 ___str_6:
      000BB5 66 5F 72 65 61 64 20   656 	.ascii "f_read OK"
             4F 4B
      000BBE 0D                     657 	.db 0x0d
      000BBF 0A                     658 	.db 0x0a
      000BC0 00                     659 	.db 0x00
      000BC1                        660 ___str_7:
      000BC1 66 5F 72 65 61 64 20   661 	.ascii "f_read failed"
             66 61 69 6C 65 64
      000BCE 0D                     662 	.db 0x0d
      000BCF 0A                     663 	.db 0x0a
      000BD0 00                     664 	.db 0x00
                                    665 	.area XINIT   (CODE)
      000C18                        666 __xinit__filename:
      000C18 93 0B 80               667 	.byte ___str_3, (___str_3 >> 8),#0x80
                                    668 	.area CABS    (ABS,CODE)
