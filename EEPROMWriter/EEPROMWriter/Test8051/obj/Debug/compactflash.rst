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
                                    107 	.globl _cfTest_PARM_2
                                    108 	.globl _cfReadSector_PARM_3
                                    109 	.globl _cfReadSector_PARM_2
                                    110 	.globl _cfInit
                                    111 	.globl _cfWaitIdle
                                    112 	.globl _cfWaitCommandReady
                                    113 	.globl _cfWaitDataReady
                                    114 	.globl _cfReadSector
                                    115 	.globl _cfTest
                                    116 ;--------------------------------------------------------
                                    117 ; special function registers
                                    118 ;--------------------------------------------------------
                                    119 	.area RSEG    (ABS,DATA)
      000000                        120 	.org 0x0000
                           000080   121 G$P0$0_0$0 == 0x0080
                           000080   122 _P0	=	0x0080
                           000081   123 G$SP$0_0$0 == 0x0081
                           000081   124 _SP	=	0x0081
                           000082   125 G$DPL$0_0$0 == 0x0082
                           000082   126 _DPL	=	0x0082
                           000083   127 G$DPH$0_0$0 == 0x0083
                           000083   128 _DPH	=	0x0083
                           000087   129 G$PCON$0_0$0 == 0x0087
                           000087   130 _PCON	=	0x0087
                           000088   131 G$TCON$0_0$0 == 0x0088
                           000088   132 _TCON	=	0x0088
                           000089   133 G$TMOD$0_0$0 == 0x0089
                           000089   134 _TMOD	=	0x0089
                           00008A   135 G$TL0$0_0$0 == 0x008a
                           00008A   136 _TL0	=	0x008a
                           00008B   137 G$TL1$0_0$0 == 0x008b
                           00008B   138 _TL1	=	0x008b
                           00008C   139 G$TH0$0_0$0 == 0x008c
                           00008C   140 _TH0	=	0x008c
                           00008D   141 G$TH1$0_0$0 == 0x008d
                           00008D   142 _TH1	=	0x008d
                           000090   143 G$P1$0_0$0 == 0x0090
                           000090   144 _P1	=	0x0090
                           000098   145 G$SCON$0_0$0 == 0x0098
                           000098   146 _SCON	=	0x0098
                           000099   147 G$SBUF$0_0$0 == 0x0099
                           000099   148 _SBUF	=	0x0099
                           0000A0   149 G$P2$0_0$0 == 0x00a0
                           0000A0   150 _P2	=	0x00a0
                           0000A8   151 G$IE$0_0$0 == 0x00a8
                           0000A8   152 _IE	=	0x00a8
                           0000B0   153 G$P3$0_0$0 == 0x00b0
                           0000B0   154 _P3	=	0x00b0
                           0000B8   155 G$IP$0_0$0 == 0x00b8
                           0000B8   156 _IP	=	0x00b8
                           0000D0   157 G$PSW$0_0$0 == 0x00d0
                           0000D0   158 _PSW	=	0x00d0
                           0000E0   159 G$ACC$0_0$0 == 0x00e0
                           0000E0   160 _ACC	=	0x00e0
                           0000F0   161 G$B$0_0$0 == 0x00f0
                           0000F0   162 _B	=	0x00f0
                                    163 ;--------------------------------------------------------
                                    164 ; special function bits
                                    165 ;--------------------------------------------------------
                                    166 	.area RSEG    (ABS,DATA)
      000000                        167 	.org 0x0000
                           000080   168 G$P0_0$0_0$0 == 0x0080
                           000080   169 _P0_0	=	0x0080
                           000081   170 G$P0_1$0_0$0 == 0x0081
                           000081   171 _P0_1	=	0x0081
                           000082   172 G$P0_2$0_0$0 == 0x0082
                           000082   173 _P0_2	=	0x0082
                           000083   174 G$P0_3$0_0$0 == 0x0083
                           000083   175 _P0_3	=	0x0083
                           000084   176 G$P0_4$0_0$0 == 0x0084
                           000084   177 _P0_4	=	0x0084
                           000085   178 G$P0_5$0_0$0 == 0x0085
                           000085   179 _P0_5	=	0x0085
                           000086   180 G$P0_6$0_0$0 == 0x0086
                           000086   181 _P0_6	=	0x0086
                           000087   182 G$P0_7$0_0$0 == 0x0087
                           000087   183 _P0_7	=	0x0087
                           000088   184 G$IT0$0_0$0 == 0x0088
                           000088   185 _IT0	=	0x0088
                           000089   186 G$IE0$0_0$0 == 0x0089
                           000089   187 _IE0	=	0x0089
                           00008A   188 G$IT1$0_0$0 == 0x008a
                           00008A   189 _IT1	=	0x008a
                           00008B   190 G$IE1$0_0$0 == 0x008b
                           00008B   191 _IE1	=	0x008b
                           00008C   192 G$TR0$0_0$0 == 0x008c
                           00008C   193 _TR0	=	0x008c
                           00008D   194 G$TF0$0_0$0 == 0x008d
                           00008D   195 _TF0	=	0x008d
                           00008E   196 G$TR1$0_0$0 == 0x008e
                           00008E   197 _TR1	=	0x008e
                           00008F   198 G$TF1$0_0$0 == 0x008f
                           00008F   199 _TF1	=	0x008f
                           000090   200 G$P1_0$0_0$0 == 0x0090
                           000090   201 _P1_0	=	0x0090
                           000091   202 G$P1_1$0_0$0 == 0x0091
                           000091   203 _P1_1	=	0x0091
                           000092   204 G$P1_2$0_0$0 == 0x0092
                           000092   205 _P1_2	=	0x0092
                           000093   206 G$P1_3$0_0$0 == 0x0093
                           000093   207 _P1_3	=	0x0093
                           000094   208 G$P1_4$0_0$0 == 0x0094
                           000094   209 _P1_4	=	0x0094
                           000095   210 G$P1_5$0_0$0 == 0x0095
                           000095   211 _P1_5	=	0x0095
                           000096   212 G$P1_6$0_0$0 == 0x0096
                           000096   213 _P1_6	=	0x0096
                           000097   214 G$P1_7$0_0$0 == 0x0097
                           000097   215 _P1_7	=	0x0097
                           000098   216 G$RI$0_0$0 == 0x0098
                           000098   217 _RI	=	0x0098
                           000099   218 G$TI$0_0$0 == 0x0099
                           000099   219 _TI	=	0x0099
                           00009A   220 G$RB8$0_0$0 == 0x009a
                           00009A   221 _RB8	=	0x009a
                           00009B   222 G$TB8$0_0$0 == 0x009b
                           00009B   223 _TB8	=	0x009b
                           00009C   224 G$REN$0_0$0 == 0x009c
                           00009C   225 _REN	=	0x009c
                           00009D   226 G$SM2$0_0$0 == 0x009d
                           00009D   227 _SM2	=	0x009d
                           00009E   228 G$SM1$0_0$0 == 0x009e
                           00009E   229 _SM1	=	0x009e
                           00009F   230 G$SM0$0_0$0 == 0x009f
                           00009F   231 _SM0	=	0x009f
                           0000A0   232 G$P2_0$0_0$0 == 0x00a0
                           0000A0   233 _P2_0	=	0x00a0
                           0000A1   234 G$P2_1$0_0$0 == 0x00a1
                           0000A1   235 _P2_1	=	0x00a1
                           0000A2   236 G$P2_2$0_0$0 == 0x00a2
                           0000A2   237 _P2_2	=	0x00a2
                           0000A3   238 G$P2_3$0_0$0 == 0x00a3
                           0000A3   239 _P2_3	=	0x00a3
                           0000A4   240 G$P2_4$0_0$0 == 0x00a4
                           0000A4   241 _P2_4	=	0x00a4
                           0000A5   242 G$P2_5$0_0$0 == 0x00a5
                           0000A5   243 _P2_5	=	0x00a5
                           0000A6   244 G$P2_6$0_0$0 == 0x00a6
                           0000A6   245 _P2_6	=	0x00a6
                           0000A7   246 G$P2_7$0_0$0 == 0x00a7
                           0000A7   247 _P2_7	=	0x00a7
                           0000A8   248 G$EX0$0_0$0 == 0x00a8
                           0000A8   249 _EX0	=	0x00a8
                           0000A9   250 G$ET0$0_0$0 == 0x00a9
                           0000A9   251 _ET0	=	0x00a9
                           0000AA   252 G$EX1$0_0$0 == 0x00aa
                           0000AA   253 _EX1	=	0x00aa
                           0000AB   254 G$ET1$0_0$0 == 0x00ab
                           0000AB   255 _ET1	=	0x00ab
                           0000AC   256 G$ES$0_0$0 == 0x00ac
                           0000AC   257 _ES	=	0x00ac
                           0000AF   258 G$EA$0_0$0 == 0x00af
                           0000AF   259 _EA	=	0x00af
                           0000B0   260 G$P3_0$0_0$0 == 0x00b0
                           0000B0   261 _P3_0	=	0x00b0
                           0000B1   262 G$P3_1$0_0$0 == 0x00b1
                           0000B1   263 _P3_1	=	0x00b1
                           0000B2   264 G$P3_2$0_0$0 == 0x00b2
                           0000B2   265 _P3_2	=	0x00b2
                           0000B3   266 G$P3_3$0_0$0 == 0x00b3
                           0000B3   267 _P3_3	=	0x00b3
                           0000B4   268 G$P3_4$0_0$0 == 0x00b4
                           0000B4   269 _P3_4	=	0x00b4
                           0000B5   270 G$P3_5$0_0$0 == 0x00b5
                           0000B5   271 _P3_5	=	0x00b5
                           0000B6   272 G$P3_6$0_0$0 == 0x00b6
                           0000B6   273 _P3_6	=	0x00b6
                           0000B7   274 G$P3_7$0_0$0 == 0x00b7
                           0000B7   275 _P3_7	=	0x00b7
                           0000B0   276 G$RXD$0_0$0 == 0x00b0
                           0000B0   277 _RXD	=	0x00b0
                           0000B1   278 G$TXD$0_0$0 == 0x00b1
                           0000B1   279 _TXD	=	0x00b1
                           0000B2   280 G$INT0$0_0$0 == 0x00b2
                           0000B2   281 _INT0	=	0x00b2
                           0000B3   282 G$INT1$0_0$0 == 0x00b3
                           0000B3   283 _INT1	=	0x00b3
                           0000B4   284 G$T0$0_0$0 == 0x00b4
                           0000B4   285 _T0	=	0x00b4
                           0000B5   286 G$T1$0_0$0 == 0x00b5
                           0000B5   287 _T1	=	0x00b5
                           0000B6   288 G$WR$0_0$0 == 0x00b6
                           0000B6   289 _WR	=	0x00b6
                           0000B7   290 G$RD$0_0$0 == 0x00b7
                           0000B7   291 _RD	=	0x00b7
                           0000B8   292 G$PX0$0_0$0 == 0x00b8
                           0000B8   293 _PX0	=	0x00b8
                           0000B9   294 G$PT0$0_0$0 == 0x00b9
                           0000B9   295 _PT0	=	0x00b9
                           0000BA   296 G$PX1$0_0$0 == 0x00ba
                           0000BA   297 _PX1	=	0x00ba
                           0000BB   298 G$PT1$0_0$0 == 0x00bb
                           0000BB   299 _PT1	=	0x00bb
                           0000BC   300 G$PS$0_0$0 == 0x00bc
                           0000BC   301 _PS	=	0x00bc
                           0000D0   302 G$P$0_0$0 == 0x00d0
                           0000D0   303 _P	=	0x00d0
                           0000D1   304 G$F1$0_0$0 == 0x00d1
                           0000D1   305 _F1	=	0x00d1
                           0000D2   306 G$OV$0_0$0 == 0x00d2
                           0000D2   307 _OV	=	0x00d2
                           0000D3   308 G$RS0$0_0$0 == 0x00d3
                           0000D3   309 _RS0	=	0x00d3
                           0000D4   310 G$RS1$0_0$0 == 0x00d4
                           0000D4   311 _RS1	=	0x00d4
                           0000D5   312 G$F0$0_0$0 == 0x00d5
                           0000D5   313 _F0	=	0x00d5
                           0000D6   314 G$AC$0_0$0 == 0x00d6
                           0000D6   315 _AC	=	0x00d6
                           0000D7   316 G$CY$0_0$0 == 0x00d7
                           0000D7   317 _CY	=	0x00d7
                                    318 ;--------------------------------------------------------
                                    319 ; overlayable register banks
                                    320 ;--------------------------------------------------------
                                    321 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        322 	.ds 8
                                    323 ;--------------------------------------------------------
                                    324 ; internal ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area DSEG    (DATA)
                           000000   327 Lcompactflash.cfReadSector$i$1_0$19==.
      000008                        328 _cfReadSector_i_65536_19:
      000008                        329 	.ds 2
                                    330 ;--------------------------------------------------------
                                    331 ; overlayable items in internal ram 
                                    332 ;--------------------------------------------------------
                                    333 	.area	OSEG    (OVR,DATA)
                                    334 	.area	OSEG    (OVR,DATA)
                                    335 	.area	OSEG    (OVR,DATA)
                                    336 ;--------------------------------------------------------
                                    337 ; indirectly addressable internal ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area ISEG    (DATA)
                                    340 ;--------------------------------------------------------
                                    341 ; absolute internal ram data
                                    342 ;--------------------------------------------------------
                                    343 	.area IABS    (ABS,DATA)
                                    344 	.area IABS    (ABS,DATA)
                                    345 ;--------------------------------------------------------
                                    346 ; bit data
                                    347 ;--------------------------------------------------------
                                    348 	.area BSEG    (BIT)
                                    349 ;--------------------------------------------------------
                                    350 ; paged external ram data
                                    351 ;--------------------------------------------------------
                                    352 	.area PSEG    (PAG,XDATA)
                                    353 ;--------------------------------------------------------
                                    354 ; external ram data
                                    355 ;--------------------------------------------------------
                                    356 	.area XSEG    (XDATA)
                           000000   357 Lcompactflash.cfInit$device$1_0$7==.
      004000                        358 _cfInit_device_65536_7:
      004000                        359 	.ds 1
                           000001   360 Lcompactflash.cfWaitIdle$device$1_0$9==.
      004001                        361 _cfWaitIdle_device_65536_9:
      004001                        362 	.ds 1
                           000002   363 Lcompactflash.cfWaitCommandReady$device$1_0$12==.
      004002                        364 _cfWaitCommandReady_device_65536_12:
      004002                        365 	.ds 1
                           000003   366 Lcompactflash.cfWaitDataReady$device$1_0$15==.
      004003                        367 _cfWaitDataReady_device_65536_15:
      004003                        368 	.ds 1
                           000004   369 Lcompactflash.cfReadSector$buf$1_0$18==.
      004004                        370 _cfReadSector_PARM_2:
      004004                        371 	.ds 3
                           000007   372 Lcompactflash.cfReadSector$sectorCount$1_0$18==.
      004007                        373 _cfReadSector_PARM_3:
      004007                        374 	.ds 2
                           000009   375 Lcompactflash.cfReadSector$device$1_0$18==.
      004009                        376 _cfReadSector_device_65536_18:
      004009                        377 	.ds 1
                           00000A   378 Lcompactflash.cfTest$buf$1_0$22==.
      00400A                        379 _cfTest_PARM_2:
      00400A                        380 	.ds 3
                           00000D   381 Lcompactflash.cfTest$device$1_0$22==.
      00400D                        382 _cfTest_device_65536_22:
      00400D                        383 	.ds 1
                                    384 ;--------------------------------------------------------
                                    385 ; absolute external ram data
                                    386 ;--------------------------------------------------------
                                    387 	.area XABS    (ABS,XDATA)
                                    388 ;--------------------------------------------------------
                                    389 ; external initialized ram data
                                    390 ;--------------------------------------------------------
                                    391 	.area XISEG   (XDATA)
                                    392 	.area HOME    (CODE)
                                    393 	.area GSINIT0 (CODE)
                                    394 	.area GSINIT1 (CODE)
                                    395 	.area GSINIT2 (CODE)
                                    396 	.area GSINIT3 (CODE)
                                    397 	.area GSINIT4 (CODE)
                                    398 	.area GSINIT5 (CODE)
                                    399 	.area GSINIT  (CODE)
                                    400 	.area GSFINAL (CODE)
                                    401 	.area CSEG    (CODE)
                                    402 ;--------------------------------------------------------
                                    403 ; global & static initialisations
                                    404 ;--------------------------------------------------------
                                    405 	.area HOME    (CODE)
                                    406 	.area GSINIT  (CODE)
                                    407 	.area GSFINAL (CODE)
                                    408 	.area GSINIT  (CODE)
                                    409 ;--------------------------------------------------------
                                    410 ; Home
                                    411 ;--------------------------------------------------------
                                    412 	.area HOME    (CODE)
                                    413 	.area HOME    (CODE)
                                    414 ;--------------------------------------------------------
                                    415 ; code
                                    416 ;--------------------------------------------------------
                                    417 	.area CSEG    (CODE)
                                    418 ;------------------------------------------------------------
                                    419 ;Allocation info for local variables in function 'cfInit'
                                    420 ;------------------------------------------------------------
                                    421 ;device                    Allocated with name '_cfInit_device_65536_7'
                                    422 ;------------------------------------------------------------
                           000000   423 	G$cfInit$0$0 ==.
                           000000   424 	C$compactflash.c$3$0_0$8 ==.
                                    425 ;	compactflash.c:3: void cfInit(char device)
                                    426 ;	-----------------------------------------
                                    427 ;	 function cfInit
                                    428 ;	-----------------------------------------
      000077                        429 _cfInit:
                           000007   430 	ar7 = 0x07
                           000006   431 	ar6 = 0x06
                           000005   432 	ar5 = 0x05
                           000004   433 	ar4 = 0x04
                           000003   434 	ar3 = 0x03
                           000002   435 	ar2 = 0x02
                           000001   436 	ar1 = 0x01
                           000000   437 	ar0 = 0x00
      000077 E5 82            [12]  438 	mov	a,dpl
      000079 90 40 00         [24]  439 	mov	dptr,#_cfInit_device_65536_7
      00007C F0               [24]  440 	movx	@dptr,a
                           000006   441 	C$compactflash.c$5$1_0$8 ==.
                                    442 ;	compactflash.c:5: cfWriteFeatures(device, 0x01); //  set 8 bit mode to features port
      00007D E0               [24]  443 	movx	a,@dptr
      00007E FF               [12]  444 	mov	r7,a
      00007F E4               [12]  445 	clr	a
      000080 C4               [12]  446 	swap	a
      000081 54 F0            [12]  447 	anl	a,#0xf0
      000083 CF               [12]  448 	xch	a,r7
      000084 C4               [12]  449 	swap	a
      000085 CF               [12]  450 	xch	a,r7
      000086 6F               [12]  451 	xrl	a,r7
      000087 CF               [12]  452 	xch	a,r7
      000088 54 F0            [12]  453 	anl	a,#0xf0
      00008A CF               [12]  454 	xch	a,r7
      00008B 6F               [12]  455 	xrl	a,r7
      00008C FE               [12]  456 	mov	r6,a
      00008D 74 21            [12]  457 	mov	a,#0x21
      00008F 2F               [12]  458 	add	a,r7
      000090 FC               [12]  459 	mov	r4,a
      000091 74 FF            [12]  460 	mov	a,#0xff
      000093 3E               [12]  461 	addc	a,r6
      000094 FD               [12]  462 	mov	r5,a
      000095 8C 82            [24]  463 	mov	dpl,r4
      000097 8D 83            [24]  464 	mov	dph,r5
      000099 74 01            [12]  465 	mov	a,#0x01
      00009B F0               [24]  466 	movx	@dptr,a
                           000025   467 	C$compactflash.c$7$1_0$8 ==.
                                    468 ;	compactflash.c:7: cfWriteCommand(device, 0xef);  // command 'set features'
      00009C 74 27            [12]  469 	mov	a,#0x27
      00009E 2F               [12]  470 	add	a,r7
      00009F FF               [12]  471 	mov	r7,a
      0000A0 74 FF            [12]  472 	mov	a,#0xff
      0000A2 3E               [12]  473 	addc	a,r6
      0000A3 FE               [12]  474 	mov	r6,a
      0000A4 8F 82            [24]  475 	mov	dpl,r7
      0000A6 8E 83            [24]  476 	mov	dph,r6
      0000A8 74 EF            [12]  477 	mov	a,#0xef
      0000AA F0               [24]  478 	movx	@dptr,a
                           000034   479 	C$compactflash.c$8$1_0$8 ==.
                                    480 ;	compactflash.c:8: }
                           000034   481 	C$compactflash.c$8$1_0$8 ==.
                           000034   482 	XG$cfInit$0$0 ==.
      0000AB 02 00 18         [24]  483 	ljmp	__sdcc_banked_ret
                                    484 ;------------------------------------------------------------
                                    485 ;Allocation info for local variables in function 'cfWaitIdle'
                                    486 ;------------------------------------------------------------
                                    487 ;device                    Allocated with name '_cfWaitIdle_device_65536_9'
                                    488 ;status                    Allocated to registers r6 
                                    489 ;------------------------------------------------------------
                           000037   490 	G$cfWaitIdle$0$0 ==.
                           000037   491 	C$compactflash.c$10$1_0$10 ==.
                                    492 ;	compactflash.c:10: void cfWaitIdle(char device)
                                    493 ;	-----------------------------------------
                                    494 ;	 function cfWaitIdle
                                    495 ;	-----------------------------------------
      0000AE                        496 _cfWaitIdle:
      0000AE E5 82            [12]  497 	mov	a,dpl
      0000B0 90 40 01         [24]  498 	mov	dptr,#_cfWaitIdle_device_65536_9
      0000B3 F0               [24]  499 	movx	@dptr,a
                           00003D   500 	C$compactflash.c$13$2_0$11 ==.
                                    501 ;	compactflash.c:13: do
      0000B4 E0               [24]  502 	movx	a,@dptr
      0000B5 FF               [12]  503 	mov	r7,a
      0000B6                        504 00101$:
                           00003F   505 	C$compactflash.c$15$2_0$11 ==.
                                    506 ;	compactflash.c:15: status = cfReadStatus(device);
      0000B6 8F 05            [24]  507 	mov	ar5,r7
      0000B8 E4               [12]  508 	clr	a
      0000B9 C4               [12]  509 	swap	a
      0000BA 54 F0            [12]  510 	anl	a,#0xf0
      0000BC CD               [12]  511 	xch	a,r5
      0000BD C4               [12]  512 	swap	a
      0000BE CD               [12]  513 	xch	a,r5
      0000BF 6D               [12]  514 	xrl	a,r5
      0000C0 CD               [12]  515 	xch	a,r5
      0000C1 54 F0            [12]  516 	anl	a,#0xf0
      0000C3 CD               [12]  517 	xch	a,r5
      0000C4 6D               [12]  518 	xrl	a,r5
      0000C5 FE               [12]  519 	mov	r6,a
      0000C6 74 27            [12]  520 	mov	a,#0x27
      0000C8 2D               [12]  521 	add	a,r5
      0000C9 FD               [12]  522 	mov	r5,a
      0000CA 74 FF            [12]  523 	mov	a,#0xff
      0000CC 3E               [12]  524 	addc	a,r6
      0000CD FE               [12]  525 	mov	r6,a
      0000CE 8D 82            [24]  526 	mov	dpl,r5
      0000D0 8E 83            [24]  527 	mov	dph,r6
      0000D2 E0               [24]  528 	movx	a,@dptr
                           00005C   529 	C$compactflash.c$17$1_0$10 ==.
                                    530 ;	compactflash.c:17: while((status & 0x80)!=0);
      0000D3 FE               [12]  531 	mov	r6,a
      0000D4 20 E7 DF         [24]  532 	jb	acc.7,00101$
                           000060   533 	C$compactflash.c$18$1_0$10 ==.
                                    534 ;	compactflash.c:18: }
                           000060   535 	C$compactflash.c$18$1_0$10 ==.
                           000060   536 	XG$cfWaitIdle$0$0 ==.
      0000D7 02 00 18         [24]  537 	ljmp	__sdcc_banked_ret
                                    538 ;------------------------------------------------------------
                                    539 ;Allocation info for local variables in function 'cfWaitCommandReady'
                                    540 ;------------------------------------------------------------
                                    541 ;device                    Allocated with name '_cfWaitCommandReady_device_65536_12'
                                    542 ;status                    Allocated to registers r6 
                                    543 ;------------------------------------------------------------
                           000063   544 	G$cfWaitCommandReady$0$0 ==.
                           000063   545 	C$compactflash.c$20$1_0$13 ==.
                                    546 ;	compactflash.c:20: void cfWaitCommandReady(char device)
                                    547 ;	-----------------------------------------
                                    548 ;	 function cfWaitCommandReady
                                    549 ;	-----------------------------------------
      0000DA                        550 _cfWaitCommandReady:
      0000DA E5 82            [12]  551 	mov	a,dpl
      0000DC 90 40 02         [24]  552 	mov	dptr,#_cfWaitCommandReady_device_65536_12
      0000DF F0               [24]  553 	movx	@dptr,a
                           000069   554 	C$compactflash.c$24$2_0$14 ==.
                                    555 ;	compactflash.c:24: do
      0000E0 E0               [24]  556 	movx	a,@dptr
      0000E1 FF               [12]  557 	mov	r7,a
      0000E2                        558 00101$:
                           00006B   559 	C$compactflash.c$26$2_0$14 ==.
                                    560 ;	compactflash.c:26: status = cfReadStatus(device);
      0000E2 8F 05            [24]  561 	mov	ar5,r7
      0000E4 E4               [12]  562 	clr	a
      0000E5 C4               [12]  563 	swap	a
      0000E6 54 F0            [12]  564 	anl	a,#0xf0
      0000E8 CD               [12]  565 	xch	a,r5
      0000E9 C4               [12]  566 	swap	a
      0000EA CD               [12]  567 	xch	a,r5
      0000EB 6D               [12]  568 	xrl	a,r5
      0000EC CD               [12]  569 	xch	a,r5
      0000ED 54 F0            [12]  570 	anl	a,#0xf0
      0000EF CD               [12]  571 	xch	a,r5
      0000F0 6D               [12]  572 	xrl	a,r5
      0000F1 FE               [12]  573 	mov	r6,a
      0000F2 74 27            [12]  574 	mov	a,#0x27
      0000F4 2D               [12]  575 	add	a,r5
      0000F5 FD               [12]  576 	mov	r5,a
      0000F6 74 FF            [12]  577 	mov	a,#0xff
      0000F8 3E               [12]  578 	addc	a,r6
      0000F9 FE               [12]  579 	mov	r6,a
      0000FA 8D 82            [24]  580 	mov	dpl,r5
      0000FC 8E 83            [24]  581 	mov	dph,r6
      0000FE E0               [24]  582 	movx	a,@dptr
      0000FF FE               [12]  583 	mov	r6,a
                           000089   584 	C$compactflash.c$28$1_0$13 ==.
                                    585 ;	compactflash.c:28: while((status & 0xc0)!=0x40);
      000100 53 06 C0         [24]  586 	anl	ar6,#0xc0
      000103 7D 00            [12]  587 	mov	r5,#0x00
      000105 BE 40 DA         [24]  588 	cjne	r6,#0x40,00101$
      000108 BD 00 D7         [24]  589 	cjne	r5,#0x00,00101$
                           000094   590 	C$compactflash.c$29$1_0$13 ==.
                                    591 ;	compactflash.c:29: }
                           000094   592 	C$compactflash.c$29$1_0$13 ==.
                           000094   593 	XG$cfWaitCommandReady$0$0 ==.
      00010B 02 00 18         [24]  594 	ljmp	__sdcc_banked_ret
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'cfWaitDataReady'
                                    597 ;------------------------------------------------------------
                                    598 ;device                    Allocated with name '_cfWaitDataReady_device_65536_15'
                                    599 ;status                    Allocated to registers r6 
                                    600 ;------------------------------------------------------------
                           000097   601 	G$cfWaitDataReady$0$0 ==.
                           000097   602 	C$compactflash.c$31$1_0$16 ==.
                                    603 ;	compactflash.c:31: void cfWaitDataReady(char device)
                                    604 ;	-----------------------------------------
                                    605 ;	 function cfWaitDataReady
                                    606 ;	-----------------------------------------
      00010E                        607 _cfWaitDataReady:
      00010E E5 82            [12]  608 	mov	a,dpl
      000110 90 40 03         [24]  609 	mov	dptr,#_cfWaitDataReady_device_65536_15
      000113 F0               [24]  610 	movx	@dptr,a
                           00009D   611 	C$compactflash.c$34$2_0$17 ==.
                                    612 ;	compactflash.c:34: do
      000114 E0               [24]  613 	movx	a,@dptr
      000115 FF               [12]  614 	mov	r7,a
      000116                        615 00101$:
                           00009F   616 	C$compactflash.c$36$2_0$17 ==.
                                    617 ;	compactflash.c:36: status = cfReadStatus(device);
      000116 8F 05            [24]  618 	mov	ar5,r7
      000118 E4               [12]  619 	clr	a
      000119 C4               [12]  620 	swap	a
      00011A 54 F0            [12]  621 	anl	a,#0xf0
      00011C CD               [12]  622 	xch	a,r5
      00011D C4               [12]  623 	swap	a
      00011E CD               [12]  624 	xch	a,r5
      00011F 6D               [12]  625 	xrl	a,r5
      000120 CD               [12]  626 	xch	a,r5
      000121 54 F0            [12]  627 	anl	a,#0xf0
      000123 CD               [12]  628 	xch	a,r5
      000124 6D               [12]  629 	xrl	a,r5
      000125 FE               [12]  630 	mov	r6,a
      000126 74 27            [12]  631 	mov	a,#0x27
      000128 2D               [12]  632 	add	a,r5
      000129 FD               [12]  633 	mov	r5,a
      00012A 74 FF            [12]  634 	mov	a,#0xff
      00012C 3E               [12]  635 	addc	a,r6
      00012D FE               [12]  636 	mov	r6,a
      00012E 8D 82            [24]  637 	mov	dpl,r5
      000130 8E 83            [24]  638 	mov	dph,r6
      000132 E0               [24]  639 	movx	a,@dptr
      000133 FE               [12]  640 	mov	r6,a
                           0000BD   641 	C$compactflash.c$38$1_0$16 ==.
                                    642 ;	compactflash.c:38: while((status & 0x88)!=0x08);
      000134 53 06 88         [24]  643 	anl	ar6,#0x88
      000137 7D 00            [12]  644 	mov	r5,#0x00
      000139 BE 08 DA         [24]  645 	cjne	r6,#0x08,00101$
      00013C BD 00 D7         [24]  646 	cjne	r5,#0x00,00101$
                           0000C8   647 	C$compactflash.c$39$1_0$16 ==.
                                    648 ;	compactflash.c:39: }
                           0000C8   649 	C$compactflash.c$39$1_0$16 ==.
                           0000C8   650 	XG$cfWaitDataReady$0$0 ==.
      00013F 02 00 18         [24]  651 	ljmp	__sdcc_banked_ret
                                    652 ;------------------------------------------------------------
                                    653 ;Allocation info for local variables in function 'cfReadSector'
                                    654 ;------------------------------------------------------------
                                    655 ;status                    Allocated to registers r5 
                                    656 ;i                         Allocated with name '_cfReadSector_i_65536_19'
                                    657 ;idx                       Allocated to registers 
                                    658 ;buf                       Allocated with name '_cfReadSector_PARM_2'
                                    659 ;sectorCount               Allocated with name '_cfReadSector_PARM_3'
                                    660 ;device                    Allocated with name '_cfReadSector_device_65536_18'
                                    661 ;------------------------------------------------------------
                           0000CB   662 	G$cfReadSector$0$0 ==.
                           0000CB   663 	C$compactflash.c$41$1_0$19 ==.
                                    664 ;	compactflash.c:41: void cfReadSector(char device, char* buf, unsigned int sectorCount)
                                    665 ;	-----------------------------------------
                                    666 ;	 function cfReadSector
                                    667 ;	-----------------------------------------
      000142                        668 _cfReadSector:
      000142 E5 82            [12]  669 	mov	a,dpl
      000144 90 40 09         [24]  670 	mov	dptr,#_cfReadSector_device_65536_18
      000147 F0               [24]  671 	movx	@dptr,a
                           0000D1   672 	C$compactflash.c$49$1_0$19 ==.
                                    673 ;	compactflash.c:49: P1 = 0xe1;
      000148 75 90 E1         [24]  674 	mov	_P1,#0xe1
                           0000D4   675 	C$compactflash.c$50$1_0$19 ==.
                                    676 ;	compactflash.c:50: cfWaitIdle(device);
      00014B E0               [24]  677 	movx	a,@dptr
      00014C FF               [12]  678 	mov	r7,a
      00014D F5 82            [12]  679 	mov	dpl,a
      00014F C0 07            [24]  680 	push	ar7
      000151 78 AE            [12]  681 	mov	r0,#_cfWaitIdle
      000153 79 00            [12]  682 	mov	r1,#(_cfWaitIdle >> 8)
      000155 7A 00            [12]  683 	mov	r2,#(_cfWaitIdle >> 16)
      000157 12 00 06         [24]  684 	lcall	__sdcc_banked_call
      00015A D0 07            [24]  685 	pop	ar7
                           0000E5   686 	C$compactflash.c$52$1_0$19 ==.
                                    687 ;	compactflash.c:52: P1 = 0xe2;
      00015C 75 90 E2         [24]  688 	mov	_P1,#0xe2
                           0000E8   689 	C$compactflash.c$53$1_0$19 ==.
                                    690 ;	compactflash.c:53: cfWriteSectorCount(device, 0x01);
      00015F 8F 05            [24]  691 	mov	ar5,r7
      000161 E4               [12]  692 	clr	a
      000162 CD               [12]  693 	xch	a,r5
      000163 C4               [12]  694 	swap	a
      000164 CD               [12]  695 	xch	a,r5
      000165 6D               [12]  696 	xrl	a,r5
      000166 CD               [12]  697 	xch	a,r5
      000167 54 F0            [12]  698 	anl	a,#0xf0
      000169 CD               [12]  699 	xch	a,r5
      00016A 6D               [12]  700 	xrl	a,r5
      00016B FE               [12]  701 	mov	r6,a
      00016C 74 22            [12]  702 	mov	a,#0x22
      00016E 2D               [12]  703 	add	a,r5
      00016F FB               [12]  704 	mov	r3,a
      000170 74 FF            [12]  705 	mov	a,#0xff
      000172 3E               [12]  706 	addc	a,r6
      000173 FC               [12]  707 	mov	r4,a
      000174 8B 82            [24]  708 	mov	dpl,r3
      000176 8C 83            [24]  709 	mov	dph,r4
      000178 74 01            [12]  710 	mov	a,#0x01
      00017A F0               [24]  711 	movx	@dptr,a
                           000104   712 	C$compactflash.c$55$1_0$19 ==.
                                    713 ;	compactflash.c:55: P1 = 0xe3;
      00017B 75 90 E3         [24]  714 	mov	_P1,#0xe3
                           000107   715 	C$compactflash.c$56$1_0$19 ==.
                                    716 ;	compactflash.c:56: cfWaitIdle(device);
      00017E 8F 82            [24]  717 	mov	dpl,r7
      000180 C0 07            [24]  718 	push	ar7
      000182 C0 06            [24]  719 	push	ar6
      000184 C0 05            [24]  720 	push	ar5
      000186 78 AE            [12]  721 	mov	r0,#_cfWaitIdle
      000188 79 00            [12]  722 	mov	r1,#(_cfWaitIdle >> 8)
      00018A 7A 00            [12]  723 	mov	r2,#(_cfWaitIdle >> 16)
      00018C 12 00 06         [24]  724 	lcall	__sdcc_banked_call
      00018F D0 05            [24]  725 	pop	ar5
      000191 D0 06            [24]  726 	pop	ar6
      000193 D0 07            [24]  727 	pop	ar7
                           00011E   728 	C$compactflash.c$58$1_0$19 ==.
                                    729 ;	compactflash.c:58: P1 = 0xe4;
      000195 75 90 E4         [24]  730 	mov	_P1,#0xe4
                           000121   731 	C$compactflash.c$59$1_0$19 ==.
                                    732 ;	compactflash.c:59: cfWriteLBA0(device, 0x00);
      000198 74 23            [12]  733 	mov	a,#0x23
      00019A 2D               [12]  734 	add	a,r5
      00019B FB               [12]  735 	mov	r3,a
      00019C 74 FF            [12]  736 	mov	a,#0xff
      00019E 3E               [12]  737 	addc	a,r6
      00019F FC               [12]  738 	mov	r4,a
      0001A0 8B 82            [24]  739 	mov	dpl,r3
      0001A2 8C 83            [24]  740 	mov	dph,r4
      0001A4 E4               [12]  741 	clr	a
      0001A5 F0               [24]  742 	movx	@dptr,a
                           00012F   743 	C$compactflash.c$61$1_0$19 ==.
                                    744 ;	compactflash.c:61: P1 = 0xe5;
      0001A6 75 90 E5         [24]  745 	mov	_P1,#0xe5
                           000132   746 	C$compactflash.c$62$1_0$19 ==.
                                    747 ;	compactflash.c:62: cfWaitIdle(device);
      0001A9 8F 82            [24]  748 	mov	dpl,r7
      0001AB C0 07            [24]  749 	push	ar7
      0001AD C0 06            [24]  750 	push	ar6
      0001AF C0 05            [24]  751 	push	ar5
      0001B1 78 AE            [12]  752 	mov	r0,#_cfWaitIdle
      0001B3 79 00            [12]  753 	mov	r1,#(_cfWaitIdle >> 8)
      0001B5 7A 00            [12]  754 	mov	r2,#(_cfWaitIdle >> 16)
      0001B7 12 00 06         [24]  755 	lcall	__sdcc_banked_call
      0001BA D0 05            [24]  756 	pop	ar5
      0001BC D0 06            [24]  757 	pop	ar6
      0001BE D0 07            [24]  758 	pop	ar7
                           000149   759 	C$compactflash.c$64$1_0$19 ==.
                                    760 ;	compactflash.c:64: P1 = 0xe6;
      0001C0 75 90 E6         [24]  761 	mov	_P1,#0xe6
                           00014C   762 	C$compactflash.c$65$1_0$19 ==.
                                    763 ;	compactflash.c:65: cfWriteLBA1(device, 0x00);
      0001C3 74 24            [12]  764 	mov	a,#0x24
      0001C5 2D               [12]  765 	add	a,r5
      0001C6 FB               [12]  766 	mov	r3,a
      0001C7 74 FF            [12]  767 	mov	a,#0xff
      0001C9 3E               [12]  768 	addc	a,r6
      0001CA FC               [12]  769 	mov	r4,a
      0001CB 8B 82            [24]  770 	mov	dpl,r3
      0001CD 8C 83            [24]  771 	mov	dph,r4
      0001CF E4               [12]  772 	clr	a
      0001D0 F0               [24]  773 	movx	@dptr,a
                           00015A   774 	C$compactflash.c$67$1_0$19 ==.
                                    775 ;	compactflash.c:67: P1 = 0xe7;
      0001D1 75 90 E7         [24]  776 	mov	_P1,#0xe7
                           00015D   777 	C$compactflash.c$68$1_0$19 ==.
                                    778 ;	compactflash.c:68: cfWaitIdle(device);
      0001D4 8F 82            [24]  779 	mov	dpl,r7
      0001D6 C0 07            [24]  780 	push	ar7
      0001D8 C0 06            [24]  781 	push	ar6
      0001DA C0 05            [24]  782 	push	ar5
      0001DC 78 AE            [12]  783 	mov	r0,#_cfWaitIdle
      0001DE 79 00            [12]  784 	mov	r1,#(_cfWaitIdle >> 8)
      0001E0 7A 00            [12]  785 	mov	r2,#(_cfWaitIdle >> 16)
      0001E2 12 00 06         [24]  786 	lcall	__sdcc_banked_call
      0001E5 D0 05            [24]  787 	pop	ar5
      0001E7 D0 06            [24]  788 	pop	ar6
      0001E9 D0 07            [24]  789 	pop	ar7
                           000174   790 	C$compactflash.c$70$1_0$19 ==.
                                    791 ;	compactflash.c:70: P1 = 0xe8;
      0001EB 75 90 E8         [24]  792 	mov	_P1,#0xe8
                           000177   793 	C$compactflash.c$71$1_0$19 ==.
                                    794 ;	compactflash.c:71: cfWriteLBA2(device, 0x00);
      0001EE 74 25            [12]  795 	mov	a,#0x25
      0001F0 2D               [12]  796 	add	a,r5
      0001F1 FB               [12]  797 	mov	r3,a
      0001F2 74 FF            [12]  798 	mov	a,#0xff
      0001F4 3E               [12]  799 	addc	a,r6
      0001F5 FC               [12]  800 	mov	r4,a
      0001F6 8B 82            [24]  801 	mov	dpl,r3
      0001F8 8C 83            [24]  802 	mov	dph,r4
      0001FA E4               [12]  803 	clr	a
      0001FB F0               [24]  804 	movx	@dptr,a
                           000185   805 	C$compactflash.c$73$1_0$19 ==.
                                    806 ;	compactflash.c:73: P1 = 0xe9;
      0001FC 75 90 E9         [24]  807 	mov	_P1,#0xe9
                           000188   808 	C$compactflash.c$74$1_0$19 ==.
                                    809 ;	compactflash.c:74: cfWaitIdle(device);
      0001FF 8F 82            [24]  810 	mov	dpl,r7
      000201 C0 07            [24]  811 	push	ar7
      000203 C0 06            [24]  812 	push	ar6
      000205 C0 05            [24]  813 	push	ar5
      000207 78 AE            [12]  814 	mov	r0,#_cfWaitIdle
      000209 79 00            [12]  815 	mov	r1,#(_cfWaitIdle >> 8)
      00020B 7A 00            [12]  816 	mov	r2,#(_cfWaitIdle >> 16)
      00020D 12 00 06         [24]  817 	lcall	__sdcc_banked_call
      000210 D0 05            [24]  818 	pop	ar5
      000212 D0 06            [24]  819 	pop	ar6
      000214 D0 07            [24]  820 	pop	ar7
                           00019F   821 	C$compactflash.c$76$1_0$19 ==.
                                    822 ;	compactflash.c:76: P1 = 0xea;
      000216 75 90 EA         [24]  823 	mov	_P1,#0xea
                           0001A2   824 	C$compactflash.c$77$1_0$19 ==.
                                    825 ;	compactflash.c:77: cfWriteLBA3(device, 0xe0);
      000219 74 26            [12]  826 	mov	a,#0x26
      00021B 2D               [12]  827 	add	a,r5
      00021C FD               [12]  828 	mov	r5,a
      00021D 74 FF            [12]  829 	mov	a,#0xff
      00021F 3E               [12]  830 	addc	a,r6
      000220 FE               [12]  831 	mov	r6,a
      000221 8D 82            [24]  832 	mov	dpl,r5
      000223 8E 83            [24]  833 	mov	dph,r6
      000225 74 E0            [12]  834 	mov	a,#0xe0
      000227 F0               [24]  835 	movx	@dptr,a
                           0001B1   836 	C$compactflash.c$82$2_0$20 ==.
                                    837 ;	compactflash.c:82: do
      000228                        838 00101$:
                           0001B1   839 	C$compactflash.c$84$2_0$20 ==.
                                    840 ;	compactflash.c:84: P1 = 0xeb;
      000228 75 90 EB         [24]  841 	mov	_P1,#0xeb
                           0001B4   842 	C$compactflash.c$85$2_0$20 ==.
                                    843 ;	compactflash.c:85: cfWaitCommandReady(device);
      00022B 8F 82            [24]  844 	mov	dpl,r7
      00022D C0 07            [24]  845 	push	ar7
      00022F 78 DA            [12]  846 	mov	r0,#_cfWaitCommandReady
      000231 79 00            [12]  847 	mov	r1,#(_cfWaitCommandReady >> 8)
      000233 7A 00            [12]  848 	mov	r2,#(_cfWaitCommandReady >> 16)
      000235 12 00 06         [24]  849 	lcall	__sdcc_banked_call
      000238 D0 07            [24]  850 	pop	ar7
                           0001C3   851 	C$compactflash.c$87$2_0$20 ==.
                                    852 ;	compactflash.c:87: P1 = 0xec;
      00023A 75 90 EC         [24]  853 	mov	_P1,#0xec
                           0001C6   854 	C$compactflash.c$88$2_0$20 ==.
                                    855 ;	compactflash.c:88: cfWriteCommand(device, 0x20);
      00023D 8F 05            [24]  856 	mov	ar5,r7
      00023F E4               [12]  857 	clr	a
      000240 CD               [12]  858 	xch	a,r5
      000241 C4               [12]  859 	swap	a
      000242 CD               [12]  860 	xch	a,r5
      000243 6D               [12]  861 	xrl	a,r5
      000244 CD               [12]  862 	xch	a,r5
      000245 54 F0            [12]  863 	anl	a,#0xf0
      000247 CD               [12]  864 	xch	a,r5
      000248 6D               [12]  865 	xrl	a,r5
      000249 FE               [12]  866 	mov	r6,a
      00024A 74 27            [12]  867 	mov	a,#0x27
      00024C 2D               [12]  868 	add	a,r5
      00024D FD               [12]  869 	mov	r5,a
      00024E 74 FF            [12]  870 	mov	a,#0xff
      000250 3E               [12]  871 	addc	a,r6
      000251 FE               [12]  872 	mov	r6,a
      000252 8D 82            [24]  873 	mov	dpl,r5
      000254 8E 83            [24]  874 	mov	dph,r6
      000256 74 20            [12]  875 	mov	a,#0x20
      000258 F0               [24]  876 	movx	@dptr,a
                           0001E2   877 	C$compactflash.c$90$2_0$20 ==.
                                    878 ;	compactflash.c:90: P1 = 0xed;
      000259 75 90 ED         [24]  879 	mov	_P1,#0xed
                           0001E5   880 	C$compactflash.c$91$2_0$20 ==.
                                    881 ;	compactflash.c:91: cfWaitDataReady(device);
      00025C 8F 82            [24]  882 	mov	dpl,r7
      00025E C0 07            [24]  883 	push	ar7
      000260 C0 06            [24]  884 	push	ar6
      000262 C0 05            [24]  885 	push	ar5
      000264 78 0E            [12]  886 	mov	r0,#_cfWaitDataReady
      000266 79 01            [12]  887 	mov	r1,#(_cfWaitDataReady >> 8)
      000268 7A 00            [12]  888 	mov	r2,#(_cfWaitDataReady >> 16)
      00026A 12 00 06         [24]  889 	lcall	__sdcc_banked_call
      00026D D0 05            [24]  890 	pop	ar5
      00026F D0 06            [24]  891 	pop	ar6
      000271 D0 07            [24]  892 	pop	ar7
                           0001FC   893 	C$compactflash.c$93$2_0$20 ==.
                                    894 ;	compactflash.c:93: P1 = 0xee;
      000273 75 90 EE         [24]  895 	mov	_P1,#0xee
                           0001FF   896 	C$compactflash.c$94$2_0$20 ==.
                                    897 ;	compactflash.c:94: status = cfReadStatus(device);
      000276 8D 82            [24]  898 	mov	dpl,r5
      000278 8E 83            [24]  899 	mov	dph,r6
      00027A E0               [24]  900 	movx	a,@dptr
                           000204   901 	C$compactflash.c$96$2_0$20 ==.
                                    902 ;	compactflash.c:96: P1 = 0xef;
                           000204   903 	C$compactflash.c$98$1_0$19 ==.
                                    904 ;	compactflash.c:98: while((status & 0x01)!=0);
      00027B 75 90 EF         [24]  905 	mov	_P1,#0xef
      00027E 20 E0 A7         [24]  906 	jb	acc.0,00101$
                           00020A   907 	C$compactflash.c$101$2_0$21 ==.
                                    908 ;	compactflash.c:101: while(i++ < SECTOR_SIZE)
      000281 90 40 09         [24]  909 	mov	dptr,#_cfReadSector_device_65536_18
      000284 E0               [24]  910 	movx	a,@dptr
      000285 FF               [12]  911 	mov	r7,a
      000286 90 40 04         [24]  912 	mov	dptr,#_cfReadSector_PARM_2
      000289 E0               [24]  913 	movx	a,@dptr
      00028A FC               [12]  914 	mov	r4,a
      00028B A3               [24]  915 	inc	dptr
      00028C E0               [24]  916 	movx	a,@dptr
      00028D FD               [12]  917 	mov	r5,a
      00028E A3               [24]  918 	inc	dptr
      00028F E0               [24]  919 	movx	a,@dptr
      000290 FE               [12]  920 	mov	r6,a
      000291 E4               [12]  921 	clr	a
      000292 F5 08            [12]  922 	mov	_cfReadSector_i_65536_19,a
      000294 F5 09            [12]  923 	mov	(_cfReadSector_i_65536_19 + 1),a
      000296                        924 00104$:
      000296 A8 08            [24]  925 	mov	r0,_cfReadSector_i_65536_19
      000298 A9 09            [24]  926 	mov	r1,(_cfReadSector_i_65536_19 + 1)
      00029A 05 08            [12]  927 	inc	_cfReadSector_i_65536_19
      00029C E4               [12]  928 	clr	a
      00029D B5 08 02         [24]  929 	cjne	a,_cfReadSector_i_65536_19,00127$
      0002A0 05 09            [12]  930 	inc	(_cfReadSector_i_65536_19 + 1)
      0002A2                        931 00127$:
      0002A2 74 FE            [12]  932 	mov	a,#0x100 - 0x02
      0002A4 29               [12]  933 	add	a,r1
      0002A5 40 5F            [24]  934 	jc	00106$
                           000230   935 	C$compactflash.c$103$2_0$21 ==.
                                    936 ;	compactflash.c:103: P1 = 0xf0;
      0002A7 75 90 F0         [24]  937 	mov	_P1,#0xf0
                           000233   938 	C$compactflash.c$104$2_0$21 ==.
                                    939 ;	compactflash.c:104: cfWaitDataReady(device);
      0002AA 8F 82            [24]  940 	mov	dpl,r7
      0002AC C0 07            [24]  941 	push	ar7
      0002AE C0 06            [24]  942 	push	ar6
      0002B0 C0 05            [24]  943 	push	ar5
      0002B2 C0 04            [24]  944 	push	ar4
      0002B4 78 0E            [12]  945 	mov	r0,#_cfWaitDataReady
      0002B6 79 01            [12]  946 	mov	r1,#(_cfWaitDataReady >> 8)
      0002B8 7A 00            [12]  947 	mov	r2,#(_cfWaitDataReady >> 16)
      0002BA 12 00 06         [24]  948 	lcall	__sdcc_banked_call
      0002BD D0 04            [24]  949 	pop	ar4
      0002BF D0 05            [24]  950 	pop	ar5
      0002C1 D0 06            [24]  951 	pop	ar6
      0002C3 D0 07            [24]  952 	pop	ar7
                           00024E   953 	C$compactflash.c$106$2_0$21 ==.
                                    954 ;	compactflash.c:106: P1 = 0xf1;
      0002C5 75 90 F1         [24]  955 	mov	_P1,#0xf1
                           000251   956 	C$compactflash.c$107$2_0$21 ==.
                                    957 ;	compactflash.c:107: buf[i+idx] = cfReadData(device);
      0002C8 E5 08            [12]  958 	mov	a,_cfReadSector_i_65536_19
      0002CA 2C               [12]  959 	add	a,r4
      0002CB F8               [12]  960 	mov	r0,a
      0002CC E5 09            [12]  961 	mov	a,(_cfReadSector_i_65536_19 + 1)
      0002CE 3D               [12]  962 	addc	a,r5
      0002CF F9               [12]  963 	mov	r1,a
      0002D0 8E 03            [24]  964 	mov	ar3,r6
      0002D2 C0 04            [24]  965 	push	ar4
      0002D4 C0 05            [24]  966 	push	ar5
      0002D6 C0 06            [24]  967 	push	ar6
      0002D8 8F 02            [24]  968 	mov	ar2,r7
      0002DA E4               [12]  969 	clr	a
      0002DB CA               [12]  970 	xch	a,r2
      0002DC C4               [12]  971 	swap	a
      0002DD CA               [12]  972 	xch	a,r2
      0002DE 6A               [12]  973 	xrl	a,r2
      0002DF CA               [12]  974 	xch	a,r2
      0002E0 54 F0            [12]  975 	anl	a,#0xf0
      0002E2 CA               [12]  976 	xch	a,r2
      0002E3 6A               [12]  977 	xrl	a,r2
      0002E4 FE               [12]  978 	mov	r6,a
      0002E5 74 20            [12]  979 	mov	a,#0x20
      0002E7 2A               [12]  980 	add	a,r2
      0002E8 FA               [12]  981 	mov	r2,a
      0002E9 74 FF            [12]  982 	mov	a,#0xff
      0002EB 3E               [12]  983 	addc	a,r6
      0002EC FE               [12]  984 	mov	r6,a
      0002ED 8A 82            [24]  985 	mov	dpl,r2
      0002EF 8E 83            [24]  986 	mov	dph,r6
      0002F1 E0               [24]  987 	movx	a,@dptr
      0002F2 88 82            [24]  988 	mov	dpl,r0
      0002F4 89 83            [24]  989 	mov	dph,r1
      0002F6 8B F0            [24]  990 	mov	b,r3
      0002F8 12 08 58         [24]  991 	lcall	__gptrput
                           000284   992 	C$compactflash.c$109$2_0$21 ==.
                                    993 ;	compactflash.c:109: P1 = 0xf2;
      0002FB 75 90 F2         [24]  994 	mov	_P1,#0xf2
      0002FE D0 06            [24]  995 	pop	ar6
      000300 D0 05            [24]  996 	pop	ar5
      000302 D0 04            [24]  997 	pop	ar4
      000304 80 90            [24]  998 	sjmp	00104$
      000306                        999 00106$:
                           00028F  1000 	C$compactflash.c$114$1_0$19 ==.
                                   1001 ;	compactflash.c:114: P1 = 0xf3;
      000306 75 90 F3         [24] 1002 	mov	_P1,#0xf3
                           000292  1003 	C$compactflash.c$115$1_0$19 ==.
                                   1004 ;	compactflash.c:115: }
                           000292  1005 	C$compactflash.c$115$1_0$19 ==.
                           000292  1006 	XG$cfReadSector$0$0 ==.
      000309 02 00 18         [24] 1007 	ljmp	__sdcc_banked_ret
                                   1008 ;------------------------------------------------------------
                                   1009 ;Allocation info for local variables in function 'cfTest'
                                   1010 ;------------------------------------------------------------
                                   1011 ;buf                       Allocated with name '_cfTest_PARM_2'
                                   1012 ;device                    Allocated with name '_cfTest_device_65536_22'
                                   1013 ;------------------------------------------------------------
                           000295  1014 	G$cfTest$0$0 ==.
                           000295  1015 	C$compactflash.c$119$1_0$23 ==.
                                   1016 ;	compactflash.c:119: void cfTest(char device, char* buf)
                                   1017 ;	-----------------------------------------
                                   1018 ;	 function cfTest
                                   1019 ;	-----------------------------------------
      00030C                       1020 _cfTest:
      00030C E5 82            [12] 1021 	mov	a,dpl
      00030E 90 40 0D         [24] 1022 	mov	dptr,#_cfTest_device_65536_22
      000311 F0               [24] 1023 	movx	@dptr,a
                           00029B  1024 	C$compactflash.c$124$1_0$23 ==.
                                   1025 ;	compactflash.c:124: P1 = 0xc2;
      000312 75 90 C2         [24] 1026 	mov	_P1,#0xc2
                           00029E  1027 	C$compactflash.c$125$1_0$23 ==.
                                   1028 ;	compactflash.c:125: cfInit(device);
      000315 E0               [24] 1029 	movx	a,@dptr
      000316 FF               [12] 1030 	mov	r7,a
      000317 F5 82            [12] 1031 	mov	dpl,a
      000319 C0 07            [24] 1032 	push	ar7
      00031B 78 77            [12] 1033 	mov	r0,#_cfInit
      00031D 79 00            [12] 1034 	mov	r1,#(_cfInit >> 8)
      00031F 7A 00            [12] 1035 	mov	r2,#(_cfInit >> 16)
      000321 12 00 06         [24] 1036 	lcall	__sdcc_banked_call
      000324 D0 07            [24] 1037 	pop	ar7
                           0002AF  1038 	C$compactflash.c$127$1_0$23 ==.
                                   1039 ;	compactflash.c:127: P1 = 0xc3;
      000326 75 90 C3         [24] 1040 	mov	_P1,#0xc3
                           0002B2  1041 	C$compactflash.c$128$1_0$23 ==.
                                   1042 ;	compactflash.c:128: cfReadSector(device, buf, 1);
      000329 90 40 0A         [24] 1043 	mov	dptr,#_cfTest_PARM_2
      00032C E0               [24] 1044 	movx	a,@dptr
      00032D FC               [12] 1045 	mov	r4,a
      00032E A3               [24] 1046 	inc	dptr
      00032F E0               [24] 1047 	movx	a,@dptr
      000330 FD               [12] 1048 	mov	r5,a
      000331 A3               [24] 1049 	inc	dptr
      000332 E0               [24] 1050 	movx	a,@dptr
      000333 FE               [12] 1051 	mov	r6,a
      000334 90 40 04         [24] 1052 	mov	dptr,#_cfReadSector_PARM_2
      000337 EC               [12] 1053 	mov	a,r4
      000338 F0               [24] 1054 	movx	@dptr,a
      000339 ED               [12] 1055 	mov	a,r5
      00033A A3               [24] 1056 	inc	dptr
      00033B F0               [24] 1057 	movx	@dptr,a
      00033C EE               [12] 1058 	mov	a,r6
      00033D A3               [24] 1059 	inc	dptr
      00033E F0               [24] 1060 	movx	@dptr,a
      00033F 90 40 07         [24] 1061 	mov	dptr,#_cfReadSector_PARM_3
      000342 74 01            [12] 1062 	mov	a,#0x01
      000344 F0               [24] 1063 	movx	@dptr,a
      000345 E4               [12] 1064 	clr	a
      000346 A3               [24] 1065 	inc	dptr
      000347 F0               [24] 1066 	movx	@dptr,a
      000348 8F 82            [24] 1067 	mov	dpl,r7
      00034A 78 42            [12] 1068 	mov	r0,#_cfReadSector
      00034C 79 01            [12] 1069 	mov	r1,#(_cfReadSector >> 8)
      00034E 7A 00            [12] 1070 	mov	r2,#(_cfReadSector >> 16)
      000350 12 00 06         [24] 1071 	lcall	__sdcc_banked_call
                           0002DC  1072 	C$compactflash.c$130$1_0$23 ==.
                                   1073 ;	compactflash.c:130: P1 = 0xc4;
      000353 75 90 C4         [24] 1074 	mov	_P1,#0xc4
                           0002DF  1075 	C$compactflash.c$133$1_0$23 ==.
                                   1076 ;	compactflash.c:133: }
                           0002DF  1077 	C$compactflash.c$133$1_0$23 ==.
                           0002DF  1078 	XG$cfTest$0$0 ==.
      000356 02 00 18         [24] 1079 	ljmp	__sdcc_banked_ret
                                   1080 	.area CSEG    (CODE)
                                   1081 	.area CONST   (CODE)
                                   1082 	.area XINIT   (CODE)
                                   1083 	.area CABS    (ABS,CODE)
