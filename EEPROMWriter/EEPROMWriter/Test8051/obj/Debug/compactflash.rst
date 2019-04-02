                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module compactflash
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CY
                                     12 	.globl _AC
                                     13 	.globl _F0
                                     14 	.globl _RS1
                                     15 	.globl _RS0
                                     16 	.globl _OV
                                     17 	.globl _F1
                                     18 	.globl _P
                                     19 	.globl _PS
                                     20 	.globl _PT1
                                     21 	.globl _PX1
                                     22 	.globl _PT0
                                     23 	.globl _PX0
                                     24 	.globl _RD
                                     25 	.globl _WR
                                     26 	.globl _T1
                                     27 	.globl _T0
                                     28 	.globl _INT1
                                     29 	.globl _INT0
                                     30 	.globl _TXD
                                     31 	.globl _RXD
                                     32 	.globl _P3_7
                                     33 	.globl _P3_6
                                     34 	.globl _P3_5
                                     35 	.globl _P3_4
                                     36 	.globl _P3_3
                                     37 	.globl _P3_2
                                     38 	.globl _P3_1
                                     39 	.globl _P3_0
                                     40 	.globl _EA
                                     41 	.globl _ES
                                     42 	.globl _ET1
                                     43 	.globl _EX1
                                     44 	.globl _ET0
                                     45 	.globl _EX0
                                     46 	.globl _P2_7
                                     47 	.globl _P2_6
                                     48 	.globl _P2_5
                                     49 	.globl _P2_4
                                     50 	.globl _P2_3
                                     51 	.globl _P2_2
                                     52 	.globl _P2_1
                                     53 	.globl _P2_0
                                     54 	.globl _SM0
                                     55 	.globl _SM1
                                     56 	.globl _SM2
                                     57 	.globl _REN
                                     58 	.globl _TB8
                                     59 	.globl _RB8
                                     60 	.globl _TI
                                     61 	.globl _RI
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _TF1
                                     71 	.globl _TR1
                                     72 	.globl _TF0
                                     73 	.globl _TR0
                                     74 	.globl _IE1
                                     75 	.globl _IT1
                                     76 	.globl _IE0
                                     77 	.globl _IT0
                                     78 	.globl _P0_7
                                     79 	.globl _P0_6
                                     80 	.globl _P0_5
                                     81 	.globl _P0_4
                                     82 	.globl _P0_3
                                     83 	.globl _P0_2
                                     84 	.globl _P0_1
                                     85 	.globl _P0_0
                                     86 	.globl _B
                                     87 	.globl _ACC
                                     88 	.globl _PSW
                                     89 	.globl _IP
                                     90 	.globl _P3
                                     91 	.globl _IE
                                     92 	.globl _P2
                                     93 	.globl _SBUF
                                     94 	.globl _SCON
                                     95 	.globl _P1
                                     96 	.globl _TH1
                                     97 	.globl _TH0
                                     98 	.globl _TL1
                                     99 	.globl _TL0
                                    100 	.globl _TMOD
                                    101 	.globl _TCON
                                    102 	.globl _PCON
                                    103 	.globl _DPH
                                    104 	.globl _DPL
                                    105 	.globl _SP
                                    106 	.globl _P0
                                    107 	.globl _cfInit
                                    108 	.globl _cfWaitIdle
                                    109 	.globl _cfWaitCommandReady
                                    110 	.globl _cfWaitDataReady
                                    111 	.globl _cfReadSector
                                    112 	.globl _cfWriteSector
                                    113 	.globl _cfDiskGetSectorCount
                                    114 ;--------------------------------------------------------
                                    115 ; special function registers
                                    116 ;--------------------------------------------------------
                                    117 	.area RSEG    (ABS,DATA)
      000000                        118 	.org 0x0000
                           000080   119 G$P0$0_0$0 == 0x0080
                           000080   120 _P0	=	0x0080
                           000081   121 G$SP$0_0$0 == 0x0081
                           000081   122 _SP	=	0x0081
                           000082   123 G$DPL$0_0$0 == 0x0082
                           000082   124 _DPL	=	0x0082
                           000083   125 G$DPH$0_0$0 == 0x0083
                           000083   126 _DPH	=	0x0083
                           000087   127 G$PCON$0_0$0 == 0x0087
                           000087   128 _PCON	=	0x0087
                           000088   129 G$TCON$0_0$0 == 0x0088
                           000088   130 _TCON	=	0x0088
                           000089   131 G$TMOD$0_0$0 == 0x0089
                           000089   132 _TMOD	=	0x0089
                           00008A   133 G$TL0$0_0$0 == 0x008a
                           00008A   134 _TL0	=	0x008a
                           00008B   135 G$TL1$0_0$0 == 0x008b
                           00008B   136 _TL1	=	0x008b
                           00008C   137 G$TH0$0_0$0 == 0x008c
                           00008C   138 _TH0	=	0x008c
                           00008D   139 G$TH1$0_0$0 == 0x008d
                           00008D   140 _TH1	=	0x008d
                           000090   141 G$P1$0_0$0 == 0x0090
                           000090   142 _P1	=	0x0090
                           000098   143 G$SCON$0_0$0 == 0x0098
                           000098   144 _SCON	=	0x0098
                           000099   145 G$SBUF$0_0$0 == 0x0099
                           000099   146 _SBUF	=	0x0099
                           0000A0   147 G$P2$0_0$0 == 0x00a0
                           0000A0   148 _P2	=	0x00a0
                           0000A8   149 G$IE$0_0$0 == 0x00a8
                           0000A8   150 _IE	=	0x00a8
                           0000B0   151 G$P3$0_0$0 == 0x00b0
                           0000B0   152 _P3	=	0x00b0
                           0000B8   153 G$IP$0_0$0 == 0x00b8
                           0000B8   154 _IP	=	0x00b8
                           0000D0   155 G$PSW$0_0$0 == 0x00d0
                           0000D0   156 _PSW	=	0x00d0
                           0000E0   157 G$ACC$0_0$0 == 0x00e0
                           0000E0   158 _ACC	=	0x00e0
                           0000F0   159 G$B$0_0$0 == 0x00f0
                           0000F0   160 _B	=	0x00f0
                                    161 ;--------------------------------------------------------
                                    162 ; special function bits
                                    163 ;--------------------------------------------------------
                                    164 	.area RSEG    (ABS,DATA)
      000000                        165 	.org 0x0000
                           000080   166 G$P0_0$0_0$0 == 0x0080
                           000080   167 _P0_0	=	0x0080
                           000081   168 G$P0_1$0_0$0 == 0x0081
                           000081   169 _P0_1	=	0x0081
                           000082   170 G$P0_2$0_0$0 == 0x0082
                           000082   171 _P0_2	=	0x0082
                           000083   172 G$P0_3$0_0$0 == 0x0083
                           000083   173 _P0_3	=	0x0083
                           000084   174 G$P0_4$0_0$0 == 0x0084
                           000084   175 _P0_4	=	0x0084
                           000085   176 G$P0_5$0_0$0 == 0x0085
                           000085   177 _P0_5	=	0x0085
                           000086   178 G$P0_6$0_0$0 == 0x0086
                           000086   179 _P0_6	=	0x0086
                           000087   180 G$P0_7$0_0$0 == 0x0087
                           000087   181 _P0_7	=	0x0087
                           000088   182 G$IT0$0_0$0 == 0x0088
                           000088   183 _IT0	=	0x0088
                           000089   184 G$IE0$0_0$0 == 0x0089
                           000089   185 _IE0	=	0x0089
                           00008A   186 G$IT1$0_0$0 == 0x008a
                           00008A   187 _IT1	=	0x008a
                           00008B   188 G$IE1$0_0$0 == 0x008b
                           00008B   189 _IE1	=	0x008b
                           00008C   190 G$TR0$0_0$0 == 0x008c
                           00008C   191 _TR0	=	0x008c
                           00008D   192 G$TF0$0_0$0 == 0x008d
                           00008D   193 _TF0	=	0x008d
                           00008E   194 G$TR1$0_0$0 == 0x008e
                           00008E   195 _TR1	=	0x008e
                           00008F   196 G$TF1$0_0$0 == 0x008f
                           00008F   197 _TF1	=	0x008f
                           000090   198 G$P1_0$0_0$0 == 0x0090
                           000090   199 _P1_0	=	0x0090
                           000091   200 G$P1_1$0_0$0 == 0x0091
                           000091   201 _P1_1	=	0x0091
                           000092   202 G$P1_2$0_0$0 == 0x0092
                           000092   203 _P1_2	=	0x0092
                           000093   204 G$P1_3$0_0$0 == 0x0093
                           000093   205 _P1_3	=	0x0093
                           000094   206 G$P1_4$0_0$0 == 0x0094
                           000094   207 _P1_4	=	0x0094
                           000095   208 G$P1_5$0_0$0 == 0x0095
                           000095   209 _P1_5	=	0x0095
                           000096   210 G$P1_6$0_0$0 == 0x0096
                           000096   211 _P1_6	=	0x0096
                           000097   212 G$P1_7$0_0$0 == 0x0097
                           000097   213 _P1_7	=	0x0097
                           000098   214 G$RI$0_0$0 == 0x0098
                           000098   215 _RI	=	0x0098
                           000099   216 G$TI$0_0$0 == 0x0099
                           000099   217 _TI	=	0x0099
                           00009A   218 G$RB8$0_0$0 == 0x009a
                           00009A   219 _RB8	=	0x009a
                           00009B   220 G$TB8$0_0$0 == 0x009b
                           00009B   221 _TB8	=	0x009b
                           00009C   222 G$REN$0_0$0 == 0x009c
                           00009C   223 _REN	=	0x009c
                           00009D   224 G$SM2$0_0$0 == 0x009d
                           00009D   225 _SM2	=	0x009d
                           00009E   226 G$SM1$0_0$0 == 0x009e
                           00009E   227 _SM1	=	0x009e
                           00009F   228 G$SM0$0_0$0 == 0x009f
                           00009F   229 _SM0	=	0x009f
                           0000A0   230 G$P2_0$0_0$0 == 0x00a0
                           0000A0   231 _P2_0	=	0x00a0
                           0000A1   232 G$P2_1$0_0$0 == 0x00a1
                           0000A1   233 _P2_1	=	0x00a1
                           0000A2   234 G$P2_2$0_0$0 == 0x00a2
                           0000A2   235 _P2_2	=	0x00a2
                           0000A3   236 G$P2_3$0_0$0 == 0x00a3
                           0000A3   237 _P2_3	=	0x00a3
                           0000A4   238 G$P2_4$0_0$0 == 0x00a4
                           0000A4   239 _P2_4	=	0x00a4
                           0000A5   240 G$P2_5$0_0$0 == 0x00a5
                           0000A5   241 _P2_5	=	0x00a5
                           0000A6   242 G$P2_6$0_0$0 == 0x00a6
                           0000A6   243 _P2_6	=	0x00a6
                           0000A7   244 G$P2_7$0_0$0 == 0x00a7
                           0000A7   245 _P2_7	=	0x00a7
                           0000A8   246 G$EX0$0_0$0 == 0x00a8
                           0000A8   247 _EX0	=	0x00a8
                           0000A9   248 G$ET0$0_0$0 == 0x00a9
                           0000A9   249 _ET0	=	0x00a9
                           0000AA   250 G$EX1$0_0$0 == 0x00aa
                           0000AA   251 _EX1	=	0x00aa
                           0000AB   252 G$ET1$0_0$0 == 0x00ab
                           0000AB   253 _ET1	=	0x00ab
                           0000AC   254 G$ES$0_0$0 == 0x00ac
                           0000AC   255 _ES	=	0x00ac
                           0000AF   256 G$EA$0_0$0 == 0x00af
                           0000AF   257 _EA	=	0x00af
                           0000B0   258 G$P3_0$0_0$0 == 0x00b0
                           0000B0   259 _P3_0	=	0x00b0
                           0000B1   260 G$P3_1$0_0$0 == 0x00b1
                           0000B1   261 _P3_1	=	0x00b1
                           0000B2   262 G$P3_2$0_0$0 == 0x00b2
                           0000B2   263 _P3_2	=	0x00b2
                           0000B3   264 G$P3_3$0_0$0 == 0x00b3
                           0000B3   265 _P3_3	=	0x00b3
                           0000B4   266 G$P3_4$0_0$0 == 0x00b4
                           0000B4   267 _P3_4	=	0x00b4
                           0000B5   268 G$P3_5$0_0$0 == 0x00b5
                           0000B5   269 _P3_5	=	0x00b5
                           0000B6   270 G$P3_6$0_0$0 == 0x00b6
                           0000B6   271 _P3_6	=	0x00b6
                           0000B7   272 G$P3_7$0_0$0 == 0x00b7
                           0000B7   273 _P3_7	=	0x00b7
                           0000B0   274 G$RXD$0_0$0 == 0x00b0
                           0000B0   275 _RXD	=	0x00b0
                           0000B1   276 G$TXD$0_0$0 == 0x00b1
                           0000B1   277 _TXD	=	0x00b1
                           0000B2   278 G$INT0$0_0$0 == 0x00b2
                           0000B2   279 _INT0	=	0x00b2
                           0000B3   280 G$INT1$0_0$0 == 0x00b3
                           0000B3   281 _INT1	=	0x00b3
                           0000B4   282 G$T0$0_0$0 == 0x00b4
                           0000B4   283 _T0	=	0x00b4
                           0000B5   284 G$T1$0_0$0 == 0x00b5
                           0000B5   285 _T1	=	0x00b5
                           0000B6   286 G$WR$0_0$0 == 0x00b6
                           0000B6   287 _WR	=	0x00b6
                           0000B7   288 G$RD$0_0$0 == 0x00b7
                           0000B7   289 _RD	=	0x00b7
                           0000B8   290 G$PX0$0_0$0 == 0x00b8
                           0000B8   291 _PX0	=	0x00b8
                           0000B9   292 G$PT0$0_0$0 == 0x00b9
                           0000B9   293 _PT0	=	0x00b9
                           0000BA   294 G$PX1$0_0$0 == 0x00ba
                           0000BA   295 _PX1	=	0x00ba
                           0000BB   296 G$PT1$0_0$0 == 0x00bb
                           0000BB   297 _PT1	=	0x00bb
                           0000BC   298 G$PS$0_0$0 == 0x00bc
                           0000BC   299 _PS	=	0x00bc
                           0000D0   300 G$P$0_0$0 == 0x00d0
                           0000D0   301 _P	=	0x00d0
                           0000D1   302 G$F1$0_0$0 == 0x00d1
                           0000D1   303 _F1	=	0x00d1
                           0000D2   304 G$OV$0_0$0 == 0x00d2
                           0000D2   305 _OV	=	0x00d2
                           0000D3   306 G$RS0$0_0$0 == 0x00d3
                           0000D3   307 _RS0	=	0x00d3
                           0000D4   308 G$RS1$0_0$0 == 0x00d4
                           0000D4   309 _RS1	=	0x00d4
                           0000D5   310 G$F0$0_0$0 == 0x00d5
                           0000D5   311 _F0	=	0x00d5
                           0000D6   312 G$AC$0_0$0 == 0x00d6
                           0000D6   313 _AC	=	0x00d6
                           0000D7   314 G$CY$0_0$0 == 0x00d7
                           0000D7   315 _CY	=	0x00d7
                                    316 ;--------------------------------------------------------
                                    317 ; overlayable register banks
                                    318 ;--------------------------------------------------------
                                    319 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        320 	.ds 8
                                    321 ;--------------------------------------------------------
                                    322 ; internal ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area DSEG    (DATA)
                                    325 ;--------------------------------------------------------
                                    326 ; overlayable items in internal ram 
                                    327 ;--------------------------------------------------------
                                    328 ;--------------------------------------------------------
                                    329 ; indirectly addressable internal ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area ISEG    (DATA)
                                    332 ;--------------------------------------------------------
                                    333 ; absolute internal ram data
                                    334 ;--------------------------------------------------------
                                    335 	.area IABS    (ABS,DATA)
                                    336 	.area IABS    (ABS,DATA)
                                    337 ;--------------------------------------------------------
                                    338 ; bit data
                                    339 ;--------------------------------------------------------
                                    340 	.area BSEG    (BIT)
                                    341 ;--------------------------------------------------------
                                    342 ; paged external ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area PSEG    (PAG,XDATA)
                                    345 ;--------------------------------------------------------
                                    346 ; external ram data
                                    347 ;--------------------------------------------------------
                                    348 	.area XSEG    (XDATA)
                                    349 ;--------------------------------------------------------
                                    350 ; absolute external ram data
                                    351 ;--------------------------------------------------------
                                    352 	.area XABS    (ABS,XDATA)
                                    353 ;--------------------------------------------------------
                                    354 ; external initialized ram data
                                    355 ;--------------------------------------------------------
                                    356 	.area XISEG   (XDATA)
                                    357 	.area HOME    (CODE)
                                    358 	.area GSINIT0 (CODE)
                                    359 	.area GSINIT1 (CODE)
                                    360 	.area GSINIT2 (CODE)
                                    361 	.area GSINIT3 (CODE)
                                    362 	.area GSINIT4 (CODE)
                                    363 	.area GSINIT5 (CODE)
                                    364 	.area GSINIT  (CODE)
                                    365 	.area GSFINAL (CODE)
                                    366 	.area CSEG    (CODE)
                                    367 ;--------------------------------------------------------
                                    368 ; global & static initialisations
                                    369 ;--------------------------------------------------------
                                    370 	.area HOME    (CODE)
                                    371 	.area GSINIT  (CODE)
                                    372 	.area GSFINAL (CODE)
                                    373 	.area GSINIT  (CODE)
                                    374 ;--------------------------------------------------------
                                    375 ; Home
                                    376 ;--------------------------------------------------------
                                    377 	.area HOME    (CODE)
                                    378 	.area HOME    (CODE)
                                    379 ;--------------------------------------------------------
                                    380 ; code
                                    381 ;--------------------------------------------------------
                                    382 	.area CSEG    (CODE)
                                    383 ;------------------------------------------------------------
                                    384 ;Allocation info for local variables in function 'cfInit'
                                    385 ;------------------------------------------------------------
                                    386 ;device                    Allocated to registers r7 
                                    387 ;------------------------------------------------------------
                           000000   388 	G$cfInit$0$0 ==.
                           000000   389 	C$compactflash.c$3$0_0$9 ==.
                                    390 ;	compactflash.c:3: void cfInit(char device)
                                    391 ;	-----------------------------------------
                                    392 ;	 function cfInit
                                    393 ;	-----------------------------------------
      000062                        394 _cfInit:
                           000007   395 	ar7 = 0x07
                           000006   396 	ar6 = 0x06
                           000005   397 	ar5 = 0x05
                           000004   398 	ar4 = 0x04
                           000003   399 	ar3 = 0x03
                           000002   400 	ar2 = 0x02
                           000001   401 	ar1 = 0x01
                           000000   402 	ar0 = 0x00
                           000000   403 	C$compactflash.c$5$1_0$9 ==.
                                    404 ;	compactflash.c:5: cfWaitIdle(device);
      000062 AF 82            [24]  405 	mov  r7,dpl
      000064 C0 07            [24]  406 	push	ar7
      000066 12 00 A7         [24]  407 	lcall	_cfWaitIdle
      000069 D0 07            [24]  408 	pop	ar7
                           000009   409 	C$compactflash.c$7$1_0$9 ==.
                                    410 ;	compactflash.c:7: cfWriteFeatures(device, 0x01); //  set 8 bit mode to features port
      00006B 8F 05            [24]  411 	mov	ar5,r7
      00006D E4               [12]  412 	clr	a
      00006E C4               [12]  413 	swap	a
      00006F 54 F0            [12]  414 	anl	a,#0xf0
      000071 CD               [12]  415 	xch	a,r5
      000072 C4               [12]  416 	swap	a
      000073 CD               [12]  417 	xch	a,r5
      000074 6D               [12]  418 	xrl	a,r5
      000075 CD               [12]  419 	xch	a,r5
      000076 54 F0            [12]  420 	anl	a,#0xf0
      000078 CD               [12]  421 	xch	a,r5
      000079 6D               [12]  422 	xrl	a,r5
      00007A FE               [12]  423 	mov	r6,a
      00007B 74 21            [12]  424 	mov	a,#0x21
      00007D 2D               [12]  425 	add	a,r5
      00007E FB               [12]  426 	mov	r3,a
      00007F 74 FF            [12]  427 	mov	a,#0xff
      000081 3E               [12]  428 	addc	a,r6
      000082 FC               [12]  429 	mov	r4,a
      000083 8B 82            [24]  430 	mov	dpl,r3
      000085 8C 83            [24]  431 	mov	dph,r4
      000087 74 01            [12]  432 	mov	a,#0x01
      000089 F0               [24]  433 	movx	@dptr,a
                           000028   434 	C$compactflash.c$9$1_0$9 ==.
                                    435 ;	compactflash.c:9: cfWaitIdle(device);
      00008A 8F 82            [24]  436 	mov	dpl,r7
      00008C C0 06            [24]  437 	push	ar6
      00008E C0 05            [24]  438 	push	ar5
      000090 12 00 A7         [24]  439 	lcall	_cfWaitIdle
      000093 D0 05            [24]  440 	pop	ar5
      000095 D0 06            [24]  441 	pop	ar6
                           000035   442 	C$compactflash.c$11$1_0$9 ==.
                                    443 ;	compactflash.c:11: cfWriteCommand(device, 0xef);  // command 'set features'
      000097 74 27            [12]  444 	mov	a,#0x27
      000099 2D               [12]  445 	add	a,r5
      00009A FD               [12]  446 	mov	r5,a
      00009B 74 FF            [12]  447 	mov	a,#0xff
      00009D 3E               [12]  448 	addc	a,r6
      00009E FE               [12]  449 	mov	r6,a
      00009F 8D 82            [24]  450 	mov	dpl,r5
      0000A1 8E 83            [24]  451 	mov	dph,r6
      0000A3 74 EF            [12]  452 	mov	a,#0xef
      0000A5 F0               [24]  453 	movx	@dptr,a
                           000044   454 	C$compactflash.c$12$1_0$9 ==.
                                    455 ;	compactflash.c:12: }
                           000044   456 	C$compactflash.c$12$1_0$9 ==.
                           000044   457 	XG$cfInit$0$0 ==.
      0000A6 22               [24]  458 	ret
                                    459 ;------------------------------------------------------------
                                    460 ;Allocation info for local variables in function 'cfWaitIdle'
                                    461 ;------------------------------------------------------------
                                    462 ;device                    Allocated to registers r7 
                                    463 ;status                    Allocated to registers r6 
                                    464 ;------------------------------------------------------------
                           000045   465 	G$cfWaitIdle$0$0 ==.
                           000045   466 	C$compactflash.c$14$1_0$11 ==.
                                    467 ;	compactflash.c:14: void cfWaitIdle(char device)
                                    468 ;	-----------------------------------------
                                    469 ;	 function cfWaitIdle
                                    470 ;	-----------------------------------------
      0000A7                        471 _cfWaitIdle:
      0000A7 AF 82            [24]  472 	mov	r7,dpl
                           000047   473 	C$compactflash.c$17$1_0$11 ==.
                                    474 ;	compactflash.c:17: do
      0000A9                        475 00101$:
                           000047   476 	C$compactflash.c$19$2_0$12 ==.
                                    477 ;	compactflash.c:19: status = cfReadStatus(device);
      0000A9 8F 05            [24]  478 	mov	ar5,r7
      0000AB E4               [12]  479 	clr	a
      0000AC C4               [12]  480 	swap	a
      0000AD 54 F0            [12]  481 	anl	a,#0xf0
      0000AF CD               [12]  482 	xch	a,r5
      0000B0 C4               [12]  483 	swap	a
      0000B1 CD               [12]  484 	xch	a,r5
      0000B2 6D               [12]  485 	xrl	a,r5
      0000B3 CD               [12]  486 	xch	a,r5
      0000B4 54 F0            [12]  487 	anl	a,#0xf0
      0000B6 CD               [12]  488 	xch	a,r5
      0000B7 6D               [12]  489 	xrl	a,r5
      0000B8 FE               [12]  490 	mov	r6,a
      0000B9 74 27            [12]  491 	mov	a,#0x27
      0000BB 2D               [12]  492 	add	a,r5
      0000BC FD               [12]  493 	mov	r5,a
      0000BD 74 FF            [12]  494 	mov	a,#0xff
      0000BF 3E               [12]  495 	addc	a,r6
      0000C0 FE               [12]  496 	mov	r6,a
      0000C1 8D 82            [24]  497 	mov	dpl,r5
      0000C3 8E 83            [24]  498 	mov	dph,r6
      0000C5 E0               [24]  499 	movx	a,@dptr
                           000064   500 	C$compactflash.c$21$1_0$11 ==.
                                    501 ;	compactflash.c:21: while((status & 0x80)!=0);
      0000C6 20 E7 E0         [24]  502 	jb	acc.7,00101$
                           000067   503 	C$compactflash.c$22$1_0$11 ==.
                                    504 ;	compactflash.c:22: }
                           000067   505 	C$compactflash.c$22$1_0$11 ==.
                           000067   506 	XG$cfWaitIdle$0$0 ==.
      0000C9 22               [24]  507 	ret
                                    508 ;------------------------------------------------------------
                                    509 ;Allocation info for local variables in function 'cfWaitCommandReady'
                                    510 ;------------------------------------------------------------
                                    511 ;device                    Allocated to registers r7 
                                    512 ;status                    Allocated to registers r6 
                                    513 ;------------------------------------------------------------
                           000068   514 	G$cfWaitCommandReady$0$0 ==.
                           000068   515 	C$compactflash.c$24$1_0$14 ==.
                                    516 ;	compactflash.c:24: void cfWaitCommandReady(char device)
                                    517 ;	-----------------------------------------
                                    518 ;	 function cfWaitCommandReady
                                    519 ;	-----------------------------------------
      0000CA                        520 _cfWaitCommandReady:
      0000CA AF 82            [24]  521 	mov	r7,dpl
                           00006A   522 	C$compactflash.c$28$1_0$14 ==.
                                    523 ;	compactflash.c:28: do
      0000CC                        524 00101$:
                           00006A   525 	C$compactflash.c$30$2_0$15 ==.
                                    526 ;	compactflash.c:30: status = cfReadStatus(device);
      0000CC 8F 05            [24]  527 	mov	ar5,r7
      0000CE E4               [12]  528 	clr	a
      0000CF C4               [12]  529 	swap	a
      0000D0 54 F0            [12]  530 	anl	a,#0xf0
      0000D2 CD               [12]  531 	xch	a,r5
      0000D3 C4               [12]  532 	swap	a
      0000D4 CD               [12]  533 	xch	a,r5
      0000D5 6D               [12]  534 	xrl	a,r5
      0000D6 CD               [12]  535 	xch	a,r5
      0000D7 54 F0            [12]  536 	anl	a,#0xf0
      0000D9 CD               [12]  537 	xch	a,r5
      0000DA 6D               [12]  538 	xrl	a,r5
      0000DB FE               [12]  539 	mov	r6,a
      0000DC 74 27            [12]  540 	mov	a,#0x27
      0000DE 2D               [12]  541 	add	a,r5
      0000DF FD               [12]  542 	mov	r5,a
      0000E0 74 FF            [12]  543 	mov	a,#0xff
      0000E2 3E               [12]  544 	addc	a,r6
      0000E3 FE               [12]  545 	mov	r6,a
      0000E4 8D 82            [24]  546 	mov	dpl,r5
      0000E6 8E 83            [24]  547 	mov	dph,r6
      0000E8 E0               [24]  548 	movx	a,@dptr
      0000E9 FE               [12]  549 	mov	r6,a
                           000088   550 	C$compactflash.c$32$1_0$14 ==.
                                    551 ;	compactflash.c:32: while((status & 0xc0)!=0x40);
      0000EA 53 06 C0         [24]  552 	anl	ar6,#0xc0
      0000ED 7D 00            [12]  553 	mov	r5,#0x00
      0000EF BE 40 DA         [24]  554 	cjne	r6,#0x40,00101$
      0000F2 BD 00 D7         [24]  555 	cjne	r5,#0x00,00101$
                           000093   556 	C$compactflash.c$33$1_0$14 ==.
                                    557 ;	compactflash.c:33: }
                           000093   558 	C$compactflash.c$33$1_0$14 ==.
                           000093   559 	XG$cfWaitCommandReady$0$0 ==.
      0000F5 22               [24]  560 	ret
                                    561 ;------------------------------------------------------------
                                    562 ;Allocation info for local variables in function 'cfWaitDataReady'
                                    563 ;------------------------------------------------------------
                                    564 ;device                    Allocated to registers r7 
                                    565 ;status                    Allocated to registers r6 
                                    566 ;------------------------------------------------------------
                           000094   567 	G$cfWaitDataReady$0$0 ==.
                           000094   568 	C$compactflash.c$35$1_0$17 ==.
                                    569 ;	compactflash.c:35: void cfWaitDataReady(char device)
                                    570 ;	-----------------------------------------
                                    571 ;	 function cfWaitDataReady
                                    572 ;	-----------------------------------------
      0000F6                        573 _cfWaitDataReady:
      0000F6 AF 82            [24]  574 	mov	r7,dpl
                           000096   575 	C$compactflash.c$38$1_0$17 ==.
                                    576 ;	compactflash.c:38: do
      0000F8                        577 00101$:
                           000096   578 	C$compactflash.c$40$2_0$18 ==.
                                    579 ;	compactflash.c:40: status = cfReadStatus(device);
      0000F8 8F 05            [24]  580 	mov	ar5,r7
      0000FA E4               [12]  581 	clr	a
      0000FB C4               [12]  582 	swap	a
      0000FC 54 F0            [12]  583 	anl	a,#0xf0
      0000FE CD               [12]  584 	xch	a,r5
      0000FF C4               [12]  585 	swap	a
      000100 CD               [12]  586 	xch	a,r5
      000101 6D               [12]  587 	xrl	a,r5
      000102 CD               [12]  588 	xch	a,r5
      000103 54 F0            [12]  589 	anl	a,#0xf0
      000105 CD               [12]  590 	xch	a,r5
      000106 6D               [12]  591 	xrl	a,r5
      000107 FE               [12]  592 	mov	r6,a
      000108 74 27            [12]  593 	mov	a,#0x27
      00010A 2D               [12]  594 	add	a,r5
      00010B FD               [12]  595 	mov	r5,a
      00010C 74 FF            [12]  596 	mov	a,#0xff
      00010E 3E               [12]  597 	addc	a,r6
      00010F FE               [12]  598 	mov	r6,a
      000110 8D 82            [24]  599 	mov	dpl,r5
      000112 8E 83            [24]  600 	mov	dph,r6
      000114 E0               [24]  601 	movx	a,@dptr
      000115 FE               [12]  602 	mov	r6,a
                           0000B4   603 	C$compactflash.c$42$1_0$17 ==.
                                    604 ;	compactflash.c:42: while((status & 0x88)!=0x08);
      000116 53 06 88         [24]  605 	anl	ar6,#0x88
      000119 7D 00            [12]  606 	mov	r5,#0x00
      00011B BE 08 DA         [24]  607 	cjne	r6,#0x08,00101$
      00011E BD 00 D7         [24]  608 	cjne	r5,#0x00,00101$
                           0000BF   609 	C$compactflash.c$43$1_0$17 ==.
                                    610 ;	compactflash.c:43: }
                           0000BF   611 	C$compactflash.c$43$1_0$17 ==.
                           0000BF   612 	XG$cfWaitDataReady$0$0 ==.
      000121 22               [24]  613 	ret
                                    614 ;------------------------------------------------------------
                                    615 ;Allocation info for local variables in function 'cfReadSector'
                                    616 ;------------------------------------------------------------
                                    617 ;buf                       Allocated to stack - _bp -5
                                    618 ;LBA                       Allocated to stack - _bp -9
                                    619 ;sectorCount               Allocated to stack - _bp -11
                                    620 ;device                    Allocated to stack - _bp +1
                                    621 ;status                    Allocated to registers r2 
                                    622 ;i                         Allocated to stack - _bp +4
                                    623 ;idx                       Allocated to stack - _bp +6
                                    624 ;sloc0                     Allocated to stack - _bp +2
                                    625 ;------------------------------------------------------------
                           0000C0   626 	G$cfReadSector$0$0 ==.
                           0000C0   627 	C$compactflash.c$45$1_0$20 ==.
                                    628 ;	compactflash.c:45: void cfReadSector(char device, char* buf, unsigned long LBA, unsigned int sectorCount)
                                    629 ;	-----------------------------------------
                                    630 ;	 function cfReadSector
                                    631 ;	-----------------------------------------
      000122                        632 _cfReadSector:
      000122 C0 08            [24]  633 	push	_bp
      000124 85 81 08         [24]  634 	mov	_bp,sp
      000127 C0 82            [24]  635 	push	dpl
      000129 E5 81            [12]  636 	mov	a,sp
      00012B 24 06            [12]  637 	add	a,#0x06
      00012D F5 81            [12]  638 	mov	sp,a
                           0000CD   639 	C$compactflash.c$53$1_0$20 ==.
                                    640 ;	compactflash.c:53: P1 = 0xe1;
      00012F 75 90 E1         [24]  641 	mov	_P1,#0xe1
                           0000D0   642 	C$compactflash.c$54$1_0$20 ==.
                                    643 ;	compactflash.c:54: cfWaitIdle(device);
      000132 A8 08            [24]  644 	mov	r0,_bp
      000134 08               [12]  645 	inc	r0
      000135 86 82            [24]  646 	mov	dpl,@r0
      000137 12 00 A7         [24]  647 	lcall	_cfWaitIdle
                           0000D8   648 	C$compactflash.c$56$1_0$20 ==.
                                    649 ;	compactflash.c:56: P1 = 0xe2;
      00013A 75 90 E2         [24]  650 	mov	_P1,#0xe2
                           0000DB   651 	C$compactflash.c$57$1_0$20 ==.
                                    652 ;	compactflash.c:57: cfWriteSectorCount(device, 0x01);
      00013D A8 08            [24]  653 	mov	r0,_bp
      00013F 08               [12]  654 	inc	r0
      000140 86 05            [24]  655 	mov	ar5,@r0
      000142 E4               [12]  656 	clr	a
      000143 CD               [12]  657 	xch	a,r5
      000144 C4               [12]  658 	swap	a
      000145 CD               [12]  659 	xch	a,r5
      000146 6D               [12]  660 	xrl	a,r5
      000147 CD               [12]  661 	xch	a,r5
      000148 54 F0            [12]  662 	anl	a,#0xf0
      00014A CD               [12]  663 	xch	a,r5
      00014B 6D               [12]  664 	xrl	a,r5
      00014C FE               [12]  665 	mov	r6,a
      00014D 74 22            [12]  666 	mov	a,#0x22
      00014F 2D               [12]  667 	add	a,r5
      000150 FB               [12]  668 	mov	r3,a
      000151 74 FF            [12]  669 	mov	a,#0xff
      000153 3E               [12]  670 	addc	a,r6
      000154 FC               [12]  671 	mov	r4,a
      000155 8B 82            [24]  672 	mov	dpl,r3
      000157 8C 83            [24]  673 	mov	dph,r4
      000159 74 01            [12]  674 	mov	a,#0x01
      00015B F0               [24]  675 	movx	@dptr,a
                           0000FA   676 	C$compactflash.c$59$1_0$20 ==.
                                    677 ;	compactflash.c:59: P1 = 0xe3;
      00015C 75 90 E3         [24]  678 	mov	_P1,#0xe3
                           0000FD   679 	C$compactflash.c$60$1_0$20 ==.
                                    680 ;	compactflash.c:60: cfWaitIdle(device);
      00015F A8 08            [24]  681 	mov	r0,_bp
      000161 08               [12]  682 	inc	r0
      000162 86 82            [24]  683 	mov	dpl,@r0
      000164 C0 06            [24]  684 	push	ar6
      000166 C0 05            [24]  685 	push	ar5
      000168 12 00 A7         [24]  686 	lcall	_cfWaitIdle
      00016B D0 05            [24]  687 	pop	ar5
      00016D D0 06            [24]  688 	pop	ar6
                           00010D   689 	C$compactflash.c$62$1_0$20 ==.
                                    690 ;	compactflash.c:62: P1 = 0xe4;
      00016F 75 90 E4         [24]  691 	mov	_P1,#0xe4
                           000110   692 	C$compactflash.c$63$1_0$20 ==.
                                    693 ;	compactflash.c:63: cfWriteLBA0(device, ((LBA   ) & 0xff) );
      000172 74 23            [12]  694 	mov	a,#0x23
      000174 2D               [12]  695 	add	a,r5
      000175 FB               [12]  696 	mov	r3,a
      000176 74 FF            [12]  697 	mov	a,#0xff
      000178 3E               [12]  698 	addc	a,r6
      000179 FC               [12]  699 	mov	r4,a
      00017A E5 08            [12]  700 	mov	a,_bp
      00017C 24 F7            [12]  701 	add	a,#0xf7
      00017E F8               [12]  702 	mov	r0,a
      00017F 86 02            [24]  703 	mov	ar2,@r0
      000181 8B 82            [24]  704 	mov	dpl,r3
      000183 8C 83            [24]  705 	mov	dph,r4
      000185 EA               [12]  706 	mov	a,r2
      000186 F0               [24]  707 	movx	@dptr,a
                           000125   708 	C$compactflash.c$65$1_0$20 ==.
                                    709 ;	compactflash.c:65: P1 = 0xe5;
      000187 75 90 E5         [24]  710 	mov	_P1,#0xe5
                           000128   711 	C$compactflash.c$66$1_0$20 ==.
                                    712 ;	compactflash.c:66: cfWaitIdle(device);
      00018A A8 08            [24]  713 	mov	r0,_bp
      00018C 08               [12]  714 	inc	r0
      00018D 86 82            [24]  715 	mov	dpl,@r0
      00018F C0 06            [24]  716 	push	ar6
      000191 C0 05            [24]  717 	push	ar5
      000193 12 00 A7         [24]  718 	lcall	_cfWaitIdle
      000196 D0 05            [24]  719 	pop	ar5
      000198 D0 06            [24]  720 	pop	ar6
                           000138   721 	C$compactflash.c$68$1_0$20 ==.
                                    722 ;	compactflash.c:68: P1 = 0xe6;
      00019A 75 90 E6         [24]  723 	mov	_P1,#0xe6
                           00013B   724 	C$compactflash.c$69$1_0$20 ==.
                                    725 ;	compactflash.c:69: cfWriteLBA1(device, ((LBA>>8) & 0xff) );
      00019D 74 24            [12]  726 	mov	a,#0x24
      00019F 2D               [12]  727 	add	a,r5
      0001A0 FB               [12]  728 	mov	r3,a
      0001A1 74 FF            [12]  729 	mov	a,#0xff
      0001A3 3E               [12]  730 	addc	a,r6
      0001A4 FC               [12]  731 	mov	r4,a
      0001A5 E5 08            [12]  732 	mov	a,_bp
      0001A7 24 F7            [12]  733 	add	a,#0xf7
      0001A9 F8               [12]  734 	mov	r0,a
      0001AA 08               [12]  735 	inc	r0
      0001AB 86 02            [24]  736 	mov	ar2,@r0
      0001AD 8B 82            [24]  737 	mov	dpl,r3
      0001AF 8C 83            [24]  738 	mov	dph,r4
      0001B1 EA               [12]  739 	mov	a,r2
      0001B2 F0               [24]  740 	movx	@dptr,a
                           000151   741 	C$compactflash.c$71$1_0$20 ==.
                                    742 ;	compactflash.c:71: P1 = 0xe7;
      0001B3 75 90 E7         [24]  743 	mov	_P1,#0xe7
                           000154   744 	C$compactflash.c$72$1_0$20 ==.
                                    745 ;	compactflash.c:72: cfWaitIdle(device);
      0001B6 A8 08            [24]  746 	mov	r0,_bp
      0001B8 08               [12]  747 	inc	r0
      0001B9 86 82            [24]  748 	mov	dpl,@r0
      0001BB C0 06            [24]  749 	push	ar6
      0001BD C0 05            [24]  750 	push	ar5
      0001BF 12 00 A7         [24]  751 	lcall	_cfWaitIdle
      0001C2 D0 05            [24]  752 	pop	ar5
      0001C4 D0 06            [24]  753 	pop	ar6
                           000164   754 	C$compactflash.c$74$1_0$20 ==.
                                    755 ;	compactflash.c:74: P1 = 0xe8;
      0001C6 75 90 E8         [24]  756 	mov	_P1,#0xe8
                           000167   757 	C$compactflash.c$75$1_0$20 ==.
                                    758 ;	compactflash.c:75: cfWriteLBA2(device, ((LBA>>16) & 0xff) );
      0001C9 74 25            [12]  759 	mov	a,#0x25
      0001CB 2D               [12]  760 	add	a,r5
      0001CC FB               [12]  761 	mov	r3,a
      0001CD 74 FF            [12]  762 	mov	a,#0xff
      0001CF 3E               [12]  763 	addc	a,r6
      0001D0 FC               [12]  764 	mov	r4,a
      0001D1 E5 08            [12]  765 	mov	a,_bp
      0001D3 24 F7            [12]  766 	add	a,#0xf7
      0001D5 F8               [12]  767 	mov	r0,a
      0001D6 08               [12]  768 	inc	r0
      0001D7 08               [12]  769 	inc	r0
      0001D8 86 02            [24]  770 	mov	ar2,@r0
      0001DA 8B 82            [24]  771 	mov	dpl,r3
      0001DC 8C 83            [24]  772 	mov	dph,r4
      0001DE EA               [12]  773 	mov	a,r2
      0001DF F0               [24]  774 	movx	@dptr,a
                           00017E   775 	C$compactflash.c$77$1_0$20 ==.
                                    776 ;	compactflash.c:77: P1 = 0xe9;
      0001E0 75 90 E9         [24]  777 	mov	_P1,#0xe9
                           000181   778 	C$compactflash.c$78$1_0$20 ==.
                                    779 ;	compactflash.c:78: cfWaitIdle(device);
      0001E3 A8 08            [24]  780 	mov	r0,_bp
      0001E5 08               [12]  781 	inc	r0
      0001E6 86 82            [24]  782 	mov	dpl,@r0
      0001E8 C0 06            [24]  783 	push	ar6
      0001EA C0 05            [24]  784 	push	ar5
      0001EC 12 00 A7         [24]  785 	lcall	_cfWaitIdle
      0001EF D0 05            [24]  786 	pop	ar5
      0001F1 D0 06            [24]  787 	pop	ar6
                           000191   788 	C$compactflash.c$80$1_0$20 ==.
                                    789 ;	compactflash.c:80: P1 = 0xea;
      0001F3 75 90 EA         [24]  790 	mov	_P1,#0xea
                           000194   791 	C$compactflash.c$81$1_0$20 ==.
                                    792 ;	compactflash.c:81: cfWriteLBA3(device, (( ((LBA>>24) & 0x1f) | 0xe0)) );
      0001F6 74 26            [12]  793 	mov	a,#0x26
      0001F8 2D               [12]  794 	add	a,r5
      0001F9 FB               [12]  795 	mov	r3,a
      0001FA 74 FF            [12]  796 	mov	a,#0xff
      0001FC 3E               [12]  797 	addc	a,r6
      0001FD FC               [12]  798 	mov	r4,a
      0001FE E5 08            [12]  799 	mov	a,_bp
      000200 24 F7            [12]  800 	add	a,#0xf7
      000202 F8               [12]  801 	mov	r0,a
      000203 08               [12]  802 	inc	r0
      000204 08               [12]  803 	inc	r0
      000205 08               [12]  804 	inc	r0
      000206 86 02            [24]  805 	mov	ar2,@r0
      000208 53 02 1F         [24]  806 	anl	ar2,#0x1f
      00020B 43 02 E0         [24]  807 	orl	ar2,#0xe0
      00020E 8B 82            [24]  808 	mov	dpl,r3
      000210 8C 83            [24]  809 	mov	dph,r4
      000212 EA               [12]  810 	mov	a,r2
      000213 F0               [24]  811 	movx	@dptr,a
                           0001B2   812 	C$compactflash.c$84$3_0$22 ==.
                                    813 ;	compactflash.c:84: while(sectorCount--)
      000214 74 27            [12]  814 	mov	a,#0x27
      000216 2D               [12]  815 	add	a,r5
      000217 FC               [12]  816 	mov	r4,a
      000218 74 FF            [12]  817 	mov	a,#0xff
      00021A 3E               [12]  818 	addc	a,r6
      00021B FF               [12]  819 	mov	r7,a
      00021C 74 20            [12]  820 	mov	a,#0x20
      00021E 2D               [12]  821 	add	a,r5
      00021F FD               [12]  822 	mov	r5,a
      000220 74 FF            [12]  823 	mov	a,#0xff
      000222 3E               [12]  824 	addc	a,r6
      000223 FE               [12]  825 	mov	r6,a
      000224 E5 08            [12]  826 	mov	a,_bp
      000226 24 06            [12]  827 	add	a,#0x06
      000228 F8               [12]  828 	mov	r0,a
      000229 E4               [12]  829 	clr	a
      00022A F6               [12]  830 	mov	@r0,a
      00022B 08               [12]  831 	inc	r0
      00022C F6               [12]  832 	mov	@r0,a
      00022D E5 08            [12]  833 	mov	a,_bp
      00022F 24 F5            [12]  834 	add	a,#0xf5
      000231 F8               [12]  835 	mov	r0,a
      000232 A9 08            [24]  836 	mov	r1,_bp
      000234 09               [12]  837 	inc	r1
      000235 09               [12]  838 	inc	r1
      000236 E6               [12]  839 	mov	a,@r0
      000237 F7               [12]  840 	mov	@r1,a
      000238 08               [12]  841 	inc	r0
      000239 09               [12]  842 	inc	r1
      00023A E6               [12]  843 	mov	a,@r0
      00023B F7               [12]  844 	mov	@r1,a
      00023C                        845 00107$:
      00023C A8 08            [24]  846 	mov	r0,_bp
      00023E 08               [12]  847 	inc	r0
      00023F 08               [12]  848 	inc	r0
      000240 86 02            [24]  849 	mov	ar2,@r0
      000242 08               [12]  850 	inc	r0
      000243 86 03            [24]  851 	mov	ar3,@r0
      000245 A8 08            [24]  852 	mov	r0,_bp
      000247 08               [12]  853 	inc	r0
      000248 08               [12]  854 	inc	r0
      000249 16               [12]  855 	dec	@r0
      00024A B6 FF 02         [24]  856 	cjne	@r0,#0xff,00134$
      00024D 08               [12]  857 	inc	r0
      00024E 16               [12]  858 	dec	@r0
      00024F                        859 00134$:
      00024F EA               [12]  860 	mov	a,r2
      000250 4B               [12]  861 	orl	a,r3
      000251 70 03            [24]  862 	jnz	00135$
      000253 02 03 39         [24]  863 	ljmp	00109$
      000256                        864 00135$:
                           0001F4   865 	C$compactflash.c$86$2_0$21 ==.
                                    866 ;	compactflash.c:86: do
      000256                        867 00101$:
                           0001F4   868 	C$compactflash.c$88$3_0$22 ==.
                                    869 ;	compactflash.c:88: P1 = 0xeb;
      000256 75 90 EB         [24]  870 	mov	_P1,#0xeb
                           0001F7   871 	C$compactflash.c$89$3_0$22 ==.
                                    872 ;	compactflash.c:89: cfWaitCommandReady(device);
      000259 A8 08            [24]  873 	mov	r0,_bp
      00025B 08               [12]  874 	inc	r0
      00025C 86 82            [24]  875 	mov	dpl,@r0
      00025E C0 07            [24]  876 	push	ar7
      000260 C0 06            [24]  877 	push	ar6
      000262 C0 05            [24]  878 	push	ar5
      000264 C0 04            [24]  879 	push	ar4
      000266 12 00 CA         [24]  880 	lcall	_cfWaitCommandReady
      000269 D0 04            [24]  881 	pop	ar4
      00026B D0 05            [24]  882 	pop	ar5
      00026D D0 06            [24]  883 	pop	ar6
      00026F D0 07            [24]  884 	pop	ar7
                           00020F   885 	C$compactflash.c$91$3_0$22 ==.
                                    886 ;	compactflash.c:91: P1 = 0xec;
      000271 75 90 EC         [24]  887 	mov	_P1,#0xec
                           000212   888 	C$compactflash.c$92$3_0$22 ==.
                                    889 ;	compactflash.c:92: cfWriteCommand(device, 0x20);
      000274 8C 02            [24]  890 	mov	ar2,r4
      000276 8F 03            [24]  891 	mov	ar3,r7
      000278 8A 82            [24]  892 	mov	dpl,r2
      00027A 8B 83            [24]  893 	mov	dph,r3
      00027C 74 20            [12]  894 	mov	a,#0x20
      00027E F0               [24]  895 	movx	@dptr,a
                           00021D   896 	C$compactflash.c$94$3_0$22 ==.
                                    897 ;	compactflash.c:94: P1 = 0xed;
      00027F 75 90 ED         [24]  898 	mov	_P1,#0xed
                           000220   899 	C$compactflash.c$95$3_0$22 ==.
                                    900 ;	compactflash.c:95: cfWaitDataReady(device);
      000282 A8 08            [24]  901 	mov	r0,_bp
      000284 08               [12]  902 	inc	r0
      000285 86 82            [24]  903 	mov	dpl,@r0
      000287 C0 07            [24]  904 	push	ar7
      000289 C0 06            [24]  905 	push	ar6
      00028B C0 05            [24]  906 	push	ar5
      00028D C0 04            [24]  907 	push	ar4
      00028F C0 03            [24]  908 	push	ar3
      000291 C0 02            [24]  909 	push	ar2
      000293 12 00 F6         [24]  910 	lcall	_cfWaitDataReady
      000296 D0 02            [24]  911 	pop	ar2
      000298 D0 03            [24]  912 	pop	ar3
      00029A D0 04            [24]  913 	pop	ar4
      00029C D0 05            [24]  914 	pop	ar5
      00029E D0 06            [24]  915 	pop	ar6
      0002A0 D0 07            [24]  916 	pop	ar7
                           000240   917 	C$compactflash.c$97$3_0$22 ==.
                                    918 ;	compactflash.c:97: P1 = 0xee;
      0002A2 75 90 EE         [24]  919 	mov	_P1,#0xee
                           000243   920 	C$compactflash.c$98$3_0$22 ==.
                                    921 ;	compactflash.c:98: status = cfReadStatus(device);
      0002A5 8A 82            [24]  922 	mov	dpl,r2
      0002A7 8B 83            [24]  923 	mov	dph,r3
      0002A9 E0               [24]  924 	movx	a,@dptr
                           000248   925 	C$compactflash.c$100$3_0$22 ==.
                                    926 ;	compactflash.c:100: P1 = 0xef;
                           000248   927 	C$compactflash.c$102$2_0$21 ==.
                                    928 ;	compactflash.c:102: while((status & 0x01)!=0);
      0002AA FA               [12]  929 	mov	r2,a
      0002AB 75 90 EF         [24]  930 	mov	_P1,#0xef
      0002AE 20 E0 A5         [24]  931 	jb	acc.0,00101$
                           00024F   932 	C$compactflash.c$105$1_0$20 ==.
                                    933 ;	compactflash.c:105: while(i < CF_SECTOR_SIZE)
      0002B1 E5 08            [12]  934 	mov	a,_bp
      0002B3 24 04            [12]  935 	add	a,#0x04
      0002B5 F8               [12]  936 	mov	r0,a
      0002B6 E4               [12]  937 	clr	a
      0002B7 F6               [12]  938 	mov	@r0,a
      0002B8 08               [12]  939 	inc	r0
      0002B9 F6               [12]  940 	mov	@r0,a
      0002BA                        941 00104$:
      0002BA E5 08            [12]  942 	mov	a,_bp
      0002BC 24 04            [12]  943 	add	a,#0x04
      0002BE F8               [12]  944 	mov	r0,a
      0002BF C3               [12]  945 	clr	c
      0002C0 08               [12]  946 	inc	r0
      0002C1 E6               [12]  947 	mov	a,@r0
      0002C2 94 02            [12]  948 	subb	a,#0x02
      0002C4 50 66            [24]  949 	jnc	00106$
                           000264   950 	C$compactflash.c$107$1_0$20 ==.
                                    951 ;	compactflash.c:107: P1 = 0xf0;
      0002C6 C0 04            [24]  952 	push	ar4
      0002C8 C0 07            [24]  953 	push	ar7
      0002CA 75 90 F0         [24]  954 	mov	_P1,#0xf0
                           00026B   955 	C$compactflash.c$108$3_0$23 ==.
                                    956 ;	compactflash.c:108: cfWaitDataReady(device);
      0002CD A8 08            [24]  957 	mov	r0,_bp
      0002CF 08               [12]  958 	inc	r0
      0002D0 86 82            [24]  959 	mov	dpl,@r0
      0002D2 C0 07            [24]  960 	push	ar7
      0002D4 C0 06            [24]  961 	push	ar6
      0002D6 C0 05            [24]  962 	push	ar5
      0002D8 C0 04            [24]  963 	push	ar4
      0002DA 12 00 F6         [24]  964 	lcall	_cfWaitDataReady
      0002DD D0 04            [24]  965 	pop	ar4
      0002DF D0 05            [24]  966 	pop	ar5
      0002E1 D0 06            [24]  967 	pop	ar6
      0002E3 D0 07            [24]  968 	pop	ar7
                           000283   969 	C$compactflash.c$110$3_0$23 ==.
                                    970 ;	compactflash.c:110: P1 = 0xf1;
      0002E5 75 90 F1         [24]  971 	mov	_P1,#0xf1
                           000286   972 	C$compactflash.c$111$3_0$23 ==.
                                    973 ;	compactflash.c:111: buf[i+idx] = cfReadData(device);
      0002E8 E5 08            [12]  974 	mov	a,_bp
      0002EA 24 04            [12]  975 	add	a,#0x04
      0002EC F8               [12]  976 	mov	r0,a
      0002ED E5 08            [12]  977 	mov	a,_bp
      0002EF 24 06            [12]  978 	add	a,#0x06
      0002F1 F9               [12]  979 	mov	r1,a
      0002F2 E7               [12]  980 	mov	a,@r1
      0002F3 26               [12]  981 	add	a,@r0
      0002F4 FC               [12]  982 	mov	r4,a
      0002F5 09               [12]  983 	inc	r1
      0002F6 E7               [12]  984 	mov	a,@r1
      0002F7 08               [12]  985 	inc	r0
      0002F8 36               [12]  986 	addc	a,@r0
      0002F9 FF               [12]  987 	mov	r7,a
      0002FA E5 08            [12]  988 	mov	a,_bp
      0002FC 24 FB            [12]  989 	add	a,#0xfb
      0002FE F8               [12]  990 	mov	r0,a
      0002FF EC               [12]  991 	mov	a,r4
      000300 26               [12]  992 	add	a,@r0
      000301 FC               [12]  993 	mov	r4,a
      000302 EF               [12]  994 	mov	a,r7
      000303 08               [12]  995 	inc	r0
      000304 36               [12]  996 	addc	a,@r0
      000305 FB               [12]  997 	mov	r3,a
      000306 08               [12]  998 	inc	r0
      000307 86 07            [24]  999 	mov	ar7,@r0
      000309 8D 82            [24] 1000 	mov	dpl,r5
      00030B 8E 83            [24] 1001 	mov	dph,r6
      00030D E0               [24] 1002 	movx	a,@dptr
      00030E FA               [12] 1003 	mov	r2,a
      00030F 8C 82            [24] 1004 	mov	dpl,r4
      000311 8B 83            [24] 1005 	mov	dph,r3
      000313 8F F0            [24] 1006 	mov	b,r7
      000315 12 3C 01         [24] 1007 	lcall	__gptrput
                           0002B6  1008 	C$compactflash.c$113$3_0$23 ==.
                                   1009 ;	compactflash.c:113: i++;
      000318 E5 08            [12] 1010 	mov	a,_bp
      00031A 24 04            [12] 1011 	add	a,#0x04
      00031C F8               [12] 1012 	mov	r0,a
      00031D 06               [12] 1013 	inc	@r0
      00031E B6 00 02         [24] 1014 	cjne	@r0,#0x00,00138$
      000321 08               [12] 1015 	inc	r0
      000322 06               [12] 1016 	inc	@r0
      000323                       1017 00138$:
                           0002C1  1018 	C$compactflash.c$115$3_0$23 ==.
                                   1019 ;	compactflash.c:115: P1 = 0xf2;
      000323 75 90 F2         [24] 1020 	mov	_P1,#0xf2
      000326 D0 07            [24] 1021 	pop	ar7
      000328 D0 04            [24] 1022 	pop	ar4
      00032A 80 8E            [24] 1023 	sjmp	00104$
      00032C                       1024 00106$:
                           0002CA  1025 	C$compactflash.c$117$2_0$21 ==.
                                   1026 ;	compactflash.c:117: idx += CF_SECTOR_SIZE;
      00032C E5 08            [12] 1027 	mov	a,_bp
      00032E 24 06            [12] 1028 	add	a,#0x06
      000330 F8               [12] 1029 	mov	r0,a
      000331 74 02            [12] 1030 	mov	a,#0x02
      000333 08               [12] 1031 	inc	r0
      000334 26               [12] 1032 	add	a,@r0
      000335 F6               [12] 1033 	mov	@r0,a
      000336 02 02 3C         [24] 1034 	ljmp	00107$
      000339                       1035 00109$:
                           0002D7  1036 	C$compactflash.c$120$1_0$20 ==.
                                   1037 ;	compactflash.c:120: P1 = 0xf3;
      000339 75 90 F3         [24] 1038 	mov	_P1,#0xf3
                           0002DA  1039 	C$compactflash.c$121$1_0$20 ==.
                                   1040 ;	compactflash.c:121: }
      00033C 85 08 81         [24] 1041 	mov	sp,_bp
      00033F D0 08            [24] 1042 	pop	_bp
                           0002DF  1043 	C$compactflash.c$121$1_0$20 ==.
                           0002DF  1044 	XG$cfReadSector$0$0 ==.
      000341 22               [24] 1045 	ret
                                   1046 ;------------------------------------------------------------
                                   1047 ;Allocation info for local variables in function 'cfWriteSector'
                                   1048 ;------------------------------------------------------------
                                   1049 ;buf                       Allocated to stack - _bp -5
                                   1050 ;LBA                       Allocated to stack - _bp -9
                                   1051 ;sectorCount               Allocated to stack - _bp -11
                                   1052 ;device                    Allocated to stack - _bp +1
                                   1053 ;status                    Allocated to registers r2 
                                   1054 ;i                         Allocated to stack - _bp +8
                                   1055 ;idx                       Allocated to stack - _bp +6
                                   1056 ;sloc0                     Allocated to stack - _bp +2
                                   1057 ;sloc1                     Allocated to stack - _bp +4
                                   1058 ;------------------------------------------------------------
                           0002E0  1059 	G$cfWriteSector$0$0 ==.
                           0002E0  1060 	C$compactflash.c$123$1_0$25 ==.
                                   1061 ;	compactflash.c:123: void cfWriteSector(char device, const char* buf, unsigned long LBA, unsigned int sectorCount)
                                   1062 ;	-----------------------------------------
                                   1063 ;	 function cfWriteSector
                                   1064 ;	-----------------------------------------
      000342                       1065 _cfWriteSector:
      000342 C0 08            [24] 1066 	push	_bp
      000344 85 81 08         [24] 1067 	mov	_bp,sp
      000347 C0 82            [24] 1068 	push	dpl
      000349 E5 81            [12] 1069 	mov	a,sp
      00034B 24 08            [12] 1070 	add	a,#0x08
      00034D F5 81            [12] 1071 	mov	sp,a
                           0002ED  1072 	C$compactflash.c$131$1_0$25 ==.
                                   1073 ;	compactflash.c:131: P1 = 0xe1;
      00034F 75 90 E1         [24] 1074 	mov	_P1,#0xe1
                           0002F0  1075 	C$compactflash.c$132$1_0$25 ==.
                                   1076 ;	compactflash.c:132: cfWaitIdle(device);
      000352 A8 08            [24] 1077 	mov	r0,_bp
      000354 08               [12] 1078 	inc	r0
      000355 86 82            [24] 1079 	mov	dpl,@r0
      000357 12 00 A7         [24] 1080 	lcall	_cfWaitIdle
                           0002F8  1081 	C$compactflash.c$134$1_0$25 ==.
                                   1082 ;	compactflash.c:134: P1 = 0xe2;
      00035A 75 90 E2         [24] 1083 	mov	_P1,#0xe2
                           0002FB  1084 	C$compactflash.c$135$1_0$25 ==.
                                   1085 ;	compactflash.c:135: cfWriteSectorCount(device, 0x01);
      00035D A8 08            [24] 1086 	mov	r0,_bp
      00035F 08               [12] 1087 	inc	r0
      000360 86 05            [24] 1088 	mov	ar5,@r0
      000362 E4               [12] 1089 	clr	a
      000363 CD               [12] 1090 	xch	a,r5
      000364 C4               [12] 1091 	swap	a
      000365 CD               [12] 1092 	xch	a,r5
      000366 6D               [12] 1093 	xrl	a,r5
      000367 CD               [12] 1094 	xch	a,r5
      000368 54 F0            [12] 1095 	anl	a,#0xf0
      00036A CD               [12] 1096 	xch	a,r5
      00036B 6D               [12] 1097 	xrl	a,r5
      00036C FE               [12] 1098 	mov	r6,a
      00036D 74 22            [12] 1099 	mov	a,#0x22
      00036F 2D               [12] 1100 	add	a,r5
      000370 FB               [12] 1101 	mov	r3,a
      000371 74 FF            [12] 1102 	mov	a,#0xff
      000373 3E               [12] 1103 	addc	a,r6
      000374 FC               [12] 1104 	mov	r4,a
      000375 8B 82            [24] 1105 	mov	dpl,r3
      000377 8C 83            [24] 1106 	mov	dph,r4
      000379 74 01            [12] 1107 	mov	a,#0x01
      00037B F0               [24] 1108 	movx	@dptr,a
                           00031A  1109 	C$compactflash.c$137$1_0$25 ==.
                                   1110 ;	compactflash.c:137: P1 = 0xe3;
      00037C 75 90 E3         [24] 1111 	mov	_P1,#0xe3
                           00031D  1112 	C$compactflash.c$138$1_0$25 ==.
                                   1113 ;	compactflash.c:138: cfWaitIdle(device);
      00037F A8 08            [24] 1114 	mov	r0,_bp
      000381 08               [12] 1115 	inc	r0
      000382 86 82            [24] 1116 	mov	dpl,@r0
      000384 C0 06            [24] 1117 	push	ar6
      000386 C0 05            [24] 1118 	push	ar5
      000388 12 00 A7         [24] 1119 	lcall	_cfWaitIdle
      00038B D0 05            [24] 1120 	pop	ar5
      00038D D0 06            [24] 1121 	pop	ar6
                           00032D  1122 	C$compactflash.c$140$1_0$25 ==.
                                   1123 ;	compactflash.c:140: P1 = 0xe4;
      00038F 75 90 E4         [24] 1124 	mov	_P1,#0xe4
                           000330  1125 	C$compactflash.c$141$1_0$25 ==.
                                   1126 ;	compactflash.c:141: cfWriteLBA0(device, ((LBA   ) & 0xff) );
      000392 74 23            [12] 1127 	mov	a,#0x23
      000394 2D               [12] 1128 	add	a,r5
      000395 FB               [12] 1129 	mov	r3,a
      000396 74 FF            [12] 1130 	mov	a,#0xff
      000398 3E               [12] 1131 	addc	a,r6
      000399 FC               [12] 1132 	mov	r4,a
      00039A E5 08            [12] 1133 	mov	a,_bp
      00039C 24 F7            [12] 1134 	add	a,#0xf7
      00039E F8               [12] 1135 	mov	r0,a
      00039F 86 02            [24] 1136 	mov	ar2,@r0
      0003A1 8B 82            [24] 1137 	mov	dpl,r3
      0003A3 8C 83            [24] 1138 	mov	dph,r4
      0003A5 EA               [12] 1139 	mov	a,r2
      0003A6 F0               [24] 1140 	movx	@dptr,a
                           000345  1141 	C$compactflash.c$143$1_0$25 ==.
                                   1142 ;	compactflash.c:143: P1 = 0xe5;
      0003A7 75 90 E5         [24] 1143 	mov	_P1,#0xe5
                           000348  1144 	C$compactflash.c$144$1_0$25 ==.
                                   1145 ;	compactflash.c:144: cfWaitIdle(device);
      0003AA A8 08            [24] 1146 	mov	r0,_bp
      0003AC 08               [12] 1147 	inc	r0
      0003AD 86 82            [24] 1148 	mov	dpl,@r0
      0003AF C0 06            [24] 1149 	push	ar6
      0003B1 C0 05            [24] 1150 	push	ar5
      0003B3 12 00 A7         [24] 1151 	lcall	_cfWaitIdle
      0003B6 D0 05            [24] 1152 	pop	ar5
      0003B8 D0 06            [24] 1153 	pop	ar6
                           000358  1154 	C$compactflash.c$146$1_0$25 ==.
                                   1155 ;	compactflash.c:146: P1 = 0xe6;
      0003BA 75 90 E6         [24] 1156 	mov	_P1,#0xe6
                           00035B  1157 	C$compactflash.c$147$1_0$25 ==.
                                   1158 ;	compactflash.c:147: cfWriteLBA1(device, ((LBA>>8) & 0xff) );
      0003BD 74 24            [12] 1159 	mov	a,#0x24
      0003BF 2D               [12] 1160 	add	a,r5
      0003C0 FB               [12] 1161 	mov	r3,a
      0003C1 74 FF            [12] 1162 	mov	a,#0xff
      0003C3 3E               [12] 1163 	addc	a,r6
      0003C4 FC               [12] 1164 	mov	r4,a
      0003C5 E5 08            [12] 1165 	mov	a,_bp
      0003C7 24 F7            [12] 1166 	add	a,#0xf7
      0003C9 F8               [12] 1167 	mov	r0,a
      0003CA 08               [12] 1168 	inc	r0
      0003CB 86 02            [24] 1169 	mov	ar2,@r0
      0003CD 8B 82            [24] 1170 	mov	dpl,r3
      0003CF 8C 83            [24] 1171 	mov	dph,r4
      0003D1 EA               [12] 1172 	mov	a,r2
      0003D2 F0               [24] 1173 	movx	@dptr,a
                           000371  1174 	C$compactflash.c$149$1_0$25 ==.
                                   1175 ;	compactflash.c:149: P1 = 0xe7;
      0003D3 75 90 E7         [24] 1176 	mov	_P1,#0xe7
                           000374  1177 	C$compactflash.c$150$1_0$25 ==.
                                   1178 ;	compactflash.c:150: cfWaitIdle(device);
      0003D6 A8 08            [24] 1179 	mov	r0,_bp
      0003D8 08               [12] 1180 	inc	r0
      0003D9 86 82            [24] 1181 	mov	dpl,@r0
      0003DB C0 06            [24] 1182 	push	ar6
      0003DD C0 05            [24] 1183 	push	ar5
      0003DF 12 00 A7         [24] 1184 	lcall	_cfWaitIdle
      0003E2 D0 05            [24] 1185 	pop	ar5
      0003E4 D0 06            [24] 1186 	pop	ar6
                           000384  1187 	C$compactflash.c$152$1_0$25 ==.
                                   1188 ;	compactflash.c:152: P1 = 0xe8;
      0003E6 75 90 E8         [24] 1189 	mov	_P1,#0xe8
                           000387  1190 	C$compactflash.c$153$1_0$25 ==.
                                   1191 ;	compactflash.c:153: cfWriteLBA2(device, ((LBA>>16) & 0xff) );
      0003E9 74 25            [12] 1192 	mov	a,#0x25
      0003EB 2D               [12] 1193 	add	a,r5
      0003EC FB               [12] 1194 	mov	r3,a
      0003ED 74 FF            [12] 1195 	mov	a,#0xff
      0003EF 3E               [12] 1196 	addc	a,r6
      0003F0 FC               [12] 1197 	mov	r4,a
      0003F1 E5 08            [12] 1198 	mov	a,_bp
      0003F3 24 F7            [12] 1199 	add	a,#0xf7
      0003F5 F8               [12] 1200 	mov	r0,a
      0003F6 08               [12] 1201 	inc	r0
      0003F7 08               [12] 1202 	inc	r0
      0003F8 86 02            [24] 1203 	mov	ar2,@r0
      0003FA 8B 82            [24] 1204 	mov	dpl,r3
      0003FC 8C 83            [24] 1205 	mov	dph,r4
      0003FE EA               [12] 1206 	mov	a,r2
      0003FF F0               [24] 1207 	movx	@dptr,a
                           00039E  1208 	C$compactflash.c$155$1_0$25 ==.
                                   1209 ;	compactflash.c:155: P1 = 0xe9;
      000400 75 90 E9         [24] 1210 	mov	_P1,#0xe9
                           0003A1  1211 	C$compactflash.c$156$1_0$25 ==.
                                   1212 ;	compactflash.c:156: cfWaitIdle(device);
      000403 A8 08            [24] 1213 	mov	r0,_bp
      000405 08               [12] 1214 	inc	r0
      000406 86 82            [24] 1215 	mov	dpl,@r0
      000408 C0 06            [24] 1216 	push	ar6
      00040A C0 05            [24] 1217 	push	ar5
      00040C 12 00 A7         [24] 1218 	lcall	_cfWaitIdle
      00040F D0 05            [24] 1219 	pop	ar5
      000411 D0 06            [24] 1220 	pop	ar6
                           0003B1  1221 	C$compactflash.c$158$1_0$25 ==.
                                   1222 ;	compactflash.c:158: P1 = 0xea;
      000413 75 90 EA         [24] 1223 	mov	_P1,#0xea
                           0003B4  1224 	C$compactflash.c$159$1_0$25 ==.
                                   1225 ;	compactflash.c:159: cfWriteLBA3(device, (((LBA>>24) | 0xe0) & 0xff) );
      000416 74 26            [12] 1226 	mov	a,#0x26
      000418 2D               [12] 1227 	add	a,r5
      000419 FB               [12] 1228 	mov	r3,a
      00041A 74 FF            [12] 1229 	mov	a,#0xff
      00041C 3E               [12] 1230 	addc	a,r6
      00041D FC               [12] 1231 	mov	r4,a
      00041E E5 08            [12] 1232 	mov	a,_bp
      000420 24 F7            [12] 1233 	add	a,#0xf7
      000422 F8               [12] 1234 	mov	r0,a
      000423 08               [12] 1235 	inc	r0
      000424 08               [12] 1236 	inc	r0
      000425 08               [12] 1237 	inc	r0
      000426 86 02            [24] 1238 	mov	ar2,@r0
      000428 43 02 E0         [24] 1239 	orl	ar2,#0xe0
      00042B 8B 82            [24] 1240 	mov	dpl,r3
      00042D 8C 83            [24] 1241 	mov	dph,r4
      00042F EA               [12] 1242 	mov	a,r2
      000430 F0               [24] 1243 	movx	@dptr,a
                           0003CF  1244 	C$compactflash.c$162$3_0$27 ==.
                                   1245 ;	compactflash.c:162: while(sectorCount--)
      000431 74 27            [12] 1246 	mov	a,#0x27
      000433 2D               [12] 1247 	add	a,r5
      000434 FC               [12] 1248 	mov	r4,a
      000435 74 FF            [12] 1249 	mov	a,#0xff
      000437 3E               [12] 1250 	addc	a,r6
      000438 FF               [12] 1251 	mov	r7,a
      000439 74 20            [12] 1252 	mov	a,#0x20
      00043B 2D               [12] 1253 	add	a,r5
      00043C FD               [12] 1254 	mov	r5,a
      00043D 74 FF            [12] 1255 	mov	a,#0xff
      00043F 3E               [12] 1256 	addc	a,r6
      000440 FE               [12] 1257 	mov	r6,a
      000441 E5 08            [12] 1258 	mov	a,_bp
      000443 24 06            [12] 1259 	add	a,#0x06
      000445 F8               [12] 1260 	mov	r0,a
      000446 E4               [12] 1261 	clr	a
      000447 F6               [12] 1262 	mov	@r0,a
      000448 08               [12] 1263 	inc	r0
      000449 F6               [12] 1264 	mov	@r0,a
      00044A E5 08            [12] 1265 	mov	a,_bp
      00044C 24 F5            [12] 1266 	add	a,#0xf5
      00044E F8               [12] 1267 	mov	r0,a
      00044F A9 08            [24] 1268 	mov	r1,_bp
      000451 09               [12] 1269 	inc	r1
      000452 09               [12] 1270 	inc	r1
      000453 E6               [12] 1271 	mov	a,@r0
      000454 F7               [12] 1272 	mov	@r1,a
      000455 08               [12] 1273 	inc	r0
      000456 09               [12] 1274 	inc	r1
      000457 E6               [12] 1275 	mov	a,@r0
      000458 F7               [12] 1276 	mov	@r1,a
      000459                       1277 00107$:
      000459 A8 08            [24] 1278 	mov	r0,_bp
      00045B 08               [12] 1279 	inc	r0
      00045C 08               [12] 1280 	inc	r0
      00045D 86 02            [24] 1281 	mov	ar2,@r0
      00045F 08               [12] 1282 	inc	r0
      000460 86 03            [24] 1283 	mov	ar3,@r0
      000462 A8 08            [24] 1284 	mov	r0,_bp
      000464 08               [12] 1285 	inc	r0
      000465 08               [12] 1286 	inc	r0
      000466 16               [12] 1287 	dec	@r0
      000467 B6 FF 02         [24] 1288 	cjne	@r0,#0xff,00134$
      00046A 08               [12] 1289 	inc	r0
      00046B 16               [12] 1290 	dec	@r0
      00046C                       1291 00134$:
      00046C EA               [12] 1292 	mov	a,r2
      00046D 4B               [12] 1293 	orl	a,r3
      00046E 70 03            [24] 1294 	jnz	00135$
      000470 02 05 68         [24] 1295 	ljmp	00109$
      000473                       1296 00135$:
                           000411  1297 	C$compactflash.c$164$2_0$26 ==.
                                   1298 ;	compactflash.c:164: do
      000473                       1299 00101$:
                           000411  1300 	C$compactflash.c$166$3_0$27 ==.
                                   1301 ;	compactflash.c:166: P1 = 0xeb;
      000473 75 90 EB         [24] 1302 	mov	_P1,#0xeb
                           000414  1303 	C$compactflash.c$167$3_0$27 ==.
                                   1304 ;	compactflash.c:167: cfWaitCommandReady(device);
      000476 A8 08            [24] 1305 	mov	r0,_bp
      000478 08               [12] 1306 	inc	r0
      000479 86 82            [24] 1307 	mov	dpl,@r0
      00047B C0 07            [24] 1308 	push	ar7
      00047D C0 06            [24] 1309 	push	ar6
      00047F C0 05            [24] 1310 	push	ar5
      000481 C0 04            [24] 1311 	push	ar4
      000483 12 00 CA         [24] 1312 	lcall	_cfWaitCommandReady
      000486 D0 04            [24] 1313 	pop	ar4
      000488 D0 05            [24] 1314 	pop	ar5
      00048A D0 06            [24] 1315 	pop	ar6
      00048C D0 07            [24] 1316 	pop	ar7
                           00042C  1317 	C$compactflash.c$169$3_0$27 ==.
                                   1318 ;	compactflash.c:169: P1 = 0xec;
      00048E 75 90 EC         [24] 1319 	mov	_P1,#0xec
                           00042F  1320 	C$compactflash.c$170$3_0$27 ==.
                                   1321 ;	compactflash.c:170: cfWriteCommand(device, 0x30);
      000491 8C 02            [24] 1322 	mov	ar2,r4
      000493 8F 03            [24] 1323 	mov	ar3,r7
      000495 8A 82            [24] 1324 	mov	dpl,r2
      000497 8B 83            [24] 1325 	mov	dph,r3
      000499 74 30            [12] 1326 	mov	a,#0x30
      00049B F0               [24] 1327 	movx	@dptr,a
                           00043A  1328 	C$compactflash.c$172$3_0$27 ==.
                                   1329 ;	compactflash.c:172: P1 = 0xed;
      00049C 75 90 ED         [24] 1330 	mov	_P1,#0xed
                           00043D  1331 	C$compactflash.c$173$3_0$27 ==.
                                   1332 ;	compactflash.c:173: cfWaitDataReady(device);
      00049F A8 08            [24] 1333 	mov	r0,_bp
      0004A1 08               [12] 1334 	inc	r0
      0004A2 86 82            [24] 1335 	mov	dpl,@r0
      0004A4 C0 07            [24] 1336 	push	ar7
      0004A6 C0 06            [24] 1337 	push	ar6
      0004A8 C0 05            [24] 1338 	push	ar5
      0004AA C0 04            [24] 1339 	push	ar4
      0004AC C0 03            [24] 1340 	push	ar3
      0004AE C0 02            [24] 1341 	push	ar2
      0004B0 12 00 F6         [24] 1342 	lcall	_cfWaitDataReady
      0004B3 D0 02            [24] 1343 	pop	ar2
      0004B5 D0 03            [24] 1344 	pop	ar3
      0004B7 D0 04            [24] 1345 	pop	ar4
      0004B9 D0 05            [24] 1346 	pop	ar5
      0004BB D0 06            [24] 1347 	pop	ar6
      0004BD D0 07            [24] 1348 	pop	ar7
                           00045D  1349 	C$compactflash.c$175$3_0$27 ==.
                                   1350 ;	compactflash.c:175: P1 = 0xee;
      0004BF 75 90 EE         [24] 1351 	mov	_P1,#0xee
                           000460  1352 	C$compactflash.c$176$3_0$27 ==.
                                   1353 ;	compactflash.c:176: status = cfReadStatus(device);
      0004C2 8A 82            [24] 1354 	mov	dpl,r2
      0004C4 8B 83            [24] 1355 	mov	dph,r3
      0004C6 E0               [24] 1356 	movx	a,@dptr
                           000465  1357 	C$compactflash.c$178$3_0$27 ==.
                                   1358 ;	compactflash.c:178: P1 = 0xef;
                           000465  1359 	C$compactflash.c$180$2_0$26 ==.
                                   1360 ;	compactflash.c:180: while((status & 0x01)!=0);
      0004C7 FA               [12] 1361 	mov	r2,a
      0004C8 75 90 EF         [24] 1362 	mov	_P1,#0xef
      0004CB 20 E0 A5         [24] 1363 	jb	acc.0,00101$
                           00046C  1364 	C$compactflash.c$183$1_0$25 ==.
                                   1365 ;	compactflash.c:183: while(i < CF_SECTOR_SIZE)
      0004CE E5 08            [12] 1366 	mov	a,_bp
      0004D0 24 08            [12] 1367 	add	a,#0x08
      0004D2 F8               [12] 1368 	mov	r0,a
      0004D3 E4               [12] 1369 	clr	a
      0004D4 F6               [12] 1370 	mov	@r0,a
      0004D5 08               [12] 1371 	inc	r0
      0004D6 F6               [12] 1372 	mov	@r0,a
      0004D7                       1373 00104$:
      0004D7 E5 08            [12] 1374 	mov	a,_bp
      0004D9 24 08            [12] 1375 	add	a,#0x08
      0004DB F8               [12] 1376 	mov	r0,a
      0004DC C3               [12] 1377 	clr	c
      0004DD 08               [12] 1378 	inc	r0
      0004DE E6               [12] 1379 	mov	a,@r0
      0004DF 94 02            [12] 1380 	subb	a,#0x02
      0004E1 50 78            [24] 1381 	jnc	00106$
                           000481  1382 	C$compactflash.c$185$1_0$25 ==.
                                   1383 ;	compactflash.c:185: P1 = 0xf0;
      0004E3 C0 04            [24] 1384 	push	ar4
      0004E5 C0 07            [24] 1385 	push	ar7
      0004E7 75 90 F0         [24] 1386 	mov	_P1,#0xf0
                           000488  1387 	C$compactflash.c$186$3_0$28 ==.
                                   1388 ;	compactflash.c:186: cfWaitDataReady(device);
      0004EA A8 08            [24] 1389 	mov	r0,_bp
      0004EC 08               [12] 1390 	inc	r0
      0004ED 86 82            [24] 1391 	mov	dpl,@r0
      0004EF C0 07            [24] 1392 	push	ar7
      0004F1 C0 06            [24] 1393 	push	ar6
      0004F3 C0 05            [24] 1394 	push	ar5
      0004F5 C0 04            [24] 1395 	push	ar4
      0004F7 12 00 F6         [24] 1396 	lcall	_cfWaitDataReady
      0004FA D0 04            [24] 1397 	pop	ar4
      0004FC D0 05            [24] 1398 	pop	ar5
      0004FE D0 06            [24] 1399 	pop	ar6
      000500 D0 07            [24] 1400 	pop	ar7
                           0004A0  1401 	C$compactflash.c$188$3_0$28 ==.
                                   1402 ;	compactflash.c:188: P1 = 0xf1;
      000502 75 90 F1         [24] 1403 	mov	_P1,#0xf1
                           0004A3  1404 	C$compactflash.c$189$3_0$28 ==.
                                   1405 ;	compactflash.c:189: cfWriteData(device, buf[i+idx]);
      000505 E5 08            [12] 1406 	mov	a,_bp
      000507 24 04            [12] 1407 	add	a,#0x04
      000509 F8               [12] 1408 	mov	r0,a
      00050A A6 05            [24] 1409 	mov	@r0,ar5
      00050C 08               [12] 1410 	inc	r0
      00050D A6 06            [24] 1411 	mov	@r0,ar6
      00050F E5 08            [12] 1412 	mov	a,_bp
      000511 24 08            [12] 1413 	add	a,#0x08
      000513 F8               [12] 1414 	mov	r0,a
      000514 E5 08            [12] 1415 	mov	a,_bp
      000516 24 06            [12] 1416 	add	a,#0x06
      000518 F9               [12] 1417 	mov	r1,a
      000519 E7               [12] 1418 	mov	a,@r1
      00051A 26               [12] 1419 	add	a,@r0
      00051B FA               [12] 1420 	mov	r2,a
      00051C 09               [12] 1421 	inc	r1
      00051D E7               [12] 1422 	mov	a,@r1
      00051E 08               [12] 1423 	inc	r0
      00051F 36               [12] 1424 	addc	a,@r0
      000520 FB               [12] 1425 	mov	r3,a
      000521 E5 08            [12] 1426 	mov	a,_bp
      000523 24 FB            [12] 1427 	add	a,#0xfb
      000525 F8               [12] 1428 	mov	r0,a
      000526 EA               [12] 1429 	mov	a,r2
      000527 26               [12] 1430 	add	a,@r0
      000528 FA               [12] 1431 	mov	r2,a
      000529 EB               [12] 1432 	mov	a,r3
      00052A 08               [12] 1433 	inc	r0
      00052B 36               [12] 1434 	addc	a,@r0
      00052C FB               [12] 1435 	mov	r3,a
      00052D 08               [12] 1436 	inc	r0
      00052E 86 07            [24] 1437 	mov	ar7,@r0
      000530 8A 82            [24] 1438 	mov	dpl,r2
      000532 8B 83            [24] 1439 	mov	dph,r3
      000534 8F F0            [24] 1440 	mov	b,r7
      000536 12 3C C2         [24] 1441 	lcall	__gptrget
      000539 FA               [12] 1442 	mov	r2,a
      00053A E5 08            [12] 1443 	mov	a,_bp
      00053C 24 04            [12] 1444 	add	a,#0x04
      00053E F8               [12] 1445 	mov	r0,a
      00053F 86 82            [24] 1446 	mov	dpl,@r0
      000541 08               [12] 1447 	inc	r0
      000542 86 83            [24] 1448 	mov	dph,@r0
      000544 EA               [12] 1449 	mov	a,r2
      000545 F0               [24] 1450 	movx	@dptr,a
                           0004E4  1451 	C$compactflash.c$191$3_0$28 ==.
                                   1452 ;	compactflash.c:191: i++;
      000546 E5 08            [12] 1453 	mov	a,_bp
      000548 24 08            [12] 1454 	add	a,#0x08
      00054A F8               [12] 1455 	mov	r0,a
      00054B 06               [12] 1456 	inc	@r0
      00054C B6 00 02         [24] 1457 	cjne	@r0,#0x00,00138$
      00054F 08               [12] 1458 	inc	r0
      000550 06               [12] 1459 	inc	@r0
      000551                       1460 00138$:
                           0004EF  1461 	C$compactflash.c$193$3_0$28 ==.
                                   1462 ;	compactflash.c:193: P1 = 0xf2;
      000551 75 90 F2         [24] 1463 	mov	_P1,#0xf2
      000554 D0 07            [24] 1464 	pop	ar7
      000556 D0 04            [24] 1465 	pop	ar4
      000558 02 04 D7         [24] 1466 	ljmp	00104$
      00055B                       1467 00106$:
                           0004F9  1468 	C$compactflash.c$195$2_0$26 ==.
                                   1469 ;	compactflash.c:195: idx += CF_SECTOR_SIZE;
      00055B E5 08            [12] 1470 	mov	a,_bp
      00055D 24 06            [12] 1471 	add	a,#0x06
      00055F F8               [12] 1472 	mov	r0,a
      000560 74 02            [12] 1473 	mov	a,#0x02
      000562 08               [12] 1474 	inc	r0
      000563 26               [12] 1475 	add	a,@r0
      000564 F6               [12] 1476 	mov	@r0,a
      000565 02 04 59         [24] 1477 	ljmp	00107$
      000568                       1478 00109$:
                           000506  1479 	C$compactflash.c$198$1_0$25 ==.
                                   1480 ;	compactflash.c:198: P1 = 0xf3;
      000568 75 90 F3         [24] 1481 	mov	_P1,#0xf3
                           000509  1482 	C$compactflash.c$199$1_0$25 ==.
                                   1483 ;	compactflash.c:199: }
      00056B 85 08 81         [24] 1484 	mov	sp,_bp
      00056E D0 08            [24] 1485 	pop	_bp
                           00050E  1486 	C$compactflash.c$199$1_0$25 ==.
                           00050E  1487 	XG$cfWriteSector$0$0 ==.
      000570 22               [24] 1488 	ret
                                   1489 ;------------------------------------------------------------
                                   1490 ;Allocation info for local variables in function 'cfDiskGetSectorCount'
                                   1491 ;------------------------------------------------------------
                                   1492 ;device                    Allocated to registers 
                                   1493 ;------------------------------------------------------------
                           00050F  1494 	G$cfDiskGetSectorCount$0$0 ==.
                           00050F  1495 	C$compactflash.c$201$1_0$30 ==.
                                   1496 ;	compactflash.c:201: unsigned long cfDiskGetSectorCount(char device)
                                   1497 ;	-----------------------------------------
                                   1498 ;	 function cfDiskGetSectorCount
                                   1499 ;	-----------------------------------------
      000571                       1500 _cfDiskGetSectorCount:
                           00050F  1501 	C$compactflash.c$203$1_0$30 ==.
                                   1502 ;	compactflash.c:203: return 10000;
      000571 90 27 10         [24] 1503 	mov	dptr,#0x2710
      000574 E4               [12] 1504 	clr	a
      000575 F5 F0            [12] 1505 	mov	b,a
                           000515  1506 	C$compactflash.c$204$1_0$30 ==.
                                   1507 ;	compactflash.c:204: }
                           000515  1508 	C$compactflash.c$204$1_0$30 ==.
                           000515  1509 	XG$cfDiskGetSectorCount$0$0 ==.
      000577 22               [24] 1510 	ret
                                   1511 	.area CSEG    (CODE)
                                   1512 	.area CONST   (CODE)
                                   1513 	.area XINIT   (CODE)
                                   1514 	.area CABS    (ABS,CODE)
