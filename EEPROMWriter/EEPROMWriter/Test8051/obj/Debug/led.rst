                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module led
                                      6 	.optsdcc -mmcs51 --model-huge
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay_ms
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
                                    108 	.globl _ledTest
                                    109 ;--------------------------------------------------------
                                    110 ; special function registers
                                    111 ;--------------------------------------------------------
                                    112 	.area RSEG    (ABS,DATA)
      000000                        113 	.org 0x0000
                           000080   114 _P0	=	0x0080
                           000081   115 _SP	=	0x0081
                           000082   116 _DPL	=	0x0082
                           000083   117 _DPH	=	0x0083
                           000087   118 _PCON	=	0x0087
                           000088   119 _TCON	=	0x0088
                           000089   120 _TMOD	=	0x0089
                           00008A   121 _TL0	=	0x008a
                           00008B   122 _TL1	=	0x008b
                           00008C   123 _TH0	=	0x008c
                           00008D   124 _TH1	=	0x008d
                           000090   125 _P1	=	0x0090
                           000098   126 _SCON	=	0x0098
                           000099   127 _SBUF	=	0x0099
                           0000A0   128 _P2	=	0x00a0
                           0000A8   129 _IE	=	0x00a8
                           0000B0   130 _P3	=	0x00b0
                           0000B8   131 _IP	=	0x00b8
                           0000D0   132 _PSW	=	0x00d0
                           0000E0   133 _ACC	=	0x00e0
                           0000F0   134 _B	=	0x00f0
                                    135 ;--------------------------------------------------------
                                    136 ; special function bits
                                    137 ;--------------------------------------------------------
                                    138 	.area RSEG    (ABS,DATA)
      000000                        139 	.org 0x0000
                           000080   140 _P0_0	=	0x0080
                           000081   141 _P0_1	=	0x0081
                           000082   142 _P0_2	=	0x0082
                           000083   143 _P0_3	=	0x0083
                           000084   144 _P0_4	=	0x0084
                           000085   145 _P0_5	=	0x0085
                           000086   146 _P0_6	=	0x0086
                           000087   147 _P0_7	=	0x0087
                           000088   148 _IT0	=	0x0088
                           000089   149 _IE0	=	0x0089
                           00008A   150 _IT1	=	0x008a
                           00008B   151 _IE1	=	0x008b
                           00008C   152 _TR0	=	0x008c
                           00008D   153 _TF0	=	0x008d
                           00008E   154 _TR1	=	0x008e
                           00008F   155 _TF1	=	0x008f
                           000090   156 _P1_0	=	0x0090
                           000091   157 _P1_1	=	0x0091
                           000092   158 _P1_2	=	0x0092
                           000093   159 _P1_3	=	0x0093
                           000094   160 _P1_4	=	0x0094
                           000095   161 _P1_5	=	0x0095
                           000096   162 _P1_6	=	0x0096
                           000097   163 _P1_7	=	0x0097
                           000098   164 _RI	=	0x0098
                           000099   165 _TI	=	0x0099
                           00009A   166 _RB8	=	0x009a
                           00009B   167 _TB8	=	0x009b
                           00009C   168 _REN	=	0x009c
                           00009D   169 _SM2	=	0x009d
                           00009E   170 _SM1	=	0x009e
                           00009F   171 _SM0	=	0x009f
                           0000A0   172 _P2_0	=	0x00a0
                           0000A1   173 _P2_1	=	0x00a1
                           0000A2   174 _P2_2	=	0x00a2
                           0000A3   175 _P2_3	=	0x00a3
                           0000A4   176 _P2_4	=	0x00a4
                           0000A5   177 _P2_5	=	0x00a5
                           0000A6   178 _P2_6	=	0x00a6
                           0000A7   179 _P2_7	=	0x00a7
                           0000A8   180 _EX0	=	0x00a8
                           0000A9   181 _ET0	=	0x00a9
                           0000AA   182 _EX1	=	0x00aa
                           0000AB   183 _ET1	=	0x00ab
                           0000AC   184 _ES	=	0x00ac
                           0000AF   185 _EA	=	0x00af
                           0000B0   186 _P3_0	=	0x00b0
                           0000B1   187 _P3_1	=	0x00b1
                           0000B2   188 _P3_2	=	0x00b2
                           0000B3   189 _P3_3	=	0x00b3
                           0000B4   190 _P3_4	=	0x00b4
                           0000B5   191 _P3_5	=	0x00b5
                           0000B6   192 _P3_6	=	0x00b6
                           0000B7   193 _P3_7	=	0x00b7
                           0000B0   194 _RXD	=	0x00b0
                           0000B1   195 _TXD	=	0x00b1
                           0000B2   196 _INT0	=	0x00b2
                           0000B3   197 _INT1	=	0x00b3
                           0000B4   198 _T0	=	0x00b4
                           0000B5   199 _T1	=	0x00b5
                           0000B6   200 _WR	=	0x00b6
                           0000B7   201 _RD	=	0x00b7
                           0000B8   202 _PX0	=	0x00b8
                           0000B9   203 _PT0	=	0x00b9
                           0000BA   204 _PX1	=	0x00ba
                           0000BB   205 _PT1	=	0x00bb
                           0000BC   206 _PS	=	0x00bc
                           0000D0   207 _P	=	0x00d0
                           0000D1   208 _F1	=	0x00d1
                           0000D2   209 _OV	=	0x00d2
                           0000D3   210 _RS0	=	0x00d3
                           0000D4   211 _RS1	=	0x00d4
                           0000D5   212 _F0	=	0x00d5
                           0000D6   213 _AC	=	0x00d6
                           0000D7   214 _CY	=	0x00d7
                                    215 ;--------------------------------------------------------
                                    216 ; overlayable register banks
                                    217 ;--------------------------------------------------------
                                    218 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        219 	.ds 8
                                    220 ;--------------------------------------------------------
                                    221 ; internal ram data
                                    222 ;--------------------------------------------------------
                                    223 	.area DSEG    (DATA)
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable items in internal ram 
                                    226 ;--------------------------------------------------------
                                    227 ;--------------------------------------------------------
                                    228 ; indirectly addressable internal ram data
                                    229 ;--------------------------------------------------------
                                    230 	.area ISEG    (DATA)
                                    231 ;--------------------------------------------------------
                                    232 ; absolute internal ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area IABS    (ABS,DATA)
                                    235 	.area IABS    (ABS,DATA)
                                    236 ;--------------------------------------------------------
                                    237 ; bit data
                                    238 ;--------------------------------------------------------
                                    239 	.area BSEG    (BIT)
                                    240 ;--------------------------------------------------------
                                    241 ; paged external ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area PSEG    (PAG,XDATA)
                                    244 ;--------------------------------------------------------
                                    245 ; external ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area XSEG    (XDATA)
                                    248 ;--------------------------------------------------------
                                    249 ; absolute external ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area XABS    (ABS,XDATA)
                                    252 ;--------------------------------------------------------
                                    253 ; external initialized ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area XISEG   (XDATA)
                                    256 	.area HOME    (CODE)
                                    257 	.area GSINIT0 (CODE)
                                    258 	.area GSINIT1 (CODE)
                                    259 	.area GSINIT2 (CODE)
                                    260 	.area GSINIT3 (CODE)
                                    261 	.area GSINIT4 (CODE)
                                    262 	.area GSINIT5 (CODE)
                                    263 	.area GSINIT  (CODE)
                                    264 	.area GSFINAL (CODE)
                                    265 	.area CSEG    (CODE)
                                    266 ;--------------------------------------------------------
                                    267 ; global & static initialisations
                                    268 ;--------------------------------------------------------
                                    269 	.area HOME    (CODE)
                                    270 	.area GSINIT  (CODE)
                                    271 	.area GSFINAL (CODE)
                                    272 	.area GSINIT  (CODE)
                                    273 ;--------------------------------------------------------
                                    274 ; Home
                                    275 ;--------------------------------------------------------
                                    276 	.area HOME    (CODE)
                                    277 	.area HOME    (CODE)
                                    278 ;--------------------------------------------------------
                                    279 ; code
                                    280 ;--------------------------------------------------------
                                    281 	.area CSEG    (CODE)
                                    282 ;------------------------------------------------------------
                                    283 ;Allocation info for local variables in function 'ledTest'
                                    284 ;------------------------------------------------------------
                                    285 ;	led.c:6: void ledTest()
                                    286 ;	-----------------------------------------
                                    287 ;	 function ledTest
                                    288 ;	-----------------------------------------
      000460                        289 _ledTest:
                           000007   290 	ar7 = 0x07
                           000006   291 	ar6 = 0x06
                           000005   292 	ar5 = 0x05
                           000004   293 	ar4 = 0x04
                           000003   294 	ar3 = 0x03
                           000002   295 	ar2 = 0x02
                           000001   296 	ar1 = 0x01
                           000000   297 	ar0 = 0x00
                                    298 ;	led.c:8: P1 = (unsigned char)(~0x01);
      000460 75 90 FE         [24]  299 	mov	_P1,#0xfe
                                    300 ;	led.c:9: delay_ms(500);
      000463 90 01 F4         [24]  301 	mov	dptr,#0x01f4
      000466 78 3D            [12]  302 	mov	r0,#_delay_ms
      000468 79 04            [12]  303 	mov	r1,#(_delay_ms >> 8)
      00046A 7A 00            [12]  304 	mov	r2,#(_delay_ms >> 16)
      00046C 12 00 06         [24]  305 	lcall	__sdcc_banked_call
                                    306 ;	led.c:11: P1 = (unsigned char)(~0x02);
      00046F 75 90 FD         [24]  307 	mov	_P1,#0xfd
                                    308 ;	led.c:12: delay_ms(500);
      000472 90 01 F4         [24]  309 	mov	dptr,#0x01f4
      000475 78 3D            [12]  310 	mov	r0,#_delay_ms
      000477 79 04            [12]  311 	mov	r1,#(_delay_ms >> 8)
      000479 7A 00            [12]  312 	mov	r2,#(_delay_ms >> 16)
      00047B 12 00 06         [24]  313 	lcall	__sdcc_banked_call
                                    314 ;	led.c:14: P1 = (unsigned char)(~0x04);
      00047E 75 90 FB         [24]  315 	mov	_P1,#0xfb
                                    316 ;	led.c:15: delay_ms(500);
      000481 90 01 F4         [24]  317 	mov	dptr,#0x01f4
      000484 78 3D            [12]  318 	mov	r0,#_delay_ms
      000486 79 04            [12]  319 	mov	r1,#(_delay_ms >> 8)
      000488 7A 00            [12]  320 	mov	r2,#(_delay_ms >> 16)
      00048A 12 00 06         [24]  321 	lcall	__sdcc_banked_call
                                    322 ;	led.c:17: P1 = (unsigned char)(~0x08);
      00048D 75 90 F7         [24]  323 	mov	_P1,#0xf7
                                    324 ;	led.c:18: delay_ms(500);
      000490 90 01 F4         [24]  325 	mov	dptr,#0x01f4
      000493 78 3D            [12]  326 	mov	r0,#_delay_ms
      000495 79 04            [12]  327 	mov	r1,#(_delay_ms >> 8)
      000497 7A 00            [12]  328 	mov	r2,#(_delay_ms >> 16)
      000499 12 00 06         [24]  329 	lcall	__sdcc_banked_call
                                    330 ;	led.c:20: P1 = (unsigned char)(~0x10);
      00049C 75 90 EF         [24]  331 	mov	_P1,#0xef
                                    332 ;	led.c:21: delay_ms(500);
      00049F 90 01 F4         [24]  333 	mov	dptr,#0x01f4
      0004A2 78 3D            [12]  334 	mov	r0,#_delay_ms
      0004A4 79 04            [12]  335 	mov	r1,#(_delay_ms >> 8)
      0004A6 7A 00            [12]  336 	mov	r2,#(_delay_ms >> 16)
      0004A8 12 00 06         [24]  337 	lcall	__sdcc_banked_call
                                    338 ;	led.c:23: P1 = (unsigned char)(~0x20);
      0004AB 75 90 DF         [24]  339 	mov	_P1,#0xdf
                                    340 ;	led.c:24: delay_ms(500);
      0004AE 90 01 F4         [24]  341 	mov	dptr,#0x01f4
      0004B1 78 3D            [12]  342 	mov	r0,#_delay_ms
      0004B3 79 04            [12]  343 	mov	r1,#(_delay_ms >> 8)
      0004B5 7A 00            [12]  344 	mov	r2,#(_delay_ms >> 16)
      0004B7 12 00 06         [24]  345 	lcall	__sdcc_banked_call
                                    346 ;	led.c:26: P1 = (unsigned char)(~0x40);
      0004BA 75 90 BF         [24]  347 	mov	_P1,#0xbf
                                    348 ;	led.c:27: delay_ms(500);
      0004BD 90 01 F4         [24]  349 	mov	dptr,#0x01f4
      0004C0 78 3D            [12]  350 	mov	r0,#_delay_ms
      0004C2 79 04            [12]  351 	mov	r1,#(_delay_ms >> 8)
      0004C4 7A 00            [12]  352 	mov	r2,#(_delay_ms >> 16)
      0004C6 12 00 06         [24]  353 	lcall	__sdcc_banked_call
                                    354 ;	led.c:29: P1 = (unsigned char)(~0x80);
      0004C9 75 90 7F         [24]  355 	mov	_P1,#0x7f
                                    356 ;	led.c:30: delay_ms(500);
      0004CC 90 01 F4         [24]  357 	mov	dptr,#0x01f4
      0004CF 78 3D            [12]  358 	mov	r0,#_delay_ms
      0004D1 79 04            [12]  359 	mov	r1,#(_delay_ms >> 8)
      0004D3 7A 00            [12]  360 	mov	r2,#(_delay_ms >> 16)
      0004D5 12 00 06         [24]  361 	lcall	__sdcc_banked_call
                                    362 ;	led.c:31: }
      0004D8 02 00 18         [24]  363 	ljmp	__sdcc_banked_ret
                                    364 	.area CSEG    (CODE)
                                    365 	.area CONST   (CODE)
                                    366 	.area XINIT   (CODE)
                                    367 	.area CABS    (ABS,CODE)
