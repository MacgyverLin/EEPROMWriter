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
                                     11 	.globl _sioTXStr
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
                                    108 	.globl _cfInit
                                    109 	.globl _cfWaitIdle
                                    110 	.globl _cfWaitCommandReady
                                    111 	.globl _cfWaitDataReady
                                    112 	.globl _cfReadSector
                                    113 	.globl _cfWriteSector
                                    114 	.globl _cfDiskGetSectorCount
                                    115 ;--------------------------------------------------------
                                    116 ; special function registers
                                    117 ;--------------------------------------------------------
                                    118 	.area RSEG    (ABS,DATA)
      000000                        119 	.org 0x0000
                           000080   120 G$P0$0_0$0 == 0x0080
                           000080   121 _P0	=	0x0080
                           000081   122 G$SP$0_0$0 == 0x0081
                           000081   123 _SP	=	0x0081
                           000082   124 G$DPL$0_0$0 == 0x0082
                           000082   125 _DPL	=	0x0082
                           000083   126 G$DPH$0_0$0 == 0x0083
                           000083   127 _DPH	=	0x0083
                           000087   128 G$PCON$0_0$0 == 0x0087
                           000087   129 _PCON	=	0x0087
                           000088   130 G$TCON$0_0$0 == 0x0088
                           000088   131 _TCON	=	0x0088
                           000089   132 G$TMOD$0_0$0 == 0x0089
                           000089   133 _TMOD	=	0x0089
                           00008A   134 G$TL0$0_0$0 == 0x008a
                           00008A   135 _TL0	=	0x008a
                           00008B   136 G$TL1$0_0$0 == 0x008b
                           00008B   137 _TL1	=	0x008b
                           00008C   138 G$TH0$0_0$0 == 0x008c
                           00008C   139 _TH0	=	0x008c
                           00008D   140 G$TH1$0_0$0 == 0x008d
                           00008D   141 _TH1	=	0x008d
                           000090   142 G$P1$0_0$0 == 0x0090
                           000090   143 _P1	=	0x0090
                           000098   144 G$SCON$0_0$0 == 0x0098
                           000098   145 _SCON	=	0x0098
                           000099   146 G$SBUF$0_0$0 == 0x0099
                           000099   147 _SBUF	=	0x0099
                           0000A0   148 G$P2$0_0$0 == 0x00a0
                           0000A0   149 _P2	=	0x00a0
                           0000A8   150 G$IE$0_0$0 == 0x00a8
                           0000A8   151 _IE	=	0x00a8
                           0000B0   152 G$P3$0_0$0 == 0x00b0
                           0000B0   153 _P3	=	0x00b0
                           0000B8   154 G$IP$0_0$0 == 0x00b8
                           0000B8   155 _IP	=	0x00b8
                           0000D0   156 G$PSW$0_0$0 == 0x00d0
                           0000D0   157 _PSW	=	0x00d0
                           0000E0   158 G$ACC$0_0$0 == 0x00e0
                           0000E0   159 _ACC	=	0x00e0
                           0000F0   160 G$B$0_0$0 == 0x00f0
                           0000F0   161 _B	=	0x00f0
                                    162 ;--------------------------------------------------------
                                    163 ; special function bits
                                    164 ;--------------------------------------------------------
                                    165 	.area RSEG    (ABS,DATA)
      000000                        166 	.org 0x0000
                           000080   167 G$P0_0$0_0$0 == 0x0080
                           000080   168 _P0_0	=	0x0080
                           000081   169 G$P0_1$0_0$0 == 0x0081
                           000081   170 _P0_1	=	0x0081
                           000082   171 G$P0_2$0_0$0 == 0x0082
                           000082   172 _P0_2	=	0x0082
                           000083   173 G$P0_3$0_0$0 == 0x0083
                           000083   174 _P0_3	=	0x0083
                           000084   175 G$P0_4$0_0$0 == 0x0084
                           000084   176 _P0_4	=	0x0084
                           000085   177 G$P0_5$0_0$0 == 0x0085
                           000085   178 _P0_5	=	0x0085
                           000086   179 G$P0_6$0_0$0 == 0x0086
                           000086   180 _P0_6	=	0x0086
                           000087   181 G$P0_7$0_0$0 == 0x0087
                           000087   182 _P0_7	=	0x0087
                           000088   183 G$IT0$0_0$0 == 0x0088
                           000088   184 _IT0	=	0x0088
                           000089   185 G$IE0$0_0$0 == 0x0089
                           000089   186 _IE0	=	0x0089
                           00008A   187 G$IT1$0_0$0 == 0x008a
                           00008A   188 _IT1	=	0x008a
                           00008B   189 G$IE1$0_0$0 == 0x008b
                           00008B   190 _IE1	=	0x008b
                           00008C   191 G$TR0$0_0$0 == 0x008c
                           00008C   192 _TR0	=	0x008c
                           00008D   193 G$TF0$0_0$0 == 0x008d
                           00008D   194 _TF0	=	0x008d
                           00008E   195 G$TR1$0_0$0 == 0x008e
                           00008E   196 _TR1	=	0x008e
                           00008F   197 G$TF1$0_0$0 == 0x008f
                           00008F   198 _TF1	=	0x008f
                           000090   199 G$P1_0$0_0$0 == 0x0090
                           000090   200 _P1_0	=	0x0090
                           000091   201 G$P1_1$0_0$0 == 0x0091
                           000091   202 _P1_1	=	0x0091
                           000092   203 G$P1_2$0_0$0 == 0x0092
                           000092   204 _P1_2	=	0x0092
                           000093   205 G$P1_3$0_0$0 == 0x0093
                           000093   206 _P1_3	=	0x0093
                           000094   207 G$P1_4$0_0$0 == 0x0094
                           000094   208 _P1_4	=	0x0094
                           000095   209 G$P1_5$0_0$0 == 0x0095
                           000095   210 _P1_5	=	0x0095
                           000096   211 G$P1_6$0_0$0 == 0x0096
                           000096   212 _P1_6	=	0x0096
                           000097   213 G$P1_7$0_0$0 == 0x0097
                           000097   214 _P1_7	=	0x0097
                           000098   215 G$RI$0_0$0 == 0x0098
                           000098   216 _RI	=	0x0098
                           000099   217 G$TI$0_0$0 == 0x0099
                           000099   218 _TI	=	0x0099
                           00009A   219 G$RB8$0_0$0 == 0x009a
                           00009A   220 _RB8	=	0x009a
                           00009B   221 G$TB8$0_0$0 == 0x009b
                           00009B   222 _TB8	=	0x009b
                           00009C   223 G$REN$0_0$0 == 0x009c
                           00009C   224 _REN	=	0x009c
                           00009D   225 G$SM2$0_0$0 == 0x009d
                           00009D   226 _SM2	=	0x009d
                           00009E   227 G$SM1$0_0$0 == 0x009e
                           00009E   228 _SM1	=	0x009e
                           00009F   229 G$SM0$0_0$0 == 0x009f
                           00009F   230 _SM0	=	0x009f
                           0000A0   231 G$P2_0$0_0$0 == 0x00a0
                           0000A0   232 _P2_0	=	0x00a0
                           0000A1   233 G$P2_1$0_0$0 == 0x00a1
                           0000A1   234 _P2_1	=	0x00a1
                           0000A2   235 G$P2_2$0_0$0 == 0x00a2
                           0000A2   236 _P2_2	=	0x00a2
                           0000A3   237 G$P2_3$0_0$0 == 0x00a3
                           0000A3   238 _P2_3	=	0x00a3
                           0000A4   239 G$P2_4$0_0$0 == 0x00a4
                           0000A4   240 _P2_4	=	0x00a4
                           0000A5   241 G$P2_5$0_0$0 == 0x00a5
                           0000A5   242 _P2_5	=	0x00a5
                           0000A6   243 G$P2_6$0_0$0 == 0x00a6
                           0000A6   244 _P2_6	=	0x00a6
                           0000A7   245 G$P2_7$0_0$0 == 0x00a7
                           0000A7   246 _P2_7	=	0x00a7
                           0000A8   247 G$EX0$0_0$0 == 0x00a8
                           0000A8   248 _EX0	=	0x00a8
                           0000A9   249 G$ET0$0_0$0 == 0x00a9
                           0000A9   250 _ET0	=	0x00a9
                           0000AA   251 G$EX1$0_0$0 == 0x00aa
                           0000AA   252 _EX1	=	0x00aa
                           0000AB   253 G$ET1$0_0$0 == 0x00ab
                           0000AB   254 _ET1	=	0x00ab
                           0000AC   255 G$ES$0_0$0 == 0x00ac
                           0000AC   256 _ES	=	0x00ac
                           0000AF   257 G$EA$0_0$0 == 0x00af
                           0000AF   258 _EA	=	0x00af
                           0000B0   259 G$P3_0$0_0$0 == 0x00b0
                           0000B0   260 _P3_0	=	0x00b0
                           0000B1   261 G$P3_1$0_0$0 == 0x00b1
                           0000B1   262 _P3_1	=	0x00b1
                           0000B2   263 G$P3_2$0_0$0 == 0x00b2
                           0000B2   264 _P3_2	=	0x00b2
                           0000B3   265 G$P3_3$0_0$0 == 0x00b3
                           0000B3   266 _P3_3	=	0x00b3
                           0000B4   267 G$P3_4$0_0$0 == 0x00b4
                           0000B4   268 _P3_4	=	0x00b4
                           0000B5   269 G$P3_5$0_0$0 == 0x00b5
                           0000B5   270 _P3_5	=	0x00b5
                           0000B6   271 G$P3_6$0_0$0 == 0x00b6
                           0000B6   272 _P3_6	=	0x00b6
                           0000B7   273 G$P3_7$0_0$0 == 0x00b7
                           0000B7   274 _P3_7	=	0x00b7
                           0000B0   275 G$RXD$0_0$0 == 0x00b0
                           0000B0   276 _RXD	=	0x00b0
                           0000B1   277 G$TXD$0_0$0 == 0x00b1
                           0000B1   278 _TXD	=	0x00b1
                           0000B2   279 G$INT0$0_0$0 == 0x00b2
                           0000B2   280 _INT0	=	0x00b2
                           0000B3   281 G$INT1$0_0$0 == 0x00b3
                           0000B3   282 _INT1	=	0x00b3
                           0000B4   283 G$T0$0_0$0 == 0x00b4
                           0000B4   284 _T0	=	0x00b4
                           0000B5   285 G$T1$0_0$0 == 0x00b5
                           0000B5   286 _T1	=	0x00b5
                           0000B6   287 G$WR$0_0$0 == 0x00b6
                           0000B6   288 _WR	=	0x00b6
                           0000B7   289 G$RD$0_0$0 == 0x00b7
                           0000B7   290 _RD	=	0x00b7
                           0000B8   291 G$PX0$0_0$0 == 0x00b8
                           0000B8   292 _PX0	=	0x00b8
                           0000B9   293 G$PT0$0_0$0 == 0x00b9
                           0000B9   294 _PT0	=	0x00b9
                           0000BA   295 G$PX1$0_0$0 == 0x00ba
                           0000BA   296 _PX1	=	0x00ba
                           0000BB   297 G$PT1$0_0$0 == 0x00bb
                           0000BB   298 _PT1	=	0x00bb
                           0000BC   299 G$PS$0_0$0 == 0x00bc
                           0000BC   300 _PS	=	0x00bc
                           0000D0   301 G$P$0_0$0 == 0x00d0
                           0000D0   302 _P	=	0x00d0
                           0000D1   303 G$F1$0_0$0 == 0x00d1
                           0000D1   304 _F1	=	0x00d1
                           0000D2   305 G$OV$0_0$0 == 0x00d2
                           0000D2   306 _OV	=	0x00d2
                           0000D3   307 G$RS0$0_0$0 == 0x00d3
                           0000D3   308 _RS0	=	0x00d3
                           0000D4   309 G$RS1$0_0$0 == 0x00d4
                           0000D4   310 _RS1	=	0x00d4
                           0000D5   311 G$F0$0_0$0 == 0x00d5
                           0000D5   312 _F0	=	0x00d5
                           0000D6   313 G$AC$0_0$0 == 0x00d6
                           0000D6   314 _AC	=	0x00d6
                           0000D7   315 G$CY$0_0$0 == 0x00d7
                           0000D7   316 _CY	=	0x00d7
                                    317 ;--------------------------------------------------------
                                    318 ; overlayable register banks
                                    319 ;--------------------------------------------------------
                                    320 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        321 	.ds 8
                                    322 ;--------------------------------------------------------
                                    323 ; internal ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area DSEG    (DATA)
                                    326 ;--------------------------------------------------------
                                    327 ; overlayable items in internal ram 
                                    328 ;--------------------------------------------------------
                                    329 ;--------------------------------------------------------
                                    330 ; indirectly addressable internal ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area ISEG    (DATA)
                                    333 ;--------------------------------------------------------
                                    334 ; absolute internal ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area IABS    (ABS,DATA)
                                    337 	.area IABS    (ABS,DATA)
                                    338 ;--------------------------------------------------------
                                    339 ; bit data
                                    340 ;--------------------------------------------------------
                                    341 	.area BSEG    (BIT)
                                    342 ;--------------------------------------------------------
                                    343 ; paged external ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area PSEG    (PAG,XDATA)
                                    346 ;--------------------------------------------------------
                                    347 ; external ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area XSEG    (XDATA)
                                    350 ;--------------------------------------------------------
                                    351 ; absolute external ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area XABS    (ABS,XDATA)
                                    354 ;--------------------------------------------------------
                                    355 ; external initialized ram data
                                    356 ;--------------------------------------------------------
                                    357 	.area XISEG   (XDATA)
                                    358 	.area HOME    (CODE)
                                    359 	.area GSINIT0 (CODE)
                                    360 	.area GSINIT1 (CODE)
                                    361 	.area GSINIT2 (CODE)
                                    362 	.area GSINIT3 (CODE)
                                    363 	.area GSINIT4 (CODE)
                                    364 	.area GSINIT5 (CODE)
                                    365 	.area GSINIT  (CODE)
                                    366 	.area GSFINAL (CODE)
                                    367 	.area CSEG    (CODE)
                                    368 ;--------------------------------------------------------
                                    369 ; global & static initialisations
                                    370 ;--------------------------------------------------------
                                    371 	.area HOME    (CODE)
                                    372 	.area GSINIT  (CODE)
                                    373 	.area GSFINAL (CODE)
                                    374 	.area GSINIT  (CODE)
                                    375 ;--------------------------------------------------------
                                    376 ; Home
                                    377 ;--------------------------------------------------------
                                    378 	.area HOME    (CODE)
                                    379 	.area HOME    (CODE)
                                    380 ;--------------------------------------------------------
                                    381 ; code
                                    382 ;--------------------------------------------------------
                                    383 	.area CSEG    (CODE)
                                    384 ;------------------------------------------------------------
                                    385 ;Allocation info for local variables in function 'cfInit'
                                    386 ;------------------------------------------------------------
                                    387 ;device                    Allocated to registers r7 
                                    388 ;------------------------------------------------------------
                           000000   389 	G$cfInit$0$0 ==.
                           000000   390 	C$compactflash.c$5$0_0$33 ==.
                                    391 ;	compactflash.c:5: void cfInit(char device)
                                    392 ;	-----------------------------------------
                                    393 ;	 function cfInit
                                    394 ;	-----------------------------------------
      000062                        395 _cfInit:
                           000007   396 	ar7 = 0x07
                           000006   397 	ar6 = 0x06
                           000005   398 	ar5 = 0x05
                           000004   399 	ar4 = 0x04
                           000003   400 	ar3 = 0x03
                           000002   401 	ar2 = 0x02
                           000001   402 	ar1 = 0x01
                           000000   403 	ar0 = 0x00
                           000000   404 	C$compactflash.c$7$1_0$33 ==.
                                    405 ;	compactflash.c:7: cfWaitIdle(device);
      000062 AF 82            [24]  406 	mov  r7,dpl
      000064 C0 07            [24]  407 	push	ar7
      000066 12 00 7D         [24]  408 	lcall	_cfWaitIdle
      000069 D0 07            [24]  409 	pop	ar7
                           000009   410 	C$compactflash.c$9$1_0$33 ==.
                                    411 ;	compactflash.c:9: cfWriteFeatures(device, 0x01); //  set 8 bit mode to features port
      00006B 90 FF 21         [24]  412 	mov	dptr,#0xff21
      00006E 74 01            [12]  413 	mov	a,#0x01
      000070 F0               [24]  414 	movx	@dptr,a
                           00000F   415 	C$compactflash.c$11$1_0$33 ==.
                                    416 ;	compactflash.c:11: cfWaitCommandReady(device);
      000071 8F 82            [24]  417 	mov	dpl,r7
      000073 12 00 85         [24]  418 	lcall	_cfWaitCommandReady
                           000014   419 	C$compactflash.c$13$1_0$33 ==.
                                    420 ;	compactflash.c:13: cfWriteCommand(device, 0xef);  // command 'set features'
      000076 90 FF 27         [24]  421 	mov	dptr,#0xff27
      000079 74 EF            [12]  422 	mov	a,#0xef
      00007B F0               [24]  423 	movx	@dptr,a
                           00001A   424 	C$compactflash.c$14$1_0$33 ==.
                                    425 ;	compactflash.c:14: }
                           00001A   426 	C$compactflash.c$14$1_0$33 ==.
                           00001A   427 	XG$cfInit$0$0 ==.
      00007C 22               [24]  428 	ret
                                    429 ;------------------------------------------------------------
                                    430 ;Allocation info for local variables in function 'cfWaitIdle'
                                    431 ;------------------------------------------------------------
                                    432 ;device                    Allocated to registers 
                                    433 ;------------------------------------------------------------
                           00001B   434 	G$cfWaitIdle$0$0 ==.
                           00001B   435 	C$compactflash.c$16$1_0$35 ==.
                                    436 ;	compactflash.c:16: void cfWaitIdle(char device)
                                    437 ;	-----------------------------------------
                                    438 ;	 function cfWaitIdle
                                    439 ;	-----------------------------------------
      00007D                        440 _cfWaitIdle:
                           00001B   441 	C$compactflash.c$18$1_0$35 ==.
                                    442 ;	compactflash.c:18: while( (cfReadStatus(device) & 0x80) != 0 );
      00007D                        443 00101$:
      00007D 90 FF 27         [24]  444 	mov	dptr,#0xff27
      000080 E0               [24]  445 	movx	a,@dptr
      000081 20 E7 F9         [24]  446 	jb	acc.7,00101$
                           000022   447 	C$compactflash.c$19$1_0$35 ==.
                                    448 ;	compactflash.c:19: }
                           000022   449 	C$compactflash.c$19$1_0$35 ==.
                           000022   450 	XG$cfWaitIdle$0$0 ==.
      000084 22               [24]  451 	ret
                                    452 ;------------------------------------------------------------
                                    453 ;Allocation info for local variables in function 'cfWaitCommandReady'
                                    454 ;------------------------------------------------------------
                                    455 ;device                    Allocated to registers 
                                    456 ;------------------------------------------------------------
                           000023   457 	G$cfWaitCommandReady$0$0 ==.
                           000023   458 	C$compactflash.c$21$1_0$37 ==.
                                    459 ;	compactflash.c:21: void cfWaitCommandReady(char device)
                                    460 ;	-----------------------------------------
                                    461 ;	 function cfWaitCommandReady
                                    462 ;	-----------------------------------------
      000085                        463 _cfWaitCommandReady:
                           000023   464 	C$compactflash.c$23$1_0$37 ==.
                                    465 ;	compactflash.c:23: while( (cfReadStatus(device) & 0xc0) != 0x40 );
      000085                        466 00101$:
      000085 90 FF 27         [24]  467 	mov	dptr,#0xff27
      000088 E0               [24]  468 	movx	a,@dptr
      000089 FF               [12]  469 	mov	r7,a
      00008A 53 07 C0         [24]  470 	anl	ar7,#0xc0
      00008D 7E 00            [12]  471 	mov	r6,#0x00
      00008F BF 40 F3         [24]  472 	cjne	r7,#0x40,00101$
      000092 BE 00 F0         [24]  473 	cjne	r6,#0x00,00101$
                           000033   474 	C$compactflash.c$24$1_0$37 ==.
                                    475 ;	compactflash.c:24: }
                           000033   476 	C$compactflash.c$24$1_0$37 ==.
                           000033   477 	XG$cfWaitCommandReady$0$0 ==.
      000095 22               [24]  478 	ret
                                    479 ;------------------------------------------------------------
                                    480 ;Allocation info for local variables in function 'cfWaitDataReady'
                                    481 ;------------------------------------------------------------
                                    482 ;device                    Allocated to registers 
                                    483 ;------------------------------------------------------------
                           000034   484 	G$cfWaitDataReady$0$0 ==.
                           000034   485 	C$compactflash.c$26$1_0$39 ==.
                                    486 ;	compactflash.c:26: void cfWaitDataReady(char device)
                                    487 ;	-----------------------------------------
                                    488 ;	 function cfWaitDataReady
                                    489 ;	-----------------------------------------
      000096                        490 _cfWaitDataReady:
                           000034   491 	C$compactflash.c$28$1_0$39 ==.
                                    492 ;	compactflash.c:28: while( (cfReadStatus(device) & 0x88) != 0x08 );
      000096                        493 00101$:
      000096 90 FF 27         [24]  494 	mov	dptr,#0xff27
      000099 E0               [24]  495 	movx	a,@dptr
      00009A FF               [12]  496 	mov	r7,a
      00009B 53 07 88         [24]  497 	anl	ar7,#0x88
      00009E 7E 00            [12]  498 	mov	r6,#0x00
      0000A0 BF 08 F3         [24]  499 	cjne	r7,#0x08,00101$
      0000A3 BE 00 F0         [24]  500 	cjne	r6,#0x00,00101$
                           000044   501 	C$compactflash.c$29$1_0$39 ==.
                                    502 ;	compactflash.c:29: }
                           000044   503 	C$compactflash.c$29$1_0$39 ==.
                           000044   504 	XG$cfWaitDataReady$0$0 ==.
      0000A6 22               [24]  505 	ret
                                    506 ;------------------------------------------------------------
                                    507 ;Allocation info for local variables in function 'cfReadSector'
                                    508 ;------------------------------------------------------------
                                    509 ;buf                       Allocated to stack - _bp -5
                                    510 ;LBA                       Allocated to stack - _bp -9
                                    511 ;sectorCount               Allocated to stack - _bp -11
                                    512 ;device                    Allocated to registers r7 
                                    513 ;status                    Allocated to registers r6 
                                    514 ;i                         Allocated to stack - _bp +1
                                    515 ;idx                       Allocated to stack - _bp +3
                                    516 ;------------------------------------------------------------
                           000045   517 	G$cfReadSector$0$0 ==.
                           000045   518 	C$compactflash.c$31$1_0$41 ==.
                                    519 ;	compactflash.c:31: void cfReadSector(char device, char* buf, unsigned long LBA, unsigned int sectorCount)
                                    520 ;	-----------------------------------------
                                    521 ;	 function cfReadSector
                                    522 ;	-----------------------------------------
      0000A7                        523 _cfReadSector:
      0000A7 C0 08            [24]  524 	push	_bp
      0000A9 E5 81            [12]  525 	mov	a,sp
      0000AB F5 08            [12]  526 	mov	_bp,a
      0000AD 24 04            [12]  527 	add	a,#0x04
      0000AF F5 81            [12]  528 	mov	sp,a
      0000B1 AF 82            [24]  529 	mov	r7,dpl
                           000051   530 	C$compactflash.c$37$1_0$41 ==.
                                    531 ;	compactflash.c:37: cfWriteSectorCount(device, 0x01);
      0000B3 90 FF 22         [24]  532 	mov	dptr,#0xff22
      0000B6 74 01            [12]  533 	mov	a,#0x01
      0000B8 F0               [24]  534 	movx	@dptr,a
                           000057   535 	C$compactflash.c$39$1_0$41 ==.
                                    536 ;	compactflash.c:39: cfWaitIdle(device);
      0000B9 8F 82            [24]  537 	mov	dpl,r7
      0000BB C0 07            [24]  538 	push	ar7
      0000BD 12 00 7D         [24]  539 	lcall	_cfWaitIdle
      0000C0 D0 07            [24]  540 	pop	ar7
                           000060   541 	C$compactflash.c$41$1_0$41 ==.
                                    542 ;	compactflash.c:41: cfWriteLBA0(device, ((LBA   ) & 0xff) );
      0000C2 E5 08            [12]  543 	mov	a,_bp
      0000C4 24 F7            [12]  544 	add	a,#0xf7
      0000C6 F8               [12]  545 	mov	r0,a
      0000C7 86 06            [24]  546 	mov	ar6,@r0
      0000C9 90 FF 23         [24]  547 	mov	dptr,#0xff23
      0000CC EE               [12]  548 	mov	a,r6
      0000CD F0               [24]  549 	movx	@dptr,a
                           00006C   550 	C$compactflash.c$43$1_0$41 ==.
                                    551 ;	compactflash.c:43: cfWaitIdle(device);
      0000CE 8F 82            [24]  552 	mov	dpl,r7
      0000D0 C0 07            [24]  553 	push	ar7
      0000D2 12 00 7D         [24]  554 	lcall	_cfWaitIdle
                           000073   555 	C$compactflash.c$45$1_0$41 ==.
                                    556 ;	compactflash.c:45: cfWriteLBA1(device, ((LBA>>8) & 0xff) );
      0000D5 E5 08            [12]  557 	mov	a,_bp
      0000D7 24 F7            [12]  558 	add	a,#0xf7
      0000D9 F8               [12]  559 	mov	r0,a
      0000DA 08               [12]  560 	inc	r0
      0000DB 86 06            [24]  561 	mov	ar6,@r0
      0000DD 90 FF 24         [24]  562 	mov	dptr,#0xff24
      0000E0 EE               [12]  563 	mov	a,r6
      0000E1 F0               [24]  564 	movx	@dptr,a
                           000080   565 	C$compactflash.c$47$1_0$41 ==.
                                    566 ;	compactflash.c:47: sioTXStr(0, "cfReadSector3\n");
      0000E2 74 19            [12]  567 	mov	a,#___str_0
      0000E4 C0 E0            [24]  568 	push	acc
      0000E6 74 3D            [12]  569 	mov	a,#(___str_0 >> 8)
      0000E8 C0 E0            [24]  570 	push	acc
      0000EA 74 80            [12]  571 	mov	a,#0x80
      0000EC C0 E0            [24]  572 	push	acc
      0000EE 75 82 00         [24]  573 	mov	dpl,#0x00
      0000F1 12 25 BD         [24]  574 	lcall	_sioTXStr
      0000F4 15 81            [12]  575 	dec	sp
      0000F6 15 81            [12]  576 	dec	sp
      0000F8 15 81            [12]  577 	dec	sp
      0000FA D0 07            [24]  578 	pop	ar7
                           00009A   579 	C$compactflash.c$48$1_0$41 ==.
                                    580 ;	compactflash.c:48: cfWaitIdle(device);
      0000FC 8F 82            [24]  581 	mov	dpl,r7
      0000FE C0 07            [24]  582 	push	ar7
      000100 12 00 7D         [24]  583 	lcall	_cfWaitIdle
      000103 D0 07            [24]  584 	pop	ar7
                           0000A3   585 	C$compactflash.c$50$1_0$41 ==.
                                    586 ;	compactflash.c:50: cfWriteLBA2(device, ((LBA>>16) & 0xff) );
      000105 E5 08            [12]  587 	mov	a,_bp
      000107 24 F7            [12]  588 	add	a,#0xf7
      000109 F8               [12]  589 	mov	r0,a
      00010A 08               [12]  590 	inc	r0
      00010B 08               [12]  591 	inc	r0
      00010C 86 06            [24]  592 	mov	ar6,@r0
      00010E 90 FF 25         [24]  593 	mov	dptr,#0xff25
      000111 EE               [12]  594 	mov	a,r6
      000112 F0               [24]  595 	movx	@dptr,a
                           0000B1   596 	C$compactflash.c$52$1_0$41 ==.
                                    597 ;	compactflash.c:52: cfWaitIdle(device);
      000113 8F 82            [24]  598 	mov	dpl,r7
      000115 C0 07            [24]  599 	push	ar7
      000117 12 00 7D         [24]  600 	lcall	_cfWaitIdle
                           0000B8   601 	C$compactflash.c$54$1_0$41 ==.
                                    602 ;	compactflash.c:54: cfWriteLBA3(device, (( ((LBA>>24) & 0x1f) | 0xe0)) );
      00011A E5 08            [12]  603 	mov	a,_bp
      00011C 24 F7            [12]  604 	add	a,#0xf7
      00011E F8               [12]  605 	mov	r0,a
      00011F 08               [12]  606 	inc	r0
      000120 08               [12]  607 	inc	r0
      000121 08               [12]  608 	inc	r0
      000122 86 06            [24]  609 	mov	ar6,@r0
      000124 53 06 1F         [24]  610 	anl	ar6,#0x1f
      000127 43 06 E0         [24]  611 	orl	ar6,#0xe0
      00012A 90 FF 26         [24]  612 	mov	dptr,#0xff26
      00012D EE               [12]  613 	mov	a,r6
      00012E F0               [24]  614 	movx	@dptr,a
                           0000CD   615 	C$compactflash.c$56$1_0$41 ==.
                                    616 ;	compactflash.c:56: sioTXStr(0, "cfReadSector4\n");
      00012F 74 28            [12]  617 	mov	a,#___str_1
      000131 C0 E0            [24]  618 	push	acc
      000133 74 3D            [12]  619 	mov	a,#(___str_1 >> 8)
      000135 C0 E0            [24]  620 	push	acc
      000137 74 80            [12]  621 	mov	a,#0x80
      000139 C0 E0            [24]  622 	push	acc
      00013B 75 82 00         [24]  623 	mov	dpl,#0x00
      00013E 12 25 BD         [24]  624 	lcall	_sioTXStr
      000141 15 81            [12]  625 	dec	sp
      000143 15 81            [12]  626 	dec	sp
      000145 15 81            [12]  627 	dec	sp
      000147 D0 07            [24]  628 	pop	ar7
                           0000E7   629 	C$compactflash.c$58$2_0$42 ==.
                                    630 ;	compactflash.c:58: while(sectorCount--)
      000149 E5 08            [12]  631 	mov	a,_bp
      00014B 24 03            [12]  632 	add	a,#0x03
      00014D F8               [12]  633 	mov	r0,a
      00014E E4               [12]  634 	clr	a
      00014F F6               [12]  635 	mov	@r0,a
      000150 08               [12]  636 	inc	r0
      000151 F6               [12]  637 	mov	@r0,a
      000152 E5 08            [12]  638 	mov	a,_bp
      000154 24 F5            [12]  639 	add	a,#0xf5
      000156 F8               [12]  640 	mov	r0,a
      000157 86 03            [24]  641 	mov	ar3,@r0
      000159 08               [12]  642 	inc	r0
      00015A 86 04            [24]  643 	mov	ar4,@r0
      00015C                        644 00107$:
      00015C 8B 02            [24]  645 	mov	ar2,r3
      00015E 8C 06            [24]  646 	mov	ar6,r4
      000160 1B               [12]  647 	dec	r3
      000161 BB FF 01         [24]  648 	cjne	r3,#0xff,00138$
      000164 1C               [12]  649 	dec	r4
      000165                        650 00138$:
      000165 EA               [12]  651 	mov	a,r2
      000166 4E               [12]  652 	orl	a,r6
      000167 70 03            [24]  653 	jnz	00139$
      000169 02 02 CE         [24]  654 	ljmp	00109$
      00016C                        655 00139$:
                           00010A   656 	C$compactflash.c$60$2_0$42 ==.
                                    657 ;	compactflash.c:60: sioTXStr(0, "cfReadSector5\n");
      00016C C0 07            [24]  658 	push	ar7
      00016E C0 04            [24]  659 	push	ar4
      000170 C0 03            [24]  660 	push	ar3
      000172 74 37            [12]  661 	mov	a,#___str_2
      000174 C0 E0            [24]  662 	push	acc
      000176 74 3D            [12]  663 	mov	a,#(___str_2 >> 8)
      000178 C0 E0            [24]  664 	push	acc
      00017A 74 80            [12]  665 	mov	a,#0x80
      00017C C0 E0            [24]  666 	push	acc
      00017E 75 82 00         [24]  667 	mov	dpl,#0x00
      000181 12 25 BD         [24]  668 	lcall	_sioTXStr
      000184 15 81            [12]  669 	dec	sp
      000186 15 81            [12]  670 	dec	sp
      000188 15 81            [12]  671 	dec	sp
      00018A D0 03            [24]  672 	pop	ar3
      00018C D0 04            [24]  673 	pop	ar4
      00018E D0 07            [24]  674 	pop	ar7
                           00012E   675 	C$compactflash.c$61$2_0$42 ==.
                                    676 ;	compactflash.c:61: do
      000190                        677 00101$:
                           00012E   678 	C$compactflash.c$63$3_0$43 ==.
                                    679 ;	compactflash.c:63: sioTXStr(0, "cfReadSector7\n");
      000190 C0 07            [24]  680 	push	ar7
      000192 C0 04            [24]  681 	push	ar4
      000194 C0 03            [24]  682 	push	ar3
      000196 74 46            [12]  683 	mov	a,#___str_3
      000198 C0 E0            [24]  684 	push	acc
      00019A 74 3D            [12]  685 	mov	a,#(___str_3 >> 8)
      00019C C0 E0            [24]  686 	push	acc
      00019E 74 80            [12]  687 	mov	a,#0x80
      0001A0 C0 E0            [24]  688 	push	acc
      0001A2 75 82 00         [24]  689 	mov	dpl,#0x00
      0001A5 12 25 BD         [24]  690 	lcall	_sioTXStr
      0001A8 15 81            [12]  691 	dec	sp
      0001AA 15 81            [12]  692 	dec	sp
      0001AC 15 81            [12]  693 	dec	sp
      0001AE D0 03            [24]  694 	pop	ar3
      0001B0 D0 04            [24]  695 	pop	ar4
      0001B2 D0 07            [24]  696 	pop	ar7
                           000152   697 	C$compactflash.c$64$3_0$43 ==.
                                    698 ;	compactflash.c:64: cfWaitCommandReady(device);
      0001B4 8F 82            [24]  699 	mov	dpl,r7
      0001B6 C0 07            [24]  700 	push	ar7
      0001B8 C0 04            [24]  701 	push	ar4
      0001BA C0 03            [24]  702 	push	ar3
      0001BC 12 00 85         [24]  703 	lcall	_cfWaitCommandReady
                           00015D   704 	C$compactflash.c$66$3_0$43 ==.
                                    705 ;	compactflash.c:66: sioTXStr(0, "cfReadSector8\n");
      0001BF 74 55            [12]  706 	mov	a,#___str_4
      0001C1 C0 E0            [24]  707 	push	acc
      0001C3 74 3D            [12]  708 	mov	a,#(___str_4 >> 8)
      0001C5 C0 E0            [24]  709 	push	acc
      0001C7 74 80            [12]  710 	mov	a,#0x80
      0001C9 C0 E0            [24]  711 	push	acc
      0001CB 75 82 00         [24]  712 	mov	dpl,#0x00
      0001CE 12 25 BD         [24]  713 	lcall	_sioTXStr
      0001D1 15 81            [12]  714 	dec	sp
      0001D3 15 81            [12]  715 	dec	sp
      0001D5 15 81            [12]  716 	dec	sp
                           000175   717 	C$compactflash.c$67$3_0$43 ==.
                                    718 ;	compactflash.c:67: cfWriteCommand(device, 0x20);
      0001D7 90 FF 27         [24]  719 	mov	dptr,#0xff27
      0001DA 74 20            [12]  720 	mov	a,#0x20
      0001DC F0               [24]  721 	movx	@dptr,a
                           00017B   722 	C$compactflash.c$69$3_0$43 ==.
                                    723 ;	compactflash.c:69: sioTXStr(0, "cfReadSector9\n");
      0001DD 74 64            [12]  724 	mov	a,#___str_5
      0001DF C0 E0            [24]  725 	push	acc
      0001E1 74 3D            [12]  726 	mov	a,#(___str_5 >> 8)
      0001E3 C0 E0            [24]  727 	push	acc
      0001E5 74 80            [12]  728 	mov	a,#0x80
      0001E7 C0 E0            [24]  729 	push	acc
      0001E9 75 82 00         [24]  730 	mov	dpl,#0x00
      0001EC 12 25 BD         [24]  731 	lcall	_sioTXStr
      0001EF 15 81            [12]  732 	dec	sp
      0001F1 15 81            [12]  733 	dec	sp
      0001F3 15 81            [12]  734 	dec	sp
      0001F5 D0 03            [24]  735 	pop	ar3
      0001F7 D0 04            [24]  736 	pop	ar4
      0001F9 D0 07            [24]  737 	pop	ar7
                           000199   738 	C$compactflash.c$70$3_0$43 ==.
                                    739 ;	compactflash.c:70: cfWaitDataReady(device);
      0001FB 8F 82            [24]  740 	mov	dpl,r7
      0001FD C0 07            [24]  741 	push	ar7
      0001FF C0 04            [24]  742 	push	ar4
      000201 C0 03            [24]  743 	push	ar3
      000203 12 00 96         [24]  744 	lcall	_cfWaitDataReady
      000206 D0 03            [24]  745 	pop	ar3
      000208 D0 04            [24]  746 	pop	ar4
      00020A D0 07            [24]  747 	pop	ar7
                           0001AA   748 	C$compactflash.c$72$3_0$43 ==.
                                    749 ;	compactflash.c:72: status = cfReadStatus(device);
      00020C 90 FF 27         [24]  750 	mov	dptr,#0xff27
      00020F E0               [24]  751 	movx	a,@dptr
                           0001AE   752 	C$compactflash.c$74$2_0$42 ==.
                                    753 ;	compactflash.c:74: while((status & 0x01)!=0);
      000210 FE               [12]  754 	mov	r6,a
      000211 30 E0 03         [24]  755 	jnb	acc.0,00140$
      000214 02 01 90         [24]  756 	ljmp	00101$
      000217                        757 00140$:
                           0001B5   758 	C$compactflash.c$76$2_0$42 ==.
                                    759 ;	compactflash.c:76: sioTXStr(0, "cfReadSector8\n");
      000217 C0 07            [24]  760 	push	ar7
      000219 C0 04            [24]  761 	push	ar4
      00021B C0 03            [24]  762 	push	ar3
      00021D 74 55            [12]  763 	mov	a,#___str_4
      00021F C0 E0            [24]  764 	push	acc
      000221 74 3D            [12]  765 	mov	a,#(___str_4 >> 8)
      000223 C0 E0            [24]  766 	push	acc
      000225 74 80            [12]  767 	mov	a,#0x80
      000227 C0 E0            [24]  768 	push	acc
      000229 75 82 00         [24]  769 	mov	dpl,#0x00
      00022C 12 25 BD         [24]  770 	lcall	_sioTXStr
      00022F 15 81            [12]  771 	dec	sp
      000231 15 81            [12]  772 	dec	sp
      000233 15 81            [12]  773 	dec	sp
      000235 D0 03            [24]  774 	pop	ar3
      000237 D0 04            [24]  775 	pop	ar4
      000239 D0 07            [24]  776 	pop	ar7
                           0001D9   777 	C$compactflash.c$78$1_0$41 ==.
                                    778 ;	compactflash.c:78: while(i < CF_SECTOR_SIZE)
      00023B A8 08            [24]  779 	mov	r0,_bp
      00023D 08               [12]  780 	inc	r0
      00023E E4               [12]  781 	clr	a
      00023F F6               [12]  782 	mov	@r0,a
      000240 08               [12]  783 	inc	r0
      000241 F6               [12]  784 	mov	@r0,a
      000242                        785 00104$:
      000242 A8 08            [24]  786 	mov	r0,_bp
      000244 08               [12]  787 	inc	r0
      000245 C3               [12]  788 	clr	c
      000246 08               [12]  789 	inc	r0
      000247 E6               [12]  790 	mov	a,@r0
      000248 94 02            [12]  791 	subb	a,#0x02
      00024A 50 51            [24]  792 	jnc	00106$
                           0001EA   793 	C$compactflash.c$80$1_0$41 ==.
                                    794 ;	compactflash.c:80: cfWaitDataReady(device);
      00024C C0 03            [24]  795 	push	ar3
      00024E C0 04            [24]  796 	push	ar4
      000250 8F 82            [24]  797 	mov	dpl,r7
      000252 C0 07            [24]  798 	push	ar7
      000254 C0 04            [24]  799 	push	ar4
      000256 C0 03            [24]  800 	push	ar3
      000258 12 00 96         [24]  801 	lcall	_cfWaitDataReady
      00025B D0 03            [24]  802 	pop	ar3
      00025D D0 04            [24]  803 	pop	ar4
      00025F D0 07            [24]  804 	pop	ar7
                           0001FF   805 	C$compactflash.c$82$3_0$44 ==.
                                    806 ;	compactflash.c:82: buf[i+idx] = cfReadData(device);
      000261 A8 08            [24]  807 	mov	r0,_bp
      000263 08               [12]  808 	inc	r0
      000264 E5 08            [12]  809 	mov	a,_bp
      000266 24 03            [12]  810 	add	a,#0x03
      000268 F9               [12]  811 	mov	r1,a
      000269 E7               [12]  812 	mov	a,@r1
      00026A 26               [12]  813 	add	a,@r0
      00026B FA               [12]  814 	mov	r2,a
      00026C 09               [12]  815 	inc	r1
      00026D E7               [12]  816 	mov	a,@r1
      00026E 08               [12]  817 	inc	r0
      00026F 36               [12]  818 	addc	a,@r0
      000270 FC               [12]  819 	mov	r4,a
      000271 E5 08            [12]  820 	mov	a,_bp
      000273 24 FB            [12]  821 	add	a,#0xfb
      000275 F8               [12]  822 	mov	r0,a
      000276 EA               [12]  823 	mov	a,r2
      000277 26               [12]  824 	add	a,@r0
      000278 FA               [12]  825 	mov	r2,a
      000279 EC               [12]  826 	mov	a,r4
      00027A 08               [12]  827 	inc	r0
      00027B 36               [12]  828 	addc	a,@r0
      00027C FC               [12]  829 	mov	r4,a
      00027D 08               [12]  830 	inc	r0
      00027E 86 03            [24]  831 	mov	ar3,@r0
      000280 90 FF 20         [24]  832 	mov	dptr,#0xff20
      000283 E0               [24]  833 	movx	a,@dptr
      000284 FE               [12]  834 	mov	r6,a
      000285 8A 82            [24]  835 	mov	dpl,r2
      000287 8C 83            [24]  836 	mov	dph,r4
      000289 8B F0            [24]  837 	mov	b,r3
      00028B 12 3A 73         [24]  838 	lcall	__gptrput
                           00022C   839 	C$compactflash.c$84$3_0$44 ==.
                                    840 ;	compactflash.c:84: i++;
      00028E A8 08            [24]  841 	mov	r0,_bp
      000290 08               [12]  842 	inc	r0
      000291 06               [12]  843 	inc	@r0
      000292 B6 00 02         [24]  844 	cjne	@r0,#0x00,00142$
      000295 08               [12]  845 	inc	r0
      000296 06               [12]  846 	inc	@r0
      000297                        847 00142$:
      000297 D0 04            [24]  848 	pop	ar4
      000299 D0 03            [24]  849 	pop	ar3
      00029B 80 A5            [24]  850 	sjmp	00104$
      00029D                        851 00106$:
                           00023B   852 	C$compactflash.c$86$2_0$42 ==.
                                    853 ;	compactflash.c:86: idx += CF_SECTOR_SIZE;
      00029D E5 08            [12]  854 	mov	a,_bp
      00029F 24 03            [12]  855 	add	a,#0x03
      0002A1 F8               [12]  856 	mov	r0,a
      0002A2 74 02            [12]  857 	mov	a,#0x02
      0002A4 08               [12]  858 	inc	r0
      0002A5 26               [12]  859 	add	a,@r0
      0002A6 F6               [12]  860 	mov	@r0,a
                           000245   861 	C$compactflash.c$87$2_0$42 ==.
                                    862 ;	compactflash.c:87: sioTXStr(0, "cfReadSector9\n");
      0002A7 C0 07            [24]  863 	push	ar7
      0002A9 C0 04            [24]  864 	push	ar4
      0002AB C0 03            [24]  865 	push	ar3
      0002AD 74 64            [12]  866 	mov	a,#___str_5
      0002AF C0 E0            [24]  867 	push	acc
      0002B1 74 3D            [12]  868 	mov	a,#(___str_5 >> 8)
      0002B3 C0 E0            [24]  869 	push	acc
      0002B5 74 80            [12]  870 	mov	a,#0x80
      0002B7 C0 E0            [24]  871 	push	acc
      0002B9 75 82 00         [24]  872 	mov	dpl,#0x00
      0002BC 12 25 BD         [24]  873 	lcall	_sioTXStr
      0002BF 15 81            [12]  874 	dec	sp
      0002C1 15 81            [12]  875 	dec	sp
      0002C3 15 81            [12]  876 	dec	sp
      0002C5 D0 03            [24]  877 	pop	ar3
      0002C7 D0 04            [24]  878 	pop	ar4
      0002C9 D0 07            [24]  879 	pop	ar7
      0002CB 02 01 5C         [24]  880 	ljmp	00107$
      0002CE                        881 00109$:
                           00026C   882 	C$compactflash.c$90$1_0$41 ==.
                                    883 ;	compactflash.c:90: sioTXStr(0, "cfReadSector10\n");
      0002CE 74 73            [12]  884 	mov	a,#___str_6
      0002D0 C0 E0            [24]  885 	push	acc
      0002D2 74 3D            [12]  886 	mov	a,#(___str_6 >> 8)
      0002D4 C0 E0            [24]  887 	push	acc
      0002D6 74 80            [12]  888 	mov	a,#0x80
      0002D8 C0 E0            [24]  889 	push	acc
      0002DA 75 82 00         [24]  890 	mov	dpl,#0x00
      0002DD 12 25 BD         [24]  891 	lcall	_sioTXStr
      0002E0 15 81            [12]  892 	dec	sp
      0002E2 15 81            [12]  893 	dec	sp
      0002E4 15 81            [12]  894 	dec	sp
                           000284   895 	C$compactflash.c$91$1_0$41 ==.
                                    896 ;	compactflash.c:91: }
      0002E6 85 08 81         [24]  897 	mov	sp,_bp
      0002E9 D0 08            [24]  898 	pop	_bp
                           000289   899 	C$compactflash.c$91$1_0$41 ==.
                           000289   900 	XG$cfReadSector$0$0 ==.
      0002EB 22               [24]  901 	ret
                                    902 ;------------------------------------------------------------
                                    903 ;Allocation info for local variables in function 'cfWriteSector'
                                    904 ;------------------------------------------------------------
                                    905 ;buf                       Allocated to stack - _bp -5
                                    906 ;LBA                       Allocated to stack - _bp -9
                                    907 ;sectorCount               Allocated to stack - _bp -11
                                    908 ;device                    Allocated to registers r7 
                                    909 ;status                    Allocated to registers r6 
                                    910 ;i                         Allocated to registers r5 r6 
                                    911 ;idx                       Allocated to stack - _bp +1
                                    912 ;------------------------------------------------------------
                           00028A   913 	G$cfWriteSector$0$0 ==.
                           00028A   914 	C$compactflash.c$93$1_0$46 ==.
                                    915 ;	compactflash.c:93: void cfWriteSector(char device, const char* buf, unsigned long LBA, unsigned int sectorCount)
                                    916 ;	-----------------------------------------
                                    917 ;	 function cfWriteSector
                                    918 ;	-----------------------------------------
      0002EC                        919 _cfWriteSector:
      0002EC C0 08            [24]  920 	push	_bp
      0002EE 85 81 08         [24]  921 	mov	_bp,sp
      0002F1 05 81            [12]  922 	inc	sp
      0002F3 05 81            [12]  923 	inc	sp
                           000293   924 	C$compactflash.c$99$1_0$46 ==.
                                    925 ;	compactflash.c:99: P1 = 0xe1;
                           000293   926 	C$compactflash.c$100$1_0$46 ==.
                                    927 ;	compactflash.c:100: cfWaitIdle(device);
      0002F5 AF 82            [24]  928 	mov	r7,dpl
      0002F7 75 90 E1         [24]  929 	mov	_P1,#0xe1
      0002FA C0 07            [24]  930 	push	ar7
      0002FC 12 00 7D         [24]  931 	lcall	_cfWaitIdle
      0002FF D0 07            [24]  932 	pop	ar7
                           00029F   933 	C$compactflash.c$102$1_0$46 ==.
                                    934 ;	compactflash.c:102: P1 = 0xe2;
      000301 75 90 E2         [24]  935 	mov	_P1,#0xe2
                           0002A2   936 	C$compactflash.c$103$1_0$46 ==.
                                    937 ;	compactflash.c:103: cfWriteSectorCount(device, 0x01);
      000304 90 FF 22         [24]  938 	mov	dptr,#0xff22
      000307 74 01            [12]  939 	mov	a,#0x01
      000309 F0               [24]  940 	movx	@dptr,a
                           0002A8   941 	C$compactflash.c$105$1_0$46 ==.
                                    942 ;	compactflash.c:105: P1 = 0xe3;
      00030A 75 90 E3         [24]  943 	mov	_P1,#0xe3
                           0002AB   944 	C$compactflash.c$106$1_0$46 ==.
                                    945 ;	compactflash.c:106: cfWaitIdle(device);
      00030D 8F 82            [24]  946 	mov	dpl,r7
      00030F C0 07            [24]  947 	push	ar7
      000311 12 00 7D         [24]  948 	lcall	_cfWaitIdle
      000314 D0 07            [24]  949 	pop	ar7
                           0002B4   950 	C$compactflash.c$108$1_0$46 ==.
                                    951 ;	compactflash.c:108: P1 = 0xe4;
      000316 75 90 E4         [24]  952 	mov	_P1,#0xe4
                           0002B7   953 	C$compactflash.c$109$1_0$46 ==.
                                    954 ;	compactflash.c:109: cfWriteLBA0(device, ((LBA   ) & 0xff) );
      000319 E5 08            [12]  955 	mov	a,_bp
      00031B 24 F7            [12]  956 	add	a,#0xf7
      00031D F8               [12]  957 	mov	r0,a
      00031E 86 06            [24]  958 	mov	ar6,@r0
      000320 90 FF 23         [24]  959 	mov	dptr,#0xff23
      000323 EE               [12]  960 	mov	a,r6
      000324 F0               [24]  961 	movx	@dptr,a
                           0002C3   962 	C$compactflash.c$111$1_0$46 ==.
                                    963 ;	compactflash.c:111: P1 = 0xe5;
      000325 75 90 E5         [24]  964 	mov	_P1,#0xe5
                           0002C6   965 	C$compactflash.c$112$1_0$46 ==.
                                    966 ;	compactflash.c:112: cfWaitIdle(device);
      000328 8F 82            [24]  967 	mov	dpl,r7
      00032A C0 07            [24]  968 	push	ar7
      00032C 12 00 7D         [24]  969 	lcall	_cfWaitIdle
      00032F D0 07            [24]  970 	pop	ar7
                           0002CF   971 	C$compactflash.c$114$1_0$46 ==.
                                    972 ;	compactflash.c:114: P1 = 0xe6;
      000331 75 90 E6         [24]  973 	mov	_P1,#0xe6
                           0002D2   974 	C$compactflash.c$115$1_0$46 ==.
                                    975 ;	compactflash.c:115: cfWriteLBA1(device, ((LBA>>8) & 0xff) );
      000334 E5 08            [12]  976 	mov	a,_bp
      000336 24 F7            [12]  977 	add	a,#0xf7
      000338 F8               [12]  978 	mov	r0,a
      000339 08               [12]  979 	inc	r0
      00033A 86 06            [24]  980 	mov	ar6,@r0
      00033C 90 FF 24         [24]  981 	mov	dptr,#0xff24
      00033F EE               [12]  982 	mov	a,r6
      000340 F0               [24]  983 	movx	@dptr,a
                           0002DF   984 	C$compactflash.c$117$1_0$46 ==.
                                    985 ;	compactflash.c:117: P1 = 0xe7;
      000341 75 90 E7         [24]  986 	mov	_P1,#0xe7
                           0002E2   987 	C$compactflash.c$118$1_0$46 ==.
                                    988 ;	compactflash.c:118: cfWaitIdle(device);
      000344 8F 82            [24]  989 	mov	dpl,r7
      000346 C0 07            [24]  990 	push	ar7
      000348 12 00 7D         [24]  991 	lcall	_cfWaitIdle
      00034B D0 07            [24]  992 	pop	ar7
                           0002EB   993 	C$compactflash.c$120$1_0$46 ==.
                                    994 ;	compactflash.c:120: P1 = 0xe8;
      00034D 75 90 E8         [24]  995 	mov	_P1,#0xe8
                           0002EE   996 	C$compactflash.c$121$1_0$46 ==.
                                    997 ;	compactflash.c:121: cfWriteLBA2(device, ((LBA>>16) & 0xff) );
      000350 E5 08            [12]  998 	mov	a,_bp
      000352 24 F7            [12]  999 	add	a,#0xf7
      000354 F8               [12] 1000 	mov	r0,a
      000355 08               [12] 1001 	inc	r0
      000356 08               [12] 1002 	inc	r0
      000357 86 06            [24] 1003 	mov	ar6,@r0
      000359 90 FF 25         [24] 1004 	mov	dptr,#0xff25
      00035C EE               [12] 1005 	mov	a,r6
      00035D F0               [24] 1006 	movx	@dptr,a
                           0002FC  1007 	C$compactflash.c$123$1_0$46 ==.
                                   1008 ;	compactflash.c:123: P1 = 0xe9;
      00035E 75 90 E9         [24] 1009 	mov	_P1,#0xe9
                           0002FF  1010 	C$compactflash.c$124$1_0$46 ==.
                                   1011 ;	compactflash.c:124: cfWaitIdle(device);
      000361 8F 82            [24] 1012 	mov	dpl,r7
      000363 C0 07            [24] 1013 	push	ar7
      000365 12 00 7D         [24] 1014 	lcall	_cfWaitIdle
      000368 D0 07            [24] 1015 	pop	ar7
                           000308  1016 	C$compactflash.c$126$1_0$46 ==.
                                   1017 ;	compactflash.c:126: P1 = 0xea;
      00036A 75 90 EA         [24] 1018 	mov	_P1,#0xea
                           00030B  1019 	C$compactflash.c$127$1_0$46 ==.
                                   1020 ;	compactflash.c:127: cfWriteLBA3(device, (((LBA>>24) | 0xe0) & 0xff) );
      00036D E5 08            [12] 1021 	mov	a,_bp
      00036F 24 F7            [12] 1022 	add	a,#0xf7
      000371 F8               [12] 1023 	mov	r0,a
      000372 08               [12] 1024 	inc	r0
      000373 08               [12] 1025 	inc	r0
      000374 08               [12] 1026 	inc	r0
      000375 86 06            [24] 1027 	mov	ar6,@r0
      000377 7D 00            [12] 1028 	mov	r5,#0x00
      000379 43 06 E0         [24] 1029 	orl	ar6,#0xe0
      00037C 90 FF 26         [24] 1030 	mov	dptr,#0xff26
      00037F EE               [12] 1031 	mov	a,r6
      000380 F0               [24] 1032 	movx	@dptr,a
                           00031F  1033 	C$compactflash.c$130$1_0$46 ==.
                                   1034 ;	compactflash.c:130: while(sectorCount--)
      000381 A8 08            [24] 1035 	mov	r0,_bp
      000383 08               [12] 1036 	inc	r0
      000384 E4               [12] 1037 	clr	a
      000385 F6               [12] 1038 	mov	@r0,a
      000386 08               [12] 1039 	inc	r0
      000387 F6               [12] 1040 	mov	@r0,a
      000388 E5 08            [12] 1041 	mov	a,_bp
      00038A 24 F5            [12] 1042 	add	a,#0xf5
      00038C F8               [12] 1043 	mov	r0,a
      00038D 86 03            [24] 1044 	mov	ar3,@r0
      00038F 08               [12] 1045 	inc	r0
      000390 86 04            [24] 1046 	mov	ar4,@r0
      000392                       1047 00107$:
      000392 8B 02            [24] 1048 	mov	ar2,r3
      000394 8C 06            [24] 1049 	mov	ar6,r4
      000396 1B               [12] 1050 	dec	r3
      000397 BB FF 01         [24] 1051 	cjne	r3,#0xff,00134$
      00039A 1C               [12] 1052 	dec	r4
      00039B                       1053 00134$:
      00039B EA               [12] 1054 	mov	a,r2
      00039C 4E               [12] 1055 	orl	a,r6
      00039D 70 03            [24] 1056 	jnz	00135$
      00039F 02 04 4C         [24] 1057 	ljmp	00109$
      0003A2                       1058 00135$:
                           000340  1059 	C$compactflash.c$132$2_0$47 ==.
                                   1060 ;	compactflash.c:132: do
      0003A2                       1061 00101$:
                           000340  1062 	C$compactflash.c$134$3_0$48 ==.
                                   1063 ;	compactflash.c:134: P1 = 0xeb;
      0003A2 75 90 EB         [24] 1064 	mov	_P1,#0xeb
                           000343  1065 	C$compactflash.c$135$3_0$48 ==.
                                   1066 ;	compactflash.c:135: cfWaitCommandReady(device);
      0003A5 8F 82            [24] 1067 	mov	dpl,r7
      0003A7 C0 07            [24] 1068 	push	ar7
      0003A9 C0 04            [24] 1069 	push	ar4
      0003AB C0 03            [24] 1070 	push	ar3
      0003AD 12 00 85         [24] 1071 	lcall	_cfWaitCommandReady
      0003B0 D0 03            [24] 1072 	pop	ar3
      0003B2 D0 04            [24] 1073 	pop	ar4
      0003B4 D0 07            [24] 1074 	pop	ar7
                           000354  1075 	C$compactflash.c$137$3_0$48 ==.
                                   1076 ;	compactflash.c:137: P1 = 0xec;
      0003B6 75 90 EC         [24] 1077 	mov	_P1,#0xec
                           000357  1078 	C$compactflash.c$138$3_0$48 ==.
                                   1079 ;	compactflash.c:138: cfWriteCommand(device, 0x30);
      0003B9 90 FF 27         [24] 1080 	mov	dptr,#0xff27
      0003BC 74 30            [12] 1081 	mov	a,#0x30
      0003BE F0               [24] 1082 	movx	@dptr,a
                           00035D  1083 	C$compactflash.c$140$3_0$48 ==.
                                   1084 ;	compactflash.c:140: P1 = 0xed;
      0003BF 75 90 ED         [24] 1085 	mov	_P1,#0xed
                           000360  1086 	C$compactflash.c$141$3_0$48 ==.
                                   1087 ;	compactflash.c:141: cfWaitDataReady(device);
      0003C2 8F 82            [24] 1088 	mov	dpl,r7
      0003C4 C0 07            [24] 1089 	push	ar7
      0003C6 C0 04            [24] 1090 	push	ar4
      0003C8 C0 03            [24] 1091 	push	ar3
      0003CA 12 00 96         [24] 1092 	lcall	_cfWaitDataReady
      0003CD D0 03            [24] 1093 	pop	ar3
      0003CF D0 04            [24] 1094 	pop	ar4
      0003D1 D0 07            [24] 1095 	pop	ar7
                           000371  1096 	C$compactflash.c$143$3_0$48 ==.
                                   1097 ;	compactflash.c:143: P1 = 0xee;
      0003D3 75 90 EE         [24] 1098 	mov	_P1,#0xee
                           000374  1099 	C$compactflash.c$144$3_0$48 ==.
                                   1100 ;	compactflash.c:144: status = cfReadStatus(device);
      0003D6 90 FF 27         [24] 1101 	mov	dptr,#0xff27
      0003D9 E0               [24] 1102 	movx	a,@dptr
                           000378  1103 	C$compactflash.c$146$3_0$48 ==.
                                   1104 ;	compactflash.c:146: P1 = 0xef;
                           000378  1105 	C$compactflash.c$148$2_0$47 ==.
                                   1106 ;	compactflash.c:148: while((status & 0x01)!=0);
      0003DA 75 90 EF         [24] 1107 	mov	_P1,#0xef
      0003DD 20 E0 C2         [24] 1108 	jb	acc.0,00101$
                           00037E  1109 	C$compactflash.c$151$1_0$46 ==.
                                   1110 ;	compactflash.c:151: while(i < CF_SECTOR_SIZE)
      0003E0 7D 00            [12] 1111 	mov	r5,#0x00
      0003E2 7E 00            [12] 1112 	mov	r6,#0x00
      0003E4                       1113 00104$:
      0003E4 74 FE            [12] 1114 	mov	a,#0x100 - 0x02
      0003E6 2E               [12] 1115 	add	a,r6
      0003E7 40 58            [24] 1116 	jc	00106$
                           000387  1117 	C$compactflash.c$153$1_0$46 ==.
                                   1118 ;	compactflash.c:153: P1 = 0xf0;
      0003E9 C0 03            [24] 1119 	push	ar3
      0003EB C0 04            [24] 1120 	push	ar4
      0003ED 75 90 F0         [24] 1121 	mov	_P1,#0xf0
                           00038E  1122 	C$compactflash.c$154$3_0$49 ==.
                                   1123 ;	compactflash.c:154: cfWaitDataReady(device);
      0003F0 8F 82            [24] 1124 	mov	dpl,r7
      0003F2 C0 07            [24] 1125 	push	ar7
      0003F4 C0 06            [24] 1126 	push	ar6
      0003F6 C0 05            [24] 1127 	push	ar5
      0003F8 C0 04            [24] 1128 	push	ar4
      0003FA C0 03            [24] 1129 	push	ar3
      0003FC 12 00 96         [24] 1130 	lcall	_cfWaitDataReady
      0003FF D0 03            [24] 1131 	pop	ar3
      000401 D0 04            [24] 1132 	pop	ar4
      000403 D0 05            [24] 1133 	pop	ar5
      000405 D0 06            [24] 1134 	pop	ar6
      000407 D0 07            [24] 1135 	pop	ar7
                           0003A7  1136 	C$compactflash.c$156$3_0$49 ==.
                                   1137 ;	compactflash.c:156: P1 = 0xf1;
      000409 75 90 F1         [24] 1138 	mov	_P1,#0xf1
                           0003AA  1139 	C$compactflash.c$157$3_0$49 ==.
                                   1140 ;	compactflash.c:157: cfWriteData(device, buf[i+idx]);
      00040C A8 08            [24] 1141 	mov	r0,_bp
      00040E 08               [12] 1142 	inc	r0
      00040F E6               [12] 1143 	mov	a,@r0
      000410 2D               [12] 1144 	add	a,r5
      000411 FA               [12] 1145 	mov	r2,a
      000412 08               [12] 1146 	inc	r0
      000413 E6               [12] 1147 	mov	a,@r0
      000414 3E               [12] 1148 	addc	a,r6
      000415 FC               [12] 1149 	mov	r4,a
      000416 E5 08            [12] 1150 	mov	a,_bp
      000418 24 FB            [12] 1151 	add	a,#0xfb
      00041A F8               [12] 1152 	mov	r0,a
      00041B EA               [12] 1153 	mov	a,r2
      00041C 26               [12] 1154 	add	a,@r0
      00041D FA               [12] 1155 	mov	r2,a
      00041E EC               [12] 1156 	mov	a,r4
      00041F 08               [12] 1157 	inc	r0
      000420 36               [12] 1158 	addc	a,@r0
      000421 FC               [12] 1159 	mov	r4,a
      000422 08               [12] 1160 	inc	r0
      000423 86 03            [24] 1161 	mov	ar3,@r0
      000425 8A 82            [24] 1162 	mov	dpl,r2
      000427 8C 83            [24] 1163 	mov	dph,r4
      000429 8B F0            [24] 1164 	mov	b,r3
      00042B 12 3B 34         [24] 1165 	lcall	__gptrget
      00042E FA               [12] 1166 	mov	r2,a
      00042F 90 FF 20         [24] 1167 	mov	dptr,#0xff20
      000432 F0               [24] 1168 	movx	@dptr,a
                           0003D1  1169 	C$compactflash.c$159$3_0$49 ==.
                                   1170 ;	compactflash.c:159: i++;
      000433 0D               [12] 1171 	inc	r5
      000434 BD 00 01         [24] 1172 	cjne	r5,#0x00,00138$
      000437 0E               [12] 1173 	inc	r6
      000438                       1174 00138$:
                           0003D6  1175 	C$compactflash.c$161$3_0$49 ==.
                                   1176 ;	compactflash.c:161: P1 = 0xf2;
      000438 75 90 F2         [24] 1177 	mov	_P1,#0xf2
      00043B D0 04            [24] 1178 	pop	ar4
      00043D D0 03            [24] 1179 	pop	ar3
      00043F 80 A3            [24] 1180 	sjmp	00104$
      000441                       1181 00106$:
                           0003DF  1182 	C$compactflash.c$163$2_0$47 ==.
                                   1183 ;	compactflash.c:163: idx += CF_SECTOR_SIZE;
      000441 A8 08            [24] 1184 	mov	r0,_bp
      000443 08               [12] 1185 	inc	r0
      000444 74 02            [12] 1186 	mov	a,#0x02
      000446 08               [12] 1187 	inc	r0
      000447 26               [12] 1188 	add	a,@r0
      000448 F6               [12] 1189 	mov	@r0,a
      000449 02 03 92         [24] 1190 	ljmp	00107$
      00044C                       1191 00109$:
                           0003EA  1192 	C$compactflash.c$166$1_0$46 ==.
                                   1193 ;	compactflash.c:166: P1 = 0xf3;
      00044C 75 90 F3         [24] 1194 	mov	_P1,#0xf3
                           0003ED  1195 	C$compactflash.c$167$1_0$46 ==.
                                   1196 ;	compactflash.c:167: }
      00044F 85 08 81         [24] 1197 	mov	sp,_bp
      000452 D0 08            [24] 1198 	pop	_bp
                           0003F2  1199 	C$compactflash.c$167$1_0$46 ==.
                           0003F2  1200 	XG$cfWriteSector$0$0 ==.
      000454 22               [24] 1201 	ret
                                   1202 ;------------------------------------------------------------
                                   1203 ;Allocation info for local variables in function 'cfDiskGetSectorCount'
                                   1204 ;------------------------------------------------------------
                                   1205 ;device                    Allocated to registers 
                                   1206 ;------------------------------------------------------------
                           0003F3  1207 	G$cfDiskGetSectorCount$0$0 ==.
                           0003F3  1208 	C$compactflash.c$169$1_0$51 ==.
                                   1209 ;	compactflash.c:169: unsigned long cfDiskGetSectorCount(char device)
                                   1210 ;	-----------------------------------------
                                   1211 ;	 function cfDiskGetSectorCount
                                   1212 ;	-----------------------------------------
      000455                       1213 _cfDiskGetSectorCount:
                           0003F3  1214 	C$compactflash.c$171$1_0$51 ==.
                                   1215 ;	compactflash.c:171: return 10000;
      000455 90 27 10         [24] 1216 	mov	dptr,#0x2710
      000458 E4               [12] 1217 	clr	a
      000459 F5 F0            [12] 1218 	mov	b,a
                           0003F9  1219 	C$compactflash.c$172$1_0$51 ==.
                                   1220 ;	compactflash.c:172: }
                           0003F9  1221 	C$compactflash.c$172$1_0$51 ==.
                           0003F9  1222 	XG$cfDiskGetSectorCount$0$0 ==.
      00045B 22               [24] 1223 	ret
                                   1224 	.area CSEG    (CODE)
                                   1225 	.area CONST   (CODE)
                           000000  1226 Fcompactflash$__str_0$0_0$0 == .
      003D19                       1227 ___str_0:
      003D19 63 66 52 65 61 64 53  1228 	.ascii "cfReadSector3"
             65 63 74 6F 72 33
      003D26 0A                    1229 	.db 0x0a
      003D27 00                    1230 	.db 0x00
                           00000F  1231 Fcompactflash$__str_1$0_0$0 == .
      003D28                       1232 ___str_1:
      003D28 63 66 52 65 61 64 53  1233 	.ascii "cfReadSector4"
             65 63 74 6F 72 34
      003D35 0A                    1234 	.db 0x0a
      003D36 00                    1235 	.db 0x00
                           00001E  1236 Fcompactflash$__str_2$0_0$0 == .
      003D37                       1237 ___str_2:
      003D37 63 66 52 65 61 64 53  1238 	.ascii "cfReadSector5"
             65 63 74 6F 72 35
      003D44 0A                    1239 	.db 0x0a
      003D45 00                    1240 	.db 0x00
                           00002D  1241 Fcompactflash$__str_3$0_0$0 == .
      003D46                       1242 ___str_3:
      003D46 63 66 52 65 61 64 53  1243 	.ascii "cfReadSector7"
             65 63 74 6F 72 37
      003D53 0A                    1244 	.db 0x0a
      003D54 00                    1245 	.db 0x00
                           00003C  1246 Fcompactflash$__str_4$0_0$0 == .
      003D55                       1247 ___str_4:
      003D55 63 66 52 65 61 64 53  1248 	.ascii "cfReadSector8"
             65 63 74 6F 72 38
      003D62 0A                    1249 	.db 0x0a
      003D63 00                    1250 	.db 0x00
                           00004B  1251 Fcompactflash$__str_5$0_0$0 == .
      003D64                       1252 ___str_5:
      003D64 63 66 52 65 61 64 53  1253 	.ascii "cfReadSector9"
             65 63 74 6F 72 39
      003D71 0A                    1254 	.db 0x0a
      003D72 00                    1255 	.db 0x00
                           00005A  1256 Fcompactflash$__str_6$0_0$0 == .
      003D73                       1257 ___str_6:
      003D73 63 66 52 65 61 64 53  1258 	.ascii "cfReadSector10"
             65 63 74 6F 72 31 30
      003D81 0A                    1259 	.db 0x0a
      003D82 00                    1260 	.db 0x00
                                   1261 	.area XINIT   (CODE)
                                   1262 	.area CABS    (ABS,CODE)
