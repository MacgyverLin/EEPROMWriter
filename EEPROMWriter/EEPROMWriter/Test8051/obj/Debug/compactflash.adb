M:compactflash
F:G$cfInit$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lcompactflash.cfInit$device$1_0$8({1}SC:U),R,0,0,[r7]
F:G$cfWaitIdle$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lcompactflash.cfWaitIdle$device$1_0$10({1}SC:U),R,0,0,[r7]
S:Lcompactflash.cfWaitIdle$status$1_0$11({1}SC:U),R,0,0,[r6]
F:G$cfWaitCommandReady$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lcompactflash.cfWaitCommandReady$device$1_0$13({1}SC:U),R,0,0,[r7]
S:Lcompactflash.cfWaitCommandReady$status$1_0$14({1}SC:U),R,0,0,[r6]
F:G$cfWaitDataReady$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lcompactflash.cfWaitDataReady$device$1_0$16({1}SC:U),R,0,0,[r7]
S:Lcompactflash.cfWaitDataReady$status$1_0$17({1}SC:U),R,0,0,[r6]
F:G$cfReadSector$0_0$0({2}DF,SV:S),Z,0,5,0,0,0
S:Lcompactflash.cfReadSector$buf$1_0$19({3}DG,SC:U),B,1,-5
S:Lcompactflash.cfReadSector$LBA$1_0$19({4}SL:U),B,1,-9
S:Lcompactflash.cfReadSector$sectorCount$1_0$19({2}SI:U),B,1,-11
S:Lcompactflash.cfReadSector$device$1_0$19({1}SC:U),B,1,1
S:Lcompactflash.cfReadSector$status$1_0$20({1}SC:U),R,0,0,[r2]
S:Lcompactflash.cfReadSector$i$1_0$20({2}SI:U),B,1,4
S:Lcompactflash.cfReadSector$idx$1_0$20({2}SI:U),B,1,6
S:Lcompactflash.cfReadSector$sloc0$0_1$0({2}SI:U),B,1,2
F:G$cfWriteSector$0_0$0({2}DF,SV:S),Z,0,5,0,0,0
S:Lcompactflash.cfWriteSector$buf$1_0$24({3}DG,SC:U),B,1,-5
S:Lcompactflash.cfWriteSector$LBA$1_0$24({4}SL:U),B,1,-9
S:Lcompactflash.cfWriteSector$sectorCount$1_0$24({2}SI:U),B,1,-11
S:Lcompactflash.cfWriteSector$device$1_0$24({1}SC:U),B,1,1
S:Lcompactflash.cfWriteSector$status$1_0$25({1}SC:U),R,0,0,[r2]
S:Lcompactflash.cfWriteSector$i$1_0$25({2}SI:U),B,1,8
S:Lcompactflash.cfWriteSector$idx$1_0$25({2}SI:U),B,1,6
S:Lcompactflash.cfWriteSector$sloc0$0_1$0({2}SI:U),B,1,2
S:Lcompactflash.cfWriteSector$sloc1$0_1$0({2}DX,SC:U),B,1,4
F:G$cfDiskGetSectorCount$0_0$0({2}DF,SL:U),Z,0,0,0,0,0
S:Lcompactflash.cfDiskGetSectorCount$device$1_0$29({1}SC:U),R,0,0,[]
S:G$P0$0_0$0({1}SC:U),I,0,0
S:G$SP$0_0$0({1}SC:U),I,0,0
S:G$DPL$0_0$0({1}SC:U),I,0,0
S:G$DPH$0_0$0({1}SC:U),I,0,0
S:G$PCON$0_0$0({1}SC:U),I,0,0
S:G$TCON$0_0$0({1}SC:U),I,0,0
S:G$TMOD$0_0$0({1}SC:U),I,0,0
S:G$TL0$0_0$0({1}SC:U),I,0,0
S:G$TL1$0_0$0({1}SC:U),I,0,0
S:G$TH0$0_0$0({1}SC:U),I,0,0
S:G$TH1$0_0$0({1}SC:U),I,0,0
S:G$P1$0_0$0({1}SC:U),I,0,0
S:G$SCON$0_0$0({1}SC:U),I,0,0
S:G$SBUF$0_0$0({1}SC:U),I,0,0
S:G$P2$0_0$0({1}SC:U),I,0,0
S:G$IE$0_0$0({1}SC:U),I,0,0
S:G$P3$0_0$0({1}SC:U),I,0,0
S:G$IP$0_0$0({1}SC:U),I,0,0
S:G$PSW$0_0$0({1}SC:U),I,0,0
S:G$ACC$0_0$0({1}SC:U),I,0,0
S:G$B$0_0$0({1}SC:U),I,0,0
S:G$P0_0$0_0$0({1}SX:U),J,0,0
S:G$P0_1$0_0$0({1}SX:U),J,0,0
S:G$P0_2$0_0$0({1}SX:U),J,0,0
S:G$P0_3$0_0$0({1}SX:U),J,0,0
S:G$P0_4$0_0$0({1}SX:U),J,0,0
S:G$P0_5$0_0$0({1}SX:U),J,0,0
S:G$P0_6$0_0$0({1}SX:U),J,0,0
S:G$P0_7$0_0$0({1}SX:U),J,0,0
S:G$IT0$0_0$0({1}SX:U),J,0,0
S:G$IE0$0_0$0({1}SX:U),J,0,0
S:G$IT1$0_0$0({1}SX:U),J,0,0
S:G$IE1$0_0$0({1}SX:U),J,0,0
S:G$TR0$0_0$0({1}SX:U),J,0,0
S:G$TF0$0_0$0({1}SX:U),J,0,0
S:G$TR1$0_0$0({1}SX:U),J,0,0
S:G$TF1$0_0$0({1}SX:U),J,0,0
S:G$P1_0$0_0$0({1}SX:U),J,0,0
S:G$P1_1$0_0$0({1}SX:U),J,0,0
S:G$P1_2$0_0$0({1}SX:U),J,0,0
S:G$P1_3$0_0$0({1}SX:U),J,0,0
S:G$P1_4$0_0$0({1}SX:U),J,0,0
S:G$P1_5$0_0$0({1}SX:U),J,0,0
S:G$P1_6$0_0$0({1}SX:U),J,0,0
S:G$P1_7$0_0$0({1}SX:U),J,0,0
S:G$RI$0_0$0({1}SX:U),J,0,0
S:G$TI$0_0$0({1}SX:U),J,0,0
S:G$RB8$0_0$0({1}SX:U),J,0,0
S:G$TB8$0_0$0({1}SX:U),J,0,0
S:G$REN$0_0$0({1}SX:U),J,0,0
S:G$SM2$0_0$0({1}SX:U),J,0,0
S:G$SM1$0_0$0({1}SX:U),J,0,0
S:G$SM0$0_0$0({1}SX:U),J,0,0
S:G$P2_0$0_0$0({1}SX:U),J,0,0
S:G$P2_1$0_0$0({1}SX:U),J,0,0
S:G$P2_2$0_0$0({1}SX:U),J,0,0
S:G$P2_3$0_0$0({1}SX:U),J,0,0
S:G$P2_4$0_0$0({1}SX:U),J,0,0
S:G$P2_5$0_0$0({1}SX:U),J,0,0
S:G$P2_6$0_0$0({1}SX:U),J,0,0
S:G$P2_7$0_0$0({1}SX:U),J,0,0
S:G$EX0$0_0$0({1}SX:U),J,0,0
S:G$ET0$0_0$0({1}SX:U),J,0,0
S:G$EX1$0_0$0({1}SX:U),J,0,0
S:G$ET1$0_0$0({1}SX:U),J,0,0
S:G$ES$0_0$0({1}SX:U),J,0,0
S:G$EA$0_0$0({1}SX:U),J,0,0
S:G$P3_0$0_0$0({1}SX:U),J,0,0
S:G$P3_1$0_0$0({1}SX:U),J,0,0
S:G$P3_2$0_0$0({1}SX:U),J,0,0
S:G$P3_3$0_0$0({1}SX:U),J,0,0
S:G$P3_4$0_0$0({1}SX:U),J,0,0
S:G$P3_5$0_0$0({1}SX:U),J,0,0
S:G$P3_6$0_0$0({1}SX:U),J,0,0
S:G$P3_7$0_0$0({1}SX:U),J,0,0
S:G$RXD$0_0$0({1}SX:U),J,0,0
S:G$TXD$0_0$0({1}SX:U),J,0,0
S:G$INT0$0_0$0({1}SX:U),J,0,0
S:G$INT1$0_0$0({1}SX:U),J,0,0
S:G$T0$0_0$0({1}SX:U),J,0,0
S:G$T1$0_0$0({1}SX:U),J,0,0
S:G$WR$0_0$0({1}SX:U),J,0,0
S:G$RD$0_0$0({1}SX:U),J,0,0
S:G$PX0$0_0$0({1}SX:U),J,0,0
S:G$PT0$0_0$0({1}SX:U),J,0,0
S:G$PX1$0_0$0({1}SX:U),J,0,0
S:G$PT1$0_0$0({1}SX:U),J,0,0
S:G$PS$0_0$0({1}SX:U),J,0,0
S:G$P$0_0$0({1}SX:U),J,0,0
S:G$F1$0_0$0({1}SX:U),J,0,0
S:G$OV$0_0$0({1}SX:U),J,0,0
S:G$RS0$0_0$0({1}SX:U),J,0,0
S:G$RS1$0_0$0({1}SX:U),J,0,0
S:G$F0$0_0$0({1}SX:U),J,0,0
S:G$AC$0_0$0({1}SX:U),J,0,0
S:G$CY$0_0$0({1}SX:U),J,0,0
