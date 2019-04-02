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
      000066 12 00 7D         [24]  407 	lcall	_cfWaitIdle
      000069 D0 07            [24]  408 	pop	ar7
                           000009   409 	C$compactflash.c$7$1_0$9 ==.
                                    410 ;	compactflash.c:7: cfWriteFeatures(device, 0x01); //  set 8 bit mode to features port
      00006B 90 FF 21         [24]  411 	mov	dptr,#0xff21
      00006E 74 01            [12]  412 	mov	a,#0x01
      000070 F0               [24]  413 	movx	@dptr,a
                           00000F   414 	C$compactflash.c$9$1_0$9 ==.
                                    415 ;	compactflash.c:9: cfWaitIdle(device);
      000071 8F 82            [24]  416 	mov	dpl,r7
      000073 12 00 7D         [24]  417 	lcall	_cfWaitIdle
                           000014   418 	C$compactflash.c$11$1_0$9 ==.
                                    419 ;	compactflash.c:11: cfWriteCommand(device, 0xef);  // command 'set features'
      000076 90 FF 27         [24]  420 	mov	dptr,#0xff27
      000079 74 EF            [12]  421 	mov	a,#0xef
      00007B F0               [24]  422 	movx	@dptr,a
                           00001A   423 	C$compactflash.c$12$1_0$9 ==.
                                    424 ;	compactflash.c:12: }
                           00001A   425 	C$compactflash.c$12$1_0$9 ==.
                           00001A   426 	XG$cfInit$0$0 ==.
      00007C 22               [24]  427 	ret
                                    428 ;------------------------------------------------------------
                                    429 ;Allocation info for local variables in function 'cfWaitIdle'
                                    430 ;------------------------------------------------------------
                                    431 ;device                    Allocated to registers 
                                    432 ;status                    Allocated to registers r7 
                                    433 ;------------------------------------------------------------
                           00001B   434 	G$cfWaitIdle$0$0 ==.
                           00001B   435 	C$compactflash.c$14$1_0$11 ==.
                                    436 ;	compactflash.c:14: void cfWaitIdle(char device)
                                    437 ;	-----------------------------------------
                                    438 ;	 function cfWaitIdle
                                    439 ;	-----------------------------------------
      00007D                        440 _cfWaitIdle:
                           00001B   441 	C$compactflash.c$17$1_0$11 ==.
                                    442 ;	compactflash.c:17: do
      00007D                        443 00101$:
                           00001B   444 	C$compactflash.c$19$2_0$12 ==.
                                    445 ;	compactflash.c:19: status = cfReadStatus(device);
      00007D 90 FF 27         [24]  446 	mov	dptr,#0xff27
      000080 E0               [24]  447 	movx	a,@dptr
                           00001F   448 	C$compactflash.c$21$1_0$11 ==.
                                    449 ;	compactflash.c:21: while((status & 0x80)!=0);
      000081 20 E7 F9         [24]  450 	jb	acc.7,00101$
                           000022   451 	C$compactflash.c$22$1_0$11 ==.
                                    452 ;	compactflash.c:22: }
                           000022   453 	C$compactflash.c$22$1_0$11 ==.
                           000022   454 	XG$cfWaitIdle$0$0 ==.
      000084 22               [24]  455 	ret
                                    456 ;------------------------------------------------------------
                                    457 ;Allocation info for local variables in function 'cfWaitCommandReady'
                                    458 ;------------------------------------------------------------
                                    459 ;device                    Allocated to registers 
                                    460 ;status                    Allocated to registers r7 
                                    461 ;------------------------------------------------------------
                           000023   462 	G$cfWaitCommandReady$0$0 ==.
                           000023   463 	C$compactflash.c$24$1_0$14 ==.
                                    464 ;	compactflash.c:24: void cfWaitCommandReady(char device)
                                    465 ;	-----------------------------------------
                                    466 ;	 function cfWaitCommandReady
                                    467 ;	-----------------------------------------
      000085                        468 _cfWaitCommandReady:
                           000023   469 	C$compactflash.c$28$1_0$14 ==.
                                    470 ;	compactflash.c:28: do
      000085                        471 00101$:
                           000023   472 	C$compactflash.c$30$2_0$15 ==.
                                    473 ;	compactflash.c:30: status = cfReadStatus(device);
      000085 90 FF 27         [24]  474 	mov	dptr,#0xff27
      000088 E0               [24]  475 	movx	a,@dptr
      000089 FF               [12]  476 	mov	r7,a
                           000028   477 	C$compactflash.c$32$1_0$14 ==.
                                    478 ;	compactflash.c:32: while((status & 0xc0)!=0x40);
      00008A 53 07 C0         [24]  479 	anl	ar7,#0xc0
      00008D 7E 00            [12]  480 	mov	r6,#0x00
      00008F BF 40 F3         [24]  481 	cjne	r7,#0x40,00101$
      000092 BE 00 F0         [24]  482 	cjne	r6,#0x00,00101$
                           000033   483 	C$compactflash.c$33$1_0$14 ==.
                                    484 ;	compactflash.c:33: }
                           000033   485 	C$compactflash.c$33$1_0$14 ==.
                           000033   486 	XG$cfWaitCommandReady$0$0 ==.
      000095 22               [24]  487 	ret
                                    488 ;------------------------------------------------------------
                                    489 ;Allocation info for local variables in function 'cfWaitDataReady'
                                    490 ;------------------------------------------------------------
                                    491 ;device                    Allocated to registers 
                                    492 ;status                    Allocated to registers r7 
                                    493 ;------------------------------------------------------------
                           000034   494 	G$cfWaitDataReady$0$0 ==.
                           000034   495 	C$compactflash.c$35$1_0$17 ==.
                                    496 ;	compactflash.c:35: void cfWaitDataReady(char device)
                                    497 ;	-----------------------------------------
                                    498 ;	 function cfWaitDataReady
                                    499 ;	-----------------------------------------
      000096                        500 _cfWaitDataReady:
                           000034   501 	C$compactflash.c$38$1_0$17 ==.
                                    502 ;	compactflash.c:38: do
      000096                        503 00101$:
                           000034   504 	C$compactflash.c$40$2_0$18 ==.
                                    505 ;	compactflash.c:40: status = cfReadStatus(device);
      000096 90 FF 27         [24]  506 	mov	dptr,#0xff27
      000099 E0               [24]  507 	movx	a,@dptr
      00009A FF               [12]  508 	mov	r7,a
                           000039   509 	C$compactflash.c$42$1_0$17 ==.
                                    510 ;	compactflash.c:42: while((status & 0x88)!=0x08);
      00009B 53 07 88         [24]  511 	anl	ar7,#0x88
      00009E 7E 00            [12]  512 	mov	r6,#0x00
      0000A0 BF 08 F3         [24]  513 	cjne	r7,#0x08,00101$
      0000A3 BE 00 F0         [24]  514 	cjne	r6,#0x00,00101$
                           000044   515 	C$compactflash.c$43$1_0$17 ==.
                                    516 ;	compactflash.c:43: }
                           000044   517 	C$compactflash.c$43$1_0$17 ==.
                           000044   518 	XG$cfWaitDataReady$0$0 ==.
      0000A6 22               [24]  519 	ret
                                    520 ;------------------------------------------------------------
                                    521 ;Allocation info for local variables in function 'cfReadSector'
                                    522 ;------------------------------------------------------------
                                    523 ;buf                       Allocated to stack - _bp -5
                                    524 ;LBA                       Allocated to stack - _bp -9
                                    525 ;sectorCount               Allocated to stack - _bp -11
                                    526 ;device                    Allocated to registers r7 
                                    527 ;status                    Allocated to registers r6 
                                    528 ;i                         Allocated to stack - _bp +1
                                    529 ;idx                       Allocated to stack - _bp +3
                                    530 ;------------------------------------------------------------
                           000045   531 	G$cfReadSector$0$0 ==.
                           000045   532 	C$compactflash.c$45$1_0$20 ==.
                                    533 ;	compactflash.c:45: void cfReadSector(char device, char* buf, unsigned long LBA, unsigned int sectorCount)
                                    534 ;	-----------------------------------------
                                    535 ;	 function cfReadSector
                                    536 ;	-----------------------------------------
      0000A7                        537 _cfReadSector:
      0000A7 C0 08            [24]  538 	push	_bp
      0000A9 E5 81            [12]  539 	mov	a,sp
      0000AB F5 08            [12]  540 	mov	_bp,a
      0000AD 24 04            [12]  541 	add	a,#0x04
      0000AF F5 81            [12]  542 	mov	sp,a
                           00004F   543 	C$compactflash.c$53$1_0$20 ==.
                                    544 ;	compactflash.c:53: P1 = 0xe1;
                           00004F   545 	C$compactflash.c$54$1_0$20 ==.
                                    546 ;	compactflash.c:54: cfWaitIdle(device);
      0000B1 AF 82            [24]  547 	mov	r7,dpl
      0000B3 75 90 E1         [24]  548 	mov	_P1,#0xe1
      0000B6 C0 07            [24]  549 	push	ar7
      0000B8 12 00 7D         [24]  550 	lcall	_cfWaitIdle
      0000BB D0 07            [24]  551 	pop	ar7
                           00005B   552 	C$compactflash.c$56$1_0$20 ==.
                                    553 ;	compactflash.c:56: P1 = 0xe2;
      0000BD 75 90 E2         [24]  554 	mov	_P1,#0xe2
                           00005E   555 	C$compactflash.c$57$1_0$20 ==.
                                    556 ;	compactflash.c:57: cfWriteSectorCount(device, 0x01);
      0000C0 90 FF 22         [24]  557 	mov	dptr,#0xff22
      0000C3 74 01            [12]  558 	mov	a,#0x01
      0000C5 F0               [24]  559 	movx	@dptr,a
                           000064   560 	C$compactflash.c$59$1_0$20 ==.
                                    561 ;	compactflash.c:59: P1 = 0xe3;
      0000C6 75 90 E3         [24]  562 	mov	_P1,#0xe3
                           000067   563 	C$compactflash.c$60$1_0$20 ==.
                                    564 ;	compactflash.c:60: cfWaitIdle(device);
      0000C9 8F 82            [24]  565 	mov	dpl,r7
      0000CB C0 07            [24]  566 	push	ar7
      0000CD 12 00 7D         [24]  567 	lcall	_cfWaitIdle
      0000D0 D0 07            [24]  568 	pop	ar7
                           000070   569 	C$compactflash.c$62$1_0$20 ==.
                                    570 ;	compactflash.c:62: P1 = 0xe4;
      0000D2 75 90 E4         [24]  571 	mov	_P1,#0xe4
                           000073   572 	C$compactflash.c$63$1_0$20 ==.
                                    573 ;	compactflash.c:63: cfWriteLBA0(device, ((LBA   ) & 0xff) );
      0000D5 E5 08            [12]  574 	mov	a,_bp
      0000D7 24 F7            [12]  575 	add	a,#0xf7
      0000D9 F8               [12]  576 	mov	r0,a
      0000DA 86 06            [24]  577 	mov	ar6,@r0
      0000DC 90 FF 23         [24]  578 	mov	dptr,#0xff23
      0000DF EE               [12]  579 	mov	a,r6
      0000E0 F0               [24]  580 	movx	@dptr,a
                           00007F   581 	C$compactflash.c$65$1_0$20 ==.
                                    582 ;	compactflash.c:65: P1 = 0xe5;
      0000E1 75 90 E5         [24]  583 	mov	_P1,#0xe5
                           000082   584 	C$compactflash.c$66$1_0$20 ==.
                                    585 ;	compactflash.c:66: cfWaitIdle(device);
      0000E4 8F 82            [24]  586 	mov	dpl,r7
      0000E6 C0 07            [24]  587 	push	ar7
      0000E8 12 00 7D         [24]  588 	lcall	_cfWaitIdle
      0000EB D0 07            [24]  589 	pop	ar7
                           00008B   590 	C$compactflash.c$68$1_0$20 ==.
                                    591 ;	compactflash.c:68: P1 = 0xe6;
      0000ED 75 90 E6         [24]  592 	mov	_P1,#0xe6
                           00008E   593 	C$compactflash.c$69$1_0$20 ==.
                                    594 ;	compactflash.c:69: cfWriteLBA1(device, ((LBA>>8) & 0xff) );
      0000F0 E5 08            [12]  595 	mov	a,_bp
      0000F2 24 F7            [12]  596 	add	a,#0xf7
      0000F4 F8               [12]  597 	mov	r0,a
      0000F5 08               [12]  598 	inc	r0
      0000F6 86 06            [24]  599 	mov	ar6,@r0
      0000F8 90 FF 24         [24]  600 	mov	dptr,#0xff24
      0000FB EE               [12]  601 	mov	a,r6
      0000FC F0               [24]  602 	movx	@dptr,a
                           00009B   603 	C$compactflash.c$71$1_0$20 ==.
                                    604 ;	compactflash.c:71: P1 = 0xe7;
      0000FD 75 90 E7         [24]  605 	mov	_P1,#0xe7
                           00009E   606 	C$compactflash.c$72$1_0$20 ==.
                                    607 ;	compactflash.c:72: cfWaitIdle(device);
      000100 8F 82            [24]  608 	mov	dpl,r7
      000102 C0 07            [24]  609 	push	ar7
      000104 12 00 7D         [24]  610 	lcall	_cfWaitIdle
      000107 D0 07            [24]  611 	pop	ar7
                           0000A7   612 	C$compactflash.c$74$1_0$20 ==.
                                    613 ;	compactflash.c:74: P1 = 0xe8;
      000109 75 90 E8         [24]  614 	mov	_P1,#0xe8
                           0000AA   615 	C$compactflash.c$75$1_0$20 ==.
                                    616 ;	compactflash.c:75: cfWriteLBA2(device, ((LBA>>16) & 0xff) );
      00010C E5 08            [12]  617 	mov	a,_bp
      00010E 24 F7            [12]  618 	add	a,#0xf7
      000110 F8               [12]  619 	mov	r0,a
      000111 08               [12]  620 	inc	r0
      000112 08               [12]  621 	inc	r0
      000113 86 06            [24]  622 	mov	ar6,@r0
      000115 90 FF 25         [24]  623 	mov	dptr,#0xff25
      000118 EE               [12]  624 	mov	a,r6
      000119 F0               [24]  625 	movx	@dptr,a
                           0000B8   626 	C$compactflash.c$77$1_0$20 ==.
                                    627 ;	compactflash.c:77: P1 = 0xe9;
      00011A 75 90 E9         [24]  628 	mov	_P1,#0xe9
                           0000BB   629 	C$compactflash.c$78$1_0$20 ==.
                                    630 ;	compactflash.c:78: cfWaitIdle(device);
      00011D 8F 82            [24]  631 	mov	dpl,r7
      00011F C0 07            [24]  632 	push	ar7
      000121 12 00 7D         [24]  633 	lcall	_cfWaitIdle
      000124 D0 07            [24]  634 	pop	ar7
                           0000C4   635 	C$compactflash.c$80$1_0$20 ==.
                                    636 ;	compactflash.c:80: P1 = 0xea;
      000126 75 90 EA         [24]  637 	mov	_P1,#0xea
                           0000C7   638 	C$compactflash.c$81$1_0$20 ==.
                                    639 ;	compactflash.c:81: cfWriteLBA3(device, (( ((LBA>>24) & 0x1f) | 0xe0)) );
      000129 E5 08            [12]  640 	mov	a,_bp
      00012B 24 F7            [12]  641 	add	a,#0xf7
      00012D F8               [12]  642 	mov	r0,a
      00012E 08               [12]  643 	inc	r0
      00012F 08               [12]  644 	inc	r0
      000130 08               [12]  645 	inc	r0
      000131 86 06            [24]  646 	mov	ar6,@r0
      000133 53 06 1F         [24]  647 	anl	ar6,#0x1f
      000136 7D 00            [12]  648 	mov	r5,#0x00
      000138 43 06 E0         [24]  649 	orl	ar6,#0xe0
      00013B 90 FF 26         [24]  650 	mov	dptr,#0xff26
      00013E EE               [12]  651 	mov	a,r6
      00013F F0               [24]  652 	movx	@dptr,a
                           0000DE   653 	C$compactflash.c$84$1_0$20 ==.
                                    654 ;	compactflash.c:84: while(sectorCount--)
      000140 E5 08            [12]  655 	mov	a,_bp
      000142 24 03            [12]  656 	add	a,#0x03
      000144 F8               [12]  657 	mov	r0,a
      000145 E4               [12]  658 	clr	a
      000146 F6               [12]  659 	mov	@r0,a
      000147 08               [12]  660 	inc	r0
      000148 F6               [12]  661 	mov	@r0,a
      000149 E5 08            [12]  662 	mov	a,_bp
      00014B 24 F5            [12]  663 	add	a,#0xf5
      00014D F8               [12]  664 	mov	r0,a
      00014E 86 03            [24]  665 	mov	ar3,@r0
      000150 08               [12]  666 	inc	r0
      000151 86 04            [24]  667 	mov	ar4,@r0
      000153                        668 00107$:
      000153 8B 02            [24]  669 	mov	ar2,r3
      000155 8C 06            [24]  670 	mov	ar6,r4
      000157 1B               [12]  671 	dec	r3
      000158 BB FF 01         [24]  672 	cjne	r3,#0xff,00134$
      00015B 1C               [12]  673 	dec	r4
      00015C                        674 00134$:
      00015C EA               [12]  675 	mov	a,r2
      00015D 4E               [12]  676 	orl	a,r6
      00015E 70 03            [24]  677 	jnz	00135$
      000160 02 02 1A         [24]  678 	ljmp	00109$
      000163                        679 00135$:
                           000101   680 	C$compactflash.c$86$2_0$21 ==.
                                    681 ;	compactflash.c:86: do
      000163                        682 00101$:
                           000101   683 	C$compactflash.c$88$3_0$22 ==.
                                    684 ;	compactflash.c:88: P1 = 0xeb;
      000163 75 90 EB         [24]  685 	mov	_P1,#0xeb
                           000104   686 	C$compactflash.c$89$3_0$22 ==.
                                    687 ;	compactflash.c:89: cfWaitCommandReady(device);
      000166 8F 82            [24]  688 	mov	dpl,r7
      000168 C0 07            [24]  689 	push	ar7
      00016A C0 04            [24]  690 	push	ar4
      00016C C0 03            [24]  691 	push	ar3
      00016E 12 00 85         [24]  692 	lcall	_cfWaitCommandReady
      000171 D0 03            [24]  693 	pop	ar3
      000173 D0 04            [24]  694 	pop	ar4
      000175 D0 07            [24]  695 	pop	ar7
                           000115   696 	C$compactflash.c$91$3_0$22 ==.
                                    697 ;	compactflash.c:91: P1 = 0xec;
      000177 75 90 EC         [24]  698 	mov	_P1,#0xec
                           000118   699 	C$compactflash.c$92$3_0$22 ==.
                                    700 ;	compactflash.c:92: cfWriteCommand(device, 0x20);
      00017A 90 FF 27         [24]  701 	mov	dptr,#0xff27
      00017D 74 20            [12]  702 	mov	a,#0x20
      00017F F0               [24]  703 	movx	@dptr,a
                           00011E   704 	C$compactflash.c$94$3_0$22 ==.
                                    705 ;	compactflash.c:94: P1 = 0xed;
      000180 75 90 ED         [24]  706 	mov	_P1,#0xed
                           000121   707 	C$compactflash.c$95$3_0$22 ==.
                                    708 ;	compactflash.c:95: cfWaitDataReady(device);
      000183 8F 82            [24]  709 	mov	dpl,r7
      000185 C0 07            [24]  710 	push	ar7
      000187 C0 04            [24]  711 	push	ar4
      000189 C0 03            [24]  712 	push	ar3
      00018B 12 00 96         [24]  713 	lcall	_cfWaitDataReady
      00018E D0 03            [24]  714 	pop	ar3
      000190 D0 04            [24]  715 	pop	ar4
      000192 D0 07            [24]  716 	pop	ar7
                           000132   717 	C$compactflash.c$97$3_0$22 ==.
                                    718 ;	compactflash.c:97: P1 = 0xee;
      000194 75 90 EE         [24]  719 	mov	_P1,#0xee
                           000135   720 	C$compactflash.c$98$3_0$22 ==.
                                    721 ;	compactflash.c:98: status = cfReadStatus(device);
      000197 90 FF 27         [24]  722 	mov	dptr,#0xff27
      00019A E0               [24]  723 	movx	a,@dptr
                           000139   724 	C$compactflash.c$100$3_0$22 ==.
                                    725 ;	compactflash.c:100: P1 = 0xef;
                           000139   726 	C$compactflash.c$102$2_0$21 ==.
                                    727 ;	compactflash.c:102: while((status & 0x01)!=0);
      00019B FE               [12]  728 	mov	r6,a
      00019C 75 90 EF         [24]  729 	mov	_P1,#0xef
      00019F 20 E0 C1         [24]  730 	jb	acc.0,00101$
                           000140   731 	C$compactflash.c$105$1_0$20 ==.
                                    732 ;	compactflash.c:105: while(i < CF_SECTOR_SIZE)
      0001A2 A8 08            [24]  733 	mov	r0,_bp
      0001A4 08               [12]  734 	inc	r0
      0001A5 E4               [12]  735 	clr	a
      0001A6 F6               [12]  736 	mov	@r0,a
      0001A7 08               [12]  737 	inc	r0
      0001A8 F6               [12]  738 	mov	@r0,a
      0001A9                        739 00104$:
      0001A9 A8 08            [24]  740 	mov	r0,_bp
      0001AB 08               [12]  741 	inc	r0
      0001AC C3               [12]  742 	clr	c
      0001AD 08               [12]  743 	inc	r0
      0001AE E6               [12]  744 	mov	a,@r0
      0001AF 94 02            [12]  745 	subb	a,#0x02
      0001B1 50 5A            [24]  746 	jnc	00106$
                           000151   747 	C$compactflash.c$107$1_0$20 ==.
                                    748 ;	compactflash.c:107: P1 = 0xf0;
      0001B3 C0 03            [24]  749 	push	ar3
      0001B5 C0 04            [24]  750 	push	ar4
      0001B7 75 90 F0         [24]  751 	mov	_P1,#0xf0
                           000158   752 	C$compactflash.c$108$3_0$23 ==.
                                    753 ;	compactflash.c:108: cfWaitDataReady(device);
      0001BA 8F 82            [24]  754 	mov	dpl,r7
      0001BC C0 07            [24]  755 	push	ar7
      0001BE C0 04            [24]  756 	push	ar4
      0001C0 C0 03            [24]  757 	push	ar3
      0001C2 12 00 96         [24]  758 	lcall	_cfWaitDataReady
      0001C5 D0 03            [24]  759 	pop	ar3
      0001C7 D0 04            [24]  760 	pop	ar4
      0001C9 D0 07            [24]  761 	pop	ar7
                           000169   762 	C$compactflash.c$110$3_0$23 ==.
                                    763 ;	compactflash.c:110: P1 = 0xf1;
      0001CB 75 90 F1         [24]  764 	mov	_P1,#0xf1
                           00016C   765 	C$compactflash.c$111$3_0$23 ==.
                                    766 ;	compactflash.c:111: buf[i+idx] = cfReadData(device);
      0001CE A8 08            [24]  767 	mov	r0,_bp
      0001D0 08               [12]  768 	inc	r0
      0001D1 E5 08            [12]  769 	mov	a,_bp
      0001D3 24 03            [12]  770 	add	a,#0x03
      0001D5 F9               [12]  771 	mov	r1,a
      0001D6 E7               [12]  772 	mov	a,@r1
      0001D7 26               [12]  773 	add	a,@r0
      0001D8 FA               [12]  774 	mov	r2,a
      0001D9 09               [12]  775 	inc	r1
      0001DA E7               [12]  776 	mov	a,@r1
      0001DB 08               [12]  777 	inc	r0
      0001DC 36               [12]  778 	addc	a,@r0
      0001DD FC               [12]  779 	mov	r4,a
      0001DE E5 08            [12]  780 	mov	a,_bp
      0001E0 24 FB            [12]  781 	add	a,#0xfb
      0001E2 F8               [12]  782 	mov	r0,a
      0001E3 EA               [12]  783 	mov	a,r2
      0001E4 26               [12]  784 	add	a,@r0
      0001E5 FA               [12]  785 	mov	r2,a
      0001E6 EC               [12]  786 	mov	a,r4
      0001E7 08               [12]  787 	inc	r0
      0001E8 36               [12]  788 	addc	a,@r0
      0001E9 FC               [12]  789 	mov	r4,a
      0001EA 08               [12]  790 	inc	r0
      0001EB 86 03            [24]  791 	mov	ar3,@r0
      0001ED 90 FF 20         [24]  792 	mov	dptr,#0xff20
      0001F0 E0               [24]  793 	movx	a,@dptr
      0001F1 FE               [12]  794 	mov	r6,a
      0001F2 8A 82            [24]  795 	mov	dpl,r2
      0001F4 8C 83            [24]  796 	mov	dph,r4
      0001F6 8B F0            [24]  797 	mov	b,r3
      0001F8 12 3A 22         [24]  798 	lcall	__gptrput
                           000199   799 	C$compactflash.c$113$3_0$23 ==.
                                    800 ;	compactflash.c:113: i++;
      0001FB A8 08            [24]  801 	mov	r0,_bp
      0001FD 08               [12]  802 	inc	r0
      0001FE 06               [12]  803 	inc	@r0
      0001FF B6 00 02         [24]  804 	cjne	@r0,#0x00,00138$
      000202 08               [12]  805 	inc	r0
      000203 06               [12]  806 	inc	@r0
      000204                        807 00138$:
                           0001A2   808 	C$compactflash.c$115$3_0$23 ==.
                                    809 ;	compactflash.c:115: P1 = 0xf2;
      000204 75 90 F2         [24]  810 	mov	_P1,#0xf2
      000207 D0 04            [24]  811 	pop	ar4
      000209 D0 03            [24]  812 	pop	ar3
      00020B 80 9C            [24]  813 	sjmp	00104$
      00020D                        814 00106$:
                           0001AB   815 	C$compactflash.c$117$2_0$21 ==.
                                    816 ;	compactflash.c:117: idx += CF_SECTOR_SIZE;
      00020D E5 08            [12]  817 	mov	a,_bp
      00020F 24 03            [12]  818 	add	a,#0x03
      000211 F8               [12]  819 	mov	r0,a
      000212 74 02            [12]  820 	mov	a,#0x02
      000214 08               [12]  821 	inc	r0
      000215 26               [12]  822 	add	a,@r0
      000216 F6               [12]  823 	mov	@r0,a
      000217 02 01 53         [24]  824 	ljmp	00107$
      00021A                        825 00109$:
                           0001B8   826 	C$compactflash.c$120$1_0$20 ==.
                                    827 ;	compactflash.c:120: P1 = 0xf3;
      00021A 75 90 F3         [24]  828 	mov	_P1,#0xf3
                           0001BB   829 	C$compactflash.c$121$1_0$20 ==.
                                    830 ;	compactflash.c:121: }
      00021D 85 08 81         [24]  831 	mov	sp,_bp
      000220 D0 08            [24]  832 	pop	_bp
                           0001C0   833 	C$compactflash.c$121$1_0$20 ==.
                           0001C0   834 	XG$cfReadSector$0$0 ==.
      000222 22               [24]  835 	ret
                                    836 ;------------------------------------------------------------
                                    837 ;Allocation info for local variables in function 'cfWriteSector'
                                    838 ;------------------------------------------------------------
                                    839 ;buf                       Allocated to stack - _bp -5
                                    840 ;LBA                       Allocated to stack - _bp -9
                                    841 ;sectorCount               Allocated to stack - _bp -11
                                    842 ;device                    Allocated to registers r7 
                                    843 ;status                    Allocated to registers r6 
                                    844 ;i                         Allocated to registers r5 r6 
                                    845 ;idx                       Allocated to stack - _bp +1
                                    846 ;------------------------------------------------------------
                           0001C1   847 	G$cfWriteSector$0$0 ==.
                           0001C1   848 	C$compactflash.c$123$1_0$25 ==.
                                    849 ;	compactflash.c:123: void cfWriteSector(char device, const char* buf, unsigned long LBA, unsigned int sectorCount)
                                    850 ;	-----------------------------------------
                                    851 ;	 function cfWriteSector
                                    852 ;	-----------------------------------------
      000223                        853 _cfWriteSector:
      000223 C0 08            [24]  854 	push	_bp
      000225 85 81 08         [24]  855 	mov	_bp,sp
      000228 05 81            [12]  856 	inc	sp
      00022A 05 81            [12]  857 	inc	sp
                           0001CA   858 	C$compactflash.c$131$1_0$25 ==.
                                    859 ;	compactflash.c:131: P1 = 0xe1;
                           0001CA   860 	C$compactflash.c$132$1_0$25 ==.
                                    861 ;	compactflash.c:132: cfWaitIdle(device);
      00022C AF 82            [24]  862 	mov	r7,dpl
      00022E 75 90 E1         [24]  863 	mov	_P1,#0xe1
      000231 C0 07            [24]  864 	push	ar7
      000233 12 00 7D         [24]  865 	lcall	_cfWaitIdle
      000236 D0 07            [24]  866 	pop	ar7
                           0001D6   867 	C$compactflash.c$134$1_0$25 ==.
                                    868 ;	compactflash.c:134: P1 = 0xe2;
      000238 75 90 E2         [24]  869 	mov	_P1,#0xe2
                           0001D9   870 	C$compactflash.c$135$1_0$25 ==.
                                    871 ;	compactflash.c:135: cfWriteSectorCount(device, 0x01);
      00023B 90 FF 22         [24]  872 	mov	dptr,#0xff22
      00023E 74 01            [12]  873 	mov	a,#0x01
      000240 F0               [24]  874 	movx	@dptr,a
                           0001DF   875 	C$compactflash.c$137$1_0$25 ==.
                                    876 ;	compactflash.c:137: P1 = 0xe3;
      000241 75 90 E3         [24]  877 	mov	_P1,#0xe3
                           0001E2   878 	C$compactflash.c$138$1_0$25 ==.
                                    879 ;	compactflash.c:138: cfWaitIdle(device);
      000244 8F 82            [24]  880 	mov	dpl,r7
      000246 C0 07            [24]  881 	push	ar7
      000248 12 00 7D         [24]  882 	lcall	_cfWaitIdle
      00024B D0 07            [24]  883 	pop	ar7
                           0001EB   884 	C$compactflash.c$140$1_0$25 ==.
                                    885 ;	compactflash.c:140: P1 = 0xe4;
      00024D 75 90 E4         [24]  886 	mov	_P1,#0xe4
                           0001EE   887 	C$compactflash.c$141$1_0$25 ==.
                                    888 ;	compactflash.c:141: cfWriteLBA0(device, ((LBA   ) & 0xff) );
      000250 E5 08            [12]  889 	mov	a,_bp
      000252 24 F7            [12]  890 	add	a,#0xf7
      000254 F8               [12]  891 	mov	r0,a
      000255 86 06            [24]  892 	mov	ar6,@r0
      000257 90 FF 23         [24]  893 	mov	dptr,#0xff23
      00025A EE               [12]  894 	mov	a,r6
      00025B F0               [24]  895 	movx	@dptr,a
                           0001FA   896 	C$compactflash.c$143$1_0$25 ==.
                                    897 ;	compactflash.c:143: P1 = 0xe5;
      00025C 75 90 E5         [24]  898 	mov	_P1,#0xe5
                           0001FD   899 	C$compactflash.c$144$1_0$25 ==.
                                    900 ;	compactflash.c:144: cfWaitIdle(device);
      00025F 8F 82            [24]  901 	mov	dpl,r7
      000261 C0 07            [24]  902 	push	ar7
      000263 12 00 7D         [24]  903 	lcall	_cfWaitIdle
      000266 D0 07            [24]  904 	pop	ar7
                           000206   905 	C$compactflash.c$146$1_0$25 ==.
                                    906 ;	compactflash.c:146: P1 = 0xe6;
      000268 75 90 E6         [24]  907 	mov	_P1,#0xe6
                           000209   908 	C$compactflash.c$147$1_0$25 ==.
                                    909 ;	compactflash.c:147: cfWriteLBA1(device, ((LBA>>8) & 0xff) );
      00026B E5 08            [12]  910 	mov	a,_bp
      00026D 24 F7            [12]  911 	add	a,#0xf7
      00026F F8               [12]  912 	mov	r0,a
      000270 08               [12]  913 	inc	r0
      000271 86 06            [24]  914 	mov	ar6,@r0
      000273 90 FF 24         [24]  915 	mov	dptr,#0xff24
      000276 EE               [12]  916 	mov	a,r6
      000277 F0               [24]  917 	movx	@dptr,a
                           000216   918 	C$compactflash.c$149$1_0$25 ==.
                                    919 ;	compactflash.c:149: P1 = 0xe7;
      000278 75 90 E7         [24]  920 	mov	_P1,#0xe7
                           000219   921 	C$compactflash.c$150$1_0$25 ==.
                                    922 ;	compactflash.c:150: cfWaitIdle(device);
      00027B 8F 82            [24]  923 	mov	dpl,r7
      00027D C0 07            [24]  924 	push	ar7
      00027F 12 00 7D         [24]  925 	lcall	_cfWaitIdle
      000282 D0 07            [24]  926 	pop	ar7
                           000222   927 	C$compactflash.c$152$1_0$25 ==.
                                    928 ;	compactflash.c:152: P1 = 0xe8;
      000284 75 90 E8         [24]  929 	mov	_P1,#0xe8
                           000225   930 	C$compactflash.c$153$1_0$25 ==.
                                    931 ;	compactflash.c:153: cfWriteLBA2(device, ((LBA>>16) & 0xff) );
      000287 E5 08            [12]  932 	mov	a,_bp
      000289 24 F7            [12]  933 	add	a,#0xf7
      00028B F8               [12]  934 	mov	r0,a
      00028C 08               [12]  935 	inc	r0
      00028D 08               [12]  936 	inc	r0
      00028E 86 06            [24]  937 	mov	ar6,@r0
      000290 90 FF 25         [24]  938 	mov	dptr,#0xff25
      000293 EE               [12]  939 	mov	a,r6
      000294 F0               [24]  940 	movx	@dptr,a
                           000233   941 	C$compactflash.c$155$1_0$25 ==.
                                    942 ;	compactflash.c:155: P1 = 0xe9;
      000295 75 90 E9         [24]  943 	mov	_P1,#0xe9
                           000236   944 	C$compactflash.c$156$1_0$25 ==.
                                    945 ;	compactflash.c:156: cfWaitIdle(device);
      000298 8F 82            [24]  946 	mov	dpl,r7
      00029A C0 07            [24]  947 	push	ar7
      00029C 12 00 7D         [24]  948 	lcall	_cfWaitIdle
      00029F D0 07            [24]  949 	pop	ar7
                           00023F   950 	C$compactflash.c$158$1_0$25 ==.
                                    951 ;	compactflash.c:158: P1 = 0xea;
      0002A1 75 90 EA         [24]  952 	mov	_P1,#0xea
                           000242   953 	C$compactflash.c$159$1_0$25 ==.
                                    954 ;	compactflash.c:159: cfWriteLBA3(device, (((LBA>>24) | 0xe0) & 0xff) );
      0002A4 E5 08            [12]  955 	mov	a,_bp
      0002A6 24 F7            [12]  956 	add	a,#0xf7
      0002A8 F8               [12]  957 	mov	r0,a
      0002A9 08               [12]  958 	inc	r0
      0002AA 08               [12]  959 	inc	r0
      0002AB 08               [12]  960 	inc	r0
      0002AC 86 06            [24]  961 	mov	ar6,@r0
      0002AE 7D 00            [12]  962 	mov	r5,#0x00
      0002B0 43 06 E0         [24]  963 	orl	ar6,#0xe0
      0002B3 90 FF 26         [24]  964 	mov	dptr,#0xff26
      0002B6 EE               [12]  965 	mov	a,r6
      0002B7 F0               [24]  966 	movx	@dptr,a
                           000256   967 	C$compactflash.c$162$1_0$25 ==.
                                    968 ;	compactflash.c:162: while(sectorCount--)
      0002B8 A8 08            [24]  969 	mov	r0,_bp
      0002BA 08               [12]  970 	inc	r0
      0002BB E4               [12]  971 	clr	a
      0002BC F6               [12]  972 	mov	@r0,a
      0002BD 08               [12]  973 	inc	r0
      0002BE F6               [12]  974 	mov	@r0,a
      0002BF E5 08            [12]  975 	mov	a,_bp
      0002C1 24 F5            [12]  976 	add	a,#0xf5
      0002C3 F8               [12]  977 	mov	r0,a
      0002C4 86 03            [24]  978 	mov	ar3,@r0
      0002C6 08               [12]  979 	inc	r0
      0002C7 86 04            [24]  980 	mov	ar4,@r0
      0002C9                        981 00107$:
      0002C9 8B 02            [24]  982 	mov	ar2,r3
      0002CB 8C 06            [24]  983 	mov	ar6,r4
      0002CD 1B               [12]  984 	dec	r3
      0002CE BB FF 01         [24]  985 	cjne	r3,#0xff,00134$
      0002D1 1C               [12]  986 	dec	r4
      0002D2                        987 00134$:
      0002D2 EA               [12]  988 	mov	a,r2
      0002D3 4E               [12]  989 	orl	a,r6
      0002D4 70 03            [24]  990 	jnz	00135$
      0002D6 02 03 83         [24]  991 	ljmp	00109$
      0002D9                        992 00135$:
                           000277   993 	C$compactflash.c$164$2_0$26 ==.
                                    994 ;	compactflash.c:164: do
      0002D9                        995 00101$:
                           000277   996 	C$compactflash.c$166$3_0$27 ==.
                                    997 ;	compactflash.c:166: P1 = 0xeb;
      0002D9 75 90 EB         [24]  998 	mov	_P1,#0xeb
                           00027A   999 	C$compactflash.c$167$3_0$27 ==.
                                   1000 ;	compactflash.c:167: cfWaitCommandReady(device);
      0002DC 8F 82            [24] 1001 	mov	dpl,r7
      0002DE C0 07            [24] 1002 	push	ar7
      0002E0 C0 04            [24] 1003 	push	ar4
      0002E2 C0 03            [24] 1004 	push	ar3
      0002E4 12 00 85         [24] 1005 	lcall	_cfWaitCommandReady
      0002E7 D0 03            [24] 1006 	pop	ar3
      0002E9 D0 04            [24] 1007 	pop	ar4
      0002EB D0 07            [24] 1008 	pop	ar7
                           00028B  1009 	C$compactflash.c$169$3_0$27 ==.
                                   1010 ;	compactflash.c:169: P1 = 0xec;
      0002ED 75 90 EC         [24] 1011 	mov	_P1,#0xec
                           00028E  1012 	C$compactflash.c$170$3_0$27 ==.
                                   1013 ;	compactflash.c:170: cfWriteCommand(device, 0x30);
      0002F0 90 FF 27         [24] 1014 	mov	dptr,#0xff27
      0002F3 74 30            [12] 1015 	mov	a,#0x30
      0002F5 F0               [24] 1016 	movx	@dptr,a
                           000294  1017 	C$compactflash.c$172$3_0$27 ==.
                                   1018 ;	compactflash.c:172: P1 = 0xed;
      0002F6 75 90 ED         [24] 1019 	mov	_P1,#0xed
                           000297  1020 	C$compactflash.c$173$3_0$27 ==.
                                   1021 ;	compactflash.c:173: cfWaitDataReady(device);
      0002F9 8F 82            [24] 1022 	mov	dpl,r7
      0002FB C0 07            [24] 1023 	push	ar7
      0002FD C0 04            [24] 1024 	push	ar4
      0002FF C0 03            [24] 1025 	push	ar3
      000301 12 00 96         [24] 1026 	lcall	_cfWaitDataReady
      000304 D0 03            [24] 1027 	pop	ar3
      000306 D0 04            [24] 1028 	pop	ar4
      000308 D0 07            [24] 1029 	pop	ar7
                           0002A8  1030 	C$compactflash.c$175$3_0$27 ==.
                                   1031 ;	compactflash.c:175: P1 = 0xee;
      00030A 75 90 EE         [24] 1032 	mov	_P1,#0xee
                           0002AB  1033 	C$compactflash.c$176$3_0$27 ==.
                                   1034 ;	compactflash.c:176: status = cfReadStatus(device);
      00030D 90 FF 27         [24] 1035 	mov	dptr,#0xff27
      000310 E0               [24] 1036 	movx	a,@dptr
                           0002AF  1037 	C$compactflash.c$178$3_0$27 ==.
                                   1038 ;	compactflash.c:178: P1 = 0xef;
                           0002AF  1039 	C$compactflash.c$180$2_0$26 ==.
                                   1040 ;	compactflash.c:180: while((status & 0x01)!=0);
      000311 75 90 EF         [24] 1041 	mov	_P1,#0xef
      000314 20 E0 C2         [24] 1042 	jb	acc.0,00101$
                           0002B5  1043 	C$compactflash.c$183$1_0$25 ==.
                                   1044 ;	compactflash.c:183: while(i < CF_SECTOR_SIZE)
      000317 7D 00            [12] 1045 	mov	r5,#0x00
      000319 7E 00            [12] 1046 	mov	r6,#0x00
      00031B                       1047 00104$:
      00031B 74 FE            [12] 1048 	mov	a,#0x100 - 0x02
      00031D 2E               [12] 1049 	add	a,r6
      00031E 40 58            [24] 1050 	jc	00106$
                           0002BE  1051 	C$compactflash.c$185$1_0$25 ==.
                                   1052 ;	compactflash.c:185: P1 = 0xf0;
      000320 C0 03            [24] 1053 	push	ar3
      000322 C0 04            [24] 1054 	push	ar4
      000324 75 90 F0         [24] 1055 	mov	_P1,#0xf0
                           0002C5  1056 	C$compactflash.c$186$3_0$28 ==.
                                   1057 ;	compactflash.c:186: cfWaitDataReady(device);
      000327 8F 82            [24] 1058 	mov	dpl,r7
      000329 C0 07            [24] 1059 	push	ar7
      00032B C0 06            [24] 1060 	push	ar6
      00032D C0 05            [24] 1061 	push	ar5
      00032F C0 04            [24] 1062 	push	ar4
      000331 C0 03            [24] 1063 	push	ar3
      000333 12 00 96         [24] 1064 	lcall	_cfWaitDataReady
      000336 D0 03            [24] 1065 	pop	ar3
      000338 D0 04            [24] 1066 	pop	ar4
      00033A D0 05            [24] 1067 	pop	ar5
      00033C D0 06            [24] 1068 	pop	ar6
      00033E D0 07            [24] 1069 	pop	ar7
                           0002DE  1070 	C$compactflash.c$188$3_0$28 ==.
                                   1071 ;	compactflash.c:188: P1 = 0xf1;
      000340 75 90 F1         [24] 1072 	mov	_P1,#0xf1
                           0002E1  1073 	C$compactflash.c$189$3_0$28 ==.
                                   1074 ;	compactflash.c:189: cfWriteData(device, buf[i+idx]);
      000343 A8 08            [24] 1075 	mov	r0,_bp
      000345 08               [12] 1076 	inc	r0
      000346 E6               [12] 1077 	mov	a,@r0
      000347 2D               [12] 1078 	add	a,r5
      000348 FA               [12] 1079 	mov	r2,a
      000349 08               [12] 1080 	inc	r0
      00034A E6               [12] 1081 	mov	a,@r0
      00034B 3E               [12] 1082 	addc	a,r6
      00034C FC               [12] 1083 	mov	r4,a
      00034D E5 08            [12] 1084 	mov	a,_bp
      00034F 24 FB            [12] 1085 	add	a,#0xfb
      000351 F8               [12] 1086 	mov	r0,a
      000352 EA               [12] 1087 	mov	a,r2
      000353 26               [12] 1088 	add	a,@r0
      000354 FA               [12] 1089 	mov	r2,a
      000355 EC               [12] 1090 	mov	a,r4
      000356 08               [12] 1091 	inc	r0
      000357 36               [12] 1092 	addc	a,@r0
      000358 FC               [12] 1093 	mov	r4,a
      000359 08               [12] 1094 	inc	r0
      00035A 86 03            [24] 1095 	mov	ar3,@r0
      00035C 8A 82            [24] 1096 	mov	dpl,r2
      00035E 8C 83            [24] 1097 	mov	dph,r4
      000360 8B F0            [24] 1098 	mov	b,r3
      000362 12 3A E3         [24] 1099 	lcall	__gptrget
      000365 FA               [12] 1100 	mov	r2,a
      000366 90 FF 20         [24] 1101 	mov	dptr,#0xff20
      000369 F0               [24] 1102 	movx	@dptr,a
                           000308  1103 	C$compactflash.c$191$3_0$28 ==.
                                   1104 ;	compactflash.c:191: i++;
      00036A 0D               [12] 1105 	inc	r5
      00036B BD 00 01         [24] 1106 	cjne	r5,#0x00,00138$
      00036E 0E               [12] 1107 	inc	r6
      00036F                       1108 00138$:
                           00030D  1109 	C$compactflash.c$193$3_0$28 ==.
                                   1110 ;	compactflash.c:193: P1 = 0xf2;
      00036F 75 90 F2         [24] 1111 	mov	_P1,#0xf2
      000372 D0 04            [24] 1112 	pop	ar4
      000374 D0 03            [24] 1113 	pop	ar3
      000376 80 A3            [24] 1114 	sjmp	00104$
      000378                       1115 00106$:
                           000316  1116 	C$compactflash.c$195$2_0$26 ==.
                                   1117 ;	compactflash.c:195: idx += CF_SECTOR_SIZE;
      000378 A8 08            [24] 1118 	mov	r0,_bp
      00037A 08               [12] 1119 	inc	r0
      00037B 74 02            [12] 1120 	mov	a,#0x02
      00037D 08               [12] 1121 	inc	r0
      00037E 26               [12] 1122 	add	a,@r0
      00037F F6               [12] 1123 	mov	@r0,a
      000380 02 02 C9         [24] 1124 	ljmp	00107$
      000383                       1125 00109$:
                           000321  1126 	C$compactflash.c$198$1_0$25 ==.
                                   1127 ;	compactflash.c:198: P1 = 0xf3;
      000383 75 90 F3         [24] 1128 	mov	_P1,#0xf3
                           000324  1129 	C$compactflash.c$199$1_0$25 ==.
                                   1130 ;	compactflash.c:199: }
      000386 85 08 81         [24] 1131 	mov	sp,_bp
      000389 D0 08            [24] 1132 	pop	_bp
                           000329  1133 	C$compactflash.c$199$1_0$25 ==.
                           000329  1134 	XG$cfWriteSector$0$0 ==.
      00038B 22               [24] 1135 	ret
                                   1136 ;------------------------------------------------------------
                                   1137 ;Allocation info for local variables in function 'cfDiskGetSectorCount'
                                   1138 ;------------------------------------------------------------
                                   1139 ;device                    Allocated to registers 
                                   1140 ;------------------------------------------------------------
                           00032A  1141 	G$cfDiskGetSectorCount$0$0 ==.
                           00032A  1142 	C$compactflash.c$201$1_0$30 ==.
                                   1143 ;	compactflash.c:201: unsigned long cfDiskGetSectorCount(char device)
                                   1144 ;	-----------------------------------------
                                   1145 ;	 function cfDiskGetSectorCount
                                   1146 ;	-----------------------------------------
      00038C                       1147 _cfDiskGetSectorCount:
                           00032A  1148 	C$compactflash.c$203$1_0$30 ==.
                                   1149 ;	compactflash.c:203: return 10000;
      00038C 90 27 10         [24] 1150 	mov	dptr,#0x2710
      00038F E4               [12] 1151 	clr	a
      000390 F5 F0            [12] 1152 	mov	b,a
                           000330  1153 	C$compactflash.c$204$1_0$30 ==.
                                   1154 ;	compactflash.c:204: }
                           000330  1155 	C$compactflash.c$204$1_0$30 ==.
                           000330  1156 	XG$cfDiskGetSectorCount$0$0 ==.
      000392 22               [24] 1157 	ret
                                   1158 	.area CSEG    (CODE)
                                   1159 	.area CONST   (CODE)
                                   1160 	.area XINIT   (CODE)
                                   1161 	.area CABS    (ABS,CODE)
