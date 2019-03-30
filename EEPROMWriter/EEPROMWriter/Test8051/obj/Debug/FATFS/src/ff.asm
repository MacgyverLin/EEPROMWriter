;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW32)
;--------------------------------------------------------
	.module ff
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _find_volume
	.globl _get_fat
	.globl _clust2sect
	.globl _disk_read
	.globl _disk_status
	.globl _disk_initialize
	.globl _ff_memfree
	.globl _ff_memalloc
	.globl _ff_wtoupper
	.globl _ff_convert
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _f_gets_PARM_3
	.globl _f_gets_PARM_2
	.globl _f_getlabel_PARM_3
	.globl _f_getlabel_PARM_2
	.globl _f_stat_PARM_2
	.globl _f_readdir_PARM_2
	.globl _f_opendir_PARM_2
	.globl _f_lseek_PARM_2
	.globl _f_read_PARM_4
	.globl _f_read_PARM_3
	.globl _f_read_PARM_2
	.globl _f_open_PARM_3
	.globl _f_open_PARM_2
	.globl _f_mount_PARM_3
	.globl _f_mount_PARM_2
	.globl _find_volume_PARM_3
	.globl _find_volume_PARM_2
	.globl _get_fat_PARM_2
	.globl _clust2sect_PARM_2
	.globl _f_mount
	.globl _f_open
	.globl _f_read
	.globl _f_close
	.globl _f_lseek
	.globl _f_opendir
	.globl _f_closedir
	.globl _f_readdir
	.globl _f_stat
	.globl _f_getlabel
	.globl _f_gets
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_move_window_sloc0_1_0:
	.ds 3
_move_window_sloc1_1_0:
	.ds 4
_clust2sect_sloc0_1_0:
	.ds 4
_get_fat_sloc0_1_0:
	.ds 3
_get_fat_sloc1_1_0:
	.ds 4
_get_fat_sloc2_1_0:
	.ds 2
_get_fat_sloc3_1_0:
	.ds 4
_dir_sdi_sloc0_1_0:
	.ds 4
_dir_sdi_sloc1_1_0:
	.ds 2
_dir_sdi_sloc2_1_0:
	.ds 3
_dir_next_sloc0_1_0:
	.ds 4
_dir_next_sloc1_1_0:
	.ds 2
_dir_next_sloc2_1_0:
	.ds 3
_dir_next_sloc3_1_0:
	.ds 4
_dir_next_sloc4_1_0:
	.ds 3
_cmp_lfn_sloc0_1_0:
	.ds 2
_cmp_lfn_sloc1_1_0:
	.ds 3
_cmp_lfn_sloc2_1_0:
	.ds 2
_cmp_lfn_sloc3_1_0:
	.ds 3
_pick_lfn_sloc0_1_0:
	.ds 2
_pick_lfn_sloc1_1_0:
	.ds 3
_pick_lfn_sloc2_1_0:
	.ds 2
_gen_numname_sloc0_1_0:
	.ds 4
_gen_numname_sloc1_1_0:
	.ds 2
_dir_find_sloc0_1_0:
	.ds 3
_dir_find_sloc1_1_0:
	.ds 3
_dir_find_sloc2_1_0:
	.ds 3
_dir_find_sloc3_1_0:
	.ds 3
_dir_find_sloc4_1_0:
	.ds 3
_dir_find_sloc5_1_0:
	.ds 3
_dir_find_sloc6_1_0:
	.ds 1
_dir_find_sloc7_1_0:
	.ds 3
_dir_read_sloc0_1_0:
	.ds 3
_dir_read_sloc1_1_0:
	.ds 4
_dir_read_sloc2_1_0:
	.ds 3
_dir_read_sloc3_1_0:
	.ds 3
_dir_read_sloc4_1_0:
	.ds 1
_get_fileinfo_sloc0_1_0:
	.ds 3
_get_fileinfo_sloc1_1_0:
	.ds 1
_get_fileinfo_sloc2_1_0:
	.ds 3
_get_fileinfo_sloc3_1_0:
	.ds 4
_create_name_sloc0_1_0:
	.ds 3
_create_name_sloc1_1_0:
	.ds 3
_create_name_sloc2_1_0:
	.ds 2
_create_name_sloc3_1_0:
	.ds 2
_follow_path_sloc0_1_0:
	.ds 1
_follow_path_sloc1_1_0:
	.ds 3
_check_fs_sloc0_1_0:
	.ds 3
_check_fs_sloc1_1_0:
	.ds 4
_check_fs_sloc2_1_0:
	.ds 4
_find_volume_sloc0_1_0:
	.ds 3
_find_volume_sloc1_1_0:
	.ds 2
_find_volume_sloc2_1_0:
	.ds 2
_find_volume_sloc3_1_0:
	.ds 4
_find_volume_sloc4_1_0:
	.ds 4
_find_volume_sloc5_1_0:
	.ds 3
_find_volume_sloc6_1_0:
	.ds 4
_find_volume_sloc7_1_0:
	.ds 4
_find_volume_sloc8_1_0:
	.ds 4
_find_volume_sloc9_1_0:
	.ds 4
_validate_sloc0_1_0:
	.ds 3
_f_open_sloc0_1_0:
	.ds 3
_f_open_sloc1_1_0:
	.ds 3
_f_open_sloc2_1_0:
	.ds 4
_f_read_sloc0_1_0:
	.ds 3
_f_read_sloc1_1_0:
	.ds 4
_f_read_sloc2_1_0:
	.ds 3
_f_read_sloc3_1_0:
	.ds 3
_f_read_sloc4_1_0:
	.ds 4
_f_read_sloc5_1_0:
	.ds 3
_f_read_sloc6_1_0:
	.ds 4
_f_read_sloc7_1_0:
	.ds 3
_f_read_sloc8_1_0:
	.ds 3
_f_read_sloc9_1_0:
	.ds 3
_f_lseek_sloc0_1_0:
	.ds 4
_f_lseek_sloc1_1_0:
	.ds 4
_f_lseek_sloc2_1_0:
	.ds 3
_f_lseek_sloc3_1_0:
	.ds 4
_f_lseek_sloc4_1_0:
	.ds 4
_f_lseek_sloc5_1_0:
	.ds 3
_f_lseek_sloc6_1_0:
	.ds 4
_f_opendir_sloc0_1_0:
	.ds 3
_f_readdir_sloc0_1_0:
	.ds 3
_f_getlabel_sloc0_1_0:
	.ds 3
_f_getlabel_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_mem_cpy_sloc0_1_0:
	.ds 2
	.area	OSEG    (OVR,DATA)
_mem_set_sloc0_1_0:
	.ds 2
	.area	OSEG    (OVR,DATA)
_mem_cmp_sloc0_1_0:
	.ds 2
_mem_cmp_sloc1_1_0:
	.ds 2
	.area	OSEG    (OVR,DATA)
_ld_clust_sloc0_1_0:
	.ds 3
_ld_clust_sloc1_1_0:
	.ds 4
	.area	OSEG    (OVR,DATA)
_get_ldnumber_sloc0_1_0:
	.ds 3
_get_ldnumber_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_FatFs:
	.ds 6
_Fsid:
	.ds 2
_mem_cpy_PARM_2:
	.ds 3
_mem_cpy_PARM_3:
	.ds 2
_mem_cpy_dst_65536_41:
	.ds 3
_mem_set_PARM_2:
	.ds 2
_mem_set_PARM_3:
	.ds 2
_mem_set_dst_65536_43:
	.ds 3
_mem_cmp_PARM_2:
	.ds 3
_mem_cmp_PARM_3:
	.ds 2
_mem_cmp_dst_65536_45:
	.ds 3
_mem_cmp_r_65536_46:
	.ds 2
_chk_chr_PARM_2:
	.ds 2
_chk_chr_str_65536_47:
	.ds 3
_move_window_PARM_2:
	.ds 4
_move_window_fs_65536_49:
	.ds 3
_clust2sect_PARM_2:
	.ds 4
_clust2sect_fs_65536_52:
	.ds 3
_get_fat_PARM_2:
	.ds 4
_get_fat_fs_65536_54:
	.ds 3
_clmt_clust_PARM_2:
	.ds 4
_clmt_clust_fp_65536_57:
	.ds 3
_clmt_clust_cl_65536_58:
	.ds 4
_clmt_clust_tbl_65536_58:
	.ds 3
_dir_sdi_PARM_2:
	.ds 2
_dir_sdi_dp_65536_61:
	.ds 3
_dir_sdi_clst_65536_62:
	.ds 4
_dir_sdi_sect_65536_62:
	.ds 4
_dir_next_PARM_2:
	.ds 2
_dir_next_dp_65536_66:
	.ds 3
_ld_clust_PARM_2:
	.ds 3
_ld_clust_fs_65536_73:
	.ds 3
_ld_clust_cl_65536_74:
	.ds 4
_cmp_lfn_PARM_2:
	.ds 3
_cmp_lfn_lfnbuf_65536_75:
	.ds 3
_cmp_lfn_i_65536_76:
	.ds 2
_cmp_lfn_wc_65536_76:
	.ds 2
_pick_lfn_PARM_2:
	.ds 3
_pick_lfn_lfnbuf_65536_80:
	.ds 3
_pick_lfn_i_65536_81:
	.ds 2
_pick_lfn_wc_65536_81:
	.ds 2
_gen_numname_PARM_2:
	.ds 3
_gen_numname_PARM_3:
	.ds 3
_gen_numname_PARM_4:
	.ds 2
_gen_numname_dst_65536_86:
	.ds 3
_gen_numname_ns_65536_87:
	.ds 8
_gen_numname_c_65536_87:
	.ds 1
_gen_numname_i_65536_87:
	.ds 2
_gen_numname_wc_131072_88:
	.ds 2
_gen_numname_sr_131072_88:
	.ds 4
_sum_sfn_dir_65536_97:
	.ds 3
_sum_sfn_sum_65536_98:
	.ds 1
_dir_find_dp_65536_99:
	.ds 3
_dir_find_res_65536_100:
	.ds 1
_dir_find_c_65536_100:
	.ds 1
_dir_find_ord_65536_100:
	.ds 1
_dir_find_sum_65536_100:
	.ds 1
_dir_read_PARM_2:
	.ds 2
_dir_read_dp_65536_109:
	.ds 3
_dir_read_res_65536_110:
	.ds 1
_dir_read_c_65536_110:
	.ds 1
_dir_read_ord_65536_110:
	.ds 1
_dir_read_sum_65536_110:
	.ds 1
_get_fileinfo_PARM_2:
	.ds 3
_get_fileinfo_dp_65536_118:
	.ds 3
_get_fileinfo_i_65536_119:
	.ds 2
_get_fileinfo_p_65536_119:
	.ds 3
_get_fileinfo_c_65536_119:
	.ds 1
_create_name_PARM_2:
	.ds 3
_create_name_dp_65536_127:
	.ds 3
_create_name_b_65536_128:
	.ds 1
_create_name_cf_65536_128:
	.ds 1
_create_name_w_65536_128:
	.ds 2
_create_name_i_65536_128:
	.ds 2
_create_name_ni_65536_128:
	.ds 2
_create_name_si_65536_128:
	.ds 2
_create_name_di_65536_128:
	.ds 2
_create_name_p_65536_128:
	.ds 3
_follow_path_PARM_2:
	.ds 3
_follow_path_dp_65536_150:
	.ds 3
_follow_path_res_65536_151:
	.ds 1
_get_ldnumber_path_65536_161:
	.ds 3
_get_ldnumber_vol_65536_162:
	.ds 2
_check_fs_PARM_2:
	.ds 4
_check_fs_fs_65536_169:
	.ds 3
_find_volume_PARM_2:
	.ds 3
_find_volume_PARM_3:
	.ds 1
_find_volume_rfs_65536_171:
	.ds 3
_find_volume_fmt1_65536_172:
	.ds 1
_find_volume_bsect1_65536_172:
	.ds 4
_find_volume_fasize1_65536_172:
	.ds 4
_find_volume_tsect1_65536_172:
	.ds 4
_find_volume_szbfat1_65536_172:
	.ds 4
_find_volume_br_131072_180:
	.ds 16
_validate_obj_65536_186:
	.ds 3
_f_mount_PARM_2:
	.ds 3
_f_mount_PARM_3:
	.ds 1
_f_mount_fs_65536_188:
	.ds 3
_f_mount_rp_65536_189:
	.ds 3
_f_open_PARM_2:
	.ds 3
_f_open_PARM_3:
	.ds 1
_f_open_fp_65536_192:
	.ds 3
_f_open_res_65536_193:
	.ds 1
_f_open_dj_65536_193:
	.ds 30
_f_open_dir_65536_193:
	.ds 3
_f_open_sfn_65536_193:
	.ds 12
_f_read_PARM_2:
	.ds 3
_f_read_PARM_3:
	.ds 2
_f_read_PARM_4:
	.ds 3
_f_read_fp_65536_200:
	.ds 3
_f_read_clst_65536_201:
	.ds 4
_f_read_rcnt_65536_201:
	.ds 2
_f_read_cc_65536_201:
	.ds 2
_f_read_rbuff_65536_201:
	.ds 3
_f_close_fp_65536_214:
	.ds 3
_f_lseek_PARM_2:
	.ds 4
_f_lseek_fp_65536_218:
	.ds 3
_f_lseek_res_65536_219:
	.ds 1
_f_lseek_cl_131072_220:
	.ds 4
_f_lseek_pcl_131072_220:
	.ds 4
_f_lseek_tcl_131072_220:
	.ds 4
_f_lseek_ulen_131072_220:
	.ds 4
_f_lseek_tbl_131072_220:
	.ds 3
_f_lseek_clst_131072_232:
	.ds 4
_f_lseek_nsect_131072_232:
	.ds 4
_f_opendir_PARM_2:
	.ds 3
_f_opendir_dp_65536_243:
	.ds 3
_f_opendir_res_65536_244:
	.ds 1
_f_opendir_fs_65536_244:
	.ds 3
_f_opendir_sfn_65536_244:
	.ds 12
_f_closedir_dp_65536_250:
	.ds 3
_f_readdir_PARM_2:
	.ds 3
_f_readdir_dp_65536_253:
	.ds 3
_f_readdir_res_65536_254:
	.ds 1
_f_readdir_sfn_65536_254:
	.ds 12
_f_stat_PARM_2:
	.ds 3
_f_stat_path_65536_262:
	.ds 3
_f_stat_res_65536_263:
	.ds 1
_f_stat_dj_65536_263:
	.ds 30
_f_stat_sfn_65536_263:
	.ds 12
_f_getlabel_PARM_2:
	.ds 3
_f_getlabel_PARM_3:
	.ds 3
_f_getlabel_path_65536_269:
	.ds 3
_f_getlabel_res_65536_270:
	.ds 1
_f_getlabel_dj_65536_270:
	.ds 30
_f_gets_PARM_2:
	.ds 2
_f_gets_PARM_3:
	.ds 3
_f_gets_buff_65536_278:
	.ds 3
_f_gets_s_65536_279:
	.ds 2
_f_gets_rc_65536_279:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'mem_cpy'
;------------------------------------------------------------
;src                       Allocated with name '_mem_cpy_PARM_2'
;cnt                       Allocated with name '_mem_cpy_PARM_3'
;dst                       Allocated with name '_mem_cpy_dst_65536_41'
;d                         Allocated with name '_mem_cpy_d_65536_42'
;s                         Allocated with name '_mem_cpy_s_65536_42'
;sloc0                     Allocated with name '_mem_cpy_sloc0_1_0'
;------------------------------------------------------------
;	FATFS\src\ff.c:560: void mem_cpy (void* dst, const void* src, UINT cnt) {
;	-----------------------------------------
;	 function mem_cpy
;	-----------------------------------------
_mem_cpy:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_mem_cpy_dst_65536_41
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:561: BYTE *d = (BYTE*)dst;
	mov	dptr,#_mem_cpy_dst_65536_41
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	FATFS\src\ff.c:562: const BYTE *s = (const BYTE*)src;
	mov	dptr,#_mem_cpy_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	FATFS\src\ff.c:571: while (cnt--)
	mov	dptr,#_mem_cpy_PARM_3
	movx	a,@dptr
	mov	_mem_cpy_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_mem_cpy_sloc0_1_0 + 1),a
00101$:
	mov	r0,_mem_cpy_sloc0_1_0
	mov	r1,(_mem_cpy_sloc0_1_0 + 1)
	dec	_mem_cpy_sloc0_1_0
	mov	a,#0xff
	cjne	a,_mem_cpy_sloc0_1_0,00115$
	dec	(_mem_cpy_sloc0_1_0 + 1)
00115$:
	mov	a,r0
	orl	a,r1
	jz	00104$
;	FATFS\src\ff.c:572: *d++ = *s++;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	sjmp	00101$
00104$:
;	FATFS\src\ff.c:573: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mem_set'
;------------------------------------------------------------
;val                       Allocated with name '_mem_set_PARM_2'
;cnt                       Allocated with name '_mem_set_PARM_3'
;dst                       Allocated with name '_mem_set_dst_65536_43'
;d                         Allocated with name '_mem_set_d_65536_44'
;sloc0                     Allocated with name '_mem_set_sloc0_1_0'
;------------------------------------------------------------
;	FATFS\src\ff.c:577: void mem_set (void* dst, int val, UINT cnt) {
;	-----------------------------------------
;	 function mem_set
;	-----------------------------------------
_mem_set:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_mem_set_dst_65536_43
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:578: BYTE *d = (BYTE*)dst;
	mov	dptr,#_mem_set_dst_65536_43
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	FATFS\src\ff.c:580: while (cnt--)
	mov	dptr,#_mem_set_PARM_2
	movx	a,@dptr
	mov	_mem_set_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_mem_set_sloc0_1_0 + 1),a
	mov	dptr,#_mem_set_PARM_3
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
00101$:
	mov	ar0,r1
	mov	ar4,r2
	dec	r1
	cjne	r1,#0xff,00115$
	dec	r2
00115$:
	mov	a,r0
	orl	a,r4
	jz	00104$
;	FATFS\src\ff.c:581: *d++ = (BYTE)val;
	mov	r3,_mem_set_sloc0_1_0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	sjmp	00101$
00104$:
;	FATFS\src\ff.c:582: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mem_cmp'
;------------------------------------------------------------
;src                       Allocated with name '_mem_cmp_PARM_2'
;cnt                       Allocated with name '_mem_cmp_PARM_3'
;dst                       Allocated with name '_mem_cmp_dst_65536_45'
;d                         Allocated with name '_mem_cmp_d_65536_46'
;s                         Allocated with name '_mem_cmp_s_65536_46'
;r                         Allocated with name '_mem_cmp_r_65536_46'
;sloc0                     Allocated with name '_mem_cmp_sloc0_1_0'
;sloc1                     Allocated with name '_mem_cmp_sloc1_1_0'
;------------------------------------------------------------
;	FATFS\src\ff.c:586: int mem_cmp (const void* dst, const void* src, UINT cnt) {
;	-----------------------------------------
;	 function mem_cmp
;	-----------------------------------------
_mem_cmp:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_mem_cmp_dst_65536_45
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:587: const BYTE *d = (const BYTE *)dst, *s = (const BYTE *)src;
	mov	dptr,#_mem_cmp_dst_65536_45
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mem_cmp_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	FATFS\src\ff.c:588: int r = 0;
	mov	dptr,#_mem_cmp_r_65536_46
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:590: while (cnt-- && (r = *d++ - *s++) == 0) ;
	mov	dptr,#_mem_cmp_PARM_3
	movx	a,@dptr
	mov	_mem_cmp_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_mem_cmp_sloc0_1_0 + 1),a
00102$:
	mov	r0,_mem_cmp_sloc0_1_0
	mov	r1,(_mem_cmp_sloc0_1_0 + 1)
	dec	_mem_cmp_sloc0_1_0
	mov	a,#0xff
	cjne	a,_mem_cmp_sloc0_1_0,00116$
	dec	(_mem_cmp_sloc0_1_0 + 1)
00116$:
	mov	a,r0
	orl	a,r1
	jz	00104$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	_mem_cmp_sloc1_1_0,r1
	mov	(_mem_cmp_sloc1_1_0 + 1),#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	ar0,r1
	mov	r1,#0x00
	mov	a,_mem_cmp_sloc1_1_0
	clr	c
	subb	a,r0
	mov	r0,a
	mov	a,(_mem_cmp_sloc1_1_0 + 1)
	subb	a,r1
	mov	r1,a
	mov	dptr,#_mem_cmp_r_65536_46
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r0
	orl	a,r1
	jz	00102$
00104$:
;	FATFS\src\ff.c:591: return r;
	mov	dptr,#_mem_cmp_r_65536_46
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
;	FATFS\src\ff.c:592: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'chk_chr'
;------------------------------------------------------------
;chr                       Allocated with name '_chk_chr_PARM_2'
;str                       Allocated with name '_chk_chr_str_65536_47'
;------------------------------------------------------------
;	FATFS\src\ff.c:596: int chk_chr (const char* str, int chr) {
;	-----------------------------------------
;	 function chk_chr
;	-----------------------------------------
_chk_chr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_chk_chr_str_65536_47
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:597: while (*str && *str != chr) str++;
	mov	dptr,#_chk_chr_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_chk_chr_str_65536_47
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00102$:
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	jz	00110$
	mov	ar1,r2
	mov	r2,#0x00
	mov	a,r1
	cjne	a,ar6,00121$
	mov	a,r2
	cjne	a,ar7,00121$
	sjmp	00110$
00121$:
	inc	r3
	cjne	r3,#0x00,00122$
	inc	r4
00122$:
	mov	dptr,#_chk_chr_str_65536_47
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00102$
00110$:
	mov	dptr,#_chk_chr_str_65536_47
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:598: return *str;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	r7,#0x00
	mov	dpl,r3
	mov	dph,r7
;	FATFS\src\ff.c:599: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'move_window'
;------------------------------------------------------------
;sloc0                     Allocated with name '_move_window_sloc0_1_0'
;sloc1                     Allocated with name '_move_window_sloc1_1_0'
;sector                    Allocated with name '_move_window_PARM_2'
;fs                        Allocated with name '_move_window_fs_65536_49'
;------------------------------------------------------------
;	FATFS\src\ff.c:779: FRESULT move_window (
;	-----------------------------------------
;	 function move_window
;	-----------------------------------------
_move_window:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_move_window_fs_65536_49
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:784: if (sector != fs->winsect) {	/* Changed current window */
	mov	dptr,#_move_window_fs_65536_49
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x22
	add	a,r5
	mov	_move_window_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_move_window_sloc0_1_0 + 1),a
	mov	(_move_window_sloc0_1_0 + 2),r7
	mov	dpl,_move_window_sloc0_1_0
	mov	dph,(_move_window_sloc0_1_0 + 1)
	mov	b,(_move_window_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_move_window_PARM_2
	movx	a,@dptr
	mov	_move_window_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_move_window_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_move_window_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_move_window_sloc1_1_0 + 3),a
	mov	a,r0
	cjne	a,_move_window_sloc1_1_0,00115$
	mov	a,r1
	cjne	a,(_move_window_sloc1_1_0 + 1),00115$
	mov	a,r3
	cjne	a,(_move_window_sloc1_1_0 + 2),00115$
	mov	a,r4
	cjne	a,(_move_window_sloc1_1_0 + 3),00115$
	sjmp	00104$
00115$:
;	FATFS\src\ff.c:789: if (disk_read(fs->drv, fs->win, sector, 1))
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_disk_read_PARM_2
	mov	a,#0x26
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_read_PARM_3
	mov	a,_move_window_sloc1_1_0
	movx	@dptr,a
	mov	a,(_move_window_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_move_window_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_move_window_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_read_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	r0,#_disk_read
	mov	r1,#(_disk_read >> 8)
	mov	r2,#(_disk_read >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	jz	00102$
;	FATFS\src\ff.c:790: return FR_DISK_ERR;
	mov	dpl,#0x01
	sjmp	00105$
00102$:
;	FATFS\src\ff.c:791: fs->winsect = sector;
	mov	dpl,_move_window_sloc0_1_0
	mov	dph,(_move_window_sloc0_1_0 + 1)
	mov	b,(_move_window_sloc0_1_0 + 2)
	mov	a,_move_window_sloc1_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_move_window_sloc1_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_move_window_sloc1_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_move_window_sloc1_1_0 + 3)
	lcall	__gptrput
00104$:
;	FATFS\src\ff.c:794: return FR_OK;
	mov	dpl,#0x00
00105$:
;	FATFS\src\ff.c:795: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clust2sect'
;------------------------------------------------------------
;sloc0                     Allocated with name '_clust2sect_sloc0_1_0'
;clst                      Allocated with name '_clust2sect_PARM_2'
;fs                        Allocated with name '_clust2sect_fs_65536_52'
;------------------------------------------------------------
;	FATFS\src\ff.c:845: DWORD clust2sect (	/* !=0: Sector number, 0: Failed - invalid cluster# */
;	-----------------------------------------
;	 function clust2sect
;	-----------------------------------------
_clust2sect:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_clust2sect_fs_65536_52
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:850: clst -= 2;
	mov	dptr,#_clust2sect_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	add	a,#0xfe
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	addc	a,#0xff
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_clust2sect_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:851: if (clst >= (fs->n_fatent - 2)) return 0;		/* Invalid cluster# */
	mov	dptr,#_clust2sect_fs_65536_52
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x0a
	add	a,r7
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r1
	add	a,#0xfe
	mov	r1,a
	mov	a,r2
	addc	a,#0xff
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	dptr,#_clust2sect_PARM_2
	movx	a,@dptr
	mov	_clust2sect_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_clust2sect_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_clust2sect_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_clust2sect_sloc0_1_0 + 3),a
	clr	c
	mov	a,_clust2sect_sloc0_1_0
	subb	a,r1
	mov	a,(_clust2sect_sloc0_1_0 + 1)
	subb	a,r2
	mov	a,(_clust2sect_sloc0_1_0 + 2)
	subb	a,r3
	mov	a,(_clust2sect_sloc0_1_0 + 3)
	subb	a,r4
	jc	00102$
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	sjmp	00103$
00102$:
;	FATFS\src\ff.c:852: return clst * fs->csize + fs->database;
	mov	a,#0x02
	add	a,r7
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar4,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dptr,#__mullong_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_clust2sect_sloc0_1_0
	mov	dph,(_clust2sect_sloc0_1_0 + 1)
	mov	b,(_clust2sect_sloc0_1_0 + 2)
	mov	a,(_clust2sect_sloc0_1_0 + 3)
	push	ar7
	push	ar6
	push	ar5
	lcall	__mullong
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x1e
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r0
	add	a,r1
	mov	r1,a
	mov	a,r5
	addc	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
00103$:
;	FATFS\src\ff.c:853: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_fat'
;------------------------------------------------------------
;sloc0                     Allocated with name '_get_fat_sloc0_1_0'
;sloc1                     Allocated with name '_get_fat_sloc1_1_0'
;sloc2                     Allocated with name '_get_fat_sloc2_1_0'
;sloc3                     Allocated with name '_get_fat_sloc3_1_0'
;clst                      Allocated with name '_get_fat_PARM_2'
;fs                        Allocated with name '_get_fat_fs_65536_54'
;wc                        Allocated with name '_get_fat_wc_65536_55'
;bc                        Allocated with name '_get_fat_bc_65536_55'
;p                         Allocated with name '_get_fat_p_65536_55'
;------------------------------------------------------------
;	FATFS\src\ff.c:863: DWORD get_fat (	/* 0xFFFFFFFF:Disk error, 1:Internal error, Else:Cluster status */
;	-----------------------------------------
;	 function get_fat
;	-----------------------------------------
_get_fat:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_get_fat_fs_65536_54
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:872: if (clst < 2 || clst >= fs->n_fatent)	/* Check range */
	mov	dptr,#_get_fat_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r4
	subb	a,#0x02
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00101$
	mov	dptr,#_get_fat_fs_65536_54
	movx	a,@dptr
	mov	_get_fat_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_get_fat_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_get_fat_sloc0_1_0 + 2),a
	mov	a,#0x0a
	add	a,_get_fat_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_get_fat_sloc0_1_0 + 1)
	mov	r3,a
	mov	r2,(_get_fat_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r5
	subb	a,r1
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	jc	00102$
00101$:
;	FATFS\src\ff.c:873: return 1;
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	ljmp	__sdcc_banked_ret
00102$:
;	FATFS\src\ff.c:875: switch (fs->fs_type) {
	mov	dpl,_get_fat_sloc0_1_0
	mov	dph,(_get_fat_sloc0_1_0 + 1)
	mov	b,(_get_fat_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x01,00159$
	sjmp	00104$
00159$:
	cjne	r3,#0x02,00160$
	ljmp	00109$
00160$:
	cjne	r3,#0x03,00161$
	ljmp	00112$
00161$:
	ljmp	00115$
;	FATFS\src\ff.c:876: case FS_FAT12 :
00104$:
;	FATFS\src\ff.c:877: bc = (UINT)clst; bc += bc / 2;
	mov	ar2,r4
	mov	ar3,r5
	mov	ar0,r2
	mov	a,r3
	clr	c
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	mov	r1,a
	mov	a,r0
	add	a,r2
	mov	r2,a
	mov	a,r1
	addc	a,r3
	mov	r3,a
;	FATFS\src\ff.c:878: if (move_window(fs, fs->fatbase + (bc / SS(fs)))) break;
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x16
	add	a,_get_fat_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_get_fat_sloc0_1_0 + 1)
	mov	r1,a
	mov	r7,(_get_fat_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	_get_fat_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc1_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc1_1_0 + 3),a
	mov	a,r3
	clr	c
	rrc	a
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_move_window_PARM_2
	mov	a,r4
	add	a,_get_fat_sloc1_1_0
	movx	@dptr,a
	mov	a,r5
	addc	a,(_get_fat_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a,(_get_fat_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a,(_get_fat_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_get_fat_sloc0_1_0
	mov	dph,(_get_fat_sloc0_1_0 + 1)
	mov	b,(_get_fat_sloc0_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_move_window
	mov	r1,#(_move_window >> 8)
	mov	r2,#(_move_window >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	jz	00162$
	ljmp	00116$
00162$:
;	FATFS\src\ff.c:879: wc = fs->win[bc % SS(fs)]; bc++;
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_get_fat_fs_65536_54
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x26
	add	a,r0
	mov	_get_fat_sloc1_1_0,a
	clr	a
	addc	a,r1
	mov	(_get_fat_sloc1_1_0 + 1),a
	mov	(_get_fat_sloc1_1_0 + 2),r7
	mov	ar5,r2
	mov	a,#0x01
	anl	a,r3
	mov	r6,a
	mov	a,r5
	add	a,_get_fat_sloc1_1_0
	mov	r5,a
	mov	a,r6
	addc	a,(_get_fat_sloc1_1_0 + 1)
	mov	r6,a
	mov	r4,(_get_fat_sloc1_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	mov	_get_fat_sloc1_1_0,r5
	mov	(_get_fat_sloc1_1_0 + 1),#0x00
	mov	a,#0x01
	add	a,r2
	mov	_get_fat_sloc2_1_0,a
	clr	a
	addc	a,r3
	mov	(_get_fat_sloc2_1_0 + 1),a
;	FATFS\src\ff.c:880: if (move_window(fs, fs->fatbase + (bc / SS(fs)))) break;
	mov	a,#0x16
	add	a,r0
	mov	r4,a
	clr	a
	addc	a,r1
	mov	r5,a
	mov	ar6,r7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_get_fat_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc3_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc3_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc3_1_0 + 3),a
	mov	a,(_get_fat_sloc2_1_0 + 1)
	clr	c
	rrc	a
	mov	r2,a
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dptr,#_move_window_PARM_2
	mov	a,r2
	add	a,_get_fat_sloc3_1_0
	movx	@dptr,a
	mov	a,r6
	addc	a,(_get_fat_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	addc	a,(_get_fat_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	addc	a,(_get_fat_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r0,#_move_window
	mov	r1,#(_move_window >> 8)
	mov	r2,#(_move_window >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	jz	00163$
	ljmp	00116$
00163$:
;	FATFS\src\ff.c:881: wc |= fs->win[bc % SS(fs)] << 8;
	mov	dptr,#_get_fat_fs_65536_54
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x26
	add	a,r1
	mov	_get_fat_sloc3_1_0,a
	clr	a
	addc	a,r2
	mov	(_get_fat_sloc3_1_0 + 1),a
	mov	(_get_fat_sloc3_1_0 + 2),r3
	mov	r0,_get_fat_sloc2_1_0
	mov	a,#0x01
	anl	a,(_get_fat_sloc2_1_0 + 1)
	mov	r3,a
	mov	a,r0
	add	a,_get_fat_sloc3_1_0
	mov	r0,a
	mov	a,r3
	addc	a,(_get_fat_sloc3_1_0 + 1)
	mov	r3,a
	mov	r2,(_get_fat_sloc3_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r3,a
	clr	a
	orl	a,_get_fat_sloc1_1_0
	mov	r2,a
	mov	a,r3
	orl	a,(_get_fat_sloc1_1_0 + 1)
	mov	r3,a
;	FATFS\src\ff.c:882: return clst & 1 ? wc >> 4 : (wc & 0xFFF);
	mov	a,r4
	jnb	acc.0,00119$
	mov	ar0,r2
	mov	a,r3
	swap	a
	xch	a,r0
	swap	a
	anl	a,#0x0f
	xrl	a,r0
	xch	a,r0
	anl	a,#0x0f
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	mov	r1,a
	sjmp	00120$
00119$:
	mov	ar0,r2
	mov	a,#0x0f
	anl	a,r3
	mov	r1,a
00120$:
	mov	r3,#0x00
	mov	r2,#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	mov	a,r2
	ljmp	__sdcc_banked_ret
;	FATFS\src\ff.c:884: case FS_FAT16 :
00109$:
;	FATFS\src\ff.c:885: if (move_window(fs, fs->fatbase + (clst / (SS(fs) / 2)))) break;
	mov	a,#0x16
	add	a,_get_fat_sloc0_1_0
	mov	r3,a
	clr	a
	addc	a,(_get_fat_sloc0_1_0 + 1)
	mov	r1,a
	mov	r2,(_get_fat_sloc0_1_0 + 2)
	mov	dpl,r3
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_get_fat_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc3_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc3_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc3_1_0 + 3),a
	mov	ar0,r5
	mov	ar1,r6
	mov	ar2,r7
	mov	r3,#0x00
	mov	dptr,#_move_window_PARM_2
	mov	a,r0
	add	a,_get_fat_sloc3_1_0
	movx	@dptr,a
	mov	a,r1
	addc	a,(_get_fat_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	addc	a,(_get_fat_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a,(_get_fat_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_get_fat_sloc0_1_0
	mov	dph,(_get_fat_sloc0_1_0 + 1)
	mov	b,(_get_fat_sloc0_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r0,#_move_window
	mov	r1,#(_move_window >> 8)
	mov	r2,#(_move_window >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00165$
	ljmp	00116$
00165$:
;	FATFS\src\ff.c:886: p = &fs->win[clst * 2 % SS(fs)];
	mov	dptr,#_get_fat_fs_65536_54
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x26
	add	a,r1
	mov	_get_fat_sloc3_1_0,a
	clr	a
	addc	a,r2
	mov	(_get_fat_sloc3_1_0 + 1),a
	mov	(_get_fat_sloc3_1_0 + 2),r3
	mov	a,r4
	add	a,r4
	mov	r0,a
	mov	a,r5
	rlc	a
	mov	r1,a
	mov	a,r6
	rlc	a
	mov	a,r7
	rlc	a
	anl	ar1,#0x01
	clr	a
	mov	a,r0
	add	a,_get_fat_sloc3_1_0
	mov	_get_fat_sloc3_1_0,a
	mov	a,r1
	addc	a,(_get_fat_sloc3_1_0 + 1)
	mov	(_get_fat_sloc3_1_0 + 1),a
;	FATFS\src\ff.c:887: return LD_WORD(p);
	mov	a,#0x01
	add	a,_get_fat_sloc3_1_0
	mov	r1,a
	clr	a
	addc	a,(_get_fat_sloc3_1_0 + 1)
	mov	r2,a
	mov	r3,(_get_fat_sloc3_1_0 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r3,a
	mov	r1,#0x00
	mov	dpl,_get_fat_sloc3_1_0
	mov	dph,(_get_fat_sloc3_1_0 + 1)
	mov	b,(_get_fat_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r2,#0x00
	orl	ar1,a
	mov	a,r2
	orl	ar3,a
	mov	ar0,r3
	mov	r2,#0x00
	mov	r3,#0x00
	mov	dpl,r1
	mov	dph,r0
	mov	b,r2
	mov	a,r3
	ljmp	__sdcc_banked_ret
;	FATFS\src\ff.c:889: case FS_FAT32 :
00112$:
;	FATFS\src\ff.c:890: if (move_window(fs, fs->fatbase + (clst / (SS(fs) / 4)))) break;
	mov	a,#0x16
	add	a,_get_fat_sloc0_1_0
	mov	r3,a
	clr	a
	addc	a,(_get_fat_sloc0_1_0 + 1)
	mov	r1,a
	mov	r2,(_get_fat_sloc0_1_0 + 2)
	mov	dpl,r3
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_get_fat_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc3_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc3_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc3_1_0 + 3),a
	mov	ar0,r4
	mov	a,r5
	mov	c,acc.7
	xch	a,r0
	rlc	a
	xch	a,r0
	rlc	a
	xch	a,r0
	anl	a,#0x01
	mov	r1,a
	mov	a,r6
	add	a,r6
	orl	a,r1
	mov	r1,a
	mov	ar2,r6
	mov	a,r7
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x01
	mov	r3,a
	mov	dptr,#_move_window_PARM_2
	mov	a,r0
	add	a,_get_fat_sloc3_1_0
	movx	@dptr,a
	mov	a,r1
	addc	a,(_get_fat_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	addc	a,(_get_fat_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a,(_get_fat_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_get_fat_sloc0_1_0
	mov	dph,(_get_fat_sloc0_1_0 + 1)
	mov	b,(_get_fat_sloc0_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r0,#_move_window
	mov	r1,#(_move_window >> 8)
	mov	r2,#(_move_window >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00166$
	ljmp	00116$
00166$:
;	FATFS\src\ff.c:891: p = &fs->win[clst * 4 % SS(fs)];
	mov	dptr,#_get_fat_fs_65536_54
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x26
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	a,r7
	rlc	a
	anl	ar5,#0x01
	clr	a
	mov	a,r4
	add	a,r1
	mov	r1,a
	mov	a,r5
	addc	a,r2
	mov	r2,a
;	FATFS\src\ff.c:892: return LD_DWORD(p) & 0x0FFFFFFF;
	mov	a,#0x03
	add	a,r1
	mov	r5,a
	clr	a
	addc	a,r2
	mov	r6,a
	mov	ar7,r3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	(_get_fat_sloc3_1_0 + 3),r5
;	1-genFromRTrack replaced	mov	_get_fat_sloc3_1_0,#0x00
	mov	_get_fat_sloc3_1_0,r7
;	1-genFromRTrack replaced	mov	(_get_fat_sloc3_1_0 + 1),#0x00
	mov	(_get_fat_sloc3_1_0 + 1),r7
;	1-genFromRTrack replaced	mov	(_get_fat_sloc3_1_0 + 2),#0x00
	mov	(_get_fat_sloc3_1_0 + 2),r7
	mov	a,#0x02
	add	a,r1
	mov	r0,a
	clr	a
	addc	a,r2
	mov	r6,a
	mov	ar7,r3
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	r7,#0x00
	mov	ar5,r7
	mov	ar6,r0
	clr	a
	mov	r7,a
	orl	_get_fat_sloc3_1_0,a
	mov	a,r7
	orl	(_get_fat_sloc3_1_0 + 1),a
	mov	a,r6
	orl	(_get_fat_sloc3_1_0 + 2),a
	mov	a,r5
	orl	(_get_fat_sloc3_1_0 + 3),a
	mov	a,#0x01
	add	a,r1
	mov	r4,a
	clr	a
	addc	a,r2
	mov	r6,a
	mov	ar7,r3
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	clr	a
	mov	r4,a
	mov	r6,a
	mov	r5,a
	mov	a,_get_fat_sloc3_1_0
	orl	ar4,a
	mov	a,(_get_fat_sloc3_1_0 + 1)
	orl	ar7,a
	mov	a,(_get_fat_sloc3_1_0 + 2)
	orl	ar6,a
	mov	a,(_get_fat_sloc3_1_0 + 3)
	orl	ar5,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	orl	ar4,a
	mov	a,r1
	orl	ar7,a
	mov	a,r2
	orl	ar6,a
	mov	a,r3
	orl	ar5,a
	anl	ar5,#0x0f
	mov	dpl,r4
	mov	dph,r7
	mov	b,r6
	mov	a,r5
;	FATFS\src\ff.c:894: default:
	sjmp	00117$
00115$:
;	FATFS\src\ff.c:895: return 1;
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
;	FATFS\src\ff.c:896: }
	sjmp	00117$
00116$:
;	FATFS\src\ff.c:898: return 0xFFFFFFFF;	/* An error occurred at the disk I/O layer */
	mov	dptr,#0xffff
	mov	a,#0xff
	mov	b,a
00117$:
;	FATFS\src\ff.c:899: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clmt_clust'
;------------------------------------------------------------
;ofs                       Allocated with name '_clmt_clust_PARM_2'
;fp                        Allocated with name '_clmt_clust_fp_65536_57'
;cl                        Allocated with name '_clmt_clust_cl_65536_58'
;ncl                       Allocated with name '_clmt_clust_ncl_65536_58'
;tbl                       Allocated with name '_clmt_clust_tbl_65536_58'
;------------------------------------------------------------
;	FATFS\src\ff.c:1087: DWORD clmt_clust (	/* <2:Error, >=2:Cluster number */
;	-----------------------------------------
;	 function clmt_clust
;	-----------------------------------------
_clmt_clust:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_clmt_clust_fp_65536_57
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1095: tbl = fp->cltbl + 1;	/* Top of CLMT */
	mov	dptr,#_clmt_clust_fp_65536_57
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x1b
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_clmt_clust_tbl_65536_58
	mov	a,#0x04
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1096: cl = ofs / SS(fp->fs) / fp->fs->csize;	/* Cluster order from top of the file */
	mov	dptr,#_clmt_clust_PARM_2
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,#0x00
	clr	c
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r2
	rrc	a
	mov	r1,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dptr,#__divulong_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_clmt_clust_cl_65536_58
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00106$:
;	FATFS\src\ff.c:1098: ncl = *tbl++;			/* Number of cluters in the fragment */
	mov	dptr,#_clmt_clust_tbl_65536_58
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_clmt_clust_tbl_65536_58
	mov	a,#0x04
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1099: if (!ncl) return 0;		/* End of table? (error) */
	mov	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	jnz	00102$
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	sjmp	00108$
00102$:
;	FATFS\src\ff.c:1100: if (cl < ncl) break;	/* In this fragment? */
	mov	dptr,#_clmt_clust_cl_65536_58
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r0
	subb	a,r1
	mov	a,r5
	subb	a,r2
	mov	a,r6
	subb	a,r3
	mov	a,r7
	subb	a,r4
	jc	00105$
;	FATFS\src\ff.c:1101: cl -= ncl; tbl++;		/* Next fragment */
	mov	dptr,#_clmt_clust_cl_65536_58
	mov	a,r0
	clr	c
	subb	a,r1
	movx	@dptr,a
	mov	a,r5
	subb	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	subb	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	subb	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_clmt_clust_tbl_65536_58
	movx	a,@dptr
	add	a,#0x04
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	sjmp	00106$
00105$:
;	FATFS\src\ff.c:1103: return cl + *tbl;	/* Return the cluster number */
	mov	dptr,#_clmt_clust_tbl_65536_58
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r1
	add	a,r0
	mov	r0,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r7
	mov	r7,a
	mov	dpl,r0
	mov	dph,r5
	mov	b,r6
00108$:
;	FATFS\src\ff.c:1104: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dir_sdi'
;------------------------------------------------------------
;sloc0                     Allocated with name '_dir_sdi_sloc0_1_0'
;sloc1                     Allocated with name '_dir_sdi_sloc1_1_0'
;sloc2                     Allocated with name '_dir_sdi_sloc2_1_0'
;idx                       Allocated with name '_dir_sdi_PARM_2'
;dp                        Allocated with name '_dir_sdi_dp_65536_61'
;clst                      Allocated with name '_dir_sdi_clst_65536_62'
;sect                      Allocated with name '_dir_sdi_sect_65536_62'
;ic                        Allocated with name '_dir_sdi_ic_65536_62'
;------------------------------------------------------------
;	FATFS\src\ff.c:1115: FRESULT dir_sdi (
;	-----------------------------------------
;	 function dir_sdi
;	-----------------------------------------
_dir_sdi:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_dir_sdi_dp_65536_61
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1124: dp->index = (WORD)idx;	/* Current index */
	mov	dptr,#_dir_sdi_dp_65536_61
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#_dir_sdi_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	FATFS\src\ff.c:1125: clst = dp->sclust;		/* Table start cluster (0:root) */
	mov	a,#0x07
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_dir_sdi_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_sdi_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_sdi_sloc0_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_sdi_sloc0_1_0 + 3),a
	mov	dptr,#_dir_sdi_clst_65536_62
	mov	a,_dir_sdi_sloc0_1_0
	movx	@dptr,a
	mov	a,(_dir_sdi_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_sdi_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_sdi_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1126: if (clst == 1 || clst >= dp->fs->n_fatent)	/* Check start cluster range */
	mov	a,#0x01
	cjne	a,_dir_sdi_sloc0_1_0,00164$
	dec	a
	cjne	a,(_dir_sdi_sloc0_1_0 + 1),00164$
	cjne	a,(_dir_sdi_sloc0_1_0 + 2),00164$
	cjne	a,(_dir_sdi_sloc0_1_0 + 3),00164$
	sjmp	00101$
00164$:
	push	ar0
	push	ar1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x0a
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,_dir_sdi_sloc0_1_0
	subb	a,r1
	mov	a,(_dir_sdi_sloc0_1_0 + 1)
	subb	a,r2
	mov	a,(_dir_sdi_sloc0_1_0 + 2)
	subb	a,r3
	mov	a,(_dir_sdi_sloc0_1_0 + 3)
	subb	a,r4
	pop	ar1
	pop	ar0
	jc	00102$
00101$:
;	FATFS\src\ff.c:1127: return FR_INT_ERR;
	mov	dpl,#0x02
	ljmp	__sdcc_banked_ret
00102$:
;	FATFS\src\ff.c:1128: if (!clst && dp->fs->fs_type == FS_FAT32)	/* Replace cluster# 0 with root cluster# if in FAT32 */
	mov	a,_dir_sdi_sloc0_1_0
	orl	a,(_dir_sdi_sloc0_1_0 + 1)
	orl	a,(_dir_sdi_sloc0_1_0 + 2)
	orl	a,(_dir_sdi_sloc0_1_0 + 3)
	jnz	00105$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x03,00105$
;	FATFS\src\ff.c:1129: clst = dp->fs->dirbase;
	mov	a,#0x1a
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_dir_sdi_clst_65536_62
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
00105$:
;	FATFS\src\ff.c:1131: if (clst == 0) {	/* Static table (root-directory in FAT12/16) */
	mov	dptr,#_dir_sdi_clst_65536_62
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00118$
;	FATFS\src\ff.c:1132: if (idx >= dp->fs->n_rootdir)	/* Is index out of range? */
	mov	dptr,#_dir_sdi_dp_65536_61
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x08
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r3
	jc	00108$
;	FATFS\src\ff.c:1133: return FR_INT_ERR;
	mov	dpl,#0x02
	ljmp	__sdcc_banked_ret
00108$:
;	FATFS\src\ff.c:1134: sect = dp->fs->dirbase;
	mov	a,#0x1a
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_dir_sdi_sect_65536_62
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	ljmp	00119$
00118$:
;	FATFS\src\ff.c:1137: ic = SS(dp->fs) / SZ_DIR * dp->fs->csize;	/* Entries per cluster */
	mov	dptr,#_dir_sdi_dp_65536_61
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	_dir_sdi_sloc1_1_0,r5
	mov	a,r7
	swap	a
	anl	a,#0xf0
	xch	a,_dir_sdi_sloc1_1_0
	swap	a
	xch	a,_dir_sdi_sloc1_1_0
	xrl	a,_dir_sdi_sloc1_1_0
	xch	a,_dir_sdi_sloc1_1_0
	anl	a,#0xf0
	xch	a,_dir_sdi_sloc1_1_0
	xrl	a,_dir_sdi_sloc1_1_0
	mov	(_dir_sdi_sloc1_1_0 + 1),a
;	FATFS\src\ff.c:1138: while (idx >= ic) {	/* Follow cluster chain */
00114$:
	mov	dptr,#_dir_sdi_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,_dir_sdi_sloc1_1_0
	mov	a,r5
	subb	a,(_dir_sdi_sloc1_1_0 + 1)
	jnc	00171$
	ljmp	00116$
00171$:
;	FATFS\src\ff.c:1139: clst = get_fat(dp->fs, clst);				/* Get next cluster */
	push	ar4
	push	ar5
	mov	dptr,#_dir_sdi_dp_65536_61
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_dir_sdi_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_sdi_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_sdi_sloc0_1_0 + 2),a
	mov	dptr,#_dir_sdi_clst_65536_62
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_fat_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_dir_sdi_sloc0_1_0
	mov	dph,(_dir_sdi_sloc0_1_0 + 1)
	mov	b,(_dir_sdi_sloc0_1_0 + 2)
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	mov	r0,#_get_fat
	mov	r1,#(_get_fat >> 8)
	mov	r2,#(_get_fat >> 16)
	lcall	__sdcc_banked_call
	mov	_dir_sdi_sloc0_1_0,dpl
	mov	(_dir_sdi_sloc0_1_0 + 1),dph
	mov	(_dir_sdi_sloc0_1_0 + 2),b
	mov	(_dir_sdi_sloc0_1_0 + 3),a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	dptr,#_dir_sdi_clst_65536_62
	mov	a,_dir_sdi_sloc0_1_0
	movx	@dptr,a
	mov	a,(_dir_sdi_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_sdi_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_sdi_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1140: if (clst == 0xFFFFFFFF) return FR_DISK_ERR;	/* Disk error */
	mov	a,_dir_sdi_sloc0_1_0
	anl	a,(_dir_sdi_sloc0_1_0 + 1)
	anl	a,(_dir_sdi_sloc0_1_0 + 2)
	anl	a,(_dir_sdi_sloc0_1_0 + 3)
	cjne	a,#0xFF,00172$
	sjmp	00173$
00172$:
	pop	ar5
	pop	ar4
	sjmp	00110$
00173$:
	pop	ar5
	pop	ar4
	mov	dpl,#0x01
	ljmp	__sdcc_banked_ret
00110$:
;	FATFS\src\ff.c:1141: if (clst < 2 || clst >= dp->fs->n_fatent)	/* Reached to end of table or internal error */
	clr	c
	mov	a,_dir_sdi_sloc0_1_0
	subb	a,#0x02
	mov	a,(_dir_sdi_sloc0_1_0 + 1)
	subb	a,#0x00
	mov	a,(_dir_sdi_sloc0_1_0 + 2)
	subb	a,#0x00
	mov	a,(_dir_sdi_sloc0_1_0 + 3)
	subb	a,#0x00
	jc	00111$
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,#0x0a
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	clr	c
	mov	a,_dir_sdi_sloc0_1_0
	subb	a,r1
	mov	a,(_dir_sdi_sloc0_1_0 + 1)
	subb	a,r2
	mov	a,(_dir_sdi_sloc0_1_0 + 2)
	subb	a,r3
	mov	a,(_dir_sdi_sloc0_1_0 + 3)
	subb	a,r7
	jc	00112$
00111$:
;	FATFS\src\ff.c:1142: return FR_INT_ERR;
	mov	dpl,#0x02
	ljmp	__sdcc_banked_ret
00112$:
;	FATFS\src\ff.c:1143: idx -= ic;
	mov	dptr,#_dir_sdi_PARM_2
	mov	a,r4
	clr	c
	subb	a,_dir_sdi_sloc1_1_0
	movx	@dptr,a
	mov	a,r5
	subb	a,(_dir_sdi_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	ljmp	00114$
00116$:
;	FATFS\src\ff.c:1145: sect = clust2sect(dp->fs, clst);
	mov	dptr,#_dir_sdi_dp_65536_61
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_dir_sdi_clst_65536_62
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_clust2sect_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_clust2sect
	mov	r1,#(_clust2sect >> 8)
	mov	r2,#(_clust2sect >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_dir_sdi_sect_65536_62
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00119$:
;	FATFS\src\ff.c:1147: dp->clust = clst;	/* Current cluster# */
	mov	dptr,#_dir_sdi_dp_65536_61
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0b
	add	a,r5
	mov	_dir_sdi_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_dir_sdi_sloc0_1_0 + 1),a
	mov	(_dir_sdi_sloc0_1_0 + 2),r7
	mov	dptr,#_dir_sdi_clst_65536_62
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,_dir_sdi_sloc0_1_0
	mov	dph,(_dir_sdi_sloc0_1_0 + 1)
	mov	b,(_dir_sdi_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	FATFS\src\ff.c:1148: if (!sect) return FR_INT_ERR;
	mov	dptr,#_dir_sdi_sect_65536_62
	movx	a,@dptr
	mov	_dir_sdi_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_sdi_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_sdi_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_sdi_sloc0_1_0 + 3),a
	mov	dptr,#_dir_sdi_sect_65536_62
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00121$
	mov	dpl,#0x02
	ljmp	__sdcc_banked_ret
00121$:
;	FATFS\src\ff.c:1149: dp->sect = sect + idx / (SS(dp->fs) / SZ_DIR);					/* Sector# of the directory entry */
	mov	a,#0x0f
	add	a,r5
	mov	_dir_sdi_sloc2_1_0,a
	clr	a
	addc	a,r6
	mov	(_dir_sdi_sloc2_1_0 + 1),a
	mov	(_dir_sdi_sloc2_1_0 + 2),r7
	mov	dptr,#_dir_sdi_PARM_2
	movx	a,@dptr
	mov	_dir_sdi_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_sdi_sloc1_1_0 + 1),a
	mov	r4,_dir_sdi_sloc1_1_0
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r3,a
	mov	ar0,r4
	clr	a
	mov	r2,a
	mov	r4,a
	mov	a,r0
	add	a,_dir_sdi_sloc0_1_0
	mov	r0,a
	mov	a,r3
	addc	a,(_dir_sdi_sloc0_1_0 + 1)
	mov	r3,a
	mov	a,r2
	addc	a,(_dir_sdi_sloc0_1_0 + 2)
	mov	r2,a
	mov	a,r4
	addc	a,(_dir_sdi_sloc0_1_0 + 3)
	mov	r4,a
	mov	dpl,_dir_sdi_sloc2_1_0
	mov	dph,(_dir_sdi_sloc2_1_0 + 1)
	mov	b,(_dir_sdi_sloc2_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	FATFS\src\ff.c:1150: dp->dir = dp->fs->win + (idx % (SS(dp->fs) / SZ_DIR)) * SZ_DIR;	/* Ptr to the entry in the sector */
	mov	a,#0x13
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x26
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x0f
	anl	a,_dir_sdi_sloc1_1_0
	mov	r0,a
	clr	a
	rl	a
	anl	a,#0xe0
	xch	a,r0
	swap	a
	rl	a
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	anl	a,#0xe0
	xch	a,r0
	xrl	a,r0
	mov	r1,a
	mov	a,r0
	add	a,r5
	mov	r5,a
	mov	a,r1
	addc	a,r6
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	FATFS\src\ff.c:1152: return FR_OK;
	mov	dpl,#0x00
;	FATFS\src\ff.c:1153: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dir_next'
;------------------------------------------------------------
;sloc0                     Allocated with name '_dir_next_sloc0_1_0'
;sloc1                     Allocated with name '_dir_next_sloc1_1_0'
;sloc2                     Allocated with name '_dir_next_sloc2_1_0'
;sloc3                     Allocated with name '_dir_next_sloc3_1_0'
;sloc4                     Allocated with name '_dir_next_sloc4_1_0'
;stretch                   Allocated with name '_dir_next_PARM_2'
;dp                        Allocated with name '_dir_next_dp_65536_66'
;clst                      Allocated with name '_dir_next_clst_65536_67'
;i                         Allocated with name '_dir_next_i_65536_67'
;------------------------------------------------------------
;	FATFS\src\ff.c:1163: FRESULT dir_next (	/* FR_OK:Succeeded, FR_NO_FILE:End of table, FR_DENIED:Could not stretch */
;	-----------------------------------------
;	 function dir_next
;	-----------------------------------------
_dir_next:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_dir_next_dp_65536_66
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1172: i = dp->index + 1;
	mov	dptr,#_dir_next_dp_65536_66
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,#0x01
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
;	FATFS\src\ff.c:1173: if (!(i & 0xFFFF) || !dp->sect)	/* Report EOT when index has reached 65535 */
	mov	r3,a
	orl	a,r4
	jz	00101$
	mov	a,#0x0f
	add	a,r5
	mov	_dir_next_sloc2_1_0,a
	clr	a
	addc	a,r6
	mov	(_dir_next_sloc2_1_0 + 1),a
	mov	(_dir_next_sloc2_1_0 + 2),r7
	mov	dpl,_dir_next_sloc2_1_0
	mov	dph,(_dir_next_sloc2_1_0 + 1)
	mov	b,(_dir_next_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	_dir_next_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_next_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_next_sloc0_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_next_sloc0_1_0 + 3),a
	mov	a,_dir_next_sloc0_1_0
	orl	a,(_dir_next_sloc0_1_0 + 1)
	orl	a,(_dir_next_sloc0_1_0 + 2)
	orl	a,(_dir_next_sloc0_1_0 + 3)
	jnz	00102$
00101$:
;	FATFS\src\ff.c:1174: return FR_NO_FILE;
	mov	dpl,#0x04
	ljmp	__sdcc_banked_ret
00102$:
;	FATFS\src\ff.c:1176: if (!(i % (SS(dp->fs) / SZ_DIR))) {	/* Sector changed? */
	mov	a,#0x0f
	anl	a,r4
	mov	_dir_next_sloc1_1_0,a
	mov	(_dir_next_sloc1_1_0 + 1),#0x00
	orl	a,(_dir_next_sloc1_1_0 + 1)
	jz	00161$
	ljmp	00120$
00161$:
;	FATFS\src\ff.c:1177: dp->sect++;					/* Next sector */
	push	ar4
	push	ar3
	mov	a,#0x01
	add	a,_dir_next_sloc0_1_0
	mov	r3,a
	clr	a
	addc	a,(_dir_next_sloc0_1_0 + 1)
	mov	r1,a
	clr	a
	addc	a,(_dir_next_sloc0_1_0 + 2)
	mov	r2,a
	clr	a
	addc	a,(_dir_next_sloc0_1_0 + 3)
	mov	r4,a
	mov	dpl,_dir_next_sloc2_1_0
	mov	dph,(_dir_next_sloc2_1_0 + 1)
	mov	b,(_dir_next_sloc2_1_0 + 2)
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	FATFS\src\ff.c:1179: if (!dp->clust) {		/* Static table */
	mov	a,#0x0b
	add	a,r5
	mov	_dir_next_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_dir_next_sloc0_1_0 + 1),a
	mov	(_dir_next_sloc0_1_0 + 2),r7
	mov	dpl,_dir_next_sloc0_1_0
	mov	dph,(_dir_next_sloc0_1_0 + 1)
	mov	b,(_dir_next_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	_dir_next_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_next_sloc3_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_next_sloc3_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_next_sloc3_1_0 + 3),a
	pop	ar3
	pop	ar4
	mov	a,_dir_next_sloc3_1_0
	orl	a,(_dir_next_sloc3_1_0 + 1)
	orl	a,(_dir_next_sloc3_1_0 + 2)
	orl	a,(_dir_next_sloc3_1_0 + 3)
	jnz	00117$
;	FATFS\src\ff.c:1180: if (i >= dp->fs->n_rootdir)	/* Report EOT if it reached end of static table */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x08
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r3
	subb	a,r1
	jnc	00163$
	ljmp	00120$
00163$:
;	FATFS\src\ff.c:1181: return FR_NO_FILE;
	mov	dpl,#0x04
	ljmp	__sdcc_banked_ret
00117$:
;	FATFS\src\ff.c:1184: if (((i / (SS(dp->fs) / SZ_DIR)) & (dp->fs->csize - 1)) == 0) {	/* Cluster changed? */
	mov	ar1,r4
	mov	a,r3
	swap	a
	xch	a,r1
	swap	a
	anl	a,#0x0f
	xrl	a,r1
	xch	a,r1
	anl	a,#0x0f
	xch	a,r1
	xrl	a,r1
	xch	a,r1
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_dir_next_sloc4_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_next_sloc4_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_next_sloc4_1_0 + 2),a
	push	ar4
	push	ar3
	mov	a,#0x02
	add	a,_dir_next_sloc4_1_0
	mov	r0,a
	clr	a
	addc	a,(_dir_next_sloc4_1_0 + 1)
	mov	r3,a
	mov	r4,(_dir_next_sloc4_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	r4,#0x00
	dec	r0
	cjne	r0,#0xff,00164$
	dec	r4
00164$:
	mov	a,r0
	anl	ar1,a
	mov	a,r4
	anl	ar2,a
	pop	ar3
	pop	ar4
	mov	a,r1
	orl	a,r2
	jz	00165$
	ljmp	00120$
00165$:
;	FATFS\src\ff.c:1185: clst = get_fat(dp->fs, dp->clust);				/* Get next cluster */
	mov	dptr,#_get_fat_PARM_2
	mov	a,_dir_next_sloc3_1_0
	movx	@dptr,a
	mov	a,(_dir_next_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_next_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_next_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_dir_next_sloc4_1_0
	mov	dph,(_dir_next_sloc4_1_0 + 1)
	mov	b,(_dir_next_sloc4_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	r0,#_get_fat
	mov	r1,#(_get_fat >> 8)
	mov	r2,#(_get_fat >> 16)
	lcall	__sdcc_banked_call
	mov	_dir_next_sloc3_1_0,dpl
	mov	(_dir_next_sloc3_1_0 + 1),dph
	mov	(_dir_next_sloc3_1_0 + 2),b
	mov	(_dir_next_sloc3_1_0 + 3),a
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	FATFS\src\ff.c:1186: if (clst <= 1) return FR_INT_ERR;
	clr	c
	mov	a,#0x01
	subb	a,_dir_next_sloc3_1_0
	clr	a
	subb	a,(_dir_next_sloc3_1_0 + 1)
	clr	a
	subb	a,(_dir_next_sloc3_1_0 + 2)
	clr	a
	subb	a,(_dir_next_sloc3_1_0 + 3)
	jc	00107$
	mov	dpl,#0x02
	ljmp	__sdcc_banked_ret
00107$:
;	FATFS\src\ff.c:1187: if (clst == 0xFFFFFFFF) return FR_DISK_ERR;
	mov	a,_dir_next_sloc3_1_0
	anl	a,(_dir_next_sloc3_1_0 + 1)
	anl	a,(_dir_next_sloc3_1_0 + 2)
	anl	a,(_dir_next_sloc3_1_0 + 3)
	cjne	a,#0xFF,00109$
	mov	dpl,#0x01
	ljmp	__sdcc_banked_ret
00109$:
;	FATFS\src\ff.c:1188: if (clst >= dp->fs->n_fatent) {					/* If it reached end of dynamic table, */
	push	ar4
	push	ar3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x0a
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,_dir_next_sloc3_1_0
	subb	a,r0
	mov	a,(_dir_next_sloc3_1_0 + 1)
	subb	a,r1
	mov	a,(_dir_next_sloc3_1_0 + 2)
	subb	a,r2
	mov	a,(_dir_next_sloc3_1_0 + 3)
	subb	a,r4
	pop	ar3
	pop	ar4
	jc	00113$
;	FATFS\src\ff.c:1207: if (!stretch) return FR_NO_FILE;			/* If do not stretch, report EOT (this is to suppress warning) */
	mov	dptr,#_dir_next_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00111$
	mov	dpl,#0x04
	ljmp	__sdcc_banked_ret
00111$:
;	FATFS\src\ff.c:1208: return FR_NO_FILE;							/* Report EOT */
	mov	dpl,#0x04
	ljmp	__sdcc_banked_ret
00113$:
;	FATFS\src\ff.c:1211: dp->clust = clst;				/* Initialize data for new cluster */
	mov	dpl,_dir_next_sloc0_1_0
	mov	dph,(_dir_next_sloc0_1_0 + 1)
	mov	b,(_dir_next_sloc0_1_0 + 2)
	mov	a,_dir_next_sloc3_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_dir_next_sloc3_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_dir_next_sloc3_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_dir_next_sloc3_1_0 + 3)
	lcall	__gptrput
;	FATFS\src\ff.c:1212: dp->sect = clust2sect(dp->fs, clst);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_clust2sect_PARM_2
	mov	a,_dir_next_sloc3_1_0
	movx	@dptr,a
	mov	a,(_dir_next_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_next_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_next_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	mov	r0,#_clust2sect
	mov	r1,#(_clust2sect >> 8)
	mov	r2,#(_clust2sect >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r5,dph
	mov	r2,b
	mov	r7,a
	pop	ar3
	pop	ar4
	mov	dpl,_dir_next_sloc2_1_0
	mov	dph,(_dir_next_sloc2_1_0 + 1)
	mov	b,(_dir_next_sloc2_1_0 + 2)
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00120$:
;	FATFS\src\ff.c:1217: dp->index = (WORD)i;	/* Current index */
	mov	dptr,#_dir_next_dp_65536_66
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x05
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	FATFS\src\ff.c:1218: dp->dir = dp->fs->win + (i % (SS(dp->fs) / SZ_DIR)) * SZ_DIR;	/* Current entry in the window */
	mov	a,#0x13
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x26
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r0,_dir_next_sloc1_1_0
	mov	a,(_dir_next_sloc1_1_0 + 1)
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r0
	swap	a
	rl	a
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	anl	a,#0xe0
	xch	a,r0
	xrl	a,r0
	mov	r1,a
	mov	a,r0
	add	a,r5
	mov	r5,a
	mov	a,r1
	addc	a,r6
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	FATFS\src\ff.c:1220: return FR_OK;
	mov	dpl,#0x00
;	FATFS\src\ff.c:1221: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ld_clust'
;------------------------------------------------------------
;dir                       Allocated with name '_ld_clust_PARM_2'
;fs                        Allocated with name '_ld_clust_fs_65536_73'
;cl                        Allocated with name '_ld_clust_cl_65536_74'
;sloc0                     Allocated with name '_ld_clust_sloc0_1_0'
;sloc1                     Allocated with name '_ld_clust_sloc1_1_0'
;------------------------------------------------------------
;	FATFS\src\ff.c:1268: DWORD ld_clust (
;	-----------------------------------------
;	 function ld_clust
;	-----------------------------------------
_ld_clust:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ld_clust_fs_65536_73
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1275: cl = LD_WORD(dir+DIR_FstClusLO);
	mov	dptr,#_ld_clust_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x1a
	add	a,r5
	mov	_ld_clust_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_ld_clust_sloc0_1_0 + 1),a
	mov	(_ld_clust_sloc0_1_0 + 2),r7
	mov	a,#0x1b
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	mov	r0,#0x00
	mov	dpl,_ld_clust_sloc0_1_0
	mov	dph,(_ld_clust_sloc0_1_0 + 1)
	mov	b,(_ld_clust_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,#0x00
	orl	ar0,a
	mov	a,r2
	orl	ar4,a
	mov	_ld_clust_sloc1_1_0,r0
	mov	(_ld_clust_sloc1_1_0 + 1),r4
	mov	(_ld_clust_sloc1_1_0 + 2),#0x00
	mov	(_ld_clust_sloc1_1_0 + 3),#0x00
	mov	dptr,#_ld_clust_cl_65536_74
	mov	a,_ld_clust_sloc1_1_0
	movx	@dptr,a
	mov	a,(_ld_clust_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_ld_clust_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_ld_clust_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1276: if (fs->fs_type == FS_FAT32)
	mov	dptr,#_ld_clust_fs_65536_73
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r1
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x03,00102$
;	FATFS\src\ff.c:1277: cl |= (DWORD)LD_WORD(dir+DIR_FstClusHI) << 16;
	mov	a,#0x14
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,#0x15
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r6,#0x00
	orl	ar5,a
	mov	a,r6
	orl	ar7,a
	mov	ar4,r7
	mov	ar6,r5
	mov	r5,#0x00
	mov	r7,#0x00
	mov	dptr,#_ld_clust_cl_65536_74
	mov	a,r5
	orl	a,_ld_clust_sloc1_1_0
	movx	@dptr,a
	mov	a,r7
	orl	a,(_ld_clust_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	orl	a,(_ld_clust_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	orl	a,(_ld_clust_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
00102$:
;	FATFS\src\ff.c:1279: return cl;
	mov	dptr,#_ld_clust_cl_65536_74
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	FATFS\src\ff.c:1280: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cmp_lfn'
;------------------------------------------------------------
;sloc0                     Allocated with name '_cmp_lfn_sloc0_1_0'
;sloc1                     Allocated with name '_cmp_lfn_sloc1_1_0'
;sloc2                     Allocated with name '_cmp_lfn_sloc2_1_0'
;sloc3                     Allocated with name '_cmp_lfn_sloc3_1_0'
;dir                       Allocated with name '_cmp_lfn_PARM_2'
;lfnbuf                    Allocated with name '_cmp_lfn_lfnbuf_65536_75'
;i                         Allocated with name '_cmp_lfn_i_65536_76'
;s                         Allocated with name '_cmp_lfn_s_65536_76'
;wc                        Allocated with name '_cmp_lfn_wc_65536_76'
;uc                        Allocated with name '_cmp_lfn_uc_65536_76'
;------------------------------------------------------------
;	FATFS\src\ff.c:1307: int cmp_lfn (			/* 1:Matched, 0:Not matched */
;	-----------------------------------------
;	 function cmp_lfn
;	-----------------------------------------
_cmp_lfn:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_cmp_lfn_lfnbuf_65536_75
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1316: i = ((dir[LDIR_Ord] & ~LLE) - 1) * 13;	/* Get offset in the LFN buffer */
	mov	dptr,#_cmp_lfn_PARM_2
	movx	a,@dptr
	mov	_cmp_lfn_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_cmp_lfn_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_cmp_lfn_sloc1_1_0 + 2),a
	mov	dpl,_cmp_lfn_sloc1_1_0
	mov	dph,(_cmp_lfn_sloc1_1_0 + 1)
	mov	b,(_cmp_lfn_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	anl	ar4,#0xbf
	dec	r4
	cjne	r4,#0xff,00150$
	dec	r3
00150$:
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000d
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	mov	dptr,#_cmp_lfn_i_65536_76
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1317: s = 0; wc = 1;
	mov	dptr,#_cmp_lfn_wc_65536_76
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1318: do {
	mov	dptr,#_cmp_lfn_lfnbuf_65536_75
	movx	a,@dptr
	mov	_cmp_lfn_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_cmp_lfn_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_cmp_lfn_sloc3_1_0 + 2),a
	clr	a
	mov	_cmp_lfn_sloc0_1_0,a
	mov	(_cmp_lfn_sloc0_1_0 + 1),a
00109$:
;	FATFS\src\ff.c:1319: uc = LD_WORD(dir+LfnOfs[s]);	/* Pick an LFN character from the entry */
	mov	a,_cmp_lfn_sloc0_1_0
	add	a,#_LfnOfs
	mov	dpl,a
	mov	a,(_cmp_lfn_sloc0_1_0 + 1)
	addc	a,#(_LfnOfs >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	add	a,_cmp_lfn_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_cmp_lfn_sloc1_1_0 + 1)
	mov	r1,a
	mov	r2,(_cmp_lfn_sloc1_1_0 + 2)
	mov	a,#0x01
	add	a,r0
	mov	r5,a
	clr	a
	addc	a,r1
	mov	r6,a
	mov	ar7,r2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r5,#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	r6,#0x00
	orl	a,r5
	mov	_cmp_lfn_sloc2_1_0,a
	mov	a,r6
	orl	a,r7
	mov	(_cmp_lfn_sloc2_1_0 + 1),a
;	FATFS\src\ff.c:1320: if (wc) {	/* Last character has not been processed */
	mov	dptr,#_cmp_lfn_wc_65536_76
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00151$
	ljmp	00107$
00151$:
;	FATFS\src\ff.c:1321: wc = ff_wtoupper(uc);		/* Convert it to upper case */
	mov	dpl,_cmp_lfn_sloc2_1_0
	mov	dph,(_cmp_lfn_sloc2_1_0 + 1)
	push	ar4
	push	ar3
	mov	r0,#_ff_wtoupper
	mov	r1,#(_ff_wtoupper >> 8)
	mov	r2,#(_ff_wtoupper >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	mov	dptr,#_cmp_lfn_wc_65536_76
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1322: if (i >= _MAX_LFN || wc != ff_wtoupper(lfnbuf[i++]))	/* Compare it */
	clr	c
	mov	a,r3
	subb	a,#0xff
	mov	a,r4
	subb	a,#0x00
	jnc	00101$
	mov	ar2,r3
	mov	ar5,r4
	inc	r3
	cjne	r3,#0x00,00153$
	inc	r4
00153$:
	mov	dptr,#_cmp_lfn_i_65536_76
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r2
	add	a,_cmp_lfn_sloc3_1_0
	mov	r2,a
	mov	a,r5
	addc	a,(_cmp_lfn_sloc3_1_0 + 1)
	mov	r1,a
	mov	r5,(_cmp_lfn_sloc3_1_0 + 2)
	mov	dpl,r2
	mov	dph,r1
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	dpl,r2
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	mov	r0,#_ff_wtoupper
	mov	r1,#(_ff_wtoupper >> 8)
	mov	r2,#(_ff_wtoupper >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r5,dph
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
	mov	a,r6
	cjne	a,ar2,00154$
	mov	a,r7
	cjne	a,ar5,00154$
	sjmp	00110$
00154$:
00101$:
;	FATFS\src\ff.c:1323: return 0;				/* Not matched */
	mov	dptr,#0x0000
	ljmp	__sdcc_banked_ret
00107$:
;	FATFS\src\ff.c:1325: if (uc != 0xFFFF) return 0;	/* Check filler */
	mov	a,_cmp_lfn_sloc2_1_0
	anl	a,(_cmp_lfn_sloc2_1_0 + 1)
	cjne	a,#0xFF,00155$
	sjmp	00110$
00155$:
	mov	dptr,#0x0000
	sjmp	00116$
00110$:
;	FATFS\src\ff.c:1327: } while (++s < 13);				/* Repeat until all characters in the entry are checked */
	inc	_cmp_lfn_sloc0_1_0
	clr	a
	cjne	a,_cmp_lfn_sloc0_1_0,00156$
	inc	(_cmp_lfn_sloc0_1_0 + 1)
00156$:
	clr	c
	mov	a,_cmp_lfn_sloc0_1_0
	subb	a,#0x0d
	mov	a,(_cmp_lfn_sloc0_1_0 + 1)
	subb	a,#0x00
	jnc	00157$
	ljmp	00109$
00157$:
;	FATFS\src\ff.c:1329: if ((dir[LDIR_Ord] & LLE) && wc && lfnbuf[i])	/* Last segment matched but different length */
	mov	dpl,_cmp_lfn_sloc1_1_0
	mov	dph,(_cmp_lfn_sloc1_1_0 + 1)
	mov	b,(_cmp_lfn_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	jnb	acc.6,00113$
	mov	dptr,#_cmp_lfn_wc_65536_76
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00113$
	mov	dptr,#_cmp_lfn_lfnbuf_65536_75
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_cmp_lfn_i_65536_76
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	orl	a,r5
	jz	00113$
;	FATFS\src\ff.c:1330: return 0;
	mov	dptr,#0x0000
	sjmp	00116$
00113$:
;	FATFS\src\ff.c:1332: return 1;						/* The part of LFN matched */
	mov	dptr,#0x0001
00116$:
;	FATFS\src\ff.c:1333: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pick_lfn'
;------------------------------------------------------------
;sloc0                     Allocated with name '_pick_lfn_sloc0_1_0'
;sloc1                     Allocated with name '_pick_lfn_sloc1_1_0'
;sloc2                     Allocated with name '_pick_lfn_sloc2_1_0'
;dir                       Allocated with name '_pick_lfn_PARM_2'
;lfnbuf                    Allocated with name '_pick_lfn_lfnbuf_65536_80'
;i                         Allocated with name '_pick_lfn_i_65536_81'
;s                         Allocated with name '_pick_lfn_s_65536_81'
;wc                        Allocated with name '_pick_lfn_wc_65536_81'
;uc                        Allocated with name '_pick_lfn_uc_65536_81'
;------------------------------------------------------------
;	FATFS\src\ff.c:1338: int pick_lfn (			/* 1:Succeeded, 0:Buffer overflow */
;	-----------------------------------------
;	 function pick_lfn
;	-----------------------------------------
_pick_lfn:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_pick_lfn_lfnbuf_65536_80
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1347: i = ((dir[LDIR_Ord] & 0x3F) - 1) * 13;	/* Offset in the LFN buffer */
	mov	dptr,#_pick_lfn_PARM_2
	movx	a,@dptr
	mov	_pick_lfn_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_pick_lfn_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_pick_lfn_sloc1_1_0 + 2),a
	mov	dpl,_pick_lfn_sloc1_1_0
	mov	dph,(_pick_lfn_sloc1_1_0 + 1)
	mov	b,(_pick_lfn_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	anl	ar4,#0x3f
	mov	r3,#0x00
	dec	r4
	cjne	r4,#0xff,00145$
	dec	r3
00145$:
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000d
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	mov	dptr,#_pick_lfn_i_65536_81
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1349: s = 0; wc = 1;
	mov	dptr,#_pick_lfn_wc_65536_81
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1350: do {
	mov	dptr,#_pick_lfn_lfnbuf_65536_80
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	a
	mov	_pick_lfn_sloc0_1_0,a
	mov	(_pick_lfn_sloc0_1_0 + 1),a
00108$:
;	FATFS\src\ff.c:1351: uc = LD_WORD(dir+LfnOfs[s]);		/* Pick an LFN character from the entry */
	push	ar0
	push	ar1
	push	ar2
	mov	a,_pick_lfn_sloc0_1_0
	add	a,#_LfnOfs
	mov	dpl,a
	mov	a,(_pick_lfn_sloc0_1_0 + 1)
	addc	a,#(_LfnOfs >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	add	a,_pick_lfn_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_pick_lfn_sloc1_1_0 + 1)
	mov	r1,a
	mov	r2,(_pick_lfn_sloc1_1_0 + 2)
	mov	a,#0x01
	add	a,r0
	mov	r5,a
	clr	a
	addc	a,r1
	mov	r6,a
	mov	ar7,r2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r5,#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r6,#0x00
	orl	a,r5
	mov	_pick_lfn_sloc2_1_0,a
	mov	a,r6
	orl	a,r7
	mov	(_pick_lfn_sloc2_1_0 + 1),a
;	FATFS\src\ff.c:1352: if (wc) {	/* Last character has not been processed */
	pop	ar2
	pop	ar1
	pop	ar0
	mov	dptr,#_pick_lfn_wc_65536_81
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00106$
;	FATFS\src\ff.c:1353: if (i >= _MAX_LFN) return 0;	/* Buffer overflow? */
	clr	c
	mov	a,r3
	subb	a,#0xff
	mov	a,r4
	subb	a,#0x00
	jc	00102$
	mov	dptr,#0x0000
	ljmp	__sdcc_banked_ret
00102$:
;	FATFS\src\ff.c:1354: lfnbuf[i++] = wc = uc;			/* Store it */
	mov	ar6,r3
	mov	ar7,r4
	inc	r3
	cjne	r3,#0x00,00148$
	inc	r4
00148$:
	mov	dptr,#_pick_lfn_i_65536_81
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,r0
	mov	r6,a
	mov	a,r7
	addc	a,r1
	mov	r7,a
	mov	ar5,r2
	mov	dptr,#_pick_lfn_wc_65536_81
	mov	a,_pick_lfn_sloc2_1_0
	movx	@dptr,a
	mov	a,(_pick_lfn_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,_pick_lfn_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_pick_lfn_sloc2_1_0 + 1)
	lcall	__gptrput
	sjmp	00109$
00106$:
;	FATFS\src\ff.c:1356: if (uc != 0xFFFF) return 0;		/* Check filler */
	mov	a,_pick_lfn_sloc2_1_0
	anl	a,(_pick_lfn_sloc2_1_0 + 1)
	cjne	a,#0xFF,00149$
	sjmp	00109$
00149$:
	mov	dptr,#0x0000
	sjmp	00115$
00109$:
;	FATFS\src\ff.c:1358: } while (++s < 13);						/* Read all character in the entry */
	inc	_pick_lfn_sloc0_1_0
	clr	a
	cjne	a,_pick_lfn_sloc0_1_0,00150$
	inc	(_pick_lfn_sloc0_1_0 + 1)
00150$:
	clr	c
	mov	a,_pick_lfn_sloc0_1_0
	subb	a,#0x0d
	mov	a,(_pick_lfn_sloc0_1_0 + 1)
	subb	a,#0x00
	jnc	00151$
	ljmp	00108$
00151$:
;	FATFS\src\ff.c:1360: if (dir[LDIR_Ord] & LLE) {				/* Put terminator if it is the last LFN part */
	mov	dpl,_pick_lfn_sloc1_1_0
	mov	dph,(_pick_lfn_sloc1_1_0 + 1)
	mov	b,(_pick_lfn_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	jnb	acc.6,00114$
;	FATFS\src\ff.c:1361: if (i >= _MAX_LFN) return 0;		/* Buffer overflow? */
	mov	dptr,#_pick_lfn_i_65536_81
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0xff
	mov	a,r7
	subb	a,#0x00
	jc	00112$
	mov	dptr,#0x0000
	sjmp	00115$
00112$:
;	FATFS\src\ff.c:1362: lfnbuf[i] = 0;
	mov	dptr,#_pick_lfn_lfnbuf_65536_80
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00114$:
;	FATFS\src\ff.c:1365: return 1;
	mov	dptr,#0x0001
00115$:
;	FATFS\src\ff.c:1366: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gen_numname'
;------------------------------------------------------------
;sloc0                     Allocated with name '_gen_numname_sloc0_1_0'
;sloc1                     Allocated with name '_gen_numname_sloc1_1_0'
;src                       Allocated with name '_gen_numname_PARM_2'
;lfn                       Allocated with name '_gen_numname_PARM_3'
;seq                       Allocated with name '_gen_numname_PARM_4'
;dst                       Allocated with name '_gen_numname_dst_65536_86'
;ns                        Allocated with name '_gen_numname_ns_65536_87'
;c                         Allocated with name '_gen_numname_c_65536_87'
;i                         Allocated with name '_gen_numname_i_65536_87'
;j                         Allocated with name '_gen_numname_j_65536_87'
;wc                        Allocated with name '_gen_numname_wc_131072_88'
;sr                        Allocated with name '_gen_numname_sr_131072_88'
;------------------------------------------------------------
;	FATFS\src\ff.c:1409: void gen_numname (
;	-----------------------------------------
;	 function gen_numname
;	-----------------------------------------
_gen_numname:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_gen_numname_dst_65536_86
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1420: mem_cpy(dst, src, 11);
	mov	dptr,#_gen_numname_dst_65536_86
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gen_numname_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_mem_cpy_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mem_cpy_PARM_3
	mov	a,#0x0b
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_mem_cpy
	mov	r1,#(_mem_cpy >> 8)
	mov	r2,#(_mem_cpy >> 16)
	lcall	__sdcc_banked_call
;	FATFS\src\ff.c:1422: if (seq > 5) {	/* On many collisions, generate a hash number instead of sequential number */
	mov	dptr,#_gen_numname_PARM_4
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x05
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00194$
	ljmp	00140$
00194$:
;	FATFS\src\ff.c:1424: DWORD sr = seq;
	mov	dptr,#_gen_numname_sr_131072_88
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1426: while (*lfn) {	/* Create a CRC */
	mov	dptr,#_gen_numname_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00104$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jnz	00195$
	ljmp	00106$
00195$:
;	FATFS\src\ff.c:1427: wc = *lfn++;
	mov	dptr,#_gen_numname_wc_131072_88
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
;	FATFS\src\ff.c:1428: for (i = 0; i < 16; i++) {
	mov	r3,#0x10
	mov	r4,#0x00
00124$:
;	FATFS\src\ff.c:1429: sr = (sr << 1) + (wc & 1);
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_gen_numname_sr_131072_88
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r0
	add	a,r0
	mov	_gen_numname_sloc0_1_0,a
	mov	a,r1
	rlc	a
	mov	(_gen_numname_sloc0_1_0 + 1),a
	mov	a,r2
	rlc	a
	mov	(_gen_numname_sloc0_1_0 + 2),a
	mov	a,r7
	rlc	a
	mov	(_gen_numname_sloc0_1_0 + 3),a
	mov	dptr,#_gen_numname_wc_131072_88
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x01
	anl	a,r5
	mov	r2,a
	mov	r7,#0x00
	mov	ar0,r2
	mov	ar1,r7
	mov	r2,#0x00
	mov	r7,#0x00
	mov	dptr,#_gen_numname_sr_131072_88
	mov	a,r0
	add	a,_gen_numname_sloc0_1_0
	movx	@dptr,a
	mov	a,r1
	addc	a,(_gen_numname_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	addc	a,(_gen_numname_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a,(_gen_numname_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1430: wc >>= 1;
	mov	a,r6
	clr	c
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r6,a
	mov	dptr,#_gen_numname_wc_131072_88
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1431: if (sr & 0x10000) sr ^= 0x11021;
	mov	dptr,#_gen_numname_sr_131072_88
	movx	a,@dptr
	mov	_gen_numname_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_gen_numname_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_gen_numname_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_gen_numname_sloc0_1_0 + 3),a
	mov	a,(_gen_numname_sloc0_1_0 + 2)
	pop	ar7
	pop	ar6
	pop	ar5
	jnb	acc.0,00102$
	mov	dptr,#_gen_numname_sr_131072_88
	mov	a,#0x21
	xrl	a,_gen_numname_sloc0_1_0
	movx	@dptr,a
	mov	a,#0x10
	xrl	a,(_gen_numname_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x01
	xrl	a,(_gen_numname_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_gen_numname_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
00102$:
	dec	r3
	cjne	r3,#0xff,00197$
	dec	r4
00197$:
;	FATFS\src\ff.c:1428: for (i = 0; i < 16; i++) {
	mov	a,r3
	orl	a,r4
	jz	00198$
	ljmp	00124$
00198$:
	ljmp	00104$
00106$:
;	FATFS\src\ff.c:1434: seq = (UINT)sr;
	mov	dptr,#_gen_numname_sr_131072_88
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gen_numname_PARM_4
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1439: do {
00140$:
	mov	r6,#0x07
	mov	r7,#0x00
00111$:
;	FATFS\src\ff.c:1440: c = (seq % 16) + '0';
	mov	dptr,#_gen_numname_PARM_4
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	anl	ar4,#0x0f
	mov	a,#0x30
	add	a,r4
	mov	r5,a
	mov	dptr,#_gen_numname_c_65536_87
	movx	@dptr,a
;	FATFS\src\ff.c:1441: if (c > '9') c += 7;
	mov	ar4,r5
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00110$
	mov	dptr,#_gen_numname_c_65536_87
	mov	a,#0x07
	add	a,r5
	movx	@dptr,a
00110$:
;	FATFS\src\ff.c:1442: ns[i--] = c;
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00200$
	dec	r7
00200$:
	mov	a,r4
	add	a,#_gen_numname_ns_65536_87
	mov	r4,a
	mov	a,r5
	addc	a,#(_gen_numname_ns_65536_87 >> 8)
	mov	r5,a
	mov	dptr,#_gen_numname_c_65536_87
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
;	FATFS\src\ff.c:1443: seq /= 16;
	mov	dptr,#_gen_numname_PARM_4
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	dptr,#_gen_numname_PARM_4
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1444: } while (seq);
	mov	dptr,#_gen_numname_PARM_4
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00111$
;	FATFS\src\ff.c:1445: ns[i] = '~';
	mov	dptr,#_gen_numname_i_65536_87
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	add	a,#_gen_numname_ns_65536_87
	mov	dpl,a
	mov	a,r7
	addc	a,#(_gen_numname_ns_65536_87 >> 8)
	mov	dph,a
	mov	a,#0x7e
	movx	@dptr,a
;	FATFS\src\ff.c:1448: for (j = 0; j < i && dst[j] != ' '; j++) {
	mov	dptr,#_gen_numname_dst_65536_86
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r1,#0x00
	mov	r2,#0x00
00127$:
	clr	c
	mov	a,r1
	subb	a,r6
	mov	a,r2
	subb	a,r7
	jnc	00146$
	push	ar6
	push	ar7
	mov	a,r1
	add	a,r3
	mov	r0,a
	mov	a,r2
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x20,00203$
	pop	ar7
	pop	ar6
	sjmp	00146$
00203$:
	pop	ar7
	pop	ar6
	inc	r1
;	FATFS\src\ff.c:1454: do {
	cjne	r1,#0x00,00127$
	inc	r2
	sjmp	00127$
00146$:
	mov	dptr,#_gen_numname_dst_65536_86
	movx	a,@dptr
	mov	_gen_numname_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_gen_numname_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_gen_numname_sloc0_1_0 + 2),a
	mov	dptr,#_gen_numname_i_65536_87
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
00119$:
;	FATFS\src\ff.c:1455: dst[j++] = (i < 8) ? ns[i++] : ' ';
	mov	ar0,r1
	mov	ar7,r2
	inc	r1
	cjne	r1,#0x00,00205$
	inc	r2
00205$:
	mov	a,r0
	add	a,_gen_numname_sloc0_1_0
	mov	r5,a
	mov	a,r7
	addc	a,(_gen_numname_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_gen_numname_sloc0_1_0 + 2)
	clr	c
	mov	a,r3
	subb	a,#0x08
	mov	a,r4
	subb	a,#0x00
	jnc	00131$
	push	ar5
	push	ar6
	push	ar7
	mov	ar0,r3
	mov	ar7,r4
	inc	r3
	cjne	r3,#0x00,00207$
	inc	r4
00207$:
	mov	a,r0
	add	a,#_gen_numname_ns_65536_87
	mov	dpl,a
	mov	a,r7
	addc	a,#(_gen_numname_ns_65536_87 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	_gen_numname_sloc1_1_0,r7
	mov	(_gen_numname_sloc1_1_0 + 1),#0x00
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00132$
00131$:
	mov	_gen_numname_sloc1_1_0,#0x20
	mov	(_gen_numname_sloc1_1_0 + 1),#0x00
00132$:
	mov	r0,_gen_numname_sloc1_1_0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
;	FATFS\src\ff.c:1456: } while (j < 8);
	clr	c
	mov	a,r1
	subb	a,#0x08
	mov	a,r2
	subb	a,#0x00
	jc	00119$
;	FATFS\src\ff.c:1457: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sum_sfn'
;------------------------------------------------------------
;dir                       Allocated with name '_sum_sfn_dir_65536_97'
;sum                       Allocated with name '_sum_sfn_sum_65536_98'
;n                         Allocated with name '_sum_sfn_n_65536_98'
;------------------------------------------------------------
;	FATFS\src\ff.c:1468: BYTE sum_sfn (
;	-----------------------------------------
;	 function sum_sfn
;	-----------------------------------------
_sum_sfn:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_sum_sfn_dir_65536_97
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1472: BYTE sum = 0;
	mov	dptr,#_sum_sfn_sum_65536_98
	clr	a
	movx	@dptr,a
;	FATFS\src\ff.c:1475: do sum = (sum >> 1) + (sum << 7) + *dir++; while (--n);
	mov	dptr,#_sum_sfn_dir_65536_97
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r3,#0x0b
	mov	r4,#0x00
00101$:
	mov	dptr,#_sum_sfn_sum_65536_98
	movx	a,@dptr
	mov	r2,a
	clr	c
	rrc	a
	mov	r1,a
	mov	a,r2
	rr	a
	anl	a,#0x80
	add	a,r1
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dptr,#_sum_sfn_dir_65536_97
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sum_sfn_sum_65536_98
	mov	a,r1
	add	a,r2
	movx	@dptr,a
	dec	r3
	cjne	r3,#0xff,00115$
	dec	r4
00115$:
	mov	a,r3
	orl	a,r4
	jnz	00101$
;	FATFS\src\ff.c:1476: return sum;
	mov	dptr,#_sum_sfn_dir_65536_97
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sum_sfn_sum_65536_98
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
;	FATFS\src\ff.c:1477: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dir_find'
;------------------------------------------------------------
;sloc0                     Allocated with name '_dir_find_sloc0_1_0'
;sloc1                     Allocated with name '_dir_find_sloc1_1_0'
;sloc2                     Allocated with name '_dir_find_sloc2_1_0'
;sloc3                     Allocated with name '_dir_find_sloc3_1_0'
;sloc4                     Allocated with name '_dir_find_sloc4_1_0'
;sloc5                     Allocated with name '_dir_find_sloc5_1_0'
;sloc6                     Allocated with name '_dir_find_sloc6_1_0'
;sloc7                     Allocated with name '_dir_find_sloc7_1_0'
;dp                        Allocated with name '_dir_find_dp_65536_99'
;res                       Allocated with name '_dir_find_res_65536_100'
;c                         Allocated with name '_dir_find_c_65536_100'
;dir                       Allocated with name '_dir_find_dir_65536_100'
;a                         Allocated with name '_dir_find_a_65536_100'
;ord                       Allocated with name '_dir_find_ord_65536_100'
;sum                       Allocated with name '_dir_find_sum_65536_100'
;------------------------------------------------------------
;	FATFS\src\ff.c:1488: FRESULT dir_find (
;	-----------------------------------------
;	 function dir_find
;	-----------------------------------------
_dir_find:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_dir_find_dp_65536_99
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1498: res = dir_sdi(dp, 0);			/* Rewind directory object */
	mov	dptr,#_dir_find_dp_65536_99
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dir_sdi_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_dir_sdi
	mov	r1,#(_dir_sdi >> 8)
	mov	r2,#(_dir_sdi >> 16)
	lcall	__sdcc_banked_call
;	FATFS\src\ff.c:1499: if (res != FR_OK) return res;
	mov	a,dpl
	mov	r7,a
	jz	00102$
	mov	dpl,r7
	ljmp	__sdcc_banked_ret
00102$:
;	FATFS\src\ff.c:1502: ord = sum = 0xFF;
	mov	dptr,#_dir_find_sum_65536_100
	mov	a,#0xff
	movx	@dptr,a
	mov	dptr,#_dir_find_ord_65536_100
	movx	@dptr,a
;	FATFS\src\ff.c:1504: do {
	mov	dptr,#_dir_find_dp_65536_99
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x19
	add	a,r5
	mov	_dir_find_sloc7_1_0,a
	clr	a
	addc	a,r6
	mov	(_dir_find_sloc7_1_0 + 1),a
	mov	(_dir_find_sloc7_1_0 + 2),r7
	mov	_dir_find_sloc0_1_0,r5
	mov	(_dir_find_sloc0_1_0 + 1),r6
	mov	(_dir_find_sloc0_1_0 + 2),r7
	mov	a,#0x16
	add	a,r5
	mov	_dir_find_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_dir_find_sloc1_1_0 + 1),a
	mov	(_dir_find_sloc1_1_0 + 2),r7
	mov	_dir_find_sloc2_1_0,r5
	mov	(_dir_find_sloc2_1_0 + 1),r6
	mov	(_dir_find_sloc2_1_0 + 2),r7
	mov	_dir_find_sloc3_1_0,_dir_find_sloc7_1_0
	mov	(_dir_find_sloc3_1_0 + 1),(_dir_find_sloc7_1_0 + 1)
	mov	(_dir_find_sloc3_1_0 + 2),(_dir_find_sloc7_1_0 + 2)
	mov	_dir_find_sloc4_1_0,r5
	mov	(_dir_find_sloc4_1_0 + 1),r6
	mov	(_dir_find_sloc4_1_0 + 2),r7
	mov	a,#0x0f
	add	a,r5
	mov	_dir_find_sloc5_1_0,a
	clr	a
	addc	a,r6
	mov	(_dir_find_sloc5_1_0 + 1),a
	mov	(_dir_find_sloc5_1_0 + 2),r7
00125$:
;	FATFS\src\ff.c:1505: res = move_window(dp->fs, dp->sect);
	mov	dpl,_dir_find_sloc4_1_0
	mov	dph,(_dir_find_sloc4_1_0 + 1)
	mov	b,(_dir_find_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,_dir_find_sloc5_1_0
	mov	dph,(_dir_find_sloc5_1_0 + 1)
	mov	b,(_dir_find_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_move_window_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	mov	r0,#_move_window
	mov	r1,#(_move_window >> 8)
	mov	r2,#(_move_window >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	dptr,#_dir_find_res_65536_100
	mov	a,r7
	movx	@dptr,a
;	FATFS\src\ff.c:1506: if (res != FR_OK) break;
	mov	a,r7
	jz	00193$
	ljmp	00127$
00193$:
;	FATFS\src\ff.c:1507: dir = dp->dir;					/* Ptr to the directory entry of current index */
	mov	a,#0x13
	add	a,_dir_find_sloc4_1_0
	mov	r5,a
	clr	a
	addc	a,(_dir_find_sloc4_1_0 + 1)
	mov	r6,a
	mov	r7,(_dir_find_sloc4_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	FATFS\src\ff.c:1508: c = dir[DIR_Name];
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#_dir_find_c_65536_100
	movx	@dptr,a
;	FATFS\src\ff.c:1509: if (c == 0) { res = FR_NO_FILE; break; }	/* Reached to end of table */
	mov	a,r1
	jnz	00106$
	mov	dptr,#_dir_find_res_65536_100
	mov	a,#0x04
	movx	@dptr,a
	ljmp	00127$
00106$:
;	FATFS\src\ff.c:1511: a = dir[DIR_Attr] & AM_MASK;
	mov	a,#0x0b
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	a,#0x3f
	anl	a,r0
	mov	_dir_find_sloc6_1_0,a
;	FATFS\src\ff.c:1512: if (c == DDE || ((a & AM_VOL) && a != AM_LFN)) {	/* An entry without valid data */
	cjne	r1,#0xe5,00195$
	sjmp	00120$
00195$:
	mov	a,_dir_find_sloc6_1_0
	jnb	acc.3,00121$
	mov	a,#0x0f
	cjne	a,_dir_find_sloc6_1_0,00197$
	sjmp	00121$
00197$:
00120$:
;	FATFS\src\ff.c:1513: ord = 0xFF;
	mov	dptr,#_dir_find_ord_65536_100
	mov	a,#0xff
	movx	@dptr,a
	ljmp	00122$
00121$:
;	FATFS\src\ff.c:1515: if (a == AM_LFN) {			/* An LFN entry is found */
	mov	a,#0x0f
	cjne	a,_dir_find_sloc6_1_0,00198$
	sjmp	00199$
00198$:
	ljmp	00118$
00199$:
;	FATFS\src\ff.c:1516: if (dp->lfn) {
	mov	dpl,_dir_find_sloc3_1_0
	mov	dph,(_dir_find_sloc3_1_0 + 1)
	mov	b,(_dir_find_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r0
	orl	a,r1
	jnz	00200$
	ljmp	00122$
00200$:
;	FATFS\src\ff.c:1517: if (c & LLE) {		/* Is it start of LFN sequence? */
	mov	dptr,#_dir_find_c_65536_100
	movx	a,@dptr
	mov	r4,a
	jnb	acc.6,00108$
;	FATFS\src\ff.c:1518: sum = dir[LDIR_Chksum];
	mov	a,#0x0d
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	dptr,#_dir_find_sum_65536_100
	movx	@dptr,a
;	FATFS\src\ff.c:1519: c &= ~LLE; ord = c;	/* LFN start order */
	mov	dptr,#_dir_find_c_65536_100
	mov	a,#0xbf
	anl	a,r4
	movx	@dptr,a
	movx	a,@dptr
	mov	dptr,#_dir_find_ord_65536_100
	movx	@dptr,a
;	FATFS\src\ff.c:1520: dp->lfn_idx = dp->index;
	mov	a,#0x1c
	add	a,_dir_find_sloc2_1_0
	mov	r2,a
	clr	a
	addc	a,(_dir_find_sloc2_1_0 + 1)
	mov	r3,a
	mov	r4,(_dir_find_sloc2_1_0 + 2)
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x05
	add	a,_dir_find_sloc2_1_0
	mov	r0,a
	clr	a
	addc	a,(_dir_find_sloc2_1_0 + 1)
	mov	r1,a
	mov	r7,(_dir_find_sloc2_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	FATFS\src\ff.c:1538: return res;
	pop	ar7
	pop	ar6
	pop	ar5
;	FATFS\src\ff.c:1520: dp->lfn_idx = dp->index;
00108$:
;	FATFS\src\ff.c:1523: ord = (c == ord && sum == dir[LDIR_Chksum] && cmp_lfn(dp->lfn, dir)) ? ord - 1 : 0xFF;
	mov	dptr,#_dir_find_c_65536_100
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_dir_find_ord_65536_100
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	cjne	a,ar3,00130$
	mov	a,#0x0d
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar4,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#_dir_find_sum_65536_100
	movx	a,@dptr
	mov	r4,a
	cjne	a,ar1,00130$
	mov	dpl,_dir_find_sloc7_1_0
	mov	dph,(_dir_find_sloc7_1_0 + 1)
	mov	b,(_dir_find_sloc7_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_cmp_lfn_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r4
	push	ar3
	mov	r0,#_cmp_lfn
	mov	r1,#(_cmp_lfn >> 8)
	mov	r2,#(_cmp_lfn >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	pop	ar3
	orl	a,b
	jz	00130$
	dec	r3
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	sjmp	00131$
00130$:
	mov	r3,#0xff
	mov	r4,#0x00
00131$:
	mov	dptr,#_dir_find_ord_65536_100
	mov	a,r3
	movx	@dptr,a
	ljmp	00122$
00118$:
;	FATFS\src\ff.c:1526: if (!ord && sum == sum_sfn(dir)) break;	/* LFN matched? */
	mov	dptr,#_dir_find_ord_65536_100
	movx	a,@dptr
	jnz	00112$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_sum_sfn
	mov	r1,#(_sum_sfn >> 8)
	mov	r2,#(_sum_sfn >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_dir_find_sum_65536_100
	movx	a,@dptr
	mov	r3,a
	cjne	a,ar4,00208$
	ljmp	00127$
00208$:
00112$:
;	FATFS\src\ff.c:1527: ord = 0xFF; dp->lfn_idx = 0xFFFF;	/* Reset LFN sequence */
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_dir_find_ord_65536_100
	mov	a,#0xff
	movx	@dptr,a
	mov	a,#0x1c
	add	a,_dir_find_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_dir_find_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_dir_find_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0xff
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\ff.c:1528: if (!(dp->fn[NS] & NS_LOSS) && !mem_cmp(dir, dp->fn, 11)) break;	/* SFN matched? */
	mov	dpl,_dir_find_sloc1_1_0
	mov	dph,(_dir_find_sloc1_1_0 + 1)
	mov	b,(_dir_find_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x0b
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	pop	ar7
	pop	ar6
	pop	ar5
	jb	acc.0,00122$
	mov	dptr,#_mem_cmp_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mem_cmp_PARM_3
	mov	a,#0x0b
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_mem_cmp
	mov	r1,#(_mem_cmp >> 8)
	mov	r2,#(_mem_cmp >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00127$
00122$:
;	FATFS\src\ff.c:1535: res = dir_next(dp, 0);		/* Next entry */
	mov	dptr,#_dir_find_dp_65536_99
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dir_next_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_dir_next
	mov	r1,#(_dir_next >> 8)
	mov	r2,#(_dir_next >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	dptr,#_dir_find_res_65536_100
	mov	a,r7
	movx	@dptr,a
;	FATFS\src\ff.c:1536: } while (res == FR_OK);
	mov	a,r7
	jnz	00211$
	ljmp	00125$
00211$:
00127$:
;	FATFS\src\ff.c:1538: return res;
	mov	dptr,#_dir_find_res_65536_100
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
;	FATFS\src\ff.c:1539: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dir_read'
;------------------------------------------------------------
;sloc0                     Allocated with name '_dir_read_sloc0_1_0'
;sloc1                     Allocated with name '_dir_read_sloc1_1_0'
;sloc2                     Allocated with name '_dir_read_sloc2_1_0'
;sloc3                     Allocated with name '_dir_read_sloc3_1_0'
;sloc4                     Allocated with name '_dir_read_sloc4_1_0'
;vol                       Allocated with name '_dir_read_PARM_2'
;dp                        Allocated with name '_dir_read_dp_65536_109'
;res                       Allocated with name '_dir_read_res_65536_110'
;a                         Allocated with name '_dir_read_a_65536_110'
;c                         Allocated with name '_dir_read_c_65536_110'
;dir                       Allocated with name '_dir_read_dir_65536_110'
;ord                       Allocated with name '_dir_read_ord_65536_110'
;sum                       Allocated with name '_dir_read_sum_65536_110'
;------------------------------------------------------------
;	FATFS\src\ff.c:1549: FRESULT dir_read (
;	-----------------------------------------
;	 function dir_read
;	-----------------------------------------
_dir_read:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_dir_read_dp_65536_109
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1557: BYTE ord = 0xFF, sum = 0xFF;
	mov	dptr,#_dir_read_ord_65536_110
	mov	a,#0xff
	movx	@dptr,a
	mov	dptr,#_dir_read_sum_65536_110
	movx	@dptr,a
;	FATFS\src\ff.c:1560: res = FR_NO_FILE;
	mov	dptr,#_dir_read_res_65536_110
	mov	a,#0x04
	movx	@dptr,a
;	FATFS\src\ff.c:1561: while (dp->sect) {
	mov	dptr,#_dir_read_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dir_read_dp_65536_109
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x19
	add	a,r3
	mov	_dir_read_sloc2_1_0,a
	clr	a
	addc	a,r4
	mov	(_dir_read_sloc2_1_0 + 1),a
	mov	(_dir_read_sloc2_1_0 + 2),r5
	mov	_dir_read_sloc0_1_0,r3
	mov	(_dir_read_sloc0_1_0 + 1),r4
	mov	(_dir_read_sloc0_1_0 + 2),r5
	mov	a,#0x0f
	add	a,r3
	mov	_dir_read_sloc3_1_0,a
	clr	a
	addc	a,r4
	mov	(_dir_read_sloc3_1_0 + 1),a
	mov	(_dir_read_sloc3_1_0 + 2),r5
00121$:
	mov	dpl,_dir_read_sloc3_1_0
	mov	dph,(_dir_read_sloc3_1_0 + 1)
	mov	b,(_dir_read_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	_dir_read_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_read_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_read_sloc1_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_read_sloc1_1_0 + 3),a
	mov	a,_dir_read_sloc1_1_0
	orl	a,(_dir_read_sloc1_1_0 + 1)
	orl	a,(_dir_read_sloc1_1_0 + 2)
	orl	a,(_dir_read_sloc1_1_0 + 3)
	jnz	00186$
	ljmp	00123$
00186$:
;	FATFS\src\ff.c:1562: res = move_window(dp->fs, dp->sect);
	push	ar6
	push	ar7
	mov	dpl,_dir_read_sloc0_1_0
	mov	dph,(_dir_read_sloc0_1_0 + 1)
	mov	b,(_dir_read_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_move_window_PARM_2
	mov	a,_dir_read_sloc1_1_0
	movx	@dptr,a
	mov	a,(_dir_read_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_read_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_read_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	push	ar6
	mov	r0,#_move_window
	mov	r1,#(_move_window >> 8)
	mov	r2,#(_move_window >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	pop	ar6
	mov	dptr,#_dir_read_res_65536_110
	mov	a,r7
	movx	@dptr,a
;	FATFS\src\ff.c:1563: if (res != FR_OK) break;
	mov	a,r7
	pop	ar7
	pop	ar6
	jz	00187$
	ljmp	00123$
00187$:
;	FATFS\src\ff.c:1564: dir = dp->dir;					/* Ptr to the directory entry of current index */
	mov	a,#0x13
	add	a,_dir_read_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_dir_read_sloc0_1_0 + 1)
	mov	r1,a
	mov	r2,(_dir_read_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
;	FATFS\src\ff.c:1565: c = dir[DIR_Name];
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_dir_read_sloc1_1_0,a
	mov	dptr,#_dir_read_c_65536_110
	movx	@dptr,a
;	FATFS\src\ff.c:1566: if (c == 0) { res = FR_NO_FILE; break; }	/* Reached to end of table */
	mov	a,_dir_read_sloc1_1_0
	jnz	00104$
	mov	dptr,#_dir_read_res_65536_110
	mov	a,#0x04
	movx	@dptr,a
	ljmp	00123$
00104$:
;	FATFS\src\ff.c:1567: a = dir[DIR_Attr] & AM_MASK;
	push	ar6
	push	ar7
	mov	a,#0x0b
	add	a,r0
	mov	r5,a
	clr	a
	addc	a,r1
	mov	r6,a
	mov	ar7,r2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,#0x3f
	anl	a,r5
	mov	_dir_read_sloc4_1_0,a
;	FATFS\src\ff.c:1569: if (c == DDE || (!_FS_RPATH && c == '.') || (int)(a == AM_VOL) != vol) {	/* An entry without valid data */
	mov	a,#0xe5
	cjne	a,_dir_read_sloc1_1_0,00189$
	pop	ar7
	pop	ar6
	sjmp	00113$
00189$:
	pop	ar7
	pop	ar6
	mov	a,#0x2e
	cjne	a,_dir_read_sloc1_1_0,00190$
	sjmp	00113$
00190$:
	mov	a,#0x08
	cjne	a,_dir_read_sloc4_1_0,00191$
	mov	a,#0x01
	sjmp	00192$
00191$:
	clr	a
00192$:
	mov	r5,a
	mov	r4,#0x00
	cjne	a,ar6,00193$
	mov	a,r4
	cjne	a,ar7,00193$
	sjmp	00114$
00193$:
00113$:
;	FATFS\src\ff.c:1570: ord = 0xFF;
	mov	dptr,#_dir_read_ord_65536_110
	mov	a,#0xff
	movx	@dptr,a
	ljmp	00115$
00114$:
;	FATFS\src\ff.c:1572: if (a == AM_LFN) {			/* An LFN entry is found */
	mov	a,#0x0f
	cjne	a,_dir_read_sloc4_1_0,00194$
	sjmp	00195$
00194$:
	ljmp	00111$
00195$:
;	FATFS\src\ff.c:1573: if (c & LLE) {			/* Is it start of LFN sequence? */
	mov	a,_dir_read_sloc1_1_0
	jnb	acc.6,00106$
;	FATFS\src\ff.c:1574: sum = dir[LDIR_Chksum];
	push	ar6
	push	ar7
	mov	a,#0x0d
	add	a,r0
	mov	r3,a
	clr	a
	addc	a,r1
	mov	r4,a
	mov	ar5,r2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_dir_read_sum_65536_110
	movx	@dptr,a
;	FATFS\src\ff.c:1575: c &= ~LLE; ord = c;
	mov	a,#0xbf
	anl	a,_dir_read_sloc1_1_0
	mov	r5,a
	mov	dptr,#_dir_read_c_65536_110
	movx	@dptr,a
	mov	dptr,#_dir_read_ord_65536_110
	mov	a,r5
	movx	@dptr,a
;	FATFS\src\ff.c:1576: dp->lfn_idx = dp->index;
	mov	a,#0x1c
	add	a,_dir_read_sloc0_1_0
	mov	_dir_read_sloc1_1_0,a
	clr	a
	addc	a,(_dir_read_sloc0_1_0 + 1)
	mov	(_dir_read_sloc1_1_0 + 1),a
	mov	(_dir_read_sloc1_1_0 + 2),(_dir_read_sloc0_1_0 + 2)
	mov	a,#0x05
	add	a,_dir_read_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_dir_read_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_dir_read_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dpl,_dir_read_sloc1_1_0
	mov	dph,(_dir_read_sloc1_1_0 + 1)
	mov	b,(_dir_read_sloc1_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	FATFS\src\ff.c:1596: return res;
	pop	ar7
	pop	ar6
;	FATFS\src\ff.c:1576: dp->lfn_idx = dp->index;
00106$:
;	FATFS\src\ff.c:1579: ord = (c == ord && sum == dir[LDIR_Chksum] && pick_lfn(dp->lfn, dir)) ? ord - 1 : 0xFF;
	mov	dptr,#_dir_read_c_65536_110
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_dir_read_ord_65536_110
	movx	a,@dptr
	mov	r4,a
	mov	a,r5
	cjne	a,ar4,00197$
	sjmp	00198$
00197$:
	ljmp	00128$
00198$:
	push	ar6
	push	ar7
	mov	a,#0x0d
	add	a,r0
	mov	r3,a
	clr	a
	addc	a,r1
	mov	r5,a
	mov	ar7,r2
	mov	dpl,r3
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_dir_read_sum_65536_110
	movx	a,@dptr
	mov	r7,a
	cjne	a,ar3,00199$
	sjmp	00200$
00199$:
	pop	ar7
	pop	ar6
	sjmp	00128$
00200$:
	pop	ar7
	pop	ar6
	push	ar6
	push	ar7
	mov	dpl,_dir_read_sloc2_1_0
	mov	dph,(_dir_read_sloc2_1_0 + 1)
	mov	b,(_dir_read_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_pick_lfn_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r5
	mov	b,r7
	push	ar7
	push	ar6
	push	ar4
	mov	r0,#_pick_lfn
	mov	r1,#(_pick_lfn >> 8)
	mov	r2,#(_pick_lfn >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	pop	ar4
	pop	ar6
	pop	ar7
	pop	ar7
	pop	ar6
	orl	a,b
	jz	00128$
	dec	r4
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r5,a
	sjmp	00129$
00128$:
	mov	r4,#0xff
	mov	r5,#0x00
00129$:
	mov	dptr,#_dir_read_ord_65536_110
	mov	a,r4
	movx	@dptr,a
	sjmp	00115$
00111$:
;	FATFS\src\ff.c:1581: if (ord || sum != sum_sfn(dir))	/* Is there a valid LFN? */
	mov	dptr,#_dir_read_ord_65536_110
	movx	a,@dptr
	jnz	00107$
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	r0,#_sum_sfn
	mov	r1,#(_sum_sfn >> 8)
	mov	r2,#(_sum_sfn >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	dptr,#_dir_read_sum_65536_110
	movx	a,@dptr
	mov	r4,a
	cjne	a,ar5,00203$
	sjmp	00123$
00203$:
00107$:
;	FATFS\src\ff.c:1582: dp->lfn_idx = 0xFFFF;		/* It has no LFN. */
	mov	dptr,#_dir_read_dp_65536_109
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x1c
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0xff
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\ff.c:1583: break;
	sjmp	00123$
00115$:
;	FATFS\src\ff.c:1590: res = dir_next(dp, 0);				/* Next entry */
	mov	dptr,#_dir_read_dp_65536_109
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_dir_next_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	push	ar6
	mov	r0,#_dir_next
	mov	r1,#(_dir_next >> 8)
	mov	r2,#(_dir_next >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	dptr,#_dir_read_res_65536_110
	mov	a,r5
	movx	@dptr,a
;	FATFS\src\ff.c:1591: if (res != FR_OK) break;
	mov	a,r5
	jnz	00204$
	ljmp	00121$
00204$:
00123$:
;	FATFS\src\ff.c:1594: if (res != FR_OK) dp->sect = 0;
	mov	dptr,#_dir_read_res_65536_110
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00125$
	mov	dptr,#_dir_read_dp_65536_109
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x0f
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00125$:
;	FATFS\src\ff.c:1596: return res;
	mov	dpl,r7
;	FATFS\src\ff.c:1597: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_fileinfo'
;------------------------------------------------------------
;sloc0                     Allocated with name '_get_fileinfo_sloc0_1_0'
;sloc1                     Allocated with name '_get_fileinfo_sloc1_1_0'
;sloc2                     Allocated with name '_get_fileinfo_sloc2_1_0'
;sloc3                     Allocated with name '_get_fileinfo_sloc3_1_0'
;fno                       Allocated with name '_get_fileinfo_PARM_2'
;dp                        Allocated with name '_get_fileinfo_dp_65536_118'
;i                         Allocated with name '_get_fileinfo_i_65536_119'
;p                         Allocated with name '_get_fileinfo_p_65536_119'
;c                         Allocated with name '_get_fileinfo_c_65536_119'
;dir                       Allocated with name '_get_fileinfo_dir_131072_120'
;w                         Allocated with name '_get_fileinfo_w_131072_122'
;lfn                       Allocated with name '_get_fileinfo_lfn_131072_122'
;------------------------------------------------------------
;	FATFS\src\ff.c:1733: void get_fileinfo (		/* No return code */
;	-----------------------------------------
;	 function get_fileinfo
;	-----------------------------------------
_get_fileinfo:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_get_fileinfo_dp_65536_118
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1742: p = fno->fname;
	mov	dptr,#_get_fileinfo_PARM_2
	movx	a,@dptr
	mov	_get_fileinfo_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_get_fileinfo_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_get_fileinfo_sloc2_1_0 + 2),a
	mov	dptr,#_get_fileinfo_p_65536_119
	mov	a,#0x09
	add	a,_get_fileinfo_sloc2_1_0
	movx	@dptr,a
	clr	a
	addc	a,(_get_fileinfo_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_get_fileinfo_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1743: if (dp->sect) {		/* Get SFN */
	mov	dptr,#_get_fileinfo_dp_65536_118
	movx	a,@dptr
	mov	_get_fileinfo_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_get_fileinfo_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_get_fileinfo_sloc0_1_0 + 2),a
	mov	a,#0x0f
	add	a,_get_fileinfo_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_get_fileinfo_sloc0_1_0 + 1)
	mov	r1,a
	mov	r4,(_get_fileinfo_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,r0
	orl	a,r1
	orl	a,r4
	orl	a,r3
	jnz	00203$
	ljmp	00115$
00203$:
;	FATFS\src\ff.c:1744: BYTE *dir = dp->dir;
	mov	a,#0x13
	add	a,_get_fileinfo_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_get_fileinfo_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_get_fileinfo_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	FATFS\src\ff.c:1747: while (i < 11) {		/* Copy name body and extension */
	mov	a,#0x0c
	add	a,r2
	mov	_get_fileinfo_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_get_fileinfo_sloc0_1_0 + 1),a
	mov	(_get_fileinfo_sloc0_1_0 + 2),r4
	mov	r0,#0x00
	mov	r1,#0x00
00111$:
	clr	c
	mov	a,r0
	subb	a,#0x0b
	mov	a,r1
	subb	a,#0x00
	jc	00204$
	ljmp	00113$
00204$:
;	FATFS\src\ff.c:1748: c = (TCHAR)dir[i++];
	mov	ar6,r0
	mov	ar7,r1
	inc	r0
	cjne	r0,#0x00,00205$
	inc	r1
00205$:
	mov	a,r6
	add	a,r2
	mov	r6,a
	mov	a,r7
	addc	a,r3
	mov	r7,a
	mov	ar5,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	_get_fileinfo_sloc1_1_0,a
	mov	dptr,#_get_fileinfo_c_65536_119
	movx	@dptr,a
;	FATFS\src\ff.c:1749: if (c == ' ') continue;			/* Skip padding spaces */
	mov	a,#0x20
	cjne	a,_get_fileinfo_sloc1_1_0,00206$
	sjmp	00111$
00206$:
;	FATFS\src\ff.c:1750: if (c == NDDE) c = (TCHAR)DDE;	/* Restore replaced DDE character */
	mov	a,#0x05
	cjne	a,_get_fileinfo_sloc1_1_0,00104$
	mov	dptr,#_get_fileinfo_c_65536_119
	mov	a,#0xe5
	movx	@dptr,a
00104$:
;	FATFS\src\ff.c:1751: if (i == 9) *p++ = '.';			/* Insert a . if extension is exist */
	cjne	r0,#0x09,00106$
	cjne	r1,#0x00,00106$
	mov	dptr,#_get_fileinfo_p_65536_119
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x2e
	lcall	__gptrput
	mov	dptr,#_get_fileinfo_p_65536_119
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00106$:
;	FATFS\src\ff.c:1753: if (IsUpper(c) && (dir[DIR_NTres] & (i >= 9 ? NS_EXT : NS_BODY)))
	mov	dptr,#_get_fileinfo_c_65536_119
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x41,00211$
00211$:
	jc	00108$
	mov	a,r7
	add	a,#0xff - 0x5a
	jc	00108$
	mov	dpl,_get_fileinfo_sloc0_1_0
	mov	dph,(_get_fileinfo_sloc0_1_0 + 1)
	mov	b,(_get_fileinfo_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	jnb	acc.3,00108$
;	FATFS\src\ff.c:1754: c += 0x20;			/* To lower */
	mov	dptr,#_get_fileinfo_c_65536_119
	mov	a,#0x20
	add	a,r7
	movx	@dptr,a
00108$:
;	FATFS\src\ff.c:1762: *p++ = c;
	push	ar0
	push	ar1
	mov	dptr,#_get_fileinfo_p_65536_119
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_fileinfo_c_65536_119
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	dptr,#_get_fileinfo_p_65536_119
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	pop	ar1
	pop	ar0
	ljmp	00111$
00113$:
;	FATFS\src\ff.c:1764: fno->fattrib = dir[DIR_Attr];				/* Attribute */
	mov	a,#0x08
	add	a,_get_fileinfo_sloc2_1_0
	mov	_get_fileinfo_sloc0_1_0,a
	clr	a
	addc	a,(_get_fileinfo_sloc2_1_0 + 1)
	mov	(_get_fileinfo_sloc0_1_0 + 1),a
	mov	(_get_fileinfo_sloc0_1_0 + 2),(_get_fileinfo_sloc2_1_0 + 2)
	mov	a,#0x0b
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	dpl,_get_fileinfo_sloc0_1_0
	mov	dph,(_get_fileinfo_sloc0_1_0 + 1)
	mov	b,(_get_fileinfo_sloc0_1_0 + 2)
	lcall	__gptrput
;	FATFS\src\ff.c:1765: fno->fsize = LD_DWORD(dir+DIR_FileSize);	/* Size */
	mov	a,#0x1f
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	mov	r7,#0x00
	mov	(_get_fileinfo_sloc3_1_0 + 3),r1
;	1-genFromRTrack replaced	mov	_get_fileinfo_sloc3_1_0,#0x00
	mov	_get_fileinfo_sloc3_1_0,r7
;	1-genFromRTrack replaced	mov	(_get_fileinfo_sloc3_1_0 + 1),#0x00
	mov	(_get_fileinfo_sloc3_1_0 + 1),r7
;	1-genFromRTrack replaced	mov	(_get_fileinfo_sloc3_1_0 + 2),#0x00
	mov	(_get_fileinfo_sloc3_1_0 + 2),r7
	mov	a,#0x1e
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	r7,#0x00
	mov	ar5,r7
	mov	ar6,r0
	clr	a
	mov	r7,a
	orl	_get_fileinfo_sloc3_1_0,a
	mov	a,r7
	orl	(_get_fileinfo_sloc3_1_0 + 1),a
	mov	a,r6
	orl	(_get_fileinfo_sloc3_1_0 + 2),a
	mov	a,r5
	orl	(_get_fileinfo_sloc3_1_0 + 3),a
	mov	a,#0x1d
	add	a,r2
	mov	r1,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r1
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	clr	a
	mov	r1,a
	mov	r6,a
	mov	r5,a
	mov	a,r1
	orl	_get_fileinfo_sloc3_1_0,a
	mov	a,r7
	orl	(_get_fileinfo_sloc3_1_0 + 1),a
	mov	a,r6
	orl	(_get_fileinfo_sloc3_1_0 + 2),a
	mov	a,r5
	orl	(_get_fileinfo_sloc3_1_0 + 3),a
	mov	a,#0x1c
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	clr	a
	mov	r6,a
	mov	r7,a
	mov	r5,a
	mov	a,_get_fileinfo_sloc3_1_0
	orl	ar0,a
	mov	a,(_get_fileinfo_sloc3_1_0 + 1)
	orl	ar6,a
	mov	a,(_get_fileinfo_sloc3_1_0 + 2)
	orl	ar7,a
	mov	a,(_get_fileinfo_sloc3_1_0 + 3)
	orl	ar5,a
	mov	dpl,_get_fileinfo_sloc2_1_0
	mov	dph,(_get_fileinfo_sloc2_1_0 + 1)
	mov	b,(_get_fileinfo_sloc2_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	FATFS\src\ff.c:1766: fno->fdate = LD_WORD(dir+DIR_WrtDate);		/* Date */
	mov	a,#0x04
	add	a,_get_fileinfo_sloc2_1_0
	mov	_get_fileinfo_sloc3_1_0,a
	clr	a
	addc	a,(_get_fileinfo_sloc2_1_0 + 1)
	mov	(_get_fileinfo_sloc3_1_0 + 1),a
	mov	(_get_fileinfo_sloc3_1_0 + 2),(_get_fileinfo_sloc2_1_0 + 2)
	mov	a,#0x19
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r0,#0x00
	mov	a,#0x18
	add	a,r2
	mov	r1,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	ar6,r4
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r6,#0x00
	orl	ar0,a
	mov	a,r6
	orl	ar7,a
	mov	dpl,_get_fileinfo_sloc3_1_0
	mov	dph,(_get_fileinfo_sloc3_1_0 + 1)
	mov	b,(_get_fileinfo_sloc3_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	FATFS\src\ff.c:1767: fno->ftime = LD_WORD(dir+DIR_WrtTime);		/* Time */
	mov	a,#0x06
	add	a,_get_fileinfo_sloc2_1_0
	mov	_get_fileinfo_sloc3_1_0,a
	clr	a
	addc	a,(_get_fileinfo_sloc2_1_0 + 1)
	mov	(_get_fileinfo_sloc3_1_0 + 1),a
	mov	(_get_fileinfo_sloc3_1_0 + 2),(_get_fileinfo_sloc2_1_0 + 2)
	mov	a,#0x17
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r0,#0x00
	mov	a,#0x16
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r6,#0x00
	orl	ar0,a
	mov	a,r6
	orl	ar7,a
	mov	dpl,_get_fileinfo_sloc3_1_0
	mov	dph,(_get_fileinfo_sloc3_1_0 + 1)
	mov	b,(_get_fileinfo_sloc3_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00115$:
;	FATFS\src\ff.c:1769: *p = 0;		/* Terminate SFN string by a \0 */
	mov	dptr,#_get_fileinfo_p_65536_119
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	FATFS\src\ff.c:1772: if (fno->lfname) {
	mov	a,#0x16
	add	a,_get_fileinfo_sloc2_1_0
	mov	r5,a
	clr	a
	addc	a,(_get_fileinfo_sloc2_1_0 + 1)
	mov	r6,a
	mov	r7,(_get_fileinfo_sloc2_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00215$
	ljmp	__sdcc_banked_ret
00215$:
;	FATFS\src\ff.c:1775: i = 0; p = fno->lfname;
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_get_fileinfo_i_65536_119
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1776: if (dp->sect && fno->lfsize && dp->lfn_idx != 0xFFFF) {	/* Get LFN if available */
	mov	dptr,#_get_fileinfo_dp_65536_118
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x0f
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r0
	orl	a,r1
	orl	a,r7
	orl	a,r6
	pop	ar7
	pop	ar6
	pop	ar5
	jnz	00216$
	ljmp	00127$
00216$:
	mov	a,#0x19
	add	a,_get_fileinfo_sloc2_1_0
	mov	_get_fileinfo_sloc3_1_0,a
	clr	a
	addc	a,(_get_fileinfo_sloc2_1_0 + 1)
	mov	(_get_fileinfo_sloc3_1_0 + 1),a
	mov	(_get_fileinfo_sloc3_1_0 + 2),(_get_fileinfo_sloc2_1_0 + 2)
	mov	dpl,_get_fileinfo_sloc3_1_0
	mov	dph,(_get_fileinfo_sloc3_1_0 + 1)
	mov	b,(_get_fileinfo_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	orl	a,r0
	jnz	00217$
	ljmp	00127$
00217$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x1c
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	cjne	r0,#0xff,00218$
	cjne	r1,#0xff,00218$
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00127$
00218$:
	pop	ar7
	pop	ar6
	pop	ar5
;	FATFS\src\ff.c:1777: lfn = dp->lfn;
	mov	a,#0x19
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	FATFS\src\ff.c:1778: while ((w = *lfn++) != 0) {		/* Get an LFN character */
	mov	r0,#0x00
	mov	r1,#0x00
00123$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_get_fileinfo_sloc2_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fileinfo_sloc2_1_0 + 1),a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	a,_get_fileinfo_sloc2_1_0
	orl	a,(_get_fileinfo_sloc2_1_0 + 1)
	jnz	00219$
	ljmp	00127$
00219$:
;	FATFS\src\ff.c:1780: w = ff_convert(w, 0);		/* Unicode -> OEM */
	mov	dptr,#_ff_convert_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_get_fileinfo_sloc2_1_0
	mov	dph,(_get_fileinfo_sloc2_1_0 + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	mov	r0,#_ff_convert
	mov	r1,#(_ff_convert >> 8)
	mov	r2,#(_ff_convert >> 16)
	lcall	__sdcc_banked_call
	mov	_get_fileinfo_sloc2_1_0,dpl
	mov	(_get_fileinfo_sloc2_1_0 + 1),dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	FATFS\src\ff.c:1781: if (!w) { i = 0; break; }	/* No LFN if it could not be converted */
	mov	a,_get_fileinfo_sloc2_1_0
	orl	a,(_get_fileinfo_sloc2_1_0 + 1)
	jnz	00119$
	mov	dptr,#_get_fileinfo_i_65536_119
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1783: p[i++] = (TCHAR)(w >> 8);
	sjmp	00127$
00119$:
;	FATFS\src\ff.c:1785: if (i >= fno->lfsize - 1) { i = 0; break; }	/* No LFN if buffer overflow */
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_get_fileinfo_sloc3_1_0
	mov	dph,(_get_fileinfo_sloc3_1_0 + 1)
	mov	b,(_get_fileinfo_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	dec	r6
	cjne	r6,#0xff,00221$
	dec	r7
00221$:
	clr	c
	mov	a,r0
	subb	a,r6
	mov	a,r1
	subb	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00122$
	mov	dptr,#_get_fileinfo_i_65536_119
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00127$
00122$:
;	FATFS\src\ff.c:1786: p[i++] = (TCHAR)w;
	push	ar2
	push	ar3
	push	ar4
	mov	ar3,r0
	mov	ar4,r1
	inc	r0
	cjne	r0,#0x00,00223$
	inc	r1
00223$:
	mov	dptr,#_get_fileinfo_i_65536_119
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	add	a,r5
	mov	_get_fileinfo_sloc0_1_0,a
	mov	a,r4
	addc	a,r6
	mov	(_get_fileinfo_sloc0_1_0 + 1),a
	mov	(_get_fileinfo_sloc0_1_0 + 2),r7
	mov	r4,_get_fileinfo_sloc2_1_0
	mov	dpl,_get_fileinfo_sloc0_1_0
	mov	dph,(_get_fileinfo_sloc0_1_0 + 1)
	mov	b,(_get_fileinfo_sloc0_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00123$
00127$:
;	FATFS\src\ff.c:1789: p[i] = 0;	/* Terminate LFN string by a \0 */
	mov	dptr,#_get_fileinfo_i_65536_119
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	FATFS\src\ff.c:1792: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'create_name'
;------------------------------------------------------------
;sloc0                     Allocated with name '_create_name_sloc0_1_0'
;sloc1                     Allocated with name '_create_name_sloc1_1_0'
;sloc2                     Allocated with name '_create_name_sloc2_1_0'
;sloc3                     Allocated with name '_create_name_sloc3_1_0'
;path                      Allocated with name '_create_name_PARM_2'
;dp                        Allocated with name '_create_name_dp_65536_127'
;b                         Allocated with name '_create_name_b_65536_128'
;cf                        Allocated with name '_create_name_cf_65536_128'
;w                         Allocated with name '_create_name_w_65536_128'
;lfn                       Allocated with name '_create_name_lfn_65536_128'
;i                         Allocated with name '_create_name_i_65536_128'
;ni                        Allocated with name '_create_name_ni_65536_128'
;si                        Allocated with name '_create_name_si_65536_128'
;di                        Allocated with name '_create_name_di_65536_128'
;p                         Allocated with name '_create_name_p_65536_128'
;------------------------------------------------------------
;	FATFS\src\ff.c:1803: FRESULT create_name (
;	-----------------------------------------
;	 function create_name
;	-----------------------------------------
_create_name:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_create_name_dp_65536_127
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1815: for (p = *path; *p == '/' || *p == '\\'; p++) ;	/* Strip duplicated separator */
	mov	dptr,#_create_name_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
00186$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x2f,00371$
	sjmp	00187$
00371$:
	cjne	r1,#0x5c,00241$
00187$:
	inc	r2
	cjne	r2,#0x00,00186$
	inc	r3
	sjmp	00186$
00241$:
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_create_name_p_65536_128
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1816: lfn = dp->lfn;
	mov	dptr,#_create_name_dp_65536_127
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x19
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	_create_name_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_create_name_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_create_name_sloc0_1_0 + 2),a
;	FATFS\src\ff.c:1817: si = di = 0;
	mov	dptr,#_create_name_di_65536_128
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	_create_name_sloc1_1_0,r2
	mov	(_create_name_sloc1_1_0 + 1),r3
	mov	(_create_name_sloc1_1_0 + 2),r4
	mov	_create_name_sloc2_1_0,a
	mov	(_create_name_sloc2_1_0 + 1),a
	mov	_create_name_sloc3_1_0,a
	mov	(_create_name_sloc3_1_0 + 1),a
;	FATFS\src\ff.c:1926: return FR_OK;
	pop	ar7
	pop	ar6
	pop	ar5
;	FATFS\src\ff.c:1817: si = di = 0;
00188$:
;	FATFS\src\ff.c:1819: w = p[si++];					/* Get a character */
	mov	r3,_create_name_sloc3_1_0
	mov	r4,(_create_name_sloc3_1_0 + 1)
	inc	_create_name_sloc3_1_0
	clr	a
	cjne	a,_create_name_sloc3_1_0,00375$
	inc	(_create_name_sloc3_1_0 + 1)
00375$:
	mov	a,r3
	add	a,_create_name_sloc1_1_0
	mov	r3,a
	mov	a,r4
	addc	a,(_create_name_sloc1_1_0 + 1)
	mov	r4,a
	mov	r2,(_create_name_sloc1_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	r3,a
	mov	r4,#0x00
;	FATFS\src\ff.c:1820: if (w < ' ' || w == '/' || w == '\\') break;	/* Break on end of segment */
	clr	c
	mov	a,r3
	subb	a,#0x20
	mov	a,r4
	subb	a,#0x00
	clr	a
	rlc	a
	mov	r2,a
	jz	00376$
	ljmp	00117$
00376$:
	cjne	r3,#0x2f,00377$
	cjne	r4,#0x00,00377$
	ljmp	00117$
00377$:
	cjne	r3,#0x5c,00378$
	cjne	r4,#0x00,00378$
	ljmp	00117$
00378$:
;	FATFS\src\ff.c:1821: if (di >= _MAX_LFN)				/* Reject too long name */
	clr	c
	mov	a,_create_name_sloc2_1_0
	subb	a,#0xff
	mov	a,(_create_name_sloc2_1_0 + 1)
	subb	a,#0x00
	jc	00107$
;	FATFS\src\ff.c:1822: return FR_INVALID_NAME;
	mov	dpl,#0x06
	ljmp	__sdcc_banked_ret
00107$:
;	FATFS\src\ff.c:1824: w &= 0xFF;
	mov	r4,#0x00
;	FATFS\src\ff.c:1831: w = ff_convert(w, 1);			/* Convert ANSI/OEM to Unicode */
	mov	dptr,#_ff_convert_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_ff_convert
	mov	r1,#(_ff_convert >> 8)
	mov	r2,#(_ff_convert >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	FATFS\src\ff.c:1832: if (!w) return FR_INVALID_NAME;	/* Reject invalid code */
	mov	a,r3
	orl	a,r4
	jnz	00113$
	mov	dpl,#0x06
	ljmp	__sdcc_banked_ret
00113$:
;	FATFS\src\ff.c:1834: if (w < 0x80 && chk_chr("\"*:<>\?|\x7F", w)) /* Reject illegal characters for LFN */
	clr	c
	mov	a,r3
	subb	a,#0x80
	mov	a,r4
	subb	a,#0x00
	jnc	00115$
	mov	dptr,#_chk_chr_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	r0,#_chk_chr
	mov	r1,#(_chk_chr >> 8)
	mov	r2,#(_chk_chr >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00115$
;	FATFS\src\ff.c:1835: return FR_INVALID_NAME;
	mov	dpl,#0x06
	ljmp	__sdcc_banked_ret
00115$:
;	FATFS\src\ff.c:1836: lfn[di++] = w;					/* Store the Unicode character */
	push	ar5
	push	ar6
	push	ar7
	mov	r0,_create_name_sloc2_1_0
	mov	r1,(_create_name_sloc2_1_0 + 1)
	inc	_create_name_sloc2_1_0
	clr	a
	cjne	a,_create_name_sloc2_1_0,00383$
	inc	(_create_name_sloc2_1_0 + 1)
00383$:
	mov	dptr,#_create_name_di_65536_128
	mov	a,_create_name_sloc2_1_0
	movx	@dptr,a
	mov	a,(_create_name_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
	mov	a,r0
	add	a,_create_name_sloc0_1_0
	mov	r0,a
	mov	a,r1
	addc	a,(_create_name_sloc0_1_0 + 1)
	mov	r1,a
	mov	r7,(_create_name_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00188$
00117$:
;	FATFS\src\ff.c:1838: *path = &p[si];						/* Return pointer to the next segment */
	mov	dptr,#_create_name_p_65536_128
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_create_name_sloc3_1_0
	add	a,r1
	mov	r1,a
	mov	a,(_create_name_sloc3_1_0 + 1)
	addc	a,r3
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	FATFS\src\ff.c:1839: cf = (w < ' ') ? NS_LAST : 0;		/* Set last segment flag if end of path */
	mov	a,r2
	jz	00197$
	mov	r6,#0x04
	mov	r7,#0x00
	sjmp	00198$
00197$:
	mov	r6,#0x00
	mov	r7,#0x00
00198$:
	mov	dptr,#_create_name_cf_65536_128
	mov	a,r6
	movx	@dptr,a
;	FATFS\src\ff.c:1850: while (di) {						/* Strip trailing spaces and dots */
	mov	dptr,#_create_name_di_65536_128
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00121$:
	mov	a,r5
	orl	a,r7
	jz	00242$
;	FATFS\src\ff.c:1851: w = lfn[di-1];
	mov	a,r5
	add	a,#0xff
	mov	r3,a
	mov	a,r7
	addc	a,#0xff
	mov	r4,a
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r3
	add	a,_create_name_sloc0_1_0
	mov	r3,a
	mov	a,r4
	addc	a,(_create_name_sloc0_1_0 + 1)
	mov	r4,a
	mov	r2,(_create_name_sloc0_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	FATFS\src\ff.c:1852: if (w != ' ' && w != '.') break;
	cjne	r3,#0x20,00386$
	cjne	r4,#0x00,00386$
	sjmp	00119$
00386$:
	cjne	r3,#0x2e,00242$
	cjne	r4,#0x00,00242$
00119$:
;	FATFS\src\ff.c:1853: di--;
	dec	r5
	cjne	r5,#0xff,00389$
	dec	r7
00389$:
	sjmp	00121$
00242$:
	mov	dptr,#_create_name_di_65536_128
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1855: if (!di) return FR_INVALID_NAME;	/* Reject nul string */
	mov	a,r5
	orl	a,r7
	jnz	00125$
	mov	dpl,#0x06
	ljmp	__sdcc_banked_ret
00125$:
;	FATFS\src\ff.c:1857: lfn[di] = 0;						/* LFN is created */
	mov	a,r5
	add	a,r5
	mov	r5,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r5
	add	a,_create_name_sloc0_1_0
	mov	r5,a
	mov	a,r7
	addc	a,(_create_name_sloc0_1_0 + 1)
	mov	r7,a
	mov	r4,(_create_name_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r7
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\ff.c:1860: mem_set(dp->fn, ' ', 11);
	mov	dptr,#_create_name_dp_65536_127
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x16
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_mem_set_PARM_2
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mem_set_PARM_3
	mov	a,#0x0b
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	push	ar6
	mov	r0,#_mem_set
	mov	r1,#(_mem_set >> 8)
	mov	r2,#(_mem_set >> 16)
	lcall	__sdcc_banked_call
	pop	ar6
;	FATFS\src\ff.c:1861: for (si = 0; lfn[si] == ' ' || lfn[si] == '.'; si++) ;	/* Strip leading spaces and dots */
	mov	r5,#0x00
	mov	r7,#0x00
00192$:
	mov	a,r5
	add	a,r5
	mov	r3,a
	mov	a,r7
	rlc	a
	mov	r4,a
	mov	a,r3
	add	a,_create_name_sloc0_1_0
	mov	r3,a
	mov	a,r4
	addc	a,(_create_name_sloc0_1_0 + 1)
	mov	r4,a
	mov	r2,(_create_name_sloc0_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	cjne	r3,#0x20,00391$
	cjne	r4,#0x00,00391$
	sjmp	00193$
00391$:
	cjne	r3,#0x2e,00243$
	cjne	r4,#0x00,00243$
00193$:
	inc	r5
	cjne	r5,#0x00,00192$
	inc	r7
	sjmp	00192$
00243$:
	mov	dptr,#_create_name_si_65536_128
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1862: if (si) cf |= NS_LOSS | NS_LFN;
	mov	a,r5
	orl	a,r7
	jz	00219$
	mov	dptr,#_create_name_cf_65536_128
	mov	a,#0x03
	orl	a,r6
	movx	@dptr,a
;	FATFS\src\ff.c:1863: while (di && lfn[di - 1] != '.') di--;	/* Find extension (di<=si: no extension) */
00219$:
	mov	dptr,#_create_name_di_65536_128
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00130$:
	mov	a,r6
	orl	a,r7
	jz	00132$
	mov	a,r6
	add	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,_create_name_sloc0_1_0
	mov	r4,a
	mov	a,r5
	addc	a,(_create_name_sloc0_1_0 + 1)
	mov	r5,a
	mov	r3,(_create_name_sloc0_1_0 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	cjne	r4,#0x2e,00397$
	cjne	r5,#0x00,00397$
	sjmp	00132$
00397$:
	dec	r6
	cjne	r6,#0xff,00398$
	dec	r7
00398$:
	sjmp	00130$
00132$:
;	FATFS\src\ff.c:1865: b = i = 0; ni = 8;
	mov	dptr,#_create_name_i_65536_128
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_create_name_b_65536_128
	movx	@dptr,a
	mov	dptr,#_create_name_ni_65536_128
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	ar4,r6
	mov	ar5,r7
	mov	_create_name_sloc2_1_0,r6
	mov	(_create_name_sloc2_1_0 + 1),r7
	mov	ar0,r6
	mov	ar1,r7
	mov	_create_name_sloc3_1_0,r6
	mov	(_create_name_sloc3_1_0 + 1),r7
	mov	dptr,#_create_name_dp_65536_127
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x16
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r6,a
00194$:
;	FATFS\src\ff.c:1867: w = lfn[si++];					/* Get an LFN character */
	push	ar4
	push	ar5
	mov	dptr,#_create_name_si_65536_128
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_create_name_si_65536_128
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r2
	add	a,_create_name_sloc0_1_0
	mov	r2,a
	mov	a,r5
	addc	a,(_create_name_sloc0_1_0 + 1)
	mov	r5,a
	mov	r4,(_create_name_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r5
	mov	b,r4
	lcall	__gptrget
	mov	_create_name_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_create_name_sloc1_1_0 + 1),a
	mov	dptr,#_create_name_w_65536_128
	mov	a,_create_name_sloc1_1_0
	movx	@dptr,a
	mov	a,(_create_name_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1868: if (!w) break;					/* Break on end of the LFN */
	pop	ar5
	pop	ar4
	mov	a,_create_name_sloc1_1_0
	orl	a,(_create_name_sloc1_1_0 + 1)
	jnz	00399$
	ljmp	00170$
00399$:
;	FATFS\src\ff.c:1869: if (w == ' ' || (w == '.' && si != di)) {	/* Remove spaces and dots */
	mov	a,#0x20
	cjne	a,_create_name_sloc1_1_0,00400$
	clr	a
	cjne	a,(_create_name_sloc1_1_0 + 1),00400$
	sjmp	00135$
00400$:
	mov	a,#0x2e
	cjne	a,_create_name_sloc1_1_0,00401$
	clr	a
	cjne	a,(_create_name_sloc1_1_0 + 1),00401$
	sjmp	00402$
00401$:
	sjmp	00136$
00402$:
	push	ar3
	push	ar6
	push	ar7
	mov	dptr,#_create_name_si_65536_128
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r2
	cjne	a,ar4,00403$
	mov	a,r7
	cjne	a,ar5,00403$
	pop	ar7
	pop	ar6
	pop	ar3
	sjmp	00136$
00403$:
	pop	ar7
	pop	ar6
	pop	ar3
00135$:
;	FATFS\src\ff.c:1870: cf |= NS_LOSS | NS_LFN; continue;
	mov	dptr,#_create_name_cf_65536_128
	movx	a,@dptr
	orl	acc,#0x03
	movx	@dptr,a
	ljmp	00194$
00136$:
;	FATFS\src\ff.c:1873: if (i >= ni || si == di) {		/* Extension or end of SFN */
	push	ar4
	push	ar5
	mov	dptr,#_create_name_i_65536_128
	movx	a,@dptr
	mov	_create_name_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_create_name_sloc1_1_0 + 1),a
	mov	dptr,#_create_name_ni_65536_128
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,_create_name_sloc1_1_0
	subb	a,r4
	mov	a,(_create_name_sloc1_1_0 + 1)
	subb	a,r5
	pop	ar5
	pop	ar4
	jnc	00145$
	push	ar4
	push	ar5
	mov	dptr,#_create_name_si_65536_128
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r2
	cjne	a,_create_name_sloc2_1_0,00405$
	mov	a,r5
	cjne	a,(_create_name_sloc2_1_0 + 1),00405$
	sjmp	00406$
00405$:
	pop	ar5
	pop	ar4
	ljmp	00146$
00406$:
	pop	ar5
	pop	ar4
00145$:
;	FATFS\src\ff.c:1874: if (ni == 11) {				/* Long extension */
	push	ar4
	push	ar5
	mov	dptr,#_create_name_ni_65536_128
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r2,#0x0b,00407$
	cjne	r5,#0x00,00407$
	sjmp	00408$
00407$:
	pop	ar5
	pop	ar4
	sjmp	00140$
00408$:
	pop	ar5
	pop	ar4
;	FATFS\src\ff.c:1875: cf |= NS_LOSS | NS_LFN; break;
	mov	dptr,#_create_name_cf_65536_128
	movx	a,@dptr
	orl	acc,#0x03
	movx	@dptr,a
	ljmp	00170$
00140$:
;	FATFS\src\ff.c:1877: if (si != di) cf |= NS_LOSS | NS_LFN;	/* Out of 8.3 format */
	push	ar4
	push	ar5
	mov	dptr,#_create_name_si_65536_128
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r2
	cjne	a,ar0,00409$
	mov	a,r5
	cjne	a,ar1,00409$
	pop	ar5
	pop	ar4
	sjmp	00142$
00409$:
	pop	ar5
	pop	ar4
	mov	dptr,#_create_name_cf_65536_128
	movx	a,@dptr
	orl	acc,#0x03
	movx	@dptr,a
00142$:
;	FATFS\src\ff.c:1878: if (si > di) break;			/* No extension */
	push	ar4
	push	ar5
	mov	dptr,#_create_name_si_65536_128
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r5
	pop	ar5
	pop	ar4
	jnc	00410$
	ljmp	00170$
00410$:
;	FATFS\src\ff.c:1879: si = di; i = 8; ni = 11;	/* Enter extension section */
	mov	dptr,#_create_name_si_65536_128
	mov	a,_create_name_sloc3_1_0
	movx	@dptr,a
	mov	a,(_create_name_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_create_name_i_65536_128
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_create_name_ni_65536_128
	mov	a,#0x0b
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1880: b <<= 2; continue;
	mov	dptr,#_create_name_b_65536_128
	movx	a,@dptr
	add	a,acc
	add	a,acc
	mov	r2,a
	movx	@dptr,a
	ljmp	00194$
00146$:
;	FATFS\src\ff.c:1883: if (w >= 0x80) {				/* Non ASCII character */
	mov	dptr,#_create_name_w_65536_128
	movx	a,@dptr
	mov	_create_name_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_create_name_sloc1_1_0 + 1),a
	clr	c
	mov	a,_create_name_sloc1_1_0
	subb	a,#0x80
	mov	a,(_create_name_sloc1_1_0 + 1)
	subb	a,#0x00
	jnc	00411$
	ljmp	00166$
00411$:
;	FATFS\src\ff.c:1885: w = ff_convert(w, 0);		/* Unicode -> OEM code */
	mov	dptr,#_ff_convert_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_create_name_sloc1_1_0
	mov	dph,(_create_name_sloc1_1_0 + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar1
	push	ar0
	mov	r0,#_ff_convert
	mov	r1,#(_ff_convert >> 8)
	mov	r2,#(_ff_convert >> 16)
	lcall	__sdcc_banked_call
	mov	_create_name_sloc1_1_0,dpl
	mov	(_create_name_sloc1_1_0 + 1),dph
	pop	ar0
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_create_name_w_65536_128
	mov	a,_create_name_sloc1_1_0
	movx	@dptr,a
	mov	a,(_create_name_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1886: if (w) w = ExCvt[w - 0x80];	/* Convert extended character to upper (SBCS) */
	mov	a,_create_name_sloc1_1_0
	orl	a,(_create_name_sloc1_1_0 + 1)
	jz	00149$
	push	ar4
	push	ar5
	mov	a,_create_name_sloc1_1_0
	add	a,#0x80
	mov	r2,a
	mov	a,(_create_name_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r5,a
	mov	a,r2
	add	a,#_ExCvt
	mov	dpl,a
	mov	a,r5
	addc	a,#(_ExCvt >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_create_name_w_65536_128
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1926: return FR_OK;
	pop	ar5
	pop	ar4
;	FATFS\src\ff.c:1886: if (w) w = ExCvt[w - 0x80];	/* Convert extended character to upper (SBCS) */
00149$:
;	FATFS\src\ff.c:1890: cf |= NS_LFN;				/* Force create LFN entry */
	push	ar4
	push	ar5
	mov	dptr,#_create_name_cf_65536_128
	movx	a,@dptr
	orl	a,#0x02
	mov	r2,a
	movx	@dptr,a
;	FATFS\src\ff.c:1926: return FR_OK;
	pop	ar5
	pop	ar4
;	FATFS\src\ff.c:1897: dp->fn[i++] = (BYTE)(w >> 8);
00166$:
;	FATFS\src\ff.c:1899: if (!w || chk_chr("+,;=[]", w)) {	/* Replace illegal characters for SFN */
	mov	dptr,#_create_name_w_65536_128
	movx	a,@dptr
	mov	_create_name_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_create_name_sloc1_1_0 + 1),a
	mov	a,_create_name_sloc1_1_0
	orl	a,(_create_name_sloc1_1_0 + 1)
	jz	00161$
	mov	dptr,#_chk_chr_PARM_2
	mov	a,_create_name_sloc1_1_0
	movx	@dptr,a
	mov	a,(_create_name_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_1
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar1
	push	ar0
	mov	r0,#_chk_chr
	mov	r1,#(_chk_chr >> 8)
	mov	r2,#(_chk_chr >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	pop	ar0
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00162$
00161$:
;	FATFS\src\ff.c:1900: w = '_'; cf |= NS_LOSS | NS_LFN;/* Lossy conversion */
	mov	dptr,#_create_name_w_65536_128
	mov	a,#0x5f
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_create_name_cf_65536_128
	movx	a,@dptr
	orl	acc,#0x03
	movx	@dptr,a
	sjmp	00167$
00162$:
;	FATFS\src\ff.c:1902: if (IsUpper(w)) {		/* ASCII large capital */
	clr	c
	mov	a,_create_name_sloc1_1_0
	subb	a,#0x41
	mov	a,(_create_name_sloc1_1_0 + 1)
	subb	a,#0x00
	jc	00158$
	mov	a,#0x5a
	subb	a,_create_name_sloc1_1_0
	clr	a
	subb	a,(_create_name_sloc1_1_0 + 1)
	jc	00158$
;	FATFS\src\ff.c:1903: b |= 2;
	push	ar4
	push	ar5
	mov	dptr,#_create_name_b_65536_128
	movx	a,@dptr
	orl	a,#0x02
	mov	r2,a
	movx	@dptr,a
	pop	ar5
	pop	ar4
	sjmp	00167$
00158$:
;	FATFS\src\ff.c:1905: if (IsLower(w)) {	/* ASCII small capital */
	mov	dptr,#_create_name_w_65536_128
	movx	a,@dptr
	mov	_create_name_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_create_name_sloc1_1_0 + 1),a
	clr	c
	mov	a,_create_name_sloc1_1_0
	subb	a,#0x61
	mov	a,(_create_name_sloc1_1_0 + 1)
	subb	a,#0x00
	jc	00167$
	mov	a,#0x7a
	subb	a,_create_name_sloc1_1_0
	clr	a
	subb	a,(_create_name_sloc1_1_0 + 1)
	jc	00167$
;	FATFS\src\ff.c:1906: b |= 1; w -= 0x20;
	push	ar4
	push	ar5
	mov	dptr,#_create_name_b_65536_128
	movx	a,@dptr
	orl	a,#0x01
	mov	r2,a
	movx	@dptr,a
	mov	a,_create_name_sloc1_1_0
	add	a,#0xe0
	mov	r4,a
	mov	a,(_create_name_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r5,a
	mov	dptr,#_create_name_w_65536_128
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:1926: return FR_OK;
	pop	ar5
	pop	ar4
;	FATFS\src\ff.c:1906: b |= 1; w -= 0x20;
00167$:
;	FATFS\src\ff.c:1911: dp->fn[i++] = (BYTE)w;
	push	ar4
	push	ar5
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_create_name_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_create_name_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_create_name_sloc1_1_0 + 2),a
	mov	dptr,#_create_name_i_65536_128
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_create_name_i_65536_128
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	add	a,_create_name_sloc1_1_0
	mov	_create_name_sloc1_1_0,a
	mov	a,r5
	addc	a,(_create_name_sloc1_1_0 + 1)
	mov	(_create_name_sloc1_1_0 + 1),a
	mov	dptr,#_create_name_w_65536_128
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,_create_name_sloc1_1_0
	mov	dph,(_create_name_sloc1_1_0 + 1)
	mov	b,(_create_name_sloc1_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	pop	ar5
	pop	ar4
	ljmp	00194$
00170$:
;	FATFS\src\ff.c:1914: if (dp->fn[0] == DDE) dp->fn[0] = NDDE;	/* If the first character collides with deleted mark, replace it with 0x05 */
	mov	dptr,#_create_name_dp_65536_127
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x16
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0xe5,00172$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x05
	lcall	__gptrput
00172$:
;	FATFS\src\ff.c:1916: if (ni == 8) b <<= 2;
	mov	dptr,#_create_name_ni_65536_128
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x08,00174$
	cjne	r7,#0x00,00174$
	mov	dptr,#_create_name_b_65536_128
	movx	a,@dptr
	add	a,acc
	add	a,acc
	mov	r7,a
	movx	@dptr,a
00174$:
;	FATFS\src\ff.c:1917: if ((b & 0x0C) == 0x0C || (b & 0x03) == 0x03)	/* Create LFN entry when there are composite capitals */
	mov	dptr,#_create_name_b_65536_128
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	a,#0x0c
	anl	a,r6
	mov	r4,a
	mov	r5,#0x00
	cjne	r4,#0x0c,00423$
	cjne	r5,#0x00,00423$
	sjmp	00175$
00423$:
	anl	ar6,#0x03
	mov	r7,#0x00
	cjne	r6,#0x03,00176$
	cjne	r7,#0x00,00176$
00175$:
;	FATFS\src\ff.c:1918: cf |= NS_LFN;
	mov	dptr,#_create_name_cf_65536_128
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	orl	ar7,#0x02
	mov	dptr,#_create_name_cf_65536_128
	mov	a,r7
	movx	@dptr,a
00176$:
;	FATFS\src\ff.c:1919: if (!(cf & NS_LFN)) {						/* When LFN is in 8.3 format without extended character, NT flags are created */
	mov	dptr,#_create_name_cf_65536_128
	movx	a,@dptr
	mov	r7,a
	jb	acc.1,00183$
;	FATFS\src\ff.c:1920: if ((b & 0x03) == 0x01) cf |= NS_EXT;	/* NT flag (Extension has only small capital) */
	mov	dptr,#_create_name_b_65536_128
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x03
	anl	a,r5
	mov	r3,a
	mov	r4,#0x00
	cjne	r3,#0x01,00179$
	cjne	r4,#0x00,00179$
	mov	r4,#0x00
	orl	ar7,#0x10
	mov	dptr,#_create_name_cf_65536_128
	mov	a,r7
	movx	@dptr,a
00179$:
;	FATFS\src\ff.c:1921: if ((b & 0x0C) == 0x04) cf |= NS_BODY;	/* NT flag (Filename has only small capital) */
	anl	ar5,#0x0c
	mov	r6,#0x00
	cjne	r5,#0x04,00183$
	cjne	r6,#0x00,00183$
	mov	dptr,#_create_name_cf_65536_128
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	orl	ar7,#0x08
	mov	dptr,#_create_name_cf_65536_128
	mov	a,r7
	movx	@dptr,a
00183$:
;	FATFS\src\ff.c:1924: dp->fn[NS] = cf;	/* SFN is created */
	mov	dptr,#_create_name_dp_65536_127
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x16
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x0b
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_create_name_cf_65536_128
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	FATFS\src\ff.c:1926: return FR_OK;
	mov	dpl,#0x00
;	FATFS\src\ff.c:2003: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'follow_path'
;------------------------------------------------------------
;sloc0                     Allocated with name '_follow_path_sloc0_1_0'
;sloc1                     Allocated with name '_follow_path_sloc1_1_0'
;path                      Allocated with name '_follow_path_PARM_2'
;dp                        Allocated with name '_follow_path_dp_65536_150'
;res                       Allocated with name '_follow_path_res_65536_151'
;dir                       Allocated with name '_follow_path_dir_65536_151'
;ns                        Allocated with name '_follow_path_ns_65536_151'
;------------------------------------------------------------
;	FATFS\src\ff.c:2013: FRESULT follow_path (	/* FR_OK(0): successful, !=0: error code */
;	-----------------------------------------
;	 function follow_path
;	-----------------------------------------
_follow_path:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_follow_path_dp_65536_150
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2029: if (*path == '/' || *path == '\\')		/* Strip heading separator if exist */
	mov	dptr,#_follow_path_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2f,00166$
	sjmp	00101$
00166$:
	cjne	r4,#0x5c,00102$
00101$:
;	FATFS\src\ff.c:2030: path++;
	mov	dptr,#_follow_path_PARM_2
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00102$:
;	FATFS\src\ff.c:2031: dp->sclust = 0;							/* Always start from the root directory */
	mov	dptr,#_follow_path_dp_65536_150
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x07
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\ff.c:2034: if ((UINT)*path < ' ') {				/* Null path name is the origin directory itself */
	mov	dptr,#_follow_path_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r4,#0x00
	clr	c
	mov	a,r2
	subb	a,#0x20
	mov	a,r4
	subb	a,#0x00
	jnc	00127$
;	FATFS\src\ff.c:2035: res = dir_sdi(dp, 0);
	mov	dptr,#_dir_sdi_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_dir_sdi
	mov	r1,#(_dir_sdi >> 8)
	mov	r2,#(_dir_sdi >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	dptr,#_follow_path_res_65536_151
	movx	@dptr,a
;	FATFS\src\ff.c:2036: dp->dir = 0;
	mov	dptr,#_follow_path_dp_65536_150
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x13
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	ljmp	00126$
00127$:
;	FATFS\src\ff.c:2039: res = create_name(dp, &path);	/* Get a segment name of the path */
	mov	dptr,#_create_name_PARM_2
	mov	a,#_follow_path_PARM_2
	movx	@dptr,a
	mov	a,#(_follow_path_PARM_2 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_create_name
	mov	r1,#(_create_name >> 8)
	mov	r2,#(_create_name >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_follow_path_res_65536_151
	mov	a,r4
	movx	@dptr,a
;	FATFS\src\ff.c:2040: if (res != FR_OK) break;
	mov	a,r4
	jz	00170$
	ljmp	00126$
00170$:
;	FATFS\src\ff.c:2041: res = dir_find(dp);				/* Find an object with the sagment name */
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_follow_path_dp_65536_150
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_dir_find
	mov	r1,#(_dir_find >> 8)
	mov	r2,#(_dir_find >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_follow_path_res_65536_151
	mov	a,r4
	movx	@dptr,a
;	FATFS\src\ff.c:2042: ns = dp->fn[NS];
	mov	dptr,#_follow_path_dp_65536_150
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x16
	add	a,r1
	mov	r0,a
	clr	a
	addc	a,r2
	mov	r6,a
	mov	ar7,r3
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x0b
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_follow_path_sloc0_1_0,a
;	FATFS\src\ff.c:2043: if (res != FR_OK) {				/* Failed to find the object */
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,r4
	jz	00117$
;	FATFS\src\ff.c:2044: if (res == FR_NO_FILE) {	/* Object is not found */
	cjne	r4,#0x04,00172$
	sjmp	00173$
00172$:
	ljmp	00126$
00173$:
;	FATFS\src\ff.c:2050: if (!(ns & NS_LAST)) res = FR_NO_PATH;	/* Adjust error code if not last segment */
	mov	a,_follow_path_sloc0_1_0
	jnb	acc.2,00174$
	ljmp	00126$
00174$:
	mov	dptr,#_follow_path_res_65536_151
	mov	a,#0x05
	movx	@dptr,a
;	FATFS\src\ff.c:2053: break;
	ljmp	00126$
00117$:
;	FATFS\src\ff.c:2055: if (ns & NS_LAST) break;			/* Last segment matched. Function completed. */
	mov	a,_follow_path_sloc0_1_0
	jnb	acc.2,00175$
	ljmp	00126$
00175$:
;	FATFS\src\ff.c:2056: dir = dp->dir;						/* Follow the sub-directory */
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x13
	add	a,r1
	mov	r0,a
	clr	a
	addc	a,r2
	mov	r4,a
	mov	ar7,r3
	mov	dpl,r0
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	_follow_path_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_follow_path_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_follow_path_sloc1_1_0 + 2),a
;	FATFS\src\ff.c:2057: if (!(dir[DIR_Attr] & AM_DIR)) {	/* It is not a sub-directory and cannot follow */
	mov	a,#0x0b
	add	a,_follow_path_sloc1_1_0
	mov	r5,a
	clr	a
	addc	a,(_follow_path_sloc1_1_0 + 1)
	mov	r6,a
	mov	r7,(_follow_path_sloc1_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	pop	ar7
	pop	ar6
	pop	ar5
	jb	acc.4,00121$
;	FATFS\src\ff.c:2058: res = FR_NO_PATH; break;
	mov	dptr,#_follow_path_res_65536_151
	mov	a,#0x05
	movx	@dptr,a
	sjmp	00126$
00121$:
;	FATFS\src\ff.c:2060: dp->sclust = ld_clust(dp->fs, dir);
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x07
	add	a,r1
	mov	r0,a
	clr	a
	addc	a,r2
	mov	r4,a
	mov	ar7,r3
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_ld_clust_PARM_2
	mov	a,_follow_path_sloc1_1_0
	movx	@dptr,a
	mov	a,(_follow_path_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_follow_path_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar7
	push	ar4
	push	ar0
	mov	r0,#_ld_clust
	mov	r1,#(_ld_clust >> 8)
	mov	r2,#(_ld_clust >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	mov	r6,a
	pop	ar0
	pop	ar4
	pop	ar7
	mov	dpl,r0
	mov	dph,r4
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00127$
00126$:
;	FATFS\src\ff.c:2064: return res;
	mov	dptr,#_follow_path_res_65536_151
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
;	FATFS\src\ff.c:2065: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_ldnumber'
;------------------------------------------------------------
;path                      Allocated with name '_get_ldnumber_path_65536_161'
;tp                        Allocated with name '_get_ldnumber_tp_65536_162'
;tt                        Allocated with name '_get_ldnumber_tt_65536_162'
;i                         Allocated with name '_get_ldnumber_i_65536_162'
;vol                       Allocated with name '_get_ldnumber_vol_65536_162'
;sloc0                     Allocated with name '_get_ldnumber_sloc0_1_0'
;sloc1                     Allocated with name '_get_ldnumber_sloc1_1_0'
;------------------------------------------------------------
;	FATFS\src\ff.c:2075: int get_ldnumber (		/* Returns logical drive number (-1:invalid drive) */
;	-----------------------------------------
;	 function get_ldnumber
;	-----------------------------------------
_get_ldnumber:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_get_ldnumber_path_65536_161
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2081: int vol = -1;
	mov	dptr,#_get_ldnumber_vol_65536_162
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2084: if (*path) {	/* If the pointer is not a null */
	mov	dptr,#_get_ldnumber_path_65536_161
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00150$
	ljmp	00110$
00150$:
;	FATFS\src\ff.c:2085: for (tt = *path; (UINT)*tt >= (_USE_LFN ? ' ' : '!') && *tt != ':'; tt++) ;	/* Find ':' in the path */
00113$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	clr	c
	mov	a,r2
	subb	a,#0x20
	mov	a,r3
	subb	a,#0x00
	jc	00101$
	cjne	r4,#0x3a,00152$
	sjmp	00101$
00152$:
	inc	r5
	cjne	r5,#0x00,00113$
	inc	r6
	sjmp	00113$
00101$:
;	FATFS\src\ff.c:2086: if (*tt == ':') {	/* If a ':' is exist in the path name */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x3a,00154$
	sjmp	00155$
00154$:
	ljmp	00108$
00155$:
;	FATFS\src\ff.c:2087: tp = *path;
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_get_ldnumber_path_65536_161
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	FATFS\src\ff.c:2088: i = *tp++ - '0';
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	mov	a,#0x01
	add	a,r0
	mov	_get_ldnumber_sloc0_1_0,a
	clr	a
	addc	a,r1
	mov	(_get_ldnumber_sloc0_1_0 + 1),a
	mov	(_get_ldnumber_sloc0_1_0 + 2),r7
	mov	r7,#0x00
	mov	a,r6
	add	a,#0xd0
	mov	_get_ldnumber_sloc1_1_0,a
	mov	a,r7
	addc	a,#0xff
	mov	(_get_ldnumber_sloc1_1_0 + 1),a
;	FATFS\src\ff.c:2089: if (i < 10 && tp == tt) {	/* Is there a numeric drive id? */
	mov	r6,_get_ldnumber_sloc1_1_0
	mov	r7,(_get_ldnumber_sloc1_1_0 + 1)
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	subb	a,#0x00
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00105$
	push	_get_ldnumber_sloc0_1_0
	push	(_get_ldnumber_sloc0_1_0 + 1)
	push	(_get_ldnumber_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00158$
	sjmp	00105$
00158$:
;	FATFS\src\ff.c:2090: if (i < _VOLUMES) {	/* If a drive id is found, get the value and strip it */
	mov	r0,_get_ldnumber_sloc1_1_0
	mov	r1,(_get_ldnumber_sloc1_1_0 + 1)
	clr	c
	mov	a,r0
	subb	a,#0x02
	mov	a,r1
	subb	a,#0x00
	jnc	00105$
;	FATFS\src\ff.c:2091: vol = (int)i;
	mov	r0,_get_ldnumber_sloc1_1_0
	mov	r1,(_get_ldnumber_sloc1_1_0 + 1)
	mov	dptr,#_get_ldnumber_vol_65536_162
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2092: *path = ++tt;
	inc	r5
	cjne	r5,#0x00,00160$
	inc	r6
00160$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00105$:
;	FATFS\src\ff.c:2115: return vol;
	mov	dptr,#_get_ldnumber_vol_65536_162
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	sjmp	00115$
00108$:
;	FATFS\src\ff.c:2120: vol = 0;		/* Drive 0 */
	mov	dptr,#_get_ldnumber_vol_65536_162
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00110$:
;	FATFS\src\ff.c:2123: return vol;
	mov	dptr,#_get_ldnumber_vol_65536_162
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
00115$:
;	FATFS\src\ff.c:2124: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_fs'
;------------------------------------------------------------
;sloc0                     Allocated with name '_check_fs_sloc0_1_0'
;sloc1                     Allocated with name '_check_fs_sloc1_1_0'
;sloc2                     Allocated with name '_check_fs_sloc2_1_0'
;sect                      Allocated with name '_check_fs_PARM_2'
;fs                        Allocated with name '_check_fs_fs_65536_169'
;------------------------------------------------------------
;	FATFS\src\ff.c:2134: BYTE check_fs (	/* 0:FAT boor sector, 1:Valid boor sector but not FAT, 2:Not a boot sector, 3:Disk error */
;	-----------------------------------------
;	 function check_fs
;	-----------------------------------------
_check_fs:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_check_fs_fs_65536_169
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2139: fs->wflag = 0; fs->winsect = 0xFFFFFFFF;	/* Invaidate window */
	mov	dptr,#_check_fs_fs_65536_169
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	mov	a,#0x22
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0xff
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\ff.c:2140: if (move_window(fs, sect) != FR_OK)			/* Load boot record */
	mov	dptr,#_check_fs_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_move_window_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_move_window
	mov	r1,#(_move_window >> 8)
	mov	r2,#(_move_window >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	jz	00102$
;	FATFS\src\ff.c:2141: return 3;
	mov	dpl,#0x03
	ljmp	__sdcc_banked_ret
00102$:
;	FATFS\src\ff.c:2143: if (LD_WORD(&fs->win[BS_55AA]) != 0xAA55)	/* Check boot record signature (always placed at offset 510 even if the sector size is >512) */
	mov	dptr,#_check_fs_fs_65536_169
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x24
	add	a,r5
	mov	_check_fs_sloc0_1_0,a
	mov	a,#0x02
	addc	a,r6
	mov	(_check_fs_sloc0_1_0 + 1),a
	mov	(_check_fs_sloc0_1_0 + 2),r7
	mov	a,#0x25
	add	a,r5
	mov	r0,a
	mov	a,#0x02
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	mov	r0,#0x00
	mov	dpl,_check_fs_sloc0_1_0
	mov	dph,(_check_fs_sloc0_1_0 + 1)
	mov	b,(_check_fs_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	mov	r2,#0x00
	orl	ar0,a
	mov	a,r2
	orl	ar4,a
	cjne	r0,#0x55,00128$
	cjne	r4,#0xaa,00128$
	sjmp	00104$
00128$:
;	FATFS\src\ff.c:2144: return 2;
	mov	dpl,#0x02
	ljmp	__sdcc_banked_ret
00104$:
;	FATFS\src\ff.c:2146: if ((LD_DWORD(&fs->win[BS_FilSysType]) & 0xFFFFFF) == 0x544146)		/* Check "FAT" string */
	mov	a,#0x5c
	add	a,r5
	mov	_check_fs_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_check_fs_sloc0_1_0 + 1),a
	mov	(_check_fs_sloc0_1_0 + 2),r7
	mov	a,#0x5f
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	r4,#0x00
	mov	(_check_fs_sloc1_1_0 + 3),r0
;	1-genFromRTrack replaced	mov	_check_fs_sloc1_1_0,#0x00
	mov	_check_fs_sloc1_1_0,r4
;	1-genFromRTrack replaced	mov	(_check_fs_sloc1_1_0 + 1),#0x00
	mov	(_check_fs_sloc1_1_0 + 1),r4
;	1-genFromRTrack replaced	mov	(_check_fs_sloc1_1_0 + 2),#0x00
	mov	(_check_fs_sloc1_1_0 + 2),r4
	mov	a,#0x5e
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r1
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	mov	r4,#0x00
	mov	ar2,r4
	mov	ar3,r1
	clr	a
	mov	r4,a
	orl	_check_fs_sloc1_1_0,a
	mov	a,r4
	orl	(_check_fs_sloc1_1_0 + 1),a
	mov	a,r3
	orl	(_check_fs_sloc1_1_0 + 2),a
	mov	a,r2
	orl	(_check_fs_sloc1_1_0 + 3),a
	mov	a,#0x5d
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	clr	a
	mov	r0,a
	mov	r3,a
	mov	r2,a
	mov	a,_check_fs_sloc1_1_0
	orl	ar0,a
	mov	a,(_check_fs_sloc1_1_0 + 1)
	orl	ar4,a
	mov	a,(_check_fs_sloc1_1_0 + 2)
	orl	ar3,a
	mov	a,(_check_fs_sloc1_1_0 + 3)
	orl	ar2,a
	mov	dpl,_check_fs_sloc0_1_0
	mov	dph,(_check_fs_sloc0_1_0 + 1)
	mov	b,(_check_fs_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	push	ar5
	push	ar6
	push	ar7
	clr	a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,r1
	orl	ar0,a
	mov	a,r5
	orl	ar4,a
	mov	a,r6
	orl	ar3,a
	mov	a,r7
	orl	ar2,a
	mov	r2,#0x00
	cjne	r0,#0x46,00129$
	cjne	r4,#0x41,00129$
	cjne	r3,#0x54,00129$
	cjne	r2,#0x00,00129$
	sjmp	00130$
00129$:
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00106$
00130$:
	pop	ar7
	pop	ar6
	pop	ar5
;	FATFS\src\ff.c:2147: return 0;
	mov	dpl,#0x00
	ljmp	__sdcc_banked_ret
00106$:
;	FATFS\src\ff.c:2148: if ((LD_DWORD(&fs->win[BS_FilSysType32]) & 0xFFFFFF) == 0x544146)	/* Check "FAT" string */
	mov	a,#0x78
	add	a,r5
	mov	_check_fs_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_check_fs_sloc1_1_0 + 1),a
	mov	(_check_fs_sloc1_1_0 + 2),r7
	mov	a,#0x7b
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	r4,#0x00
	mov	(_check_fs_sloc2_1_0 + 3),r0
;	1-genFromRTrack replaced	mov	_check_fs_sloc2_1_0,#0x00
	mov	_check_fs_sloc2_1_0,r4
;	1-genFromRTrack replaced	mov	(_check_fs_sloc2_1_0 + 1),#0x00
	mov	(_check_fs_sloc2_1_0 + 1),r4
;	1-genFromRTrack replaced	mov	(_check_fs_sloc2_1_0 + 2),#0x00
	mov	(_check_fs_sloc2_1_0 + 2),r4
	mov	a,#0x7a
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r1
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	mov	r4,#0x00
	mov	ar2,r4
	mov	ar3,r1
	clr	a
	mov	r1,a
	mov	r4,a
	mov	a,_check_fs_sloc2_1_0
	orl	ar1,a
	mov	a,(_check_fs_sloc2_1_0 + 1)
	orl	ar4,a
	mov	a,(_check_fs_sloc2_1_0 + 2)
	orl	ar3,a
	mov	a,(_check_fs_sloc2_1_0 + 3)
	orl	ar2,a
	mov	a,#0x79
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r5,#0x00
	mov	ar0,r7
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r5
	orl	ar1,a
	mov	a,r0
	orl	ar4,a
	mov	a,r6
	orl	ar3,a
	mov	a,r7
	orl	ar2,a
	mov	dpl,_check_fs_sloc1_1_0
	mov	dph,(_check_fs_sloc1_1_0 + 1)
	mov	b,(_check_fs_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	clr	a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,r0
	orl	ar1,a
	mov	a,r5
	orl	ar4,a
	mov	a,r6
	orl	ar3,a
	mov	a,r7
	orl	ar2,a
	mov	r2,#0x00
	cjne	r1,#0x46,00108$
	cjne	r4,#0x41,00108$
	cjne	r3,#0x54,00108$
	cjne	r2,#0x00,00108$
;	FATFS\src\ff.c:2149: return 0;
	mov	dpl,#0x00
	sjmp	00109$
00108$:
;	FATFS\src\ff.c:2151: return 1;
	mov	dpl,#0x01
00109$:
;	FATFS\src\ff.c:2152: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'find_volume'
;------------------------------------------------------------
;sloc0                     Allocated with name '_find_volume_sloc0_1_0'
;sloc1                     Allocated with name '_find_volume_sloc1_1_0'
;sloc2                     Allocated with name '_find_volume_sloc2_1_0'
;sloc3                     Allocated with name '_find_volume_sloc3_1_0'
;sloc4                     Allocated with name '_find_volume_sloc4_1_0'
;sloc5                     Allocated with name '_find_volume_sloc5_1_0'
;sloc6                     Allocated with name '_find_volume_sloc6_1_0'
;sloc7                     Allocated with name '_find_volume_sloc7_1_0'
;sloc8                     Allocated with name '_find_volume_sloc8_1_0'
;sloc9                     Allocated with name '_find_volume_sloc9_1_0'
;path                      Allocated with name '_find_volume_PARM_2'
;wmode                     Allocated with name '_find_volume_PARM_3'
;rfs                       Allocated with name '_find_volume_rfs_65536_171'
;fmt1                      Allocated with name '_find_volume_fmt1_65536_172'
;vol1                      Allocated with name '_find_volume_vol1_65536_172'
;stat1                     Allocated with name '_find_volume_stat1_65536_172'
;bsect1                    Allocated with name '_find_volume_bsect1_65536_172'
;fasize1                   Allocated with name '_find_volume_fasize1_65536_172'
;tsect1                    Allocated with name '_find_volume_tsect1_65536_172'
;sysect1                   Allocated with name '_find_volume_sysect1_65536_172'
;nclst1                    Allocated with name '_find_volume_nclst1_65536_172'
;szbfat1                   Allocated with name '_find_volume_szbfat1_65536_172'
;nrsv1                     Allocated with name '_find_volume_nrsv1_65536_172'
;fs1                       Allocated with name '_find_volume_fs1_65536_172'
;i                         Allocated with name '_find_volume_i_131072_180'
;br                        Allocated with name '_find_volume_br_131072_180'
;pt                        Allocated with name '_find_volume_pt_262144_182'
;------------------------------------------------------------
;	FATFS\src\ff.c:2160: FRESULT find_volume (	/* FR_OK(0): successful, !=0: any error occurred */
;	-----------------------------------------
;	 function find_volume
;	-----------------------------------------
_find_volume:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_find_volume_rfs_65536_171
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2173: P1 = 0xd1;
	mov	_P1,#0xd1
;	FATFS\src\ff.c:2175: *rfs = 0;
	mov	dptr,#_find_volume_rfs_65536_171
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\ff.c:2176: P1 = 0xd2;
	mov	_P1,#0xd2
;	FATFS\src\ff.c:2177: vol1 = get_ldnumber(path);
	mov	dptr,#_find_volume_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_get_ldnumber
	mov	r1,#(_get_ldnumber >> 8)
	mov	r2,#(_get_ldnumber >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	FATFS\src\ff.c:2178: P1 = 0xd3;
	mov	_P1,#0xd3
;	FATFS\src\ff.c:2179: if (vol1 < 0)
	mov	a,r4
	jnb	acc.7,00102$
;	FATFS\src\ff.c:2181: P1 = 0xd4;
	mov	_P1,#0xd4
;	FATFS\src\ff.c:2182: return FR_INVALID_DRIVE;
	mov	dpl,#0x0b
	ljmp	__sdcc_banked_ret
00102$:
;	FATFS\src\ff.c:2185: P1 = 0xd5;
	mov	_P1,#0xd5
;	FATFS\src\ff.c:2187: fs1 = FatFs[vol1];					/* Get pointer to the file system object */
	mov	dptr,#__mulint_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	__mulint
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_FatFs
	mov	dpl,a
	mov	a,r2
	addc	a,#(_FatFs >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
;	FATFS\src\ff.c:2188: P1 = 0xd6;
	mov	_P1,#0xd6
;	FATFS\src\ff.c:2189: if(!fs1)
	mov	a,r0
	orl	a,r1
	jnz	00104$
;	FATFS\src\ff.c:2191: P1 = 0xd7;
	mov	_P1,#0xd7
;	FATFS\src\ff.c:2192: return FR_NOT_ENABLED;		/* Is the file system object available? */
	mov	dpl,#0x0c
	ljmp	__sdcc_banked_ret
00104$:
;	FATFS\src\ff.c:2195: P1 = 0xd8;
	mov	_P1,#0xd8
;	FATFS\src\ff.c:2197: *rfs = fs1;							/* Return pointer to the file system object */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
;	FATFS\src\ff.c:2199: P1 = 0xd9;
	mov	_P1,#0xd9
;	FATFS\src\ff.c:2200: if (fs1->fs_type)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	jz	00112$
;	FATFS\src\ff.c:2202: P1 = 0xda;
	mov	_P1,#0xda
;	FATFS\src\ff.c:2203: stat1 = disk_status(fs1->drv);
	mov	a,#0x01
	add	a,r0
	mov	r5,a
	clr	a
	addc	a,r1
	mov	r6,a
	mov	ar7,r2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	mov	r0,#_disk_status
	mov	r1,#(_disk_status >> 8)
	mov	r2,#(_disk_status >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	FATFS\src\ff.c:2204: P1 = 0xdb;
	mov	_P1,#0xdb
;	FATFS\src\ff.c:2205: if (!(stat1 & STA_NOINIT))
	mov	a,r7
	jb	acc.0,00112$
;	FATFS\src\ff.c:2208: P1 = 0xde;
	mov	_P1,#0xde
;	FATFS\src\ff.c:2214: P1 = 0xe1;
	mov	_P1,#0xe1
;	FATFS\src\ff.c:2215: return FR_OK;				/* The file system object is valid */
	mov	dpl,#0x00
	ljmp	__sdcc_banked_ret
00112$:
;	FATFS\src\ff.c:2218: P1 = 0xe2;
	mov	_P1,#0xe2
;	FATFS\src\ff.c:2223: fs1->fs_type = 0;					/* Clear the file system object */
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	clr	a
	lcall	__gptrput
;	FATFS\src\ff.c:2224: P1 = 0xe3;
	mov	_P1,#0xe3
;	FATFS\src\ff.c:2225: fs1->drv = LD2PD(vol1);				/* Bind the logical drive and a physical drive */
	inc	a
	add	a,r0
	mov	r5,a
	clr	a
	addc	a,r1
	mov	r6,a
	mov	ar7,r2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	FATFS\src\ff.c:2226: P1 = 0xe4;
	mov	_P1,#0xe4
;	FATFS\src\ff.c:2227: stat1 = disk_initialize(fs1->drv);	/* Initialize the physical drive */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar2
	push	ar1
	push	ar0
	mov	r0,#_disk_initialize
	mov	r1,#(_disk_initialize >> 8)
	mov	r2,#(_disk_initialize >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	pop	ar0
	pop	ar1
	pop	ar2
;	FATFS\src\ff.c:2228: P1 = 0xe5;
	mov	_P1,#0xe5
;	FATFS\src\ff.c:2229: if (stat1 & STA_NOINIT)				/* Check if the initialization succeeded */
	mov	a,r7
	jnb	acc.0,00116$
;	FATFS\src\ff.c:2231: P1 = 0xe6;
	mov	_P1,#0xe6
;	FATFS\src\ff.c:2232: return FR_NOT_READY;			/* Failed to initialize due to no medium or hard error */
	mov	dpl,#0x03
	ljmp	__sdcc_banked_ret
;	FATFS\src\ff.c:2237: return FR_WRITE_PROTECTED;
00116$:
;	FATFS\src\ff.c:2249: P1 = 0xe9;
	mov	_P1,#0xe9
;	FATFS\src\ff.c:2251: bsect1 = 0;
	mov	dptr,#_find_volume_bsect1_65536_172
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2252: P1 = 0xea;
	mov	_P1,#0xea
;	FATFS\src\ff.c:2253: fmt1 = check_fs(fs1, bsect1);					/* Load sector 0 and check if it is an FAT boot sector as SFD */
	mov	dptr,#_check_fs_PARM_2
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	push	ar2
	push	ar1
	push	ar0
	mov	r0,#_check_fs
	mov	r1,#(_check_fs >> 8)
	mov	r2,#(_check_fs >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	mov	dptr,#_find_volume_fmt1_65536_172
	mov	a,r7
	movx	@dptr,a
;	FATFS\src\ff.c:2254: P1 = 0xeb;
	mov	_P1,#0xeb
;	FATFS\src\ff.c:2255: if (fmt1 == 1 || (!fmt1 && (LD2PT(vol1))))
	cjne	r7,#0x01,00310$
	sjmp	00311$
00310$:
	ljmp	00128$
00311$:
;	FATFS\src\ff.c:2260: P1 = 0xec;
	mov	_P1,#0xec
;	FATFS\src\ff.c:2261: for (i = 0; i < 4; i++)
	mov	a,#0x26
	add	a,r0
	mov	r5,a
	clr	a
	addc	a,r1
	mov	r6,a
	mov	ar7,r2
	mov	a,#0xbe
	add	a,r5
	mov	r5,a
	mov	a,#0x01
	addc	a,r6
	mov	r6,a
	clr	a
	mov	_find_volume_sloc2_1_0,a
	mov	(_find_volume_sloc2_1_0 + 1),a
00168$:
;	FATFS\src\ff.c:2264: BYTE *pt = fs1->win+MBR_Table + i * SZ_PTE;
	push	ar0
	push	ar1
	push	ar2
	mov	r1,_find_volume_sloc2_1_0
	mov	a,(_find_volume_sloc2_1_0 + 1)
	swap	a
	anl	a,#0xf0
	xch	a,r1
	swap	a
	xch	a,r1
	xrl	a,r1
	xch	a,r1
	anl	a,#0xf0
	xch	a,r1
	xrl	a,r1
	mov	r2,a
	mov	a,r1
	add	a,r5
	mov	_find_volume_sloc0_1_0,a
	mov	a,r2
	addc	a,r6
	mov	(_find_volume_sloc0_1_0 + 1),a
	mov	(_find_volume_sloc0_1_0 + 2),r7
;	FATFS\src\ff.c:2265: br[i] = pt[4] ? LD_DWORD(&pt[8]) : 0;
	mov	a,_find_volume_sloc2_1_0
	add	a,_find_volume_sloc2_1_0
	mov	r1,a
	mov	a,(_find_volume_sloc2_1_0 + 1)
	rlc	a
	mov	r2,a
	mov	a,r1
	add	a,r1
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r1
	add	a,#_find_volume_br_131072_180
	mov	_find_volume_sloc1_1_0,a
	mov	a,r2
	addc	a,#(_find_volume_br_131072_180 >> 8)
	mov	(_find_volume_sloc1_1_0 + 1),a
	mov	a,#0x04
	add	a,_find_volume_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_find_volume_sloc0_1_0 + 1)
	mov	r1,a
	mov	r2,(_find_volume_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	pop	ar2
	pop	ar1
	pop	ar0
	jnz	00312$
	ljmp	00172$
00312$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x08
	add	a,_find_volume_sloc0_1_0
	mov	_find_volume_sloc0_1_0,a
	clr	a
	addc	a,(_find_volume_sloc0_1_0 + 1)
	mov	(_find_volume_sloc0_1_0 + 1),a
	mov	r3,_find_volume_sloc0_1_0
	mov	r4,(_find_volume_sloc0_1_0 + 1)
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r7,#0x00
	mov	(_find_volume_sloc3_1_0 + 3),r3
;	1-genFromRTrack replaced	mov	_find_volume_sloc3_1_0,#0x00
	mov	_find_volume_sloc3_1_0,r7
;	1-genFromRTrack replaced	mov	(_find_volume_sloc3_1_0 + 1),#0x00
	mov	(_find_volume_sloc3_1_0 + 1),r7
;	1-genFromRTrack replaced	mov	(_find_volume_sloc3_1_0 + 2),#0x00
	mov	(_find_volume_sloc3_1_0 + 2),r7
	mov	r5,_find_volume_sloc0_1_0
	mov	r6,(_find_volume_sloc0_1_0 + 1)
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	ar4,r6
	mov	ar5,r7
	clr	a
	mov	r6,a
	orl	_find_volume_sloc3_1_0,a
	mov	a,r6
	orl	(_find_volume_sloc3_1_0 + 1),a
	mov	a,r5
	orl	(_find_volume_sloc3_1_0 + 2),a
	mov	a,r4
	orl	(_find_volume_sloc3_1_0 + 3),a
	mov	r3,_find_volume_sloc0_1_0
	mov	r6,(_find_volume_sloc0_1_0 + 1)
	mov	dpl,r3
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	a
	mov	r7,a
	mov	r5,a
	mov	r4,a
	mov	a,r7
	orl	_find_volume_sloc3_1_0,a
	mov	a,r6
	orl	(_find_volume_sloc3_1_0 + 1),a
	mov	a,r5
	orl	(_find_volume_sloc3_1_0 + 2),a
	mov	a,r4
	orl	(_find_volume_sloc3_1_0 + 3),a
	mov	r3,_find_volume_sloc0_1_0
	mov	r6,(_find_volume_sloc0_1_0 + 1)
	mov	dpl,r3
	mov	dph,r6
	movx	a,@dptr
	mov	r7,a
	clr	a
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	a,r7
	orl	_find_volume_sloc3_1_0,a
	mov	a,r6
	orl	(_find_volume_sloc3_1_0 + 1),a
	mov	a,r5
	orl	(_find_volume_sloc3_1_0 + 2),a
	mov	a,r4
	orl	(_find_volume_sloc3_1_0 + 3),a
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00173$
00172$:
	clr	a
	mov	_find_volume_sloc3_1_0,a
	mov	(_find_volume_sloc3_1_0 + 1),a
	mov	(_find_volume_sloc3_1_0 + 2),a
	mov	(_find_volume_sloc3_1_0 + 3),a
00173$:
	mov	dpl,_find_volume_sloc1_1_0
	mov	dph,(_find_volume_sloc1_1_0 + 1)
	mov	a,_find_volume_sloc3_1_0
	movx	@dptr,a
	mov	a,(_find_volume_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_find_volume_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_find_volume_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2261: for (i = 0; i < 4; i++)
	inc	_find_volume_sloc2_1_0
	clr	a
	cjne	a,_find_volume_sloc2_1_0,00313$
	inc	(_find_volume_sloc2_1_0 + 1)
00313$:
	clr	c
	mov	a,_find_volume_sloc2_1_0
	subb	a,#0x04
	mov	a,(_find_volume_sloc2_1_0 + 1)
	subb	a,#0x00
	jnc	00314$
	ljmp	00168$
00314$:
;	FATFS\src\ff.c:2268: P1 = 0xed;
	mov	_P1,#0xed
;	FATFS\src\ff.c:2271: do
	mov	r6,#0x00
	mov	r7,#0x00
00124$:
;	FATFS\src\ff.c:2273: bsect1 = br[i];
	mov	a,r6
	add	a,r6
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_find_volume_br_131072_180
	mov	dpl,a
	mov	a,r5
	addc	a,#(_find_volume_br_131072_180 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_find_volume_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_find_volume_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_find_volume_sloc3_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_find_volume_sloc3_1_0 + 3),a
	mov	dptr,#_find_volume_bsect1_65536_172
	mov	a,_find_volume_sloc3_1_0
	movx	@dptr,a
	mov	a,(_find_volume_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_find_volume_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_find_volume_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2274: fmt1 = bsect1 ? check_fs(fs1, bsect1) : 2;	/* Check the partition */
	mov	a,_find_volume_sloc3_1_0
	orl	a,(_find_volume_sloc3_1_0 + 1)
	orl	a,(_find_volume_sloc3_1_0 + 2)
	orl	a,(_find_volume_sloc3_1_0 + 3)
	jz	00174$
	mov	dptr,#_check_fs_PARM_2
	mov	a,_find_volume_sloc3_1_0
	movx	@dptr,a
	mov	a,(_find_volume_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_find_volume_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_find_volume_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	push	ar7
	push	ar6
	push	ar2
	push	ar1
	push	ar0
	mov	r0,#_check_fs
	mov	r1,#(_check_fs >> 8)
	mov	r2,#(_check_fs >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar6
	pop	ar7
	mov	ar4,r5
	mov	r5,#0x00
	sjmp	00175$
00174$:
	mov	r4,#0x02
	mov	r5,#0x00
00175$:
	mov	dptr,#_find_volume_fmt1_65536_172
	mov	a,r4
	movx	@dptr,a
;	FATFS\src\ff.c:2275: } while (!LD2PT(vol1) && fmt1 && ++i < 4);
	mov	a,r4
	jz	00126$
	inc	r6
	cjne	r6,#0x00,00317$
	inc	r7
00317$:
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	subb	a,#0x00
	jnc	00318$
	ljmp	00124$
00318$:
00126$:
;	FATFS\src\ff.c:2276: P1 = 0xee;
	mov	_P1,#0xee
00128$:
;	FATFS\src\ff.c:2279: P1 = 0xef;
	mov	_P1,#0xef
;	FATFS\src\ff.c:2280: if(fmt1 == 3)
	mov	dptr,#_find_volume_fmt1_65536_172
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00132$
;	FATFS\src\ff.c:2281: return FR_DISK_ERR;		/* An error occured in the disk I/O layer */
	mov	dpl,#0x01
	ljmp	__sdcc_banked_ret
00132$:
;	FATFS\src\ff.c:2283: P1 = 0xf1;
	mov	_P1,#0xf1
;	FATFS\src\ff.c:2284: if(fmt1)
	mov	a,r7
	jz	00134$
;	FATFS\src\ff.c:2285: return FR_NO_FILESYSTEM;		/* No FAT volume is found */
	mov	dpl,#0x0d
	ljmp	__sdcc_banked_ret
00134$:
;	FATFS\src\ff.c:2287: P1 = 0xf2;
	mov	_P1,#0xf2
;	FATFS\src\ff.c:2289: if (LD_WORD(fs1->win+BPB_BytsPerSec) != SS(fs1))		/* (BPB_BytsPerSec must be equal to the physical sector size) */
	mov	a,#0x26
	add	a,r0
	mov	r5,a
	clr	a
	addc	a,r1
	mov	r6,a
	mov	ar7,r2
	push	ar0
	push	ar1
	push	ar2
	mov	a,#0x0b
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,#0x0c
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,#0x00
	orl	ar5,a
	mov	a,r6
	orl	ar7,a
	cjne	r5,#0x00,00322$
	cjne	r7,#0x02,00322$
	pop	ar2
	pop	ar1
	pop	ar0
	sjmp	00136$
00322$:
	pop	ar2
	pop	ar1
	pop	ar0
;	FATFS\src\ff.c:2290: return FR_NO_FILESYSTEM;
	mov	dpl,#0x0d
	ljmp	__sdcc_banked_ret
00136$:
;	FATFS\src\ff.c:2292: P1 = 0xf3;
	mov	_P1,#0xf3
;	FATFS\src\ff.c:2293: fasize1 = LD_WORD(fs1->win+BPB_FATSz16);				/* Number of sectors per FAT */
	mov	a,#0x26
	add	a,r0
	mov	r5,a
	clr	a
	addc	a,r1
	mov	r6,a
	mov	ar7,r2
	push	ar0
	push	ar1
	push	ar2
	mov	a,#0x16
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,#0x17
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,#0x00
	orl	ar5,a
	mov	a,r6
	orl	ar7,a
	mov	r6,#0x00
	mov	r4,#0x00
	mov	dptr,#_find_volume_fasize1_65536_172
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2294: if (!fasize1) fasize1 = LD_DWORD(fs1->win+BPB_FATSz32);
	pop	ar2
	pop	ar1
	pop	ar0
	mov	a,r5
	orl	a,r7
	orl	a,r6
	orl	a,r4
	jz	00323$
	ljmp	00138$
00323$:
	mov	a,#0x26
	add	a,r0
	mov	r5,a
	clr	a
	addc	a,r1
	mov	r6,a
	mov	ar7,r2
	push	ar0
	push	ar1
	push	ar2
	mov	a,#0x24
	add	a,r5
	mov	_find_volume_sloc3_1_0,a
	clr	a
	addc	a,r6
	mov	(_find_volume_sloc3_1_0 + 1),a
	mov	(_find_volume_sloc3_1_0 + 2),r7
	mov	a,#0x27
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	r4,#0x00
	mov	(_find_volume_sloc4_1_0 + 3),r0
;	1-genFromRTrack replaced	mov	_find_volume_sloc4_1_0,#0x00
	mov	_find_volume_sloc4_1_0,r4
;	1-genFromRTrack replaced	mov	(_find_volume_sloc4_1_0 + 1),#0x00
	mov	(_find_volume_sloc4_1_0 + 1),r4
;	1-genFromRTrack replaced	mov	(_find_volume_sloc4_1_0 + 2),#0x00
	mov	(_find_volume_sloc4_1_0 + 2),r4
	mov	a,#0x26
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r1
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	mov	r4,#0x00
	mov	ar2,r4
	mov	ar3,r1
	clr	a
	mov	r1,a
	mov	r4,a
	mov	a,_find_volume_sloc4_1_0
	orl	ar1,a
	mov	a,(_find_volume_sloc4_1_0 + 1)
	orl	ar4,a
	mov	a,(_find_volume_sloc4_1_0 + 2)
	orl	ar3,a
	mov	a,(_find_volume_sloc4_1_0 + 3)
	orl	ar2,a
	mov	a,#0x25
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r5,#0x00
	mov	ar0,r7
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r5
	orl	ar1,a
	mov	a,r0
	orl	ar4,a
	mov	a,r6
	orl	ar3,a
	mov	a,r7
	orl	ar2,a
	mov	dpl,_find_volume_sloc3_1_0
	mov	dph,(_find_volume_sloc3_1_0 + 1)
	mov	b,(_find_volume_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_find_volume_fasize1_65536_172
	mov	a,r0
	orl	a,r1
	movx	@dptr,a
	mov	a,r5
	orl	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	orl	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	orl	a,r2
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2390: return FR_OK;
	pop	ar2
	pop	ar1
	pop	ar0
;	FATFS\src\ff.c:2294: if (!fasize1) fasize1 = LD_DWORD(fs1->win+BPB_FATSz32);
00138$:
;	FATFS\src\ff.c:2295: fs1->fsize = fasize1;
	mov	a,#0x0e
	add	a,r0
	mov	_find_volume_sloc4_1_0,a
	clr	a
	addc	a,r1
	mov	(_find_volume_sloc4_1_0 + 1),a
	mov	(_find_volume_sloc4_1_0 + 2),r2
	mov	dptr,#_find_volume_fasize1_65536_172
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,_find_volume_sloc4_1_0
	mov	dph,(_find_volume_sloc4_1_0 + 1)
	mov	b,(_find_volume_sloc4_1_0 + 2)
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	FATFS\src\ff.c:2297: P1 = 0xf4;
	mov	_P1,#0xf4
;	FATFS\src\ff.c:2298: fs1->n_fats = fs1->win[BPB_NumFATs];					/* Number of FAT copies */
	mov	a,#0x03
	add	a,r0
	mov	_find_volume_sloc3_1_0,a
	clr	a
	addc	a,r1
	mov	(_find_volume_sloc3_1_0 + 1),a
	mov	(_find_volume_sloc3_1_0 + 2),r2
	mov	a,#0x26
	add	a,r0
	mov	r3,a
	clr	a
	addc	a,r1
	mov	r4,a
	mov	ar7,r2
	mov	a,#0x10
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	dpl,_find_volume_sloc3_1_0
	mov	dph,(_find_volume_sloc3_1_0 + 1)
	mov	b,(_find_volume_sloc3_1_0 + 2)
	lcall	__gptrput
;	FATFS\src\ff.c:2299: if (fs1->n_fats != 1 && fs1->n_fats != 2)				/* (Must be 1 or 2) */
	mov	dpl,_find_volume_sloc3_1_0
	mov	dph,(_find_volume_sloc3_1_0 + 1)
	mov	b,(_find_volume_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	cjne	r3,#0x01,00324$
	sjmp	00140$
00324$:
	cjne	r7,#0x02,00325$
	sjmp	00140$
00325$:
;	FATFS\src\ff.c:2300: return FR_NO_FILESYSTEM;
	mov	dpl,#0x0d
	ljmp	__sdcc_banked_ret
00140$:
;	FATFS\src\ff.c:2301: fasize1 *= fs1->n_fats;								/* Number of sectors for FAT area */
	mov	dpl,_find_volume_sloc3_1_0
	mov	dph,(_find_volume_sloc3_1_0 + 1)
	mov	b,(_find_volume_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_find_volume_fasize1_65536_172
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__mullong_PARM_2
	mov	a,r7
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	push	ar2
	push	ar1
	push	ar0
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar0
	pop	ar1
	pop	ar2
	mov	dptr,#_find_volume_fasize1_65536_172
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2303: P1 = 0xf5;
	mov	_P1,#0xf5
;	FATFS\src\ff.c:2304: fs1->csize = fs1->win[BPB_SecPerClus];				/* Number of sectors per cluster */
	mov	a,#0x02
	add	a,r0
	mov	_find_volume_sloc3_1_0,a
	clr	a
	addc	a,r1
	mov	(_find_volume_sloc3_1_0 + 1),a
	mov	(_find_volume_sloc3_1_0 + 2),r2
	mov	a,#0x26
	add	a,r0
	mov	r3,a
	clr	a
	addc	a,r1
	mov	r4,a
	mov	ar7,r2
	mov	a,#0x0d
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	dpl,_find_volume_sloc3_1_0
	mov	dph,(_find_volume_sloc3_1_0 + 1)
	mov	b,(_find_volume_sloc3_1_0 + 2)
	lcall	__gptrput
;	FATFS\src\ff.c:2305: if (!fs1->csize || (fs1->csize & (fs1->csize - 1)))	/* (Must be power of 2) */
	mov	dpl,_find_volume_sloc3_1_0
	mov	dph,(_find_volume_sloc3_1_0 + 1)
	mov	b,(_find_volume_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	mov	a,r3
	jz	00142$
	mov	r6,#0x00
	mov	a,r7
	add	a,#0xff
	mov	r4,a
	mov	a,r6
	addc	a,#0xff
	mov	r5,a
	mov	a,r4
	anl	ar7,a
	mov	a,r5
	anl	ar6,a
	mov	a,r7
	orl	a,r6
	jz	00143$
00142$:
;	FATFS\src\ff.c:2306: return FR_NO_FILESYSTEM;
	mov	dpl,#0x0d
	ljmp	__sdcc_banked_ret
00143$:
;	FATFS\src\ff.c:2308: P1 = 0xf6;
	mov	_P1,#0xf6
;	FATFS\src\ff.c:2309: fs1->n_rootdir = LD_WORD(fs1->win+BPB_RootEntCnt);	/* Number of root directory entries */
	mov	a,#0x08
	add	a,r0
	mov	_find_volume_sloc0_1_0,a
	clr	a
	addc	a,r1
	mov	(_find_volume_sloc0_1_0 + 1),a
	mov	(_find_volume_sloc0_1_0 + 2),r2
	mov	a,#0x26
	add	a,r0
	mov	r3,a
	clr	a
	addc	a,r1
	mov	r4,a
	mov	ar7,r2
	push	ar0
	push	ar1
	push	ar2
	mov	a,#0x11
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r5,a
	mov	ar6,r7
	mov	a,#0x12
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r3,#0x00
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r6,#0x00
	orl	ar3,a
	mov	a,r6
	orl	ar7,a
	mov	dpl,_find_volume_sloc0_1_0
	mov	dph,(_find_volume_sloc0_1_0 + 1)
	mov	b,(_find_volume_sloc0_1_0 + 2)
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	FATFS\src\ff.c:2310: if (fs1->n_rootdir % (SS(fs1) / SZ_DIR))				/* (Must be sector aligned) */
	mov	a,r3
	anl	a,#0x0f
	jnz	00328$
	pop	ar2
	pop	ar1
	pop	ar0
	sjmp	00146$
00328$:
	pop	ar2
	pop	ar1
	pop	ar0
;	FATFS\src\ff.c:2311: return FR_NO_FILESYSTEM;
	mov	dpl,#0x0d
	ljmp	__sdcc_banked_ret
00146$:
;	FATFS\src\ff.c:2313: P1 = 0xf7;
	mov	_P1,#0xf7
;	FATFS\src\ff.c:2314: tsect1 = LD_WORD(fs1->win+BPB_TotSec16);				/* Number of sectors on the volume */
	mov	a,#0x26
	add	a,r0
	mov	r5,a
	clr	a
	addc	a,r1
	mov	r6,a
	mov	ar7,r2
	push	ar0
	push	ar1
	push	ar2
	mov	a,#0x13
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,#0x14
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,#0x00
	orl	ar5,a
	mov	a,r6
	orl	ar7,a
	mov	r6,#0x00
	mov	r4,#0x00
	mov	dptr,#_find_volume_tsect1_65536_172
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2315: if (!tsect1) tsect1 = LD_DWORD(fs1->win+BPB_TotSec32);
	pop	ar2
	pop	ar1
	pop	ar0
	mov	a,r5
	orl	a,r7
	orl	a,r6
	orl	a,r4
	jz	00329$
	ljmp	00148$
00329$:
	mov	a,#0x26
	add	a,r0
	mov	r5,a
	clr	a
	addc	a,r1
	mov	r6,a
	mov	ar7,r2
	push	ar0
	push	ar1
	push	ar2
	mov	a,#0x20
	add	a,r5
	mov	_find_volume_sloc5_1_0,a
	clr	a
	addc	a,r6
	mov	(_find_volume_sloc5_1_0 + 1),a
	mov	(_find_volume_sloc5_1_0 + 2),r7
	mov	a,#0x23
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	r4,#0x00
	mov	(_find_volume_sloc6_1_0 + 3),r0
;	1-genFromRTrack replaced	mov	_find_volume_sloc6_1_0,#0x00
	mov	_find_volume_sloc6_1_0,r4
;	1-genFromRTrack replaced	mov	(_find_volume_sloc6_1_0 + 1),#0x00
	mov	(_find_volume_sloc6_1_0 + 1),r4
;	1-genFromRTrack replaced	mov	(_find_volume_sloc6_1_0 + 2),#0x00
	mov	(_find_volume_sloc6_1_0 + 2),r4
	mov	a,#0x22
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r1
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	mov	r4,#0x00
	mov	ar2,r4
	mov	ar3,r1
	clr	a
	mov	r1,a
	mov	r4,a
	mov	a,_find_volume_sloc6_1_0
	orl	ar1,a
	mov	a,(_find_volume_sloc6_1_0 + 1)
	orl	ar4,a
	mov	a,(_find_volume_sloc6_1_0 + 2)
	orl	ar3,a
	mov	a,(_find_volume_sloc6_1_0 + 3)
	orl	ar2,a
	mov	a,#0x21
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r5,#0x00
	mov	ar0,r7
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r5
	orl	ar1,a
	mov	a,r0
	orl	ar4,a
	mov	a,r6
	orl	ar3,a
	mov	a,r7
	orl	ar2,a
	mov	dpl,_find_volume_sloc5_1_0
	mov	dph,(_find_volume_sloc5_1_0 + 1)
	mov	b,(_find_volume_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_find_volume_tsect1_65536_172
	mov	a,r0
	orl	a,r1
	movx	@dptr,a
	mov	a,r5
	orl	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	orl	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	orl	a,r2
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2390: return FR_OK;
	pop	ar2
	pop	ar1
	pop	ar0
;	FATFS\src\ff.c:2315: if (!tsect1) tsect1 = LD_DWORD(fs1->win+BPB_TotSec32);
00148$:
;	FATFS\src\ff.c:2317: P1 = 0xf8;
	mov	_P1,#0xf8
;	FATFS\src\ff.c:2318: nrsv1 = LD_WORD(fs1->win+BPB_RsvdSecCnt);				/* Number of reserved sectors */
	mov	a,#0x26
	add	a,r0
	mov	r5,a
	clr	a
	addc	a,r1
	mov	r6,a
	mov	ar7,r2
	push	ar0
	push	ar1
	push	ar2
	mov	a,#0x0e
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,#0x0f
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,#0x00
	orl	a,r5
	mov	_find_volume_sloc6_1_0,a
	mov	a,r6
	orl	a,r7
	mov	(_find_volume_sloc6_1_0 + 1),a
;	FATFS\src\ff.c:2319: if (!nrsv1) return FR_NO_FILESYSTEM;					/* (Must not be 0) */
	pop	ar2
	pop	ar1
	pop	ar0
	mov	a,_find_volume_sloc6_1_0
	orl	a,(_find_volume_sloc6_1_0 + 1)
	jnz	00150$
	mov	dpl,#0x0d
	ljmp	__sdcc_banked_ret
00150$:
;	FATFS\src\ff.c:2321: P1 = 0xf9;
	push	ar0
	push	ar1
	push	ar2
	mov	_P1,#0xf9
;	FATFS\src\ff.c:2323: sysect1 = nrsv1 + fasize1 + fs1->n_rootdir / (SS(fs1) / SZ_DIR);	/* RSV+FAT+DIR */
	mov	dptr,#_find_volume_fasize1_65536_172
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	mov	(_find_volume_sloc6_1_0 + 2),a
	mov	(_find_volume_sloc6_1_0 + 3),a
	mov	a,r4
	add	a,_find_volume_sloc6_1_0
	mov	r4,a
	mov	a,r5
	addc	a,(_find_volume_sloc6_1_0 + 1)
	mov	r5,a
	mov	a,r6
	addc	a,(_find_volume_sloc6_1_0 + 2)
	mov	r6,a
	mov	a,r7
	addc	a,(_find_volume_sloc6_1_0 + 3)
	mov	r7,a
	mov	dpl,_find_volume_sloc0_1_0
	mov	dph,(_find_volume_sloc0_1_0 + 1)
	mov	b,(_find_volume_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
	mov	ar0,r2
	mov	ar1,r3
	clr	a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	add	a,r4
	mov	_find_volume_sloc7_1_0,a
	mov	a,r1
	addc	a,r5
	mov	(_find_volume_sloc7_1_0 + 1),a
	mov	a,r2
	addc	a,r6
	mov	(_find_volume_sloc7_1_0 + 2),a
	mov	a,r3
	addc	a,r7
	mov	(_find_volume_sloc7_1_0 + 3),a
;	FATFS\src\ff.c:2324: if (tsect1 < sysect1) return FR_NO_FILESYSTEM;		/* (Invalid volume size) */
	mov	dptr,#_find_volume_tsect1_65536_172
	movx	a,@dptr
	mov	_find_volume_sloc8_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_find_volume_sloc8_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_find_volume_sloc8_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_find_volume_sloc8_1_0 + 3),a
	clr	c
	mov	a,_find_volume_sloc8_1_0
	subb	a,_find_volume_sloc7_1_0
	mov	a,(_find_volume_sloc8_1_0 + 1)
	subb	a,(_find_volume_sloc7_1_0 + 1)
	mov	a,(_find_volume_sloc8_1_0 + 2)
	subb	a,(_find_volume_sloc7_1_0 + 2)
	mov	a,(_find_volume_sloc8_1_0 + 3)
	subb	a,(_find_volume_sloc7_1_0 + 3)
	pop	ar2
	pop	ar1
	pop	ar0
	jnc	00152$
	mov	dpl,#0x0d
	ljmp	__sdcc_banked_ret
00152$:
;	FATFS\src\ff.c:2325: nclst1 = (tsect1 - sysect1) / fs1->csize;				/* Number of clusters */
	mov	a,_find_volume_sloc8_1_0
	clr	c
	subb	a,_find_volume_sloc7_1_0
	mov	r4,a
	mov	a,(_find_volume_sloc8_1_0 + 1)
	subb	a,(_find_volume_sloc7_1_0 + 1)
	mov	r5,a
	mov	a,(_find_volume_sloc8_1_0 + 2)
	subb	a,(_find_volume_sloc7_1_0 + 2)
	mov	r6,a
	mov	a,(_find_volume_sloc8_1_0 + 3)
	subb	a,(_find_volume_sloc7_1_0 + 3)
	mov	r7,a
	mov	dpl,_find_volume_sloc3_1_0
	mov	dph,(_find_volume_sloc3_1_0 + 1)
	mov	b,(_find_volume_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	dptr,#__divulong_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2326: if (!nclst1) return FR_NO_FILESYSTEM;				/* (Invalid volume size) */
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar2
	push	ar1
	push	ar0
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar0
	pop	ar1
	pop	ar2
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00154$
	mov	dpl,#0x0d
	ljmp	__sdcc_banked_ret
00154$:
;	FATFS\src\ff.c:2327: fmt1 = FS_FAT12;
	mov	dptr,#_find_volume_fmt1_65536_172
	mov	a,#0x01
	movx	@dptr,a
;	FATFS\src\ff.c:2328: if (nclst1 >= MIN_FAT16) fmt1 = FS_FAT16;
	clr	c
	mov	a,r4
	subb	a,#0xf6
	mov	a,r5
	subb	a,#0x0f
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00156$
	mov	dptr,#_find_volume_fmt1_65536_172
	mov	a,#0x02
	movx	@dptr,a
00156$:
;	FATFS\src\ff.c:2329: if (nclst1 >= MIN_FAT32) fmt1 = FS_FAT32;
	clr	c
	mov	a,r4
	subb	a,#0xf6
	mov	a,r5
	subb	a,#0xff
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00158$
	mov	dptr,#_find_volume_fmt1_65536_172
	mov	a,#0x03
	movx	@dptr,a
00158$:
;	FATFS\src\ff.c:2331: P1 = 0xfa;
	mov	_P1,#0xfa
;	FATFS\src\ff.c:2333: fs1->n_fatent = nclst1 + 2;							/* Number of FAT entries */
	mov	a,#0x0a
	add	a,r0
	mov	_find_volume_sloc8_1_0,a
	clr	a
	addc	a,r1
	mov	(_find_volume_sloc8_1_0 + 1),a
	mov	(_find_volume_sloc8_1_0 + 2),r2
	mov	a,#0x02
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,_find_volume_sloc8_1_0
	mov	dph,(_find_volume_sloc8_1_0 + 1)
	mov	b,(_find_volume_sloc8_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	FATFS\src\ff.c:2334: fs1->volbase = bsect1;								/* Volume start sector */
	mov	a,#0x12
	add	a,r0
	mov	_find_volume_sloc5_1_0,a
	clr	a
	addc	a,r1
	mov	(_find_volume_sloc5_1_0 + 1),a
	mov	(_find_volume_sloc5_1_0 + 2),r2
	mov	dptr,#_find_volume_bsect1_65536_172
	movx	a,@dptr
	mov	_find_volume_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_find_volume_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_find_volume_sloc3_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_find_volume_sloc3_1_0 + 3),a
	mov	dpl,_find_volume_sloc5_1_0
	mov	dph,(_find_volume_sloc5_1_0 + 1)
	mov	b,(_find_volume_sloc5_1_0 + 2)
	mov	a,_find_volume_sloc3_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_find_volume_sloc3_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_find_volume_sloc3_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_find_volume_sloc3_1_0 + 3)
	lcall	__gptrput
;	FATFS\src\ff.c:2335: fs1->fatbase = bsect1 + nrsv1; 						/* FAT start sector */
	mov	a,#0x16
	add	a,r0
	mov	_find_volume_sloc5_1_0,a
	clr	a
	addc	a,r1
	mov	(_find_volume_sloc5_1_0 + 1),a
	mov	(_find_volume_sloc5_1_0 + 2),r2
	mov	a,_find_volume_sloc6_1_0
	add	a,_find_volume_sloc3_1_0
	mov	r4,a
	mov	a,(_find_volume_sloc6_1_0 + 1)
	addc	a,(_find_volume_sloc3_1_0 + 1)
	mov	r5,a
	mov	a,(_find_volume_sloc6_1_0 + 2)
	addc	a,(_find_volume_sloc3_1_0 + 2)
	mov	r6,a
	mov	a,(_find_volume_sloc6_1_0 + 3)
	addc	a,(_find_volume_sloc3_1_0 + 3)
	mov	r7,a
	mov	dpl,_find_volume_sloc5_1_0
	mov	dph,(_find_volume_sloc5_1_0 + 1)
	mov	b,(_find_volume_sloc5_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	FATFS\src\ff.c:2336: fs1->database = bsect1 + sysect1;						/* Data start sector */
	mov	a,#0x1e
	add	a,r0
	mov	r5,a
	clr	a
	addc	a,r1
	mov	r6,a
	mov	ar7,r2
	push	ar0
	push	ar1
	push	ar2
	mov	a,_find_volume_sloc7_1_0
	add	a,_find_volume_sloc3_1_0
	mov	r1,a
	mov	a,(_find_volume_sloc7_1_0 + 1)
	addc	a,(_find_volume_sloc3_1_0 + 1)
	mov	r2,a
	mov	a,(_find_volume_sloc7_1_0 + 2)
	addc	a,(_find_volume_sloc3_1_0 + 2)
	mov	r3,a
	mov	a,(_find_volume_sloc7_1_0 + 3)
	addc	a,(_find_volume_sloc3_1_0 + 3)
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	FATFS\src\ff.c:2337: if (fmt1 == FS_FAT32) {
	mov	dptr,#_find_volume_fmt1_65536_172
	movx	a,@dptr
	mov	_find_volume_sloc7_1_0,a
	mov	a,#0x03
	cjne	a,_find_volume_sloc7_1_0,00335$
	sjmp	00336$
00335$:
	pop	ar2
	pop	ar1
	pop	ar0
	ljmp	00164$
00336$:
	pop	ar2
	pop	ar1
	pop	ar0
;	FATFS\src\ff.c:2338: if (fs1->n_rootdir) return FR_NO_FILESYSTEM;		/* (BPB_RootEntCnt must be 0) */
	mov	dpl,_find_volume_sloc0_1_0
	mov	dph,(_find_volume_sloc0_1_0 + 1)
	mov	b,(_find_volume_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	orl	a,r6
	jz	00160$
	mov	dpl,#0x0d
	ljmp	__sdcc_banked_ret
00160$:
;	FATFS\src\ff.c:2339: fs1->dirbase = LD_DWORD(fs1->win+BPB_RootClus);	/* Root directory start cluster */
	mov	a,#0x1a
	add	a,r0
	mov	_find_volume_sloc6_1_0,a
	clr	a
	addc	a,r1
	mov	(_find_volume_sloc6_1_0 + 1),a
	mov	(_find_volume_sloc6_1_0 + 2),r2
	mov	a,#0x26
	add	a,r0
	mov	r3,a
	clr	a
	addc	a,r1
	mov	r4,a
	mov	ar7,r2
	push	ar0
	push	ar1
	push	ar2
	mov	a,#0x2c
	add	a,r3
	mov	_find_volume_sloc3_1_0,a
	clr	a
	addc	a,r4
	mov	(_find_volume_sloc3_1_0 + 1),a
	mov	(_find_volume_sloc3_1_0 + 2),r7
	mov	a,#0x2f
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar6,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	lcall	__gptrget
	mov	r0,a
	mov	r6,#0x00
	mov	(_find_volume_sloc9_1_0 + 3),r0
;	1-genFromRTrack replaced	mov	_find_volume_sloc9_1_0,#0x00
	mov	_find_volume_sloc9_1_0,r6
;	1-genFromRTrack replaced	mov	(_find_volume_sloc9_1_0 + 1),#0x00
	mov	(_find_volume_sloc9_1_0 + 1),r6
;	1-genFromRTrack replaced	mov	(_find_volume_sloc9_1_0 + 2),#0x00
	mov	(_find_volume_sloc9_1_0 + 2),r6
	mov	a,#0x2e
	add	a,r3
	mov	r1,a
	clr	a
	addc	a,r4
	mov	r5,a
	mov	ar6,r7
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r5,a
	mov	r6,#0x00
	mov	ar2,r6
	mov	ar1,r5
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,_find_volume_sloc9_1_0
	orl	ar5,a
	mov	a,(_find_volume_sloc9_1_0 + 1)
	orl	ar6,a
	mov	a,(_find_volume_sloc9_1_0 + 2)
	orl	ar1,a
	mov	a,(_find_volume_sloc9_1_0 + 3)
	orl	ar2,a
	mov	a,#0x2d
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r3,#0x00
	mov	ar0,r7
	clr	a
	mov	r4,a
	mov	r7,a
	mov	a,r3
	orl	ar5,a
	mov	a,r0
	orl	ar6,a
	mov	a,r4
	orl	ar1,a
	mov	a,r7
	orl	ar2,a
	mov	dpl,_find_volume_sloc3_1_0
	mov	dph,(_find_volume_sloc3_1_0 + 1)
	mov	b,(_find_volume_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	clr	a
	mov	r3,a
	mov	r4,a
	mov	r7,a
	mov	a,r0
	orl	ar5,a
	mov	a,r3
	orl	ar6,a
	mov	a,r4
	orl	ar1,a
	mov	a,r7
	orl	ar2,a
	mov	dpl,_find_volume_sloc6_1_0
	mov	dph,(_find_volume_sloc6_1_0 + 1)
	mov	b,(_find_volume_sloc6_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
;	FATFS\src\ff.c:2340: szbfat1 = fs1->n_fatent * 4;						/* (Needed FAT size) */
	mov	dpl,_find_volume_sloc8_1_0
	mov	dph,(_find_volume_sloc8_1_0 + 1)
	mov	b,(_find_volume_sloc8_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	dptr,#_find_volume_szbfat1_65536_172
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	pop	ar2
	pop	ar1
	pop	ar0
	ljmp	00165$
00164$:
;	FATFS\src\ff.c:2342: if (!fs1->n_rootdir)	return FR_NO_FILESYSTEM;	/* (BPB_RootEntCnt must not be 0) */
	mov	dpl,_find_volume_sloc0_1_0
	mov	dph,(_find_volume_sloc0_1_0 + 1)
	mov	b,(_find_volume_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	orl	a,r6
	jnz	00162$
	mov	dpl,#0x0d
	ljmp	__sdcc_banked_ret
00162$:
;	FATFS\src\ff.c:2343: fs1->dirbase = fs1->fatbase + fasize1;				/* Root directory start sector */
	mov	a,#0x1a
	add	a,r0
	mov	_find_volume_sloc9_1_0,a
	clr	a
	addc	a,r1
	mov	(_find_volume_sloc9_1_0 + 1),a
	mov	(_find_volume_sloc9_1_0 + 2),r2
	push	ar0
	push	ar1
	push	ar2
	mov	dpl,_find_volume_sloc5_1_0
	mov	dph,(_find_volume_sloc5_1_0 + 1)
	mov	b,(_find_volume_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_find_volume_fasize1_65536_172
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r0
	add	a,r1
	mov	r1,a
	mov	a,r5
	addc	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	dpl,_find_volume_sloc9_1_0
	mov	dph,(_find_volume_sloc9_1_0 + 1)
	mov	b,(_find_volume_sloc9_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	FATFS\src\ff.c:2344: szbfat1 = (fmt1 == FS_FAT16) ?					/* (Needed FAT size) */
	mov	a,#0x02
	cjne	a,_find_volume_sloc7_1_0,00339$
	sjmp	00340$
00339$:
	pop	ar2
	pop	ar1
	pop	ar0
	sjmp	00176$
00340$:
	pop	ar2
	pop	ar1
	pop	ar0
;	FATFS\src\ff.c:2345: fs1->n_fatent * 2 : fs1->n_fatent * 3 / 2 + (fs1->n_fatent & 1);
	mov	dpl,_find_volume_sloc8_1_0
	mov	dph,(_find_volume_sloc8_1_0 + 1)
	mov	b,(_find_volume_sloc8_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	sjmp	00177$
00176$:
	push	ar0
	push	ar1
	push	ar2
	mov	dpl,_find_volume_sloc8_1_0
	mov	dph,(_find_volume_sloc8_1_0 + 1)
	mov	b,(_find_volume_sloc8_1_0 + 2)
	lcall	__gptrget
	mov	_find_volume_sloc9_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_find_volume_sloc9_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_find_volume_sloc9_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_find_volume_sloc9_1_0 + 3),a
	mov	dptr,#__mullong_PARM_2
	mov	a,_find_volume_sloc9_1_0
	movx	@dptr,a
	mov	a,(_find_volume_sloc9_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_find_volume_sloc9_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_find_volume_sloc9_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(0x03&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	clr	c
	rrc	a
	mov	(_find_volume_sloc8_1_0 + 3),a
	mov	a,r2
	rrc	a
	mov	(_find_volume_sloc8_1_0 + 2),a
	mov	a,r1
	rrc	a
	mov	(_find_volume_sloc8_1_0 + 1),a
	mov	a,r0
	rrc	a
	mov	_find_volume_sloc8_1_0,a
	mov	a,#0x01
	anl	a,_find_volume_sloc9_1_0
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	add	a,_find_volume_sloc8_1_0
	mov	r4,a
	mov	a,r1
	addc	a,(_find_volume_sloc8_1_0 + 1)
	mov	r5,a
	mov	a,r2
	addc	a,(_find_volume_sloc8_1_0 + 2)
	mov	r6,a
	mov	a,r3
	addc	a,(_find_volume_sloc8_1_0 + 3)
	mov	r7,a
;	FATFS\src\ff.c:2390: return FR_OK;
	pop	ar2
	pop	ar1
	pop	ar0
;	FATFS\src\ff.c:2345: fs1->n_fatent * 2 : fs1->n_fatent * 3 / 2 + (fs1->n_fatent & 1);
00177$:
	mov	dptr,#_find_volume_szbfat1_65536_172
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00165$:
;	FATFS\src\ff.c:2347: P1 = 0xfb;
	push	ar0
	push	ar1
	push	ar2
	mov	_P1,#0xfb
;	FATFS\src\ff.c:2348: if (fs1->fsize < (szbfat1 + (SS(fs1) - 1)) / SS(fs1))	/* (BPB_FATSz must not be less than needed) */
	mov	dpl,_find_volume_sloc4_1_0
	mov	dph,(_find_volume_sloc4_1_0 + 1)
	mov	b,(_find_volume_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_find_volume_szbfat1_65536_172
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0xff
	add	a,r0
	mov	a,#0x01
	addc	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,#0x00
	clr	c
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r1
	rrc	a
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r5
	subb	a,r1
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	pop	ar2
	pop	ar1
	pop	ar0
	jnc	00167$
;	FATFS\src\ff.c:2349: return FR_NO_FILESYSTEM;
	mov	dpl,#0x0d
	sjmp	00170$
00167$:
;	FATFS\src\ff.c:2351: P1 = 0xfc;
	mov	_P1,#0xfc
;	FATFS\src\ff.c:2379: P1 = 0xfe;
	mov	_P1,#0xfe
;	FATFS\src\ff.c:2380: fs1->fs_type = fmt1;	/* FAT sub-type */
	mov	dptr,#_find_volume_fmt1_65536_172
	movx	a,@dptr
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrput
;	FATFS\src\ff.c:2381: fs1->id = ++Fsid;	/* File system mount ID */
	mov	a,#0x06
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dptr,#_Fsid
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_Fsid
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	FATFS\src\ff.c:2388: P1 = 0xff;
	mov	_P1,#0xff
;	FATFS\src\ff.c:2390: return FR_OK;
	mov	dpl,#0x00
00170$:
;	FATFS\src\ff.c:2391: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'validate'
;------------------------------------------------------------
;sloc0                     Allocated with name '_validate_sloc0_1_0'
;obj                       Allocated with name '_validate_obj_65536_186'
;fil                       Allocated with name '_validate_fil_65536_187'
;------------------------------------------------------------
;	FATFS\src\ff.c:2401: FRESULT validate (	/* FR_OK(0): The object is valid, !=0: Invalid */
;	-----------------------------------------
;	 function validate
;	-----------------------------------------
_validate:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_validate_obj_65536_186
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2405: FIL *fil = (FIL*)obj;	/* Assuming offset of .fs and .id in the FIL/DIR structure is identical */
	mov	dptr,#_validate_obj_65536_186
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_validate_sloc0_1_0,r5
	mov	(_validate_sloc0_1_0 + 1),r6
	mov	(_validate_sloc0_1_0 + 2),r7
;	FATFS\src\ff.c:2408: if (!fil || !fil->fs || !fil->fs->fs_type || fil->fs->id != fil->id)
	mov	a,_validate_sloc0_1_0
	orl	a,(_validate_sloc0_1_0 + 1)
	jz	00101$
	mov	dpl,_validate_sloc0_1_0
	mov	dph,(_validate_sloc0_1_0 + 1)
	mov	b,(_validate_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jz	00101$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	00101$
	mov	a,#0x06
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	a,#0x03
	add	a,_validate_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_validate_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_validate_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r0
	cjne	a,ar5,00129$
	mov	a,r1
	cjne	a,ar6,00129$
	sjmp	00102$
00129$:
00101$:
;	FATFS\src\ff.c:2409: return FR_INVALID_OBJECT;
	mov	dpl,#0x09
	sjmp	00108$
00102$:
;	FATFS\src\ff.c:2413: if (disk_status(fil->fs->drv) & STA_NOINIT)
	inc	r2
	cjne	r2,#0x00,00130$
	inc	r3
00130$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	mov	r0,#_disk_status
	mov	r1,#(_disk_status >> 8)
	mov	r2,#(_disk_status >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	jnb	acc.0,00107$
;	FATFS\src\ff.c:2414: return FR_NOT_READY;
	mov	dpl,#0x03
	sjmp	00108$
00107$:
;	FATFS\src\ff.c:2416: return FR_OK;
	mov	dpl,#0x00
00108$:
;	FATFS\src\ff.c:2417: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_mount'
;------------------------------------------------------------
;path                      Allocated with name '_f_mount_PARM_2'
;opt                       Allocated with name '_f_mount_PARM_3'
;fs                        Allocated with name '_f_mount_fs_65536_188'
;cfs                       Allocated with name '_f_mount_cfs_65536_189'
;vol                       Allocated with name '_f_mount_vol_65536_189'
;res                       Allocated with name '_f_mount_res_65536_189'
;rp                        Allocated with name '_f_mount_rp_65536_189'
;------------------------------------------------------------
;	FATFS\src\ff.c:2434: FRESULT f_mount (
;	-----------------------------------------
;	 function f_mount
;	-----------------------------------------
_f_mount:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_mount_fs_65536_188
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2443: const TCHAR *rp = path;
	mov	dptr,#_f_mount_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_mount_rp_65536_189
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2446: vol = get_ldnumber(&rp);
	mov	dptr,#_f_mount_rp_65536_189
	mov	b,#0x00
	mov	r0,#_get_ldnumber
	mov	r1,#(_get_ldnumber >> 8)
	mov	r2,#(_get_ldnumber >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
;	FATFS\src\ff.c:2447: if (vol < 0) return FR_INVALID_DRIVE;
	mov	a,dph
	mov	r7,a
	jnb	acc.7,00102$
	mov	dpl,#0x0b
	ljmp	__sdcc_banked_ret
00102$:
;	FATFS\src\ff.c:2448: cfs = FatFs[vol];					/* Pointer to fs object */
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_FatFs
	mov	r6,a
	mov	a,r7
	addc	a,#(_FatFs >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	FATFS\src\ff.c:2450: if (cfs) {
	mov	a,r3
	orl	a,r4
	jz	00104$
;	FATFS\src\ff.c:2457: cfs->fs_type = 0;				/* Clear old fs object */
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
00104$:
;	FATFS\src\ff.c:2460: if (fs) {
	mov	dptr,#_f_mount_fs_65536_188
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_f_mount_fs_65536_188
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00106$
;	FATFS\src\ff.c:2461: fs->fs_type = 0;				/* Clear new fs object */
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
00106$:
;	FATFS\src\ff.c:2466: FatFs[vol] = fs;					/* Register new fs object */
	mov	dptr,#_f_mount_fs_65536_188
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2468: if (!fs || opt != 1) return FR_OK;	/* Do not mount now, it will be mounted later */
	mov	dptr,#_f_mount_fs_65536_188
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00107$
	mov	dptr,#_f_mount_PARM_3
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00132$
	sjmp	00108$
00132$:
00107$:
	mov	dpl,#0x00
	sjmp	00110$
00108$:
;	FATFS\src\ff.c:2470: res = find_volume(&fs, &path, 0);	/* Force mounted the volume */
	mov	dptr,#_find_volume_PARM_2
	mov	a,#_f_mount_PARM_2
	movx	@dptr,a
	mov	a,#(_f_mount_PARM_2 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_find_volume_PARM_3
	movx	@dptr,a
	mov	dptr,#_f_mount_fs_65536_188
	mov	b,#0x00
	mov	r0,#_find_volume
	mov	r1,#(_find_volume >> 8)
	mov	r2,#(_find_volume >> 16)
	lcall	__sdcc_banked_call
;	FATFS\src\ff.c:2471: LEAVE_FF(fs, res);
	mov  r7,dpl
00110$:
;	FATFS\src\ff.c:2472: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_open'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_open_sloc0_1_0'
;sloc1                     Allocated with name '_f_open_sloc1_1_0'
;sloc2                     Allocated with name '_f_open_sloc2_1_0'
;path                      Allocated with name '_f_open_PARM_2'
;mode                      Allocated with name '_f_open_PARM_3'
;fp                        Allocated with name '_f_open_fp_65536_192'
;res                       Allocated with name '_f_open_res_65536_193'
;dj                        Allocated with name '_f_open_dj_65536_193'
;dir                       Allocated with name '_f_open_dir_65536_193'
;sfn                       Allocated with name '_f_open_sfn_65536_193'
;lfn                       Allocated with name '_f_open_lfn_65536_193'
;------------------------------------------------------------
;	FATFS\src\ff.c:2481: FRESULT f_open (
;	-----------------------------------------
;	 function f_open
;	-----------------------------------------
_f_open:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_open_fp_65536_192
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2492: P1 = 0xC1;
	mov	_P1,#0xc1
;	FATFS\src\ff.c:2493: if (!fp)
	mov	dptr,#_f_open_fp_65536_192
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_open_fp_65536_192
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
;	FATFS\src\ff.c:2494: return FR_INVALID_OBJECT;
	mov	dpl,#0x09
	ljmp	__sdcc_banked_ret
00102$:
;	FATFS\src\ff.c:2495: fp->fs = 0;			/* Clear file object */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\ff.c:2497: P1 = 0xC2;
	mov	_P1,#0xc2
;	FATFS\src\ff.c:2503: P1 = 0xC3;
	mov	_P1,#0xc3
;	FATFS\src\ff.c:2504: mode &= FA_READ;
	mov	dptr,#_f_open_PARM_3
	movx	a,@dptr
	anl	acc,#0x01
	movx	@dptr,a
;	FATFS\src\ff.c:2505: res = find_volume(&dj.fs, &path, 0);
	mov	dptr,#_find_volume_PARM_2
	mov	a,#_f_open_PARM_2
	movx	@dptr,a
	mov	a,#(_f_open_PARM_2 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_find_volume_PARM_3
	movx	@dptr,a
	mov	dptr,#_f_open_dj_65536_193
	mov	b,#0x00
	mov	r0,#_find_volume
	mov	r1,#(_find_volume >> 8)
	mov	r2,#(_find_volume >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	dptr,#_f_open_res_65536_193
	mov	a,r7
	movx	@dptr,a
;	FATFS\src\ff.c:2506: P1 = 0xC4;
	mov	_P1,#0xc4
;	FATFS\src\ff.c:2508: P1 = 0xC5;
	mov	_P1,#0xc5
;	FATFS\src\ff.c:2509: if (res == FR_OK)
	mov	a,r7
	jz	00147$
	ljmp	00115$
00147$:
;	FATFS\src\ff.c:2511: P1 = 0xC6;
	mov	_P1,#0xc6
;	FATFS\src\ff.c:2512: INIT_BUF(dj);
	mov	dptr,#0x0200
	mov	r0,#_ff_memalloc
	mov	r1,#(_ff_memalloc >> 8)
	mov	r2,#(_ff_memalloc >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jnz	00104$
	mov	dpl,#0x11
	ljmp	__sdcc_banked_ret
00104$:
	mov	dptr,#(_f_open_dj_65536_193 + 0x0019)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_f_open_dj_65536_193 + 0x0016)
	mov	a,#_f_open_sfn_65536_193
	movx	@dptr,a
	mov	a,#(_f_open_sfn_65536_193 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2514: P1 = 0xC7;
	mov	_P1,#0xc7
;	FATFS\src\ff.c:2515: res = follow_path(&dj, path);	/* Follow the file path */
	mov	dptr,#_f_open_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_follow_path_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_open_dj_65536_193
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_follow_path
	mov	r1,#(_follow_path >> 8)
	mov	r2,#(_follow_path >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_f_open_res_65536_193
	mov	a,r4
	movx	@dptr,a
;	FATFS\src\ff.c:2516: dir = dj.dir;
	mov	dptr,#(_f_open_dj_65536_193 + 0x0013)
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_f_open_dir_65536_193
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2518: P1 = 0xC8;
	mov	_P1,#0xc8
;	FATFS\src\ff.c:2601: if (res == FR_OK)
	mov	a,r4
	jnz	00111$
;	FATFS\src\ff.c:2603: P1 = 0xCD;
	mov	_P1,#0xcd
;	FATFS\src\ff.c:2604: dir = dj.dir;
	mov	dptr,#_f_open_dir_65536_193
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2605: if (!dir) {						/* Current directory itself */
	mov	a,r1
	orl	a,r2
	jnz	00108$
;	FATFS\src\ff.c:2606: res = FR_INVALID_NAME;
	mov	dptr,#_f_open_res_65536_193
	mov	a,#0x06
	movx	@dptr,a
	sjmp	00111$
00108$:
;	FATFS\src\ff.c:2608: if (dir[DIR_Attr] & AM_DIR)	/* It is a directory */
	mov	a,#0x0b
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	jnb	acc.4,00111$
;	FATFS\src\ff.c:2609: res = FR_NO_FILE;
	mov	dptr,#_f_open_res_65536_193
	mov	a,#0x04
	movx	@dptr,a
00111$:
;	FATFS\src\ff.c:2613: P1 = 0xCE;
	mov	_P1,#0xce
;	FATFS\src\ff.c:2614: FREE_BUF();
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_ff_memfree
	mov	r1,#(_ff_memfree >> 8)
	mov	r2,#(_ff_memfree >> 16)
	lcall	__sdcc_banked_call
;	FATFS\src\ff.c:2616: P1 = 0xCF;
	mov	_P1,#0xcf
;	FATFS\src\ff.c:2617: if (res == FR_OK)
	mov	dptr,#_f_open_res_65536_193
	movx	a,@dptr
	jz	00152$
	ljmp	00115$
00152$:
;	FATFS\src\ff.c:2619: fp->flag = mode;					/* File access mode */
	mov	dptr,#_f_open_fp_65536_192
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#_f_open_PARM_3
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	FATFS\src\ff.c:2620: fp->err = 0;						/* Clear error flag */
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	FATFS\src\ff.c:2621: fp->sclust = ld_clust(dj.fs, dir);	/* File start cluster */
	mov	a,#0x0f
	add	a,r5
	mov	_f_open_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_open_sloc0_1_0 + 1),a
	mov	(_f_open_sloc0_1_0 + 2),r7
	mov	dptr,#_f_open_dj_65536_193
	movx	a,@dptr
	mov	_f_open_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc1_1_0 + 2),a
	mov	dptr,#_f_open_dir_65536_193
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_ld_clust_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_open_sloc1_1_0
	mov	dph,(_f_open_sloc1_1_0 + 1)
	mov	b,(_f_open_sloc1_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_ld_clust
	mov	r1,#(_ld_clust >> 8)
	mov	r2,#(_ld_clust >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r1,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,_f_open_sloc0_1_0
	mov	dph,(_f_open_sloc0_1_0 + 1)
	mov	b,(_f_open_sloc0_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	FATFS\src\ff.c:2622: fp->fsize = LD_DWORD(dir+DIR_FileSize);	/* File size */
	mov	a,#0x0b
	add	a,r5
	mov	_f_open_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_open_sloc1_1_0 + 1),a
	mov	(_f_open_sloc1_1_0 + 2),r7
	mov	dptr,#_f_open_dir_65536_193
	movx	a,@dptr
	mov	_f_open_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc0_1_0 + 2),a
	mov	a,#0x1f
	add	a,_f_open_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_f_open_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_f_open_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	mov	r4,#0x00
	mov	(_f_open_sloc2_1_0 + 3),r1
;	1-genFromRTrack replaced	mov	_f_open_sloc2_1_0,#0x00
	mov	_f_open_sloc2_1_0,r4
;	1-genFromRTrack replaced	mov	(_f_open_sloc2_1_0 + 1),#0x00
	mov	(_f_open_sloc2_1_0 + 1),r4
;	1-genFromRTrack replaced	mov	(_f_open_sloc2_1_0 + 2),#0x00
	mov	(_f_open_sloc2_1_0 + 2),r4
	mov	a,#0x1e
	add	a,_f_open_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_open_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_f_open_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	r4,#0x00
	mov	ar2,r4
	mov	ar3,r0
	clr	a
	mov	r4,a
	orl	_f_open_sloc2_1_0,a
	mov	a,r4
	orl	(_f_open_sloc2_1_0 + 1),a
	mov	a,r3
	orl	(_f_open_sloc2_1_0 + 2),a
	mov	a,r2
	orl	(_f_open_sloc2_1_0 + 3),a
	mov	a,#0x1d
	add	a,_f_open_sloc0_1_0
	mov	r1,a
	clr	a
	addc	a,(_f_open_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_f_open_sloc0_1_0 + 2)
	mov	dpl,r1
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	clr	a
	mov	r1,a
	mov	r3,a
	mov	r2,a
	mov	a,r1
	orl	_f_open_sloc2_1_0,a
	mov	a,r4
	orl	(_f_open_sloc2_1_0 + 1),a
	mov	a,r3
	orl	(_f_open_sloc2_1_0 + 2),a
	mov	a,r2
	orl	(_f_open_sloc2_1_0 + 3),a
	mov	a,#0x1c
	add	a,_f_open_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_open_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_f_open_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	clr	a
	mov	r3,a
	mov	r4,a
	mov	r2,a
	mov	a,_f_open_sloc2_1_0
	orl	ar0,a
	mov	a,(_f_open_sloc2_1_0 + 1)
	orl	ar3,a
	mov	a,(_f_open_sloc2_1_0 + 2)
	orl	ar4,a
	mov	a,(_f_open_sloc2_1_0 + 3)
	orl	ar2,a
	mov	dpl,_f_open_sloc1_1_0
	mov	dph,(_f_open_sloc1_1_0 + 1)
	mov	b,(_f_open_sloc1_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
;	FATFS\src\ff.c:2623: fp->fptr = 0;						/* File pointer */
	mov	a,#0x07
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\ff.c:2624: fp->dsect = 0;
	mov	a,#0x17
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\ff.c:2626: fp->cltbl = 0;						/* Normal seek mode */
	mov	a,#0x1b
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\ff.c:2628: fp->fs = dj.fs;	 					/* Validate file object */
	mov	dptr,#_f_open_dj_65536_193
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	FATFS\src\ff.c:2629: fp->id = fp->fs->id;
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x06
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
00115$:
;	FATFS\src\ff.c:2633: P1 = 0xD1;
	mov	_P1,#0xd1
;	FATFS\src\ff.c:2634: LEAVE_FF(dj.fs, res);
	mov	dptr,#_f_open_res_65536_193
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
;	FATFS\src\ff.c:2636: P1 = 0xD2;
;	FATFS\src\ff.c:2637: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_read'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_read_sloc0_1_0'
;sloc1                     Allocated with name '_f_read_sloc1_1_0'
;sloc2                     Allocated with name '_f_read_sloc2_1_0'
;sloc3                     Allocated with name '_f_read_sloc3_1_0'
;sloc4                     Allocated with name '_f_read_sloc4_1_0'
;sloc5                     Allocated with name '_f_read_sloc5_1_0'
;sloc6                     Allocated with name '_f_read_sloc6_1_0'
;sloc7                     Allocated with name '_f_read_sloc7_1_0'
;sloc8                     Allocated with name '_f_read_sloc8_1_0'
;sloc9                     Allocated with name '_f_read_sloc9_1_0'
;buff                      Allocated with name '_f_read_PARM_2'
;btr                       Allocated with name '_f_read_PARM_3'
;br                        Allocated with name '_f_read_PARM_4'
;fp                        Allocated with name '_f_read_fp_65536_200'
;res                       Allocated with name '_f_read_res_65536_201'
;clst                      Allocated with name '_f_read_clst_65536_201'
;sect                      Allocated with name '_f_read_sect_65536_201'
;remain                    Allocated with name '_f_read_remain_65536_201'
;rcnt                      Allocated with name '_f_read_rcnt_65536_201'
;cc                        Allocated with name '_f_read_cc_65536_201'
;csect                     Allocated with name '_f_read_csect_65536_201'
;rbuff                     Allocated with name '_f_read_rbuff_65536_201'
;------------------------------------------------------------
;	FATFS\src\ff.c:2646: FRESULT f_read (
;	-----------------------------------------
;	 function f_read
;	-----------------------------------------
_f_read:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_read_fp_65536_200
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2656: BYTE csect, *rbuff = (BYTE*)buff;
	mov	dptr,#_f_read_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_read_rbuff_65536_201
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2659: *br = 0;	/* Clear read byte counter */
	mov	dptr,#_f_read_PARM_4
	movx	a,@dptr
	mov	_f_read_sloc9_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc9_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc9_1_0 + 2),a
	mov	dpl,_f_read_sloc9_1_0
	mov	dph,(_f_read_sloc9_1_0 + 1)
	mov	b,(_f_read_sloc9_1_0 + 2)
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\ff.c:2661: res = validate(fp);							/* Check validity */
	mov	dptr,#_f_read_fp_65536_200
	movx	a,@dptr
	mov	_f_read_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc0_1_0 + 2),a
	mov	r0,_f_read_sloc0_1_0
	mov	r1,(_f_read_sloc0_1_0 + 1)
	mov	r4,(_f_read_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	mov	r0,#_validate
	mov	r1,#(_validate >> 8)
	mov	r2,#(_validate >> 16)
	lcall	__sdcc_banked_call
;	FATFS\src\ff.c:2662: if (res != FR_OK) LEAVE_FF(fp->fs, res);
	mov	a,dpl
	mov	r4,a
	jz	00102$
	mov	dpl,r4
	ljmp	__sdcc_banked_ret
00102$:
;	FATFS\src\ff.c:2663: if (fp->err)								/* Check error */
	mov	a,#0x06
	add	a,_f_read_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_f_read_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_f_read_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	FATFS\src\ff.c:2664: LEAVE_FF(fp->fs, (FRESULT)fp->err);
	mov	dpl,r4
	ljmp	__sdcc_banked_ret
00104$:
;	FATFS\src\ff.c:2665: if (!(fp->flag & FA_READ)) 					/* Check access mode */
	mov	a,#0x05
	add	a,_f_read_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_f_read_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_f_read_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jb	acc.0,00106$
;	FATFS\src\ff.c:2666: LEAVE_FF(fp->fs, FR_DENIED);
	mov	dpl,#0x07
	ljmp	__sdcc_banked_ret
00106$:
;	FATFS\src\ff.c:2667: remain = fp->fsize - fp->fptr;
	mov	a,#0x0b
	add	a,_f_read_sloc0_1_0
	mov	r4,a
	clr	a
	addc	a,(_f_read_sloc0_1_0 + 1)
	mov	r2,a
	mov	r3,(_f_read_sloc0_1_0 + 2)
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x07
	add	a,_f_read_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_read_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_f_read_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,r1
	clr	c
	subb	a,r0
	mov	_f_read_sloc1_1_0,a
	mov	a,r2
	subb	a,r6
	mov	(_f_read_sloc1_1_0 + 1),a
	mov	a,r3
	subb	a,r7
	mov	(_f_read_sloc1_1_0 + 2),a
	mov	a,r4
	subb	a,r5
	mov	(_f_read_sloc1_1_0 + 3),a
;	FATFS\src\ff.c:2668: if (btr > remain) btr = (UINT)remain;		/* Truncate btr by remaining bytes */
	mov	dptr,#_f_read_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r5,#0x00
	mov	r4,#0x00
	clr	c
	mov	a,_f_read_sloc1_1_0
	subb	a,r6
	mov	a,(_f_read_sloc1_1_0 + 1)
	subb	a,r7
	mov	a,(_f_read_sloc1_1_0 + 2)
	subb	a,r5
	mov	a,(_f_read_sloc1_1_0 + 3)
	subb	a,r4
	jnc	00158$
	mov	dptr,#_f_read_PARM_3
	mov	a,_f_read_sloc1_1_0
	movx	@dptr,a
	mov	a,(_f_read_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
00158$:
	mov	dptr,#_f_read_fp_65536_200
	movx	a,@dptr
	mov	_f_read_sloc7_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc7_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc7_1_0 + 2),a
	mov	_f_read_sloc1_1_0,_f_read_sloc7_1_0
	mov	(_f_read_sloc1_1_0 + 1),(_f_read_sloc7_1_0 + 1)
	mov	(_f_read_sloc1_1_0 + 2),(_f_read_sloc7_1_0 + 2)
	mov	a,#0x07
	add	a,_f_read_sloc7_1_0
	mov	_f_read_sloc0_1_0,a
	clr	a
	addc	a,(_f_read_sloc7_1_0 + 1)
	mov	(_f_read_sloc0_1_0 + 1),a
	mov	(_f_read_sloc0_1_0 + 2),(_f_read_sloc7_1_0 + 2)
	mov	_f_read_sloc2_1_0,_f_read_sloc0_1_0
	mov	(_f_read_sloc2_1_0 + 1),(_f_read_sloc0_1_0 + 1)
	mov	(_f_read_sloc2_1_0 + 2),(_f_read_sloc0_1_0 + 2)
	mov	_f_read_sloc3_1_0,_f_read_sloc7_1_0
	mov	(_f_read_sloc3_1_0 + 1),(_f_read_sloc7_1_0 + 1)
	mov	(_f_read_sloc3_1_0 + 2),(_f_read_sloc7_1_0 + 2)
00138$:
;	FATFS\src\ff.c:2670: for ( ;  btr;								/* Repeat until all data read */
	mov	dptr,#_f_read_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00217$
	ljmp	00136$
00217$:
;	FATFS\src\ff.c:2672: if ((fp->fptr % SS(fp->fs)) == 0) {		/* On the sector boundary? */
	mov	dpl,_f_read_sloc0_1_0
	mov	dph,(_f_read_sloc0_1_0 + 1)
	mov	b,(_f_read_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	_f_read_sloc4_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_read_sloc4_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_read_sloc4_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_read_sloc4_1_0 + 3),a
	mov	a,_f_read_sloc4_1_0
	jnz	00218$
	mov	a,(_f_read_sloc4_1_0 + 1)
	jnb	acc.0,00219$
00218$:
	ljmp	00130$
00219$:
;	FATFS\src\ff.c:2673: csect = (BYTE)(fp->fptr / SS(fp->fs) & (fp->fs->csize - 1));	/* Sector offset in the cluster */
	mov	a,(_f_read_sloc4_1_0 + 3)
	mov	(_f_read_sloc6_1_0 + 3),#0x00
	clr	c
	rrc	a
	mov	(_f_read_sloc6_1_0 + 2),a
	mov	a,(_f_read_sloc4_1_0 + 2)
	rrc	a
	mov	(_f_read_sloc6_1_0 + 1),a
	mov	a,(_f_read_sloc4_1_0 + 1)
	rrc	a
	mov	_f_read_sloc6_1_0,a
	mov	dpl,_f_read_sloc1_1_0
	mov	dph,(_f_read_sloc1_1_0 + 1)
	mov	b,(_f_read_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	_f_read_sloc5_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_read_sloc5_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_read_sloc5_1_0 + 2),a
	mov	a,#0x02
	add	a,_f_read_sloc5_1_0
	mov	r2,a
	clr	a
	addc	a,(_f_read_sloc5_1_0 + 1)
	mov	r3,a
	mov	r4,(_f_read_sloc5_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	dec	r2
	mov	r0,_f_read_sloc6_1_0
	mov	a,r2
	anl	a,r0
;	FATFS\src\ff.c:2674: if (!csect) {						/* On the cluster boundary? */
	mov	_f_read_sloc6_1_0,a
	jz	00220$
	ljmp	00120$
00220$:
;	FATFS\src\ff.c:2675: if (fp->fptr == 0) {			/* On the top of the file? */
	mov	a,_f_read_sloc4_1_0
	orl	a,(_f_read_sloc4_1_0 + 1)
	orl	a,(_f_read_sloc4_1_0 + 2)
	orl	a,(_f_read_sloc4_1_0 + 3)
	jnz	00113$
;	FATFS\src\ff.c:2676: clst = fp->sclust;			/* Follow from the origin */
	mov	a,#0x0f
	add	a,_f_read_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_read_sloc1_1_0 + 1)
	mov	r1,a
	mov	r4,(_f_read_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_f_read_clst_65536_201
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00114$
00113$:
;	FATFS\src\ff.c:2679: if (fp->cltbl)
	mov	a,#0x1b
	add	a,_f_read_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_read_sloc1_1_0 + 1)
	mov	r1,a
	mov	r4,(_f_read_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	a,r0
	orl	a,r1
	jz	00110$
;	FATFS\src\ff.c:2680: clst = clmt_clust(fp, fp->fptr);	/* Get cluster# from the CLMT */
	mov	dptr,#_clmt_clust_PARM_2
	mov	a,_f_read_sloc4_1_0
	movx	@dptr,a
	mov	a,(_f_read_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_read_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_read_sloc4_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_read_sloc1_1_0
	mov	dph,(_f_read_sloc1_1_0 + 1)
	mov	b,(_f_read_sloc1_1_0 + 2)
	mov	r0,#_clmt_clust
	mov	r1,#(_clmt_clust >> 8)
	mov	r2,#(_clmt_clust >> 16)
	lcall	__sdcc_banked_call
	mov	r0,dpl
	mov	r1,dph
	mov	r3,b
	mov	r4,a
	mov	dptr,#_f_read_clst_65536_201
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	sjmp	00114$
00110$:
;	FATFS\src\ff.c:2683: clst = get_fat(fp->fs, fp->clust);	/* Follow cluster chain on the FAT */
	mov	a,#0x13
	add	a,_f_read_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_read_sloc1_1_0 + 1)
	mov	r1,a
	mov	r4,(_f_read_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_get_fat_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_read_sloc5_1_0
	mov	dph,(_f_read_sloc5_1_0 + 1)
	mov	b,(_f_read_sloc5_1_0 + 2)
	mov	r0,#_get_fat
	mov	r1,#(_get_fat >> 8)
	mov	r2,#(_get_fat >> 16)
	lcall	__sdcc_banked_call
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	mov	dptr,#_f_read_clst_65536_201
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2736: LEAVE_FF(fp->fs, FR_OK);
;	FATFS\src\ff.c:2683: clst = get_fat(fp->fs, fp->clust);	/* Follow cluster chain on the FAT */
00114$:
;	FATFS\src\ff.c:2685: if (clst < 2) ABORT(fp->fs, FR_INT_ERR);
	mov	dptr,#_f_read_clst_65536_201
	movx	a,@dptr
	mov	_f_read_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc4_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc4_1_0 + 3),a
	clr	c
	mov	a,_f_read_sloc4_1_0
	subb	a,#0x02
	mov	a,(_f_read_sloc4_1_0 + 1)
	subb	a,#0x00
	mov	a,(_f_read_sloc4_1_0 + 2)
	subb	a,#0x00
	mov	a,(_f_read_sloc4_1_0 + 3)
	subb	a,#0x00
	jnc	00116$
	mov	dptr,#_f_read_fp_65536_200
	movx	a,@dptr
	mov	_f_read_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc5_1_0 + 2),a
	mov	a,#0x06
	add	a,_f_read_sloc5_1_0
	mov	_f_read_sloc5_1_0,a
	clr	a
	addc	a,(_f_read_sloc5_1_0 + 1)
	mov	(_f_read_sloc5_1_0 + 1),a
	mov	dpl,_f_read_sloc5_1_0
	mov	dph,(_f_read_sloc5_1_0 + 1)
	mov	b,(_f_read_sloc5_1_0 + 2)
	mov	a,#0x02
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	__sdcc_banked_ret
00116$:
;	FATFS\src\ff.c:2686: if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
	mov	a,_f_read_sloc4_1_0
	anl	a,(_f_read_sloc4_1_0 + 1)
	anl	a,(_f_read_sloc4_1_0 + 2)
	anl	a,(_f_read_sloc4_1_0 + 3)
	cjne	a,#0xFF,00118$
	mov	dptr,#_f_read_fp_65536_200
	movx	a,@dptr
	mov	_f_read_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc5_1_0 + 2),a
	mov	a,#0x06
	add	a,_f_read_sloc5_1_0
	mov	_f_read_sloc5_1_0,a
	clr	a
	addc	a,(_f_read_sloc5_1_0 + 1)
	mov	(_f_read_sloc5_1_0 + 1),a
	mov	dpl,_f_read_sloc5_1_0
	mov	dph,(_f_read_sloc5_1_0 + 1)
	mov	b,(_f_read_sloc5_1_0 + 2)
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x01
	ljmp	__sdcc_banked_ret
00118$:
;	FATFS\src\ff.c:2687: fp->clust = clst;				/* Update current cluster */
	mov	a,#0x13
	add	a,_f_read_sloc7_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_read_sloc7_1_0 + 1)
	mov	r1,a
	mov	r4,(_f_read_sloc7_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	mov	a,_f_read_sloc4_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_read_sloc4_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_read_sloc4_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_read_sloc4_1_0 + 3)
	lcall	__gptrput
00120$:
;	FATFS\src\ff.c:2689: sect = clust2sect(fp->fs, fp->clust);	/* Get current sector */
	mov	dptr,#_f_read_fp_65536_200
	movx	a,@dptr
	mov	_f_read_sloc8_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc8_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc8_1_0 + 2),a
	mov	dpl,_f_read_sloc8_1_0
	mov	dph,(_f_read_sloc8_1_0 + 1)
	mov	b,(_f_read_sloc8_1_0 + 2)
	lcall	__gptrget
	mov	_f_read_sloc5_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_read_sloc5_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_read_sloc5_1_0 + 2),a
	mov	a,#0x13
	add	a,_f_read_sloc8_1_0
	mov	r7,a
	clr	a
	addc	a,(_f_read_sloc8_1_0 + 1)
	mov	r5,a
	mov	r6,(_f_read_sloc8_1_0 + 2)
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_clust2sect_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_read_sloc5_1_0
	mov	dph,(_f_read_sloc5_1_0 + 1)
	mov	b,(_f_read_sloc5_1_0 + 2)
	mov	r0,#_clust2sect
	mov	r1,#(_clust2sect >> 8)
	mov	r2,#(_clust2sect >> 16)
	lcall	__sdcc_banked_call
	mov	_f_read_sloc4_1_0,dpl
	mov	(_f_read_sloc4_1_0 + 1),dph
	mov	(_f_read_sloc4_1_0 + 2),b
	mov	(_f_read_sloc4_1_0 + 3),a
;	FATFS\src\ff.c:2690: if (!sect) ABORT(fp->fs, FR_INT_ERR);
	mov	a,_f_read_sloc4_1_0
	orl	a,(_f_read_sloc4_1_0 + 1)
	orl	a,(_f_read_sloc4_1_0 + 2)
	orl	a,(_f_read_sloc4_1_0 + 3)
	jnz	00122$
	mov	a,#0x06
	add	a,_f_read_sloc8_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_read_sloc8_1_0 + 1)
	mov	r1,a
	mov	r4,(_f_read_sloc8_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	mov	a,#0x02
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	__sdcc_banked_ret
00122$:
;	FATFS\src\ff.c:2691: sect += csect;
	mov	r1,_f_read_sloc6_1_0
	clr	a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	a,r1
	add	a,_f_read_sloc4_1_0
	mov	_f_read_sloc4_1_0,a
	mov	a,r2
	addc	a,(_f_read_sloc4_1_0 + 1)
	mov	(_f_read_sloc4_1_0 + 1),a
	mov	a,r3
	addc	a,(_f_read_sloc4_1_0 + 2)
	mov	(_f_read_sloc4_1_0 + 2),a
	mov	a,r4
	addc	a,(_f_read_sloc4_1_0 + 3)
	mov	(_f_read_sloc4_1_0 + 3),a
;	FATFS\src\ff.c:2692: cc = btr / SS(fp->fs);				/* When remaining bytes >= sector size, */
	mov	dptr,#_f_read_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	rrc	a
	mov	_f_read_sloc5_1_0,a
;	1-genFromRTrack replaced	mov	(_f_read_sloc5_1_0 + 1),#0x00
	mov	(_f_read_sloc5_1_0 + 1),r4
	mov	dptr,#_f_read_cc_65536_201
	mov	a,_f_read_sloc5_1_0
	movx	@dptr,a
	mov	a,(_f_read_sloc5_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2693: if (cc) {							/* Read maximum contiguous sectors directly */
	mov	a,_f_read_sloc5_1_0
	orl	a,(_f_read_sloc5_1_0 + 1)
	jnz	00227$
	ljmp	00128$
00227$:
;	FATFS\src\ff.c:2694: if (csect + cc > fp->fs->csize)	/* Clip at cluster boundary */
	mov	(_f_read_sloc6_1_0 + 1),#0x00
	mov	r0,_f_read_sloc6_1_0
	mov	r4,(_f_read_sloc6_1_0 + 1)
	mov	a,_f_read_sloc5_1_0
	add	a,r0
	mov	r0,a
	mov	a,(_f_read_sloc5_1_0 + 1)
	addc	a,r4
	mov	r4,a
	mov	dpl,_f_read_sloc8_1_0
	mov	dph,(_f_read_sloc8_1_0 + 1)
	mov	b,(_f_read_sloc8_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,#0x02
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_f_read_sloc5_1_0,a
	mov	r2,_f_read_sloc5_1_0
	mov	r3,#0x00
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	subb	a,r4
	jnc	00124$
;	FATFS\src\ff.c:2695: cc = fp->fs->csize - csect;
	mov	r0,_f_read_sloc5_1_0
	mov	r4,#0x00
	mov	dptr,#_f_read_cc_65536_201
	mov	a,r0
	clr	c
	subb	a,_f_read_sloc6_1_0
	movx	@dptr,a
	mov	a,r4
	subb	a,(_f_read_sloc6_1_0 + 1)
	inc	dptr
	movx	@dptr,a
00124$:
;	FATFS\src\ff.c:2696: if (disk_read(fp->fs->drv, rbuff, sect, cc))
	mov	dptr,#_f_read_fp_65536_200
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	r0
	cjne	r0,#0x00,00229$
	inc	r1
00229$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_f_read_rbuff_65536_201
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_read_cc_65536_201
	movx	a,@dptr
	mov	_f_read_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc6_1_0 + 1),a
	mov	dptr,#_disk_read_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_read_PARM_3
	mov	a,_f_read_sloc4_1_0
	movx	@dptr,a
	mov	a,(_f_read_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_read_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_read_sloc4_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_read_PARM_4
	mov	a,_f_read_sloc6_1_0
	movx	@dptr,a
	mov	a,(_f_read_sloc6_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_disk_read
	mov	r1,#(_disk_read >> 8)
	mov	r2,#(_disk_read >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	jz	00126$
;	FATFS\src\ff.c:2697: ABORT(fp->fs, FR_DISK_ERR);
	mov	a,#0x06
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x01
	ljmp	__sdcc_banked_ret
00126$:
;	FATFS\src\ff.c:2707: rcnt = SS(fp->fs) * cc;			/* Number of bytes transferred */
	mov	a,_f_read_sloc6_1_0
	add	a,_f_read_sloc6_1_0
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_f_read_rcnt_65536_201
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2708: continue;
	ljmp	00135$
00128$:
;	FATFS\src\ff.c:2723: fp->dsect = sect;
	mov	a,#0x17
	add	a,_f_read_sloc8_1_0
	mov	r2,a
	clr	a
	addc	a,(_f_read_sloc8_1_0 + 1)
	mov	r3,a
	mov	r4,(_f_read_sloc8_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_f_read_sloc4_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_read_sloc4_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_read_sloc4_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_read_sloc4_1_0 + 3)
	lcall	__gptrput
00130$:
;	FATFS\src\ff.c:2725: rcnt = SS(fp->fs) - ((UINT)fp->fptr % SS(fp->fs));	/* Get partial sector data from sector buffer */
	mov	dpl,_f_read_sloc2_1_0
	mov	dph,(_f_read_sloc2_1_0 + 1)
	mov	b,(_f_read_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	anl	ar4,#0x01
	clr	a
	clr	c
	subb	a,r3
	mov	r3,a
	mov	a,#0x02
	subb	a,r4
	mov	r4,a
	mov	dptr,#_f_read_rcnt_65536_201
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2726: if (rcnt > btr) rcnt = btr;
	mov	dptr,#_f_read_PARM_3
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	c
	mov	a,r1
	subb	a,r3
	mov	a,r2
	subb	a,r4
	jnc	00132$
	mov	dptr,#_f_read_rcnt_65536_201
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
00132$:
;	FATFS\src\ff.c:2728: if (move_window(fp->fs, fp->dsect))		/* Move sector window */
	mov	dptr,#_f_read_fp_65536_200
	movx	a,@dptr
	mov	_f_read_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc6_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc6_1_0 + 2),a
	mov	dpl,_f_read_sloc6_1_0
	mov	dph,(_f_read_sloc6_1_0 + 1)
	mov	b,(_f_read_sloc6_1_0 + 2)
	lcall	__gptrget
	mov	_f_read_sloc8_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_read_sloc8_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_read_sloc8_1_0 + 2),a
	mov	a,#0x17
	add	a,_f_read_sloc6_1_0
	mov	r7,a
	clr	a
	addc	a,(_f_read_sloc6_1_0 + 1)
	mov	r5,a
	mov	r6,(_f_read_sloc6_1_0 + 2)
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_move_window_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_read_sloc8_1_0
	mov	dph,(_f_read_sloc8_1_0 + 1)
	mov	b,(_f_read_sloc8_1_0 + 2)
	mov	r0,#_move_window
	mov	r1,#(_move_window >> 8)
	mov	r2,#(_move_window >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	jz	00134$
;	FATFS\src\ff.c:2729: ABORT(fp->fs, FR_DISK_ERR);
	mov	a,#0x06
	add	a,_f_read_sloc6_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_read_sloc6_1_0 + 1)
	mov	r1,a
	mov	r4,(_f_read_sloc6_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x01
	ljmp	__sdcc_banked_ret
00134$:
;	FATFS\src\ff.c:2730: mem_cpy(rbuff, &fp->fs->win[fp->fptr % SS(fp->fs)], rcnt);	/* Pick partial sector */
	mov	dptr,#_f_read_rbuff_65536_201
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,_f_read_sloc6_1_0
	mov	dph,(_f_read_sloc6_1_0 + 1)
	mov	b,(_f_read_sloc6_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x26
	add	a,r0
	mov	_f_read_sloc8_1_0,a
	clr	a
	addc	a,r1
	mov	(_f_read_sloc8_1_0 + 1),a
	mov	(_f_read_sloc8_1_0 + 2),r7
	mov	a,#0x07
	add	a,_f_read_sloc6_1_0
	mov	r7,a
	clr	a
	addc	a,(_f_read_sloc6_1_0 + 1)
	mov	r5,a
	mov	r6,(_f_read_sloc6_1_0 + 2)
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	inc	dptr
	lcall	__gptrget
	anl	ar5,#0x01
	clr	a
	mov	a,r1
	add	a,_f_read_sloc8_1_0
	mov	r1,a
	mov	a,r5
	addc	a,(_f_read_sloc8_1_0 + 1)
	mov	r5,a
	mov	r6,(_f_read_sloc8_1_0 + 2)
	mov	dptr,#_f_read_rcnt_65536_201
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mem_cpy_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mem_cpy_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_mem_cpy
	mov	r1,#(_mem_cpy >> 8)
	mov	r2,#(_mem_cpy >> 16)
	lcall	__sdcc_banked_call
;	FATFS\src\ff.c:2736: LEAVE_FF(fp->fs, FR_OK);
;	FATFS\src\ff.c:2730: mem_cpy(rbuff, &fp->fs->win[fp->fptr % SS(fp->fs)], rcnt);	/* Pick partial sector */
00135$:
;	FATFS\src\ff.c:2671: rbuff += rcnt, fp->fptr += rcnt, *br += rcnt, btr -= rcnt) {
	mov	dptr,#_f_read_rcnt_65536_201
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_f_read_rbuff_65536_201
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_f_read_rbuff_65536_201
	mov	a,r3
	add	a,r0
	movx	@dptr,a
	mov	a,r4
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,#0x07
	add	a,_f_read_sloc3_1_0
	mov	_f_read_sloc8_1_0,a
	clr	a
	addc	a,(_f_read_sloc3_1_0 + 1)
	mov	(_f_read_sloc8_1_0 + 1),a
	mov	(_f_read_sloc8_1_0 + 2),(_f_read_sloc3_1_0 + 2)
	mov	dpl,_f_read_sloc8_1_0
	mov	dph,(_f_read_sloc8_1_0 + 1)
	mov	b,(_f_read_sloc8_1_0 + 2)
	lcall	__gptrget
	mov	_f_read_sloc6_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_read_sloc6_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_read_sloc6_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_read_sloc6_1_0 + 3),a
	mov	ar6,r3
	mov	ar5,r4
	clr	a
	mov	r2,a
	mov	r7,a
	mov	a,r6
	add	a,_f_read_sloc6_1_0
	mov	r6,a
	mov	a,r5
	addc	a,(_f_read_sloc6_1_0 + 1)
	mov	r5,a
	mov	a,r2
	addc	a,(_f_read_sloc6_1_0 + 2)
	mov	r2,a
	mov	a,r7
	addc	a,(_f_read_sloc6_1_0 + 3)
	mov	r7,a
	mov	dpl,_f_read_sloc8_1_0
	mov	dph,(_f_read_sloc8_1_0 + 1)
	mov	b,(_f_read_sloc8_1_0 + 2)
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	dpl,_f_read_sloc9_1_0
	mov	dph,(_f_read_sloc9_1_0 + 1)
	mov	b,(_f_read_sloc9_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r3
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	dpl,_f_read_sloc9_1_0
	mov	dph,(_f_read_sloc9_1_0 + 1)
	mov	b,(_f_read_sloc9_1_0 + 2)
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	mov	dptr,#_f_read_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_read_PARM_3
	mov	a,r6
	clr	c
	subb	a,r3
	movx	@dptr,a
	mov	a,r7
	subb	a,r4
	inc	dptr
	movx	@dptr,a
	ljmp	00138$
00136$:
;	FATFS\src\ff.c:2736: LEAVE_FF(fp->fs, FR_OK);
	mov	dpl,#0x00
;	FATFS\src\ff.c:2737: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_close'
;------------------------------------------------------------
;fp                        Allocated with name '_f_close_fp_65536_214'
;res                       Allocated with name '_f_close_res_65536_215'
;------------------------------------------------------------
;	FATFS\src\ff.c:2917: FRESULT f_close (
;	-----------------------------------------
;	 function f_close
;	-----------------------------------------
_f_close:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_close_fp_65536_214
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:2929: res = validate(fp);				/* Lock volume */
	mov	dptr,#_f_close_fp_65536_214
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_validate
	mov	r1,#(_validate >> 8)
	mov	r2,#(_validate >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	FATFS\src\ff.c:2930: if (res == FR_OK) {
	mov	a,r4
	jnz	00102$
;	FATFS\src\ff.c:2938: fp->fs = 0;				/* Invalidate file object */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00102$:
;	FATFS\src\ff.c:2944: return res;
	mov	dpl,r4
;	FATFS\src\ff.c:2945: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_lseek'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_lseek_sloc0_1_0'
;sloc1                     Allocated with name '_f_lseek_sloc1_1_0'
;sloc2                     Allocated with name '_f_lseek_sloc2_1_0'
;sloc3                     Allocated with name '_f_lseek_sloc3_1_0'
;sloc4                     Allocated with name '_f_lseek_sloc4_1_0'
;sloc5                     Allocated with name '_f_lseek_sloc5_1_0'
;sloc6                     Allocated with name '_f_lseek_sloc6_1_0'
;ofs                       Allocated with name '_f_lseek_PARM_2'
;fp                        Allocated with name '_f_lseek_fp_65536_218'
;res                       Allocated with name '_f_lseek_res_65536_219'
;cl                        Allocated with name '_f_lseek_cl_131072_220'
;pcl                       Allocated with name '_f_lseek_pcl_131072_220'
;ncl                       Allocated with name '_f_lseek_ncl_131072_220'
;tcl                       Allocated with name '_f_lseek_tcl_131072_220'
;dsc                       Allocated with name '_f_lseek_dsc_131072_220'
;tlen                      Allocated with name '_f_lseek_tlen_131072_220'
;ulen                      Allocated with name '_f_lseek_ulen_131072_220'
;tbl                       Allocated with name '_f_lseek_tbl_131072_220'
;clst                      Allocated with name '_f_lseek_clst_131072_232'
;bcs                       Allocated with name '_f_lseek_bcs_131072_232'
;nsect                     Allocated with name '_f_lseek_nsect_131072_232'
;ifptr                     Allocated with name '_f_lseek_ifptr_131072_232'
;------------------------------------------------------------
;	FATFS\src\ff.c:3089: FRESULT f_lseek (
;	-----------------------------------------
;	 function f_lseek
;	-----------------------------------------
_f_lseek:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_lseek_fp_65536_218
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:3097: res = validate(fp);					/* Check validity of the object */
	mov	dptr,#_f_lseek_fp_65536_218
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	ar2,r7
	mov	ar3,r5
	mov	ar4,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_validate
	mov	r1,#(_validate >> 8)
	mov	r2,#(_validate >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_f_lseek_res_65536_219
	mov	a,r4
	movx	@dptr,a
;	FATFS\src\ff.c:3098: if (res != FR_OK) LEAVE_FF(fp->fs, res);
	mov	a,r4
	jz	00102$
	mov	dpl,r4
	ljmp	__sdcc_banked_ret
00102$:
;	FATFS\src\ff.c:3099: if (fp->err)						/* Check error */
	mov	a,#0x06
	add	a,r7
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar4,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	FATFS\src\ff.c:3100: LEAVE_FF(fp->fs, (FRESULT)fp->err);
	mov	dpl,r4
	ljmp	__sdcc_banked_ret
00104$:
;	FATFS\src\ff.c:3103: if (fp->cltbl) {	/* Fast seek */
	mov	a,#0x1b
	add	a,r7
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar4,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jnz	00281$
	ljmp	00160$
00281$:
;	FATFS\src\ff.c:3106: if (ofs == CREATE_LINKMAP) {	/* Create CLMT */
	mov	dptr,#_f_lseek_PARM_2
	movx	a,@dptr
	mov	_f_lseek_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc0_1_0 + 3),a
	mov	a,_f_lseek_sloc0_1_0
	anl	a,(_f_lseek_sloc0_1_0 + 1)
	anl	a,(_f_lseek_sloc0_1_0 + 2)
	anl	a,(_f_lseek_sloc0_1_0 + 3)
	cjne	a,#0xFF,00282$
	sjmp	00283$
00282$:
	ljmp	00132$
00283$:
;	FATFS\src\ff.c:3108: tlen = *tbl++; ulen = 2;	/* Given table size and required table size */
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_f_lseek_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc1_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc1_1_0 + 3),a
	mov	dptr,#_f_lseek_tbl_131072_220
	mov	a,#0x04
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_lseek_ulen_131072_220
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:3109: cl = fp->sclust;			/* Top of the chain */
	mov	a,#0x0f
	add	a,r7
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_f_lseek_cl_131072_220
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:3110: if (cl) {
	mov	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	jnz	00284$
	ljmp	00118$
00284$:
;	FATFS\src\ff.c:3111: do {
	mov	_f_lseek_sloc5_1_0,r7
	mov	(_f_lseek_sloc5_1_0 + 1),r5
	mov	(_f_lseek_sloc5_1_0 + 2),r6
	mov	_f_lseek_sloc2_1_0,r7
	mov	(_f_lseek_sloc2_1_0 + 1),r5
	mov	(_f_lseek_sloc2_1_0 + 2),r6
	mov	_f_lseek_sloc3_1_0,#0x02
	clr	a
	mov	(_f_lseek_sloc3_1_0 + 1),a
	mov	(_f_lseek_sloc3_1_0 + 2),a
	mov	(_f_lseek_sloc3_1_0 + 3),a
00114$:
;	FATFS\src\ff.c:3113: tcl = cl; ncl = 0; ulen += 2;	/* Top, length and used items */
	mov	dptr,#_f_lseek_cl_131072_220
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_f_lseek_tcl_131072_220
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,#0x02
	add	a,_f_lseek_sloc3_1_0
	mov	_f_lseek_sloc3_1_0,a
	clr	a
	addc	a,(_f_lseek_sloc3_1_0 + 1)
	mov	(_f_lseek_sloc3_1_0 + 1),a
	clr	a
	addc	a,(_f_lseek_sloc3_1_0 + 2)
	mov	(_f_lseek_sloc3_1_0 + 2),a
	clr	a
	addc	a,(_f_lseek_sloc3_1_0 + 3)
	mov	(_f_lseek_sloc3_1_0 + 3),a
	mov	dptr,#_f_lseek_ulen_131072_220
	mov	a,_f_lseek_sloc3_1_0
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:3114: do {
	clr	a
	mov	_f_lseek_sloc4_1_0,a
	mov	(_f_lseek_sloc4_1_0 + 1),a
	mov	(_f_lseek_sloc4_1_0 + 2),a
	mov	(_f_lseek_sloc4_1_0 + 3),a
;	FATFS\src\ff.c:3237: LEAVE_FF(fp->fs, res);
;	FATFS\src\ff.c:3114: do {
00109$:
;	FATFS\src\ff.c:3115: pcl = cl; ncl++;
	mov	dptr,#_f_lseek_cl_131072_220
	movx	a,@dptr
	mov	_f_lseek_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc6_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc6_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc6_1_0 + 3),a
	mov	dptr,#_f_lseek_pcl_131072_220
	mov	a,_f_lseek_sloc6_1_0
	movx	@dptr,a
	mov	a,(_f_lseek_sloc6_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc6_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc6_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	inc	_f_lseek_sloc4_1_0
	clr	a
	cjne	a,_f_lseek_sloc4_1_0,00285$
	inc	(_f_lseek_sloc4_1_0 + 1)
	cjne	a,(_f_lseek_sloc4_1_0 + 1),00285$
	inc	(_f_lseek_sloc4_1_0 + 2)
	cjne	a,(_f_lseek_sloc4_1_0 + 2),00285$
	inc	(_f_lseek_sloc4_1_0 + 3)
00285$:
;	FATFS\src\ff.c:3116: cl = get_fat(fp->fs, cl);
	mov	dpl,_f_lseek_sloc5_1_0
	mov	dph,(_f_lseek_sloc5_1_0 + 1)
	mov	b,(_f_lseek_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_get_fat_PARM_2
	mov	a,_f_lseek_sloc6_1_0
	movx	@dptr,a
	mov	a,(_f_lseek_sloc6_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc6_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc6_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_get_fat
	mov	r1,#(_get_fat >> 8)
	mov	r2,#(_get_fat >> 16)
	lcall	__sdcc_banked_call
	mov	_f_lseek_sloc6_1_0,dpl
	mov	(_f_lseek_sloc6_1_0 + 1),dph
	mov	(_f_lseek_sloc6_1_0 + 2),b
	mov	(_f_lseek_sloc6_1_0 + 3),a
	mov	dptr,#_f_lseek_cl_131072_220
	mov	a,_f_lseek_sloc6_1_0
	movx	@dptr,a
	mov	a,(_f_lseek_sloc6_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc6_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc6_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:3117: if (cl <= 1) ABORT(fp->fs, FR_INT_ERR);
	clr	c
	mov	a,#0x01
	subb	a,_f_lseek_sloc6_1_0
	clr	a
	subb	a,(_f_lseek_sloc6_1_0 + 1)
	clr	a
	subb	a,(_f_lseek_sloc6_1_0 + 2)
	clr	a
	subb	a,(_f_lseek_sloc6_1_0 + 3)
	jc	00106$
	mov	a,#0x06
	add	a,_f_lseek_sloc5_1_0
	mov	_f_lseek_sloc6_1_0,a
	clr	a
	addc	a,(_f_lseek_sloc5_1_0 + 1)
	mov	(_f_lseek_sloc6_1_0 + 1),a
	mov	(_f_lseek_sloc6_1_0 + 2),(_f_lseek_sloc5_1_0 + 2)
	mov	dpl,_f_lseek_sloc6_1_0
	mov	dph,(_f_lseek_sloc6_1_0 + 1)
	mov	b,(_f_lseek_sloc6_1_0 + 2)
	mov	a,#0x02
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	__sdcc_banked_ret
00106$:
;	FATFS\src\ff.c:3118: if (cl == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
	mov	a,_f_lseek_sloc6_1_0
	anl	a,(_f_lseek_sloc6_1_0 + 1)
	anl	a,(_f_lseek_sloc6_1_0 + 2)
	anl	a,(_f_lseek_sloc6_1_0 + 3)
	cjne	a,#0xFF,00110$
	mov	a,#0x06
	add	a,_f_lseek_sloc5_1_0
	mov	_f_lseek_sloc6_1_0,a
	clr	a
	addc	a,(_f_lseek_sloc5_1_0 + 1)
	mov	(_f_lseek_sloc6_1_0 + 1),a
	mov	(_f_lseek_sloc6_1_0 + 2),(_f_lseek_sloc5_1_0 + 2)
	mov	dpl,_f_lseek_sloc6_1_0
	mov	dph,(_f_lseek_sloc6_1_0 + 1)
	mov	b,(_f_lseek_sloc6_1_0 + 2)
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x01
	ljmp	__sdcc_banked_ret
00110$:
;	FATFS\src\ff.c:3119: } while (cl == pcl + 1);
	mov	dptr,#_f_lseek_pcl_131072_220
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r0
	cjne	r0,#0x00,00289$
	inc	r2
	cjne	r2,#0x00,00289$
	inc	r3
	cjne	r3,#0x00,00289$
	inc	r4
00289$:
	mov	a,r0
	cjne	a,_f_lseek_sloc6_1_0,00290$
	mov	a,r2
	cjne	a,(_f_lseek_sloc6_1_0 + 1),00290$
	mov	a,r3
	cjne	a,(_f_lseek_sloc6_1_0 + 2),00290$
	mov	a,r4
	cjne	a,(_f_lseek_sloc6_1_0 + 3),00290$
	ljmp	00109$
00290$:
;	FATFS\src\ff.c:3120: if (ulen <= tlen) {		/* Store the length and top of the fragment */
	clr	c
	mov	a,_f_lseek_sloc1_1_0
	subb	a,_f_lseek_sloc3_1_0
	mov	a,(_f_lseek_sloc1_1_0 + 1)
	subb	a,(_f_lseek_sloc3_1_0 + 1)
	mov	a,(_f_lseek_sloc1_1_0 + 2)
	subb	a,(_f_lseek_sloc3_1_0 + 2)
	mov	a,(_f_lseek_sloc1_1_0 + 3)
	subb	a,(_f_lseek_sloc3_1_0 + 3)
	jnc	00291$
	ljmp	00115$
00291$:
;	FATFS\src\ff.c:3121: *tbl++ = ncl; *tbl++ = tcl;
	mov	dptr,#_f_lseek_tbl_131072_220
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_f_lseek_sloc4_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc4_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc4_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc4_1_0 + 3)
	lcall	__gptrput
	mov	dptr,#_f_lseek_tbl_131072_220
	mov	a,#0x04
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_lseek_tbl_131072_220
	movx	a,@dptr
	mov	_f_lseek_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc4_1_0 + 2),a
	mov	dptr,#_f_lseek_tcl_131072_220
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,_f_lseek_sloc4_1_0
	mov	dph,(_f_lseek_sloc4_1_0 + 1)
	mov	b,(_f_lseek_sloc4_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	dptr,#_f_lseek_tbl_131072_220
	mov	a,#0x04
	add	a,_f_lseek_sloc4_1_0
	movx	@dptr,a
	clr	a
	addc	a,(_f_lseek_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
00115$:
;	FATFS\src\ff.c:3123: } while (cl < fp->fs->n_fatent);	/* Repeat until end of chain */
	mov	dpl,_f_lseek_sloc2_1_0
	mov	dph,(_f_lseek_sloc2_1_0 + 1)
	mov	b,(_f_lseek_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,#0x0a
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,_f_lseek_sloc6_1_0
	subb	a,r1
	mov	a,(_f_lseek_sloc6_1_0 + 1)
	subb	a,r2
	mov	a,(_f_lseek_sloc6_1_0 + 2)
	subb	a,r3
	mov	a,(_f_lseek_sloc6_1_0 + 3)
	subb	a,r4
	jnc	00292$
	ljmp	00114$
00292$:
00118$:
;	FATFS\src\ff.c:3125: *fp->cltbl = ulen;	/* Number of items used */
	mov	dptr,#_f_lseek_fp_65536_218
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x1b
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_f_lseek_sloc6_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc6_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc6_1_0 + 2),a
	mov	dptr,#_f_lseek_ulen_131072_220
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,_f_lseek_sloc6_1_0
	mov	dph,(_f_lseek_sloc6_1_0 + 1)
	mov	b,(_f_lseek_sloc6_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	FATFS\src\ff.c:3126: if (ulen <= tlen)
	clr	c
	mov	a,_f_lseek_sloc1_1_0
	subb	a,r0
	mov	a,(_f_lseek_sloc1_1_0 + 1)
	subb	a,r3
	mov	a,(_f_lseek_sloc1_1_0 + 2)
	subb	a,r1
	mov	a,(_f_lseek_sloc1_1_0 + 3)
	subb	a,r4
	jc	00120$
;	FATFS\src\ff.c:3127: *tbl = 0;		/* Terminate table */
	mov	dptr,#_f_lseek_tbl_131072_220
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	ljmp	00161$
00120$:
;	FATFS\src\ff.c:3129: res = FR_NOT_ENOUGH_CORE;	/* Given table size is smaller than required */
	mov	dptr,#_f_lseek_res_65536_219
	mov	a,#0x11
	movx	@dptr,a
	ljmp	00161$
00132$:
;	FATFS\src\ff.c:3132: if (ofs > fp->fsize)		/* Clip offset at the file size */
	mov	a,#0x0b
	add	a,r7
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r1
	subb	a,_f_lseek_sloc0_1_0
	mov	a,r2
	subb	a,(_f_lseek_sloc0_1_0 + 1)
	mov	a,r3
	subb	a,(_f_lseek_sloc0_1_0 + 2)
	mov	a,r4
	subb	a,(_f_lseek_sloc0_1_0 + 3)
	jnc	00123$
;	FATFS\src\ff.c:3133: ofs = fp->fsize;
	mov	dptr,#_f_lseek_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
00123$:
;	FATFS\src\ff.c:3134: fp->fptr = ofs;				/* Set file pointer */
	mov	dptr,#_f_lseek_fp_65536_218
	movx	a,@dptr
	mov	_f_lseek_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc6_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc6_1_0 + 2),a
	mov	a,#0x07
	add	a,_f_lseek_sloc6_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_lseek_sloc6_1_0 + 1)
	mov	r1,a
	mov	r4,(_f_lseek_sloc6_1_0 + 2)
	mov	dptr,#_f_lseek_PARM_2
	movx	a,@dptr
	mov	_f_lseek_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc4_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc4_1_0 + 3),a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	mov	a,_f_lseek_sloc4_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc4_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc4_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc4_1_0 + 3)
	lcall	__gptrput
;	FATFS\src\ff.c:3135: if (ofs) {
	mov	a,_f_lseek_sloc4_1_0
	orl	a,(_f_lseek_sloc4_1_0 + 1)
	orl	a,(_f_lseek_sloc4_1_0 + 2)
	orl	a,(_f_lseek_sloc4_1_0 + 3)
	jnz	00295$
	ljmp	00161$
00295$:
;	FATFS\src\ff.c:3136: fp->clust = clmt_clust(fp, ofs - 1);
	mov	a,#0x13
	add	a,_f_lseek_sloc6_1_0
	mov	_f_lseek_sloc5_1_0,a
	clr	a
	addc	a,(_f_lseek_sloc6_1_0 + 1)
	mov	(_f_lseek_sloc5_1_0 + 1),a
	mov	(_f_lseek_sloc5_1_0 + 2),(_f_lseek_sloc6_1_0 + 2)
	mov	a,_f_lseek_sloc4_1_0
	add	a,#0xff
	mov	r0,a
	mov	a,(_f_lseek_sloc4_1_0 + 1)
	addc	a,#0xff
	mov	r1,a
	mov	a,(_f_lseek_sloc4_1_0 + 2)
	addc	a,#0xff
	mov	r3,a
	mov	a,(_f_lseek_sloc4_1_0 + 3)
	addc	a,#0xff
	mov	r4,a
	mov	dptr,#_clmt_clust_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_lseek_sloc6_1_0
	mov	dph,(_f_lseek_sloc6_1_0 + 1)
	mov	b,(_f_lseek_sloc6_1_0 + 2)
	mov	r0,#_clmt_clust
	mov	r1,#(_clmt_clust >> 8)
	mov	r2,#(_clmt_clust >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r1,b
	mov	r4,a
	mov	dpl,_f_lseek_sloc5_1_0
	mov	dph,(_f_lseek_sloc5_1_0 + 1)
	mov	b,(_f_lseek_sloc5_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	FATFS\src\ff.c:3137: dsc = clust2sect(fp->fs, fp->clust);
	mov	dptr,#_f_lseek_fp_65536_218
	movx	a,@dptr
	mov	_f_lseek_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc6_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc6_1_0 + 2),a
	mov	dpl,_f_lseek_sloc6_1_0
	mov	dph,(_f_lseek_sloc6_1_0 + 1)
	mov	b,(_f_lseek_sloc6_1_0 + 2)
	lcall	__gptrget
	mov	_f_lseek_sloc5_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc5_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc5_1_0 + 2),a
	mov	a,#0x13
	add	a,_f_lseek_sloc6_1_0
	mov	r4,a
	clr	a
	addc	a,(_f_lseek_sloc6_1_0 + 1)
	mov	r2,a
	mov	r3,(_f_lseek_sloc6_1_0 + 2)
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_clust2sect_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_lseek_sloc5_1_0
	mov	dph,(_f_lseek_sloc5_1_0 + 1)
	mov	b,(_f_lseek_sloc5_1_0 + 2)
	mov	r0,#_clust2sect
	mov	r1,#(_clust2sect >> 8)
	mov	r2,#(_clust2sect >> 16)
	lcall	__sdcc_banked_call
	mov	_f_lseek_sloc3_1_0,dpl
	mov	(_f_lseek_sloc3_1_0 + 1),dph
	mov	(_f_lseek_sloc3_1_0 + 2),b
	mov	(_f_lseek_sloc3_1_0 + 3),a
;	FATFS\src\ff.c:3138: if (!dsc) ABORT(fp->fs, FR_INT_ERR);
	mov	a,_f_lseek_sloc3_1_0
	orl	a,(_f_lseek_sloc3_1_0 + 1)
	orl	a,(_f_lseek_sloc3_1_0 + 2)
	orl	a,(_f_lseek_sloc3_1_0 + 3)
	jnz	00125$
	mov	a,#0x06
	add	a,_f_lseek_sloc6_1_0
	mov	_f_lseek_sloc5_1_0,a
	clr	a
	addc	a,(_f_lseek_sloc6_1_0 + 1)
	mov	(_f_lseek_sloc5_1_0 + 1),a
	mov	(_f_lseek_sloc5_1_0 + 2),(_f_lseek_sloc6_1_0 + 2)
	mov	dpl,_f_lseek_sloc5_1_0
	mov	dph,(_f_lseek_sloc5_1_0 + 1)
	mov	b,(_f_lseek_sloc5_1_0 + 2)
	mov	a,#0x02
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	__sdcc_banked_ret
00125$:
;	FATFS\src\ff.c:3139: dsc += (ofs - 1) / SS(fp->fs) & (fp->fs->csize - 1);
	mov	a,_f_lseek_sloc4_1_0
	add	a,#0xff
	mov	a,(_f_lseek_sloc4_1_0 + 1)
	addc	a,#0xff
	mov	r2,a
	mov	a,(_f_lseek_sloc4_1_0 + 2)
	addc	a,#0xff
	mov	r3,a
	mov	a,(_f_lseek_sloc4_1_0 + 3)
	addc	a,#0xff
	mov	(_f_lseek_sloc4_1_0 + 3),#0x00
	clr	c
	rrc	a
	mov	(_f_lseek_sloc4_1_0 + 2),a
	mov	a,r3
	rrc	a
	mov	(_f_lseek_sloc4_1_0 + 1),a
	mov	a,r2
	rrc	a
	mov	_f_lseek_sloc4_1_0,a
	mov	dpl,_f_lseek_sloc6_1_0
	mov	dph,(_f_lseek_sloc6_1_0 + 1)
	mov	b,(_f_lseek_sloc6_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x02
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r1
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	mov	r4,#0x00
	dec	r1
	cjne	r1,#0xff,00297$
	dec	r4
00297$:
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r2,a
	mov	a,_f_lseek_sloc4_1_0
	anl	ar1,a
	mov	a,(_f_lseek_sloc4_1_0 + 1)
	anl	ar4,a
	mov	a,(_f_lseek_sloc4_1_0 + 2)
	anl	ar3,a
	mov	a,(_f_lseek_sloc4_1_0 + 3)
	anl	ar2,a
	mov	a,r1
	add	a,_f_lseek_sloc3_1_0
	mov	_f_lseek_sloc4_1_0,a
	mov	a,r4
	addc	a,(_f_lseek_sloc3_1_0 + 1)
	mov	(_f_lseek_sloc4_1_0 + 1),a
	mov	a,r3
	addc	a,(_f_lseek_sloc3_1_0 + 2)
	mov	(_f_lseek_sloc4_1_0 + 2),a
	mov	a,r2
	addc	a,(_f_lseek_sloc3_1_0 + 3)
	mov	(_f_lseek_sloc4_1_0 + 3),a
;	FATFS\src\ff.c:3140: if (fp->fptr % SS(fp->fs) && dsc != fp->dsect) {	/* Refill sector cache if needed */
	mov	a,#0x07
	add	a,_f_lseek_sloc6_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_lseek_sloc6_1_0 + 1)
	mov	r3,a
	mov	r4,(_f_lseek_sloc6_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,r0
	jnz	00298$
	mov	a,r3
	jb	acc.0,00298$
	ljmp	00161$
00298$:
	mov	a,#0x17
	add	a,_f_lseek_sloc6_1_0
	mov	_f_lseek_sloc6_1_0,a
	clr	a
	addc	a,(_f_lseek_sloc6_1_0 + 1)
	mov	(_f_lseek_sloc6_1_0 + 1),a
	mov	dpl,_f_lseek_sloc6_1_0
	mov	dph,(_f_lseek_sloc6_1_0 + 1)
	mov	b,(_f_lseek_sloc6_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r0
	cjne	a,_f_lseek_sloc4_1_0,00299$
	mov	a,r1
	cjne	a,(_f_lseek_sloc4_1_0 + 1),00299$
	mov	a,r3
	cjne	a,(_f_lseek_sloc4_1_0 + 2),00299$
	mov	a,r4
	cjne	a,(_f_lseek_sloc4_1_0 + 3),00299$
	ljmp	00161$
00299$:
;	FATFS\src\ff.c:3152: fp->dsect = dsc;
	mov	dpl,_f_lseek_sloc6_1_0
	mov	dph,(_f_lseek_sloc6_1_0 + 1)
	mov	b,(_f_lseek_sloc6_1_0 + 2)
	mov	a,_f_lseek_sloc4_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc4_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc4_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc4_1_0 + 3)
	lcall	__gptrput
	ljmp	00161$
00160$:
;	FATFS\src\ff.c:3163: if (ofs > fp->fsize					/* In read-only mode, clip offset with the file size */
	mov	a,#0x0b
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_f_lseek_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r5
	subb	a,r1
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	jnc	00135$
;	FATFS\src\ff.c:3167: ) ofs = fp->fsize;
	mov	dptr,#_f_lseek_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00135$:
;	FATFS\src\ff.c:3169: ifptr = fp->fptr;
	mov	dptr,#_f_lseek_fp_65536_218
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x07
	add	a,r5
	mov	_f_lseek_sloc5_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_lseek_sloc5_1_0 + 1),a
	mov	(_f_lseek_sloc5_1_0 + 2),r7
	mov	dpl,_f_lseek_sloc5_1_0
	mov	dph,(_f_lseek_sloc5_1_0 + 1)
	mov	b,(_f_lseek_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	_f_lseek_sloc6_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc6_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc6_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc6_1_0 + 3),a
;	FATFS\src\ff.c:3170: fp->fptr = nsect = 0;
	mov	dptr,#_f_lseek_nsect_131072_232
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_lseek_sloc5_1_0
	mov	dph,(_f_lseek_sloc5_1_0 + 1)
	mov	b,(_f_lseek_sloc5_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\ff.c:3171: if (ofs) {
	mov	dptr,#_f_lseek_PARM_2
	movx	a,@dptr
	mov	_f_lseek_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc4_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc4_1_0 + 3),a
	mov	a,_f_lseek_sloc4_1_0
	orl	a,(_f_lseek_sloc4_1_0 + 1)
	orl	a,(_f_lseek_sloc4_1_0 + 2)
	orl	a,(_f_lseek_sloc4_1_0 + 3)
	jnz	00301$
	ljmp	00155$
00301$:
;	FATFS\src\ff.c:3172: bcs = (DWORD)fp->fs->csize * SS(fp->fs);	/* Cluster size (byte) */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x02
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	clr	a
	mov	r4,a
	mov	r3,a
	mov	r2,a
	mov	a,r0
	add	a,r0
	mov	(_f_lseek_sloc3_1_0 + 1),a
	mov	a,r4
	rlc	a
	mov	(_f_lseek_sloc3_1_0 + 2),a
	mov	a,r3
	rlc	a
	mov	(_f_lseek_sloc3_1_0 + 3),a
;	1-genFromRTrack replaced	mov	_f_lseek_sloc3_1_0,#0x00
	mov	_f_lseek_sloc3_1_0,r4
;	FATFS\src\ff.c:3173: if (ifptr > 0 &&
	mov	a,_f_lseek_sloc6_1_0
	orl	a,(_f_lseek_sloc6_1_0 + 1)
	orl	a,(_f_lseek_sloc6_1_0 + 2)
	orl	a,(_f_lseek_sloc6_1_0 + 3)
	jnz	00302$
	ljmp	00137$
00302$:
;	FATFS\src\ff.c:3174: (ofs - 1) / bcs >= (ifptr - 1) / bcs) {	/* When seek to same or following cluster, */
	mov	a,_f_lseek_sloc4_1_0
	add	a,#0xff
	mov	r0,a
	mov	a,(_f_lseek_sloc4_1_0 + 1)
	addc	a,#0xff
	mov	r1,a
	mov	a,(_f_lseek_sloc4_1_0 + 2)
	addc	a,#0xff
	mov	r3,a
	mov	a,(_f_lseek_sloc4_1_0 + 3)
	addc	a,#0xff
	mov	r4,a
	mov	dptr,#__divulong_PARM_2
	mov	a,_f_lseek_sloc3_1_0
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	mov	a,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	__divulong
	mov	_f_lseek_sloc1_1_0,dpl
	mov	(_f_lseek_sloc1_1_0 + 1),dph
	mov	(_f_lseek_sloc1_1_0 + 2),b
	mov	(_f_lseek_sloc1_1_0 + 3),a
	mov	a,_f_lseek_sloc6_1_0
	add	a,#0xff
	mov	r0,a
	mov	a,(_f_lseek_sloc6_1_0 + 1)
	addc	a,#0xff
	mov	r2,a
	mov	a,(_f_lseek_sloc6_1_0 + 2)
	addc	a,#0xff
	mov	r3,a
	mov	a,(_f_lseek_sloc6_1_0 + 3)
	addc	a,#0xff
	mov	r4,a
	mov	dptr,#__divulong_PARM_2
	mov	a,_f_lseek_sloc3_1_0
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	lcall	__divulong
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	clr	c
	mov	a,_f_lseek_sloc1_1_0
	subb	a,r1
	mov	a,(_f_lseek_sloc1_1_0 + 1)
	subb	a,r2
	mov	a,(_f_lseek_sloc1_1_0 + 2)
	subb	a,r3
	mov	a,(_f_lseek_sloc1_1_0 + 3)
	subb	a,r4
	jnc	00303$
	ljmp	00137$
00303$:
;	FATFS\src\ff.c:3175: fp->fptr = (ifptr - 1) & ~(bcs - 1);	/* start from the current cluster */
	dec	_f_lseek_sloc6_1_0
	mov	a,#0xff
	cjne	a,_f_lseek_sloc6_1_0,00304$
	dec	(_f_lseek_sloc6_1_0 + 1)
	cjne	a,(_f_lseek_sloc6_1_0 + 1),00304$
	dec	(_f_lseek_sloc6_1_0 + 2)
	cjne	a,(_f_lseek_sloc6_1_0 + 2),00304$
	dec	(_f_lseek_sloc6_1_0 + 3)
00304$:
	mov	a,_f_lseek_sloc3_1_0
	add	a,#0xff
	mov	r2,a
	mov	a,(_f_lseek_sloc3_1_0 + 1)
	addc	a,#0xff
	mov	r3,a
	mov	a,(_f_lseek_sloc3_1_0 + 2)
	addc	a,#0xff
	mov	r1,a
	mov	a,(_f_lseek_sloc3_1_0 + 3)
	addc	a,#0xff
	mov	r4,a
	mov	a,r2
	cpl	a
	mov	r2,a
	mov	a,r3
	cpl	a
	mov	r3,a
	mov	a,r1
	cpl	a
	mov	r1,a
	mov	a,r4
	cpl	a
	mov	r4,a
	mov	a,_f_lseek_sloc6_1_0
	anl	ar2,a
	mov	a,(_f_lseek_sloc6_1_0 + 1)
	anl	ar3,a
	mov	a,(_f_lseek_sloc6_1_0 + 2)
	anl	ar1,a
	mov	a,(_f_lseek_sloc6_1_0 + 3)
	anl	ar4,a
	mov	dpl,_f_lseek_sloc5_1_0
	mov	dph,(_f_lseek_sloc5_1_0 + 1)
	mov	b,(_f_lseek_sloc5_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	FATFS\src\ff.c:3176: ofs -= fp->fptr;
	mov	dptr,#_f_lseek_PARM_2
	mov	a,_f_lseek_sloc4_1_0
	clr	c
	subb	a,r2
	movx	@dptr,a
	mov	a,(_f_lseek_sloc4_1_0 + 1)
	subb	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc4_1_0 + 2)
	subb	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc4_1_0 + 3)
	subb	a,r4
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:3177: clst = fp->clust;
	mov	a,#0x13
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_f_lseek_clst_131072_232
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	sjmp	00138$
00137$:
;	FATFS\src\ff.c:3179: clst = fp->sclust;						/* start from the first cluster */
	mov	dptr,#_f_lseek_fp_65536_218
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0f
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_f_lseek_clst_131072_232
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:3188: fp->clust = clst;
	mov	a,#0x13
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00138$:
;	FATFS\src\ff.c:3190: if (clst != 0) {
	mov	dptr,#_f_lseek_clst_131072_232
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00305$
	ljmp	00155$
00305$:
;	FATFS\src\ff.c:3191: while (ofs > bcs) {						/* Cluster following loop */
00145$:
	mov	dptr,#_f_lseek_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,_f_lseek_sloc3_1_0
	subb	a,r4
	mov	a,(_f_lseek_sloc3_1_0 + 1)
	subb	a,r5
	mov	a,(_f_lseek_sloc3_1_0 + 2)
	subb	a,r6
	mov	a,(_f_lseek_sloc3_1_0 + 3)
	subb	a,r7
	jc	00306$
	ljmp	00147$
00306$:
;	FATFS\src\ff.c:3200: clst = get_fat(fp->fs, clst);	/* Follow cluster chain if not in write mode */
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_f_lseek_fp_65536_218
	movx	a,@dptr
	mov	_f_lseek_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc5_1_0 + 2),a
	mov	dpl,_f_lseek_sloc5_1_0
	mov	dph,(_f_lseek_sloc5_1_0 + 1)
	mov	b,(_f_lseek_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	_f_lseek_sloc6_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc6_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc6_1_0 + 2),a
	mov	dptr,#_f_lseek_clst_131072_232
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_fat_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_lseek_sloc6_1_0
	mov	dph,(_f_lseek_sloc6_1_0 + 1)
	mov	b,(_f_lseek_sloc6_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r0,#_get_fat
	mov	r1,#(_get_fat >> 8)
	mov	r2,#(_get_fat >> 16)
	lcall	__sdcc_banked_call
	mov	_f_lseek_sloc6_1_0,dpl
	mov	(_f_lseek_sloc6_1_0 + 1),dph
	mov	(_f_lseek_sloc6_1_0 + 2),b
	mov	(_f_lseek_sloc6_1_0 + 3),a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_f_lseek_clst_131072_232
	mov	a,_f_lseek_sloc6_1_0
	movx	@dptr,a
	mov	a,(_f_lseek_sloc6_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc6_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc6_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:3201: if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
	mov	a,_f_lseek_sloc6_1_0
	anl	a,(_f_lseek_sloc6_1_0 + 1)
	anl	a,(_f_lseek_sloc6_1_0 + 2)
	anl	a,(_f_lseek_sloc6_1_0 + 3)
	cjne	a,#0xFF,00307$
	sjmp	00308$
00307$:
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	sjmp	00141$
00308$:
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,#0x06
	add	a,_f_lseek_sloc5_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_lseek_sloc5_1_0 + 1)
	mov	r2,a
	mov	r3,(_f_lseek_sloc5_1_0 + 2)
	mov	dpl,r0
	mov	dph,r2
	mov	b,r3
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x01
	ljmp	__sdcc_banked_ret
00141$:
;	FATFS\src\ff.c:3202: if (clst <= 1 || clst >= fp->fs->n_fatent) ABORT(fp->fs, FR_INT_ERR);
	clr	c
	mov	a,#0x01
	subb	a,_f_lseek_sloc6_1_0
	clr	a
	subb	a,(_f_lseek_sloc6_1_0 + 1)
	clr	a
	subb	a,(_f_lseek_sloc6_1_0 + 2)
	clr	a
	subb	a,(_f_lseek_sloc6_1_0 + 3)
	jnc	00142$
	mov	dpl,_f_lseek_sloc5_1_0
	mov	dph,(_f_lseek_sloc5_1_0 + 1)
	mov	b,(_f_lseek_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x0a
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r3
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	clr	c
	mov	a,_f_lseek_sloc6_1_0
	subb	a,r0
	mov	a,(_f_lseek_sloc6_1_0 + 1)
	subb	a,r1
	mov	a,(_f_lseek_sloc6_1_0 + 2)
	subb	a,r2
	mov	a,(_f_lseek_sloc6_1_0 + 3)
	subb	a,r3
	jc	00143$
00142$:
	mov	dptr,#_f_lseek_fp_65536_218
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x06
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,#0x02
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	__sdcc_banked_ret
00143$:
;	FATFS\src\ff.c:3203: fp->clust = clst;
	mov	a,#0x13
	add	a,_f_lseek_sloc5_1_0
	mov	r1,a
	clr	a
	addc	a,(_f_lseek_sloc5_1_0 + 1)
	mov	r2,a
	mov	r3,(_f_lseek_sloc5_1_0 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,_f_lseek_sloc6_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc6_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc6_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc6_1_0 + 3)
	lcall	__gptrput
;	FATFS\src\ff.c:3204: fp->fptr += bcs;
	mov	a,#0x07
	add	a,_f_lseek_sloc5_1_0
	mov	_f_lseek_sloc6_1_0,a
	clr	a
	addc	a,(_f_lseek_sloc5_1_0 + 1)
	mov	(_f_lseek_sloc6_1_0 + 1),a
	mov	(_f_lseek_sloc6_1_0 + 2),(_f_lseek_sloc5_1_0 + 2)
	mov	dpl,_f_lseek_sloc6_1_0
	mov	dph,(_f_lseek_sloc6_1_0 + 1)
	mov	b,(_f_lseek_sloc6_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,_f_lseek_sloc3_1_0
	add	a,r1
	mov	r1,a
	mov	a,(_f_lseek_sloc3_1_0 + 1)
	addc	a,r2
	mov	r2,a
	mov	a,(_f_lseek_sloc3_1_0 + 2)
	addc	a,r0
	mov	r0,a
	mov	a,(_f_lseek_sloc3_1_0 + 3)
	addc	a,r3
	mov	r3,a
	mov	dpl,_f_lseek_sloc6_1_0
	mov	dph,(_f_lseek_sloc6_1_0 + 1)
	mov	b,(_f_lseek_sloc6_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	FATFS\src\ff.c:3205: ofs -= bcs;
	mov	dptr,#_f_lseek_PARM_2
	mov	a,r4
	clr	c
	subb	a,_f_lseek_sloc3_1_0
	movx	@dptr,a
	mov	a,r5
	subb	a,(_f_lseek_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	subb	a,(_f_lseek_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	subb	a,(_f_lseek_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	ljmp	00145$
00147$:
;	FATFS\src\ff.c:3207: fp->fptr += ofs;
	mov	dptr,#_f_lseek_fp_65536_218
	movx	a,@dptr
	mov	_f_lseek_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc6_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc6_1_0 + 2),a
	mov	a,#0x07
	add	a,_f_lseek_sloc6_1_0
	mov	_f_lseek_sloc5_1_0,a
	clr	a
	addc	a,(_f_lseek_sloc6_1_0 + 1)
	mov	(_f_lseek_sloc5_1_0 + 1),a
	mov	(_f_lseek_sloc5_1_0 + 2),(_f_lseek_sloc6_1_0 + 2)
	mov	dpl,_f_lseek_sloc5_1_0
	mov	dph,(_f_lseek_sloc5_1_0 + 1)
	mov	b,(_f_lseek_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,r4
	add	a,r0
	mov	r0,a
	mov	a,r5
	addc	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r1
	mov	r1,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	dpl,_f_lseek_sloc5_1_0
	mov	dph,(_f_lseek_sloc5_1_0 + 1)
	mov	b,(_f_lseek_sloc5_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	FATFS\src\ff.c:3208: if (ofs % SS(fp->fs)) {
	mov	a,r4
	jnz	00311$
	mov	a,r5
	jb	acc.0,00311$
	ljmp	00155$
00311$:
;	FATFS\src\ff.c:3209: nsect = clust2sect(fp->fs, clst);	/* Current sector */
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_f_lseek_sloc6_1_0
	mov	dph,(_f_lseek_sloc6_1_0 + 1)
	mov	b,(_f_lseek_sloc6_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_f_lseek_clst_131072_232
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_clust2sect_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r0,#_clust2sect
	mov	r1,#(_clust2sect >> 8)
	mov	r2,#(_clust2sect >> 16)
	lcall	__sdcc_banked_call
	mov	_f_lseek_sloc4_1_0,dpl
	mov	(_f_lseek_sloc4_1_0 + 1),dph
	mov	(_f_lseek_sloc4_1_0 + 2),b
	mov	(_f_lseek_sloc4_1_0 + 3),a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	FATFS\src\ff.c:3210: if (!nsect) ABORT(fp->fs, FR_INT_ERR);
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,_f_lseek_sloc4_1_0
	orl	a,(_f_lseek_sloc4_1_0 + 1)
	orl	a,(_f_lseek_sloc4_1_0 + 2)
	orl	a,(_f_lseek_sloc4_1_0 + 3)
	jnz	00149$
	mov	a,#0x06
	add	a,_f_lseek_sloc6_1_0
	mov	r1,a
	clr	a
	addc	a,(_f_lseek_sloc6_1_0 + 1)
	mov	r2,a
	mov	r3,(_f_lseek_sloc6_1_0 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,#0x02
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	__sdcc_banked_ret
00149$:
;	FATFS\src\ff.c:3211: nsect += ofs / SS(fp->fs);
	mov	a,r7
	mov	r7,#0x00
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r5
	rrc	a
	mov	r4,a
	mov	dptr,#_f_lseek_nsect_131072_232
	add	a,_f_lseek_sloc4_1_0
	movx	@dptr,a
	mov	a,r5
	addc	a,(_f_lseek_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a,(_f_lseek_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a,(_f_lseek_sloc4_1_0 + 3)
	inc	dptr
	movx	@dptr,a
00155$:
;	FATFS\src\ff.c:3215: if (fp->fptr % SS(fp->fs) && nsect != fp->dsect) {	/* Fill sector cache if needed */
	mov	dptr,#_f_lseek_fp_65536_218
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x07
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r1
	jnz	00313$
	mov	a,r2
	jnb	acc.0,00161$
00313$:
	mov	a,#0x17
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_f_lseek_nsect_131072_232
	movx	a,@dptr
	mov	_f_lseek_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc6_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc6_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc6_1_0 + 3),a
	mov	a,r1
	cjne	a,_f_lseek_sloc6_1_0,00314$
	mov	a,r2
	cjne	a,(_f_lseek_sloc6_1_0 + 1),00314$
	mov	a,r3
	cjne	a,(_f_lseek_sloc6_1_0 + 2),00314$
	mov	a,r4
	cjne	a,(_f_lseek_sloc6_1_0 + 3),00314$
	sjmp	00161$
00314$:
;	FATFS\src\ff.c:3227: fp->dsect = nsect;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_f_lseek_sloc6_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc6_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc6_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc6_1_0 + 3)
	lcall	__gptrput
00161$:
;	FATFS\src\ff.c:3237: LEAVE_FF(fp->fs, res);
	mov	dptr,#_f_lseek_res_65536_219
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
;	FATFS\src\ff.c:3238: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_opendir'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_opendir_sloc0_1_0'
;path                      Allocated with name '_f_opendir_PARM_2'
;dp                        Allocated with name '_f_opendir_dp_65536_243'
;res                       Allocated with name '_f_opendir_res_65536_244'
;fs                        Allocated with name '_f_opendir_fs_65536_244'
;sfn                       Allocated with name '_f_opendir_sfn_65536_244'
;lfn                       Allocated with name '_f_opendir_lfn_65536_244'
;------------------------------------------------------------
;	FATFS\src\ff.c:3247: FRESULT f_opendir (
;	-----------------------------------------
;	 function f_opendir
;	-----------------------------------------
_f_opendir:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_opendir_dp_65536_243
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:3257: if (!dp) return FR_INVALID_OBJECT;
	mov	dptr,#_f_opendir_dp_65536_243
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00102$
	mov	dpl,#0x09
	ljmp	__sdcc_banked_ret
00102$:
;	FATFS\src\ff.c:3260: res = find_volume(&fs, &path, 0);
	mov	dptr,#_find_volume_PARM_2
	mov	a,#_f_opendir_PARM_2
	movx	@dptr,a
	mov	a,#(_f_opendir_PARM_2 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_find_volume_PARM_3
	movx	@dptr,a
	mov	dptr,#_f_opendir_fs_65536_244
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_find_volume
	mov	r1,#(_find_volume >> 8)
	mov	r2,#(_find_volume >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_f_opendir_res_65536_244
	mov	a,r4
	movx	@dptr,a
;	FATFS\src\ff.c:3261: if (res == FR_OK) {
	mov	a,r4
	jz	00159$
	ljmp	00117$
00159$:
;	FATFS\src\ff.c:3262: dp->fs = fs;
	mov	dptr,#_f_opendir_fs_65536_244
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	FATFS\src\ff.c:3263: INIT_BUF(*dp);
	mov	dptr,#0x0200
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_ff_memalloc
	mov	r1,#(_ff_memalloc >> 8)
	mov	r2,#(_ff_memalloc >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_f_opendir_sloc0_1_0,r2
	mov	(_f_opendir_sloc0_1_0 + 1),r3
	mov	(_f_opendir_sloc0_1_0 + 2),r4
	mov	a,_f_opendir_sloc0_1_0
	orl	a,(_f_opendir_sloc0_1_0 + 1)
	jnz	00104$
	mov	dpl,#0x11
	ljmp	__sdcc_banked_ret
00104$:
	mov	a,#0x19
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	mov	a,_f_opendir_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_opendir_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_opendir_sloc0_1_0 + 2)
	lcall	__gptrput
	mov	a,#0x16
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#_f_opendir_sfn_65536_244
	lcall	__gptrput
	inc	dptr
	mov	a,#(_f_opendir_sfn_65536_244 >> 8)
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	FATFS\src\ff.c:3264: res = follow_path(dp, path);			/* Follow the path to the directory */
	mov	dptr,#_f_opendir_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_follow_path_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_follow_path
	mov	r1,#(_follow_path >> 8)
	mov	r2,#(_follow_path >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	dptr,#_f_opendir_res_65536_244
	mov	a,r7
	movx	@dptr,a
;	FATFS\src\ff.c:3265: FREE_BUF();
	mov	r4,_f_opendir_sloc0_1_0
	mov	r5,(_f_opendir_sloc0_1_0 + 1)
	mov	r6,(_f_opendir_sloc0_1_0 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar7
	mov	r0,#_ff_memfree
	mov	r1,#(_ff_memfree >> 8)
	mov	r2,#(_ff_memfree >> 16)
	lcall	__sdcc_banked_call
	pop	ar7
;	FATFS\src\ff.c:3266: if (res == FR_OK) {						/* Follow completed */
	mov	a,r7
	jz	00161$
	ljmp	00113$
00161$:
;	FATFS\src\ff.c:3267: if (dp->dir) {						/* It is not the origin directory itself */
	mov	dptr,#_f_opendir_dp_65536_243
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x13
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jnz	00162$
	ljmp	00109$
00162$:
;	FATFS\src\ff.c:3268: if (dp->dir[DIR_Attr] & AM_DIR)	/* The object is a sub directory */
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x0b
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	pop	ar7
	pop	ar6
	pop	ar5
	jnb	acc.4,00106$
;	FATFS\src\ff.c:3269: dp->sclust = ld_clust(fs, dp->dir);
	mov	a,#0x07
	add	a,r5
	mov	_f_opendir_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_opendir_sloc0_1_0 + 1),a
	mov	(_f_opendir_sloc0_1_0 + 2),r7
	mov	dptr,#_f_opendir_fs_65536_244
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ld_clust_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	mov	r0,#_ld_clust
	mov	r1,#(_ld_clust >> 8)
	mov	r2,#(_ld_clust >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r4,b
	mov	r7,a
	mov	dpl,_f_opendir_sloc0_1_0
	mov	dph,(_f_opendir_sloc0_1_0 + 1)
	mov	b,(_f_opendir_sloc0_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	sjmp	00109$
00106$:
;	FATFS\src\ff.c:3271: res = FR_NO_PATH;
	mov	dptr,#_f_opendir_res_65536_244
	mov	a,#0x05
	movx	@dptr,a
00109$:
;	FATFS\src\ff.c:3273: if (res == FR_OK) {
	mov	dptr,#_f_opendir_res_65536_244
	movx	a,@dptr
	jnz	00113$
;	FATFS\src\ff.c:3274: dp->id = fs->id;
	mov	dptr,#_f_opendir_dp_65536_243
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x03
	add	a,r5
	mov	_f_opendir_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_opendir_sloc0_1_0 + 1),a
	mov	(_f_opendir_sloc0_1_0 + 2),r7
	mov	dptr,#_f_opendir_fs_65536_244
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x06
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	dpl,_f_opendir_sloc0_1_0
	mov	dph,(_f_opendir_sloc0_1_0 + 1)
	mov	b,(_f_opendir_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	FATFS\src\ff.c:3275: res = dir_sdi(dp, 0);			/* Rewind directory */
	mov	dptr,#_dir_sdi_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_dir_sdi
	mov	r1,#(_dir_sdi >> 8)
	mov	r2,#(_dir_sdi >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	dptr,#_f_opendir_res_65536_244
	movx	@dptr,a
00113$:
;	FATFS\src\ff.c:3289: if (res == FR_NO_FILE) res = FR_NO_PATH;
	mov	dptr,#_f_opendir_res_65536_244
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00117$
	mov	dptr,#_f_opendir_res_65536_244
	mov	a,#0x05
	movx	@dptr,a
00117$:
;	FATFS\src\ff.c:3291: if (res != FR_OK) dp->fs = 0;		/* Invalidate the directory object if function faild */
	mov	dptr,#_f_opendir_res_65536_244
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00119$
	mov	dptr,#_f_opendir_dp_65536_243
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00119$:
;	FATFS\src\ff.c:3293: LEAVE_FF(fs, res);
	mov	dpl,r7
;	FATFS\src\ff.c:3294: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_closedir'
;------------------------------------------------------------
;dp                        Allocated with name '_f_closedir_dp_65536_250'
;res                       Allocated with name '_f_closedir_res_65536_251'
;------------------------------------------------------------
;	FATFS\src\ff.c:3303: FRESULT f_closedir (
;	-----------------------------------------
;	 function f_closedir
;	-----------------------------------------
_f_closedir:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_closedir_dp_65536_250
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:3310: res = validate(dp);
	mov	dptr,#_f_closedir_dp_65536_250
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_validate
	mov	r1,#(_validate >> 8)
	mov	r2,#(_validate >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	FATFS\src\ff.c:3311: if (res == FR_OK) {
	mov	a,r4
	jnz	00102$
;	FATFS\src\ff.c:3320: dp->fs = 0;				/* Invalidate directory object */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00102$:
;	FATFS\src\ff.c:3325: return res;
	mov	dpl,r4
;	FATFS\src\ff.c:3326: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_readdir'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_readdir_sloc0_1_0'
;fno                       Allocated with name '_f_readdir_PARM_2'
;dp                        Allocated with name '_f_readdir_dp_65536_253'
;res                       Allocated with name '_f_readdir_res_65536_254'
;sfn                       Allocated with name '_f_readdir_sfn_65536_254'
;lfn                       Allocated with name '_f_readdir_lfn_65536_254'
;------------------------------------------------------------
;	FATFS\src\ff.c:3335: FRESULT f_readdir (
;	-----------------------------------------
;	 function f_readdir
;	-----------------------------------------
_f_readdir:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_readdir_dp_65536_253
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:3343: res = validate(dp);						/* Check validity of the object */
	mov	dptr,#_f_readdir_dp_65536_253
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_validate
	mov	r1,#(_validate >> 8)
	mov	r2,#(_validate >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_f_readdir_res_65536_254
	mov	a,r4
	movx	@dptr,a
;	FATFS\src\ff.c:3344: if (res == FR_OK)
	mov	a,r4
	jz	00140$
	ljmp	00113$
00140$:
;	FATFS\src\ff.c:3346: if (!fno)
	mov	dptr,#_f_readdir_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_f_readdir_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00110$
;	FATFS\src\ff.c:3348: res = dir_sdi(dp, 0);			/* Rewind the directory object */
	mov	dptr,#_dir_sdi_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_dir_sdi
	mov	r1,#(_dir_sdi >> 8)
	mov	r2,#(_dir_sdi >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	dptr,#_f_readdir_res_65536_254
	movx	@dptr,a
	ljmp	00113$
00110$:
;	FATFS\src\ff.c:3352: INIT_BUF(*dp);
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#0x0200
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	mov	r0,#_ff_memalloc
	mov	r1,#(_ff_memalloc >> 8)
	mov	r2,#(_ff_memalloc >> 16)
	lcall	__sdcc_banked_call
	mov	r0,dpl
	mov	r1,dph
	mov	r4,b
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_f_readdir_sloc0_1_0,r0
	mov	(_f_readdir_sloc0_1_0 + 1),r1
	mov	(_f_readdir_sloc0_1_0 + 2),r4
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,_f_readdir_sloc0_1_0
	orl	a,(_f_readdir_sloc0_1_0 + 1)
	jnz	00102$
	mov	dpl,#0x11
	ljmp	__sdcc_banked_ret
00102$:
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x19
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	mov	a,_f_readdir_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_readdir_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_readdir_sloc0_1_0 + 2)
	lcall	__gptrput
	mov	a,#0x16
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#_f_readdir_sfn_65536_254
	lcall	__gptrput
	inc	dptr
	mov	a,#(_f_readdir_sfn_65536_254 >> 8)
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	FATFS\src\ff.c:3353: res = dir_read(dp, 0);			/* Read an item */
	mov	dptr,#_dir_read_PARM_2
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	mov	r0,#_dir_read
	mov	r1,#(_dir_read >> 8)
	mov	r2,#(_dir_read >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dptr,#_f_readdir_res_65536_254
	mov	a,r7
	movx	@dptr,a
;	FATFS\src\ff.c:3354: if (res == FR_NO_FILE) 			/* Reached end of directory */
	cjne	r7,#0x04,00143$
	sjmp	00144$
00143$:
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00104$
00144$:
	pop	ar4
	pop	ar3
	pop	ar2
;	FATFS\src\ff.c:3356: dp->sect = 0;
	mov	dptr,#_f_readdir_dp_65536_253
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0f
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\ff.c:3357: res = FR_OK;
	mov	dptr,#_f_readdir_res_65536_254
	movx	@dptr,a
00104$:
;	FATFS\src\ff.c:3359: if (res == FR_OK)
	mov	dptr,#_f_readdir_res_65536_254
	movx	a,@dptr
	jnz	00108$
;	FATFS\src\ff.c:3361: get_fileinfo(dp, fno);		/* Get the object information */
	mov	dptr,#_f_readdir_dp_65536_253
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_fileinfo_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_get_fileinfo
	mov	r1,#(_get_fileinfo >> 8)
	mov	r2,#(_get_fileinfo >> 16)
	lcall	__sdcc_banked_call
;	FATFS\src\ff.c:3362: res = dir_next(dp, 0);		/* Increment index for next */
	mov	dptr,#_f_readdir_dp_65536_253
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dir_next_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_dir_next
	mov	r1,#(_dir_next >> 8)
	mov	r2,#(_dir_next >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	dptr,#_f_readdir_res_65536_254
	mov	a,r7
	movx	@dptr,a
;	FATFS\src\ff.c:3363: if(res == FR_NO_FILE)
	cjne	r7,#0x04,00108$
;	FATFS\src\ff.c:3365: dp->sect = 0;
	mov	dptr,#_f_readdir_dp_65536_253
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0f
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	FATFS\src\ff.c:3366: res = FR_OK;
	mov	dptr,#_f_readdir_res_65536_254
	movx	@dptr,a
00108$:
;	FATFS\src\ff.c:3369: FREE_BUF();
	mov	r5,_f_readdir_sloc0_1_0
	mov	r6,(_f_readdir_sloc0_1_0 + 1)
	mov	r7,(_f_readdir_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_ff_memfree
	mov	r1,#(_ff_memfree >> 8)
	mov	r2,#(_ff_memfree >> 16)
	lcall	__sdcc_banked_call
00113$:
;	FATFS\src\ff.c:3373: LEAVE_FF(dp->fs, res);
	mov	dptr,#_f_readdir_res_65536_254
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
;	FATFS\src\ff.c:3374: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_stat'
;------------------------------------------------------------
;fno                       Allocated with name '_f_stat_PARM_2'
;path                      Allocated with name '_f_stat_path_65536_262'
;res                       Allocated with name '_f_stat_res_65536_263'
;dj                        Allocated with name '_f_stat_dj_65536_263'
;sfn                       Allocated with name '_f_stat_sfn_65536_263'
;lfn                       Allocated with name '_f_stat_lfn_65536_263'
;------------------------------------------------------------
;	FATFS\src\ff.c:3383: FRESULT f_stat (
;	-----------------------------------------
;	 function f_stat
;	-----------------------------------------
_f_stat:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_stat_path_65536_262
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:3394: res = find_volume(&dj.fs, &path, 0);
	mov	dptr,#_find_volume_PARM_2
	mov	a,#_f_stat_path_65536_262
	movx	@dptr,a
	mov	a,#(_f_stat_path_65536_262 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_find_volume_PARM_3
	movx	@dptr,a
	mov	dptr,#_f_stat_dj_65536_263
	mov	b,#0x00
	mov	r0,#_find_volume
	mov	r1,#(_find_volume >> 8)
	mov	r2,#(_find_volume >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	dptr,#_f_stat_res_65536_263
	mov	a,r7
	movx	@dptr,a
;	FATFS\src\ff.c:3395: if (res == FR_OK) {
	mov	a,r7
	jz	00134$
	ljmp	00111$
00134$:
;	FATFS\src\ff.c:3396: INIT_BUF(dj);
	mov	dptr,#0x0200
	mov	r0,#_ff_memalloc
	mov	r1,#(_ff_memalloc >> 8)
	mov	r2,#(_ff_memalloc >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jnz	00102$
	mov	dpl,#0x11
	ljmp	__sdcc_banked_ret
00102$:
	mov	dptr,#(_f_stat_dj_65536_263 + 0x0019)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_f_stat_dj_65536_263 + 0x0016)
	mov	a,#_f_stat_sfn_65536_263
	movx	@dptr,a
	mov	a,#(_f_stat_sfn_65536_263 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:3397: res = follow_path(&dj, path);	/* Follow the file path */
	mov	dptr,#_f_stat_path_65536_262
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_follow_path_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_stat_dj_65536_263
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_follow_path
	mov	r1,#(_follow_path >> 8)
	mov	r2,#(_follow_path >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_f_stat_res_65536_263
	mov	a,r4
	movx	@dptr,a
;	FATFS\src\ff.c:3398: if (res == FR_OK) {				/* Follow completed */
	mov	a,r4
	jnz	00109$
;	FATFS\src\ff.c:3399: if (dj.dir) {		/* Found an object */
	mov	dptr,#(_f_stat_dj_65536_263 + 0x0013)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jz	00106$
;	FATFS\src\ff.c:3400: if (fno) get_fileinfo(&dj, fno);
	mov	dptr,#_f_stat_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_f_stat_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00109$
	mov	dptr,#_get_fileinfo_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_stat_dj_65536_263
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_get_fileinfo
	mov	r1,#(_get_fileinfo >> 8)
	mov	r2,#(_get_fileinfo >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00109$
00106$:
;	FATFS\src\ff.c:3402: res = FR_INVALID_NAME;
	mov	dptr,#_f_stat_res_65536_263
	mov	a,#0x06
	movx	@dptr,a
00109$:
;	FATFS\src\ff.c:3405: FREE_BUF();
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_ff_memfree
	mov	r1,#(_ff_memfree >> 8)
	mov	r2,#(_ff_memfree >> 16)
	lcall	__sdcc_banked_call
00111$:
;	FATFS\src\ff.c:3408: LEAVE_FF(dj.fs, res);
	mov	dptr,#_f_stat_res_65536_263
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
;	FATFS\src\ff.c:3409: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_getlabel'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_getlabel_sloc0_1_0'
;sloc1                     Allocated with name '_f_getlabel_sloc1_1_0'
;label                     Allocated with name '_f_getlabel_PARM_2'
;sn                        Allocated with name '_f_getlabel_PARM_3'
;path                      Allocated with name '_f_getlabel_path_65536_269'
;res                       Allocated with name '_f_getlabel_res_65536_270'
;dj                        Allocated with name '_f_getlabel_dj_65536_270'
;i                         Allocated with name '_f_getlabel_i_65536_270'
;j                         Allocated with name '_f_getlabel_j_65536_270'
;------------------------------------------------------------
;	FATFS\src\ff.c:3854: FRESULT f_getlabel (
;	-----------------------------------------
;	 function f_getlabel
;	-----------------------------------------
_f_getlabel:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_getlabel_path_65536_269
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:3866: res = find_volume(&dj.fs, &path, 0);
	mov	dptr,#_find_volume_PARM_2
	mov	a,#_f_getlabel_path_65536_269
	movx	@dptr,a
	mov	a,#(_f_getlabel_path_65536_269 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_find_volume_PARM_3
	movx	@dptr,a
	mov	dptr,#_f_getlabel_dj_65536_270
	mov	b,#0x00
	mov	r0,#_find_volume
	mov	r1,#(_find_volume >> 8)
	mov	r2,#(_find_volume >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	dptr,#_f_getlabel_res_65536_270
	mov	a,r7
	movx	@dptr,a
;	FATFS\src\ff.c:3869: if (res == FR_OK && label) {
	mov	a,r7
	jz	00169$
	ljmp	00113$
00169$:
	mov	dptr,#_f_getlabel_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00170$
	ljmp	00113$
00170$:
;	FATFS\src\ff.c:3870: dj.sclust = 0;					/* Open root directory */
	mov	dptr,#(_f_getlabel_dj_65536_270 + 0x0007)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:3871: res = dir_sdi(&dj, 0);
	mov	dptr,#_dir_sdi_PARM_2
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_getlabel_dj_65536_270
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_dir_sdi
	mov	r1,#(_dir_sdi >> 8)
	mov	r2,#(_dir_sdi >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_f_getlabel_res_65536_270
	mov	a,r4
	movx	@dptr,a
;	FATFS\src\ff.c:3872: if (res == FR_OK) {
	mov	a,r4
	jz	00171$
	ljmp	00113$
00171$:
;	FATFS\src\ff.c:3873: res = dir_read(&dj, 1);		/* Get an entry with AM_VOL */
	mov	dptr,#_dir_read_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_getlabel_dj_65536_270
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_dir_read
	mov	r1,#(_dir_read >> 8)
	mov	r2,#(_dir_read >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_f_getlabel_res_65536_270
	mov	a,r4
	movx	@dptr,a
;	FATFS\src\ff.c:3874: if (res == FR_OK) {			/* A volume label is exist */
	mov	a,r4
	jz	00172$
	ljmp	00107$
00172$:
;	FATFS\src\ff.c:3885: mem_cpy(label, dj.dir, 11);
	push	ar4
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
	mov	_f_getlabel_sloc0_1_0,r1
	mov	(_f_getlabel_sloc0_1_0 + 1),r2
	mov	(_f_getlabel_sloc0_1_0 + 2),r3
	mov	dptr,#(_f_getlabel_dj_65536_270 + 0x0013)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_mem_cpy_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mem_cpy_PARM_3
	mov	a,#0x0b
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_getlabel_sloc0_1_0
	mov	dph,(_f_getlabel_sloc0_1_0 + 1)
	mov	b,(_f_getlabel_sloc0_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r0,#_mem_cpy
	mov	r1,#(_mem_cpy >> 8)
	mov	r2,#(_mem_cpy >> 16)
	lcall	__sdcc_banked_call
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	FATFS\src\ff.c:3888: do {
	mov	_f_getlabel_sloc0_1_0,#0x0b
	mov	(_f_getlabel_sloc0_1_0 + 1),#0x00
;	FATFS\src\ff.c:3909: LEAVE_FF(dj.fs, res);
	pop	ar4
;	FATFS\src\ff.c:3888: do {
00103$:
;	FATFS\src\ff.c:3889: label[j] = 0;
	mov	a,_f_getlabel_sloc0_1_0
	add	a,r5
	mov	r1,a
	mov	a,(_f_getlabel_sloc0_1_0 + 1)
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	clr	a
	lcall	__gptrput
;	FATFS\src\ff.c:3890: if (!j) break;
	mov	a,_f_getlabel_sloc0_1_0
	orl	a,(_f_getlabel_sloc0_1_0 + 1)
	jz	00107$
;	FATFS\src\ff.c:3891: } while (label[--j] == ' ');
	dec	_f_getlabel_sloc0_1_0
	mov	a,#0xff
	cjne	a,_f_getlabel_sloc0_1_0,00174$
	dec	(_f_getlabel_sloc0_1_0 + 1)
00174$:
	mov	a,_f_getlabel_sloc0_1_0
	add	a,r5
	mov	r1,a
	mov	a,(_f_getlabel_sloc0_1_0 + 1)
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x20,00175$
	sjmp	00103$
00175$:
00107$:
;	FATFS\src\ff.c:3893: if (res == FR_NO_FILE) {	/* No label, return nul string */
	cjne	r4,#0x04,00113$
;	FATFS\src\ff.c:3894: label[0] = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	FATFS\src\ff.c:3895: res = FR_OK;
	mov	dptr,#_f_getlabel_res_65536_270
	movx	@dptr,a
00113$:
;	FATFS\src\ff.c:3901: if (res == FR_OK && sn) {
	mov	dptr,#_f_getlabel_res_65536_270
	movx	a,@dptr
	jz	00178$
	ljmp	00118$
00178$:
	mov	dptr,#_f_getlabel_PARM_3
	movx	a,@dptr
	mov	_f_getlabel_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_getlabel_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_getlabel_sloc0_1_0 + 2),a
	mov	dptr,#_f_getlabel_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00179$
	ljmp	00118$
00179$:
;	FATFS\src\ff.c:3902: res = move_window(dj.fs, dj.fs->volbase);
	mov	dptr,#_f_getlabel_dj_65536_270
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x12
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_move_window_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_move_window
	mov	r1,#(_move_window >> 8)
	mov	r2,#(_move_window >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	dptr,#_f_getlabel_res_65536_270
	mov	a,r7
	movx	@dptr,a
;	FATFS\src\ff.c:3903: if (res == FR_OK) {
	mov	a,r7
	jz	00180$
	ljmp	00118$
00180$:
;	FATFS\src\ff.c:3904: i = dj.fs->fs_type == FS_FAT32 ? BS_VolID32 : BS_VolID;
	mov	dptr,#_f_getlabel_dj_65536_270
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x03,00122$
	mov	r3,#0x43
	mov	r4,#0x00
	sjmp	00123$
00122$:
	mov	r3,#0x27
	mov	r4,#0x00
00123$:
;	FATFS\src\ff.c:3905: *sn = LD_DWORD(&dj.fs->win[i]);
	mov	dptr,#_f_getlabel_dj_65536_270
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x26
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	a,r3
	add	a,r0
	mov	r0,a
	mov	a,r4
	addc	a,r1
	mov	r1,a
	mov	a,#0x03
	add	a,r0
	mov	r3,a
	clr	a
	addc	a,r1
	mov	r4,a
	mov	ar7,r2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	r7,#0x00
	mov	(_f_getlabel_sloc1_1_0 + 3),r3
;	1-genFromRTrack replaced	mov	_f_getlabel_sloc1_1_0,#0x00
	mov	_f_getlabel_sloc1_1_0,r7
;	1-genFromRTrack replaced	mov	(_f_getlabel_sloc1_1_0 + 1),#0x00
	mov	(_f_getlabel_sloc1_1_0 + 1),r7
;	1-genFromRTrack replaced	mov	(_f_getlabel_sloc1_1_0 + 2),#0x00
	mov	(_f_getlabel_sloc1_1_0 + 2),r7
	mov	a,#0x02
	add	a,r0
	mov	r4,a
	clr	a
	addc	a,r1
	mov	r6,a
	mov	ar7,r2
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r7,#0x00
	mov	ar5,r7
	mov	ar6,r4
	clr	a
	mov	r7,a
	orl	_f_getlabel_sloc1_1_0,a
	mov	a,r7
	orl	(_f_getlabel_sloc1_1_0 + 1),a
	mov	a,r6
	orl	(_f_getlabel_sloc1_1_0 + 2),a
	mov	a,r5
	orl	(_f_getlabel_sloc1_1_0 + 3),a
	mov	a,#0x01
	add	a,r0
	mov	r3,a
	clr	a
	addc	a,r1
	mov	r6,a
	mov	ar7,r2
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r3,#0x00
	mov	ar6,r7
	clr	a
	mov	r7,a
	mov	r5,a
	mov	a,_f_getlabel_sloc1_1_0
	orl	ar3,a
	mov	a,(_f_getlabel_sloc1_1_0 + 1)
	orl	ar6,a
	mov	a,(_f_getlabel_sloc1_1_0 + 2)
	orl	ar7,a
	mov	a,(_f_getlabel_sloc1_1_0 + 3)
	orl	ar5,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r4,a
	mov	a,r0
	orl	ar3,a
	mov	a,r1
	orl	ar6,a
	mov	a,r2
	orl	ar7,a
	mov	a,r4
	orl	ar5,a
	mov	dpl,_f_getlabel_sloc0_1_0
	mov	dph,(_f_getlabel_sloc0_1_0 + 1)
	mov	b,(_f_getlabel_sloc0_1_0 + 2)
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
00118$:
;	FATFS\src\ff.c:3909: LEAVE_FF(dj.fs, res);
	mov	dptr,#_f_getlabel_res_65536_270
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
;	FATFS\src\ff.c:3910: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_gets'
;------------------------------------------------------------
;len                       Allocated with name '_f_gets_PARM_2'
;fp                        Allocated with name '_f_gets_PARM_3'
;buff                      Allocated with name '_f_gets_buff_65536_278'
;n                         Allocated with name '_f_gets_n_65536_279'
;c                         Allocated with name '_f_gets_c_65536_279'
;p                         Allocated with name '_f_gets_p_65536_279'
;s                         Allocated with name '_f_gets_s_65536_279'
;rc                        Allocated with name '_f_gets_rc_65536_279'
;------------------------------------------------------------
;	FATFS\src\ff.c:4395: TCHAR* f_gets (
;	-----------------------------------------
;	 function f_gets
;	-----------------------------------------
_f_gets:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_gets_buff_65536_278
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	FATFS\src\ff.c:4402: TCHAR c, *p = buff;
	mov	dptr,#_f_gets_buff_65536_278
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	FATFS\src\ff.c:4407: while (n < len - 1) {	/* Read characters until buffer gets filled */
	mov	dptr,#_f_gets_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	dec	r3
	cjne	r3,#0xff,00132$
	dec	r4
00132$:
	mov	r1,#0x00
	mov	r2,#0x00
00108$:
	clr	c
	mov	a,r1
	subb	a,r3
	mov	a,r2
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00133$
	ljmp	00110$
00133$:
;	FATFS\src\ff.c:4452: f_read(fp, s, 1, &rc);
	push	ar3
	push	ar4
	mov	dptr,#_f_gets_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_f_read_PARM_2
	mov	a,#_f_gets_s_65536_279
	movx	@dptr,a
	mov	a,#(_f_gets_s_65536_279 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_read_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_read_PARM_4
	mov	a,#_f_gets_rc_65536_279
	movx	@dptr,a
	mov	a,#(_f_gets_rc_65536_279 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	mov	r0,#_f_read
	mov	r1,#(_f_read >> 8)
	mov	r2,#(_f_read >> 16)
	lcall	__sdcc_banked_call
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	FATFS\src\ff.c:4453: if (rc != 1) break;
	mov	dptr,#_f_gets_rc_65536_279
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	r3,#0x01,00134$
	cjne	r4,#0x00,00134$
	sjmp	00135$
00134$:
	pop	ar4
	pop	ar3
	sjmp	00110$
00135$:
	pop	ar4
	pop	ar3
;	FATFS\src\ff.c:4454: c = s[0];
	mov	dptr,#_f_gets_s_65536_279
	movx	a,@dptr
;	FATFS\src\ff.c:4457: *p++ = c;
	mov	r0,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	FATFS\src\ff.c:4458: n++;
	inc	r1
	cjne	r1,#0x00,00136$
	inc	r2
00136$:
;	FATFS\src\ff.c:4459: if (c == '\n') break;		/* Break on EOL */
	cjne	r0,#0x0a,00137$
	sjmp	00138$
00137$:
	ljmp	00108$
00138$:
00110$:
;	FATFS\src\ff.c:4461: *p = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	FATFS\src\ff.c:4462: return n ? buff : 0;			/* When no data read (eof or error), return with error. */
	mov	a,r1
	orl	a,r2
	jz	00113$
	mov	dptr,#_f_gets_buff_65536_278
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	sjmp	00114$
00113$:
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00114$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	FATFS\src\ff.c:4463: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_ExCvt:
	.db #0x80	; 128
	.db #0x9a	; 154
	.db #0x90	; 144
	.db #0x41	; 65	'A'
	.db #0x8e	; 142
	.db #0x41	; 65	'A'
	.db #0x8f	; 143
	.db #0x80	; 128
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x8e	; 142
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x4f	; 79	'O'
	.db #0x99	; 153
	.db #0x4f	; 79	'O'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x59	; 89	'Y'
	.db #0x99	; 153
	.db #0x9a	; 154
	.db #0x9b	; 155
	.db #0x9c	; 156
	.db #0x9d	; 157
	.db #0x9e	; 158
	.db #0x9f	; 159
	.db #0x41	; 65	'A'
	.db #0x49	; 73	'I'
	.db #0x4f	; 79	'O'
	.db #0x55	; 85	'U'
	.db #0xa5	; 165
	.db #0xa5	; 165
	.db #0xa6	; 166
	.db #0xa7	; 167
	.db #0xa8	; 168
	.db #0xa9	; 169
	.db #0xaa	; 170
	.db #0xab	; 171
	.db #0xac	; 172
	.db #0x21	; 33
	.db #0xae	; 174
	.db #0xaf	; 175
	.db #0xb0	; 176
	.db #0xb1	; 177
	.db #0xb2	; 178
	.db #0xb3	; 179
	.db #0xb4	; 180
	.db #0xb5	; 181
	.db #0xb6	; 182
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb9	; 185
	.db #0xba	; 186
	.db #0xbb	; 187
	.db #0xbc	; 188
	.db #0xbd	; 189
	.db #0xbe	; 190
	.db #0xbf	; 191
	.db #0xc0	; 192
	.db #0xc1	; 193
	.db #0xc2	; 194
	.db #0xc3	; 195
	.db #0xc4	; 196
	.db #0xc5	; 197
	.db #0xc6	; 198
	.db #0xc7	; 199
	.db #0xc8	; 200
	.db #0xc9	; 201
	.db #0xca	; 202
	.db #0xcb	; 203
	.db #0xcc	; 204
	.db #0xcd	; 205
	.db #0xce	; 206
	.db #0xcf	; 207
	.db #0xd0	; 208
	.db #0xd1	; 209
	.db #0xd2	; 210
	.db #0xd3	; 211
	.db #0xd4	; 212
	.db #0xd5	; 213
	.db #0xd6	; 214
	.db #0xd7	; 215
	.db #0xd8	; 216
	.db #0xd9	; 217
	.db #0xda	; 218
	.db #0xdb	; 219
	.db #0xdc	; 220
	.db #0xdd	; 221
	.db #0xde	; 222
	.db #0xdf	; 223
	.db #0xe0	; 224
	.db #0xe1	; 225
	.db #0xe2	; 226
	.db #0xe3	; 227
	.db #0xe4	; 228
	.db #0xe5	; 229
	.db #0xe6	; 230
	.db #0xe7	; 231
	.db #0xe8	; 232
	.db #0xe9	; 233
	.db #0xea	; 234
	.db #0xeb	; 235
	.db #0xec	; 236
	.db #0xed	; 237
	.db #0xee	; 238
	.db #0xef	; 239
	.db #0xf0	; 240
	.db #0xf1	; 241
	.db #0xf2	; 242
	.db #0xf3	; 243
	.db #0xf4	; 244
	.db #0xf5	; 245
	.db #0xf6	; 246
	.db #0xf7	; 247
	.db #0xf8	; 248
	.db #0xf9	; 249
	.db #0xfa	; 250
	.db #0xfb	; 251
	.db #0xfc	; 252
	.db #0xfd	; 253
	.db #0xfe	; 254
	.db #0xff	; 255
_LfnOfs:
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x0e	; 14
	.db #0x10	; 16
	.db #0x12	; 18
	.db #0x14	; 20
	.db #0x16	; 22
	.db #0x18	; 24
	.db #0x1c	; 28
	.db #0x1e	; 30
___str_0:
	.db 0x22
	.ascii "*:<>?|"
	.db 0x7f
	.db 0x00
___str_1:
	.ascii "+,;=[]"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
