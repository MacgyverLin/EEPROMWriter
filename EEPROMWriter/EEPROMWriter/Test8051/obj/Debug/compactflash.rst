                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module compactflash
                                      6 	.optsdcc -mmcs51 --model-huge
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _sioTXBuf
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
                                    108 	.globl _cfTest_PARM_2
                                    109 	.globl _cfReadSector_PARM_4
                                    110 	.globl _cfReadSector_PARM_3
                                    111 	.globl _cfReadSector_PARM_2
                                    112 	.globl _cfInit
                                    113 	.globl _cfWaitIdle
                                    114 	.globl _cfWaitCommandReady
                                    115 	.globl _cfWaitDataReady
                                    116 	.globl _cfReadSector
                                    117 	.globl _cfTest
                                    118 ;--------------------------------------------------------
                                    119 ; special function registers
                                    120 ;--------------------------------------------------------
                                    121 	.area RSEG    (ABS,DATA)
      000000                        122 	.org 0x0000
                           000080   123 _P0	=	0x0080
                           000081   124 _SP	=	0x0081
                           000082   125 _DPL	=	0x0082
                           000083   126 _DPH	=	0x0083
                           000087   127 _PCON	=	0x0087
                           000088   128 _TCON	=	0x0088
                           000089   129 _TMOD	=	0x0089
                           00008A   130 _TL0	=	0x008a
                           00008B   131 _TL1	=	0x008b
                           00008C   132 _TH0	=	0x008c
                           00008D   133 _TH1	=	0x008d
                           000090   134 _P1	=	0x0090
                           000098   135 _SCON	=	0x0098
                           000099   136 _SBUF	=	0x0099
                           0000A0   137 _P2	=	0x00a0
                           0000A8   138 _IE	=	0x00a8
                           0000B0   139 _P3	=	0x00b0
                           0000B8   140 _IP	=	0x00b8
                           0000D0   141 _PSW	=	0x00d0
                           0000E0   142 _ACC	=	0x00e0
                           0000F0   143 _B	=	0x00f0
                                    144 ;--------------------------------------------------------
                                    145 ; special function bits
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0_0	=	0x0080
                           000081   150 _P0_1	=	0x0081
                           000082   151 _P0_2	=	0x0082
                           000083   152 _P0_3	=	0x0083
                           000084   153 _P0_4	=	0x0084
                           000085   154 _P0_5	=	0x0085
                           000086   155 _P0_6	=	0x0086
                           000087   156 _P0_7	=	0x0087
                           000088   157 _IT0	=	0x0088
                           000089   158 _IE0	=	0x0089
                           00008A   159 _IT1	=	0x008a
                           00008B   160 _IE1	=	0x008b
                           00008C   161 _TR0	=	0x008c
                           00008D   162 _TF0	=	0x008d
                           00008E   163 _TR1	=	0x008e
                           00008F   164 _TF1	=	0x008f
                           000090   165 _P1_0	=	0x0090
                           000091   166 _P1_1	=	0x0091
                           000092   167 _P1_2	=	0x0092
                           000093   168 _P1_3	=	0x0093
                           000094   169 _P1_4	=	0x0094
                           000095   170 _P1_5	=	0x0095
                           000096   171 _P1_6	=	0x0096
                           000097   172 _P1_7	=	0x0097
                           000098   173 _RI	=	0x0098
                           000099   174 _TI	=	0x0099
                           00009A   175 _RB8	=	0x009a
                           00009B   176 _TB8	=	0x009b
                           00009C   177 _REN	=	0x009c
                           00009D   178 _SM2	=	0x009d
                           00009E   179 _SM1	=	0x009e
                           00009F   180 _SM0	=	0x009f
                           0000A0   181 _P2_0	=	0x00a0
                           0000A1   182 _P2_1	=	0x00a1
                           0000A2   183 _P2_2	=	0x00a2
                           0000A3   184 _P2_3	=	0x00a3
                           0000A4   185 _P2_4	=	0x00a4
                           0000A5   186 _P2_5	=	0x00a5
                           0000A6   187 _P2_6	=	0x00a6
                           0000A7   188 _P2_7	=	0x00a7
                           0000A8   189 _EX0	=	0x00a8
                           0000A9   190 _ET0	=	0x00a9
                           0000AA   191 _EX1	=	0x00aa
                           0000AB   192 _ET1	=	0x00ab
                           0000AC   193 _ES	=	0x00ac
                           0000AF   194 _EA	=	0x00af
                           0000B0   195 _P3_0	=	0x00b0
                           0000B1   196 _P3_1	=	0x00b1
                           0000B2   197 _P3_2	=	0x00b2
                           0000B3   198 _P3_3	=	0x00b3
                           0000B4   199 _P3_4	=	0x00b4
                           0000B5   200 _P3_5	=	0x00b5
                           0000B6   201 _P3_6	=	0x00b6
                           0000B7   202 _P3_7	=	0x00b7
                           0000B0   203 _RXD	=	0x00b0
                           0000B1   204 _TXD	=	0x00b1
                           0000B2   205 _INT0	=	0x00b2
                           0000B3   206 _INT1	=	0x00b3
                           0000B4   207 _T0	=	0x00b4
                           0000B5   208 _T1	=	0x00b5
                           0000B6   209 _WR	=	0x00b6
                           0000B7   210 _RD	=	0x00b7
                           0000B8   211 _PX0	=	0x00b8
                           0000B9   212 _PT0	=	0x00b9
                           0000BA   213 _PX1	=	0x00ba
                           0000BB   214 _PT1	=	0x00bb
                           0000BC   215 _PS	=	0x00bc
                           0000D0   216 _P	=	0x00d0
                           0000D1   217 _F1	=	0x00d1
                           0000D2   218 _OV	=	0x00d2
                           0000D3   219 _RS0	=	0x00d3
                           0000D4   220 _RS1	=	0x00d4
                           0000D5   221 _F0	=	0x00d5
                           0000D6   222 _AC	=	0x00d6
                           0000D7   223 _CY	=	0x00d7
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable register banks
                                    226 ;--------------------------------------------------------
                                    227 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        228 	.ds 8
                                    229 ;--------------------------------------------------------
                                    230 ; internal ram data
                                    231 ;--------------------------------------------------------
                                    232 	.area DSEG    (DATA)
      000008                        233 _cfReadSector_sloc0_1_0:
      000008                        234 	.ds 2
      00000A                        235 _cfReadSector_sloc1_1_0:
      00000A                        236 	.ds 4
      00000E                        237 _cfReadSector_sloc2_1_0:
      00000E                        238 	.ds 2
      000010                        239 _cfReadSector_sloc3_1_0:
      000010                        240 	.ds 3
                                    241 ;--------------------------------------------------------
                                    242 ; overlayable items in internal ram 
                                    243 ;--------------------------------------------------------
                                    244 ;--------------------------------------------------------
                                    245 ; indirectly addressable internal ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area ISEG    (DATA)
                                    248 ;--------------------------------------------------------
                                    249 ; absolute internal ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area IABS    (ABS,DATA)
                                    252 	.area IABS    (ABS,DATA)
                                    253 ;--------------------------------------------------------
                                    254 ; bit data
                                    255 ;--------------------------------------------------------
                                    256 	.area BSEG    (BIT)
                                    257 ;--------------------------------------------------------
                                    258 ; paged external ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area PSEG    (PAG,XDATA)
                                    261 ;--------------------------------------------------------
                                    262 ; external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XSEG    (XDATA)
      00A000                        265 _cfInit_device_65536_20:
      00A000                        266 	.ds 1
      00A001                        267 _cfWaitIdle_device_65536_22:
      00A001                        268 	.ds 1
      00A002                        269 _cfWaitCommandReady_device_65536_25:
      00A002                        270 	.ds 1
      00A003                        271 _cfWaitDataReady_device_65536_28:
      00A003                        272 	.ds 1
      00A004                        273 _cfReadSector_PARM_2:
      00A004                        274 	.ds 3
      00A007                        275 _cfReadSector_PARM_3:
      00A007                        276 	.ds 4
      00A00B                        277 _cfReadSector_PARM_4:
      00A00B                        278 	.ds 2
      00A00D                        279 _cfReadSector_device_65536_31:
      00A00D                        280 	.ds 1
      00A00E                        281 _cfTest_PARM_2:
      00A00E                        282 	.ds 3
      00A011                        283 _cfTest_device_65536_37:
      00A011                        284 	.ds 1
                                    285 ;--------------------------------------------------------
                                    286 ; absolute external ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area XABS    (ABS,XDATA)
                                    289 ;--------------------------------------------------------
                                    290 ; external initialized ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area XISEG   (XDATA)
                                    293 	.area HOME    (CODE)
                                    294 	.area GSINIT0 (CODE)
                                    295 	.area GSINIT1 (CODE)
                                    296 	.area GSINIT2 (CODE)
                                    297 	.area GSINIT3 (CODE)
                                    298 	.area GSINIT4 (CODE)
                                    299 	.area GSINIT5 (CODE)
                                    300 	.area GSINIT  (CODE)
                                    301 	.area GSFINAL (CODE)
                                    302 	.area CSEG    (CODE)
                                    303 ;--------------------------------------------------------
                                    304 ; global & static initialisations
                                    305 ;--------------------------------------------------------
                                    306 	.area HOME    (CODE)
                                    307 	.area GSINIT  (CODE)
                                    308 	.area GSFINAL (CODE)
                                    309 	.area GSINIT  (CODE)
                                    310 ;--------------------------------------------------------
                                    311 ; Home
                                    312 ;--------------------------------------------------------
                                    313 	.area HOME    (CODE)
                                    314 	.area HOME    (CODE)
                                    315 ;--------------------------------------------------------
                                    316 ; code
                                    317 ;--------------------------------------------------------
                                    318 	.area CSEG    (CODE)
                                    319 ;------------------------------------------------------------
                                    320 ;Allocation info for local variables in function 'cfInit'
                                    321 ;------------------------------------------------------------
                                    322 ;device                    Allocated with name '_cfInit_device_65536_20'
                                    323 ;------------------------------------------------------------
                                    324 ;	compactflash.c:4: void cfInit(char device)
                                    325 ;	-----------------------------------------
                                    326 ;	 function cfInit
                                    327 ;	-----------------------------------------
      000077                        328 _cfInit:
                           000007   329 	ar7 = 0x07
                           000006   330 	ar6 = 0x06
                           000005   331 	ar5 = 0x05
                           000004   332 	ar4 = 0x04
                           000003   333 	ar3 = 0x03
                           000002   334 	ar2 = 0x02
                           000001   335 	ar1 = 0x01
                           000000   336 	ar0 = 0x00
      000077 E5 82            [12]  337 	mov	a,dpl
      000079 90 A0 00         [24]  338 	mov	dptr,#_cfInit_device_65536_20
      00007C F0               [24]  339 	movx	@dptr,a
                                    340 ;	compactflash.c:6: cfWriteFeatures(device, 0x01); //  set 8 bit mode to features port
      00007D E0               [24]  341 	movx	a,@dptr
      00007E FF               [12]  342 	mov	r7,a
      00007F E4               [12]  343 	clr	a
      000080 C4               [12]  344 	swap	a
      000081 54 F0            [12]  345 	anl	a,#0xf0
      000083 CF               [12]  346 	xch	a,r7
      000084 C4               [12]  347 	swap	a
      000085 CF               [12]  348 	xch	a,r7
      000086 6F               [12]  349 	xrl	a,r7
      000087 CF               [12]  350 	xch	a,r7
      000088 54 F0            [12]  351 	anl	a,#0xf0
      00008A CF               [12]  352 	xch	a,r7
      00008B 6F               [12]  353 	xrl	a,r7
      00008C FE               [12]  354 	mov	r6,a
      00008D 74 21            [12]  355 	mov	a,#0x21
      00008F 2F               [12]  356 	add	a,r7
      000090 FC               [12]  357 	mov	r4,a
      000091 74 FF            [12]  358 	mov	a,#0xff
      000093 3E               [12]  359 	addc	a,r6
      000094 FD               [12]  360 	mov	r5,a
      000095 8C 82            [24]  361 	mov	dpl,r4
      000097 8D 83            [24]  362 	mov	dph,r5
      000099 74 01            [12]  363 	mov	a,#0x01
      00009B F0               [24]  364 	movx	@dptr,a
                                    365 ;	compactflash.c:8: cfWriteCommand(device, 0xef);  // command 'set features'
      00009C 74 27            [12]  366 	mov	a,#0x27
      00009E 2F               [12]  367 	add	a,r7
      00009F FF               [12]  368 	mov	r7,a
      0000A0 74 FF            [12]  369 	mov	a,#0xff
      0000A2 3E               [12]  370 	addc	a,r6
      0000A3 FE               [12]  371 	mov	r6,a
      0000A4 8F 82            [24]  372 	mov	dpl,r7
      0000A6 8E 83            [24]  373 	mov	dph,r6
      0000A8 74 EF            [12]  374 	mov	a,#0xef
      0000AA F0               [24]  375 	movx	@dptr,a
                                    376 ;	compactflash.c:9: }
      0000AB 02 00 18         [24]  377 	ljmp	__sdcc_banked_ret
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'cfWaitIdle'
                                    380 ;------------------------------------------------------------
                                    381 ;device                    Allocated with name '_cfWaitIdle_device_65536_22'
                                    382 ;status                    Allocated with name '_cfWaitIdle_status_65536_23'
                                    383 ;------------------------------------------------------------
                                    384 ;	compactflash.c:11: void cfWaitIdle(char device)
                                    385 ;	-----------------------------------------
                                    386 ;	 function cfWaitIdle
                                    387 ;	-----------------------------------------
      0000AE                        388 _cfWaitIdle:
      0000AE E5 82            [12]  389 	mov	a,dpl
      0000B0 90 A0 01         [24]  390 	mov	dptr,#_cfWaitIdle_device_65536_22
      0000B3 F0               [24]  391 	movx	@dptr,a
                                    392 ;	compactflash.c:14: do
      0000B4 E0               [24]  393 	movx	a,@dptr
      0000B5 FF               [12]  394 	mov	r7,a
      0000B6                        395 00101$:
                                    396 ;	compactflash.c:16: status = cfReadStatus(device);
      0000B6 8F 05            [24]  397 	mov	ar5,r7
      0000B8 E4               [12]  398 	clr	a
      0000B9 C4               [12]  399 	swap	a
      0000BA 54 F0            [12]  400 	anl	a,#0xf0
      0000BC CD               [12]  401 	xch	a,r5
      0000BD C4               [12]  402 	swap	a
      0000BE CD               [12]  403 	xch	a,r5
      0000BF 6D               [12]  404 	xrl	a,r5
      0000C0 CD               [12]  405 	xch	a,r5
      0000C1 54 F0            [12]  406 	anl	a,#0xf0
      0000C3 CD               [12]  407 	xch	a,r5
      0000C4 6D               [12]  408 	xrl	a,r5
      0000C5 FE               [12]  409 	mov	r6,a
      0000C6 74 27            [12]  410 	mov	a,#0x27
      0000C8 2D               [12]  411 	add	a,r5
      0000C9 FD               [12]  412 	mov	r5,a
      0000CA 74 FF            [12]  413 	mov	a,#0xff
      0000CC 3E               [12]  414 	addc	a,r6
      0000CD FE               [12]  415 	mov	r6,a
      0000CE 8D 82            [24]  416 	mov	dpl,r5
      0000D0 8E 83            [24]  417 	mov	dph,r6
      0000D2 E0               [24]  418 	movx	a,@dptr
                                    419 ;	compactflash.c:18: while((status & 0x80)!=0);
      0000D3 FE               [12]  420 	mov	r6,a
      0000D4 20 E7 DF         [24]  421 	jb	acc.7,00101$
                                    422 ;	compactflash.c:19: }
      0000D7 02 00 18         [24]  423 	ljmp	__sdcc_banked_ret
                                    424 ;------------------------------------------------------------
                                    425 ;Allocation info for local variables in function 'cfWaitCommandReady'
                                    426 ;------------------------------------------------------------
                                    427 ;device                    Allocated with name '_cfWaitCommandReady_device_65536_25'
                                    428 ;status                    Allocated with name '_cfWaitCommandReady_status_65536_26'
                                    429 ;------------------------------------------------------------
                                    430 ;	compactflash.c:21: void cfWaitCommandReady(char device)
                                    431 ;	-----------------------------------------
                                    432 ;	 function cfWaitCommandReady
                                    433 ;	-----------------------------------------
      0000DA                        434 _cfWaitCommandReady:
      0000DA E5 82            [12]  435 	mov	a,dpl
      0000DC 90 A0 02         [24]  436 	mov	dptr,#_cfWaitCommandReady_device_65536_25
      0000DF F0               [24]  437 	movx	@dptr,a
                                    438 ;	compactflash.c:25: do
      0000E0 E0               [24]  439 	movx	a,@dptr
      0000E1 FF               [12]  440 	mov	r7,a
      0000E2                        441 00101$:
                                    442 ;	compactflash.c:27: status = cfReadStatus(device);
      0000E2 8F 05            [24]  443 	mov	ar5,r7
      0000E4 E4               [12]  444 	clr	a
      0000E5 C4               [12]  445 	swap	a
      0000E6 54 F0            [12]  446 	anl	a,#0xf0
      0000E8 CD               [12]  447 	xch	a,r5
      0000E9 C4               [12]  448 	swap	a
      0000EA CD               [12]  449 	xch	a,r5
      0000EB 6D               [12]  450 	xrl	a,r5
      0000EC CD               [12]  451 	xch	a,r5
      0000ED 54 F0            [12]  452 	anl	a,#0xf0
      0000EF CD               [12]  453 	xch	a,r5
      0000F0 6D               [12]  454 	xrl	a,r5
      0000F1 FE               [12]  455 	mov	r6,a
      0000F2 74 27            [12]  456 	mov	a,#0x27
      0000F4 2D               [12]  457 	add	a,r5
      0000F5 FD               [12]  458 	mov	r5,a
      0000F6 74 FF            [12]  459 	mov	a,#0xff
      0000F8 3E               [12]  460 	addc	a,r6
      0000F9 FE               [12]  461 	mov	r6,a
      0000FA 8D 82            [24]  462 	mov	dpl,r5
      0000FC 8E 83            [24]  463 	mov	dph,r6
      0000FE E0               [24]  464 	movx	a,@dptr
      0000FF FE               [12]  465 	mov	r6,a
                                    466 ;	compactflash.c:29: while((status & 0xc0)!=0x40);
      000100 53 06 C0         [24]  467 	anl	ar6,#0xc0
      000103 7D 00            [12]  468 	mov	r5,#0x00
      000105 BE 40 DA         [24]  469 	cjne	r6,#0x40,00101$
      000108 BD 00 D7         [24]  470 	cjne	r5,#0x00,00101$
                                    471 ;	compactflash.c:30: }
      00010B 02 00 18         [24]  472 	ljmp	__sdcc_banked_ret
                                    473 ;------------------------------------------------------------
                                    474 ;Allocation info for local variables in function 'cfWaitDataReady'
                                    475 ;------------------------------------------------------------
                                    476 ;device                    Allocated with name '_cfWaitDataReady_device_65536_28'
                                    477 ;status                    Allocated with name '_cfWaitDataReady_status_65536_29'
                                    478 ;------------------------------------------------------------
                                    479 ;	compactflash.c:32: void cfWaitDataReady(char device)
                                    480 ;	-----------------------------------------
                                    481 ;	 function cfWaitDataReady
                                    482 ;	-----------------------------------------
      00010E                        483 _cfWaitDataReady:
      00010E E5 82            [12]  484 	mov	a,dpl
      000110 90 A0 03         [24]  485 	mov	dptr,#_cfWaitDataReady_device_65536_28
      000113 F0               [24]  486 	movx	@dptr,a
                                    487 ;	compactflash.c:35: do
      000114 E0               [24]  488 	movx	a,@dptr
      000115 FF               [12]  489 	mov	r7,a
      000116                        490 00101$:
                                    491 ;	compactflash.c:37: status = cfReadStatus(device);
      000116 8F 05            [24]  492 	mov	ar5,r7
      000118 E4               [12]  493 	clr	a
      000119 C4               [12]  494 	swap	a
      00011A 54 F0            [12]  495 	anl	a,#0xf0
      00011C CD               [12]  496 	xch	a,r5
      00011D C4               [12]  497 	swap	a
      00011E CD               [12]  498 	xch	a,r5
      00011F 6D               [12]  499 	xrl	a,r5
      000120 CD               [12]  500 	xch	a,r5
      000121 54 F0            [12]  501 	anl	a,#0xf0
      000123 CD               [12]  502 	xch	a,r5
      000124 6D               [12]  503 	xrl	a,r5
      000125 FE               [12]  504 	mov	r6,a
      000126 74 27            [12]  505 	mov	a,#0x27
      000128 2D               [12]  506 	add	a,r5
      000129 FD               [12]  507 	mov	r5,a
      00012A 74 FF            [12]  508 	mov	a,#0xff
      00012C 3E               [12]  509 	addc	a,r6
      00012D FE               [12]  510 	mov	r6,a
      00012E 8D 82            [24]  511 	mov	dpl,r5
      000130 8E 83            [24]  512 	mov	dph,r6
      000132 E0               [24]  513 	movx	a,@dptr
      000133 FE               [12]  514 	mov	r6,a
                                    515 ;	compactflash.c:39: while((status & 0x88)!=0x08);
      000134 53 06 88         [24]  516 	anl	ar6,#0x88
      000137 7D 00            [12]  517 	mov	r5,#0x00
      000139 BE 08 DA         [24]  518 	cjne	r6,#0x08,00101$
      00013C BD 00 D7         [24]  519 	cjne	r5,#0x00,00101$
                                    520 ;	compactflash.c:40: }
      00013F 02 00 18         [24]  521 	ljmp	__sdcc_banked_ret
                                    522 ;------------------------------------------------------------
                                    523 ;Allocation info for local variables in function 'cfReadSector'
                                    524 ;------------------------------------------------------------
                                    525 ;sloc0                     Allocated with name '_cfReadSector_sloc0_1_0'
                                    526 ;sloc1                     Allocated with name '_cfReadSector_sloc1_1_0'
                                    527 ;sloc2                     Allocated with name '_cfReadSector_sloc2_1_0'
                                    528 ;sloc3                     Allocated with name '_cfReadSector_sloc3_1_0'
                                    529 ;buf                       Allocated with name '_cfReadSector_PARM_2'
                                    530 ;LBA                       Allocated with name '_cfReadSector_PARM_3'
                                    531 ;sectorCount               Allocated with name '_cfReadSector_PARM_4'
                                    532 ;device                    Allocated with name '_cfReadSector_device_65536_31'
                                    533 ;status                    Allocated with name '_cfReadSector_status_65536_32'
                                    534 ;i                         Allocated with name '_cfReadSector_i_65536_32'
                                    535 ;idx                       Allocated with name '_cfReadSector_idx_65536_32'
                                    536 ;------------------------------------------------------------
                                    537 ;	compactflash.c:42: void cfReadSector(char device, char* buf, unsigned long LBA, unsigned int sectorCount)
                                    538 ;	-----------------------------------------
                                    539 ;	 function cfReadSector
                                    540 ;	-----------------------------------------
      000142                        541 _cfReadSector:
      000142 E5 82            [12]  542 	mov	a,dpl
      000144 90 A0 0D         [24]  543 	mov	dptr,#_cfReadSector_device_65536_31
      000147 F0               [24]  544 	movx	@dptr,a
                                    545 ;	compactflash.c:51: P1 = 0xe1;
      000148 75 90 E1         [24]  546 	mov	_P1,#0xe1
                                    547 ;	compactflash.c:52: cfWaitIdle(device);
      00014B E0               [24]  548 	movx	a,@dptr
      00014C FF               [12]  549 	mov	r7,a
      00014D F5 82            [12]  550 	mov	dpl,a
      00014F C0 07            [24]  551 	push	ar7
      000151 78 AE            [12]  552 	mov	r0,#_cfWaitIdle
      000153 79 00            [12]  553 	mov	r1,#(_cfWaitIdle >> 8)
      000155 7A 00            [12]  554 	mov	r2,#(_cfWaitIdle >> 16)
      000157 12 00 06         [24]  555 	lcall	__sdcc_banked_call
      00015A D0 07            [24]  556 	pop	ar7
                                    557 ;	compactflash.c:55: P1 = 0xe2;
      00015C 75 90 E2         [24]  558 	mov	_P1,#0xe2
                                    559 ;	compactflash.c:56: cfWriteSectorCount(device, 0x01);
      00015F 8F 05            [24]  560 	mov	ar5,r7
      000161 E4               [12]  561 	clr	a
      000162 CD               [12]  562 	xch	a,r5
      000163 C4               [12]  563 	swap	a
      000164 CD               [12]  564 	xch	a,r5
      000165 6D               [12]  565 	xrl	a,r5
      000166 CD               [12]  566 	xch	a,r5
      000167 54 F0            [12]  567 	anl	a,#0xf0
      000169 CD               [12]  568 	xch	a,r5
      00016A 6D               [12]  569 	xrl	a,r5
      00016B FE               [12]  570 	mov	r6,a
      00016C 74 22            [12]  571 	mov	a,#0x22
      00016E 2D               [12]  572 	add	a,r5
      00016F FB               [12]  573 	mov	r3,a
      000170 74 FF            [12]  574 	mov	a,#0xff
      000172 3E               [12]  575 	addc	a,r6
      000173 FC               [12]  576 	mov	r4,a
      000174 8B 82            [24]  577 	mov	dpl,r3
      000176 8C 83            [24]  578 	mov	dph,r4
      000178 74 01            [12]  579 	mov	a,#0x01
      00017A F0               [24]  580 	movx	@dptr,a
                                    581 ;	compactflash.c:59: P1 = 0xe3;
      00017B 75 90 E3         [24]  582 	mov	_P1,#0xe3
                                    583 ;	compactflash.c:60: cfWaitIdle(device);
      00017E 8F 82            [24]  584 	mov	dpl,r7
      000180 C0 07            [24]  585 	push	ar7
      000182 C0 06            [24]  586 	push	ar6
      000184 C0 05            [24]  587 	push	ar5
      000186 78 AE            [12]  588 	mov	r0,#_cfWaitIdle
      000188 79 00            [12]  589 	mov	r1,#(_cfWaitIdle >> 8)
      00018A 7A 00            [12]  590 	mov	r2,#(_cfWaitIdle >> 16)
      00018C 12 00 06         [24]  591 	lcall	__sdcc_banked_call
      00018F D0 05            [24]  592 	pop	ar5
      000191 D0 06            [24]  593 	pop	ar6
      000193 D0 07            [24]  594 	pop	ar7
                                    595 ;	compactflash.c:63: P1 = 0xe4;
      000195 75 90 E4         [24]  596 	mov	_P1,#0xe4
                                    597 ;	compactflash.c:64: cfWriteLBA0(device, ((LBA    ) & 0xff) );
      000198 74 23            [12]  598 	mov	a,#0x23
      00019A 2D               [12]  599 	add	a,r5
      00019B FB               [12]  600 	mov	r3,a
      00019C 74 FF            [12]  601 	mov	a,#0xff
      00019E 3E               [12]  602 	addc	a,r6
      00019F FC               [12]  603 	mov	r4,a
      0001A0 8B 08            [24]  604 	mov	_cfReadSector_sloc0_1_0,r3
      0001A2 8C 09            [24]  605 	mov	(_cfReadSector_sloc0_1_0 + 1),r4
      0001A4 90 A0 07         [24]  606 	mov	dptr,#_cfReadSector_PARM_3
      0001A7 E0               [24]  607 	movx	a,@dptr
      0001A8 F5 0A            [12]  608 	mov	_cfReadSector_sloc1_1_0,a
      0001AA A3               [24]  609 	inc	dptr
      0001AB E0               [24]  610 	movx	a,@dptr
      0001AC F5 0B            [12]  611 	mov	(_cfReadSector_sloc1_1_0 + 1),a
      0001AE A3               [24]  612 	inc	dptr
      0001AF E0               [24]  613 	movx	a,@dptr
      0001B0 F5 0C            [12]  614 	mov	(_cfReadSector_sloc1_1_0 + 2),a
      0001B2 A3               [24]  615 	inc	dptr
      0001B3 E0               [24]  616 	movx	a,@dptr
      0001B4 F5 0D            [12]  617 	mov	(_cfReadSector_sloc1_1_0 + 3),a
      0001B6 AB 0A            [24]  618 	mov	r3,_cfReadSector_sloc1_1_0
      0001B8 85 08 82         [24]  619 	mov	dpl,_cfReadSector_sloc0_1_0
      0001BB 85 09 83         [24]  620 	mov	dph,(_cfReadSector_sloc0_1_0 + 1)
      0001BE EB               [12]  621 	mov	a,r3
      0001BF F0               [24]  622 	movx	@dptr,a
                                    623 ;	compactflash.c:67: P1 = 0xe5;
      0001C0 75 90 E5         [24]  624 	mov	_P1,#0xe5
                                    625 ;	compactflash.c:68: cfWaitIdle(device);
      0001C3 8F 82            [24]  626 	mov	dpl,r7
      0001C5 C0 07            [24]  627 	push	ar7
      0001C7 C0 06            [24]  628 	push	ar6
      0001C9 C0 05            [24]  629 	push	ar5
      0001CB 78 AE            [12]  630 	mov	r0,#_cfWaitIdle
      0001CD 79 00            [12]  631 	mov	r1,#(_cfWaitIdle >> 8)
      0001CF 7A 00            [12]  632 	mov	r2,#(_cfWaitIdle >> 16)
      0001D1 12 00 06         [24]  633 	lcall	__sdcc_banked_call
      0001D4 D0 05            [24]  634 	pop	ar5
      0001D6 D0 06            [24]  635 	pop	ar6
      0001D8 D0 07            [24]  636 	pop	ar7
                                    637 ;	compactflash.c:71: P1 = 0xe6;
      0001DA 75 90 E6         [24]  638 	mov	_P1,#0xe6
                                    639 ;	compactflash.c:72: cfWriteLBA1(device, ((LBA>>8 ) & 0xff) );
      0001DD 74 24            [12]  640 	mov	a,#0x24
      0001DF 2D               [12]  641 	add	a,r5
      0001E0 FB               [12]  642 	mov	r3,a
      0001E1 74 FF            [12]  643 	mov	a,#0xff
      0001E3 3E               [12]  644 	addc	a,r6
      0001E4 FC               [12]  645 	mov	r4,a
      0001E5 8B 82            [24]  646 	mov	dpl,r3
      0001E7 8C 83            [24]  647 	mov	dph,r4
      0001E9 E5 0B            [12]  648 	mov	a,(_cfReadSector_sloc1_1_0 + 1)
      0001EB F0               [24]  649 	movx	@dptr,a
                                    650 ;	compactflash.c:75: P1 = 0xe7;
      0001EC 75 90 E7         [24]  651 	mov	_P1,#0xe7
                                    652 ;	compactflash.c:76: cfWaitIdle(device);
      0001EF 8F 82            [24]  653 	mov	dpl,r7
      0001F1 C0 07            [24]  654 	push	ar7
      0001F3 C0 06            [24]  655 	push	ar6
      0001F5 C0 05            [24]  656 	push	ar5
      0001F7 78 AE            [12]  657 	mov	r0,#_cfWaitIdle
      0001F9 79 00            [12]  658 	mov	r1,#(_cfWaitIdle >> 8)
      0001FB 7A 00            [12]  659 	mov	r2,#(_cfWaitIdle >> 16)
      0001FD 12 00 06         [24]  660 	lcall	__sdcc_banked_call
      000200 D0 05            [24]  661 	pop	ar5
      000202 D0 06            [24]  662 	pop	ar6
      000204 D0 07            [24]  663 	pop	ar7
                                    664 ;	compactflash.c:79: P1 = 0xe8;
      000206 75 90 E8         [24]  665 	mov	_P1,#0xe8
                                    666 ;	compactflash.c:80: cfWriteLBA2(device, ((LBA>>16) & 0xff) );
      000209 74 25            [12]  667 	mov	a,#0x25
      00020B 2D               [12]  668 	add	a,r5
      00020C FB               [12]  669 	mov	r3,a
      00020D 74 FF            [12]  670 	mov	a,#0xff
      00020F 3E               [12]  671 	addc	a,r6
      000210 FC               [12]  672 	mov	r4,a
      000211 8B 82            [24]  673 	mov	dpl,r3
      000213 8C 83            [24]  674 	mov	dph,r4
      000215 E5 0C            [12]  675 	mov	a,(_cfReadSector_sloc1_1_0 + 2)
      000217 F0               [24]  676 	movx	@dptr,a
                                    677 ;	compactflash.c:83: P1 = 0xe9;
      000218 75 90 E9         [24]  678 	mov	_P1,#0xe9
                                    679 ;	compactflash.c:84: cfWaitIdle(device);
      00021B 8F 82            [24]  680 	mov	dpl,r7
      00021D C0 07            [24]  681 	push	ar7
      00021F C0 06            [24]  682 	push	ar6
      000221 C0 05            [24]  683 	push	ar5
      000223 78 AE            [12]  684 	mov	r0,#_cfWaitIdle
      000225 79 00            [12]  685 	mov	r1,#(_cfWaitIdle >> 8)
      000227 7A 00            [12]  686 	mov	r2,#(_cfWaitIdle >> 16)
      000229 12 00 06         [24]  687 	lcall	__sdcc_banked_call
      00022C D0 05            [24]  688 	pop	ar5
      00022E D0 06            [24]  689 	pop	ar6
      000230 D0 07            [24]  690 	pop	ar7
                                    691 ;	compactflash.c:87: P1 = 0xea;
      000232 75 90 EA         [24]  692 	mov	_P1,#0xea
                                    693 ;	compactflash.c:88: cfWriteLBA3(device, (0xe0 | 0x00 | ((LBA>>24) & 0x0f)) );
      000235 74 26            [12]  694 	mov	a,#0x26
      000237 2D               [12]  695 	add	a,r5
      000238 FD               [12]  696 	mov	r5,a
      000239 74 FF            [12]  697 	mov	a,#0xff
      00023B 3E               [12]  698 	addc	a,r6
      00023C FE               [12]  699 	mov	r6,a
      00023D 8D 82            [24]  700 	mov	dpl,r5
      00023F 8E 83            [24]  701 	mov	dph,r6
      000241 AE 0D            [24]  702 	mov	r6,(_cfReadSector_sloc1_1_0 + 3)
      000243 53 06 0F         [24]  703 	anl	ar6,#0x0f
      000246 7D 00            [12]  704 	mov	r5,#0x00
      000248 43 06 E0         [24]  705 	orl	ar6,#0xe0
      00024B EE               [12]  706 	mov	a,r6
      00024C F0               [24]  707 	movx	@dptr,a
                                    708 ;	compactflash.c:91: while(sectorCount--)
      00024D 8F 06            [24]  709 	mov	ar6,r7
      00024F 90 A0 04         [24]  710 	mov	dptr,#_cfReadSector_PARM_2
      000252 E0               [24]  711 	movx	a,@dptr
      000253 F5 10            [12]  712 	mov	_cfReadSector_sloc3_1_0,a
      000255 A3               [24]  713 	inc	dptr
      000256 E0               [24]  714 	movx	a,@dptr
      000257 F5 11            [12]  715 	mov	(_cfReadSector_sloc3_1_0 + 1),a
      000259 A3               [24]  716 	inc	dptr
      00025A E0               [24]  717 	movx	a,@dptr
      00025B F5 12            [12]  718 	mov	(_cfReadSector_sloc3_1_0 + 2),a
      00025D E4               [12]  719 	clr	a
      00025E F5 08            [12]  720 	mov	_cfReadSector_sloc0_1_0,a
      000260 F5 09            [12]  721 	mov	(_cfReadSector_sloc0_1_0 + 1),a
      000262 90 A0 0B         [24]  722 	mov	dptr,#_cfReadSector_PARM_4
      000265 E0               [24]  723 	movx	a,@dptr
      000266 F5 0A            [12]  724 	mov	_cfReadSector_sloc1_1_0,a
      000268 A3               [24]  725 	inc	dptr
      000269 E0               [24]  726 	movx	a,@dptr
      00026A F5 0B            [12]  727 	mov	(_cfReadSector_sloc1_1_0 + 1),a
      00026C                        728 00105$:
      00026C A8 0A            [24]  729 	mov	r0,_cfReadSector_sloc1_1_0
      00026E AA 0B            [24]  730 	mov	r2,(_cfReadSector_sloc1_1_0 + 1)
      000270 15 0A            [12]  731 	dec	_cfReadSector_sloc1_1_0
      000272 74 FF            [12]  732 	mov	a,#0xff
      000274 B5 0A 02         [24]  733 	cjne	a,_cfReadSector_sloc1_1_0,00134$
      000277 15 0B            [12]  734 	dec	(_cfReadSector_sloc1_1_0 + 1)
      000279                        735 00134$:
      000279 E8               [12]  736 	mov	a,r0
      00027A 4A               [12]  737 	orl	a,r2
      00027B 70 03            [24]  738 	jnz	00135$
      00027D 02 03 46         [24]  739 	ljmp	00107$
      000280                        740 00135$:
                                    741 ;	compactflash.c:93: do
      000280                        742 00101$:
                                    743 ;	compactflash.c:95: P1 = 0xeb;
      000280 75 90 EB         [24]  744 	mov	_P1,#0xeb
                                    745 ;	compactflash.c:96: cfWaitCommandReady(device);
      000283 8E 82            [24]  746 	mov	dpl,r6
      000285 C0 07            [24]  747 	push	ar7
      000287 C0 06            [24]  748 	push	ar6
      000289 78 DA            [12]  749 	mov	r0,#_cfWaitCommandReady
      00028B 79 00            [12]  750 	mov	r1,#(_cfWaitCommandReady >> 8)
      00028D 7A 00            [12]  751 	mov	r2,#(_cfWaitCommandReady >> 16)
      00028F 12 00 06         [24]  752 	lcall	__sdcc_banked_call
      000292 D0 06            [24]  753 	pop	ar6
      000294 D0 07            [24]  754 	pop	ar7
                                    755 ;	compactflash.c:98: P1 = 0xec;
      000296 75 90 EC         [24]  756 	mov	_P1,#0xec
                                    757 ;	compactflash.c:99: cfWriteCommand(device, 0x20);
      000299 8E 01            [24]  758 	mov	ar1,r6
      00029B E4               [12]  759 	clr	a
      00029C C9               [12]  760 	xch	a,r1
      00029D C4               [12]  761 	swap	a
      00029E C9               [12]  762 	xch	a,r1
      00029F 69               [12]  763 	xrl	a,r1
      0002A0 C9               [12]  764 	xch	a,r1
      0002A1 54 F0            [12]  765 	anl	a,#0xf0
      0002A3 C9               [12]  766 	xch	a,r1
      0002A4 69               [12]  767 	xrl	a,r1
      0002A5 FA               [12]  768 	mov	r2,a
      0002A6 74 27            [12]  769 	mov	a,#0x27
      0002A8 29               [12]  770 	add	a,r1
      0002A9 F9               [12]  771 	mov	r1,a
      0002AA 74 FF            [12]  772 	mov	a,#0xff
      0002AC 3A               [12]  773 	addc	a,r2
      0002AD FA               [12]  774 	mov	r2,a
      0002AE 89 82            [24]  775 	mov	dpl,r1
      0002B0 8A 83            [24]  776 	mov	dph,r2
      0002B2 74 20            [12]  777 	mov	a,#0x20
      0002B4 F0               [24]  778 	movx	@dptr,a
                                    779 ;	compactflash.c:101: P1 = 0xed;
      0002B5 75 90 ED         [24]  780 	mov	_P1,#0xed
                                    781 ;	compactflash.c:104: P1 = 0xee;
      0002B8 75 90 EE         [24]  782 	mov	_P1,#0xee
                                    783 ;	compactflash.c:105: status = cfReadStatus(device);
      0002BB 89 82            [24]  784 	mov	dpl,r1
      0002BD 8A 83            [24]  785 	mov	dph,r2
      0002BF E0               [24]  786 	movx	a,@dptr
                                    787 ;	compactflash.c:107: P1 = 0xef;
                                    788 ;	compactflash.c:109: while((status & 0x01)!=0);
      0002C0 75 90 EF         [24]  789 	mov	_P1,#0xef
      0002C3 20 E0 BA         [24]  790 	jb	acc.0,00101$
                                    791 ;	compactflash.c:111: for(i=0; i<SECTOR_SIZE; i++)
      0002C6 A9 08            [24]  792 	mov	r1,_cfReadSector_sloc0_1_0
      0002C8 AA 09            [24]  793 	mov	r2,(_cfReadSector_sloc0_1_0 + 1)
      0002CA E4               [12]  794 	clr	a
      0002CB F5 0E            [12]  795 	mov	_cfReadSector_sloc2_1_0,a
      0002CD F5 0F            [12]  796 	mov	(_cfReadSector_sloc2_1_0 + 1),a
      0002CF                        797 00108$:
                                    798 ;	compactflash.c:113: P1 = 0xf0;
      0002CF C0 06            [24]  799 	push	ar6
      0002D1 75 90 F0         [24]  800 	mov	_P1,#0xf0
                                    801 ;	compactflash.c:114: cfWaitDataReady(device);
      0002D4 8F 82            [24]  802 	mov	dpl,r7
      0002D6 C0 07            [24]  803 	push	ar7
      0002D8 C0 06            [24]  804 	push	ar6
      0002DA C0 02            [24]  805 	push	ar2
      0002DC C0 01            [24]  806 	push	ar1
      0002DE 78 0E            [12]  807 	mov	r0,#_cfWaitDataReady
      0002E0 79 01            [12]  808 	mov	r1,#(_cfWaitDataReady >> 8)
      0002E2 7A 00            [12]  809 	mov	r2,#(_cfWaitDataReady >> 16)
      0002E4 12 00 06         [24]  810 	lcall	__sdcc_banked_call
      0002E7 D0 01            [24]  811 	pop	ar1
      0002E9 D0 02            [24]  812 	pop	ar2
      0002EB D0 06            [24]  813 	pop	ar6
      0002ED D0 07            [24]  814 	pop	ar7
                                    815 ;	compactflash.c:116: P1 = 0xf1;
      0002EF 75 90 F1         [24]  816 	mov	_P1,#0xf1
                                    817 ;	compactflash.c:117: buf[i+idx] = cfReadData(device);
      0002F2 E9               [12]  818 	mov	a,r1
      0002F3 25 0E            [12]  819 	add	a,_cfReadSector_sloc2_1_0
      0002F5 F8               [12]  820 	mov	r0,a
      0002F6 EA               [12]  821 	mov	a,r2
      0002F7 35 0F            [12]  822 	addc	a,(_cfReadSector_sloc2_1_0 + 1)
      0002F9 FE               [12]  823 	mov	r6,a
      0002FA E8               [12]  824 	mov	a,r0
      0002FB 25 10            [12]  825 	add	a,_cfReadSector_sloc3_1_0
      0002FD F8               [12]  826 	mov	r0,a
      0002FE EE               [12]  827 	mov	a,r6
      0002FF 35 11            [12]  828 	addc	a,(_cfReadSector_sloc3_1_0 + 1)
      000301 FD               [12]  829 	mov	r5,a
      000302 AE 12            [24]  830 	mov	r6,(_cfReadSector_sloc3_1_0 + 2)
      000304 8F 03            [24]  831 	mov	ar3,r7
      000306 E4               [12]  832 	clr	a
      000307 CB               [12]  833 	xch	a,r3
      000308 C4               [12]  834 	swap	a
      000309 CB               [12]  835 	xch	a,r3
      00030A 6B               [12]  836 	xrl	a,r3
      00030B CB               [12]  837 	xch	a,r3
      00030C 54 F0            [12]  838 	anl	a,#0xf0
      00030E CB               [12]  839 	xch	a,r3
      00030F 6B               [12]  840 	xrl	a,r3
      000310 FC               [12]  841 	mov	r4,a
      000311 74 20            [12]  842 	mov	a,#0x20
      000313 2B               [12]  843 	add	a,r3
      000314 FB               [12]  844 	mov	r3,a
      000315 74 FF            [12]  845 	mov	a,#0xff
      000317 3C               [12]  846 	addc	a,r4
      000318 FC               [12]  847 	mov	r4,a
      000319 8B 82            [24]  848 	mov	dpl,r3
      00031B 8C 83            [24]  849 	mov	dph,r4
      00031D E0               [24]  850 	movx	a,@dptr
      00031E FC               [12]  851 	mov	r4,a
      00031F 88 82            [24]  852 	mov	dpl,r0
      000321 8D 83            [24]  853 	mov	dph,r5
      000323 8E F0            [24]  854 	mov	b,r6
      000325 12 09 5A         [24]  855 	lcall	__gptrput
                                    856 ;	compactflash.c:119: P1 = 0xf2;
      000328 75 90 F2         [24]  857 	mov	_P1,#0xf2
                                    858 ;	compactflash.c:111: for(i=0; i<SECTOR_SIZE; i++)
      00032B 05 0E            [12]  859 	inc	_cfReadSector_sloc2_1_0
      00032D E4               [12]  860 	clr	a
      00032E B5 0E 02         [24]  861 	cjne	a,_cfReadSector_sloc2_1_0,00137$
      000331 05 0F            [12]  862 	inc	(_cfReadSector_sloc2_1_0 + 1)
      000333                        863 00137$:
      000333 C3               [12]  864 	clr	c
      000334 E5 0F            [12]  865 	mov	a,(_cfReadSector_sloc2_1_0 + 1)
      000336 94 02            [12]  866 	subb	a,#0x02
      000338 D0 06            [24]  867 	pop	ar6
      00033A 40 93            [24]  868 	jc	00108$
                                    869 ;	compactflash.c:121: idx += SECTOR_SIZE;
      00033C 89 08            [24]  870 	mov	_cfReadSector_sloc0_1_0,r1
      00033E 74 02            [12]  871 	mov	a,#0x02
      000340 2A               [12]  872 	add	a,r2
      000341 F5 09            [12]  873 	mov	(_cfReadSector_sloc0_1_0 + 1),a
      000343 02 02 6C         [24]  874 	ljmp	00105$
      000346                        875 00107$:
                                    876 ;	compactflash.c:124: P1 = 0xf3;
      000346 75 90 F3         [24]  877 	mov	_P1,#0xf3
                                    878 ;	compactflash.c:125: }
      000349 02 00 18         [24]  879 	ljmp	__sdcc_banked_ret
                                    880 ;------------------------------------------------------------
                                    881 ;Allocation info for local variables in function 'cfTest'
                                    882 ;------------------------------------------------------------
                                    883 ;buf                       Allocated with name '_cfTest_PARM_2'
                                    884 ;device                    Allocated with name '_cfTest_device_65536_37'
                                    885 ;------------------------------------------------------------
                                    886 ;	compactflash.c:129: void cfTest(char device, char* buf)
                                    887 ;	-----------------------------------------
                                    888 ;	 function cfTest
                                    889 ;	-----------------------------------------
      00034C                        890 _cfTest:
      00034C E5 82            [12]  891 	mov	a,dpl
      00034E 90 A0 11         [24]  892 	mov	dptr,#_cfTest_device_65536_37
      000351 F0               [24]  893 	movx	@dptr,a
                                    894 ;	compactflash.c:135: cfInit(device);
      000352 E0               [24]  895 	movx	a,@dptr
      000353 FF               [12]  896 	mov	r7,a
      000354 F5 82            [12]  897 	mov	dpl,a
      000356 C0 07            [24]  898 	push	ar7
      000358 78 77            [12]  899 	mov	r0,#_cfInit
      00035A 79 00            [12]  900 	mov	r1,#(_cfInit >> 8)
      00035C 7A 00            [12]  901 	mov	r2,#(_cfInit >> 16)
      00035E 12 00 06         [24]  902 	lcall	__sdcc_banked_call
      000361 D0 07            [24]  903 	pop	ar7
                                    904 ;	compactflash.c:138: cfReadSector(device, buf, 0, 1);
      000363 90 A0 0E         [24]  905 	mov	dptr,#_cfTest_PARM_2
      000366 E0               [24]  906 	movx	a,@dptr
      000367 FC               [12]  907 	mov	r4,a
      000368 A3               [24]  908 	inc	dptr
      000369 E0               [24]  909 	movx	a,@dptr
      00036A FD               [12]  910 	mov	r5,a
      00036B A3               [24]  911 	inc	dptr
      00036C E0               [24]  912 	movx	a,@dptr
      00036D FE               [12]  913 	mov	r6,a
      00036E 90 A0 04         [24]  914 	mov	dptr,#_cfReadSector_PARM_2
      000371 EC               [12]  915 	mov	a,r4
      000372 F0               [24]  916 	movx	@dptr,a
      000373 ED               [12]  917 	mov	a,r5
      000374 A3               [24]  918 	inc	dptr
      000375 F0               [24]  919 	movx	@dptr,a
      000376 EE               [12]  920 	mov	a,r6
      000377 A3               [24]  921 	inc	dptr
      000378 F0               [24]  922 	movx	@dptr,a
      000379 90 A0 07         [24]  923 	mov	dptr,#_cfReadSector_PARM_3
      00037C E4               [12]  924 	clr	a
      00037D F0               [24]  925 	movx	@dptr,a
      00037E A3               [24]  926 	inc	dptr
      00037F F0               [24]  927 	movx	@dptr,a
      000380 A3               [24]  928 	inc	dptr
      000381 F0               [24]  929 	movx	@dptr,a
      000382 A3               [24]  930 	inc	dptr
      000383 F0               [24]  931 	movx	@dptr,a
      000384 90 A0 0B         [24]  932 	mov	dptr,#_cfReadSector_PARM_4
      000387 04               [12]  933 	inc	a
      000388 F0               [24]  934 	movx	@dptr,a
      000389 E4               [12]  935 	clr	a
      00038A A3               [24]  936 	inc	dptr
      00038B F0               [24]  937 	movx	@dptr,a
      00038C 8F 82            [24]  938 	mov	dpl,r7
      00038E C0 07            [24]  939 	push	ar7
      000390 78 42            [12]  940 	mov	r0,#_cfReadSector
      000392 79 01            [12]  941 	mov	r1,#(_cfReadSector >> 8)
      000394 7A 00            [12]  942 	mov	r2,#(_cfReadSector >> 16)
      000396 12 00 06         [24]  943 	lcall	__sdcc_banked_call
                                    944 ;	compactflash.c:139: sioTXBuf(0, buf, 512);
      000399 90 A0 0E         [24]  945 	mov	dptr,#_cfTest_PARM_2
      00039C E0               [24]  946 	movx	a,@dptr
      00039D FC               [12]  947 	mov	r4,a
      00039E A3               [24]  948 	inc	dptr
      00039F E0               [24]  949 	movx	a,@dptr
      0003A0 FD               [12]  950 	mov	r5,a
      0003A1 A3               [24]  951 	inc	dptr
      0003A2 E0               [24]  952 	movx	a,@dptr
      0003A3 FE               [12]  953 	mov	r6,a
      0003A4 90 A2 1D         [24]  954 	mov	dptr,#_sioTXBuf_PARM_2
      0003A7 EC               [12]  955 	mov	a,r4
      0003A8 F0               [24]  956 	movx	@dptr,a
      0003A9 ED               [12]  957 	mov	a,r5
      0003AA A3               [24]  958 	inc	dptr
      0003AB F0               [24]  959 	movx	@dptr,a
      0003AC EE               [12]  960 	mov	a,r6
      0003AD A3               [24]  961 	inc	dptr
      0003AE F0               [24]  962 	movx	@dptr,a
      0003AF 90 A2 20         [24]  963 	mov	dptr,#_sioTXBuf_PARM_3
      0003B2 E4               [12]  964 	clr	a
      0003B3 F0               [24]  965 	movx	@dptr,a
      0003B4 74 02            [12]  966 	mov	a,#0x02
      0003B6 A3               [24]  967 	inc	dptr
      0003B7 F0               [24]  968 	movx	@dptr,a
      0003B8 75 82 00         [24]  969 	mov	dpl,#0x00
      0003BB 78 2E            [12]  970 	mov	r0,#_sioTXBuf
      0003BD 79 07            [12]  971 	mov	r1,#(_sioTXBuf >> 8)
      0003BF 7A 00            [12]  972 	mov	r2,#(_sioTXBuf >> 16)
      0003C1 12 00 06         [24]  973 	lcall	__sdcc_banked_call
      0003C4 D0 07            [24]  974 	pop	ar7
                                    975 ;	compactflash.c:143: cfReadSector(device, buf, 1, 1);
      0003C6 90 A0 0E         [24]  976 	mov	dptr,#_cfTest_PARM_2
      0003C9 E0               [24]  977 	movx	a,@dptr
      0003CA FC               [12]  978 	mov	r4,a
      0003CB A3               [24]  979 	inc	dptr
      0003CC E0               [24]  980 	movx	a,@dptr
      0003CD FD               [12]  981 	mov	r5,a
      0003CE A3               [24]  982 	inc	dptr
      0003CF E0               [24]  983 	movx	a,@dptr
      0003D0 FE               [12]  984 	mov	r6,a
      0003D1 90 A0 04         [24]  985 	mov	dptr,#_cfReadSector_PARM_2
      0003D4 EC               [12]  986 	mov	a,r4
      0003D5 F0               [24]  987 	movx	@dptr,a
      0003D6 ED               [12]  988 	mov	a,r5
      0003D7 A3               [24]  989 	inc	dptr
      0003D8 F0               [24]  990 	movx	@dptr,a
      0003D9 EE               [12]  991 	mov	a,r6
      0003DA A3               [24]  992 	inc	dptr
      0003DB F0               [24]  993 	movx	@dptr,a
      0003DC 90 A0 07         [24]  994 	mov	dptr,#_cfReadSector_PARM_3
      0003DF 74 01            [12]  995 	mov	a,#0x01
      0003E1 F0               [24]  996 	movx	@dptr,a
      0003E2 E4               [12]  997 	clr	a
      0003E3 A3               [24]  998 	inc	dptr
      0003E4 F0               [24]  999 	movx	@dptr,a
      0003E5 A3               [24] 1000 	inc	dptr
      0003E6 F0               [24] 1001 	movx	@dptr,a
      0003E7 A3               [24] 1002 	inc	dptr
      0003E8 F0               [24] 1003 	movx	@dptr,a
      0003E9 90 A0 0B         [24] 1004 	mov	dptr,#_cfReadSector_PARM_4
      0003EC 04               [12] 1005 	inc	a
      0003ED F0               [24] 1006 	movx	@dptr,a
      0003EE E4               [12] 1007 	clr	a
      0003EF A3               [24] 1008 	inc	dptr
      0003F0 F0               [24] 1009 	movx	@dptr,a
      0003F1 8F 82            [24] 1010 	mov	dpl,r7
      0003F3 78 42            [12] 1011 	mov	r0,#_cfReadSector
      0003F5 79 01            [12] 1012 	mov	r1,#(_cfReadSector >> 8)
      0003F7 7A 00            [12] 1013 	mov	r2,#(_cfReadSector >> 16)
      0003F9 12 00 06         [24] 1014 	lcall	__sdcc_banked_call
                                   1015 ;	compactflash.c:144: sioTXBuf(0, buf, 512);
      0003FC 90 A0 0E         [24] 1016 	mov	dptr,#_cfTest_PARM_2
      0003FF E0               [24] 1017 	movx	a,@dptr
      000400 FD               [12] 1018 	mov	r5,a
      000401 A3               [24] 1019 	inc	dptr
      000402 E0               [24] 1020 	movx	a,@dptr
      000403 FE               [12] 1021 	mov	r6,a
      000404 A3               [24] 1022 	inc	dptr
      000405 E0               [24] 1023 	movx	a,@dptr
      000406 FF               [12] 1024 	mov	r7,a
      000407 90 A2 1D         [24] 1025 	mov	dptr,#_sioTXBuf_PARM_2
      00040A ED               [12] 1026 	mov	a,r5
      00040B F0               [24] 1027 	movx	@dptr,a
      00040C EE               [12] 1028 	mov	a,r6
      00040D A3               [24] 1029 	inc	dptr
      00040E F0               [24] 1030 	movx	@dptr,a
      00040F EF               [12] 1031 	mov	a,r7
      000410 A3               [24] 1032 	inc	dptr
      000411 F0               [24] 1033 	movx	@dptr,a
      000412 90 A2 20         [24] 1034 	mov	dptr,#_sioTXBuf_PARM_3
      000415 E4               [12] 1035 	clr	a
      000416 F0               [24] 1036 	movx	@dptr,a
      000417 74 02            [12] 1037 	mov	a,#0x02
      000419 A3               [24] 1038 	inc	dptr
      00041A F0               [24] 1039 	movx	@dptr,a
      00041B 75 82 00         [24] 1040 	mov	dpl,#0x00
      00041E 78 2E            [12] 1041 	mov	r0,#_sioTXBuf
      000420 79 07            [12] 1042 	mov	r1,#(_sioTXBuf >> 8)
      000422 7A 00            [12] 1043 	mov	r2,#(_sioTXBuf >> 16)
      000424 12 00 06         [24] 1044 	lcall	__sdcc_banked_call
                                   1045 ;	compactflash.c:146: }
      000427 02 00 18         [24] 1046 	ljmp	__sdcc_banked_ret
                                   1047 	.area CSEG    (CODE)
                                   1048 	.area CONST   (CODE)
                                   1049 	.area XINIT   (CODE)
                                   1050 	.area CABS    (ABS,CODE)
