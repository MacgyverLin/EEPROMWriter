                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module sysctrl
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
                                    107 ;--------------------------------------------------------
                                    108 ; special function registers
                                    109 ;--------------------------------------------------------
                                    110 	.area RSEG    (ABS,DATA)
      000000                        111 	.org 0x0000
                           000080   112 _P0	=	0x0080
                           000081   113 _SP	=	0x0081
                           000082   114 _DPL	=	0x0082
                           000083   115 _DPH	=	0x0083
                           000087   116 _PCON	=	0x0087
                           000088   117 _TCON	=	0x0088
                           000089   118 _TMOD	=	0x0089
                           00008A   119 _TL0	=	0x008a
                           00008B   120 _TL1	=	0x008b
                           00008C   121 _TH0	=	0x008c
                           00008D   122 _TH1	=	0x008d
                           000090   123 _P1	=	0x0090
                           000098   124 _SCON	=	0x0098
                           000099   125 _SBUF	=	0x0099
                           0000A0   126 _P2	=	0x00a0
                           0000A8   127 _IE	=	0x00a8
                           0000B0   128 _P3	=	0x00b0
                           0000B8   129 _IP	=	0x00b8
                           0000D0   130 _PSW	=	0x00d0
                           0000E0   131 _ACC	=	0x00e0
                           0000F0   132 _B	=	0x00f0
                                    133 ;--------------------------------------------------------
                                    134 ; special function bits
                                    135 ;--------------------------------------------------------
                                    136 	.area RSEG    (ABS,DATA)
      000000                        137 	.org 0x0000
                           000080   138 _P0_0	=	0x0080
                           000081   139 _P0_1	=	0x0081
                           000082   140 _P0_2	=	0x0082
                           000083   141 _P0_3	=	0x0083
                           000084   142 _P0_4	=	0x0084
                           000085   143 _P0_5	=	0x0085
                           000086   144 _P0_6	=	0x0086
                           000087   145 _P0_7	=	0x0087
                           000088   146 _IT0	=	0x0088
                           000089   147 _IE0	=	0x0089
                           00008A   148 _IT1	=	0x008a
                           00008B   149 _IE1	=	0x008b
                           00008C   150 _TR0	=	0x008c
                           00008D   151 _TF0	=	0x008d
                           00008E   152 _TR1	=	0x008e
                           00008F   153 _TF1	=	0x008f
                           000090   154 _P1_0	=	0x0090
                           000091   155 _P1_1	=	0x0091
                           000092   156 _P1_2	=	0x0092
                           000093   157 _P1_3	=	0x0093
                           000094   158 _P1_4	=	0x0094
                           000095   159 _P1_5	=	0x0095
                           000096   160 _P1_6	=	0x0096
                           000097   161 _P1_7	=	0x0097
                           000098   162 _RI	=	0x0098
                           000099   163 _TI	=	0x0099
                           00009A   164 _RB8	=	0x009a
                           00009B   165 _TB8	=	0x009b
                           00009C   166 _REN	=	0x009c
                           00009D   167 _SM2	=	0x009d
                           00009E   168 _SM1	=	0x009e
                           00009F   169 _SM0	=	0x009f
                           0000A0   170 _P2_0	=	0x00a0
                           0000A1   171 _P2_1	=	0x00a1
                           0000A2   172 _P2_2	=	0x00a2
                           0000A3   173 _P2_3	=	0x00a3
                           0000A4   174 _P2_4	=	0x00a4
                           0000A5   175 _P2_5	=	0x00a5
                           0000A6   176 _P2_6	=	0x00a6
                           0000A7   177 _P2_7	=	0x00a7
                           0000A8   178 _EX0	=	0x00a8
                           0000A9   179 _ET0	=	0x00a9
                           0000AA   180 _EX1	=	0x00aa
                           0000AB   181 _ET1	=	0x00ab
                           0000AC   182 _ES	=	0x00ac
                           0000AF   183 _EA	=	0x00af
                           0000B0   184 _P3_0	=	0x00b0
                           0000B1   185 _P3_1	=	0x00b1
                           0000B2   186 _P3_2	=	0x00b2
                           0000B3   187 _P3_3	=	0x00b3
                           0000B4   188 _P3_4	=	0x00b4
                           0000B5   189 _P3_5	=	0x00b5
                           0000B6   190 _P3_6	=	0x00b6
                           0000B7   191 _P3_7	=	0x00b7
                           0000B0   192 _RXD	=	0x00b0
                           0000B1   193 _TXD	=	0x00b1
                           0000B2   194 _INT0	=	0x00b2
                           0000B3   195 _INT1	=	0x00b3
                           0000B4   196 _T0	=	0x00b4
                           0000B5   197 _T1	=	0x00b5
                           0000B6   198 _WR	=	0x00b6
                           0000B7   199 _RD	=	0x00b7
                           0000B8   200 _PX0	=	0x00b8
                           0000B9   201 _PT0	=	0x00b9
                           0000BA   202 _PX1	=	0x00ba
                           0000BB   203 _PT1	=	0x00bb
                           0000BC   204 _PS	=	0x00bc
                           0000D0   205 _P	=	0x00d0
                           0000D1   206 _F1	=	0x00d1
                           0000D2   207 _OV	=	0x00d2
                           0000D3   208 _RS0	=	0x00d3
                           0000D4   209 _RS1	=	0x00d4
                           0000D5   210 _F0	=	0x00d5
                           0000D6   211 _AC	=	0x00d6
                           0000D7   212 _CY	=	0x00d7
                                    213 ;--------------------------------------------------------
                                    214 ; overlayable register banks
                                    215 ;--------------------------------------------------------
                                    216 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        217 	.ds 8
                                    218 ;--------------------------------------------------------
                                    219 ; internal ram data
                                    220 ;--------------------------------------------------------
                                    221 	.area DSEG    (DATA)
                                    222 ;--------------------------------------------------------
                                    223 ; overlayable items in internal ram 
                                    224 ;--------------------------------------------------------
                                    225 ;--------------------------------------------------------
                                    226 ; indirectly addressable internal ram data
                                    227 ;--------------------------------------------------------
                                    228 	.area ISEG    (DATA)
                                    229 ;--------------------------------------------------------
                                    230 ; absolute internal ram data
                                    231 ;--------------------------------------------------------
                                    232 	.area IABS    (ABS,DATA)
                                    233 	.area IABS    (ABS,DATA)
                                    234 ;--------------------------------------------------------
                                    235 ; bit data
                                    236 ;--------------------------------------------------------
                                    237 	.area BSEG    (BIT)
                                    238 ;--------------------------------------------------------
                                    239 ; paged external ram data
                                    240 ;--------------------------------------------------------
                                    241 	.area PSEG    (PAG,XDATA)
                                    242 ;--------------------------------------------------------
                                    243 ; external ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area XSEG    (XDATA)
                                    246 ;--------------------------------------------------------
                                    247 ; absolute external ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area XABS    (ABS,XDATA)
                                    250 ;--------------------------------------------------------
                                    251 ; external initialized ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area XISEG   (XDATA)
                                    254 	.area HOME    (CODE)
                                    255 	.area GSINIT0 (CODE)
                                    256 	.area GSINIT1 (CODE)
                                    257 	.area GSINIT2 (CODE)
                                    258 	.area GSINIT3 (CODE)
                                    259 	.area GSINIT4 (CODE)
                                    260 	.area GSINIT5 (CODE)
                                    261 	.area GSINIT  (CODE)
                                    262 	.area GSFINAL (CODE)
                                    263 	.area CSEG    (CODE)
                                    264 ;--------------------------------------------------------
                                    265 ; global & static initialisations
                                    266 ;--------------------------------------------------------
                                    267 	.area HOME    (CODE)
                                    268 	.area GSINIT  (CODE)
                                    269 	.area GSFINAL (CODE)
                                    270 	.area GSINIT  (CODE)
                                    271 ;--------------------------------------------------------
                                    272 ; Home
                                    273 ;--------------------------------------------------------
                                    274 	.area HOME    (CODE)
                                    275 	.area HOME    (CODE)
                                    276 ;--------------------------------------------------------
                                    277 ; code
                                    278 ;--------------------------------------------------------
                                    279 	.area CSEG    (CODE)
                                    280 	.area CSEG    (CODE)
                                    281 	.area CONST   (CODE)
                                    282 	.area XINIT   (CODE)
                                    283 	.area CABS    (ABS,CODE)
