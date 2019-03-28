                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
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
                                    108 	.globl _uartRXBuf_PARM_3
                                    109 	.globl _uartRXBuf_PARM_2
                                    110 	.globl _uartRXStr_PARM_3
                                    111 	.globl _uartRXStr_PARM_2
                                    112 	.globl _uartTXBuf_PARM_3
                                    113 	.globl _uartTXBuf_PARM_2
                                    114 	.globl _uartTXStr_PARM_2
                                    115 	.globl _uartTX_PARM_2
                                    116 	.globl _uartInit
                                    117 	.globl _uartClose
                                    118 	.globl _uartWaitTXDone
                                    119 	.globl _uartTX
                                    120 	.globl _uartTXStr
                                    121 	.globl _uartTXBuf
                                    122 	.globl _uartWaitRXDone
                                    123 	.globl _uartRX
                                    124 	.globl _uartRXStr
                                    125 	.globl _uartRXBuf
                                    126 	.globl _uartTest1
                                    127 	.globl _uartTest2
                                    128 	.globl _uartTest3
                                    129 ;--------------------------------------------------------
                                    130 ; special function registers
                                    131 ;--------------------------------------------------------
                                    132 	.area RSEG    (ABS,DATA)
      000000                        133 	.org 0x0000
                           000080   134 G$P0$0_0$0 == 0x0080
                           000080   135 _P0	=	0x0080
                           000081   136 G$SP$0_0$0 == 0x0081
                           000081   137 _SP	=	0x0081
                           000082   138 G$DPL$0_0$0 == 0x0082
                           000082   139 _DPL	=	0x0082
                           000083   140 G$DPH$0_0$0 == 0x0083
                           000083   141 _DPH	=	0x0083
                           000087   142 G$PCON$0_0$0 == 0x0087
                           000087   143 _PCON	=	0x0087
                           000088   144 G$TCON$0_0$0 == 0x0088
                           000088   145 _TCON	=	0x0088
                           000089   146 G$TMOD$0_0$0 == 0x0089
                           000089   147 _TMOD	=	0x0089
                           00008A   148 G$TL0$0_0$0 == 0x008a
                           00008A   149 _TL0	=	0x008a
                           00008B   150 G$TL1$0_0$0 == 0x008b
                           00008B   151 _TL1	=	0x008b
                           00008C   152 G$TH0$0_0$0 == 0x008c
                           00008C   153 _TH0	=	0x008c
                           00008D   154 G$TH1$0_0$0 == 0x008d
                           00008D   155 _TH1	=	0x008d
                           000090   156 G$P1$0_0$0 == 0x0090
                           000090   157 _P1	=	0x0090
                           000098   158 G$SCON$0_0$0 == 0x0098
                           000098   159 _SCON	=	0x0098
                           000099   160 G$SBUF$0_0$0 == 0x0099
                           000099   161 _SBUF	=	0x0099
                           0000A0   162 G$P2$0_0$0 == 0x00a0
                           0000A0   163 _P2	=	0x00a0
                           0000A8   164 G$IE$0_0$0 == 0x00a8
                           0000A8   165 _IE	=	0x00a8
                           0000B0   166 G$P3$0_0$0 == 0x00b0
                           0000B0   167 _P3	=	0x00b0
                           0000B8   168 G$IP$0_0$0 == 0x00b8
                           0000B8   169 _IP	=	0x00b8
                           0000D0   170 G$PSW$0_0$0 == 0x00d0
                           0000D0   171 _PSW	=	0x00d0
                           0000E0   172 G$ACC$0_0$0 == 0x00e0
                           0000E0   173 _ACC	=	0x00e0
                           0000F0   174 G$B$0_0$0 == 0x00f0
                           0000F0   175 _B	=	0x00f0
                                    176 ;--------------------------------------------------------
                                    177 ; special function bits
                                    178 ;--------------------------------------------------------
                                    179 	.area RSEG    (ABS,DATA)
      000000                        180 	.org 0x0000
                           000080   181 G$P0_0$0_0$0 == 0x0080
                           000080   182 _P0_0	=	0x0080
                           000081   183 G$P0_1$0_0$0 == 0x0081
                           000081   184 _P0_1	=	0x0081
                           000082   185 G$P0_2$0_0$0 == 0x0082
                           000082   186 _P0_2	=	0x0082
                           000083   187 G$P0_3$0_0$0 == 0x0083
                           000083   188 _P0_3	=	0x0083
                           000084   189 G$P0_4$0_0$0 == 0x0084
                           000084   190 _P0_4	=	0x0084
                           000085   191 G$P0_5$0_0$0 == 0x0085
                           000085   192 _P0_5	=	0x0085
                           000086   193 G$P0_6$0_0$0 == 0x0086
                           000086   194 _P0_6	=	0x0086
                           000087   195 G$P0_7$0_0$0 == 0x0087
                           000087   196 _P0_7	=	0x0087
                           000088   197 G$IT0$0_0$0 == 0x0088
                           000088   198 _IT0	=	0x0088
                           000089   199 G$IE0$0_0$0 == 0x0089
                           000089   200 _IE0	=	0x0089
                           00008A   201 G$IT1$0_0$0 == 0x008a
                           00008A   202 _IT1	=	0x008a
                           00008B   203 G$IE1$0_0$0 == 0x008b
                           00008B   204 _IE1	=	0x008b
                           00008C   205 G$TR0$0_0$0 == 0x008c
                           00008C   206 _TR0	=	0x008c
                           00008D   207 G$TF0$0_0$0 == 0x008d
                           00008D   208 _TF0	=	0x008d
                           00008E   209 G$TR1$0_0$0 == 0x008e
                           00008E   210 _TR1	=	0x008e
                           00008F   211 G$TF1$0_0$0 == 0x008f
                           00008F   212 _TF1	=	0x008f
                           000090   213 G$P1_0$0_0$0 == 0x0090
                           000090   214 _P1_0	=	0x0090
                           000091   215 G$P1_1$0_0$0 == 0x0091
                           000091   216 _P1_1	=	0x0091
                           000092   217 G$P1_2$0_0$0 == 0x0092
                           000092   218 _P1_2	=	0x0092
                           000093   219 G$P1_3$0_0$0 == 0x0093
                           000093   220 _P1_3	=	0x0093
                           000094   221 G$P1_4$0_0$0 == 0x0094
                           000094   222 _P1_4	=	0x0094
                           000095   223 G$P1_5$0_0$0 == 0x0095
                           000095   224 _P1_5	=	0x0095
                           000096   225 G$P1_6$0_0$0 == 0x0096
                           000096   226 _P1_6	=	0x0096
                           000097   227 G$P1_7$0_0$0 == 0x0097
                           000097   228 _P1_7	=	0x0097
                           000098   229 G$RI$0_0$0 == 0x0098
                           000098   230 _RI	=	0x0098
                           000099   231 G$TI$0_0$0 == 0x0099
                           000099   232 _TI	=	0x0099
                           00009A   233 G$RB8$0_0$0 == 0x009a
                           00009A   234 _RB8	=	0x009a
                           00009B   235 G$TB8$0_0$0 == 0x009b
                           00009B   236 _TB8	=	0x009b
                           00009C   237 G$REN$0_0$0 == 0x009c
                           00009C   238 _REN	=	0x009c
                           00009D   239 G$SM2$0_0$0 == 0x009d
                           00009D   240 _SM2	=	0x009d
                           00009E   241 G$SM1$0_0$0 == 0x009e
                           00009E   242 _SM1	=	0x009e
                           00009F   243 G$SM0$0_0$0 == 0x009f
                           00009F   244 _SM0	=	0x009f
                           0000A0   245 G$P2_0$0_0$0 == 0x00a0
                           0000A0   246 _P2_0	=	0x00a0
                           0000A1   247 G$P2_1$0_0$0 == 0x00a1
                           0000A1   248 _P2_1	=	0x00a1
                           0000A2   249 G$P2_2$0_0$0 == 0x00a2
                           0000A2   250 _P2_2	=	0x00a2
                           0000A3   251 G$P2_3$0_0$0 == 0x00a3
                           0000A3   252 _P2_3	=	0x00a3
                           0000A4   253 G$P2_4$0_0$0 == 0x00a4
                           0000A4   254 _P2_4	=	0x00a4
                           0000A5   255 G$P2_5$0_0$0 == 0x00a5
                           0000A5   256 _P2_5	=	0x00a5
                           0000A6   257 G$P2_6$0_0$0 == 0x00a6
                           0000A6   258 _P2_6	=	0x00a6
                           0000A7   259 G$P2_7$0_0$0 == 0x00a7
                           0000A7   260 _P2_7	=	0x00a7
                           0000A8   261 G$EX0$0_0$0 == 0x00a8
                           0000A8   262 _EX0	=	0x00a8
                           0000A9   263 G$ET0$0_0$0 == 0x00a9
                           0000A9   264 _ET0	=	0x00a9
                           0000AA   265 G$EX1$0_0$0 == 0x00aa
                           0000AA   266 _EX1	=	0x00aa
                           0000AB   267 G$ET1$0_0$0 == 0x00ab
                           0000AB   268 _ET1	=	0x00ab
                           0000AC   269 G$ES$0_0$0 == 0x00ac
                           0000AC   270 _ES	=	0x00ac
                           0000AF   271 G$EA$0_0$0 == 0x00af
                           0000AF   272 _EA	=	0x00af
                           0000B0   273 G$P3_0$0_0$0 == 0x00b0
                           0000B0   274 _P3_0	=	0x00b0
                           0000B1   275 G$P3_1$0_0$0 == 0x00b1
                           0000B1   276 _P3_1	=	0x00b1
                           0000B2   277 G$P3_2$0_0$0 == 0x00b2
                           0000B2   278 _P3_2	=	0x00b2
                           0000B3   279 G$P3_3$0_0$0 == 0x00b3
                           0000B3   280 _P3_3	=	0x00b3
                           0000B4   281 G$P3_4$0_0$0 == 0x00b4
                           0000B4   282 _P3_4	=	0x00b4
                           0000B5   283 G$P3_5$0_0$0 == 0x00b5
                           0000B5   284 _P3_5	=	0x00b5
                           0000B6   285 G$P3_6$0_0$0 == 0x00b6
                           0000B6   286 _P3_6	=	0x00b6
                           0000B7   287 G$P3_7$0_0$0 == 0x00b7
                           0000B7   288 _P3_7	=	0x00b7
                           0000B0   289 G$RXD$0_0$0 == 0x00b0
                           0000B0   290 _RXD	=	0x00b0
                           0000B1   291 G$TXD$0_0$0 == 0x00b1
                           0000B1   292 _TXD	=	0x00b1
                           0000B2   293 G$INT0$0_0$0 == 0x00b2
                           0000B2   294 _INT0	=	0x00b2
                           0000B3   295 G$INT1$0_0$0 == 0x00b3
                           0000B3   296 _INT1	=	0x00b3
                           0000B4   297 G$T0$0_0$0 == 0x00b4
                           0000B4   298 _T0	=	0x00b4
                           0000B5   299 G$T1$0_0$0 == 0x00b5
                           0000B5   300 _T1	=	0x00b5
                           0000B6   301 G$WR$0_0$0 == 0x00b6
                           0000B6   302 _WR	=	0x00b6
                           0000B7   303 G$RD$0_0$0 == 0x00b7
                           0000B7   304 _RD	=	0x00b7
                           0000B8   305 G$PX0$0_0$0 == 0x00b8
                           0000B8   306 _PX0	=	0x00b8
                           0000B9   307 G$PT0$0_0$0 == 0x00b9
                           0000B9   308 _PT0	=	0x00b9
                           0000BA   309 G$PX1$0_0$0 == 0x00ba
                           0000BA   310 _PX1	=	0x00ba
                           0000BB   311 G$PT1$0_0$0 == 0x00bb
                           0000BB   312 _PT1	=	0x00bb
                           0000BC   313 G$PS$0_0$0 == 0x00bc
                           0000BC   314 _PS	=	0x00bc
                           0000D0   315 G$P$0_0$0 == 0x00d0
                           0000D0   316 _P	=	0x00d0
                           0000D1   317 G$F1$0_0$0 == 0x00d1
                           0000D1   318 _F1	=	0x00d1
                           0000D2   319 G$OV$0_0$0 == 0x00d2
                           0000D2   320 _OV	=	0x00d2
                           0000D3   321 G$RS0$0_0$0 == 0x00d3
                           0000D3   322 _RS0	=	0x00d3
                           0000D4   323 G$RS1$0_0$0 == 0x00d4
                           0000D4   324 _RS1	=	0x00d4
                           0000D5   325 G$F0$0_0$0 == 0x00d5
                           0000D5   326 _F0	=	0x00d5
                           0000D6   327 G$AC$0_0$0 == 0x00d6
                           0000D6   328 _AC	=	0x00d6
                           0000D7   329 G$CY$0_0$0 == 0x00d7
                           0000D7   330 _CY	=	0x00d7
                                    331 ;--------------------------------------------------------
                                    332 ; overlayable register banks
                                    333 ;--------------------------------------------------------
                                    334 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        335 	.ds 8
                                    336 ;--------------------------------------------------------
                                    337 ; internal ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area DSEG    (DATA)
                           000000   340 Luart.uartTXBuf$i$1_0$26==.
      00000C                        341 _uartTXBuf_i_65536_26:
      00000C                        342 	.ds 2
                           000002   343 Luart.uartRXStr$i$1_0$33==.
      00000E                        344 _uartRXStr_i_65536_33:
      00000E                        345 	.ds 2
                           000004   346 Luart.uartRXBuf$i$1_0$36==.
      000010                        347 _uartRXBuf_i_65536_36:
      000010                        348 	.ds 2
                                    349 ;--------------------------------------------------------
                                    350 ; overlayable items in internal ram 
                                    351 ;--------------------------------------------------------
                                    352 	.area	OSEG    (OVR,DATA)
                                    353 ;--------------------------------------------------------
                                    354 ; indirectly addressable internal ram data
                                    355 ;--------------------------------------------------------
                                    356 	.area ISEG    (DATA)
                                    357 ;--------------------------------------------------------
                                    358 ; absolute internal ram data
                                    359 ;--------------------------------------------------------
                                    360 	.area IABS    (ABS,DATA)
                                    361 	.area IABS    (ABS,DATA)
                                    362 ;--------------------------------------------------------
                                    363 ; bit data
                                    364 ;--------------------------------------------------------
                                    365 	.area BSEG    (BIT)
                                    366 ;--------------------------------------------------------
                                    367 ; paged external ram data
                                    368 ;--------------------------------------------------------
                                    369 	.area PSEG    (PAG,XDATA)
                                    370 ;--------------------------------------------------------
                                    371 ; external ram data
                                    372 ;--------------------------------------------------------
                                    373 	.area XSEG    (XDATA)
                           000000   374 Luart.uartTX$d$1_0$20==.
      00420F                        375 _uartTX_PARM_2:
      00420F                        376 	.ds 1
                           000001   377 Luart.uartTXStr$s$1_0$22==.
      004210                        378 _uartTXStr_PARM_2:
      004210                        379 	.ds 3
                           000004   380 Luart.uartTXStr$device$1_0$22==.
      004213                        381 _uartTXStr_device_65536_22:
      004213                        382 	.ds 1
                           000005   383 Luart.uartTXBuf$buf$1_0$25==.
      004214                        384 _uartTXBuf_PARM_2:
      004214                        385 	.ds 3
                           000008   386 Luart.uartTXBuf$size$1_0$25==.
      004217                        387 _uartTXBuf_PARM_3:
      004217                        388 	.ds 2
                           00000A   389 Luart.uartTXBuf$device$1_0$25==.
      004219                        390 _uartTXBuf_device_65536_25:
      004219                        391 	.ds 1
                           00000B   392 Luart.uartRXStr$s$1_0$32==.
      00421A                        393 _uartRXStr_PARM_2:
      00421A                        394 	.ds 3
                           00000E   395 Luart.uartRXStr$size$1_0$32==.
      00421D                        396 _uartRXStr_PARM_3:
      00421D                        397 	.ds 2
                           000010   398 Luart.uartRXStr$device$1_0$32==.
      00421F                        399 _uartRXStr_device_65536_32:
      00421F                        400 	.ds 1
                           000011   401 Luart.uartRXBuf$buf$1_0$35==.
      004220                        402 _uartRXBuf_PARM_2:
      004220                        403 	.ds 3
                           000014   404 Luart.uartRXBuf$size$1_0$35==.
      004223                        405 _uartRXBuf_PARM_3:
      004223                        406 	.ds 2
                           000016   407 Luart.uartRXBuf$device$1_0$35==.
      004225                        408 _uartRXBuf_device_65536_35:
      004225                        409 	.ds 1
                           000017   410 Luart.uartTest1$device$1_0$38==.
      004226                        411 _uartTest1_device_65536_38:
      004226                        412 	.ds 1
                           000018   413 Luart.uartTest2$device$1_0$41==.
      004227                        414 _uartTest2_device_65536_41:
      004227                        415 	.ds 1
                                    416 ;--------------------------------------------------------
                                    417 ; absolute external ram data
                                    418 ;--------------------------------------------------------
                                    419 	.area XABS    (ABS,XDATA)
                                    420 ;--------------------------------------------------------
                                    421 ; external initialized ram data
                                    422 ;--------------------------------------------------------
                                    423 	.area XISEG   (XDATA)
                                    424 	.area HOME    (CODE)
                                    425 	.area GSINIT0 (CODE)
                                    426 	.area GSINIT1 (CODE)
                                    427 	.area GSINIT2 (CODE)
                                    428 	.area GSINIT3 (CODE)
                                    429 	.area GSINIT4 (CODE)
                                    430 	.area GSINIT5 (CODE)
                                    431 	.area GSINIT  (CODE)
                                    432 	.area GSFINAL (CODE)
                                    433 	.area CSEG    (CODE)
                                    434 ;--------------------------------------------------------
                                    435 ; global & static initialisations
                                    436 ;--------------------------------------------------------
                                    437 	.area HOME    (CODE)
                                    438 	.area GSINIT  (CODE)
                                    439 	.area GSFINAL (CODE)
                                    440 	.area GSINIT  (CODE)
                                    441 ;--------------------------------------------------------
                                    442 ; Home
                                    443 ;--------------------------------------------------------
                                    444 	.area HOME    (CODE)
                                    445 	.area HOME    (CODE)
                                    446 ;--------------------------------------------------------
                                    447 ; code
                                    448 ;--------------------------------------------------------
                                    449 	.area CSEG    (CODE)
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'uartInit'
                                    452 ;------------------------------------------------------------
                                    453 ;device                    Allocated with name '_uartInit_device_65536_14'
                                    454 ;------------------------------------------------------------
                           000000   455 	G$uartInit$0$0 ==.
                           000000   456 	C$uart.c$5$0_0$15 ==.
                                    457 ;	uart.c:5: void uartInit(char device)
                                    458 ;	-----------------------------------------
                                    459 ;	 function uartInit
                                    460 ;	-----------------------------------------
      000594                        461 _uartInit:
                           000007   462 	ar7 = 0x07
                           000006   463 	ar6 = 0x06
                           000005   464 	ar5 = 0x05
                           000004   465 	ar4 = 0x04
                           000003   466 	ar3 = 0x03
                           000002   467 	ar2 = 0x02
                           000001   468 	ar1 = 0x01
                           000000   469 	ar0 = 0x00
                           000000   470 	C$uart.c$7$1_0$15 ==.
                                    471 ;	uart.c:7: SCON = 0x50;
      000594 75 98 50         [24]  472 	mov	_SCON,#0x50
                           000003   473 	C$uart.c$8$1_0$15 ==.
                                    474 ;	uart.c:8: TMOD = (TMOD & T0_MASK) | 0x21;
      000597 AE 89            [24]  475 	mov	r6,_TMOD
      000599 53 06 0F         [24]  476 	anl	ar6,#0x0f
      00059C 7F 00            [12]  477 	mov	r7,#0x00
      00059E 43 06 21         [24]  478 	orl	ar6,#0x21
      0005A1 8E 89            [24]  479 	mov	_TMOD,r6
                           00000F   480 	C$uart.c$9$1_0$15 ==.
                                    481 ;	uart.c:9: PCON = 0x80;
      0005A3 75 87 80         [24]  482 	mov	_PCON,#0x80
                           000012   483 	C$uart.c$12$1_0$15 ==.
                                    484 ;	uart.c:12: TH1 = 0xFA;
      0005A6 75 8D FA         [24]  485 	mov	_TH1,#0xfa
                           000015   486 	C$uart.c$13$1_0$15 ==.
                                    487 ;	uart.c:13: TL1 = 0xFA;
      0005A9 75 8B FA         [24]  488 	mov	_TL1,#0xfa
                           000018   489 	C$uart.c$14$1_0$15 ==.
                                    490 ;	uart.c:14: TR1 = 1;
                                    491 ;	assignBit
      0005AC D2 8E            [12]  492 	setb	_TR1
                           00001A   493 	C$uart.c$17$1_0$15 ==.
                                    494 ;	uart.c:17: }
                           00001A   495 	C$uart.c$17$1_0$15 ==.
                           00001A   496 	XG$uartInit$0$0 ==.
      0005AE 02 00 18         [24]  497 	ljmp	__sdcc_banked_ret
                                    498 ;------------------------------------------------------------
                                    499 ;Allocation info for local variables in function 'uartClose'
                                    500 ;------------------------------------------------------------
                                    501 ;device                    Allocated with name '_uartClose_device_65536_16'
                                    502 ;------------------------------------------------------------
                           00001D   503 	G$uartClose$0$0 ==.
                           00001D   504 	C$uart.c$19$1_0$17 ==.
                                    505 ;	uart.c:19: void uartClose(char device)
                                    506 ;	-----------------------------------------
                                    507 ;	 function uartClose
                                    508 ;	-----------------------------------------
      0005B1                        509 _uartClose:
                           00001D   510 	C$uart.c$21$1_0$17 ==.
                                    511 ;	uart.c:21: SCON = 0x00;
      0005B1 75 98 00         [24]  512 	mov	_SCON,#0x00
                           000020   513 	C$uart.c$22$1_0$17 ==.
                                    514 ;	uart.c:22: TMOD = (TMOD & T0_MASK);
      0005B4 53 89 0F         [24]  515 	anl	_TMOD,#0x0f
                           000023   516 	C$uart.c$23$1_0$17 ==.
                                    517 ;	uart.c:23: PCON &= ~SMOD;
      0005B7 53 87 7F         [24]  518 	anl	_PCON,#0x7f
                           000026   519 	C$uart.c$24$1_0$17 ==.
                                    520 ;	uart.c:24: TR1 = 0;
                                    521 ;	assignBit
      0005BA C2 8E            [12]  522 	clr	_TR1
                           000028   523 	C$uart.c$25$1_0$17 ==.
                                    524 ;	uart.c:25: }
                           000028   525 	C$uart.c$25$1_0$17 ==.
                           000028   526 	XG$uartClose$0$0 ==.
      0005BC 02 00 18         [24]  527 	ljmp	__sdcc_banked_ret
                                    528 ;------------------------------------------------------------
                                    529 ;Allocation info for local variables in function 'uartWaitTXDone'
                                    530 ;------------------------------------------------------------
                                    531 ;device                    Allocated with name '_uartWaitTXDone_device_65536_18'
                                    532 ;------------------------------------------------------------
                           00002B   533 	G$uartWaitTXDone$0$0 ==.
                           00002B   534 	C$uart.c$27$1_0$19 ==.
                                    535 ;	uart.c:27: void uartWaitTXDone(char device)
                                    536 ;	-----------------------------------------
                                    537 ;	 function uartWaitTXDone
                                    538 ;	-----------------------------------------
      0005BF                        539 _uartWaitTXDone:
                           00002B   540 	C$uart.c$29$1_0$19 ==.
                                    541 ;	uart.c:29: while(!TI);
      0005BF                        542 00101$:
      0005BF 30 99 FD         [24]  543 	jnb	_TI,00101$
                           00002E   544 	C$uart.c$30$1_0$19 ==.
                                    545 ;	uart.c:30: }
                           00002E   546 	C$uart.c$30$1_0$19 ==.
                           00002E   547 	XG$uartWaitTXDone$0$0 ==.
      0005C2 02 00 18         [24]  548 	ljmp	__sdcc_banked_ret
                                    549 ;------------------------------------------------------------
                                    550 ;Allocation info for local variables in function 'uartTX'
                                    551 ;------------------------------------------------------------
                                    552 ;d                         Allocated with name '_uartTX_PARM_2'
                                    553 ;device                    Allocated with name '_uartTX_device_65536_20'
                                    554 ;------------------------------------------------------------
                           000031   555 	G$uartTX$0$0 ==.
                           000031   556 	C$uart.c$32$1_0$21 ==.
                                    557 ;	uart.c:32: void uartTX(char device, char d)
                                    558 ;	-----------------------------------------
                                    559 ;	 function uartTX
                                    560 ;	-----------------------------------------
      0005C5                        561 _uartTX:
                           000031   562 	C$uart.c$34$1_0$21 ==.
                                    563 ;	uart.c:34: TI = 0;
                                    564 ;	assignBit
      0005C5 C2 99            [12]  565 	clr	_TI
                           000033   566 	C$uart.c$35$1_0$21 ==.
                                    567 ;	uart.c:35: SBUF = d;
      0005C7 90 42 0F         [24]  568 	mov	dptr,#_uartTX_PARM_2
      0005CA E0               [24]  569 	movx	a,@dptr
      0005CB F5 99            [12]  570 	mov	_SBUF,a
                           000039   571 	C$uart.c$36$1_0$21 ==.
                                    572 ;	uart.c:36: while(!TI) /* assumes UART is initialized */ ;
      0005CD                        573 00101$:
      0005CD 30 99 FD         [24]  574 	jnb	_TI,00101$
                           00003C   575 	C$uart.c$37$1_0$21 ==.
                                    576 ;	uart.c:37: }
                           00003C   577 	C$uart.c$37$1_0$21 ==.
                           00003C   578 	XG$uartTX$0$0 ==.
      0005D0 02 00 18         [24]  579 	ljmp	__sdcc_banked_ret
                                    580 ;------------------------------------------------------------
                                    581 ;Allocation info for local variables in function 'uartTXStr'
                                    582 ;------------------------------------------------------------
                                    583 ;s                         Allocated with name '_uartTXStr_PARM_2'
                                    584 ;device                    Allocated with name '_uartTXStr_device_65536_22'
                                    585 ;------------------------------------------------------------
                           00003F   586 	G$uartTXStr$0$0 ==.
                           00003F   587 	C$uart.c$39$1_0$23 ==.
                                    588 ;	uart.c:39: void uartTXStr(char device, const char* s)
                                    589 ;	-----------------------------------------
                                    590 ;	 function uartTXStr
                                    591 ;	-----------------------------------------
      0005D3                        592 _uartTXStr:
      0005D3 E5 82            [12]  593 	mov	a,dpl
      0005D5 90 42 13         [24]  594 	mov	dptr,#_uartTXStr_device_65536_22
      0005D8 F0               [24]  595 	movx	@dptr,a
                           000045   596 	C$uart.c$41$2_0$24 ==.
                                    597 ;	uart.c:41: do
      0005D9 E0               [24]  598 	movx	a,@dptr
      0005DA FF               [12]  599 	mov	r7,a
      0005DB 90 42 10         [24]  600 	mov	dptr,#_uartTXStr_PARM_2
      0005DE E0               [24]  601 	movx	a,@dptr
      0005DF FC               [12]  602 	mov	r4,a
      0005E0 A3               [24]  603 	inc	dptr
      0005E1 E0               [24]  604 	movx	a,@dptr
      0005E2 FD               [12]  605 	mov	r5,a
      0005E3 A3               [24]  606 	inc	dptr
      0005E4 E0               [24]  607 	movx	a,@dptr
      0005E5 FE               [12]  608 	mov	r6,a
      0005E6                        609 00101$:
                           000052   610 	C$uart.c$43$2_0$24 ==.
                                    611 ;	uart.c:43: uartTX(device, *s);
      0005E6 8C 82            [24]  612 	mov	dpl,r4
      0005E8 8D 83            [24]  613 	mov	dph,r5
      0005EA 8E F0            [24]  614 	mov	b,r6
      0005EC 12 08 73         [24]  615 	lcall	__gptrget
      0005EF 90 42 0F         [24]  616 	mov	dptr,#_uartTX_PARM_2
      0005F2 F0               [24]  617 	movx	@dptr,a
      0005F3 8F 82            [24]  618 	mov	dpl,r7
      0005F5 C0 07            [24]  619 	push	ar7
      0005F7 C0 06            [24]  620 	push	ar6
      0005F9 C0 05            [24]  621 	push	ar5
      0005FB C0 04            [24]  622 	push	ar4
      0005FD 78 C5            [12]  623 	mov	r0,#_uartTX
      0005FF 79 05            [12]  624 	mov	r1,#(_uartTX >> 8)
      000601 7A 00            [12]  625 	mov	r2,#(_uartTX >> 16)
      000603 12 00 06         [24]  626 	lcall	__sdcc_banked_call
      000606 D0 04            [24]  627 	pop	ar4
      000608 D0 05            [24]  628 	pop	ar5
      00060A D0 06            [24]  629 	pop	ar6
      00060C D0 07            [24]  630 	pop	ar7
                           00007A   631 	C$uart.c$44$1_0$23 ==.
                                    632 ;	uart.c:44: }while(*s++);
      00060E 8C 82            [24]  633 	mov	dpl,r4
      000610 8D 83            [24]  634 	mov	dph,r5
      000612 8E F0            [24]  635 	mov	b,r6
      000614 12 08 73         [24]  636 	lcall	__gptrget
      000617 FB               [12]  637 	mov	r3,a
      000618 A3               [24]  638 	inc	dptr
      000619 AC 82            [24]  639 	mov	r4,dpl
      00061B AD 83            [24]  640 	mov	r5,dph
      00061D EB               [12]  641 	mov	a,r3
      00061E 70 C6            [24]  642 	jnz	00101$
                           00008C   643 	C$uart.c$45$1_0$23 ==.
                                    644 ;	uart.c:45: }
                           00008C   645 	C$uart.c$45$1_0$23 ==.
                           00008C   646 	XG$uartTXStr$0$0 ==.
      000620 02 00 18         [24]  647 	ljmp	__sdcc_banked_ret
                                    648 ;------------------------------------------------------------
                                    649 ;Allocation info for local variables in function 'uartTXBuf'
                                    650 ;------------------------------------------------------------
                                    651 ;i                         Allocated with name '_uartTXBuf_i_65536_26'
                                    652 ;buf                       Allocated with name '_uartTXBuf_PARM_2'
                                    653 ;size                      Allocated with name '_uartTXBuf_PARM_3'
                                    654 ;device                    Allocated with name '_uartTXBuf_device_65536_25'
                                    655 ;------------------------------------------------------------
                           00008F   656 	G$uartTXBuf$0$0 ==.
                           00008F   657 	C$uart.c$47$1_0$26 ==.
                                    658 ;	uart.c:47: void uartTXBuf(char device, const char* buf, unsigned int size)
                                    659 ;	-----------------------------------------
                                    660 ;	 function uartTXBuf
                                    661 ;	-----------------------------------------
      000623                        662 _uartTXBuf:
      000623 E5 82            [12]  663 	mov	a,dpl
      000625 90 42 19         [24]  664 	mov	dptr,#_uartTXBuf_device_65536_25
      000628 F0               [24]  665 	movx	@dptr,a
                           000095   666 	C$uart.c$51$2_0$27 ==.
                                    667 ;	uart.c:51: while(size--)
      000629 E0               [24]  668 	movx	a,@dptr
      00062A FF               [12]  669 	mov	r7,a
      00062B 90 42 14         [24]  670 	mov	dptr,#_uartTXBuf_PARM_2
      00062E E0               [24]  671 	movx	a,@dptr
      00062F FC               [12]  672 	mov	r4,a
      000630 A3               [24]  673 	inc	dptr
      000631 E0               [24]  674 	movx	a,@dptr
      000632 FD               [12]  675 	mov	r5,a
      000633 A3               [24]  676 	inc	dptr
      000634 E0               [24]  677 	movx	a,@dptr
      000635 FE               [12]  678 	mov	r6,a
      000636 E4               [12]  679 	clr	a
      000637 F5 0C            [12]  680 	mov	_uartTXBuf_i_65536_26,a
      000639 F5 0D            [12]  681 	mov	(_uartTXBuf_i_65536_26 + 1),a
      00063B 90 42 17         [24]  682 	mov	dptr,#_uartTXBuf_PARM_3
      00063E E0               [24]  683 	movx	a,@dptr
      00063F F8               [12]  684 	mov	r0,a
      000640 A3               [24]  685 	inc	dptr
      000641 E0               [24]  686 	movx	a,@dptr
      000642 F9               [12]  687 	mov	r1,a
      000643                        688 00101$:
      000643 88 02            [24]  689 	mov	ar2,r0
      000645 89 03            [24]  690 	mov	ar3,r1
      000647 18               [12]  691 	dec	r0
      000648 B8 FF 01         [24]  692 	cjne	r0,#0xff,00115$
      00064B 19               [12]  693 	dec	r1
      00064C                        694 00115$:
      00064C EA               [12]  695 	mov	a,r2
      00064D 4B               [12]  696 	orl	a,r3
      00064E 60 4E            [24]  697 	jz	00104$
                           0000BC   698 	C$uart.c$53$1_0$26 ==.
                                    699 ;	uart.c:53: uartTX(device, buf[i++]);
      000650 C0 00            [24]  700 	push	ar0
      000652 C0 01            [24]  701 	push	ar1
      000654 AA 0C            [24]  702 	mov	r2,_uartTXBuf_i_65536_26
      000656 AB 0D            [24]  703 	mov	r3,(_uartTXBuf_i_65536_26 + 1)
      000658 05 0C            [12]  704 	inc	_uartTXBuf_i_65536_26
      00065A E4               [12]  705 	clr	a
      00065B B5 0C 02         [24]  706 	cjne	a,_uartTXBuf_i_65536_26,00117$
      00065E 05 0D            [12]  707 	inc	(_uartTXBuf_i_65536_26 + 1)
      000660                        708 00117$:
      000660 EA               [12]  709 	mov	a,r2
      000661 2C               [12]  710 	add	a,r4
      000662 FA               [12]  711 	mov	r2,a
      000663 EB               [12]  712 	mov	a,r3
      000664 3D               [12]  713 	addc	a,r5
      000665 F9               [12]  714 	mov	r1,a
      000666 8E 03            [24]  715 	mov	ar3,r6
      000668 8A 82            [24]  716 	mov	dpl,r2
      00066A 89 83            [24]  717 	mov	dph,r1
      00066C 8B F0            [24]  718 	mov	b,r3
      00066E 12 08 73         [24]  719 	lcall	__gptrget
      000671 90 42 0F         [24]  720 	mov	dptr,#_uartTX_PARM_2
      000674 F0               [24]  721 	movx	@dptr,a
      000675 8F 82            [24]  722 	mov	dpl,r7
      000677 C0 07            [24]  723 	push	ar7
      000679 C0 06            [24]  724 	push	ar6
      00067B C0 05            [24]  725 	push	ar5
      00067D C0 04            [24]  726 	push	ar4
      00067F C0 01            [24]  727 	push	ar1
      000681 C0 00            [24]  728 	push	ar0
      000683 78 C5            [12]  729 	mov	r0,#_uartTX
      000685 79 05            [12]  730 	mov	r1,#(_uartTX >> 8)
      000687 7A 00            [12]  731 	mov	r2,#(_uartTX >> 16)
      000689 12 00 06         [24]  732 	lcall	__sdcc_banked_call
      00068C D0 00            [24]  733 	pop	ar0
      00068E D0 01            [24]  734 	pop	ar1
      000690 D0 04            [24]  735 	pop	ar4
      000692 D0 05            [24]  736 	pop	ar5
      000694 D0 06            [24]  737 	pop	ar6
      000696 D0 07            [24]  738 	pop	ar7
      000698 D0 01            [24]  739 	pop	ar1
      00069A D0 00            [24]  740 	pop	ar0
      00069C 80 A5            [24]  741 	sjmp	00101$
      00069E                        742 00104$:
                           00010A   743 	C$uart.c$55$1_0$26 ==.
                                    744 ;	uart.c:55: }
                           00010A   745 	C$uart.c$55$1_0$26 ==.
                           00010A   746 	XG$uartTXBuf$0$0 ==.
      00069E 02 00 18         [24]  747 	ljmp	__sdcc_banked_ret
                                    748 ;------------------------------------------------------------
                                    749 ;Allocation info for local variables in function 'uartWaitRXDone'
                                    750 ;------------------------------------------------------------
                                    751 ;device                    Allocated with name '_uartWaitRXDone_device_65536_28'
                                    752 ;------------------------------------------------------------
                           00010D   753 	G$uartWaitRXDone$0$0 ==.
                           00010D   754 	C$uart.c$57$1_0$29 ==.
                                    755 ;	uart.c:57: void uartWaitRXDone(char device)
                                    756 ;	-----------------------------------------
                                    757 ;	 function uartWaitRXDone
                                    758 ;	-----------------------------------------
      0006A1                        759 _uartWaitRXDone:
                           00010D   760 	C$uart.c$59$1_0$29 ==.
                                    761 ;	uart.c:59: while(!RI);
      0006A1                        762 00101$:
      0006A1 30 98 FD         [24]  763 	jnb	_RI,00101$
                           000110   764 	C$uart.c$60$1_0$29 ==.
                                    765 ;	uart.c:60: }
                           000110   766 	C$uart.c$60$1_0$29 ==.
                           000110   767 	XG$uartWaitRXDone$0$0 ==.
      0006A4 02 00 18         [24]  768 	ljmp	__sdcc_banked_ret
                                    769 ;------------------------------------------------------------
                                    770 ;Allocation info for local variables in function 'uartRX'
                                    771 ;------------------------------------------------------------
                                    772 ;device                    Allocated with name '_uartRX_device_65536_30'
                                    773 ;d                         Allocated to registers r7 
                                    774 ;------------------------------------------------------------
                           000113   775 	G$uartRX$0$0 ==.
                           000113   776 	C$uart.c$62$1_0$31 ==.
                                    777 ;	uart.c:62: char uartRX(char device)
                                    778 ;	-----------------------------------------
                                    779 ;	 function uartRX
                                    780 ;	-----------------------------------------
      0006A7                        781 _uartRX:
                           000113   782 	C$uart.c$66$1_0$31 ==.
                                    783 ;	uart.c:66: while(!RI) /* assumes UART is initialized */ ;
      0006A7                        784 00101$:
      0006A7 30 98 FD         [24]  785 	jnb	_RI,00101$
                           000116   786 	C$uart.c$67$1_0$31 ==.
                                    787 ;	uart.c:67: d = SBUF;
      0006AA AF 99            [24]  788 	mov	r7,_SBUF
                           000118   789 	C$uart.c$68$1_0$31 ==.
                                    790 ;	uart.c:68: RI = 0;
                                    791 ;	assignBit
      0006AC C2 98            [12]  792 	clr	_RI
                           00011A   793 	C$uart.c$70$1_0$31 ==.
                                    794 ;	uart.c:70: return d;
      0006AE 8F 82            [24]  795 	mov	dpl,r7
                           00011C   796 	C$uart.c$71$1_0$31 ==.
                                    797 ;	uart.c:71: }
                           00011C   798 	C$uart.c$71$1_0$31 ==.
                           00011C   799 	XG$uartRX$0$0 ==.
      0006B0 02 00 18         [24]  800 	ljmp	__sdcc_banked_ret
                                    801 ;------------------------------------------------------------
                                    802 ;Allocation info for local variables in function 'uartRXStr'
                                    803 ;------------------------------------------------------------
                                    804 ;i                         Allocated with name '_uartRXStr_i_65536_33'
                                    805 ;s                         Allocated with name '_uartRXStr_PARM_2'
                                    806 ;size                      Allocated with name '_uartRXStr_PARM_3'
                                    807 ;device                    Allocated with name '_uartRXStr_device_65536_32'
                                    808 ;------------------------------------------------------------
                           00011F   809 	G$uartRXStr$0$0 ==.
                           00011F   810 	C$uart.c$73$1_0$33 ==.
                                    811 ;	uart.c:73: void uartRXStr(char device, char* s, unsigned int size)
                                    812 ;	-----------------------------------------
                                    813 ;	 function uartRXStr
                                    814 ;	-----------------------------------------
      0006B3                        815 _uartRXStr:
      0006B3 E5 82            [12]  816 	mov	a,dpl
      0006B5 90 42 1F         [24]  817 	mov	dptr,#_uartRXStr_device_65536_32
      0006B8 F0               [24]  818 	movx	@dptr,a
                           000125   819 	C$uart.c$77$2_0$34 ==.
                                    820 ;	uart.c:77: while(size--)
      0006B9 90 42 1A         [24]  821 	mov	dptr,#_uartRXStr_PARM_2
      0006BC E0               [24]  822 	movx	a,@dptr
      0006BD FD               [12]  823 	mov	r5,a
      0006BE A3               [24]  824 	inc	dptr
      0006BF E0               [24]  825 	movx	a,@dptr
      0006C0 FE               [12]  826 	mov	r6,a
      0006C1 A3               [24]  827 	inc	dptr
      0006C2 E0               [24]  828 	movx	a,@dptr
      0006C3 FF               [12]  829 	mov	r7,a
      0006C4 90 42 1F         [24]  830 	mov	dptr,#_uartRXStr_device_65536_32
      0006C7 E0               [24]  831 	movx	a,@dptr
      0006C8 FC               [12]  832 	mov	r4,a
      0006C9 E4               [12]  833 	clr	a
      0006CA F5 0E            [12]  834 	mov	_uartRXStr_i_65536_33,a
      0006CC F5 0F            [12]  835 	mov	(_uartRXStr_i_65536_33 + 1),a
      0006CE 90 42 1D         [24]  836 	mov	dptr,#_uartRXStr_PARM_3
      0006D1 E0               [24]  837 	movx	a,@dptr
      0006D2 F8               [12]  838 	mov	r0,a
      0006D3 A3               [24]  839 	inc	dptr
      0006D4 E0               [24]  840 	movx	a,@dptr
      0006D5 F9               [12]  841 	mov	r1,a
      0006D6                        842 00103$:
      0006D6 88 02            [24]  843 	mov	ar2,r0
      0006D8 89 03            [24]  844 	mov	ar3,r1
      0006DA 18               [12]  845 	dec	r0
      0006DB B8 FF 01         [24]  846 	cjne	r0,#0xff,00117$
      0006DE 19               [12]  847 	dec	r1
      0006DF                        848 00117$:
      0006DF EA               [12]  849 	mov	a,r2
      0006E0 4B               [12]  850 	orl	a,r3
      0006E1 60 51            [24]  851 	jz	00106$
                           00014F   852 	C$uart.c$79$1_0$33 ==.
                                    853 ;	uart.c:79: if((s[i++] = uartRX(device))==0)
      0006E3 C0 00            [24]  854 	push	ar0
      0006E5 C0 01            [24]  855 	push	ar1
      0006E7 AA 0E            [24]  856 	mov	r2,_uartRXStr_i_65536_33
      0006E9 AB 0F            [24]  857 	mov	r3,(_uartRXStr_i_65536_33 + 1)
      0006EB 05 0E            [12]  858 	inc	_uartRXStr_i_65536_33
      0006ED E4               [12]  859 	clr	a
      0006EE B5 0E 02         [24]  860 	cjne	a,_uartRXStr_i_65536_33,00119$
      0006F1 05 0F            [12]  861 	inc	(_uartRXStr_i_65536_33 + 1)
      0006F3                        862 00119$:
      0006F3 EA               [12]  863 	mov	a,r2
      0006F4 2D               [12]  864 	add	a,r5
      0006F5 FA               [12]  865 	mov	r2,a
      0006F6 EB               [12]  866 	mov	a,r3
      0006F7 3E               [12]  867 	addc	a,r6
      0006F8 F9               [12]  868 	mov	r1,a
      0006F9 8F 03            [24]  869 	mov	ar3,r7
      0006FB 8C 82            [24]  870 	mov	dpl,r4
      0006FD C0 07            [24]  871 	push	ar7
      0006FF C0 06            [24]  872 	push	ar6
      000701 C0 05            [24]  873 	push	ar5
      000703 C0 04            [24]  874 	push	ar4
      000705 C0 03            [24]  875 	push	ar3
      000707 C0 02            [24]  876 	push	ar2
      000709 C0 01            [24]  877 	push	ar1
      00070B 78 A7            [12]  878 	mov	r0,#_uartRX
      00070D 79 06            [12]  879 	mov	r1,#(_uartRX >> 8)
      00070F 7A 00            [12]  880 	mov	r2,#(_uartRX >> 16)
      000711 12 00 06         [24]  881 	lcall	__sdcc_banked_call
      000714 A8 82            [24]  882 	mov	r0,dpl
      000716 D0 01            [24]  883 	pop	ar1
      000718 D0 02            [24]  884 	pop	ar2
      00071A D0 03            [24]  885 	pop	ar3
      00071C D0 04            [24]  886 	pop	ar4
      00071E D0 05            [24]  887 	pop	ar5
      000720 D0 06            [24]  888 	pop	ar6
      000722 D0 07            [24]  889 	pop	ar7
      000724 8A 82            [24]  890 	mov	dpl,r2
      000726 89 83            [24]  891 	mov	dph,r1
      000728 8B F0            [24]  892 	mov	b,r3
      00072A E8               [12]  893 	mov	a,r0
      00072B 12 08 58         [24]  894 	lcall	__gptrput
      00072E D0 01            [24]  895 	pop	ar1
      000730 D0 00            [24]  896 	pop	ar0
      000732 70 A2            [24]  897 	jnz	00103$
                           0001A0   898 	C$uart.c$80$1_0$33 ==.
                                    899 ;	uart.c:80: break;
      000734                        900 00106$:
                           0001A0   901 	C$uart.c$82$1_0$33 ==.
                                    902 ;	uart.c:82: }
                           0001A0   903 	C$uart.c$82$1_0$33 ==.
                           0001A0   904 	XG$uartRXStr$0$0 ==.
      000734 02 00 18         [24]  905 	ljmp	__sdcc_banked_ret
                                    906 ;------------------------------------------------------------
                                    907 ;Allocation info for local variables in function 'uartRXBuf'
                                    908 ;------------------------------------------------------------
                                    909 ;i                         Allocated with name '_uartRXBuf_i_65536_36'
                                    910 ;buf                       Allocated with name '_uartRXBuf_PARM_2'
                                    911 ;size                      Allocated with name '_uartRXBuf_PARM_3'
                                    912 ;device                    Allocated with name '_uartRXBuf_device_65536_35'
                                    913 ;------------------------------------------------------------
                           0001A3   914 	G$uartRXBuf$0$0 ==.
                           0001A3   915 	C$uart.c$84$1_0$36 ==.
                                    916 ;	uart.c:84: void uartRXBuf(char device, char* buf, unsigned int size)
                                    917 ;	-----------------------------------------
                                    918 ;	 function uartRXBuf
                                    919 ;	-----------------------------------------
      000737                        920 _uartRXBuf:
      000737 E5 82            [12]  921 	mov	a,dpl
      000739 90 42 25         [24]  922 	mov	dptr,#_uartRXBuf_device_65536_35
      00073C F0               [24]  923 	movx	@dptr,a
                           0001A9   924 	C$uart.c$88$2_0$37 ==.
                                    925 ;	uart.c:88: while(size--)
      00073D 90 42 20         [24]  926 	mov	dptr,#_uartRXBuf_PARM_2
      000740 E0               [24]  927 	movx	a,@dptr
      000741 FD               [12]  928 	mov	r5,a
      000742 A3               [24]  929 	inc	dptr
      000743 E0               [24]  930 	movx	a,@dptr
      000744 FE               [12]  931 	mov	r6,a
      000745 A3               [24]  932 	inc	dptr
      000746 E0               [24]  933 	movx	a,@dptr
      000747 FF               [12]  934 	mov	r7,a
      000748 90 42 25         [24]  935 	mov	dptr,#_uartRXBuf_device_65536_35
      00074B E0               [24]  936 	movx	a,@dptr
      00074C FC               [12]  937 	mov	r4,a
      00074D E4               [12]  938 	clr	a
      00074E F5 10            [12]  939 	mov	_uartRXBuf_i_65536_36,a
      000750 F5 11            [12]  940 	mov	(_uartRXBuf_i_65536_36 + 1),a
      000752 90 42 23         [24]  941 	mov	dptr,#_uartRXBuf_PARM_3
      000755 E0               [24]  942 	movx	a,@dptr
      000756 F8               [12]  943 	mov	r0,a
      000757 A3               [24]  944 	inc	dptr
      000758 E0               [24]  945 	movx	a,@dptr
      000759 F9               [12]  946 	mov	r1,a
      00075A                        947 00101$:
      00075A 88 02            [24]  948 	mov	ar2,r0
      00075C 89 03            [24]  949 	mov	ar3,r1
      00075E 18               [12]  950 	dec	r0
      00075F B8 FF 01         [24]  951 	cjne	r0,#0xff,00115$
      000762 19               [12]  952 	dec	r1
      000763                        953 00115$:
      000763 EA               [12]  954 	mov	a,r2
      000764 4B               [12]  955 	orl	a,r3
      000765 60 51            [24]  956 	jz	00104$
                           0001D3   957 	C$uart.c$90$1_0$36 ==.
                                    958 ;	uart.c:90: buf[i++] = uartRX(device);
      000767 C0 00            [24]  959 	push	ar0
      000769 C0 01            [24]  960 	push	ar1
      00076B AA 10            [24]  961 	mov	r2,_uartRXBuf_i_65536_36
      00076D AB 11            [24]  962 	mov	r3,(_uartRXBuf_i_65536_36 + 1)
      00076F 05 10            [12]  963 	inc	_uartRXBuf_i_65536_36
      000771 E4               [12]  964 	clr	a
      000772 B5 10 02         [24]  965 	cjne	a,_uartRXBuf_i_65536_36,00117$
      000775 05 11            [12]  966 	inc	(_uartRXBuf_i_65536_36 + 1)
      000777                        967 00117$:
      000777 EA               [12]  968 	mov	a,r2
      000778 2D               [12]  969 	add	a,r5
      000779 FA               [12]  970 	mov	r2,a
      00077A EB               [12]  971 	mov	a,r3
      00077B 3E               [12]  972 	addc	a,r6
      00077C F9               [12]  973 	mov	r1,a
      00077D 8F 03            [24]  974 	mov	ar3,r7
      00077F 8C 82            [24]  975 	mov	dpl,r4
      000781 C0 07            [24]  976 	push	ar7
      000783 C0 06            [24]  977 	push	ar6
      000785 C0 05            [24]  978 	push	ar5
      000787 C0 04            [24]  979 	push	ar4
      000789 C0 03            [24]  980 	push	ar3
      00078B C0 02            [24]  981 	push	ar2
      00078D C0 01            [24]  982 	push	ar1
      00078F 78 A7            [12]  983 	mov	r0,#_uartRX
      000791 79 06            [12]  984 	mov	r1,#(_uartRX >> 8)
      000793 7A 00            [12]  985 	mov	r2,#(_uartRX >> 16)
      000795 12 00 06         [24]  986 	lcall	__sdcc_banked_call
      000798 A8 82            [24]  987 	mov	r0,dpl
      00079A D0 01            [24]  988 	pop	ar1
      00079C D0 02            [24]  989 	pop	ar2
      00079E D0 03            [24]  990 	pop	ar3
      0007A0 D0 04            [24]  991 	pop	ar4
      0007A2 D0 05            [24]  992 	pop	ar5
      0007A4 D0 06            [24]  993 	pop	ar6
      0007A6 D0 07            [24]  994 	pop	ar7
      0007A8 8A 82            [24]  995 	mov	dpl,r2
      0007AA 89 83            [24]  996 	mov	dph,r1
      0007AC 8B F0            [24]  997 	mov	b,r3
      0007AE E8               [12]  998 	mov	a,r0
      0007AF 12 08 58         [24]  999 	lcall	__gptrput
      0007B2 D0 01            [24] 1000 	pop	ar1
      0007B4 D0 00            [24] 1001 	pop	ar0
      0007B6 80 A2            [24] 1002 	sjmp	00101$
      0007B8                       1003 00104$:
                           000224  1004 	C$uart.c$92$1_0$36 ==.
                                   1005 ;	uart.c:92: }
                           000224  1006 	C$uart.c$92$1_0$36 ==.
                           000224  1007 	XG$uartRXBuf$0$0 ==.
      0007B8 02 00 18         [24] 1008 	ljmp	__sdcc_banked_ret
                                   1009 ;------------------------------------------------------------
                                   1010 ;Allocation info for local variables in function 'uartTest1'
                                   1011 ;------------------------------------------------------------
                                   1012 ;device                    Allocated with name '_uartTest1_device_65536_38'
                                   1013 ;------------------------------------------------------------
                           000227  1014 	G$uartTest1$0$0 ==.
                           000227  1015 	C$uart.c$94$1_0$39 ==.
                                   1016 ;	uart.c:94: void uartTest1(char device)
                                   1017 ;	-----------------------------------------
                                   1018 ;	 function uartTest1
                                   1019 ;	-----------------------------------------
      0007BB                       1020 _uartTest1:
      0007BB E5 82            [12] 1021 	mov	a,dpl
      0007BD 90 42 26         [24] 1022 	mov	dptr,#_uartTest1_device_65536_38
      0007C0 F0               [24] 1023 	movx	@dptr,a
                           00022D  1024 	C$uart.c$96$1_0$39 ==.
                                   1025 ;	uart.c:96: uartInit(device);
      0007C1 E0               [24] 1026 	movx	a,@dptr
      0007C2 FF               [12] 1027 	mov	r7,a
      0007C3 F5 82            [12] 1028 	mov	dpl,a
      0007C5 C0 07            [24] 1029 	push	ar7
      0007C7 78 94            [12] 1030 	mov	r0,#_uartInit
      0007C9 79 05            [12] 1031 	mov	r1,#(_uartInit >> 8)
      0007CB 7A 00            [12] 1032 	mov	r2,#(_uartInit >> 16)
      0007CD 12 00 06         [24] 1033 	lcall	__sdcc_banked_call
      0007D0 D0 07            [24] 1034 	pop	ar7
                           00023E  1035 	C$uart.c$97$1_0$39 ==.
                                   1036 ;	uart.c:97: while(1)
      0007D2                       1037 00102$:
                           00023E  1038 	C$uart.c$99$2_0$40 ==.
                                   1039 ;	uart.c:99: uartTX(device, uartRX(device));
      0007D2 8F 82            [24] 1040 	mov	dpl,r7
      0007D4 C0 07            [24] 1041 	push	ar7
      0007D6 78 A7            [12] 1042 	mov	r0,#_uartRX
      0007D8 79 06            [12] 1043 	mov	r1,#(_uartRX >> 8)
      0007DA 7A 00            [12] 1044 	mov	r2,#(_uartRX >> 16)
      0007DC 12 00 06         [24] 1045 	lcall	__sdcc_banked_call
      0007DF AE 82            [24] 1046 	mov	r6,dpl
      0007E1 D0 07            [24] 1047 	pop	ar7
      0007E3 90 42 0F         [24] 1048 	mov	dptr,#_uartTX_PARM_2
      0007E6 EE               [12] 1049 	mov	a,r6
      0007E7 F0               [24] 1050 	movx	@dptr,a
      0007E8 8F 82            [24] 1051 	mov	dpl,r7
      0007EA C0 07            [24] 1052 	push	ar7
      0007EC 78 C5            [12] 1053 	mov	r0,#_uartTX
      0007EE 79 05            [12] 1054 	mov	r1,#(_uartTX >> 8)
      0007F0 7A 00            [12] 1055 	mov	r2,#(_uartTX >> 16)
      0007F2 12 00 06         [24] 1056 	lcall	__sdcc_banked_call
      0007F5 D0 07            [24] 1057 	pop	ar7
                           000263  1058 	C$uart.c$101$1_0$39 ==.
                                   1059 ;	uart.c:101: }
                           000263  1060 	C$uart.c$101$1_0$39 ==.
                           000263  1061 	XG$uartTest1$0$0 ==.
      0007F7 80 D9            [24] 1062 	sjmp	00102$
                                   1063 ;------------------------------------------------------------
                                   1064 ;Allocation info for local variables in function 'uartTest2'
                                   1065 ;------------------------------------------------------------
                                   1066 ;device                    Allocated with name '_uartTest2_device_65536_41'
                                   1067 ;------------------------------------------------------------
                           000265  1068 	G$uartTest2$0$0 ==.
                           000265  1069 	C$uart.c$113$1_0$42 ==.
                                   1070 ;	uart.c:113: void uartTest2(char device)
                                   1071 ;	-----------------------------------------
                                   1072 ;	 function uartTest2
                                   1073 ;	-----------------------------------------
      0007F9                       1074 _uartTest2:
      0007F9 E5 82            [12] 1075 	mov	a,dpl
      0007FB 90 42 27         [24] 1076 	mov	dptr,#_uartTest2_device_65536_41
      0007FE F0               [24] 1077 	movx	@dptr,a
                           00026B  1078 	C$uart.c$115$1_0$42 ==.
                                   1079 ;	uart.c:115: uartInit(device);
      0007FF E0               [24] 1080 	movx	a,@dptr
      000800 FF               [12] 1081 	mov	r7,a
      000801 F5 82            [12] 1082 	mov	dpl,a
      000803 C0 07            [24] 1083 	push	ar7
      000805 78 94            [12] 1084 	mov	r0,#_uartInit
      000807 79 05            [12] 1085 	mov	r1,#(_uartInit >> 8)
      000809 7A 00            [12] 1086 	mov	r2,#(_uartInit >> 16)
      00080B 12 00 06         [24] 1087 	lcall	__sdcc_banked_call
      00080E D0 07            [24] 1088 	pop	ar7
                           00027C  1089 	C$uart.c$116$1_0$42 ==.
                                   1090 ;	uart.c:116: while(1)
      000810                       1091 00102$:
                           00027C  1092 	C$uart.c$118$2_0$43 ==.
                                   1093 ;	uart.c:118: uartTXStr(device, "Fuck you now!!!!\r\n");
      000810 90 42 10         [24] 1094 	mov	dptr,#_uartTXStr_PARM_2
      000813 74 C7            [12] 1095 	mov	a,#___str_0
      000815 F0               [24] 1096 	movx	@dptr,a
      000816 74 08            [12] 1097 	mov	a,#(___str_0 >> 8)
      000818 A3               [24] 1098 	inc	dptr
      000819 F0               [24] 1099 	movx	@dptr,a
      00081A 74 80            [12] 1100 	mov	a,#0x80
      00081C A3               [24] 1101 	inc	dptr
      00081D F0               [24] 1102 	movx	@dptr,a
      00081E 8F 82            [24] 1103 	mov	dpl,r7
      000820 C0 07            [24] 1104 	push	ar7
      000822 78 D3            [12] 1105 	mov	r0,#_uartTXStr
      000824 79 05            [12] 1106 	mov	r1,#(_uartTXStr >> 8)
      000826 7A 00            [12] 1107 	mov	r2,#(_uartTXStr >> 16)
      000828 12 00 06         [24] 1108 	lcall	__sdcc_banked_call
      00082B D0 07            [24] 1109 	pop	ar7
                           000299  1110 	C$uart.c$119$2_0$43 ==.
                                   1111 ;	uart.c:119: uartTXBuf(device, data, 26*2);
      00082D 90 42 14         [24] 1112 	mov	dptr,#_uartTXBuf_PARM_2
      000830 74 93            [12] 1113 	mov	a,#_data
      000832 F0               [24] 1114 	movx	@dptr,a
      000833 74 08            [12] 1115 	mov	a,#(_data >> 8)
      000835 A3               [24] 1116 	inc	dptr
      000836 F0               [24] 1117 	movx	@dptr,a
      000837 74 80            [12] 1118 	mov	a,#0x80
      000839 A3               [24] 1119 	inc	dptr
      00083A F0               [24] 1120 	movx	@dptr,a
      00083B 90 42 17         [24] 1121 	mov	dptr,#_uartTXBuf_PARM_3
      00083E 74 34            [12] 1122 	mov	a,#0x34
      000840 F0               [24] 1123 	movx	@dptr,a
      000841 E4               [12] 1124 	clr	a
      000842 A3               [24] 1125 	inc	dptr
      000843 F0               [24] 1126 	movx	@dptr,a
      000844 8F 82            [24] 1127 	mov	dpl,r7
      000846 C0 07            [24] 1128 	push	ar7
      000848 78 23            [12] 1129 	mov	r0,#_uartTXBuf
      00084A 79 06            [12] 1130 	mov	r1,#(_uartTXBuf >> 8)
      00084C 7A 00            [12] 1131 	mov	r2,#(_uartTXBuf >> 16)
      00084E 12 00 06         [24] 1132 	lcall	__sdcc_banked_call
      000851 D0 07            [24] 1133 	pop	ar7
                           0002BF  1134 	C$uart.c$121$1_0$42 ==.
                                   1135 ;	uart.c:121: }
                           0002BF  1136 	C$uart.c$121$1_0$42 ==.
                           0002BF  1137 	XG$uartTest2$0$0 ==.
      000853 80 BB            [24] 1138 	sjmp	00102$
                                   1139 ;------------------------------------------------------------
                                   1140 ;Allocation info for local variables in function 'uartTest3'
                                   1141 ;------------------------------------------------------------
                                   1142 ;device                    Allocated with name '_uartTest3_device_65536_44'
                                   1143 ;------------------------------------------------------------
                           0002C1  1144 	G$uartTest3$0$0 ==.
                           0002C1  1145 	C$uart.c$123$1_0$46 ==.
                                   1146 ;	uart.c:123: void uartTest3(char device)
                                   1147 ;	-----------------------------------------
                                   1148 ;	 function uartTest3
                                   1149 ;	-----------------------------------------
      000855                       1150 _uartTest3:
                           0002C1  1151 	C$uart.c$125$1_0$46 ==.
                                   1152 ;	uart.c:125: }
                           0002C1  1153 	C$uart.c$125$1_0$46 ==.
                           0002C1  1154 	XG$uartTest3$0$0 ==.
      000855 02 00 18         [24] 1155 	ljmp	__sdcc_banked_ret
                                   1156 	.area CSEG    (CODE)
                                   1157 	.area CONST   (CODE)
                           000000  1158 G$data$0_0$0 == .
      000893                       1159 _data:
      000893 61                    1160 	.db #0x61	; 97	'a'
      000894 62                    1161 	.db #0x62	; 98	'b'
      000895 63                    1162 	.db #0x63	; 99	'c'
      000896 64                    1163 	.db #0x64	; 100	'd'
      000897 65                    1164 	.db #0x65	; 101	'e'
      000898 66                    1165 	.db #0x66	; 102	'f'
      000899 67                    1166 	.db #0x67	; 103	'g'
      00089A 68                    1167 	.db #0x68	; 104	'h'
      00089B 69                    1168 	.db #0x69	; 105	'i'
      00089C 6A                    1169 	.db #0x6a	; 106	'j'
      00089D 6B                    1170 	.db #0x6b	; 107	'k'
      00089E 6C                    1171 	.db #0x6c	; 108	'l'
      00089F 6D                    1172 	.db #0x6d	; 109	'm'
      0008A0 6E                    1173 	.db #0x6e	; 110	'n'
      0008A1 6F                    1174 	.db #0x6f	; 111	'o'
      0008A2 70                    1175 	.db #0x70	; 112	'p'
      0008A3 71                    1176 	.db #0x71	; 113	'q'
      0008A4 72                    1177 	.db #0x72	; 114	'r'
      0008A5 73                    1178 	.db #0x73	; 115	's'
      0008A6 74                    1179 	.db #0x74	; 116	't'
      0008A7 75                    1180 	.db #0x75	; 117	'u'
      0008A8 76                    1181 	.db #0x76	; 118	'v'
      0008A9 77                    1182 	.db #0x77	; 119	'w'
      0008AA 78                    1183 	.db #0x78	; 120	'x'
      0008AB 79                    1184 	.db #0x79	; 121	'y'
      0008AC 7A                    1185 	.db #0x7a	; 122	'z'
      0008AD 41                    1186 	.db #0x41	; 65	'A'
      0008AE 42                    1187 	.db #0x42	; 66	'B'
      0008AF 43                    1188 	.db #0x43	; 67	'C'
      0008B0 44                    1189 	.db #0x44	; 68	'D'
      0008B1 45                    1190 	.db #0x45	; 69	'E'
      0008B2 46                    1191 	.db #0x46	; 70	'F'
      0008B3 47                    1192 	.db #0x47	; 71	'G'
      0008B4 48                    1193 	.db #0x48	; 72	'H'
      0008B5 49                    1194 	.db #0x49	; 73	'I'
      0008B6 4A                    1195 	.db #0x4a	; 74	'J'
      0008B7 4B                    1196 	.db #0x4b	; 75	'K'
      0008B8 4C                    1197 	.db #0x4c	; 76	'L'
      0008B9 4D                    1198 	.db #0x4d	; 77	'M'
      0008BA 4E                    1199 	.db #0x4e	; 78	'N'
      0008BB 4F                    1200 	.db #0x4f	; 79	'O'
      0008BC 50                    1201 	.db #0x50	; 80	'P'
      0008BD 51                    1202 	.db #0x51	; 81	'Q'
      0008BE 52                    1203 	.db #0x52	; 82	'R'
      0008BF 53                    1204 	.db #0x53	; 83	'S'
      0008C0 54                    1205 	.db #0x54	; 84	'T'
      0008C1 55                    1206 	.db #0x55	; 85	'U'
      0008C2 56                    1207 	.db #0x56	; 86	'V'
      0008C3 57                    1208 	.db #0x57	; 87	'W'
      0008C4 58                    1209 	.db #0x58	; 88	'X'
      0008C5 59                    1210 	.db #0x59	; 89	'Y'
      0008C6 5A                    1211 	.db #0x5a	; 90	'Z'
                           000034  1212 Fuart$__str_0$0_0$0 == .
      0008C7                       1213 ___str_0:
      0008C7 46 75 63 6B 20 79 6F  1214 	.ascii "Fuck you now!!!!"
             75 20 6E 6F 77 21 21
             21 21
      0008D7 0D                    1215 	.db 0x0d
      0008D8 0A                    1216 	.db 0x0a
      0008D9 00                    1217 	.db 0x00
                                   1218 	.area XINIT   (CODE)
                                   1219 	.area CABS    (ABS,CODE)
