                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-huge
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _data
                                     12 	.globl _main
                                     13 	.globl _cf0Test
                                     14 	.globl _uart0Test3
                                     15 	.globl _uart0Test2
                                     16 	.globl _uart0Test1
                                     17 	.globl _uart0RXBuf
                                     18 	.globl _uart0RXStr
                                     19 	.globl _uart0RX
                                     20 	.globl _uart0WaitRXDone
                                     21 	.globl _uart0TXBuf
                                     22 	.globl _uart0TXStr
                                     23 	.globl _uart0TX
                                     24 	.globl _uart0WaitTXDone
                                     25 	.globl _uart0Close
                                     26 	.globl _uart0Init
                                     27 	.globl _pio1Test
                                     28 	.globl _pio0Test
                                     29 	.globl _ledTest
                                     30 	.globl _delay_ms
                                     31 	.globl _delay_us
                                     32 	.globl _cf0ReadSector
                                     33 	.globl _cf0WaitDataReady
                                     34 	.globl _cf0WaitCommandReady
                                     35 	.globl _cf0WaitIdle
                                     36 	.globl _cf0Init
                                     37 	.globl _CY
                                     38 	.globl _AC
                                     39 	.globl _F0
                                     40 	.globl _RS1
                                     41 	.globl _RS0
                                     42 	.globl _OV
                                     43 	.globl _F1
                                     44 	.globl _P
                                     45 	.globl _PS
                                     46 	.globl _PT1
                                     47 	.globl _PX1
                                     48 	.globl _PT0
                                     49 	.globl _PX0
                                     50 	.globl _RD
                                     51 	.globl _WR
                                     52 	.globl _T1
                                     53 	.globl _T0
                                     54 	.globl _INT1
                                     55 	.globl _INT0
                                     56 	.globl _TXD
                                     57 	.globl _RXD
                                     58 	.globl _P3_7
                                     59 	.globl _P3_6
                                     60 	.globl _P3_5
                                     61 	.globl _P3_4
                                     62 	.globl _P3_3
                                     63 	.globl _P3_2
                                     64 	.globl _P3_1
                                     65 	.globl _P3_0
                                     66 	.globl _EA
                                     67 	.globl _ES
                                     68 	.globl _ET1
                                     69 	.globl _EX1
                                     70 	.globl _ET0
                                     71 	.globl _EX0
                                     72 	.globl _P2_7
                                     73 	.globl _P2_6
                                     74 	.globl _P2_5
                                     75 	.globl _P2_4
                                     76 	.globl _P2_3
                                     77 	.globl _P2_2
                                     78 	.globl _P2_1
                                     79 	.globl _P2_0
                                     80 	.globl _SM0
                                     81 	.globl _SM1
                                     82 	.globl _SM2
                                     83 	.globl _REN
                                     84 	.globl _TB8
                                     85 	.globl _RB8
                                     86 	.globl _TI
                                     87 	.globl _RI
                                     88 	.globl _P1_7
                                     89 	.globl _P1_6
                                     90 	.globl _P1_5
                                     91 	.globl _P1_4
                                     92 	.globl _P1_3
                                     93 	.globl _P1_2
                                     94 	.globl _P1_1
                                     95 	.globl _P1_0
                                     96 	.globl _TF1
                                     97 	.globl _TR1
                                     98 	.globl _TF0
                                     99 	.globl _TR0
                                    100 	.globl _IE1
                                    101 	.globl _IT1
                                    102 	.globl _IE0
                                    103 	.globl _IT0
                                    104 	.globl _P0_7
                                    105 	.globl _P0_6
                                    106 	.globl _P0_5
                                    107 	.globl _P0_4
                                    108 	.globl _P0_3
                                    109 	.globl _P0_2
                                    110 	.globl _P0_1
                                    111 	.globl _P0_0
                                    112 	.globl _B
                                    113 	.globl _ACC
                                    114 	.globl _PSW
                                    115 	.globl _IP
                                    116 	.globl _P3
                                    117 	.globl _IE
                                    118 	.globl _P2
                                    119 	.globl _SBUF
                                    120 	.globl _SCON
                                    121 	.globl _P1
                                    122 	.globl _TH1
                                    123 	.globl _TH0
                                    124 	.globl _TL1
                                    125 	.globl _TL0
                                    126 	.globl _TMOD
                                    127 	.globl _TCON
                                    128 	.globl _PCON
                                    129 	.globl _DPH
                                    130 	.globl _DPL
                                    131 	.globl _SP
                                    132 	.globl _P0
                                    133 	.globl _buf
                                    134 	.globl _uart0RXBuf_PARM_2
                                    135 	.globl _uart0RXStr_PARM_2
                                    136 	.globl _uart0TXBuf_PARM_2
                                    137 	.globl _cf0ReadSector_PARM_2
                                    138 ;--------------------------------------------------------
                                    139 ; special function registers
                                    140 ;--------------------------------------------------------
                                    141 	.area RSEG    (ABS,DATA)
      000000                        142 	.org 0x0000
                           000080   143 G$P0$0_0$0 == 0x0080
                           000080   144 _P0	=	0x0080
                           000081   145 G$SP$0_0$0 == 0x0081
                           000081   146 _SP	=	0x0081
                           000082   147 G$DPL$0_0$0 == 0x0082
                           000082   148 _DPL	=	0x0082
                           000083   149 G$DPH$0_0$0 == 0x0083
                           000083   150 _DPH	=	0x0083
                           000087   151 G$PCON$0_0$0 == 0x0087
                           000087   152 _PCON	=	0x0087
                           000088   153 G$TCON$0_0$0 == 0x0088
                           000088   154 _TCON	=	0x0088
                           000089   155 G$TMOD$0_0$0 == 0x0089
                           000089   156 _TMOD	=	0x0089
                           00008A   157 G$TL0$0_0$0 == 0x008a
                           00008A   158 _TL0	=	0x008a
                           00008B   159 G$TL1$0_0$0 == 0x008b
                           00008B   160 _TL1	=	0x008b
                           00008C   161 G$TH0$0_0$0 == 0x008c
                           00008C   162 _TH0	=	0x008c
                           00008D   163 G$TH1$0_0$0 == 0x008d
                           00008D   164 _TH1	=	0x008d
                           000090   165 G$P1$0_0$0 == 0x0090
                           000090   166 _P1	=	0x0090
                           000098   167 G$SCON$0_0$0 == 0x0098
                           000098   168 _SCON	=	0x0098
                           000099   169 G$SBUF$0_0$0 == 0x0099
                           000099   170 _SBUF	=	0x0099
                           0000A0   171 G$P2$0_0$0 == 0x00a0
                           0000A0   172 _P2	=	0x00a0
                           0000A8   173 G$IE$0_0$0 == 0x00a8
                           0000A8   174 _IE	=	0x00a8
                           0000B0   175 G$P3$0_0$0 == 0x00b0
                           0000B0   176 _P3	=	0x00b0
                           0000B8   177 G$IP$0_0$0 == 0x00b8
                           0000B8   178 _IP	=	0x00b8
                           0000D0   179 G$PSW$0_0$0 == 0x00d0
                           0000D0   180 _PSW	=	0x00d0
                           0000E0   181 G$ACC$0_0$0 == 0x00e0
                           0000E0   182 _ACC	=	0x00e0
                           0000F0   183 G$B$0_0$0 == 0x00f0
                           0000F0   184 _B	=	0x00f0
                                    185 ;--------------------------------------------------------
                                    186 ; special function bits
                                    187 ;--------------------------------------------------------
                                    188 	.area RSEG    (ABS,DATA)
      000000                        189 	.org 0x0000
                           000080   190 G$P0_0$0_0$0 == 0x0080
                           000080   191 _P0_0	=	0x0080
                           000081   192 G$P0_1$0_0$0 == 0x0081
                           000081   193 _P0_1	=	0x0081
                           000082   194 G$P0_2$0_0$0 == 0x0082
                           000082   195 _P0_2	=	0x0082
                           000083   196 G$P0_3$0_0$0 == 0x0083
                           000083   197 _P0_3	=	0x0083
                           000084   198 G$P0_4$0_0$0 == 0x0084
                           000084   199 _P0_4	=	0x0084
                           000085   200 G$P0_5$0_0$0 == 0x0085
                           000085   201 _P0_5	=	0x0085
                           000086   202 G$P0_6$0_0$0 == 0x0086
                           000086   203 _P0_6	=	0x0086
                           000087   204 G$P0_7$0_0$0 == 0x0087
                           000087   205 _P0_7	=	0x0087
                           000088   206 G$IT0$0_0$0 == 0x0088
                           000088   207 _IT0	=	0x0088
                           000089   208 G$IE0$0_0$0 == 0x0089
                           000089   209 _IE0	=	0x0089
                           00008A   210 G$IT1$0_0$0 == 0x008a
                           00008A   211 _IT1	=	0x008a
                           00008B   212 G$IE1$0_0$0 == 0x008b
                           00008B   213 _IE1	=	0x008b
                           00008C   214 G$TR0$0_0$0 == 0x008c
                           00008C   215 _TR0	=	0x008c
                           00008D   216 G$TF0$0_0$0 == 0x008d
                           00008D   217 _TF0	=	0x008d
                           00008E   218 G$TR1$0_0$0 == 0x008e
                           00008E   219 _TR1	=	0x008e
                           00008F   220 G$TF1$0_0$0 == 0x008f
                           00008F   221 _TF1	=	0x008f
                           000090   222 G$P1_0$0_0$0 == 0x0090
                           000090   223 _P1_0	=	0x0090
                           000091   224 G$P1_1$0_0$0 == 0x0091
                           000091   225 _P1_1	=	0x0091
                           000092   226 G$P1_2$0_0$0 == 0x0092
                           000092   227 _P1_2	=	0x0092
                           000093   228 G$P1_3$0_0$0 == 0x0093
                           000093   229 _P1_3	=	0x0093
                           000094   230 G$P1_4$0_0$0 == 0x0094
                           000094   231 _P1_4	=	0x0094
                           000095   232 G$P1_5$0_0$0 == 0x0095
                           000095   233 _P1_5	=	0x0095
                           000096   234 G$P1_6$0_0$0 == 0x0096
                           000096   235 _P1_6	=	0x0096
                           000097   236 G$P1_7$0_0$0 == 0x0097
                           000097   237 _P1_7	=	0x0097
                           000098   238 G$RI$0_0$0 == 0x0098
                           000098   239 _RI	=	0x0098
                           000099   240 G$TI$0_0$0 == 0x0099
                           000099   241 _TI	=	0x0099
                           00009A   242 G$RB8$0_0$0 == 0x009a
                           00009A   243 _RB8	=	0x009a
                           00009B   244 G$TB8$0_0$0 == 0x009b
                           00009B   245 _TB8	=	0x009b
                           00009C   246 G$REN$0_0$0 == 0x009c
                           00009C   247 _REN	=	0x009c
                           00009D   248 G$SM2$0_0$0 == 0x009d
                           00009D   249 _SM2	=	0x009d
                           00009E   250 G$SM1$0_0$0 == 0x009e
                           00009E   251 _SM1	=	0x009e
                           00009F   252 G$SM0$0_0$0 == 0x009f
                           00009F   253 _SM0	=	0x009f
                           0000A0   254 G$P2_0$0_0$0 == 0x00a0
                           0000A0   255 _P2_0	=	0x00a0
                           0000A1   256 G$P2_1$0_0$0 == 0x00a1
                           0000A1   257 _P2_1	=	0x00a1
                           0000A2   258 G$P2_2$0_0$0 == 0x00a2
                           0000A2   259 _P2_2	=	0x00a2
                           0000A3   260 G$P2_3$0_0$0 == 0x00a3
                           0000A3   261 _P2_3	=	0x00a3
                           0000A4   262 G$P2_4$0_0$0 == 0x00a4
                           0000A4   263 _P2_4	=	0x00a4
                           0000A5   264 G$P2_5$0_0$0 == 0x00a5
                           0000A5   265 _P2_5	=	0x00a5
                           0000A6   266 G$P2_6$0_0$0 == 0x00a6
                           0000A6   267 _P2_6	=	0x00a6
                           0000A7   268 G$P2_7$0_0$0 == 0x00a7
                           0000A7   269 _P2_7	=	0x00a7
                           0000A8   270 G$EX0$0_0$0 == 0x00a8
                           0000A8   271 _EX0	=	0x00a8
                           0000A9   272 G$ET0$0_0$0 == 0x00a9
                           0000A9   273 _ET0	=	0x00a9
                           0000AA   274 G$EX1$0_0$0 == 0x00aa
                           0000AA   275 _EX1	=	0x00aa
                           0000AB   276 G$ET1$0_0$0 == 0x00ab
                           0000AB   277 _ET1	=	0x00ab
                           0000AC   278 G$ES$0_0$0 == 0x00ac
                           0000AC   279 _ES	=	0x00ac
                           0000AF   280 G$EA$0_0$0 == 0x00af
                           0000AF   281 _EA	=	0x00af
                           0000B0   282 G$P3_0$0_0$0 == 0x00b0
                           0000B0   283 _P3_0	=	0x00b0
                           0000B1   284 G$P3_1$0_0$0 == 0x00b1
                           0000B1   285 _P3_1	=	0x00b1
                           0000B2   286 G$P3_2$0_0$0 == 0x00b2
                           0000B2   287 _P3_2	=	0x00b2
                           0000B3   288 G$P3_3$0_0$0 == 0x00b3
                           0000B3   289 _P3_3	=	0x00b3
                           0000B4   290 G$P3_4$0_0$0 == 0x00b4
                           0000B4   291 _P3_4	=	0x00b4
                           0000B5   292 G$P3_5$0_0$0 == 0x00b5
                           0000B5   293 _P3_5	=	0x00b5
                           0000B6   294 G$P3_6$0_0$0 == 0x00b6
                           0000B6   295 _P3_6	=	0x00b6
                           0000B7   296 G$P3_7$0_0$0 == 0x00b7
                           0000B7   297 _P3_7	=	0x00b7
                           0000B0   298 G$RXD$0_0$0 == 0x00b0
                           0000B0   299 _RXD	=	0x00b0
                           0000B1   300 G$TXD$0_0$0 == 0x00b1
                           0000B1   301 _TXD	=	0x00b1
                           0000B2   302 G$INT0$0_0$0 == 0x00b2
                           0000B2   303 _INT0	=	0x00b2
                           0000B3   304 G$INT1$0_0$0 == 0x00b3
                           0000B3   305 _INT1	=	0x00b3
                           0000B4   306 G$T0$0_0$0 == 0x00b4
                           0000B4   307 _T0	=	0x00b4
                           0000B5   308 G$T1$0_0$0 == 0x00b5
                           0000B5   309 _T1	=	0x00b5
                           0000B6   310 G$WR$0_0$0 == 0x00b6
                           0000B6   311 _WR	=	0x00b6
                           0000B7   312 G$RD$0_0$0 == 0x00b7
                           0000B7   313 _RD	=	0x00b7
                           0000B8   314 G$PX0$0_0$0 == 0x00b8
                           0000B8   315 _PX0	=	0x00b8
                           0000B9   316 G$PT0$0_0$0 == 0x00b9
                           0000B9   317 _PT0	=	0x00b9
                           0000BA   318 G$PX1$0_0$0 == 0x00ba
                           0000BA   319 _PX1	=	0x00ba
                           0000BB   320 G$PT1$0_0$0 == 0x00bb
                           0000BB   321 _PT1	=	0x00bb
                           0000BC   322 G$PS$0_0$0 == 0x00bc
                           0000BC   323 _PS	=	0x00bc
                           0000D0   324 G$P$0_0$0 == 0x00d0
                           0000D0   325 _P	=	0x00d0
                           0000D1   326 G$F1$0_0$0 == 0x00d1
                           0000D1   327 _F1	=	0x00d1
                           0000D2   328 G$OV$0_0$0 == 0x00d2
                           0000D2   329 _OV	=	0x00d2
                           0000D3   330 G$RS0$0_0$0 == 0x00d3
                           0000D3   331 _RS0	=	0x00d3
                           0000D4   332 G$RS1$0_0$0 == 0x00d4
                           0000D4   333 _RS1	=	0x00d4
                           0000D5   334 G$F0$0_0$0 == 0x00d5
                           0000D5   335 _F0	=	0x00d5
                           0000D6   336 G$AC$0_0$0 == 0x00d6
                           0000D6   337 _AC	=	0x00d6
                           0000D7   338 G$CY$0_0$0 == 0x00d7
                           0000D7   339 _CY	=	0x00d7
                                    340 ;--------------------------------------------------------
                                    341 ; overlayable register banks
                                    342 ;--------------------------------------------------------
                                    343 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        344 	.ds 8
                                    345 ;--------------------------------------------------------
                                    346 ; internal ram data
                                    347 ;--------------------------------------------------------
                                    348 	.area DSEG    (DATA)
                           000000   349 Lmain.cf0ReadSector$i$1_0$9==.
      000008                        350 _cf0ReadSector_i_65536_9:
      000008                        351 	.ds 2
                           000002   352 Lmain.uart0TXBuf$i$1_0$35==.
      00000A                        353 _uart0TXBuf_i_65536_35:
      00000A                        354 	.ds 2
                           000004   355 Lmain.uart0RXStr$i$1_0$40==.
      00000C                        356 _uart0RXStr_i_65536_40:
      00000C                        357 	.ds 2
                           000006   358 Lmain.uart0RXStr$sloc0$0_1$0==.
      00000E                        359 _uart0RXStr_sloc0_1_0:
      00000E                        360 	.ds 3
                           000009   361 Lmain.uart0RXBuf$i$1_0$43==.
      000011                        362 _uart0RXBuf_i_65536_43:
      000011                        363 	.ds 2
                           00000B   364 Lmain.main$dst$2_0$53==.
      000013                        365 _main_dst_131072_53:
      000013                        366 	.ds 2
                                    367 ;--------------------------------------------------------
                                    368 ; overlayable items in internal ram 
                                    369 ;--------------------------------------------------------
                                    370 	.area	OSEG    (OVR,DATA)
                                    371 	.area	OSEG    (OVR,DATA)
                                    372 	.area	OSEG    (OVR,DATA)
                                    373 	.area	OSEG    (OVR,DATA)
                                    374 ;--------------------------------------------------------
                                    375 ; Stack segment in internal ram 
                                    376 ;--------------------------------------------------------
                                    377 	.area	SSEG
      000015                        378 __start__stack:
      000015                        379 	.ds	1
                                    380 
                                    381 ;--------------------------------------------------------
                                    382 ; indirectly addressable internal ram data
                                    383 ;--------------------------------------------------------
                                    384 	.area ISEG    (DATA)
                                    385 ;--------------------------------------------------------
                                    386 ; absolute internal ram data
                                    387 ;--------------------------------------------------------
                                    388 	.area IABS    (ABS,DATA)
                                    389 	.area IABS    (ABS,DATA)
                                    390 ;--------------------------------------------------------
                                    391 ; bit data
                                    392 ;--------------------------------------------------------
                                    393 	.area BSEG    (BIT)
                                    394 ;--------------------------------------------------------
                                    395 ; paged external ram data
                                    396 ;--------------------------------------------------------
                                    397 	.area PSEG    (PAG,XDATA)
                                    398 ;--------------------------------------------------------
                                    399 ; external ram data
                                    400 ;--------------------------------------------------------
                                    401 	.area XSEG    (XDATA)
                           000000   402 Lmain.cf0ReadSector$sectorCount$1_0$8==.
      004000                        403 _cf0ReadSector_PARM_2:
      004000                        404 	.ds 2
                           000002   405 Lmain.cf0ReadSector$buf$1_0$8==.
      004002                        406 _cf0ReadSector_buf_65536_8:
      004002                        407 	.ds 3
                           000005   408 Lmain.uart0TX$d$1_0$29==.
      004005                        409 _uart0TX_d_65536_29:
      004005                        410 	.ds 1
                           000006   411 Lmain.uart0TXStr$s$1_0$31==.
      004006                        412 _uart0TXStr_s_65536_31:
      004006                        413 	.ds 3
                           000009   414 Lmain.uart0TXBuf$size$1_0$34==.
      004009                        415 _uart0TXBuf_PARM_2:
      004009                        416 	.ds 2
                           00000B   417 Lmain.uart0TXBuf$buf$1_0$34==.
      00400B                        418 _uart0TXBuf_buf_65536_34:
      00400B                        419 	.ds 3
                           00000E   420 Lmain.uart0RXStr$size$1_0$39==.
      00400E                        421 _uart0RXStr_PARM_2:
      00400E                        422 	.ds 2
                           000010   423 Lmain.uart0RXStr$s$1_0$39==.
      004010                        424 _uart0RXStr_s_65536_39:
      004010                        425 	.ds 3
                           000013   426 Lmain.uart0RXBuf$size$1_0$42==.
      004013                        427 _uart0RXBuf_PARM_2:
      004013                        428 	.ds 2
                           000015   429 Lmain.uart0RXBuf$buf$1_0$42==.
      004015                        430 _uart0RXBuf_buf_65536_42:
      004015                        431 	.ds 3
                           000018   432 G$buf$0_0$0==.
      004018                        433 _buf::
      004018                        434 	.ds 512
                                    435 ;--------------------------------------------------------
                                    436 ; absolute external ram data
                                    437 ;--------------------------------------------------------
                                    438 	.area XABS    (ABS,XDATA)
                                    439 ;--------------------------------------------------------
                                    440 ; external initialized ram data
                                    441 ;--------------------------------------------------------
                                    442 	.area XISEG   (XDATA)
                                    443 	.area HOME    (CODE)
                                    444 	.area GSINIT0 (CODE)
                                    445 	.area GSINIT1 (CODE)
                                    446 	.area GSINIT2 (CODE)
                                    447 	.area GSINIT3 (CODE)
                                    448 	.area GSINIT4 (CODE)
                                    449 	.area GSINIT5 (CODE)
                                    450 	.area GSINIT  (CODE)
                                    451 	.area GSFINAL (CODE)
                                    452 	.area CSEG    (CODE)
                                    453 ;--------------------------------------------------------
                                    454 ; interrupt vector 
                                    455 ;--------------------------------------------------------
                                    456 	.area HOME    (CODE)
      000000                        457 __interrupt_vect:
      000000 02 00 1B         [24]  458 	ljmp	__sdcc_gsinit_startup
                                    459 ;--------------------------------------------------------
                                    460 ; global & static initialisations
                                    461 ;--------------------------------------------------------
                                    462 	.area HOME    (CODE)
                                    463 	.area GSINIT  (CODE)
                                    464 	.area GSFINAL (CODE)
                                    465 	.area GSINIT  (CODE)
                                    466 	.globl __sdcc_gsinit_startup
                                    467 	.globl __sdcc_program_startup
                                    468 	.globl __start__stack
                                    469 	.globl __mcs51_genXINIT
                                    470 	.globl __mcs51_genXRAMCLEAR
                                    471 	.globl __mcs51_genRAMCLEAR
                                    472 	.area GSFINAL (CODE)
      000074 02 00 03         [24]  473 	ljmp	__sdcc_program_startup
                                    474 ;--------------------------------------------------------
                                    475 ; Home
                                    476 ;--------------------------------------------------------
                                    477 	.area HOME    (CODE)
                                    478 	.area HOME    (CODE)
      000003                        479 __sdcc_program_startup:
      000003 02 06 07         [24]  480 	ljmp	_main
                                    481 ;	return from main will return to caller
                                    482 ;--------------------------------------------------------
                                    483 ; code
                                    484 ;--------------------------------------------------------
                                    485 	.area CSEG    (CODE)
                                    486 ;------------------------------------------------------------
                                    487 ;Allocation info for local variables in function 'cf0Init'
                                    488 ;------------------------------------------------------------
                           000000   489 	G$cf0Init$0$0 ==.
                           000000   490 	C$main.c$174$0_0$1 ==.
                                    491 ;	main.c:174: void cf0Init()
                                    492 ;	-----------------------------------------
                                    493 ;	 function cf0Init
                                    494 ;	-----------------------------------------
      000077                        495 _cf0Init:
                           000007   496 	ar7 = 0x07
                           000006   497 	ar6 = 0x06
                           000005   498 	ar5 = 0x05
                           000004   499 	ar4 = 0x04
                           000003   500 	ar3 = 0x03
                           000002   501 	ar2 = 0x02
                           000001   502 	ar1 = 0x01
                           000000   503 	ar0 = 0x00
                           000000   504 	C$main.c$176$1_0$1 ==.
                                    505 ;	main.c:176: cf0WriteFeatures(0x01); //  set 8 bit mode to features port
      000077 90 FF 21         [24]  506 	mov	dptr,#0xff21
      00007A 74 01            [12]  507 	mov	a,#0x01
      00007C F0               [24]  508 	movx	@dptr,a
                           000006   509 	C$main.c$178$1_0$1 ==.
                                    510 ;	main.c:178: cf0WriteCommand(0xef);  // command 'set features'
      00007D 90 FF 27         [24]  511 	mov	dptr,#0xff27
      000080 74 EF            [12]  512 	mov	a,#0xef
      000082 F0               [24]  513 	movx	@dptr,a
                           00000C   514 	C$main.c$179$1_0$1 ==.
                                    515 ;	main.c:179: }
                           00000C   516 	C$main.c$179$1_0$1 ==.
                           00000C   517 	XG$cf0Init$0$0 ==.
      000083 02 00 18         [24]  518 	ljmp	__sdcc_banked_ret
                                    519 ;------------------------------------------------------------
                                    520 ;Allocation info for local variables in function 'cf0WaitIdle'
                                    521 ;------------------------------------------------------------
                                    522 ;status                    Allocated to registers r7 
                                    523 ;------------------------------------------------------------
                           00000F   524 	G$cf0WaitIdle$0$0 ==.
                           00000F   525 	C$main.c$181$1_0$2 ==.
                                    526 ;	main.c:181: void cf0WaitIdle()
                                    527 ;	-----------------------------------------
                                    528 ;	 function cf0WaitIdle
                                    529 ;	-----------------------------------------
      000086                        530 _cf0WaitIdle:
                           00000F   531 	C$main.c$184$1_0$2 ==.
                                    532 ;	main.c:184: do
      000086                        533 00101$:
                           00000F   534 	C$main.c$186$2_0$3 ==.
                                    535 ;	main.c:186: status = cf0ReadStatus();
      000086 90 FF 27         [24]  536 	mov	dptr,#0xff27
      000089 E0               [24]  537 	movx	a,@dptr
                           000013   538 	C$main.c$187$1_0$2 ==.
                                    539 ;	main.c:187: }while((status & 0x80)!=0);
      00008A FF               [12]  540 	mov	r7,a
      00008B 20 E7 F8         [24]  541 	jb	acc.7,00101$
                           000017   542 	C$main.c$188$1_0$2 ==.
                                    543 ;	main.c:188: }
                           000017   544 	C$main.c$188$1_0$2 ==.
                           000017   545 	XG$cf0WaitIdle$0$0 ==.
      00008E 02 00 18         [24]  546 	ljmp	__sdcc_banked_ret
                                    547 ;------------------------------------------------------------
                                    548 ;Allocation info for local variables in function 'cf0WaitCommandReady'
                                    549 ;------------------------------------------------------------
                                    550 ;status                    Allocated to registers r7 
                                    551 ;------------------------------------------------------------
                           00001A   552 	G$cf0WaitCommandReady$0$0 ==.
                           00001A   553 	C$main.c$190$1_0$4 ==.
                                    554 ;	main.c:190: void cf0WaitCommandReady()
                                    555 ;	-----------------------------------------
                                    556 ;	 function cf0WaitCommandReady
                                    557 ;	-----------------------------------------
      000091                        558 _cf0WaitCommandReady:
                           00001A   559 	C$main.c$193$1_0$4 ==.
                                    560 ;	main.c:193: do
      000091                        561 00101$:
                           00001A   562 	C$main.c$195$2_0$5 ==.
                                    563 ;	main.c:195: status = cf0ReadStatus();
      000091 90 FF 27         [24]  564 	mov	dptr,#0xff27
      000094 E0               [24]  565 	movx	a,@dptr
      000095 FF               [12]  566 	mov	r7,a
                           00001F   567 	C$main.c$196$1_0$4 ==.
                                    568 ;	main.c:196: }while((status & 0xc0)!=0x40);
      000096 53 07 C0         [24]  569 	anl	ar7,#0xc0
      000099 7E 00            [12]  570 	mov	r6,#0x00
      00009B BF 40 F3         [24]  571 	cjne	r7,#0x40,00101$
      00009E BE 00 F0         [24]  572 	cjne	r6,#0x00,00101$
                           00002A   573 	C$main.c$197$1_0$4 ==.
                                    574 ;	main.c:197: }
                           00002A   575 	C$main.c$197$1_0$4 ==.
                           00002A   576 	XG$cf0WaitCommandReady$0$0 ==.
      0000A1 02 00 18         [24]  577 	ljmp	__sdcc_banked_ret
                                    578 ;------------------------------------------------------------
                                    579 ;Allocation info for local variables in function 'cf0WaitDataReady'
                                    580 ;------------------------------------------------------------
                                    581 ;status                    Allocated to registers r7 
                                    582 ;------------------------------------------------------------
                           00002D   583 	G$cf0WaitDataReady$0$0 ==.
                           00002D   584 	C$main.c$199$1_0$6 ==.
                                    585 ;	main.c:199: void cf0WaitDataReady()
                                    586 ;	-----------------------------------------
                                    587 ;	 function cf0WaitDataReady
                                    588 ;	-----------------------------------------
      0000A4                        589 _cf0WaitDataReady:
                           00002D   590 	C$main.c$202$1_0$6 ==.
                                    591 ;	main.c:202: do
      0000A4                        592 00101$:
                           00002D   593 	C$main.c$204$2_0$7 ==.
                                    594 ;	main.c:204: status = cf0ReadStatus();
      0000A4 90 FF 27         [24]  595 	mov	dptr,#0xff27
      0000A7 E0               [24]  596 	movx	a,@dptr
      0000A8 FF               [12]  597 	mov	r7,a
                           000032   598 	C$main.c$205$1_0$6 ==.
                                    599 ;	main.c:205: }while((status & 0x88)!=0x08);
      0000A9 53 07 88         [24]  600 	anl	ar7,#0x88
      0000AC 7E 00            [12]  601 	mov	r6,#0x00
      0000AE BF 08 F3         [24]  602 	cjne	r7,#0x08,00101$
      0000B1 BE 00 F0         [24]  603 	cjne	r6,#0x00,00101$
                           00003D   604 	C$main.c$206$1_0$6 ==.
                                    605 ;	main.c:206: }
                           00003D   606 	C$main.c$206$1_0$6 ==.
                           00003D   607 	XG$cf0WaitDataReady$0$0 ==.
      0000B4 02 00 18         [24]  608 	ljmp	__sdcc_banked_ret
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'cf0ReadSector'
                                    611 ;------------------------------------------------------------
                                    612 ;status                    Allocated to registers r7 
                                    613 ;i                         Allocated with name '_cf0ReadSector_i_65536_9'
                                    614 ;idx                       Allocated to registers 
                                    615 ;sectorCount               Allocated with name '_cf0ReadSector_PARM_2'
                                    616 ;buf                       Allocated with name '_cf0ReadSector_buf_65536_8'
                                    617 ;------------------------------------------------------------
                           000040   618 	G$cf0ReadSector$0$0 ==.
                           000040   619 	C$main.c$209$1_0$9 ==.
                                    620 ;	main.c:209: void cf0ReadSector(char* buf, unsigned int sectorCount)
                                    621 ;	-----------------------------------------
                                    622 ;	 function cf0ReadSector
                                    623 ;	-----------------------------------------
      0000B7                        624 _cf0ReadSector:
      0000B7 AF F0            [24]  625 	mov	r7,b
      0000B9 AE 83            [24]  626 	mov	r6,dph
      0000BB E5 82            [12]  627 	mov	a,dpl
      0000BD 90 40 02         [24]  628 	mov	dptr,#_cf0ReadSector_buf_65536_8
      0000C0 F0               [24]  629 	movx	@dptr,a
      0000C1 EE               [12]  630 	mov	a,r6
      0000C2 A3               [24]  631 	inc	dptr
      0000C3 F0               [24]  632 	movx	@dptr,a
      0000C4 EF               [12]  633 	mov	a,r7
      0000C5 A3               [24]  634 	inc	dptr
      0000C6 F0               [24]  635 	movx	@dptr,a
                           000050   636 	C$main.c$215$1_0$9 ==.
                                    637 ;	main.c:215: P1 = 0xe1;
      0000C7 75 90 E1         [24]  638 	mov	_P1,#0xe1
                           000053   639 	C$main.c$216$1_0$9 ==.
                                    640 ;	main.c:216: cf0WaitIdle();
      0000CA 78 86            [12]  641 	mov	r0,#_cf0WaitIdle
      0000CC 79 00            [12]  642 	mov	r1,#(_cf0WaitIdle >> 8)
      0000CE 7A 00            [12]  643 	mov	r2,#(_cf0WaitIdle >> 16)
      0000D0 12 00 06         [24]  644 	lcall	__sdcc_banked_call
                           00005C   645 	C$main.c$218$1_0$9 ==.
                                    646 ;	main.c:218: P1 = 0xe2;
      0000D3 75 90 E2         [24]  647 	mov	_P1,#0xe2
                           00005F   648 	C$main.c$219$1_0$9 ==.
                                    649 ;	main.c:219: cf0WriteSectorCount(0x01);
      0000D6 90 FF 22         [24]  650 	mov	dptr,#0xff22
      0000D9 74 01            [12]  651 	mov	a,#0x01
      0000DB F0               [24]  652 	movx	@dptr,a
                           000065   653 	C$main.c$221$1_0$9 ==.
                                    654 ;	main.c:221: P1 = 0xe3;
      0000DC 75 90 E3         [24]  655 	mov	_P1,#0xe3
                           000068   656 	C$main.c$222$1_0$9 ==.
                                    657 ;	main.c:222: cf0WaitIdle();
      0000DF 78 86            [12]  658 	mov	r0,#_cf0WaitIdle
      0000E1 79 00            [12]  659 	mov	r1,#(_cf0WaitIdle >> 8)
      0000E3 7A 00            [12]  660 	mov	r2,#(_cf0WaitIdle >> 16)
      0000E5 12 00 06         [24]  661 	lcall	__sdcc_banked_call
                           000071   662 	C$main.c$224$1_0$9 ==.
                                    663 ;	main.c:224: P1 = 0xe4;
      0000E8 75 90 E4         [24]  664 	mov	_P1,#0xe4
                           000074   665 	C$main.c$225$1_0$9 ==.
                                    666 ;	main.c:225: cf0WriteLBA0(0x00);
      0000EB 90 FF 23         [24]  667 	mov	dptr,#0xff23
      0000EE E4               [12]  668 	clr	a
      0000EF F0               [24]  669 	movx	@dptr,a
                           000079   670 	C$main.c$227$1_0$9 ==.
                                    671 ;	main.c:227: P1 = 0xe5;
      0000F0 75 90 E5         [24]  672 	mov	_P1,#0xe5
                           00007C   673 	C$main.c$228$1_0$9 ==.
                                    674 ;	main.c:228: cf0WaitIdle();
      0000F3 78 86            [12]  675 	mov	r0,#_cf0WaitIdle
      0000F5 79 00            [12]  676 	mov	r1,#(_cf0WaitIdle >> 8)
      0000F7 7A 00            [12]  677 	mov	r2,#(_cf0WaitIdle >> 16)
      0000F9 12 00 06         [24]  678 	lcall	__sdcc_banked_call
                           000085   679 	C$main.c$230$1_0$9 ==.
                                    680 ;	main.c:230: P1 = 0xe6;
      0000FC 75 90 E6         [24]  681 	mov	_P1,#0xe6
                           000088   682 	C$main.c$231$1_0$9 ==.
                                    683 ;	main.c:231: cf0WriteLBA1(0x00);
      0000FF 90 FF 24         [24]  684 	mov	dptr,#0xff24
      000102 E4               [12]  685 	clr	a
      000103 F0               [24]  686 	movx	@dptr,a
                           00008D   687 	C$main.c$233$1_0$9 ==.
                                    688 ;	main.c:233: P1 = 0xe7;
      000104 75 90 E7         [24]  689 	mov	_P1,#0xe7
                           000090   690 	C$main.c$234$1_0$9 ==.
                                    691 ;	main.c:234: cf0WaitIdle();
      000107 78 86            [12]  692 	mov	r0,#_cf0WaitIdle
      000109 79 00            [12]  693 	mov	r1,#(_cf0WaitIdle >> 8)
      00010B 7A 00            [12]  694 	mov	r2,#(_cf0WaitIdle >> 16)
      00010D 12 00 06         [24]  695 	lcall	__sdcc_banked_call
                           000099   696 	C$main.c$236$1_0$9 ==.
                                    697 ;	main.c:236: P1 = 0xe8;
      000110 75 90 E8         [24]  698 	mov	_P1,#0xe8
                           00009C   699 	C$main.c$237$1_0$9 ==.
                                    700 ;	main.c:237: cf0WriteLBA2(0x00);
      000113 90 FF 25         [24]  701 	mov	dptr,#0xff25
      000116 E4               [12]  702 	clr	a
      000117 F0               [24]  703 	movx	@dptr,a
                           0000A1   704 	C$main.c$239$1_0$9 ==.
                                    705 ;	main.c:239: P1 = 0xe9;
      000118 75 90 E9         [24]  706 	mov	_P1,#0xe9
                           0000A4   707 	C$main.c$240$1_0$9 ==.
                                    708 ;	main.c:240: cf0WaitIdle();
      00011B 78 86            [12]  709 	mov	r0,#_cf0WaitIdle
      00011D 79 00            [12]  710 	mov	r1,#(_cf0WaitIdle >> 8)
      00011F 7A 00            [12]  711 	mov	r2,#(_cf0WaitIdle >> 16)
      000121 12 00 06         [24]  712 	lcall	__sdcc_banked_call
                           0000AD   713 	C$main.c$242$1_0$9 ==.
                                    714 ;	main.c:242: P1 = 0xea;
      000124 75 90 EA         [24]  715 	mov	_P1,#0xea
                           0000B0   716 	C$main.c$243$1_0$9 ==.
                                    717 ;	main.c:243: cf0WriteLBA3(0xe0);
      000127 90 FF 26         [24]  718 	mov	dptr,#0xff26
      00012A 74 E0            [12]  719 	mov	a,#0xe0
      00012C F0               [24]  720 	movx	@dptr,a
                           0000B6   721 	C$main.c$245$1_0$9 ==.
                                    722 ;	main.c:245: do
      00012D                        723 00101$:
                           0000B6   724 	C$main.c$247$2_0$10 ==.
                                    725 ;	main.c:247: P1 = 0xeb;
      00012D 75 90 EB         [24]  726 	mov	_P1,#0xeb
                           0000B9   727 	C$main.c$248$2_0$10 ==.
                                    728 ;	main.c:248: cf0WaitCommandReady();
      000130 78 91            [12]  729 	mov	r0,#_cf0WaitCommandReady
      000132 79 00            [12]  730 	mov	r1,#(_cf0WaitCommandReady >> 8)
      000134 7A 00            [12]  731 	mov	r2,#(_cf0WaitCommandReady >> 16)
      000136 12 00 06         [24]  732 	lcall	__sdcc_banked_call
                           0000C2   733 	C$main.c$250$2_0$10 ==.
                                    734 ;	main.c:250: P1 = 0xec;
      000139 75 90 EC         [24]  735 	mov	_P1,#0xec
                           0000C5   736 	C$main.c$251$2_0$10 ==.
                                    737 ;	main.c:251: cf0WriteCommand(0x20);
      00013C 90 FF 27         [24]  738 	mov	dptr,#0xff27
      00013F 74 20            [12]  739 	mov	a,#0x20
      000141 F0               [24]  740 	movx	@dptr,a
                           0000CB   741 	C$main.c$253$2_0$10 ==.
                                    742 ;	main.c:253: P1 = 0xed;
      000142 75 90 ED         [24]  743 	mov	_P1,#0xed
                           0000CE   744 	C$main.c$254$2_0$10 ==.
                                    745 ;	main.c:254: cf0WaitDataReady();
      000145 78 A4            [12]  746 	mov	r0,#_cf0WaitDataReady
      000147 79 00            [12]  747 	mov	r1,#(_cf0WaitDataReady >> 8)
      000149 7A 00            [12]  748 	mov	r2,#(_cf0WaitDataReady >> 16)
      00014B 12 00 06         [24]  749 	lcall	__sdcc_banked_call
                           0000D7   750 	C$main.c$256$2_0$10 ==.
                                    751 ;	main.c:256: P1 = 0xee;
      00014E 75 90 EE         [24]  752 	mov	_P1,#0xee
                           0000DA   753 	C$main.c$257$2_0$10 ==.
                                    754 ;	main.c:257: status = cf0ReadStatus();
      000151 90 FF 27         [24]  755 	mov	dptr,#0xff27
      000154 E0               [24]  756 	movx	a,@dptr
                           0000DE   757 	C$main.c$259$2_0$10 ==.
                                    758 ;	main.c:259: P1 = 0xef;
                           0000DE   759 	C$main.c$260$1_0$9 ==.
                                    760 ;	main.c:260: }while((status & 0x01)!=0);
      000155 75 90 EF         [24]  761 	mov	_P1,#0xef
      000158 20 E0 D2         [24]  762 	jb	acc.0,00101$
                           0000E4   763 	C$main.c$266$3_0$12 ==.
                                    764 ;	main.c:266: while(i++ < SECTOR_SIZE)
      00015B 90 40 02         [24]  765 	mov	dptr,#_cf0ReadSector_buf_65536_8
      00015E E0               [24]  766 	movx	a,@dptr
      00015F FD               [12]  767 	mov	r5,a
      000160 A3               [24]  768 	inc	dptr
      000161 E0               [24]  769 	movx	a,@dptr
      000162 FE               [12]  770 	mov	r6,a
      000163 A3               [24]  771 	inc	dptr
      000164 E0               [24]  772 	movx	a,@dptr
      000165 FF               [12]  773 	mov	r7,a
      000166 E4               [12]  774 	clr	a
      000167 F5 08            [12]  775 	mov	_cf0ReadSector_i_65536_9,a
      000169 F5 09            [12]  776 	mov	(_cf0ReadSector_i_65536_9 + 1),a
      00016B                        777 00104$:
      00016B A9 08            [24]  778 	mov	r1,_cf0ReadSector_i_65536_9
      00016D AA 09            [24]  779 	mov	r2,(_cf0ReadSector_i_65536_9 + 1)
      00016F 05 08            [12]  780 	inc	_cf0ReadSector_i_65536_9
      000171 E4               [12]  781 	clr	a
      000172 B5 08 02         [24]  782 	cjne	a,_cf0ReadSector_i_65536_9,00127$
      000175 05 09            [12]  783 	inc	(_cf0ReadSector_i_65536_9 + 1)
      000177                        784 00127$:
      000177 74 FE            [12]  785 	mov	a,#0x100 - 0x02
      000179 2A               [12]  786 	add	a,r2
      00017A 40 38            [24]  787 	jc	00106$
                           000105   788 	C$main.c$268$3_0$12 ==.
                                    789 ;	main.c:268: P1 = 0xf0;
      00017C 75 90 F0         [24]  790 	mov	_P1,#0xf0
                           000108   791 	C$main.c$269$3_0$12 ==.
                                    792 ;	main.c:269: cf0WaitDataReady();
      00017F C0 07            [24]  793 	push	ar7
      000181 C0 06            [24]  794 	push	ar6
      000183 C0 05            [24]  795 	push	ar5
      000185 78 A4            [12]  796 	mov	r0,#_cf0WaitDataReady
      000187 79 00            [12]  797 	mov	r1,#(_cf0WaitDataReady >> 8)
      000189 7A 00            [12]  798 	mov	r2,#(_cf0WaitDataReady >> 16)
      00018B 12 00 06         [24]  799 	lcall	__sdcc_banked_call
      00018E D0 05            [24]  800 	pop	ar5
      000190 D0 06            [24]  801 	pop	ar6
      000192 D0 07            [24]  802 	pop	ar7
                           00011D   803 	C$main.c$271$3_0$12 ==.
                                    804 ;	main.c:271: P1 = 0xf1;
      000194 75 90 F1         [24]  805 	mov	_P1,#0xf1
                           000120   806 	C$main.c$272$3_0$12 ==.
                                    807 ;	main.c:272: buf[i+idx] = cf0ReadData();
      000197 E5 08            [12]  808 	mov	a,_cf0ReadSector_i_65536_9
      000199 2D               [12]  809 	add	a,r5
      00019A F8               [12]  810 	mov	r0,a
      00019B E5 09            [12]  811 	mov	a,(_cf0ReadSector_i_65536_9 + 1)
      00019D 3E               [12]  812 	addc	a,r6
      00019E F9               [12]  813 	mov	r1,a
      00019F 8F 02            [24]  814 	mov	ar2,r7
      0001A1 90 FF 20         [24]  815 	mov	dptr,#0xff20
      0001A4 E0               [24]  816 	movx	a,@dptr
      0001A5 FC               [12]  817 	mov	r4,a
      0001A6 88 82            [24]  818 	mov	dpl,r0
      0001A8 89 83            [24]  819 	mov	dph,r1
      0001AA 8A F0            [24]  820 	mov	b,r2
      0001AC 12 06 7B         [24]  821 	lcall	__gptrput
                           000138   822 	C$main.c$274$3_0$12 ==.
                                    823 ;	main.c:274: P1 = 0xf2;
      0001AF 75 90 F2         [24]  824 	mov	_P1,#0xf2
      0001B2 80 B7            [24]  825 	sjmp	00104$
      0001B4                        826 00106$:
                           00013D   827 	C$main.c$279$1_0$9 ==.
                                    828 ;	main.c:279: P1 = 0xf3;
      0001B4 75 90 F3         [24]  829 	mov	_P1,#0xf3
                           000140   830 	C$main.c$280$1_0$9 ==.
                                    831 ;	main.c:280: }
                           000140   832 	C$main.c$280$1_0$9 ==.
                           000140   833 	XG$cf0ReadSector$0$0 ==.
      0001B7 02 00 18         [24]  834 	ljmp	__sdcc_banked_ret
                                    835 ;------------------------------------------------------------
                                    836 ;Allocation info for local variables in function 'delay_us'
                                    837 ;------------------------------------------------------------
                                    838 ;us                        Allocated with name '_delay_us_us_65536_13'
                                    839 ;------------------------------------------------------------
                           000143   840 	G$delay_us$0$0 ==.
                           000143   841 	C$main.c$284$1_0$14 ==.
                                    842 ;	main.c:284: void delay_us(unsigned int us)
                                    843 ;	-----------------------------------------
                                    844 ;	 function delay_us
                                    845 ;	-----------------------------------------
      0001BA                        846 _delay_us:
                           000143   847 	C$main.c$298$1_0$14 ==.
                                    848 ;	main.c:298: __endasm;
      0001BA C0 06            [24]  849 	PUSH	ar6
      0001BC C0 07            [24]  850 	PUSH	ar7
      0001BE AE 83            [24]  851 	MOV	R6, DPH
      0001C0                        852 	delay_us_1:
      0001C0 AF 82            [24]  853 	MOV R7, DPL
      0001C2                        854 	delay_us_2:
      0001C2 DF FE            [24]  855 	DJNZ R7, delay_us_2
      0001C4 DE FA            [24]  856 	DJNZ	R6, delay_us_1
      0001C6 D0 07            [24]  857 	POP	ar7
      0001C8 D0 06            [24]  858 	POP	ar6
                           000153   859 	C$main.c$299$1_0$14 ==.
                                    860 ;	main.c:299: }
                           000153   861 	C$main.c$299$1_0$14 ==.
                           000153   862 	XG$delay_us$0$0 ==.
      0001CA 02 00 18         [24]  863 	ljmp	__sdcc_banked_ret
                                    864 ;------------------------------------------------------------
                                    865 ;Allocation info for local variables in function 'delay_ms'
                                    866 ;------------------------------------------------------------
                                    867 ;ms                        Allocated with name '_delay_ms_ms_65536_15'
                                    868 ;------------------------------------------------------------
                           000156   869 	G$delay_ms$0$0 ==.
                           000156   870 	C$main.c$301$1_0$16 ==.
                                    871 ;	main.c:301: void delay_ms(unsigned int ms)
                                    872 ;	-----------------------------------------
                                    873 ;	 function delay_ms
                                    874 ;	-----------------------------------------
      0001CD                        875 _delay_ms:
                           000156   876 	C$main.c$321$1_0$16 ==.
                                    877 ;	main.c:321: __endasm;
      0001CD C0 04            [24]  878 	PUSH	ar4
      0001CF C0 05            [24]  879 	PUSH	ar5
      0001D1 C0 06            [24]  880 	PUSH	ar6
      0001D3 C0 07            [24]  881 	PUSH	ar7
      0001D5 AC 83            [24]  882 	MOV	R4, DPH
      0001D7                        883 	delay_ms_1:
      0001D7 AD 82            [24]  884 	MOV R5, DPL
      0001D9                        885 	delay_ms_2:
      0001D9 7E 0A            [12]  886 	MOV R6, #10
      0001DB                        887 	delay_ms_3:
      0001DB 7F 64            [12]  888 	MOV R7, #100
      0001DD                        889 	delay_ms_4:
      0001DD DF FE            [24]  890 	DJNZ R7, delay_ms_4
      0001DF DE FA            [24]  891 	DJNZ	R6, delay_ms_3
      0001E1 DD F6            [24]  892 	DJNZ	R5, delay_ms_2
      0001E3 DC F2            [24]  893 	DJNZ	R4, delay_ms_1
      0001E5 D0 07            [24]  894 	POP	ar7
      0001E7 D0 06            [24]  895 	POP	ar6
      0001E9 D0 05            [24]  896 	POP	ar5
      0001EB D0 04            [24]  897 	POP	ar4
                           000176   898 	C$main.c$322$1_0$16 ==.
                                    899 ;	main.c:322: }
                           000176   900 	C$main.c$322$1_0$16 ==.
                           000176   901 	XG$delay_ms$0$0 ==.
      0001ED 02 00 18         [24]  902 	ljmp	__sdcc_banked_ret
                                    903 ;------------------------------------------------------------
                                    904 ;Allocation info for local variables in function 'ledTest'
                                    905 ;------------------------------------------------------------
                           000179   906 	G$ledTest$0$0 ==.
                           000179   907 	C$main.c$326$1_0$17 ==.
                                    908 ;	main.c:326: void ledTest()
                                    909 ;	-----------------------------------------
                                    910 ;	 function ledTest
                                    911 ;	-----------------------------------------
      0001F0                        912 _ledTest:
                           000179   913 	C$main.c$328$1_0$17 ==.
                                    914 ;	main.c:328: P1 = ~0x01;
      0001F0 75 90 FE         [24]  915 	mov	_P1,#0xfe
                           00017C   916 	C$main.c$329$1_0$17 ==.
                                    917 ;	main.c:329: delay_ms(500);
      0001F3 90 01 F4         [24]  918 	mov	dptr,#0x01f4
      0001F6 78 CD            [12]  919 	mov	r0,#_delay_ms
      0001F8 79 01            [12]  920 	mov	r1,#(_delay_ms >> 8)
      0001FA 7A 00            [12]  921 	mov	r2,#(_delay_ms >> 16)
      0001FC 12 00 06         [24]  922 	lcall	__sdcc_banked_call
                           000188   923 	C$main.c$331$1_0$17 ==.
                                    924 ;	main.c:331: P1 = ~0x02;
      0001FF 75 90 FD         [24]  925 	mov	_P1,#0xfd
                           00018B   926 	C$main.c$332$1_0$17 ==.
                                    927 ;	main.c:332: delay_ms(500);
      000202 90 01 F4         [24]  928 	mov	dptr,#0x01f4
      000205 78 CD            [12]  929 	mov	r0,#_delay_ms
      000207 79 01            [12]  930 	mov	r1,#(_delay_ms >> 8)
      000209 7A 00            [12]  931 	mov	r2,#(_delay_ms >> 16)
      00020B 12 00 06         [24]  932 	lcall	__sdcc_banked_call
                           000197   933 	C$main.c$334$1_0$17 ==.
                                    934 ;	main.c:334: P1 = ~0x04;
      00020E 75 90 FB         [24]  935 	mov	_P1,#0xfb
                           00019A   936 	C$main.c$335$1_0$17 ==.
                                    937 ;	main.c:335: delay_ms(500);
      000211 90 01 F4         [24]  938 	mov	dptr,#0x01f4
      000214 78 CD            [12]  939 	mov	r0,#_delay_ms
      000216 79 01            [12]  940 	mov	r1,#(_delay_ms >> 8)
      000218 7A 00            [12]  941 	mov	r2,#(_delay_ms >> 16)
      00021A 12 00 06         [24]  942 	lcall	__sdcc_banked_call
                           0001A6   943 	C$main.c$337$1_0$17 ==.
                                    944 ;	main.c:337: P1 = ~0x08;
      00021D 75 90 F7         [24]  945 	mov	_P1,#0xf7
                           0001A9   946 	C$main.c$338$1_0$17 ==.
                                    947 ;	main.c:338: delay_ms(500);
      000220 90 01 F4         [24]  948 	mov	dptr,#0x01f4
      000223 78 CD            [12]  949 	mov	r0,#_delay_ms
      000225 79 01            [12]  950 	mov	r1,#(_delay_ms >> 8)
      000227 7A 00            [12]  951 	mov	r2,#(_delay_ms >> 16)
      000229 12 00 06         [24]  952 	lcall	__sdcc_banked_call
                           0001B5   953 	C$main.c$340$1_0$17 ==.
                                    954 ;	main.c:340: P1 = ~0x10;
      00022C 75 90 EF         [24]  955 	mov	_P1,#0xef
                           0001B8   956 	C$main.c$341$1_0$17 ==.
                                    957 ;	main.c:341: delay_ms(500);
      00022F 90 01 F4         [24]  958 	mov	dptr,#0x01f4
      000232 78 CD            [12]  959 	mov	r0,#_delay_ms
      000234 79 01            [12]  960 	mov	r1,#(_delay_ms >> 8)
      000236 7A 00            [12]  961 	mov	r2,#(_delay_ms >> 16)
      000238 12 00 06         [24]  962 	lcall	__sdcc_banked_call
                           0001C4   963 	C$main.c$343$1_0$17 ==.
                                    964 ;	main.c:343: P1 = ~0x20;
      00023B 75 90 DF         [24]  965 	mov	_P1,#0xdf
                           0001C7   966 	C$main.c$344$1_0$17 ==.
                                    967 ;	main.c:344: delay_ms(500);
      00023E 90 01 F4         [24]  968 	mov	dptr,#0x01f4
      000241 78 CD            [12]  969 	mov	r0,#_delay_ms
      000243 79 01            [12]  970 	mov	r1,#(_delay_ms >> 8)
      000245 7A 00            [12]  971 	mov	r2,#(_delay_ms >> 16)
      000247 12 00 06         [24]  972 	lcall	__sdcc_banked_call
                           0001D3   973 	C$main.c$346$1_0$17 ==.
                                    974 ;	main.c:346: P1 = ~0x40;
      00024A 75 90 BF         [24]  975 	mov	_P1,#0xbf
                           0001D6   976 	C$main.c$347$1_0$17 ==.
                                    977 ;	main.c:347: delay_ms(500);
      00024D 90 01 F4         [24]  978 	mov	dptr,#0x01f4
      000250 78 CD            [12]  979 	mov	r0,#_delay_ms
      000252 79 01            [12]  980 	mov	r1,#(_delay_ms >> 8)
      000254 7A 00            [12]  981 	mov	r2,#(_delay_ms >> 16)
      000256 12 00 06         [24]  982 	lcall	__sdcc_banked_call
                           0001E2   983 	C$main.c$349$1_0$17 ==.
                                    984 ;	main.c:349: P1 = ~0x80;
      000259 75 90 7F         [24]  985 	mov	_P1,#0x7f
                           0001E5   986 	C$main.c$350$1_0$17 ==.
                                    987 ;	main.c:350: delay_ms(500);
      00025C 90 01 F4         [24]  988 	mov	dptr,#0x01f4
      00025F 78 CD            [12]  989 	mov	r0,#_delay_ms
      000261 79 01            [12]  990 	mov	r1,#(_delay_ms >> 8)
      000263 7A 00            [12]  991 	mov	r2,#(_delay_ms >> 16)
      000265 12 00 06         [24]  992 	lcall	__sdcc_banked_call
                           0001F1   993 	C$main.c$351$1_0$17 ==.
                                    994 ;	main.c:351: }
                           0001F1   995 	C$main.c$351$1_0$17 ==.
                           0001F1   996 	XG$ledTest$0$0 ==.
      000268 02 00 18         [24]  997 	ljmp	__sdcc_banked_ret
                                    998 ;------------------------------------------------------------
                                    999 ;Allocation info for local variables in function 'pio0Test'
                                   1000 ;------------------------------------------------------------
                                   1001 ;v                         Allocated to registers r7 
                                   1002 ;------------------------------------------------------------
                           0001F4  1003 	G$pio0Test$0$0 ==.
                           0001F4  1004 	C$main.c$355$1_0$18 ==.
                                   1005 ;	main.c:355: void pio0Test()
                                   1006 ;	-----------------------------------------
                                   1007 ;	 function pio0Test
                                   1008 ;	-----------------------------------------
      00026B                       1009 _pio0Test:
                           0001F4  1010 	C$main.c$358$1_0$18 ==.
                                   1011 ;	main.c:358: pio0WriteCtrl(0x80);
      00026B 90 FF 03         [24] 1012 	mov	dptr,#0xff03
      00026E 74 80            [12] 1013 	mov	a,#0x80
      000270 F0               [24] 1014 	movx	@dptr,a
                           0001FA  1015 	C$main.c$361$1_0$18 ==.
                                   1016 ;	main.c:361: do
      000271 7F FF            [12] 1017 	mov	r7,#0xff
      000273                       1018 00101$:
                           0001FC  1019 	C$main.c$363$2_0$19 ==.
                                   1020 ;	main.c:363: delay_ms(500);
      000273 90 01 F4         [24] 1021 	mov	dptr,#0x01f4
      000276 C0 07            [24] 1022 	push	ar7
      000278 78 CD            [12] 1023 	mov	r0,#_delay_ms
      00027A 79 01            [12] 1024 	mov	r1,#(_delay_ms >> 8)
      00027C 7A 00            [12] 1025 	mov	r2,#(_delay_ms >> 16)
      00027E 12 00 06         [24] 1026 	lcall	__sdcc_banked_call
      000281 D0 07            [24] 1027 	pop	ar7
                           00020C  1028 	C$main.c$364$2_0$19 ==.
                                   1029 ;	main.c:364: pio0WritePortA(v);
      000283 90 FF 00         [24] 1030 	mov	dptr,#0xff00
      000286 EF               [12] 1031 	mov	a,r7
      000287 F0               [24] 1032 	movx	@dptr,a
                           000211  1033 	C$main.c$365$1_0$18 ==.
                                   1034 ;	main.c:365: }while(v--);
      000288 8F 06            [24] 1035 	mov	ar6,r7
      00028A 1F               [12] 1036 	dec	r7
      00028B EE               [12] 1037 	mov	a,r6
      00028C 70 E5            [24] 1038 	jnz	00101$
                           000217  1039 	C$main.c$368$1_0$18 ==.
                                   1040 ;	main.c:368: do
      00028E 7F FF            [12] 1041 	mov	r7,#0xff
      000290                       1042 00104$:
                           000219  1043 	C$main.c$370$2_0$20 ==.
                                   1044 ;	main.c:370: delay_ms(500);
      000290 90 01 F4         [24] 1045 	mov	dptr,#0x01f4
      000293 C0 07            [24] 1046 	push	ar7
      000295 78 CD            [12] 1047 	mov	r0,#_delay_ms
      000297 79 01            [12] 1048 	mov	r1,#(_delay_ms >> 8)
      000299 7A 00            [12] 1049 	mov	r2,#(_delay_ms >> 16)
      00029B 12 00 06         [24] 1050 	lcall	__sdcc_banked_call
      00029E D0 07            [24] 1051 	pop	ar7
                           000229  1052 	C$main.c$371$2_0$20 ==.
                                   1053 ;	main.c:371: pio0WritePortB(v);
      0002A0 90 FF 01         [24] 1054 	mov	dptr,#0xff01
      0002A3 EF               [12] 1055 	mov	a,r7
      0002A4 F0               [24] 1056 	movx	@dptr,a
                           00022E  1057 	C$main.c$372$1_0$18 ==.
                                   1058 ;	main.c:372: }while(v--);
      0002A5 8F 06            [24] 1059 	mov	ar6,r7
      0002A7 1F               [12] 1060 	dec	r7
      0002A8 EE               [12] 1061 	mov	a,r6
      0002A9 70 E5            [24] 1062 	jnz	00104$
                           000234  1063 	C$main.c$375$1_0$18 ==.
                                   1064 ;	main.c:375: do
      0002AB 7F FF            [12] 1065 	mov	r7,#0xff
      0002AD                       1066 00107$:
                           000236  1067 	C$main.c$377$2_0$21 ==.
                                   1068 ;	main.c:377: delay_ms(500);
      0002AD 90 01 F4         [24] 1069 	mov	dptr,#0x01f4
      0002B0 C0 07            [24] 1070 	push	ar7
      0002B2 78 CD            [12] 1071 	mov	r0,#_delay_ms
      0002B4 79 01            [12] 1072 	mov	r1,#(_delay_ms >> 8)
      0002B6 7A 00            [12] 1073 	mov	r2,#(_delay_ms >> 16)
      0002B8 12 00 06         [24] 1074 	lcall	__sdcc_banked_call
      0002BB D0 07            [24] 1075 	pop	ar7
                           000246  1076 	C$main.c$378$2_0$21 ==.
                                   1077 ;	main.c:378: pio0WritePortC(v);
      0002BD 90 FF 02         [24] 1078 	mov	dptr,#0xff02
      0002C0 EF               [12] 1079 	mov	a,r7
      0002C1 F0               [24] 1080 	movx	@dptr,a
                           00024B  1081 	C$main.c$379$1_0$18 ==.
                                   1082 ;	main.c:379: }while(v--);
      0002C2 8F 06            [24] 1083 	mov	ar6,r7
      0002C4 1F               [12] 1084 	dec	r7
      0002C5 EE               [12] 1085 	mov	a,r6
      0002C6 70 E5            [24] 1086 	jnz	00107$
                           000251  1087 	C$main.c$380$1_0$18 ==.
                                   1088 ;	main.c:380: }
                           000251  1089 	C$main.c$380$1_0$18 ==.
                           000251  1090 	XG$pio0Test$0$0 ==.
      0002C8 02 00 18         [24] 1091 	ljmp	__sdcc_banked_ret
                                   1092 ;------------------------------------------------------------
                                   1093 ;Allocation info for local variables in function 'pio1Test'
                                   1094 ;------------------------------------------------------------
                                   1095 ;v                         Allocated to registers r7 
                                   1096 ;------------------------------------------------------------
                           000254  1097 	G$pio1Test$0$0 ==.
                           000254  1098 	C$main.c$382$1_0$22 ==.
                                   1099 ;	main.c:382: void pio1Test()
                                   1100 ;	-----------------------------------------
                                   1101 ;	 function pio1Test
                                   1102 ;	-----------------------------------------
      0002CB                       1103 _pio1Test:
                           000254  1104 	C$main.c$385$1_0$22 ==.
                                   1105 ;	main.c:385: pio1WriteCtrl(0x80);
      0002CB 90 FF 13         [24] 1106 	mov	dptr,#0xff13
      0002CE 74 80            [12] 1107 	mov	a,#0x80
      0002D0 F0               [24] 1108 	movx	@dptr,a
                           00025A  1109 	C$main.c$388$1_0$22 ==.
                                   1110 ;	main.c:388: do
      0002D1 7F FF            [12] 1111 	mov	r7,#0xff
      0002D3                       1112 00101$:
                           00025C  1113 	C$main.c$390$2_0$23 ==.
                                   1114 ;	main.c:390: delay_ms(500);
      0002D3 90 01 F4         [24] 1115 	mov	dptr,#0x01f4
      0002D6 C0 07            [24] 1116 	push	ar7
      0002D8 78 CD            [12] 1117 	mov	r0,#_delay_ms
      0002DA 79 01            [12] 1118 	mov	r1,#(_delay_ms >> 8)
      0002DC 7A 00            [12] 1119 	mov	r2,#(_delay_ms >> 16)
      0002DE 12 00 06         [24] 1120 	lcall	__sdcc_banked_call
      0002E1 D0 07            [24] 1121 	pop	ar7
                           00026C  1122 	C$main.c$391$2_0$23 ==.
                                   1123 ;	main.c:391: pio1WritePortA(v);
      0002E3 90 FF 10         [24] 1124 	mov	dptr,#0xff10
      0002E6 EF               [12] 1125 	mov	a,r7
      0002E7 F0               [24] 1126 	movx	@dptr,a
                           000271  1127 	C$main.c$392$1_0$22 ==.
                                   1128 ;	main.c:392: }while(v--);
      0002E8 8F 06            [24] 1129 	mov	ar6,r7
      0002EA 1F               [12] 1130 	dec	r7
      0002EB EE               [12] 1131 	mov	a,r6
      0002EC 70 E5            [24] 1132 	jnz	00101$
                           000277  1133 	C$main.c$395$1_0$22 ==.
                                   1134 ;	main.c:395: do
      0002EE 7F FF            [12] 1135 	mov	r7,#0xff
      0002F0                       1136 00104$:
                           000279  1137 	C$main.c$397$2_0$24 ==.
                                   1138 ;	main.c:397: delay_ms(500);
      0002F0 90 01 F4         [24] 1139 	mov	dptr,#0x01f4
      0002F3 C0 07            [24] 1140 	push	ar7
      0002F5 78 CD            [12] 1141 	mov	r0,#_delay_ms
      0002F7 79 01            [12] 1142 	mov	r1,#(_delay_ms >> 8)
      0002F9 7A 00            [12] 1143 	mov	r2,#(_delay_ms >> 16)
      0002FB 12 00 06         [24] 1144 	lcall	__sdcc_banked_call
      0002FE D0 07            [24] 1145 	pop	ar7
                           000289  1146 	C$main.c$398$2_0$24 ==.
                                   1147 ;	main.c:398: pio1WritePortB(v);
      000300 90 FF 11         [24] 1148 	mov	dptr,#0xff11
      000303 EF               [12] 1149 	mov	a,r7
      000304 F0               [24] 1150 	movx	@dptr,a
                           00028E  1151 	C$main.c$399$1_0$22 ==.
                                   1152 ;	main.c:399: }while(v--);
      000305 8F 06            [24] 1153 	mov	ar6,r7
      000307 1F               [12] 1154 	dec	r7
      000308 EE               [12] 1155 	mov	a,r6
      000309 70 E5            [24] 1156 	jnz	00104$
                           000294  1157 	C$main.c$402$1_0$22 ==.
                                   1158 ;	main.c:402: do
      00030B 7F FF            [12] 1159 	mov	r7,#0xff
      00030D                       1160 00107$:
                           000296  1161 	C$main.c$404$2_0$25 ==.
                                   1162 ;	main.c:404: delay_ms(500);
      00030D 90 01 F4         [24] 1163 	mov	dptr,#0x01f4
      000310 C0 07            [24] 1164 	push	ar7
      000312 78 CD            [12] 1165 	mov	r0,#_delay_ms
      000314 79 01            [12] 1166 	mov	r1,#(_delay_ms >> 8)
      000316 7A 00            [12] 1167 	mov	r2,#(_delay_ms >> 16)
      000318 12 00 06         [24] 1168 	lcall	__sdcc_banked_call
      00031B D0 07            [24] 1169 	pop	ar7
                           0002A6  1170 	C$main.c$405$2_0$25 ==.
                                   1171 ;	main.c:405: pio1WritePortC(v);
      00031D 90 FF 12         [24] 1172 	mov	dptr,#0xff12
      000320 EF               [12] 1173 	mov	a,r7
      000321 F0               [24] 1174 	movx	@dptr,a
                           0002AB  1175 	C$main.c$406$1_0$22 ==.
                                   1176 ;	main.c:406: }while(v--);
      000322 8F 06            [24] 1177 	mov	ar6,r7
      000324 1F               [12] 1178 	dec	r7
      000325 EE               [12] 1179 	mov	a,r6
      000326 70 E5            [24] 1180 	jnz	00107$
                           0002B1  1181 	C$main.c$407$1_0$22 ==.
                                   1182 ;	main.c:407: }
                           0002B1  1183 	C$main.c$407$1_0$22 ==.
                           0002B1  1184 	XG$pio1Test$0$0 ==.
      000328 02 00 18         [24] 1185 	ljmp	__sdcc_banked_ret
                                   1186 ;------------------------------------------------------------
                                   1187 ;Allocation info for local variables in function 'uart0Init'
                                   1188 ;------------------------------------------------------------
                           0002B4  1189 	G$uart0Init$0$0 ==.
                           0002B4  1190 	C$main.c$411$1_0$26 ==.
                                   1191 ;	main.c:411: void uart0Init()
                                   1192 ;	-----------------------------------------
                                   1193 ;	 function uart0Init
                                   1194 ;	-----------------------------------------
      00032B                       1195 _uart0Init:
                           0002B4  1196 	C$main.c$413$1_0$26 ==.
                                   1197 ;	main.c:413: SCON = 0x50;
      00032B 75 98 50         [24] 1198 	mov	_SCON,#0x50
                           0002B7  1199 	C$main.c$414$1_0$26 ==.
                                   1200 ;	main.c:414: TMOD = (TMOD & T0_MASK) | 0x21;
      00032E AE 89            [24] 1201 	mov	r6,_TMOD
      000330 53 06 0F         [24] 1202 	anl	ar6,#0x0f
      000333 7F 00            [12] 1203 	mov	r7,#0x00
      000335 43 06 21         [24] 1204 	orl	ar6,#0x21
      000338 8E 89            [24] 1205 	mov	_TMOD,r6
                           0002C3  1206 	C$main.c$415$1_0$26 ==.
                                   1207 ;	main.c:415: PCON = 0x80;
      00033A 75 87 80         [24] 1208 	mov	_PCON,#0x80
                           0002C6  1209 	C$main.c$418$1_0$26 ==.
                                   1210 ;	main.c:418: TH1 = 0xFA;
      00033D 75 8D FA         [24] 1211 	mov	_TH1,#0xfa
                           0002C9  1212 	C$main.c$419$1_0$26 ==.
                                   1213 ;	main.c:419: TL1 = 0xFA;
      000340 75 8B FA         [24] 1214 	mov	_TL1,#0xfa
                           0002CC  1215 	C$main.c$420$1_0$26 ==.
                                   1216 ;	main.c:420: TR1 = 1;
                                   1217 ;	assignBit
      000343 D2 8E            [12] 1218 	setb	_TR1
                           0002CE  1219 	C$main.c$423$1_0$26 ==.
                                   1220 ;	main.c:423: }
                           0002CE  1221 	C$main.c$423$1_0$26 ==.
                           0002CE  1222 	XG$uart0Init$0$0 ==.
      000345 02 00 18         [24] 1223 	ljmp	__sdcc_banked_ret
                                   1224 ;------------------------------------------------------------
                                   1225 ;Allocation info for local variables in function 'uart0Close'
                                   1226 ;------------------------------------------------------------
                           0002D1  1227 	G$uart0Close$0$0 ==.
                           0002D1  1228 	C$main.c$425$1_0$27 ==.
                                   1229 ;	main.c:425: void uart0Close()
                                   1230 ;	-----------------------------------------
                                   1231 ;	 function uart0Close
                                   1232 ;	-----------------------------------------
      000348                       1233 _uart0Close:
                           0002D1  1234 	C$main.c$427$1_0$27 ==.
                                   1235 ;	main.c:427: SCON = 0x00;
      000348 75 98 00         [24] 1236 	mov	_SCON,#0x00
                           0002D4  1237 	C$main.c$428$1_0$27 ==.
                                   1238 ;	main.c:428: TMOD = (TMOD & T0_MASK);
      00034B 53 89 0F         [24] 1239 	anl	_TMOD,#0x0f
                           0002D7  1240 	C$main.c$429$1_0$27 ==.
                                   1241 ;	main.c:429: PCON &= ~SMOD;
      00034E 53 87 7F         [24] 1242 	anl	_PCON,#0x7f
                           0002DA  1243 	C$main.c$430$1_0$27 ==.
                                   1244 ;	main.c:430: TR1 = 0;
                                   1245 ;	assignBit
      000351 C2 8E            [12] 1246 	clr	_TR1
                           0002DC  1247 	C$main.c$431$1_0$27 ==.
                                   1248 ;	main.c:431: }
                           0002DC  1249 	C$main.c$431$1_0$27 ==.
                           0002DC  1250 	XG$uart0Close$0$0 ==.
      000353 02 00 18         [24] 1251 	ljmp	__sdcc_banked_ret
                                   1252 ;------------------------------------------------------------
                                   1253 ;Allocation info for local variables in function 'uart0WaitTXDone'
                                   1254 ;------------------------------------------------------------
                           0002DF  1255 	G$uart0WaitTXDone$0$0 ==.
                           0002DF  1256 	C$main.c$433$1_0$28 ==.
                                   1257 ;	main.c:433: void uart0WaitTXDone()
                                   1258 ;	-----------------------------------------
                                   1259 ;	 function uart0WaitTXDone
                                   1260 ;	-----------------------------------------
      000356                       1261 _uart0WaitTXDone:
                           0002DF  1262 	C$main.c$435$1_0$28 ==.
                                   1263 ;	main.c:435: while(!TI);
      000356                       1264 00101$:
      000356 30 99 FD         [24] 1265 	jnb	_TI,00101$
                           0002E2  1266 	C$main.c$436$1_0$28 ==.
                                   1267 ;	main.c:436: }
                           0002E2  1268 	C$main.c$436$1_0$28 ==.
                           0002E2  1269 	XG$uart0WaitTXDone$0$0 ==.
      000359 02 00 18         [24] 1270 	ljmp	__sdcc_banked_ret
                                   1271 ;------------------------------------------------------------
                                   1272 ;Allocation info for local variables in function 'uart0TX'
                                   1273 ;------------------------------------------------------------
                                   1274 ;d                         Allocated with name '_uart0TX_d_65536_29'
                                   1275 ;------------------------------------------------------------
                           0002E5  1276 	G$uart0TX$0$0 ==.
                           0002E5  1277 	C$main.c$438$1_0$30 ==.
                                   1278 ;	main.c:438: void uart0TX(char d)
                                   1279 ;	-----------------------------------------
                                   1280 ;	 function uart0TX
                                   1281 ;	-----------------------------------------
      00035C                       1282 _uart0TX:
      00035C E5 82            [12] 1283 	mov	a,dpl
      00035E 90 40 05         [24] 1284 	mov	dptr,#_uart0TX_d_65536_29
      000361 F0               [24] 1285 	movx	@dptr,a
                           0002EB  1286 	C$main.c$440$1_0$30 ==.
                                   1287 ;	main.c:440: TI = 0;
                                   1288 ;	assignBit
      000362 C2 99            [12] 1289 	clr	_TI
                           0002ED  1290 	C$main.c$441$1_0$30 ==.
                                   1291 ;	main.c:441: SBUF = d;
      000364 90 40 05         [24] 1292 	mov	dptr,#_uart0TX_d_65536_29
      000367 E0               [24] 1293 	movx	a,@dptr
      000368 F5 99            [12] 1294 	mov	_SBUF,a
                           0002F3  1295 	C$main.c$442$1_0$30 ==.
                                   1296 ;	main.c:442: while(!TI) /* assumes UART is initialized */ ;
      00036A                       1297 00101$:
      00036A 30 99 FD         [24] 1298 	jnb	_TI,00101$
                           0002F6  1299 	C$main.c$443$1_0$30 ==.
                                   1300 ;	main.c:443: }
                           0002F6  1301 	C$main.c$443$1_0$30 ==.
                           0002F6  1302 	XG$uart0TX$0$0 ==.
      00036D 02 00 18         [24] 1303 	ljmp	__sdcc_banked_ret
                                   1304 ;------------------------------------------------------------
                                   1305 ;Allocation info for local variables in function 'uart0TXStr'
                                   1306 ;------------------------------------------------------------
                                   1307 ;s                         Allocated with name '_uart0TXStr_s_65536_31'
                                   1308 ;------------------------------------------------------------
                           0002F9  1309 	G$uart0TXStr$0$0 ==.
                           0002F9  1310 	C$main.c$445$1_0$32 ==.
                                   1311 ;	main.c:445: void uart0TXStr(const char* s)
                                   1312 ;	-----------------------------------------
                                   1313 ;	 function uart0TXStr
                                   1314 ;	-----------------------------------------
      000370                       1315 _uart0TXStr:
      000370 AF F0            [24] 1316 	mov	r7,b
      000372 AE 83            [24] 1317 	mov	r6,dph
      000374 E5 82            [12] 1318 	mov	a,dpl
      000376 90 40 06         [24] 1319 	mov	dptr,#_uart0TXStr_s_65536_31
      000379 F0               [24] 1320 	movx	@dptr,a
      00037A EE               [12] 1321 	mov	a,r6
      00037B A3               [24] 1322 	inc	dptr
      00037C F0               [24] 1323 	movx	@dptr,a
      00037D EF               [12] 1324 	mov	a,r7
      00037E A3               [24] 1325 	inc	dptr
      00037F F0               [24] 1326 	movx	@dptr,a
                           000309  1327 	C$main.c$447$1_0$32 ==.
                                   1328 ;	main.c:447: do
      000380 90 40 06         [24] 1329 	mov	dptr,#_uart0TXStr_s_65536_31
      000383 E0               [24] 1330 	movx	a,@dptr
      000384 FD               [12] 1331 	mov	r5,a
      000385 A3               [24] 1332 	inc	dptr
      000386 E0               [24] 1333 	movx	a,@dptr
      000387 FE               [12] 1334 	mov	r6,a
      000388 A3               [24] 1335 	inc	dptr
      000389 E0               [24] 1336 	movx	a,@dptr
      00038A FF               [12] 1337 	mov	r7,a
      00038B                       1338 00101$:
                           000314  1339 	C$main.c$449$2_0$33 ==.
                                   1340 ;	main.c:449: uart0TX(*s);
      00038B 8D 82            [24] 1341 	mov	dpl,r5
      00038D 8E 83            [24] 1342 	mov	dph,r6
      00038F 8F F0            [24] 1343 	mov	b,r7
      000391 12 06 96         [24] 1344 	lcall	__gptrget
      000394 F5 82            [12] 1345 	mov	dpl,a
      000396 C0 07            [24] 1346 	push	ar7
      000398 C0 06            [24] 1347 	push	ar6
      00039A C0 05            [24] 1348 	push	ar5
      00039C 78 5C            [12] 1349 	mov	r0,#_uart0TX
      00039E 79 03            [12] 1350 	mov	r1,#(_uart0TX >> 8)
      0003A0 7A 00            [12] 1351 	mov	r2,#(_uart0TX >> 16)
      0003A2 12 00 06         [24] 1352 	lcall	__sdcc_banked_call
      0003A5 D0 05            [24] 1353 	pop	ar5
      0003A7 D0 06            [24] 1354 	pop	ar6
      0003A9 D0 07            [24] 1355 	pop	ar7
                           000334  1356 	C$main.c$450$1_0$32 ==.
                                   1357 ;	main.c:450: }while(*s++);
      0003AB 8D 82            [24] 1358 	mov	dpl,r5
      0003AD 8E 83            [24] 1359 	mov	dph,r6
      0003AF 8F F0            [24] 1360 	mov	b,r7
      0003B1 12 06 96         [24] 1361 	lcall	__gptrget
      0003B4 FC               [12] 1362 	mov	r4,a
      0003B5 A3               [24] 1363 	inc	dptr
      0003B6 AD 82            [24] 1364 	mov	r5,dpl
      0003B8 AE 83            [24] 1365 	mov	r6,dph
      0003BA 90 40 06         [24] 1366 	mov	dptr,#_uart0TXStr_s_65536_31
      0003BD ED               [12] 1367 	mov	a,r5
      0003BE F0               [24] 1368 	movx	@dptr,a
      0003BF EE               [12] 1369 	mov	a,r6
      0003C0 A3               [24] 1370 	inc	dptr
      0003C1 F0               [24] 1371 	movx	@dptr,a
      0003C2 EF               [12] 1372 	mov	a,r7
      0003C3 A3               [24] 1373 	inc	dptr
      0003C4 F0               [24] 1374 	movx	@dptr,a
      0003C5 EC               [12] 1375 	mov	a,r4
      0003C6 70 C3            [24] 1376 	jnz	00101$
      0003C8 90 40 06         [24] 1377 	mov	dptr,#_uart0TXStr_s_65536_31
      0003CB ED               [12] 1378 	mov	a,r5
      0003CC F0               [24] 1379 	movx	@dptr,a
      0003CD EE               [12] 1380 	mov	a,r6
      0003CE A3               [24] 1381 	inc	dptr
      0003CF F0               [24] 1382 	movx	@dptr,a
      0003D0 EF               [12] 1383 	mov	a,r7
      0003D1 A3               [24] 1384 	inc	dptr
      0003D2 F0               [24] 1385 	movx	@dptr,a
                           00035C  1386 	C$main.c$451$1_0$32 ==.
                                   1387 ;	main.c:451: }
                           00035C  1388 	C$main.c$451$1_0$32 ==.
                           00035C  1389 	XG$uart0TXStr$0$0 ==.
      0003D3 02 00 18         [24] 1390 	ljmp	__sdcc_banked_ret
                                   1391 ;------------------------------------------------------------
                                   1392 ;Allocation info for local variables in function 'uart0TXBuf'
                                   1393 ;------------------------------------------------------------
                                   1394 ;i                         Allocated with name '_uart0TXBuf_i_65536_35'
                                   1395 ;size                      Allocated with name '_uart0TXBuf_PARM_2'
                                   1396 ;buf                       Allocated with name '_uart0TXBuf_buf_65536_34'
                                   1397 ;------------------------------------------------------------
                           00035F  1398 	G$uart0TXBuf$0$0 ==.
                           00035F  1399 	C$main.c$453$1_0$35 ==.
                                   1400 ;	main.c:453: void uart0TXBuf(const char* buf, unsigned int size)
                                   1401 ;	-----------------------------------------
                                   1402 ;	 function uart0TXBuf
                                   1403 ;	-----------------------------------------
      0003D6                       1404 _uart0TXBuf:
      0003D6 AF F0            [24] 1405 	mov	r7,b
      0003D8 AE 83            [24] 1406 	mov	r6,dph
      0003DA E5 82            [12] 1407 	mov	a,dpl
      0003DC 90 40 0B         [24] 1408 	mov	dptr,#_uart0TXBuf_buf_65536_34
      0003DF F0               [24] 1409 	movx	@dptr,a
      0003E0 EE               [12] 1410 	mov	a,r6
      0003E1 A3               [24] 1411 	inc	dptr
      0003E2 F0               [24] 1412 	movx	@dptr,a
      0003E3 EF               [12] 1413 	mov	a,r7
      0003E4 A3               [24] 1414 	inc	dptr
      0003E5 F0               [24] 1415 	movx	@dptr,a
                           00036F  1416 	C$main.c$457$2_0$36 ==.
                                   1417 ;	main.c:457: while(size--)
      0003E6 90 40 0B         [24] 1418 	mov	dptr,#_uart0TXBuf_buf_65536_34
      0003E9 E0               [24] 1419 	movx	a,@dptr
      0003EA FD               [12] 1420 	mov	r5,a
      0003EB A3               [24] 1421 	inc	dptr
      0003EC E0               [24] 1422 	movx	a,@dptr
      0003ED FE               [12] 1423 	mov	r6,a
      0003EE A3               [24] 1424 	inc	dptr
      0003EF E0               [24] 1425 	movx	a,@dptr
      0003F0 FF               [12] 1426 	mov	r7,a
      0003F1 E4               [12] 1427 	clr	a
      0003F2 F5 0A            [12] 1428 	mov	_uart0TXBuf_i_65536_35,a
      0003F4 F5 0B            [12] 1429 	mov	(_uart0TXBuf_i_65536_35 + 1),a
      0003F6 90 40 09         [24] 1430 	mov	dptr,#_uart0TXBuf_PARM_2
      0003F9 E0               [24] 1431 	movx	a,@dptr
      0003FA F9               [12] 1432 	mov	r1,a
      0003FB A3               [24] 1433 	inc	dptr
      0003FC E0               [24] 1434 	movx	a,@dptr
      0003FD FA               [12] 1435 	mov	r2,a
      0003FE                       1436 00101$:
      0003FE 89 00            [24] 1437 	mov	ar0,r1
      000400 8A 04            [24] 1438 	mov	ar4,r2
      000402 19               [12] 1439 	dec	r1
      000403 B9 FF 01         [24] 1440 	cjne	r1,#0xff,00115$
      000406 1A               [12] 1441 	dec	r2
      000407                       1442 00115$:
      000407 E8               [12] 1443 	mov	a,r0
      000408 4C               [12] 1444 	orl	a,r4
      000409 60 3E            [24] 1445 	jz	00104$
                           000394  1446 	C$main.c$459$2_0$36 ==.
                                   1447 ;	main.c:459: uart0TX(buf[i++]);
      00040B AB 0A            [24] 1448 	mov	r3,_uart0TXBuf_i_65536_35
      00040D AC 0B            [24] 1449 	mov	r4,(_uart0TXBuf_i_65536_35 + 1)
      00040F 05 0A            [12] 1450 	inc	_uart0TXBuf_i_65536_35
      000411 E4               [12] 1451 	clr	a
      000412 B5 0A 02         [24] 1452 	cjne	a,_uart0TXBuf_i_65536_35,00117$
      000415 05 0B            [12] 1453 	inc	(_uart0TXBuf_i_65536_35 + 1)
      000417                       1454 00117$:
      000417 EB               [12] 1455 	mov	a,r3
      000418 2D               [12] 1456 	add	a,r5
      000419 FB               [12] 1457 	mov	r3,a
      00041A EC               [12] 1458 	mov	a,r4
      00041B 3E               [12] 1459 	addc	a,r6
      00041C F8               [12] 1460 	mov	r0,a
      00041D 8F 04            [24] 1461 	mov	ar4,r7
      00041F 8B 82            [24] 1462 	mov	dpl,r3
      000421 88 83            [24] 1463 	mov	dph,r0
      000423 8C F0            [24] 1464 	mov	b,r4
      000425 12 06 96         [24] 1465 	lcall	__gptrget
      000428 F5 82            [12] 1466 	mov	dpl,a
      00042A C0 07            [24] 1467 	push	ar7
      00042C C0 06            [24] 1468 	push	ar6
      00042E C0 05            [24] 1469 	push	ar5
      000430 C0 02            [24] 1470 	push	ar2
      000432 C0 01            [24] 1471 	push	ar1
      000434 78 5C            [12] 1472 	mov	r0,#_uart0TX
      000436 79 03            [12] 1473 	mov	r1,#(_uart0TX >> 8)
      000438 7A 00            [12] 1474 	mov	r2,#(_uart0TX >> 16)
      00043A 12 00 06         [24] 1475 	lcall	__sdcc_banked_call
      00043D D0 01            [24] 1476 	pop	ar1
      00043F D0 02            [24] 1477 	pop	ar2
      000441 D0 05            [24] 1478 	pop	ar5
      000443 D0 06            [24] 1479 	pop	ar6
      000445 D0 07            [24] 1480 	pop	ar7
      000447 80 B5            [24] 1481 	sjmp	00101$
      000449                       1482 00104$:
                           0003D2  1483 	C$main.c$461$1_0$35 ==.
                                   1484 ;	main.c:461: }
                           0003D2  1485 	C$main.c$461$1_0$35 ==.
                           0003D2  1486 	XG$uart0TXBuf$0$0 ==.
      000449 02 00 18         [24] 1487 	ljmp	__sdcc_banked_ret
                                   1488 ;------------------------------------------------------------
                                   1489 ;Allocation info for local variables in function 'uart0WaitRXDone'
                                   1490 ;------------------------------------------------------------
                           0003D5  1491 	G$uart0WaitRXDone$0$0 ==.
                           0003D5  1492 	C$main.c$463$1_0$37 ==.
                                   1493 ;	main.c:463: void uart0WaitRXDone()
                                   1494 ;	-----------------------------------------
                                   1495 ;	 function uart0WaitRXDone
                                   1496 ;	-----------------------------------------
      00044C                       1497 _uart0WaitRXDone:
                           0003D5  1498 	C$main.c$465$1_0$37 ==.
                                   1499 ;	main.c:465: while(!RI);
      00044C                       1500 00101$:
      00044C 30 98 FD         [24] 1501 	jnb	_RI,00101$
                           0003D8  1502 	C$main.c$466$1_0$37 ==.
                                   1503 ;	main.c:466: }
                           0003D8  1504 	C$main.c$466$1_0$37 ==.
                           0003D8  1505 	XG$uart0WaitRXDone$0$0 ==.
      00044F 02 00 18         [24] 1506 	ljmp	__sdcc_banked_ret
                                   1507 ;------------------------------------------------------------
                                   1508 ;Allocation info for local variables in function 'uart0RX'
                                   1509 ;------------------------------------------------------------
                                   1510 ;d                         Allocated to registers r7 
                                   1511 ;------------------------------------------------------------
                           0003DB  1512 	G$uart0RX$0$0 ==.
                           0003DB  1513 	C$main.c$468$1_0$38 ==.
                                   1514 ;	main.c:468: char uart0RX()
                                   1515 ;	-----------------------------------------
                                   1516 ;	 function uart0RX
                                   1517 ;	-----------------------------------------
      000452                       1518 _uart0RX:
                           0003DB  1519 	C$main.c$472$1_0$38 ==.
                                   1520 ;	main.c:472: while(!RI) /* assumes UART is initialized */ ;
      000452                       1521 00101$:
      000452 30 98 FD         [24] 1522 	jnb	_RI,00101$
                           0003DE  1523 	C$main.c$473$1_0$38 ==.
                                   1524 ;	main.c:473: d = SBUF;
      000455 AF 99            [24] 1525 	mov	r7,_SBUF
                           0003E0  1526 	C$main.c$474$1_0$38 ==.
                                   1527 ;	main.c:474: RI = 0;
                                   1528 ;	assignBit
      000457 C2 98            [12] 1529 	clr	_RI
                           0003E2  1530 	C$main.c$476$1_0$38 ==.
                                   1531 ;	main.c:476: return d;
      000459 8F 82            [24] 1532 	mov	dpl,r7
                           0003E4  1533 	C$main.c$477$1_0$38 ==.
                                   1534 ;	main.c:477: }
                           0003E4  1535 	C$main.c$477$1_0$38 ==.
                           0003E4  1536 	XG$uart0RX$0$0 ==.
      00045B 02 00 18         [24] 1537 	ljmp	__sdcc_banked_ret
                                   1538 ;------------------------------------------------------------
                                   1539 ;Allocation info for local variables in function 'uart0RXStr'
                                   1540 ;------------------------------------------------------------
                                   1541 ;i                         Allocated with name '_uart0RXStr_i_65536_40'
                                   1542 ;sloc0                     Allocated with name '_uart0RXStr_sloc0_1_0'
                                   1543 ;size                      Allocated with name '_uart0RXStr_PARM_2'
                                   1544 ;s                         Allocated with name '_uart0RXStr_s_65536_39'
                                   1545 ;------------------------------------------------------------
                           0003E7  1546 	G$uart0RXStr$0$0 ==.
                           0003E7  1547 	C$main.c$479$1_0$40 ==.
                                   1548 ;	main.c:479: void uart0RXStr(char* s, unsigned int size)
                                   1549 ;	-----------------------------------------
                                   1550 ;	 function uart0RXStr
                                   1551 ;	-----------------------------------------
      00045E                       1552 _uart0RXStr:
      00045E AF F0            [24] 1553 	mov	r7,b
      000460 AE 83            [24] 1554 	mov	r6,dph
      000462 E5 82            [12] 1555 	mov	a,dpl
      000464 90 40 10         [24] 1556 	mov	dptr,#_uart0RXStr_s_65536_39
      000467 F0               [24] 1557 	movx	@dptr,a
      000468 EE               [12] 1558 	mov	a,r6
      000469 A3               [24] 1559 	inc	dptr
      00046A F0               [24] 1560 	movx	@dptr,a
      00046B EF               [12] 1561 	mov	a,r7
      00046C A3               [24] 1562 	inc	dptr
      00046D F0               [24] 1563 	movx	@dptr,a
                           0003F7  1564 	C$main.c$483$2_0$41 ==.
                                   1565 ;	main.c:483: while(size--)
      00046E 90 40 10         [24] 1566 	mov	dptr,#_uart0RXStr_s_65536_39
      000471 E0               [24] 1567 	movx	a,@dptr
      000472 FD               [12] 1568 	mov	r5,a
      000473 A3               [24] 1569 	inc	dptr
      000474 E0               [24] 1570 	movx	a,@dptr
      000475 FE               [12] 1571 	mov	r6,a
      000476 A3               [24] 1572 	inc	dptr
      000477 E0               [24] 1573 	movx	a,@dptr
      000478 FF               [12] 1574 	mov	r7,a
      000479 E4               [12] 1575 	clr	a
      00047A F5 0C            [12] 1576 	mov	_uart0RXStr_i_65536_40,a
      00047C F5 0D            [12] 1577 	mov	(_uart0RXStr_i_65536_40 + 1),a
      00047E 90 40 0E         [24] 1578 	mov	dptr,#_uart0RXStr_PARM_2
      000481 E0               [24] 1579 	movx	a,@dptr
      000482 F9               [12] 1580 	mov	r1,a
      000483 A3               [24] 1581 	inc	dptr
      000484 E0               [24] 1582 	movx	a,@dptr
      000485 FA               [12] 1583 	mov	r2,a
      000486                       1584 00103$:
      000486 89 00            [24] 1585 	mov	ar0,r1
      000488 8A 04            [24] 1586 	mov	ar4,r2
      00048A 19               [12] 1587 	dec	r1
      00048B B9 FF 01         [24] 1588 	cjne	r1,#0xff,00117$
      00048E 1A               [12] 1589 	dec	r2
      00048F                       1590 00117$:
      00048F E8               [12] 1591 	mov	a,r0
      000490 4C               [12] 1592 	orl	a,r4
      000491 60 44            [24] 1593 	jz	00106$
                           00041C  1594 	C$main.c$485$2_0$41 ==.
                                   1595 ;	main.c:485: if((s[i++] = uart0RX())==0)
      000493 AB 0C            [24] 1596 	mov	r3,_uart0RXStr_i_65536_40
      000495 AC 0D            [24] 1597 	mov	r4,(_uart0RXStr_i_65536_40 + 1)
      000497 05 0C            [12] 1598 	inc	_uart0RXStr_i_65536_40
      000499 E4               [12] 1599 	clr	a
      00049A B5 0C 02         [24] 1600 	cjne	a,_uart0RXStr_i_65536_40,00119$
      00049D 05 0D            [12] 1601 	inc	(_uart0RXStr_i_65536_40 + 1)
      00049F                       1602 00119$:
      00049F EB               [12] 1603 	mov	a,r3
      0004A0 2D               [12] 1604 	add	a,r5
      0004A1 F5 0E            [12] 1605 	mov	_uart0RXStr_sloc0_1_0,a
      0004A3 EC               [12] 1606 	mov	a,r4
      0004A4 3E               [12] 1607 	addc	a,r6
      0004A5 F5 0F            [12] 1608 	mov	(_uart0RXStr_sloc0_1_0 + 1),a
      0004A7 8F 10            [24] 1609 	mov	(_uart0RXStr_sloc0_1_0 + 2),r7
      0004A9 C0 07            [24] 1610 	push	ar7
      0004AB C0 06            [24] 1611 	push	ar6
      0004AD C0 05            [24] 1612 	push	ar5
      0004AF C0 02            [24] 1613 	push	ar2
      0004B1 C0 01            [24] 1614 	push	ar1
      0004B3 78 52            [12] 1615 	mov	r0,#_uart0RX
      0004B5 79 04            [12] 1616 	mov	r1,#(_uart0RX >> 8)
      0004B7 7A 00            [12] 1617 	mov	r2,#(_uart0RX >> 16)
      0004B9 12 00 06         [24] 1618 	lcall	__sdcc_banked_call
      0004BC AC 82            [24] 1619 	mov	r4,dpl
      0004BE D0 01            [24] 1620 	pop	ar1
      0004C0 D0 02            [24] 1621 	pop	ar2
      0004C2 D0 05            [24] 1622 	pop	ar5
      0004C4 D0 06            [24] 1623 	pop	ar6
      0004C6 D0 07            [24] 1624 	pop	ar7
      0004C8 85 0E 82         [24] 1625 	mov	dpl,_uart0RXStr_sloc0_1_0
      0004CB 85 0F 83         [24] 1626 	mov	dph,(_uart0RXStr_sloc0_1_0 + 1)
      0004CE 85 10 F0         [24] 1627 	mov	b,(_uart0RXStr_sloc0_1_0 + 2)
      0004D1 EC               [12] 1628 	mov	a,r4
      0004D2 12 06 7B         [24] 1629 	lcall	__gptrput
      0004D5 70 AF            [24] 1630 	jnz	00103$
                           000460  1631 	C$main.c$486$1_0$40 ==.
                                   1632 ;	main.c:486: break;
      0004D7                       1633 00106$:
                           000460  1634 	C$main.c$488$1_0$40 ==.
                                   1635 ;	main.c:488: }
                           000460  1636 	C$main.c$488$1_0$40 ==.
                           000460  1637 	XG$uart0RXStr$0$0 ==.
      0004D7 02 00 18         [24] 1638 	ljmp	__sdcc_banked_ret
                                   1639 ;------------------------------------------------------------
                                   1640 ;Allocation info for local variables in function 'uart0RXBuf'
                                   1641 ;------------------------------------------------------------
                                   1642 ;i                         Allocated with name '_uart0RXBuf_i_65536_43'
                                   1643 ;size                      Allocated with name '_uart0RXBuf_PARM_2'
                                   1644 ;buf                       Allocated with name '_uart0RXBuf_buf_65536_42'
                                   1645 ;------------------------------------------------------------
                           000463  1646 	G$uart0RXBuf$0$0 ==.
                           000463  1647 	C$main.c$490$1_0$43 ==.
                                   1648 ;	main.c:490: void uart0RXBuf(char* buf, unsigned int size)
                                   1649 ;	-----------------------------------------
                                   1650 ;	 function uart0RXBuf
                                   1651 ;	-----------------------------------------
      0004DA                       1652 _uart0RXBuf:
      0004DA AF F0            [24] 1653 	mov	r7,b
      0004DC AE 83            [24] 1654 	mov	r6,dph
      0004DE E5 82            [12] 1655 	mov	a,dpl
      0004E0 90 40 15         [24] 1656 	mov	dptr,#_uart0RXBuf_buf_65536_42
      0004E3 F0               [24] 1657 	movx	@dptr,a
      0004E4 EE               [12] 1658 	mov	a,r6
      0004E5 A3               [24] 1659 	inc	dptr
      0004E6 F0               [24] 1660 	movx	@dptr,a
      0004E7 EF               [12] 1661 	mov	a,r7
      0004E8 A3               [24] 1662 	inc	dptr
      0004E9 F0               [24] 1663 	movx	@dptr,a
                           000473  1664 	C$main.c$494$2_0$44 ==.
                                   1665 ;	main.c:494: while(size--)
      0004EA 90 40 15         [24] 1666 	mov	dptr,#_uart0RXBuf_buf_65536_42
      0004ED E0               [24] 1667 	movx	a,@dptr
      0004EE FD               [12] 1668 	mov	r5,a
      0004EF A3               [24] 1669 	inc	dptr
      0004F0 E0               [24] 1670 	movx	a,@dptr
      0004F1 FE               [12] 1671 	mov	r6,a
      0004F2 A3               [24] 1672 	inc	dptr
      0004F3 E0               [24] 1673 	movx	a,@dptr
      0004F4 FF               [12] 1674 	mov	r7,a
      0004F5 E4               [12] 1675 	clr	a
      0004F6 F5 11            [12] 1676 	mov	_uart0RXBuf_i_65536_43,a
      0004F8 F5 12            [12] 1677 	mov	(_uart0RXBuf_i_65536_43 + 1),a
      0004FA 90 40 13         [24] 1678 	mov	dptr,#_uart0RXBuf_PARM_2
      0004FD E0               [24] 1679 	movx	a,@dptr
      0004FE F9               [12] 1680 	mov	r1,a
      0004FF A3               [24] 1681 	inc	dptr
      000500 E0               [24] 1682 	movx	a,@dptr
      000501 FA               [12] 1683 	mov	r2,a
      000502                       1684 00101$:
      000502 89 00            [24] 1685 	mov	ar0,r1
      000504 8A 04            [24] 1686 	mov	ar4,r2
      000506 19               [12] 1687 	dec	r1
      000507 B9 FF 01         [24] 1688 	cjne	r1,#0xff,00115$
      00050A 1A               [12] 1689 	dec	r2
      00050B                       1690 00115$:
      00050B E8               [12] 1691 	mov	a,r0
      00050C 4C               [12] 1692 	orl	a,r4
      00050D 60 4F            [24] 1693 	jz	00104$
                           000498  1694 	C$main.c$496$1_0$43 ==.
                                   1695 ;	main.c:496: buf[i++] = uart0RX();
      00050F C0 01            [24] 1696 	push	ar1
      000511 C0 02            [24] 1697 	push	ar2
      000513 AB 11            [24] 1698 	mov	r3,_uart0RXBuf_i_65536_43
      000515 AC 12            [24] 1699 	mov	r4,(_uart0RXBuf_i_65536_43 + 1)
      000517 05 11            [12] 1700 	inc	_uart0RXBuf_i_65536_43
      000519 E4               [12] 1701 	clr	a
      00051A B5 11 02         [24] 1702 	cjne	a,_uart0RXBuf_i_65536_43,00117$
      00051D 05 12            [12] 1703 	inc	(_uart0RXBuf_i_65536_43 + 1)
      00051F                       1704 00117$:
      00051F EB               [12] 1705 	mov	a,r3
      000520 2D               [12] 1706 	add	a,r5
      000521 FB               [12] 1707 	mov	r3,a
      000522 EC               [12] 1708 	mov	a,r4
      000523 3E               [12] 1709 	addc	a,r6
      000524 F8               [12] 1710 	mov	r0,a
      000525 8F 04            [24] 1711 	mov	ar4,r7
      000527 C0 07            [24] 1712 	push	ar7
      000529 C0 06            [24] 1713 	push	ar6
      00052B C0 05            [24] 1714 	push	ar5
      00052D C0 04            [24] 1715 	push	ar4
      00052F C0 03            [24] 1716 	push	ar3
      000531 C0 01            [24] 1717 	push	ar1
      000533 C0 00            [24] 1718 	push	ar0
      000535 78 52            [12] 1719 	mov	r0,#_uart0RX
      000537 79 04            [12] 1720 	mov	r1,#(_uart0RX >> 8)
      000539 7A 00            [12] 1721 	mov	r2,#(_uart0RX >> 16)
      00053B 12 00 06         [24] 1722 	lcall	__sdcc_banked_call
      00053E AA 82            [24] 1723 	mov	r2,dpl
      000540 D0 00            [24] 1724 	pop	ar0
      000542 D0 01            [24] 1725 	pop	ar1
      000544 D0 03            [24] 1726 	pop	ar3
      000546 D0 04            [24] 1727 	pop	ar4
      000548 D0 05            [24] 1728 	pop	ar5
      00054A D0 06            [24] 1729 	pop	ar6
      00054C D0 07            [24] 1730 	pop	ar7
      00054E 8B 82            [24] 1731 	mov	dpl,r3
      000550 88 83            [24] 1732 	mov	dph,r0
      000552 8C F0            [24] 1733 	mov	b,r4
      000554 EA               [12] 1734 	mov	a,r2
      000555 12 06 7B         [24] 1735 	lcall	__gptrput
      000558 D0 02            [24] 1736 	pop	ar2
      00055A D0 01            [24] 1737 	pop	ar1
      00055C 80 A4            [24] 1738 	sjmp	00101$
      00055E                       1739 00104$:
                           0004E7  1740 	C$main.c$498$1_0$43 ==.
                                   1741 ;	main.c:498: }
                           0004E7  1742 	C$main.c$498$1_0$43 ==.
                           0004E7  1743 	XG$uart0RXBuf$0$0 ==.
      00055E 02 00 18         [24] 1744 	ljmp	__sdcc_banked_ret
                                   1745 ;------------------------------------------------------------
                                   1746 ;Allocation info for local variables in function 'uart0Test1'
                                   1747 ;------------------------------------------------------------
                           0004EA  1748 	G$uart0Test1$0$0 ==.
                           0004EA  1749 	C$main.c$500$1_0$45 ==.
                                   1750 ;	main.c:500: void uart0Test1()
                                   1751 ;	-----------------------------------------
                                   1752 ;	 function uart0Test1
                                   1753 ;	-----------------------------------------
      000561                       1754 _uart0Test1:
                           0004EA  1755 	C$main.c$502$1_0$45 ==.
                                   1756 ;	main.c:502: uart0Init();
      000561 78 2B            [12] 1757 	mov	r0,#_uart0Init
      000563 79 03            [12] 1758 	mov	r1,#(_uart0Init >> 8)
      000565 7A 00            [12] 1759 	mov	r2,#(_uart0Init >> 16)
      000567 12 00 06         [24] 1760 	lcall	__sdcc_banked_call
                           0004F3  1761 	C$main.c$503$1_0$45 ==.
                                   1762 ;	main.c:503: while(1)
      00056A                       1763 00102$:
                           0004F3  1764 	C$main.c$505$2_0$46 ==.
                                   1765 ;	main.c:505: uart0TX(uart0RX());
      00056A 78 52            [12] 1766 	mov	r0,#_uart0RX
      00056C 79 04            [12] 1767 	mov	r1,#(_uart0RX >> 8)
      00056E 7A 00            [12] 1768 	mov	r2,#(_uart0RX >> 16)
      000570 12 00 06         [24] 1769 	lcall	__sdcc_banked_call
      000573 78 5C            [12] 1770 	mov	r0,#_uart0TX
      000575 79 03            [12] 1771 	mov	r1,#(_uart0TX >> 8)
      000577 7A 00            [12] 1772 	mov	r2,#(_uart0TX >> 16)
      000579 12 00 06         [24] 1773 	lcall	__sdcc_banked_call
                           000505  1774 	C$main.c$507$1_0$45 ==.
                                   1775 ;	main.c:507: }
                           000505  1776 	C$main.c$507$1_0$45 ==.
                           000505  1777 	XG$uart0Test1$0$0 ==.
      00057C 80 EC            [24] 1778 	sjmp	00102$
                                   1779 ;------------------------------------------------------------
                                   1780 ;Allocation info for local variables in function 'uart0Test2'
                                   1781 ;------------------------------------------------------------
                           000507  1782 	G$uart0Test2$0$0 ==.
                           000507  1783 	C$main.c$519$1_0$47 ==.
                                   1784 ;	main.c:519: void uart0Test2()
                                   1785 ;	-----------------------------------------
                                   1786 ;	 function uart0Test2
                                   1787 ;	-----------------------------------------
      00057E                       1788 _uart0Test2:
                           000507  1789 	C$main.c$521$1_0$47 ==.
                                   1790 ;	main.c:521: uart0Init();
      00057E 78 2B            [12] 1791 	mov	r0,#_uart0Init
      000580 79 03            [12] 1792 	mov	r1,#(_uart0Init >> 8)
      000582 7A 00            [12] 1793 	mov	r2,#(_uart0Init >> 16)
      000584 12 00 06         [24] 1794 	lcall	__sdcc_banked_call
                           000510  1795 	C$main.c$522$1_0$47 ==.
                                   1796 ;	main.c:522: while(1)
      000587                       1797 00102$:
                           000510  1798 	C$main.c$524$2_0$48 ==.
                                   1799 ;	main.c:524: uart0TXStr("Fuck you now!!!!\r\n");
      000587 90 06 EA         [24] 1800 	mov	dptr,#___str_0
      00058A 75 F0 80         [24] 1801 	mov	b,#0x80
      00058D 78 70            [12] 1802 	mov	r0,#_uart0TXStr
      00058F 79 03            [12] 1803 	mov	r1,#(_uart0TXStr >> 8)
      000591 7A 00            [12] 1804 	mov	r2,#(_uart0TXStr >> 16)
      000593 12 00 06         [24] 1805 	lcall	__sdcc_banked_call
                           00051F  1806 	C$main.c$525$2_0$48 ==.
                                   1807 ;	main.c:525: uart0TXBuf(data, 26*2);
      000596 90 40 09         [24] 1808 	mov	dptr,#_uart0TXBuf_PARM_2
      000599 74 34            [12] 1809 	mov	a,#0x34
      00059B F0               [24] 1810 	movx	@dptr,a
      00059C E4               [12] 1811 	clr	a
      00059D A3               [24] 1812 	inc	dptr
      00059E F0               [24] 1813 	movx	@dptr,a
      00059F 90 06 B6         [24] 1814 	mov	dptr,#_data
      0005A2 75 F0 80         [24] 1815 	mov	b,#0x80
      0005A5 78 D6            [12] 1816 	mov	r0,#_uart0TXBuf
      0005A7 79 03            [12] 1817 	mov	r1,#(_uart0TXBuf >> 8)
      0005A9 7A 00            [12] 1818 	mov	r2,#(_uart0TXBuf >> 16)
      0005AB 12 00 06         [24] 1819 	lcall	__sdcc_banked_call
                           000537  1820 	C$main.c$527$1_0$47 ==.
                                   1821 ;	main.c:527: }
                           000537  1822 	C$main.c$527$1_0$47 ==.
                           000537  1823 	XG$uart0Test2$0$0 ==.
      0005AE 80 D7            [24] 1824 	sjmp	00102$
                                   1825 ;------------------------------------------------------------
                                   1826 ;Allocation info for local variables in function 'uart0Test3'
                                   1827 ;------------------------------------------------------------
                           000539  1828 	G$uart0Test3$0$0 ==.
                           000539  1829 	C$main.c$529$1_0$50 ==.
                                   1830 ;	main.c:529: void uart0Test3()
                                   1831 ;	-----------------------------------------
                                   1832 ;	 function uart0Test3
                                   1833 ;	-----------------------------------------
      0005B0                       1834 _uart0Test3:
                           000539  1835 	C$main.c$531$1_0$50 ==.
                                   1836 ;	main.c:531: }
                           000539  1837 	C$main.c$531$1_0$50 ==.
                           000539  1838 	XG$uart0Test3$0$0 ==.
      0005B0 02 00 18         [24] 1839 	ljmp	__sdcc_banked_ret
                                   1840 ;------------------------------------------------------------
                                   1841 ;Allocation info for local variables in function 'cf0Test'
                                   1842 ;------------------------------------------------------------
                           00053C  1843 	G$cf0Test$0$0 ==.
                           00053C  1844 	C$main.c$536$1_0$51 ==.
                                   1845 ;	main.c:536: void cf0Test()
                                   1846 ;	-----------------------------------------
                                   1847 ;	 function cf0Test
                                   1848 ;	-----------------------------------------
      0005B3                       1849 _cf0Test:
                           00053C  1850 	C$main.c$538$1_0$51 ==.
                                   1851 ;	main.c:538: P1 = 0xc1;
      0005B3 75 90 C1         [24] 1852 	mov	_P1,#0xc1
                           00053F  1853 	C$main.c$539$1_0$51 ==.
                                   1854 ;	main.c:539: uart0Init();
      0005B6 78 2B            [12] 1855 	mov	r0,#_uart0Init
      0005B8 79 03            [12] 1856 	mov	r1,#(_uart0Init >> 8)
      0005BA 7A 00            [12] 1857 	mov	r2,#(_uart0Init >> 16)
      0005BC 12 00 06         [24] 1858 	lcall	__sdcc_banked_call
                           000548  1859 	C$main.c$540$1_0$51 ==.
                                   1860 ;	main.c:540: P1 = 0xc2;
      0005BF 75 90 C2         [24] 1861 	mov	_P1,#0xc2
                           00054B  1862 	C$main.c$541$1_0$51 ==.
                                   1863 ;	main.c:541: cf0Init();
      0005C2 78 77            [12] 1864 	mov	r0,#_cf0Init
      0005C4 79 00            [12] 1865 	mov	r1,#(_cf0Init >> 8)
      0005C6 7A 00            [12] 1866 	mov	r2,#(_cf0Init >> 16)
      0005C8 12 00 06         [24] 1867 	lcall	__sdcc_banked_call
                           000554  1868 	C$main.c$542$1_0$51 ==.
                                   1869 ;	main.c:542: P1 = 0xc3;
      0005CB 75 90 C3         [24] 1870 	mov	_P1,#0xc3
                           000557  1871 	C$main.c$543$1_0$51 ==.
                                   1872 ;	main.c:543: cf0ReadSector(buf, 1);
      0005CE 90 40 00         [24] 1873 	mov	dptr,#_cf0ReadSector_PARM_2
      0005D1 74 01            [12] 1874 	mov	a,#0x01
      0005D3 F0               [24] 1875 	movx	@dptr,a
      0005D4 E4               [12] 1876 	clr	a
      0005D5 A3               [24] 1877 	inc	dptr
      0005D6 F0               [24] 1878 	movx	@dptr,a
      0005D7 90 40 18         [24] 1879 	mov	dptr,#_buf
      0005DA 75 F0 00         [24] 1880 	mov	b,#0x00
      0005DD 78 B7            [12] 1881 	mov	r0,#_cf0ReadSector
      0005DF 79 00            [12] 1882 	mov	r1,#(_cf0ReadSector >> 8)
      0005E1 7A 00            [12] 1883 	mov	r2,#(_cf0ReadSector >> 16)
      0005E3 12 00 06         [24] 1884 	lcall	__sdcc_banked_call
                           00056F  1885 	C$main.c$544$1_0$51 ==.
                                   1886 ;	main.c:544: P1 = 0xc4;
      0005E6 75 90 C4         [24] 1887 	mov	_P1,#0xc4
                           000572  1888 	C$main.c$545$1_0$51 ==.
                                   1889 ;	main.c:545: uart0TXBuf(buf, SECTOR_SIZE);
      0005E9 90 40 09         [24] 1890 	mov	dptr,#_uart0TXBuf_PARM_2
      0005EC E4               [12] 1891 	clr	a
      0005ED F0               [24] 1892 	movx	@dptr,a
      0005EE 74 02            [12] 1893 	mov	a,#0x02
      0005F0 A3               [24] 1894 	inc	dptr
      0005F1 F0               [24] 1895 	movx	@dptr,a
      0005F2 90 40 18         [24] 1896 	mov	dptr,#_buf
      0005F5 75 F0 00         [24] 1897 	mov	b,#0x00
      0005F8 78 D6            [12] 1898 	mov	r0,#_uart0TXBuf
      0005FA 79 03            [12] 1899 	mov	r1,#(_uart0TXBuf >> 8)
      0005FC 7A 00            [12] 1900 	mov	r2,#(_uart0TXBuf >> 16)
      0005FE 12 00 06         [24] 1901 	lcall	__sdcc_banked_call
                           00058A  1902 	C$main.c$546$1_0$51 ==.
                                   1903 ;	main.c:546: P1 = 0xc5;
      000601 75 90 C5         [24] 1904 	mov	_P1,#0xc5
                           00058D  1905 	C$main.c$547$1_0$51 ==.
                                   1906 ;	main.c:547: }
                           00058D  1907 	C$main.c$547$1_0$51 ==.
                           00058D  1908 	XG$cf0Test$0$0 ==.
      000604 02 00 18         [24] 1909 	ljmp	__sdcc_banked_ret
                                   1910 ;------------------------------------------------------------
                                   1911 ;Allocation info for local variables in function 'main'
                                   1912 ;------------------------------------------------------------
                                   1913 ;res                       Allocated to registers 
                                   1914 ;src                       Allocated to registers 
                                   1915 ;dst                       Allocated with name '_main_dst_131072_53'
                                   1916 ;count                     Allocated to registers r2 r3 
                                   1917 ;------------------------------------------------------------
                           000590  1918 	G$main$0$0 ==.
                           000590  1919 	C$main.c$549$1_0$52 ==.
                                   1920 ;	main.c:549: void main()
                                   1921 ;	-----------------------------------------
                                   1922 ;	 function main
                                   1923 ;	-----------------------------------------
      000607                       1924 _main:
                           000590  1925 	C$main.c$560$1_0$52 ==.
                                   1926 ;	main.c:560: P1 = 0x01;
      000607 75 90 01         [24] 1927 	mov	_P1,#0x01
                           000593  1928 	C$main.c$561$2_0$53 ==.
                                   1929 ;	main.c:561: sysCopyBIOS(0x0000, 0x0000, 0x4000);
      00060A 90 00 00         [24] 1930 	mov	dptr,#0x0000
      00060D E4               [12] 1931 	clr	a
      00060E 93               [24] 1932 	movc	a,@a+dptr
      00060F FE               [12] 1933 	mov	r6,a
      000610 7F 00            [12] 1934 	mov	r7,#0x00
      000612 90 00 00         [24] 1935 	mov	dptr,#0x0000
      000615 E0               [24] 1936 	movx	a,@dptr
      000616 FC               [12] 1937 	mov	r4,a
      000617 7D 00            [12] 1938 	mov	r5,#0x00
      000619 7A 00            [12] 1939 	mov	r2,#0x00
      00061B 7B 40            [12] 1940 	mov	r3,#0x40
      00061D                       1941 00101$:
      00061D 8A 00            [24] 1942 	mov	ar0,r2
      00061F 8B 01            [24] 1943 	mov	ar1,r3
      000621 1A               [12] 1944 	dec	r2
      000622 BA FF 01         [24] 1945 	cjne	r2,#0xff,00118$
      000625 1B               [12] 1946 	dec	r3
      000626                       1947 00118$:
      000626 E8               [12] 1948 	mov	a,r0
      000627 49               [12] 1949 	orl	a,r1
      000628 60 19            [24] 1950 	jz	00103$
      00062A 8E 82            [24] 1951 	mov	dpl,r6
      00062C 8F 83            [24] 1952 	mov	dph,r7
      00062E E4               [12] 1953 	clr	a
      00062F 93               [24] 1954 	movc	a,@a+dptr
      000630 F9               [12] 1955 	mov	r1,a
      000631 A3               [24] 1956 	inc	dptr
      000632 AE 82            [24] 1957 	mov	r6,dpl
      000634 AF 83            [24] 1958 	mov	r7,dph
      000636 8C 82            [24] 1959 	mov	dpl,r4
      000638 8D 83            [24] 1960 	mov	dph,r5
      00063A E9               [12] 1961 	mov	a,r1
      00063B F0               [24] 1962 	movx	@dptr,a
      00063C A3               [24] 1963 	inc	dptr
      00063D AC 82            [24] 1964 	mov	r4,dpl
      00063F AD 83            [24] 1965 	mov	r5,dph
      000641 80 DA            [24] 1966 	sjmp	00101$
      000643                       1967 00103$:
                           0005CC  1968 	C$main.c$563$1_0$52 ==.
                                   1969 ;	main.c:563: P1 = 0x02;
      000643 75 90 02         [24] 1970 	mov	_P1,#0x02
                           0005CF  1971 	C$main.c$564$1_0$52 ==.
                                   1972 ;	main.c:564: sysEnterNormalMode();
      000646 90 FF 70         [24] 1973 	mov	dptr,#0xff70
      000649 E4               [12] 1974 	clr	a
      00064A F0               [24] 1975 	movx	@dptr,a
                           0005D4  1976 	C$main.c$566$1_0$52 ==.
                                   1977 ;	main.c:566: P1 = 0x03;
      00064B 75 90 03         [24] 1978 	mov	_P1,#0x03
                           0005D7  1979 	C$main.c$571$2_0$54 ==.
                                   1980 ;	main.c:571: ledTest();
      00064E 78 F0            [12] 1981 	mov	r0,#_ledTest
      000650 79 01            [12] 1982 	mov	r1,#(_ledTest >> 8)
      000652 7A 00            [12] 1983 	mov	r2,#(_ledTest >> 16)
      000654 12 00 06         [24] 1984 	lcall	__sdcc_banked_call
                           0005E0  1985 	C$main.c$575$2_0$54 ==.
                                   1986 ;	main.c:575: P1 = 0x04;
      000657 75 90 04         [24] 1987 	mov	_P1,#0x04
                           0005E3  1988 	C$main.c$578$2_0$54 ==.
                                   1989 ;	main.c:578: P1 = 0x05;
      00065A 75 90 05         [24] 1990 	mov	_P1,#0x05
                           0005E6  1991 	C$main.c$581$2_0$54 ==.
                                   1992 ;	main.c:581: P1 = 0x06;
      00065D 75 90 06         [24] 1993 	mov	_P1,#0x06
                           0005E9  1994 	C$main.c$609$2_0$54 ==.
                                   1995 ;	main.c:609: P1 = 0x10;
      000660 75 90 10         [24] 1996 	mov	_P1,#0x10
                           0005EC  1997 	C$main.c$612$2_0$54 ==.
                                   1998 ;	main.c:612: P1 = 0x11;
      000663 75 90 11         [24] 1999 	mov	_P1,#0x11
                           0005EF  2000 	C$main.c$615$2_0$54 ==.
                                   2001 ;	main.c:615: P1 = 0x12;
      000666 75 90 12         [24] 2002 	mov	_P1,#0x12
                           0005F2  2003 	C$main.c$618$2_0$54 ==.
                                   2004 ;	main.c:618: P1 = 0x13;
      000669 75 90 13         [24] 2005 	mov	_P1,#0x13
                           0005F5  2006 	C$main.c$619$2_0$54 ==.
                                   2007 ;	main.c:619: cf0Test();
      00066C 78 B3            [12] 2008 	mov	r0,#_cf0Test
      00066E 79 05            [12] 2009 	mov	r1,#(_cf0Test >> 8)
      000670 7A 00            [12] 2010 	mov	r2,#(_cf0Test >> 16)
      000672 12 00 06         [24] 2011 	lcall	__sdcc_banked_call
                           0005FE  2012 	C$main.c$624$2_0$54 ==.
                                   2013 ;	main.c:624: P1 = 0x81;
      000675 75 90 81         [24] 2014 	mov	_P1,#0x81
                           000601  2015 	C$main.c$628$1_0$52 ==.
                                   2016 ;	main.c:628: P1 = 0x82;
                           000601  2017 	C$main.c$630$1_0$52 ==.
                                   2018 ;	main.c:630: }
                           000601  2019 	C$main.c$630$1_0$52 ==.
                           000601  2020 	XG$main$0$0 ==.
      000678 02 00 18         [24] 2021 	ljmp	__sdcc_banked_ret
                                   2022 	.area CSEG    (CODE)
                                   2023 	.area CONST   (CODE)
                           000000  2024 G$data$0_0$0 == .
      0006B6                       2025 _data:
      0006B6 61                    2026 	.db #0x61	; 97	'a'
      0006B7 62                    2027 	.db #0x62	; 98	'b'
      0006B8 63                    2028 	.db #0x63	; 99	'c'
      0006B9 64                    2029 	.db #0x64	; 100	'd'
      0006BA 65                    2030 	.db #0x65	; 101	'e'
      0006BB 66                    2031 	.db #0x66	; 102	'f'
      0006BC 67                    2032 	.db #0x67	; 103	'g'
      0006BD 68                    2033 	.db #0x68	; 104	'h'
      0006BE 69                    2034 	.db #0x69	; 105	'i'
      0006BF 6A                    2035 	.db #0x6a	; 106	'j'
      0006C0 6B                    2036 	.db #0x6b	; 107	'k'
      0006C1 6C                    2037 	.db #0x6c	; 108	'l'
      0006C2 6D                    2038 	.db #0x6d	; 109	'm'
      0006C3 6E                    2039 	.db #0x6e	; 110	'n'
      0006C4 6F                    2040 	.db #0x6f	; 111	'o'
      0006C5 70                    2041 	.db #0x70	; 112	'p'
      0006C6 71                    2042 	.db #0x71	; 113	'q'
      0006C7 72                    2043 	.db #0x72	; 114	'r'
      0006C8 73                    2044 	.db #0x73	; 115	's'
      0006C9 74                    2045 	.db #0x74	; 116	't'
      0006CA 75                    2046 	.db #0x75	; 117	'u'
      0006CB 76                    2047 	.db #0x76	; 118	'v'
      0006CC 77                    2048 	.db #0x77	; 119	'w'
      0006CD 78                    2049 	.db #0x78	; 120	'x'
      0006CE 79                    2050 	.db #0x79	; 121	'y'
      0006CF 7A                    2051 	.db #0x7a	; 122	'z'
      0006D0 41                    2052 	.db #0x41	; 65	'A'
      0006D1 42                    2053 	.db #0x42	; 66	'B'
      0006D2 43                    2054 	.db #0x43	; 67	'C'
      0006D3 44                    2055 	.db #0x44	; 68	'D'
      0006D4 45                    2056 	.db #0x45	; 69	'E'
      0006D5 46                    2057 	.db #0x46	; 70	'F'
      0006D6 47                    2058 	.db #0x47	; 71	'G'
      0006D7 48                    2059 	.db #0x48	; 72	'H'
      0006D8 49                    2060 	.db #0x49	; 73	'I'
      0006D9 4A                    2061 	.db #0x4a	; 74	'J'
      0006DA 4B                    2062 	.db #0x4b	; 75	'K'
      0006DB 4C                    2063 	.db #0x4c	; 76	'L'
      0006DC 4D                    2064 	.db #0x4d	; 77	'M'
      0006DD 4E                    2065 	.db #0x4e	; 78	'N'
      0006DE 4F                    2066 	.db #0x4f	; 79	'O'
      0006DF 50                    2067 	.db #0x50	; 80	'P'
      0006E0 51                    2068 	.db #0x51	; 81	'Q'
      0006E1 52                    2069 	.db #0x52	; 82	'R'
      0006E2 53                    2070 	.db #0x53	; 83	'S'
      0006E3 54                    2071 	.db #0x54	; 84	'T'
      0006E4 55                    2072 	.db #0x55	; 85	'U'
      0006E5 56                    2073 	.db #0x56	; 86	'V'
      0006E6 57                    2074 	.db #0x57	; 87	'W'
      0006E7 58                    2075 	.db #0x58	; 88	'X'
      0006E8 59                    2076 	.db #0x59	; 89	'Y'
      0006E9 5A                    2077 	.db #0x5a	; 90	'Z'
                           000034  2078 Fmain$__str_0$0_0$0 == .
      0006EA                       2079 ___str_0:
      0006EA 46 75 63 6B 20 79 6F  2080 	.ascii "Fuck you now!!!!"
             75 20 6E 6F 77 21 21
             21 21
      0006FA 0D                    2081 	.db 0x0d
      0006FB 0A                    2082 	.db 0x0a
      0006FC 00                    2083 	.db 0x00
                                   2084 	.area XINIT   (CODE)
                                   2085 	.area CABS    (ABS,CODE)
