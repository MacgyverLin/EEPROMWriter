;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW32)
;--------------------------------------------------------
	.module ff
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _get_fat
	.globl _clust2sect
	.globl _disk_read
	.globl _disk_status
	.globl _disk_initialize
	.globl _ff_memfree
	.globl _ff_memalloc
	.globl _ff_wtoupper
	.globl _ff_convert
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
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
Lff.move_window$sloc0$0_1$0==.
_move_window_sloc0_1_0:
	.ds 3
Lff.move_window$sloc1$0_1$0==.
_move_window_sloc1_1_0:
	.ds 4
Lff.clust2sect$sloc0$0_1$0==.
_clust2sect_sloc0_1_0:
	.ds 4
Lff.get_fat$sloc0$0_1$0==.
_get_fat_sloc0_1_0:
	.ds 3
Lff.get_fat$sloc1$0_1$0==.
_get_fat_sloc1_1_0:
	.ds 4
Lff.get_fat$sloc2$0_1$0==.
_get_fat_sloc2_1_0:
	.ds 2
Lff.get_fat$sloc3$0_1$0==.
_get_fat_sloc3_1_0:
	.ds 4
Lff.dir_sdi$sloc0$0_1$0==.
_dir_sdi_sloc0_1_0:
	.ds 4
Lff.dir_sdi$sloc1$0_1$0==.
_dir_sdi_sloc1_1_0:
	.ds 2
Lff.dir_sdi$sloc2$0_1$0==.
_dir_sdi_sloc2_1_0:
	.ds 3
Lff.dir_next$sloc0$0_1$0==.
_dir_next_sloc0_1_0:
	.ds 4
Lff.dir_next$sloc1$0_1$0==.
_dir_next_sloc1_1_0:
	.ds 2
Lff.dir_next$sloc2$0_1$0==.
_dir_next_sloc2_1_0:
	.ds 3
Lff.dir_next$sloc3$0_1$0==.
_dir_next_sloc3_1_0:
	.ds 4
Lff.dir_next$sloc4$0_1$0==.
_dir_next_sloc4_1_0:
	.ds 3
Lff.cmp_lfn$sloc0$0_1$0==.
_cmp_lfn_sloc0_1_0:
	.ds 2
Lff.cmp_lfn$sloc1$0_1$0==.
_cmp_lfn_sloc1_1_0:
	.ds 3
Lff.cmp_lfn$sloc2$0_1$0==.
_cmp_lfn_sloc2_1_0:
	.ds 2
Lff.cmp_lfn$sloc3$0_1$0==.
_cmp_lfn_sloc3_1_0:
	.ds 3
Lff.pick_lfn$sloc0$0_1$0==.
_pick_lfn_sloc0_1_0:
	.ds 2
Lff.pick_lfn$sloc1$0_1$0==.
_pick_lfn_sloc1_1_0:
	.ds 3
Lff.pick_lfn$sloc2$0_1$0==.
_pick_lfn_sloc2_1_0:
	.ds 2
Lff.gen_numname$sloc0$0_1$0==.
_gen_numname_sloc0_1_0:
	.ds 4
Lff.gen_numname$sloc1$0_1$0==.
_gen_numname_sloc1_1_0:
	.ds 2
Lff.dir_find$sloc0$0_1$0==.
_dir_find_sloc0_1_0:
	.ds 3
Lff.dir_find$sloc1$0_1$0==.
_dir_find_sloc1_1_0:
	.ds 3
Lff.dir_find$sloc2$0_1$0==.
_dir_find_sloc2_1_0:
	.ds 3
Lff.dir_find$sloc3$0_1$0==.
_dir_find_sloc3_1_0:
	.ds 3
Lff.dir_find$sloc4$0_1$0==.
_dir_find_sloc4_1_0:
	.ds 3
Lff.dir_find$sloc5$0_1$0==.
_dir_find_sloc5_1_0:
	.ds 3
Lff.dir_find$sloc6$0_1$0==.
_dir_find_sloc6_1_0:
	.ds 1
Lff.dir_find$sloc7$0_1$0==.
_dir_find_sloc7_1_0:
	.ds 3
Lff.dir_read$sloc0$0_1$0==.
_dir_read_sloc0_1_0:
	.ds 3
Lff.dir_read$sloc1$0_1$0==.
_dir_read_sloc1_1_0:
	.ds 4
Lff.dir_read$sloc2$0_1$0==.
_dir_read_sloc2_1_0:
	.ds 3
Lff.dir_read$sloc3$0_1$0==.
_dir_read_sloc3_1_0:
	.ds 3
Lff.dir_read$sloc4$0_1$0==.
_dir_read_sloc4_1_0:
	.ds 1
Lff.get_fileinfo$sloc0$0_1$0==.
_get_fileinfo_sloc0_1_0:
	.ds 3
Lff.get_fileinfo$sloc1$0_1$0==.
_get_fileinfo_sloc1_1_0:
	.ds 1
Lff.get_fileinfo$sloc2$0_1$0==.
_get_fileinfo_sloc2_1_0:
	.ds 3
Lff.get_fileinfo$sloc3$0_1$0==.
_get_fileinfo_sloc3_1_0:
	.ds 4
Lff.create_name$sloc0$0_1$0==.
_create_name_sloc0_1_0:
	.ds 3
Lff.create_name$sloc1$0_1$0==.
_create_name_sloc1_1_0:
	.ds 3
Lff.create_name$sloc2$0_1$0==.
_create_name_sloc2_1_0:
	.ds 2
Lff.create_name$sloc3$0_1$0==.
_create_name_sloc3_1_0:
	.ds 2
Lff.follow_path$sloc0$0_1$0==.
_follow_path_sloc0_1_0:
	.ds 1
Lff.follow_path$sloc1$0_1$0==.
_follow_path_sloc1_1_0:
	.ds 3
Lff.check_fs$sloc0$0_1$0==.
_check_fs_sloc0_1_0:
	.ds 3
Lff.check_fs$sloc1$0_1$0==.
_check_fs_sloc1_1_0:
	.ds 4
Lff.check_fs$sloc2$0_1$0==.
_check_fs_sloc2_1_0:
	.ds 4
Lff.find_volume$sloc0$0_1$0==.
_find_volume_sloc0_1_0:
	.ds 3
Lff.find_volume$sloc1$0_1$0==.
_find_volume_sloc1_1_0:
	.ds 2
Lff.find_volume$sloc2$0_1$0==.
_find_volume_sloc2_1_0:
	.ds 2
Lff.find_volume$sloc3$0_1$0==.
_find_volume_sloc3_1_0:
	.ds 4
Lff.find_volume$sloc4$0_1$0==.
_find_volume_sloc4_1_0:
	.ds 4
Lff.find_volume$sloc5$0_1$0==.
_find_volume_sloc5_1_0:
	.ds 3
Lff.find_volume$sloc6$0_1$0==.
_find_volume_sloc6_1_0:
	.ds 4
Lff.find_volume$sloc7$0_1$0==.
_find_volume_sloc7_1_0:
	.ds 4
Lff.find_volume$sloc8$0_1$0==.
_find_volume_sloc8_1_0:
	.ds 4
Lff.find_volume$sloc9$0_1$0==.
_find_volume_sloc9_1_0:
	.ds 4
Lff.validate$sloc0$0_1$0==.
_validate_sloc0_1_0:
	.ds 3
Lff.f_open$sloc0$0_1$0==.
_f_open_sloc0_1_0:
	.ds 3
Lff.f_open$sloc1$0_1$0==.
_f_open_sloc1_1_0:
	.ds 3
Lff.f_open$sloc2$0_1$0==.
_f_open_sloc2_1_0:
	.ds 4
Lff.f_read$sloc0$0_1$0==.
_f_read_sloc0_1_0:
	.ds 3
Lff.f_read$sloc1$0_1$0==.
_f_read_sloc1_1_0:
	.ds 4
Lff.f_read$sloc2$0_1$0==.
_f_read_sloc2_1_0:
	.ds 3
Lff.f_read$sloc3$0_1$0==.
_f_read_sloc3_1_0:
	.ds 3
Lff.f_read$sloc4$0_1$0==.
_f_read_sloc4_1_0:
	.ds 4
Lff.f_read$sloc5$0_1$0==.
_f_read_sloc5_1_0:
	.ds 3
Lff.f_read$sloc6$0_1$0==.
_f_read_sloc6_1_0:
	.ds 4
Lff.f_read$sloc7$0_1$0==.
_f_read_sloc7_1_0:
	.ds 3
Lff.f_read$sloc8$0_1$0==.
_f_read_sloc8_1_0:
	.ds 3
Lff.f_read$sloc9$0_1$0==.
_f_read_sloc9_1_0:
	.ds 3
Lff.f_lseek$sloc0$0_1$0==.
_f_lseek_sloc0_1_0:
	.ds 4
Lff.f_lseek$sloc1$0_1$0==.
_f_lseek_sloc1_1_0:
	.ds 4
Lff.f_lseek$sloc2$0_1$0==.
_f_lseek_sloc2_1_0:
	.ds 3
Lff.f_lseek$sloc3$0_1$0==.
_f_lseek_sloc3_1_0:
	.ds 4
Lff.f_lseek$sloc4$0_1$0==.
_f_lseek_sloc4_1_0:
	.ds 4
Lff.f_lseek$sloc5$0_1$0==.
_f_lseek_sloc5_1_0:
	.ds 3
Lff.f_lseek$sloc6$0_1$0==.
_f_lseek_sloc6_1_0:
	.ds 4
Lff.f_opendir$sloc0$0_1$0==.
_f_opendir_sloc0_1_0:
	.ds 3
Lff.f_readdir$sloc0$0_1$0==.
_f_readdir_sloc0_1_0:
	.ds 3
Lff.f_getlabel$sloc0$0_1$0==.
_f_getlabel_sloc0_1_0:
	.ds 3
Lff.f_getlabel$sloc1$0_1$0==.
_f_getlabel_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
Lff.mem_cpy$sloc0$0_1$0==.
_mem_cpy_sloc0_1_0:
	.ds 2
	.area	OSEG    (OVR,DATA)
Lff.mem_set$sloc0$0_1$0==.
_mem_set_sloc0_1_0:
	.ds 2
	.area	OSEG    (OVR,DATA)
Lff.mem_cmp$sloc0$0_1$0==.
_mem_cmp_sloc0_1_0:
	.ds 2
Lff.mem_cmp$sloc1$0_1$0==.
_mem_cmp_sloc1_1_0:
	.ds 2
	.area	OSEG    (OVR,DATA)
Lff.ld_clust$sloc0$0_1$0==.
_ld_clust_sloc0_1_0:
	.ds 3
Lff.ld_clust$sloc1$0_1$0==.
_ld_clust_sloc1_1_0:
	.ds 4
	.area	OSEG    (OVR,DATA)
Lff.get_ldnumber$sloc0$0_1$0==.
_get_ldnumber_sloc0_1_0:
	.ds 3
Lff.get_ldnumber$sloc1$0_1$0==.
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
Fff$FatFs$0_0$0==.
_FatFs:
	.ds 6
Fff$Fsid$0_0$0==.
_Fsid:
	.ds 2
Lff.mem_cpy$src$1_0$41==.
_mem_cpy_PARM_2:
	.ds 3
Lff.mem_cpy$cnt$1_0$41==.
_mem_cpy_PARM_3:
	.ds 2
Lff.mem_cpy$dst$1_0$41==.
_mem_cpy_dst_65536_41:
	.ds 3
Lff.mem_set$val$1_0$43==.
_mem_set_PARM_2:
	.ds 2
Lff.mem_set$cnt$1_0$43==.
_mem_set_PARM_3:
	.ds 2
Lff.mem_set$dst$1_0$43==.
_mem_set_dst_65536_43:
	.ds 3
Lff.mem_cmp$src$1_0$45==.
_mem_cmp_PARM_2:
	.ds 3
Lff.mem_cmp$cnt$1_0$45==.
_mem_cmp_PARM_3:
	.ds 2
Lff.mem_cmp$dst$1_0$45==.
_mem_cmp_dst_65536_45:
	.ds 3
Lff.mem_cmp$r$1_0$46==.
_mem_cmp_r_65536_46:
	.ds 2
Lff.chk_chr$chr$1_0$47==.
_chk_chr_PARM_2:
	.ds 2
Lff.chk_chr$str$1_0$47==.
_chk_chr_str_65536_47:
	.ds 3
Lff.move_window$sector$1_0$49==.
_move_window_PARM_2:
	.ds 4
Lff.move_window$fs$1_0$49==.
_move_window_fs_65536_49:
	.ds 3
Lff.clust2sect$clst$1_0$52==.
_clust2sect_PARM_2:
	.ds 4
Lff.clust2sect$fs$1_0$52==.
_clust2sect_fs_65536_52:
	.ds 3
Lff.get_fat$clst$1_0$54==.
_get_fat_PARM_2:
	.ds 4
Lff.get_fat$fs$1_0$54==.
_get_fat_fs_65536_54:
	.ds 3
Lff.clmt_clust$ofs$1_0$57==.
_clmt_clust_PARM_2:
	.ds 4
Lff.clmt_clust$fp$1_0$57==.
_clmt_clust_fp_65536_57:
	.ds 3
Lff.clmt_clust$cl$1_0$58==.
_clmt_clust_cl_65536_58:
	.ds 4
Lff.clmt_clust$tbl$1_0$58==.
_clmt_clust_tbl_65536_58:
	.ds 3
Lff.dir_sdi$idx$1_0$61==.
_dir_sdi_PARM_2:
	.ds 2
Lff.dir_sdi$dp$1_0$61==.
_dir_sdi_dp_65536_61:
	.ds 3
Lff.dir_sdi$clst$1_0$62==.
_dir_sdi_clst_65536_62:
	.ds 4
Lff.dir_sdi$sect$1_0$62==.
_dir_sdi_sect_65536_62:
	.ds 4
Lff.dir_next$stretch$1_0$66==.
_dir_next_PARM_2:
	.ds 2
Lff.dir_next$dp$1_0$66==.
_dir_next_dp_65536_66:
	.ds 3
Lff.ld_clust$dir$1_0$73==.
_ld_clust_PARM_2:
	.ds 3
Lff.ld_clust$fs$1_0$73==.
_ld_clust_fs_65536_73:
	.ds 3
Lff.ld_clust$cl$1_0$74==.
_ld_clust_cl_65536_74:
	.ds 4
Lff.cmp_lfn$dir$1_0$75==.
_cmp_lfn_PARM_2:
	.ds 3
Lff.cmp_lfn$lfnbuf$1_0$75==.
_cmp_lfn_lfnbuf_65536_75:
	.ds 3
Lff.cmp_lfn$i$1_0$76==.
_cmp_lfn_i_65536_76:
	.ds 2
Lff.cmp_lfn$wc$1_0$76==.
_cmp_lfn_wc_65536_76:
	.ds 2
Lff.pick_lfn$dir$1_0$80==.
_pick_lfn_PARM_2:
	.ds 3
Lff.pick_lfn$lfnbuf$1_0$80==.
_pick_lfn_lfnbuf_65536_80:
	.ds 3
Lff.pick_lfn$i$1_0$81==.
_pick_lfn_i_65536_81:
	.ds 2
Lff.pick_lfn$wc$1_0$81==.
_pick_lfn_wc_65536_81:
	.ds 2
Lff.gen_numname$src$1_0$86==.
_gen_numname_PARM_2:
	.ds 3
Lff.gen_numname$lfn$1_0$86==.
_gen_numname_PARM_3:
	.ds 3
Lff.gen_numname$seq$1_0$86==.
_gen_numname_PARM_4:
	.ds 2
Lff.gen_numname$dst$1_0$86==.
_gen_numname_dst_65536_86:
	.ds 3
Lff.gen_numname$ns$1_0$87==.
_gen_numname_ns_65536_87:
	.ds 8
Lff.gen_numname$c$1_0$87==.
_gen_numname_c_65536_87:
	.ds 1
Lff.gen_numname$i$1_0$87==.
_gen_numname_i_65536_87:
	.ds 2
Lff.gen_numname$wc$2_0$88==.
_gen_numname_wc_131072_88:
	.ds 2
Lff.gen_numname$sr$2_0$88==.
_gen_numname_sr_131072_88:
	.ds 4
Lff.sum_sfn$dir$1_0$97==.
_sum_sfn_dir_65536_97:
	.ds 3
Lff.sum_sfn$sum$1_0$98==.
_sum_sfn_sum_65536_98:
	.ds 1
Lff.dir_find$dp$1_0$99==.
_dir_find_dp_65536_99:
	.ds 3
Lff.dir_find$res$1_0$100==.
_dir_find_res_65536_100:
	.ds 1
Lff.dir_find$c$1_0$100==.
_dir_find_c_65536_100:
	.ds 1
Lff.dir_find$ord$1_0$100==.
_dir_find_ord_65536_100:
	.ds 1
Lff.dir_find$sum$1_0$100==.
_dir_find_sum_65536_100:
	.ds 1
Lff.dir_read$vol$1_0$109==.
_dir_read_PARM_2:
	.ds 2
Lff.dir_read$dp$1_0$109==.
_dir_read_dp_65536_109:
	.ds 3
Lff.dir_read$res$1_0$110==.
_dir_read_res_65536_110:
	.ds 1
Lff.dir_read$c$1_0$110==.
_dir_read_c_65536_110:
	.ds 1
Lff.dir_read$ord$1_0$110==.
_dir_read_ord_65536_110:
	.ds 1
Lff.dir_read$sum$1_0$110==.
_dir_read_sum_65536_110:
	.ds 1
Lff.get_fileinfo$fno$1_0$118==.
_get_fileinfo_PARM_2:
	.ds 3
Lff.get_fileinfo$dp$1_0$118==.
_get_fileinfo_dp_65536_118:
	.ds 3
Lff.get_fileinfo$i$1_0$119==.
_get_fileinfo_i_65536_119:
	.ds 2
Lff.get_fileinfo$p$1_0$119==.
_get_fileinfo_p_65536_119:
	.ds 3
Lff.get_fileinfo$c$1_0$119==.
_get_fileinfo_c_65536_119:
	.ds 1
Lff.create_name$path$1_0$127==.
_create_name_PARM_2:
	.ds 3
Lff.create_name$dp$1_0$127==.
_create_name_dp_65536_127:
	.ds 3
Lff.create_name$b$1_0$128==.
_create_name_b_65536_128:
	.ds 1
Lff.create_name$cf$1_0$128==.
_create_name_cf_65536_128:
	.ds 1
Lff.create_name$w$1_0$128==.
_create_name_w_65536_128:
	.ds 2
Lff.create_name$i$1_0$128==.
_create_name_i_65536_128:
	.ds 2
Lff.create_name$ni$1_0$128==.
_create_name_ni_65536_128:
	.ds 2
Lff.create_name$si$1_0$128==.
_create_name_si_65536_128:
	.ds 2
Lff.create_name$di$1_0$128==.
_create_name_di_65536_128:
	.ds 2
Lff.create_name$p$1_0$128==.
_create_name_p_65536_128:
	.ds 3
Lff.follow_path$path$1_0$150==.
_follow_path_PARM_2:
	.ds 3
Lff.follow_path$dp$1_0$150==.
_follow_path_dp_65536_150:
	.ds 3
Lff.follow_path$res$1_0$151==.
_follow_path_res_65536_151:
	.ds 1
Lff.get_ldnumber$path$1_0$161==.
_get_ldnumber_path_65536_161:
	.ds 3
Lff.get_ldnumber$vol$1_0$162==.
_get_ldnumber_vol_65536_162:
	.ds 2
Lff.check_fs$sect$1_0$169==.
_check_fs_PARM_2:
	.ds 4
Lff.check_fs$fs$1_0$169==.
_check_fs_fs_65536_169:
	.ds 3
Lff.find_volume$path$1_0$171==.
_find_volume_PARM_2:
	.ds 3
Lff.find_volume$wmode$1_0$171==.
_find_volume_PARM_3:
	.ds 1
Lff.find_volume$rfs$1_0$171==.
_find_volume_rfs_65536_171:
	.ds 3
Lff.find_volume$fmt$1_0$172==.
_find_volume_fmt_65536_172:
	.ds 1
Lff.find_volume$bsect$1_0$172==.
_find_volume_bsect_65536_172:
	.ds 4
Lff.find_volume$fasize$1_0$172==.
_find_volume_fasize_65536_172:
	.ds 4
Lff.find_volume$tsect$1_0$172==.
_find_volume_tsect_65536_172:
	.ds 4
Lff.find_volume$szbfat$1_0$172==.
_find_volume_szbfat_65536_172:
	.ds 4
Lff.find_volume$br$2_0$175==.
_find_volume_br_131072_175:
	.ds 16
Lff.validate$obj$1_0$181==.
_validate_obj_65536_181:
	.ds 3
Lff.f_mount$path$1_0$183==.
_f_mount_PARM_2:
	.ds 3
Lff.f_mount$opt$1_0$183==.
_f_mount_PARM_3:
	.ds 1
Lff.f_mount$fs$1_0$183==.
_f_mount_fs_65536_183:
	.ds 3
Lff.f_mount$rp$1_0$184==.
_f_mount_rp_65536_184:
	.ds 3
Lff.f_open$path$1_0$187==.
_f_open_PARM_2:
	.ds 3
Lff.f_open$mode$1_0$187==.
_f_open_PARM_3:
	.ds 1
Lff.f_open$fp$1_0$187==.
_f_open_fp_65536_187:
	.ds 3
Lff.f_open$res$1_0$188==.
_f_open_res_65536_188:
	.ds 1
Lff.f_open$dj$1_0$188==.
_f_open_dj_65536_188:
	.ds 30
Lff.f_open$dir$1_0$188==.
_f_open_dir_65536_188:
	.ds 3
Lff.f_open$sfn$1_0$188==.
_f_open_sfn_65536_188:
	.ds 12
Lff.f_read$buff$1_0$195==.
_f_read_PARM_2:
	.ds 3
Lff.f_read$btr$1_0$195==.
_f_read_PARM_3:
	.ds 2
Lff.f_read$br$1_0$195==.
_f_read_PARM_4:
	.ds 3
Lff.f_read$fp$1_0$195==.
_f_read_fp_65536_195:
	.ds 3
Lff.f_read$clst$1_0$196==.
_f_read_clst_65536_196:
	.ds 4
Lff.f_read$rcnt$1_0$196==.
_f_read_rcnt_65536_196:
	.ds 2
Lff.f_read$cc$1_0$196==.
_f_read_cc_65536_196:
	.ds 2
Lff.f_read$rbuff$1_0$196==.
_f_read_rbuff_65536_196:
	.ds 3
Lff.f_close$fp$1_0$209==.
_f_close_fp_65536_209:
	.ds 3
Lff.f_lseek$ofs$1_0$213==.
_f_lseek_PARM_2:
	.ds 4
Lff.f_lseek$fp$1_0$213==.
_f_lseek_fp_65536_213:
	.ds 3
Lff.f_lseek$res$1_0$214==.
_f_lseek_res_65536_214:
	.ds 1
Lff.f_lseek$cl$2_0$215==.
_f_lseek_cl_131072_215:
	.ds 4
Lff.f_lseek$pcl$2_0$215==.
_f_lseek_pcl_131072_215:
	.ds 4
Lff.f_lseek$tcl$2_0$215==.
_f_lseek_tcl_131072_215:
	.ds 4
Lff.f_lseek$ulen$2_0$215==.
_f_lseek_ulen_131072_215:
	.ds 4
Lff.f_lseek$tbl$2_0$215==.
_f_lseek_tbl_131072_215:
	.ds 3
Lff.f_lseek$clst$2_0$227==.
_f_lseek_clst_131072_227:
	.ds 4
Lff.f_lseek$nsect$2_0$227==.
_f_lseek_nsect_131072_227:
	.ds 4
Lff.f_opendir$path$1_0$238==.
_f_opendir_PARM_2:
	.ds 3
Lff.f_opendir$dp$1_0$238==.
_f_opendir_dp_65536_238:
	.ds 3
Lff.f_opendir$res$1_0$239==.
_f_opendir_res_65536_239:
	.ds 1
Lff.f_opendir$fs$1_0$239==.
_f_opendir_fs_65536_239:
	.ds 3
Lff.f_opendir$sfn$1_0$239==.
_f_opendir_sfn_65536_239:
	.ds 12
Lff.f_closedir$dp$1_0$245==.
_f_closedir_dp_65536_245:
	.ds 3
Lff.f_readdir$fno$1_0$248==.
_f_readdir_PARM_2:
	.ds 3
Lff.f_readdir$dp$1_0$248==.
_f_readdir_dp_65536_248:
	.ds 3
Lff.f_readdir$res$1_0$249==.
_f_readdir_res_65536_249:
	.ds 1
Lff.f_readdir$sfn$1_0$249==.
_f_readdir_sfn_65536_249:
	.ds 12
Lff.f_stat$fno$1_0$257==.
_f_stat_PARM_2:
	.ds 3
Lff.f_stat$path$1_0$257==.
_f_stat_path_65536_257:
	.ds 3
Lff.f_stat$res$1_0$258==.
_f_stat_res_65536_258:
	.ds 1
Lff.f_stat$dj$1_0$258==.
_f_stat_dj_65536_258:
	.ds 30
Lff.f_stat$sfn$1_0$258==.
_f_stat_sfn_65536_258:
	.ds 12
Lff.f_getlabel$label$1_0$264==.
_f_getlabel_PARM_2:
	.ds 3
Lff.f_getlabel$sn$1_0$264==.
_f_getlabel_PARM_3:
	.ds 3
Lff.f_getlabel$path$1_0$264==.
_f_getlabel_path_65536_264:
	.ds 3
Lff.f_getlabel$res$1_0$265==.
_f_getlabel_res_65536_265:
	.ds 1
Lff.f_getlabel$dj$1_0$265==.
_f_getlabel_dj_65536_265:
	.ds 30
Lff.f_gets$len$1_0$273==.
_f_gets_PARM_2:
	.ds 2
Lff.f_gets$fp$1_0$273==.
_f_gets_PARM_3:
	.ds 3
Lff.f_gets$buff$1_0$273==.
_f_gets_buff_65536_273:
	.ds 3
Lff.f_gets$s$1_0$274==.
_f_gets_s_65536_274:
	.ds 2
Lff.f_gets$rc$1_0$274==.
_f_gets_rc_65536_274:
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
	Fff$mem_cpy$0$0 ==.
	C$ff.c$560$0_0$42 ==.
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
	C$ff.c$561$1_0$42 ==.
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
	C$ff.c$562$1_0$42 ==.
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
	C$ff.c$571$1_0$42 ==.
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
	C$ff.c$572$1_0$42 ==.
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
	C$ff.c$573$1_0$42 ==.
;	FATFS\src\ff.c:573: }
	C$ff.c$573$1_0$42 ==.
	XFff$mem_cpy$0$0 ==.
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
	Fff$mem_set$0$0 ==.
	C$ff.c$577$1_0$44 ==.
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
	C$ff.c$578$1_0$44 ==.
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
	C$ff.c$580$1_0$44 ==.
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
	C$ff.c$581$1_0$44 ==.
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
	C$ff.c$582$1_0$44 ==.
;	FATFS\src\ff.c:582: }
	C$ff.c$582$1_0$44 ==.
	XFff$mem_set$0$0 ==.
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
	Fff$mem_cmp$0$0 ==.
	C$ff.c$586$1_0$46 ==.
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
	C$ff.c$587$1_0$46 ==.
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
	C$ff.c$588$1_0$46 ==.
;	FATFS\src\ff.c:588: int r = 0;
	mov	dptr,#_mem_cmp_r_65536_46
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$ff.c$590$1_0$46 ==.
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
	C$ff.c$591$1_0$46 ==.
;	FATFS\src\ff.c:591: return r;
	mov	dptr,#_mem_cmp_r_65536_46
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	C$ff.c$592$1_0$46 ==.
;	FATFS\src\ff.c:592: }
	C$ff.c$592$1_0$46 ==.
	XFff$mem_cmp$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'chk_chr'
;------------------------------------------------------------
;chr                       Allocated with name '_chk_chr_PARM_2'
;str                       Allocated with name '_chk_chr_str_65536_47'
;------------------------------------------------------------
	Fff$chk_chr$0$0 ==.
	C$ff.c$596$1_0$48 ==.
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
	C$ff.c$597$1_0$48 ==.
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
	C$ff.c$598$1_0$48 ==.
;	FATFS\src\ff.c:598: return *str;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	r7,#0x00
	mov	dpl,r3
	mov	dph,r7
	C$ff.c$599$1_0$48 ==.
;	FATFS\src\ff.c:599: }
	C$ff.c$599$1_0$48 ==.
	XFff$chk_chr$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'move_window'
;------------------------------------------------------------
;sloc0                     Allocated with name '_move_window_sloc0_1_0'
;sloc1                     Allocated with name '_move_window_sloc1_1_0'
;sector                    Allocated with name '_move_window_PARM_2'
;fs                        Allocated with name '_move_window_fs_65536_49'
;------------------------------------------------------------
	Fff$move_window$0$0 ==.
	C$ff.c$779$1_0$50 ==.
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
	C$ff.c$784$1_0$50 ==.
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
	C$ff.c$789$2_0$51 ==.
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
	C$ff.c$790$2_0$51 ==.
;	FATFS\src\ff.c:790: return FR_DISK_ERR;
	mov	dpl,#0x01
	sjmp	00105$
00102$:
	C$ff.c$791$2_0$51 ==.
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
	C$ff.c$794$1_0$50 ==.
;	FATFS\src\ff.c:794: return FR_OK;
	mov	dpl,#0x00
00105$:
	C$ff.c$795$1_0$50 ==.
;	FATFS\src\ff.c:795: }
	C$ff.c$795$1_0$50 ==.
	XFff$move_window$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clust2sect'
;------------------------------------------------------------
;sloc0                     Allocated with name '_clust2sect_sloc0_1_0'
;clst                      Allocated with name '_clust2sect_PARM_2'
;fs                        Allocated with name '_clust2sect_fs_65536_52'
;------------------------------------------------------------
	G$clust2sect$0$0 ==.
	C$ff.c$845$1_0$53 ==.
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
	C$ff.c$850$1_0$53 ==.
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
	C$ff.c$851$1_0$53 ==.
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
	C$ff.c$852$1_0$53 ==.
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
	C$ff.c$853$1_0$53 ==.
;	FATFS\src\ff.c:853: }
	C$ff.c$853$1_0$53 ==.
	XG$clust2sect$0$0 ==.
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
	G$get_fat$0$0 ==.
	C$ff.c$863$1_0$55 ==.
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
	C$ff.c$872$1_0$55 ==.
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
	C$ff.c$873$1_0$55 ==.
;	FATFS\src\ff.c:873: return 1;
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	ljmp	__sdcc_banked_ret
00102$:
	C$ff.c$875$1_0$55 ==.
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
	C$ff.c$876$2_0$56 ==.
;	FATFS\src\ff.c:876: case FS_FAT12 :
00104$:
	C$ff.c$877$2_0$56 ==.
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
	C$ff.c$878$1_0$55 ==.
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
	C$ff.c$879$1_0$55 ==.
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
	C$ff.c$880$2_0$56 ==.
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
	C$ff.c$881$2_0$56 ==.
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
	C$ff.c$882$2_0$56 ==.
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
	C$ff.c$884$2_0$56 ==.
;	FATFS\src\ff.c:884: case FS_FAT16 :
00109$:
	C$ff.c$885$2_0$56 ==.
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
	C$ff.c$886$2_0$56 ==.
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
	C$ff.c$887$2_0$56 ==.
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
	C$ff.c$889$2_0$56 ==.
;	FATFS\src\ff.c:889: case FS_FAT32 :
00112$:
	C$ff.c$890$2_0$56 ==.
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
	C$ff.c$891$2_0$56 ==.
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
	C$ff.c$892$2_0$56 ==.
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
	C$ff.c$894$2_0$56 ==.
;	FATFS\src\ff.c:894: default:
	sjmp	00117$
00115$:
	C$ff.c$895$2_0$56 ==.
;	FATFS\src\ff.c:895: return 1;
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	C$ff.c$896$1_0$55 ==.
;	FATFS\src\ff.c:896: }
	sjmp	00117$
00116$:
	C$ff.c$898$1_0$55 ==.
;	FATFS\src\ff.c:898: return 0xFFFFFFFF;	/* An error occurred at the disk I/O layer */
	mov	dptr,#0xffff
	mov	a,#0xff
	mov	b,a
00117$:
	C$ff.c$899$1_0$55 ==.
;	FATFS\src\ff.c:899: }
	C$ff.c$899$1_0$55 ==.
	XG$get_fat$0$0 ==.
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
	Fff$clmt_clust$0$0 ==.
	C$ff.c$1087$1_0$58 ==.
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
	C$ff.c$1095$1_0$58 ==.
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
	C$ff.c$1096$1_0$58 ==.
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
	C$ff.c$1098$3_0$60 ==.
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
	C$ff.c$1099$3_0$60 ==.
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
	C$ff.c$1100$3_0$60 ==.
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
	C$ff.c$1101$3_0$60 ==.
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
	C$ff.c$1103$1_0$58 ==.
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
	C$ff.c$1104$1_0$58 ==.
;	FATFS\src\ff.c:1104: }
	C$ff.c$1104$1_0$58 ==.
	XFff$clmt_clust$0$0 ==.
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
	Fff$dir_sdi$0$0 ==.
	C$ff.c$1115$1_0$62 ==.
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
	C$ff.c$1124$1_0$62 ==.
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
	C$ff.c$1125$1_0$62 ==.
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
	C$ff.c$1126$1_0$62 ==.
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
	C$ff.c$1127$1_0$62 ==.
;	FATFS\src\ff.c:1127: return FR_INT_ERR;
	mov	dpl,#0x02
	ljmp	__sdcc_banked_ret
00102$:
	C$ff.c$1128$1_0$62 ==.
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
	C$ff.c$1129$1_0$62 ==.
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
	C$ff.c$1131$1_0$62 ==.
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
	C$ff.c$1132$2_0$63 ==.
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
	C$ff.c$1133$2_0$63 ==.
;	FATFS\src\ff.c:1133: return FR_INT_ERR;
	mov	dpl,#0x02
	ljmp	__sdcc_banked_ret
00108$:
	C$ff.c$1134$2_0$63 ==.
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
	C$ff.c$1137$2_0$64 ==.
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
	C$ff.c$1138$2_0$64 ==.
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
	C$ff.c$1139$1_0$62 ==.
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
	C$ff.c$1140$3_0$65 ==.
;	FATFS\src\ff.c:1140: if (clst == 0xFFFFFFFF) return FR_DISK_ERR;	/* Disk error */
	mov	a,#0xff
	cjne	a,_dir_sdi_sloc0_1_0,00172$
	cjne	a,(_dir_sdi_sloc0_1_0 + 1),00172$
	cjne	a,(_dir_sdi_sloc0_1_0 + 2),00172$
	cjne	a,(_dir_sdi_sloc0_1_0 + 3),00172$
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
	C$ff.c$1141$3_0$65 ==.
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
	C$ff.c$1142$3_0$65 ==.
;	FATFS\src\ff.c:1142: return FR_INT_ERR;
	mov	dpl,#0x02
	ljmp	__sdcc_banked_ret
00112$:
	C$ff.c$1143$3_0$65 ==.
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
	C$ff.c$1145$2_0$64 ==.
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
	C$ff.c$1147$1_0$62 ==.
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
	C$ff.c$1148$1_0$62 ==.
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
	C$ff.c$1149$1_0$62 ==.
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
	C$ff.c$1150$1_0$62 ==.
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
	C$ff.c$1152$1_0$62 ==.
;	FATFS\src\ff.c:1152: return FR_OK;
	mov	dpl,#0x00
	C$ff.c$1153$1_0$62 ==.
;	FATFS\src\ff.c:1153: }
	C$ff.c$1153$1_0$62 ==.
	XFff$dir_sdi$0$0 ==.
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
	Fff$dir_next$0$0 ==.
	C$ff.c$1163$1_0$67 ==.
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
	C$ff.c$1172$1_0$67 ==.
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
	C$ff.c$1173$1_0$67 ==.
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
	C$ff.c$1174$1_0$67 ==.
;	FATFS\src\ff.c:1174: return FR_NO_FILE;
	mov	dpl,#0x04
	ljmp	__sdcc_banked_ret
00102$:
	C$ff.c$1176$1_0$67 ==.
;	FATFS\src\ff.c:1176: if (!(i % (SS(dp->fs) / SZ_DIR))) {	/* Sector changed? */
	mov	a,#0x0f
	anl	a,r4
	mov	_dir_next_sloc1_1_0,a
	mov	(_dir_next_sloc1_1_0 + 1),#0x00
	orl	a,(_dir_next_sloc1_1_0 + 1)
	jz	00161$
	ljmp	00120$
00161$:
	C$ff.c$1177$1_0$67 ==.
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
	C$ff.c$1179$2_0$68 ==.
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
	C$ff.c$1180$3_0$69 ==.
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
	C$ff.c$1181$3_0$69 ==.
;	FATFS\src\ff.c:1181: return FR_NO_FILE;
	mov	dpl,#0x04
	ljmp	__sdcc_banked_ret
00117$:
	C$ff.c$1184$3_0$70 ==.
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
	C$ff.c$1185$4_0$71 ==.
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
	C$ff.c$1186$4_0$71 ==.
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
	C$ff.c$1187$4_0$71 ==.
;	FATFS\src\ff.c:1187: if (clst == 0xFFFFFFFF) return FR_DISK_ERR;
	mov	a,#0xff
	cjne	a,_dir_next_sloc3_1_0,00109$
	cjne	a,(_dir_next_sloc3_1_0 + 1),00109$
	cjne	a,(_dir_next_sloc3_1_0 + 2),00109$
	cjne	a,(_dir_next_sloc3_1_0 + 3),00109$
	mov	dpl,#0x01
	ljmp	__sdcc_banked_ret
00109$:
	C$ff.c$1188$1_0$67 ==.
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
	C$ff.c$1207$5_0$72 ==.
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
	C$ff.c$1208$5_0$72 ==.
;	FATFS\src\ff.c:1208: return FR_NO_FILE;							/* Report EOT */
	mov	dpl,#0x04
	ljmp	__sdcc_banked_ret
00113$:
	C$ff.c$1211$4_0$71 ==.
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
	C$ff.c$1212$4_0$71 ==.
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
	C$ff.c$1217$1_0$67 ==.
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
	C$ff.c$1218$1_0$67 ==.
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
	C$ff.c$1220$1_0$67 ==.
;	FATFS\src\ff.c:1220: return FR_OK;
	mov	dpl,#0x00
	C$ff.c$1221$1_0$67 ==.
;	FATFS\src\ff.c:1221: }
	C$ff.c$1221$1_0$67 ==.
	XFff$dir_next$0$0 ==.
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
	Fff$ld_clust$0$0 ==.
	C$ff.c$1268$1_0$74 ==.
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
	C$ff.c$1275$1_0$74 ==.
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
	C$ff.c$1276$1_0$74 ==.
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
	C$ff.c$1277$1_0$74 ==.
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
	C$ff.c$1279$1_0$74 ==.
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
	C$ff.c$1280$1_0$74 ==.
;	FATFS\src\ff.c:1280: }
	C$ff.c$1280$1_0$74 ==.
	XFff$ld_clust$0$0 ==.
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
	Fff$cmp_lfn$0$0 ==.
	C$ff.c$1307$1_0$76 ==.
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
	C$ff.c$1316$1_0$76 ==.
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
	C$ff.c$1317$1_0$76 ==.
;	FATFS\src\ff.c:1317: s = 0; wc = 1;
	mov	dptr,#_cmp_lfn_wc_65536_76
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$ff.c$1318$3_0$78 ==.
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
	C$ff.c$1319$1_0$76 ==.
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
	C$ff.c$1320$1_0$76 ==.
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
	C$ff.c$1321$3_0$78 ==.
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
	C$ff.c$1322$3_0$78 ==.
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
	C$ff.c$1323$3_0$78 ==.
;	FATFS\src\ff.c:1323: return 0;				/* Not matched */
	mov	dptr,#0x0000
	ljmp	__sdcc_banked_ret
00107$:
	C$ff.c$1325$3_0$79 ==.
;	FATFS\src\ff.c:1325: if (uc != 0xFFFF) return 0;	/* Check filler */
	mov	a,#0xff
	cjne	a,_cmp_lfn_sloc2_1_0,00155$
	cjne	a,(_cmp_lfn_sloc2_1_0 + 1),00155$
	sjmp	00110$
00155$:
	mov	dptr,#0x0000
	sjmp	00116$
00110$:
	C$ff.c$1327$1_0$76 ==.
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
	C$ff.c$1329$1_0$76 ==.
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
	C$ff.c$1330$1_0$76 ==.
;	FATFS\src\ff.c:1330: return 0;
	mov	dptr,#0x0000
	sjmp	00116$
00113$:
	C$ff.c$1332$1_0$76 ==.
;	FATFS\src\ff.c:1332: return 1;						/* The part of LFN matched */
	mov	dptr,#0x0001
00116$:
	C$ff.c$1333$1_0$76 ==.
;	FATFS\src\ff.c:1333: }
	C$ff.c$1333$1_0$76 ==.
	XFff$cmp_lfn$0$0 ==.
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
	Fff$pick_lfn$0$0 ==.
	C$ff.c$1338$1_0$81 ==.
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
	C$ff.c$1347$1_0$81 ==.
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
	C$ff.c$1349$1_0$81 ==.
;	FATFS\src\ff.c:1349: s = 0; wc = 1;
	mov	dptr,#_pick_lfn_wc_65536_81
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$ff.c$1350$3_0$83 ==.
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
	C$ff.c$1351$1_0$81 ==.
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
	C$ff.c$1352$1_0$81 ==.
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
	C$ff.c$1353$3_0$83 ==.
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
	C$ff.c$1354$3_0$83 ==.
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
	C$ff.c$1356$3_0$84 ==.
;	FATFS\src\ff.c:1356: if (uc != 0xFFFF) return 0;		/* Check filler */
	mov	a,#0xff
	cjne	a,_pick_lfn_sloc2_1_0,00149$
	cjne	a,(_pick_lfn_sloc2_1_0 + 1),00149$
	sjmp	00109$
00149$:
	mov	dptr,#0x0000
	sjmp	00115$
00109$:
	C$ff.c$1358$1_0$81 ==.
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
	C$ff.c$1360$1_0$81 ==.
;	FATFS\src\ff.c:1360: if (dir[LDIR_Ord] & LLE) {				/* Put terminator if it is the last LFN part */
	mov	dpl,_pick_lfn_sloc1_1_0
	mov	dph,(_pick_lfn_sloc1_1_0 + 1)
	mov	b,(_pick_lfn_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	jnb	acc.6,00114$
	C$ff.c$1361$2_0$85 ==.
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
	C$ff.c$1362$2_0$85 ==.
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
	C$ff.c$1365$1_0$81 ==.
;	FATFS\src\ff.c:1365: return 1;
	mov	dptr,#0x0001
00115$:
	C$ff.c$1366$1_0$81 ==.
;	FATFS\src\ff.c:1366: }
	C$ff.c$1366$1_0$81 ==.
	XFff$pick_lfn$0$0 ==.
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
	Fff$gen_numname$0$0 ==.
	C$ff.c$1409$1_0$87 ==.
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
	C$ff.c$1420$1_0$87 ==.
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
	C$ff.c$1422$1_0$87 ==.
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
	C$ff.c$1424$3_0$88 ==.
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
	C$ff.c$1426$1_0$87 ==.
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
	C$ff.c$1427$3_0$89 ==.
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
	C$ff.c$1428$1_0$87 ==.
;	FATFS\src\ff.c:1428: for (i = 0; i < 16; i++) {
	mov	r3,#0x10
	mov	r4,#0x00
00124$:
	C$ff.c$1429$1_0$87 ==.
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
	C$ff.c$1430$5_0$91 ==.
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
	C$ff.c$1431$5_0$91 ==.
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
	C$ff.c$1428$5_0$91 ==.
;	FATFS\src\ff.c:1428: for (i = 0; i < 16; i++) {
	mov	a,r3
	orl	a,r4
	jz	00198$
	ljmp	00124$
00198$:
	ljmp	00104$
00106$:
	C$ff.c$1434$2_0$88 ==.
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
	C$ff.c$1439$1_0$87 ==.
;	FATFS\src\ff.c:1439: do {
00140$:
	mov	r6,#0x07
	mov	r7,#0x00
00111$:
	C$ff.c$1440$2_0$92 ==.
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
	C$ff.c$1441$2_0$92 ==.
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
	C$ff.c$1442$2_0$92 ==.
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
	C$ff.c$1443$2_0$92 ==.
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
	C$ff.c$1444$1_0$87 ==.
;	FATFS\src\ff.c:1444: } while (seq);
	mov	dptr,#_gen_numname_PARM_4
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00111$
	C$ff.c$1445$1_0$87 ==.
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
	C$ff.c$1448$2_0$93 ==.
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
	C$ff.c$1454$1_0$87 ==.
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
	C$ff.c$1455$2_0$96 ==.
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
	C$ff.c$1456$1_0$87 ==.
;	FATFS\src\ff.c:1456: } while (j < 8);
	clr	c
	mov	a,r1
	subb	a,#0x08
	mov	a,r2
	subb	a,#0x00
	jc	00119$
	C$ff.c$1457$1_0$87 ==.
;	FATFS\src\ff.c:1457: }
	C$ff.c$1457$1_0$87 ==.
	XFff$gen_numname$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sum_sfn'
;------------------------------------------------------------
;dir                       Allocated with name '_sum_sfn_dir_65536_97'
;sum                       Allocated with name '_sum_sfn_sum_65536_98'
;n                         Allocated with name '_sum_sfn_n_65536_98'
;------------------------------------------------------------
	Fff$sum_sfn$0$0 ==.
	C$ff.c$1468$1_0$98 ==.
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
	C$ff.c$1472$2_0$98 ==.
;	FATFS\src\ff.c:1472: BYTE sum = 0;
	mov	dptr,#_sum_sfn_sum_65536_98
	clr	a
	movx	@dptr,a
	C$ff.c$1475$1_0$98 ==.
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
	C$ff.c$1476$1_0$98 ==.
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
	C$ff.c$1477$1_0$98 ==.
;	FATFS\src\ff.c:1477: }
	C$ff.c$1477$1_0$98 ==.
	XFff$sum_sfn$0$0 ==.
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
	Fff$dir_find$0$0 ==.
	C$ff.c$1488$1_0$100 ==.
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
	C$ff.c$1498$1_0$100 ==.
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
	C$ff.c$1499$1_0$100 ==.
;	FATFS\src\ff.c:1499: if (res != FR_OK) return res;
	mov	a,dpl
	mov	r7,a
	jz	00102$
	mov	dpl,r7
	ljmp	__sdcc_banked_ret
00102$:
	C$ff.c$1502$1_0$100 ==.
;	FATFS\src\ff.c:1502: ord = sum = 0xFF;
	mov	dptr,#_dir_find_sum_65536_100
	mov	a,#0xff
	movx	@dptr,a
	mov	dptr,#_dir_find_ord_65536_100
	movx	@dptr,a
	C$ff.c$1504$5_0$106 ==.
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
	C$ff.c$1505$1_0$100 ==.
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
	C$ff.c$1506$1_0$100 ==.
;	FATFS\src\ff.c:1506: if (res != FR_OK) break;
	mov	a,r7
	jz	00193$
	ljmp	00127$
00193$:
	C$ff.c$1507$2_0$101 ==.
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
	C$ff.c$1508$2_0$101 ==.
;	FATFS\src\ff.c:1508: c = dir[DIR_Name];
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#_dir_find_c_65536_100
	movx	@dptr,a
	C$ff.c$1509$2_0$101 ==.
;	FATFS\src\ff.c:1509: if (c == 0) { res = FR_NO_FILE; break; }	/* Reached to end of table */
	mov	a,r1
	jnz	00106$
	mov	dptr,#_dir_find_res_65536_100
	mov	a,#0x04
	movx	@dptr,a
	ljmp	00127$
00106$:
	C$ff.c$1511$1_0$100 ==.
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
	C$ff.c$1512$2_0$101 ==.
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
	C$ff.c$1513$3_0$103 ==.
;	FATFS\src\ff.c:1513: ord = 0xFF;
	mov	dptr,#_dir_find_ord_65536_100
	mov	a,#0xff
	movx	@dptr,a
	ljmp	00122$
00121$:
	C$ff.c$1515$3_0$104 ==.
;	FATFS\src\ff.c:1515: if (a == AM_LFN) {			/* An LFN entry is found */
	mov	a,#0x0f
	cjne	a,_dir_find_sloc6_1_0,00198$
	sjmp	00199$
00198$:
	ljmp	00118$
00199$:
	C$ff.c$1516$4_0$105 ==.
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
	C$ff.c$1517$5_0$106 ==.
;	FATFS\src\ff.c:1517: if (c & LLE) {		/* Is it start of LFN sequence? */
	mov	dptr,#_dir_find_c_65536_100
	movx	a,@dptr
	mov	r4,a
	jnb	acc.6,00108$
	C$ff.c$1518$6_0$107 ==.
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
	C$ff.c$1519$6_0$107 ==.
;	FATFS\src\ff.c:1519: c &= ~LLE; ord = c;	/* LFN start order */
	mov	dptr,#_dir_find_c_65536_100
	mov	a,#0xbf
	anl	a,r4
	movx	@dptr,a
	movx	a,@dptr
	mov	dptr,#_dir_find_ord_65536_100
	movx	@dptr,a
	C$ff.c$1520$6_0$107 ==.
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
	C$ff.c$1538$1_0$100 ==.
;	FATFS\src\ff.c:1538: return res;
	pop	ar7
	pop	ar6
	pop	ar5
	C$ff.c$1520$5_0$106 ==.
;	FATFS\src\ff.c:1520: dp->lfn_idx = dp->index;
00108$:
	C$ff.c$1523$5_0$106 ==.
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
	C$ff.c$1526$4_0$108 ==.
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
	C$ff.c$1527$1_0$100 ==.
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
	C$ff.c$1528$4_0$108 ==.
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
	C$ff.c$1535$2_0$101 ==.
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
	C$ff.c$1536$1_0$100 ==.
;	FATFS\src\ff.c:1536: } while (res == FR_OK);
	mov	a,r7
	jnz	00211$
	ljmp	00125$
00211$:
00127$:
	C$ff.c$1538$1_0$100 ==.
;	FATFS\src\ff.c:1538: return res;
	mov	dptr,#_dir_find_res_65536_100
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	C$ff.c$1539$1_0$100 ==.
;	FATFS\src\ff.c:1539: }
	C$ff.c$1539$1_0$100 ==.
	XFff$dir_find$0$0 ==.
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
	Fff$dir_read$0$0 ==.
	C$ff.c$1549$1_0$110 ==.
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
	C$ff.c$1557$2_0$110 ==.
;	FATFS\src\ff.c:1557: BYTE ord = 0xFF, sum = 0xFF;
	mov	dptr,#_dir_read_ord_65536_110
	mov	a,#0xff
	movx	@dptr,a
	mov	dptr,#_dir_read_sum_65536_110
	movx	@dptr,a
	C$ff.c$1560$1_0$110 ==.
;	FATFS\src\ff.c:1560: res = FR_NO_FILE;
	mov	dptr,#_dir_read_res_65536_110
	mov	a,#0x04
	movx	@dptr,a
	C$ff.c$1561$2_0$111 ==.
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
	C$ff.c$1562$1_0$110 ==.
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
	C$ff.c$1563$1_0$110 ==.
;	FATFS\src\ff.c:1563: if (res != FR_OK) break;
	mov	a,r7
	pop	ar7
	pop	ar6
	jz	00187$
	ljmp	00123$
00187$:
	C$ff.c$1564$2_0$111 ==.
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
	C$ff.c$1565$2_0$111 ==.
;	FATFS\src\ff.c:1565: c = dir[DIR_Name];
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_dir_read_sloc1_1_0,a
	mov	dptr,#_dir_read_c_65536_110
	movx	@dptr,a
	C$ff.c$1566$2_0$111 ==.
;	FATFS\src\ff.c:1566: if (c == 0) { res = FR_NO_FILE; break; }	/* Reached to end of table */
	mov	a,_dir_read_sloc1_1_0
	jnz	00104$
	mov	dptr,#_dir_read_res_65536_110
	mov	a,#0x04
	movx	@dptr,a
	ljmp	00123$
00104$:
	C$ff.c$1567$1_0$110 ==.
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
	C$ff.c$1569$2_0$111 ==.
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
	C$ff.c$1570$3_0$113 ==.
;	FATFS\src\ff.c:1570: ord = 0xFF;
	mov	dptr,#_dir_read_ord_65536_110
	mov	a,#0xff
	movx	@dptr,a
	ljmp	00115$
00114$:
	C$ff.c$1572$3_0$114 ==.
;	FATFS\src\ff.c:1572: if (a == AM_LFN) {			/* An LFN entry is found */
	mov	a,#0x0f
	cjne	a,_dir_read_sloc4_1_0,00194$
	sjmp	00195$
00194$:
	ljmp	00111$
00195$:
	C$ff.c$1573$4_0$115 ==.
;	FATFS\src\ff.c:1573: if (c & LLE) {			/* Is it start of LFN sequence? */
	mov	a,_dir_read_sloc1_1_0
	jnb	acc.6,00106$
	C$ff.c$1574$1_0$110 ==.
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
	C$ff.c$1575$5_0$116 ==.
;	FATFS\src\ff.c:1575: c &= ~LLE; ord = c;
	mov	a,#0xbf
	anl	a,_dir_read_sloc1_1_0
	mov	r5,a
	mov	dptr,#_dir_read_c_65536_110
	movx	@dptr,a
	mov	dptr,#_dir_read_ord_65536_110
	mov	a,r5
	movx	@dptr,a
	C$ff.c$1576$5_0$116 ==.
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
	C$ff.c$1596$1_0$110 ==.
;	FATFS\src\ff.c:1596: return res;
	pop	ar7
	pop	ar6
	C$ff.c$1576$4_0$115 ==.
;	FATFS\src\ff.c:1576: dp->lfn_idx = dp->index;
00106$:
	C$ff.c$1579$4_0$115 ==.
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
	C$ff.c$1581$4_0$117 ==.
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
	C$ff.c$1582$4_0$117 ==.
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
	C$ff.c$1583$4_0$117 ==.
;	FATFS\src\ff.c:1583: break;
	sjmp	00123$
00115$:
	C$ff.c$1590$2_0$111 ==.
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
	C$ff.c$1591$2_0$111 ==.
;	FATFS\src\ff.c:1591: if (res != FR_OK) break;
	mov	a,r5
	jnz	00204$
	ljmp	00121$
00204$:
00123$:
	C$ff.c$1594$1_0$110 ==.
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
	C$ff.c$1596$1_0$110 ==.
;	FATFS\src\ff.c:1596: return res;
	mov	dpl,r7
	C$ff.c$1597$1_0$110 ==.
;	FATFS\src\ff.c:1597: }
	C$ff.c$1597$1_0$110 ==.
	XFff$dir_read$0$0 ==.
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
	Fff$get_fileinfo$0$0 ==.
	C$ff.c$1733$1_0$119 ==.
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
	C$ff.c$1742$1_0$119 ==.
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
	C$ff.c$1743$1_0$119 ==.
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
	C$ff.c$1744$2_0$120 ==.
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
	C$ff.c$1747$3_0$121 ==.
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
	C$ff.c$1748$1_0$119 ==.
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
	C$ff.c$1749$3_0$121 ==.
;	FATFS\src\ff.c:1749: if (c == ' ') continue;			/* Skip padding spaces */
	mov	a,#0x20
	cjne	a,_get_fileinfo_sloc1_1_0,00206$
	sjmp	00111$
00206$:
	C$ff.c$1750$3_0$121 ==.
;	FATFS\src\ff.c:1750: if (c == NDDE) c = (TCHAR)DDE;	/* Restore replaced DDE character */
	mov	a,#0x05
	cjne	a,_get_fileinfo_sloc1_1_0,00104$
	mov	dptr,#_get_fileinfo_c_65536_119
	mov	a,#0xe5
	movx	@dptr,a
00104$:
	C$ff.c$1751$3_0$121 ==.
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
	C$ff.c$1753$3_0$121 ==.
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
	C$ff.c$1754$3_0$121 ==.
;	FATFS\src\ff.c:1754: c += 0x20;			/* To lower */
	mov	dptr,#_get_fileinfo_c_65536_119
	mov	a,#0x20
	add	a,r7
	movx	@dptr,a
00108$:
	C$ff.c$1762$1_0$119 ==.
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
	C$ff.c$1764$2_0$120 ==.
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
	C$ff.c$1765$2_0$120 ==.
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
	C$ff.c$1766$2_0$120 ==.
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
	C$ff.c$1767$2_0$120 ==.
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
	C$ff.c$1769$1_0$119 ==.
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
	C$ff.c$1772$1_0$119 ==.
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
	C$ff.c$1775$1_0$119 ==.
;	FATFS\src\ff.c:1775: i = 0; p = fno->lfname;
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_get_fileinfo_i_65536_119
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$ff.c$1776$2_0$122 ==.
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
	C$ff.c$1777$3_0$123 ==.
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
	C$ff.c$1778$1_0$119 ==.
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
	C$ff.c$1780$4_0$124 ==.
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
	C$ff.c$1781$4_0$124 ==.
;	FATFS\src\ff.c:1781: if (!w) { i = 0; break; }	/* No LFN if it could not be converted */
	mov	a,_get_fileinfo_sloc2_1_0
	orl	a,(_get_fileinfo_sloc2_1_0 + 1)
	jnz	00119$
	mov	dptr,#_get_fileinfo_i_65536_119
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$ff.c$1783$4_0$124 ==.
;	FATFS\src\ff.c:1783: p[i++] = (TCHAR)(w >> 8);
	sjmp	00127$
00119$:
	C$ff.c$1785$1_0$119 ==.
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
	C$ff.c$1786$1_0$119 ==.
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
	C$ff.c$1789$2_0$122 ==.
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
	C$ff.c$1792$1_0$119 ==.
;	FATFS\src\ff.c:1792: }
	C$ff.c$1792$1_0$119 ==.
	XFff$get_fileinfo$0$0 ==.
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
	Fff$create_name$0$0 ==.
	C$ff.c$1803$1_0$128 ==.
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
	C$ff.c$1815$2_0$129 ==.
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
	C$ff.c$1816$1_0$128 ==.
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
	C$ff.c$1817$1_0$128 ==.
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
	C$ff.c$1926$1_0$128 ==.
;	FATFS\src\ff.c:1926: return FR_OK;
	pop	ar7
	pop	ar6
	pop	ar5
	C$ff.c$1817$2_0$130 ==.
;	FATFS\src\ff.c:1817: si = di = 0;
00188$:
	C$ff.c$1819$3_0$131 ==.
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
	C$ff.c$1820$3_0$131 ==.
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
	C$ff.c$1821$3_0$131 ==.
;	FATFS\src\ff.c:1821: if (di >= _MAX_LFN)				/* Reject too long name */
	clr	c
	mov	a,_create_name_sloc2_1_0
	subb	a,#0xff
	mov	a,(_create_name_sloc2_1_0 + 1)
	subb	a,#0x00
	jc	00107$
	C$ff.c$1822$3_0$131 ==.
;	FATFS\src\ff.c:1822: return FR_INVALID_NAME;
	mov	dpl,#0x06
	ljmp	__sdcc_banked_ret
00107$:
	C$ff.c$1824$3_0$131 ==.
;	FATFS\src\ff.c:1824: w &= 0xFF;
	mov	r4,#0x00
	C$ff.c$1831$3_0$131 ==.
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
	C$ff.c$1832$3_0$131 ==.
;	FATFS\src\ff.c:1832: if (!w) return FR_INVALID_NAME;	/* Reject invalid code */
	mov	a,r3
	orl	a,r4
	jnz	00113$
	mov	dpl,#0x06
	ljmp	__sdcc_banked_ret
00113$:
	C$ff.c$1834$3_0$131 ==.
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
	C$ff.c$1835$3_0$131 ==.
;	FATFS\src\ff.c:1835: return FR_INVALID_NAME;
	mov	dpl,#0x06
	ljmp	__sdcc_banked_ret
00115$:
	C$ff.c$1836$1_0$128 ==.
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
	C$ff.c$1838$1_0$128 ==.
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
	C$ff.c$1839$1_0$128 ==.
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
	C$ff.c$1850$1_0$128 ==.
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
	C$ff.c$1851$2_0$133 ==.
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
	C$ff.c$1852$2_0$133 ==.
;	FATFS\src\ff.c:1852: if (w != ' ' && w != '.') break;
	cjne	r3,#0x20,00386$
	cjne	r4,#0x00,00386$
	sjmp	00119$
00386$:
	cjne	r3,#0x2e,00242$
	cjne	r4,#0x00,00242$
00119$:
	C$ff.c$1853$2_0$133 ==.
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
	C$ff.c$1855$1_0$128 ==.
;	FATFS\src\ff.c:1855: if (!di) return FR_INVALID_NAME;	/* Reject nul string */
	mov	a,r5
	orl	a,r7
	jnz	00125$
	mov	dpl,#0x06
	ljmp	__sdcc_banked_ret
00125$:
	C$ff.c$1857$1_0$128 ==.
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
	C$ff.c$1860$1_0$128 ==.
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
	C$ff.c$1861$1_0$128 ==.
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
	C$ff.c$1862$1_0$128 ==.
;	FATFS\src\ff.c:1862: if (si) cf |= NS_LOSS | NS_LFN;
	mov	a,r5
	orl	a,r7
	jz	00219$
	mov	dptr,#_create_name_cf_65536_128
	mov	a,#0x03
	orl	a,r6
	movx	@dptr,a
	C$ff.c$1863$1_0$128 ==.
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
	C$ff.c$1865$1_0$128 ==.
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
	C$ff.c$1867$1_0$128 ==.
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
	C$ff.c$1868$1_0$128 ==.
;	FATFS\src\ff.c:1868: if (!w) break;					/* Break on end of the LFN */
	pop	ar5
	pop	ar4
	mov	a,_create_name_sloc1_1_0
	orl	a,(_create_name_sloc1_1_0 + 1)
	jnz	00399$
	ljmp	00170$
00399$:
	C$ff.c$1869$3_0$136 ==.
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
	C$ff.c$1870$4_0$137 ==.
;	FATFS\src\ff.c:1870: cf |= NS_LOSS | NS_LFN; continue;
	mov	dptr,#_create_name_cf_65536_128
	movx	a,@dptr
	orl	acc,#0x03
	movx	@dptr,a
	ljmp	00194$
00136$:
	C$ff.c$1873$1_0$128 ==.
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
	C$ff.c$1874$1_0$128 ==.
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
	C$ff.c$1875$5_0$139 ==.
;	FATFS\src\ff.c:1875: cf |= NS_LOSS | NS_LFN; break;
	mov	dptr,#_create_name_cf_65536_128
	movx	a,@dptr
	orl	acc,#0x03
	movx	@dptr,a
	ljmp	00170$
00140$:
	C$ff.c$1877$1_0$128 ==.
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
	C$ff.c$1878$1_0$128 ==.
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
	C$ff.c$1879$4_0$138 ==.
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
	C$ff.c$1880$4_0$138 ==.
;	FATFS\src\ff.c:1880: b <<= 2; continue;
	mov	dptr,#_create_name_b_65536_128
	movx	a,@dptr
	add	a,acc
	add	a,acc
	mov	r2,a
	movx	@dptr,a
	ljmp	00194$
00146$:
	C$ff.c$1883$3_0$136 ==.
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
	C$ff.c$1885$4_0$140 ==.
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
	C$ff.c$1886$4_0$140 ==.
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
	C$ff.c$1926$1_0$128 ==.
;	FATFS\src\ff.c:1926: return FR_OK;
	pop	ar5
	pop	ar4
	C$ff.c$1886$4_0$140 ==.
;	FATFS\src\ff.c:1886: if (w) w = ExCvt[w - 0x80];	/* Convert extended character to upper (SBCS) */
00149$:
	C$ff.c$1890$1_0$128 ==.
;	FATFS\src\ff.c:1890: cf |= NS_LFN;				/* Force create LFN entry */
	push	ar4
	push	ar5
	mov	dptr,#_create_name_cf_65536_128
	movx	a,@dptr
	orl	a,#0x02
	mov	r2,a
	movx	@dptr,a
	C$ff.c$1926$1_0$128 ==.
;	FATFS\src\ff.c:1926: return FR_OK;
	pop	ar5
	pop	ar4
	C$ff.c$1897$3_0$136 ==.
;	FATFS\src\ff.c:1897: dp->fn[i++] = (BYTE)(w >> 8);
00166$:
	C$ff.c$1899$4_0$143 ==.
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
	C$ff.c$1900$5_0$144 ==.
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
	C$ff.c$1902$5_0$145 ==.
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
	C$ff.c$1903$1_0$128 ==.
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
	C$ff.c$1905$6_0$147 ==.
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
	C$ff.c$1906$1_0$128 ==.
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
	C$ff.c$1926$1_0$128 ==.
;	FATFS\src\ff.c:1926: return FR_OK;
	pop	ar5
	pop	ar4
	C$ff.c$1906$3_0$136 ==.
;	FATFS\src\ff.c:1906: b |= 1; w -= 0x20;
00167$:
	C$ff.c$1911$1_0$128 ==.
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
	C$ff.c$1914$1_0$128 ==.
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
	C$ff.c$1916$1_0$128 ==.
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
	C$ff.c$1917$1_0$128 ==.
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
	C$ff.c$1918$1_0$128 ==.
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
	C$ff.c$1919$1_0$128 ==.
;	FATFS\src\ff.c:1919: if (!(cf & NS_LFN)) {						/* When LFN is in 8.3 format without extended character, NT flags are created */
	mov	dptr,#_create_name_cf_65536_128
	movx	a,@dptr
	mov	r7,a
	jb	acc.1,00183$
	C$ff.c$1920$2_0$149 ==.
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
	C$ff.c$1921$2_0$149 ==.
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
	C$ff.c$1924$1_0$128 ==.
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
	C$ff.c$1926$1_0$128 ==.
;	FATFS\src\ff.c:1926: return FR_OK;
	mov	dpl,#0x00
	C$ff.c$2003$1_0$128 ==.
;	FATFS\src\ff.c:2003: }
	C$ff.c$2003$1_0$128 ==.
	XFff$create_name$0$0 ==.
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
	Fff$follow_path$0$0 ==.
	C$ff.c$2013$1_0$151 ==.
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
	C$ff.c$2029$1_0$151 ==.
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
	C$ff.c$2030$1_0$151 ==.
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
	C$ff.c$2031$1_0$151 ==.
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
	C$ff.c$2034$1_0$151 ==.
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
	C$ff.c$2035$2_0$152 ==.
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
	C$ff.c$2036$2_0$152 ==.
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
	C$ff.c$2039$4_0$155 ==.
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
	C$ff.c$2040$4_0$155 ==.
;	FATFS\src\ff.c:2040: if (res != FR_OK) break;
	mov	a,r4
	jz	00170$
	ljmp	00126$
00170$:
	C$ff.c$2041$1_0$151 ==.
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
	C$ff.c$2042$4_0$155 ==.
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
	C$ff.c$2043$1_0$151 ==.
;	FATFS\src\ff.c:2043: if (res != FR_OK) {				/* Failed to find the object */
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,r4
	jz	00117$
	C$ff.c$2044$5_0$156 ==.
;	FATFS\src\ff.c:2044: if (res == FR_NO_FILE) {	/* Object is not found */
	cjne	r4,#0x04,00172$
	sjmp	00173$
00172$:
	ljmp	00126$
00173$:
	C$ff.c$2050$7_0$159 ==.
;	FATFS\src\ff.c:2050: if (!(ns & NS_LAST)) res = FR_NO_PATH;	/* Adjust error code if not last segment */
	mov	a,_follow_path_sloc0_1_0
	jnb	acc.2,00174$
	ljmp	00126$
00174$:
	mov	dptr,#_follow_path_res_65536_151
	mov	a,#0x05
	movx	@dptr,a
	C$ff.c$2053$5_0$156 ==.
;	FATFS\src\ff.c:2053: break;
	ljmp	00126$
00117$:
	C$ff.c$2055$4_0$155 ==.
;	FATFS\src\ff.c:2055: if (ns & NS_LAST) break;			/* Last segment matched. Function completed. */
	mov	a,_follow_path_sloc0_1_0
	jnb	acc.2,00175$
	ljmp	00126$
00175$:
	C$ff.c$2056$1_0$151 ==.
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
	C$ff.c$2057$4_0$155 ==.
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
	C$ff.c$2058$5_0$160 ==.
;	FATFS\src\ff.c:2058: res = FR_NO_PATH; break;
	mov	dptr,#_follow_path_res_65536_151
	mov	a,#0x05
	movx	@dptr,a
	sjmp	00126$
00121$:
	C$ff.c$2060$1_0$151 ==.
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
	C$ff.c$2064$1_0$151 ==.
;	FATFS\src\ff.c:2064: return res;
	mov	dptr,#_follow_path_res_65536_151
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	C$ff.c$2065$1_0$151 ==.
;	FATFS\src\ff.c:2065: }
	C$ff.c$2065$1_0$151 ==.
	XFff$follow_path$0$0 ==.
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
	Fff$get_ldnumber$0$0 ==.
	C$ff.c$2075$1_0$162 ==.
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
	C$ff.c$2081$2_0$162 ==.
;	FATFS\src\ff.c:2081: int vol = -1;
	mov	dptr,#_get_ldnumber_vol_65536_162
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$ff.c$2084$1_0$162 ==.
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
	C$ff.c$2085$1_0$162 ==.
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
	C$ff.c$2086$2_0$163 ==.
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
	C$ff.c$2087$1_0$162 ==.
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
	C$ff.c$2088$3_0$165 ==.
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
	C$ff.c$2089$3_0$165 ==.
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
	C$ff.c$2090$4_0$166 ==.
;	FATFS\src\ff.c:2090: if (i < _VOLUMES) {	/* If a drive id is found, get the value and strip it */
	mov	r0,_get_ldnumber_sloc1_1_0
	mov	r1,(_get_ldnumber_sloc1_1_0 + 1)
	clr	c
	mov	a,r0
	subb	a,#0x02
	mov	a,r1
	subb	a,#0x00
	jnc	00105$
	C$ff.c$2091$5_0$167 ==.
;	FATFS\src\ff.c:2091: vol = (int)i;
	mov	r0,_get_ldnumber_sloc1_1_0
	mov	r1,(_get_ldnumber_sloc1_1_0 + 1)
	mov	dptr,#_get_ldnumber_vol_65536_162
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	C$ff.c$2092$5_0$167 ==.
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
	C$ff.c$2115$3_0$165 ==.
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
	C$ff.c$2120$2_0$163 ==.
;	FATFS\src\ff.c:2120: vol = 0;		/* Drive 0 */
	mov	dptr,#_get_ldnumber_vol_65536_162
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00110$:
	C$ff.c$2123$1_0$162 ==.
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
	C$ff.c$2124$1_0$162 ==.
;	FATFS\src\ff.c:2124: }
	C$ff.c$2124$1_0$162 ==.
	XFff$get_ldnumber$0$0 ==.
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
	Fff$check_fs$0$0 ==.
	C$ff.c$2134$1_0$170 ==.
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
	C$ff.c$2139$1_0$170 ==.
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
	C$ff.c$2140$1_0$170 ==.
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
	C$ff.c$2141$1_0$170 ==.
;	FATFS\src\ff.c:2141: return 3;
	mov	dpl,#0x03
	ljmp	__sdcc_banked_ret
00102$:
	C$ff.c$2143$1_0$170 ==.
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
	C$ff.c$2144$1_0$170 ==.
;	FATFS\src\ff.c:2144: return 2;
	mov	dpl,#0x02
	ljmp	__sdcc_banked_ret
00104$:
	C$ff.c$2146$1_0$170 ==.
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
	C$ff.c$2147$1_0$170 ==.
;	FATFS\src\ff.c:2147: return 0;
	mov	dpl,#0x00
	ljmp	__sdcc_banked_ret
00106$:
	C$ff.c$2148$1_0$170 ==.
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
	C$ff.c$2149$1_0$170 ==.
;	FATFS\src\ff.c:2149: return 0;
	mov	dpl,#0x00
	sjmp	00109$
00108$:
	C$ff.c$2151$1_0$170 ==.
;	FATFS\src\ff.c:2151: return 1;
	mov	dpl,#0x01
00109$:
	C$ff.c$2152$1_0$170 ==.
;	FATFS\src\ff.c:2152: }
	C$ff.c$2152$1_0$170 ==.
	XFff$check_fs$0$0 ==.
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
;fmt                       Allocated with name '_find_volume_fmt_65536_172'
;vol                       Allocated with name '_find_volume_vol_65536_172'
;stat                      Allocated with name '_find_volume_stat_65536_172'
;bsect                     Allocated with name '_find_volume_bsect_65536_172'
;fasize                    Allocated with name '_find_volume_fasize_65536_172'
;tsect                     Allocated with name '_find_volume_tsect_65536_172'
;sysect                    Allocated with name '_find_volume_sysect_65536_172'
;nclst                     Allocated with name '_find_volume_nclst_65536_172'
;szbfat                    Allocated with name '_find_volume_szbfat_65536_172'
;nrsv                      Allocated with name '_find_volume_nrsv_65536_172'
;fs                        Allocated with name '_find_volume_fs_65536_172'
;i                         Allocated with name '_find_volume_i_131072_175'
;br                        Allocated with name '_find_volume_br_131072_175'
;pt                        Allocated with name '_find_volume_pt_262144_177'
;------------------------------------------------------------
	Fff$find_volume$0$0 ==.
	C$ff.c$2162$1_0$172 ==.
;	FATFS\src\ff.c:2162: FRESULT find_volume (	/* FR_OK(0): successful, !=0: any error occurred */
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
	C$ff.c$2177$1_0$172 ==.
;	FATFS\src\ff.c:2177: *rfs = 0;
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
	C$ff.c$2178$1_0$172 ==.
;	FATFS\src\ff.c:2178: vol = get_ldnumber(path);
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
	C$ff.c$2179$1_0$172 ==.
;	FATFS\src\ff.c:2179: if (vol < 0) return FR_INVALID_DRIVE;
	mov	a,r4
	jnb	acc.7,00102$
	mov	dpl,#0x0b
	ljmp	__sdcc_banked_ret
00102$:
	C$ff.c$2182$1_0$172 ==.
;	FATFS\src\ff.c:2182: fs = FatFs[vol];					/* Get pointer to the file system object */
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
	C$ff.c$2183$1_0$172 ==.
;	FATFS\src\ff.c:2183: if (!fs) return FR_NOT_ENABLED;		/* Is the file system object available? */
	mov	a,r0
	orl	a,r1
	jnz	00104$
	mov	dpl,#0x0c
	ljmp	__sdcc_banked_ret
00104$:
	C$ff.c$2186$1_0$172 ==.
;	FATFS\src\ff.c:2186: *rfs = fs;							/* Return pointer to the file system object */
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
	C$ff.c$2188$1_0$172 ==.
;	FATFS\src\ff.c:2188: if (fs->fs_type) {					/* If the volume has been mounted */
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	jz	00112$
	C$ff.c$2189$2_0$173 ==.
;	FATFS\src\ff.c:2189: stat = disk_status(fs->drv);
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
	mov	a,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	C$ff.c$2190$2_0$173 ==.
;	FATFS\src\ff.c:2190: if (!(stat & STA_NOINIT)) {		/* and the physical drive is kept initialized */
	jb	acc.0,00112$
	C$ff.c$2193$3_0$174 ==.
;	FATFS\src\ff.c:2193: return FR_OK;				/* The file system object is valid */
	mov	dpl,#0x00
	ljmp	__sdcc_banked_ret
00112$:
	C$ff.c$2200$1_0$172 ==.
;	FATFS\src\ff.c:2200: fs->fs_type = 0;					/* Clear the file system object */
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	clr	a
	lcall	__gptrput
	C$ff.c$2201$1_0$172 ==.
;	FATFS\src\ff.c:2201: fs->drv = LD2PD(vol);				/* Bind the logical drive and a physical drive */
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
	C$ff.c$2202$1_0$172 ==.
;	FATFS\src\ff.c:2202: stat = disk_initialize(fs->drv);	/* Initialize the physical drive */
	mov	dpl,r3
	push	ar2
	push	ar1
	push	ar0
	mov	r0,#_disk_initialize
	mov	r1,#(_disk_initialize >> 8)
	mov	r2,#(_disk_initialize >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	C$ff.c$2203$1_0$172 ==.
;	FATFS\src\ff.c:2203: if (stat & STA_NOINIT)				/* Check if the initialization succeeded */
	jnb	acc.0,00116$
	C$ff.c$2204$1_0$172 ==.
;	FATFS\src\ff.c:2204: return FR_NOT_READY;			/* Failed to initialize due to no medium or hard error */
	mov	dpl,#0x03
	ljmp	__sdcc_banked_ret
	C$ff.c$2206$1_0$172 ==.
;	FATFS\src\ff.c:2206: return FR_WRITE_PROTECTED;
00116$:
	C$ff.c$2212$1_0$172 ==.
;	FATFS\src\ff.c:2212: bsect = 0;
	mov	dptr,#_find_volume_bsect_65536_172
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$ff.c$2213$1_0$172 ==.
;	FATFS\src\ff.c:2213: fmt = check_fs(fs, bsect);					/* Load sector 0 and check if it is an FAT boot sector as SFD */
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
	mov	dptr,#_find_volume_fmt_65536_172
	mov	a,r7
	movx	@dptr,a
	C$ff.c$2214$1_0$172 ==.
;	FATFS\src\ff.c:2214: if (fmt == 1 || (!fmt && (LD2PT(vol)))) {	/* Not an FAT boot sector or forced partition number */
	cjne	r7,#0x01,00310$
	sjmp	00311$
00310$:
	ljmp	00128$
00311$:
	C$ff.c$2218$4_0$177 ==.
;	FATFS\src\ff.c:2218: for (i = 0; i < 4; i++) {			/* Get partition offset */
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
	C$ff.c$2219$1_0$172 ==.
;	FATFS\src\ff.c:2219: BYTE *pt = fs->win+MBR_Table + i * SZ_PTE;
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
	C$ff.c$2220$4_0$177 ==.
;	FATFS\src\ff.c:2220: br[i] = pt[4] ? LD_DWORD(&pt[8]) : 0;
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
	add	a,#_find_volume_br_131072_175
	mov	_find_volume_sloc1_1_0,a
	mov	a,r2
	addc	a,#(_find_volume_br_131072_175 >> 8)
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
	C$ff.c$2218$3_0$176 ==.
;	FATFS\src\ff.c:2218: for (i = 0; i < 4; i++) {			/* Get partition offset */
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
	C$ff.c$2224$1_0$172 ==.
;	FATFS\src\ff.c:2224: do {								/* Find an FAT volume */
	mov	r6,#0x00
	mov	r7,#0x00
00124$:
	C$ff.c$2225$3_0$178 ==.
;	FATFS\src\ff.c:2225: bsect = br[i];
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
	add	a,#_find_volume_br_131072_175
	mov	dpl,a
	mov	a,r5
	addc	a,#(_find_volume_br_131072_175 >> 8)
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
	mov	dptr,#_find_volume_bsect_65536_172
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
	C$ff.c$2226$3_0$178 ==.
;	FATFS\src\ff.c:2226: fmt = bsect ? check_fs(fs, bsect) : 2;	/* Check the partition */
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
	mov	dptr,#_find_volume_fmt_65536_172
	mov	a,r4
	movx	@dptr,a
	C$ff.c$2227$2_0$175 ==.
;	FATFS\src\ff.c:2227: } while (!LD2PT(vol) && fmt && ++i < 4);
	mov	a,r4
	jz	00128$
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
00128$:
	C$ff.c$2229$1_0$172 ==.
;	FATFS\src\ff.c:2229: if (fmt == 3) return FR_DISK_ERR;		/* An error occured in the disk I/O layer */
	mov	dptr,#_find_volume_fmt_65536_172
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00132$
	mov	dpl,#0x01
	ljmp	__sdcc_banked_ret
00132$:
	C$ff.c$2230$1_0$172 ==.
;	FATFS\src\ff.c:2230: if (fmt) return FR_NO_FILESYSTEM;		/* No FAT volume is found */
	mov	a,r7
	jz	00134$
	mov	dpl,#0x0d
	ljmp	__sdcc_banked_ret
00134$:
	C$ff.c$2234$1_0$172 ==.
;	FATFS\src\ff.c:2234: if (LD_WORD(fs->win+BPB_BytsPerSec) != SS(fs))		/* (BPB_BytsPerSec must be equal to the physical sector size) */
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
	C$ff.c$2235$1_0$172 ==.
;	FATFS\src\ff.c:2235: return FR_NO_FILESYSTEM;
	mov	dpl,#0x0d
	ljmp	__sdcc_banked_ret
00136$:
	C$ff.c$2237$1_0$172 ==.
;	FATFS\src\ff.c:2237: fasize = LD_WORD(fs->win+BPB_FATSz16);				/* Number of sectors per FAT */
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
	mov	dptr,#_find_volume_fasize_65536_172
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
	C$ff.c$2238$1_0$172 ==.
;	FATFS\src\ff.c:2238: if (!fasize) fasize = LD_DWORD(fs->win+BPB_FATSz32);
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
	mov	dptr,#_find_volume_fasize_65536_172
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
	C$ff.c$2322$1_0$172 ==.
;	FATFS\src\ff.c:2322: return FR_OK;
	pop	ar2
	pop	ar1
	pop	ar0
	C$ff.c$2238$1_0$172 ==.
;	FATFS\src\ff.c:2238: if (!fasize) fasize = LD_DWORD(fs->win+BPB_FATSz32);
00138$:
	C$ff.c$2239$1_0$172 ==.
;	FATFS\src\ff.c:2239: fs->fsize = fasize;
	mov	a,#0x0e
	add	a,r0
	mov	_find_volume_sloc4_1_0,a
	clr	a
	addc	a,r1
	mov	(_find_volume_sloc4_1_0 + 1),a
	mov	(_find_volume_sloc4_1_0 + 2),r2
	mov	dptr,#_find_volume_fasize_65536_172
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
	C$ff.c$2241$1_0$172 ==.
;	FATFS\src\ff.c:2241: fs->n_fats = fs->win[BPB_NumFATs];					/* Number of FAT copies */
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
	C$ff.c$2242$1_0$172 ==.
;	FATFS\src\ff.c:2242: if (fs->n_fats != 1 && fs->n_fats != 2)				/* (Must be 1 or 2) */
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
	C$ff.c$2243$1_0$172 ==.
;	FATFS\src\ff.c:2243: return FR_NO_FILESYSTEM;
	mov	dpl,#0x0d
	ljmp	__sdcc_banked_ret
00140$:
	C$ff.c$2244$1_0$172 ==.
;	FATFS\src\ff.c:2244: fasize *= fs->n_fats;								/* Number of sectors for FAT area */
	mov	dpl,_find_volume_sloc3_1_0
	mov	dph,(_find_volume_sloc3_1_0 + 1)
	mov	b,(_find_volume_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_find_volume_fasize_65536_172
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
	mov	dptr,#_find_volume_fasize_65536_172
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
	C$ff.c$2246$1_0$172 ==.
;	FATFS\src\ff.c:2246: fs->csize = fs->win[BPB_SecPerClus];				/* Number of sectors per cluster */
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
	C$ff.c$2247$1_0$172 ==.
;	FATFS\src\ff.c:2247: if (!fs->csize || (fs->csize & (fs->csize - 1)))	/* (Must be power of 2) */
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
	C$ff.c$2248$1_0$172 ==.
;	FATFS\src\ff.c:2248: return FR_NO_FILESYSTEM;
	mov	dpl,#0x0d
	ljmp	__sdcc_banked_ret
00143$:
	C$ff.c$2250$1_0$172 ==.
;	FATFS\src\ff.c:2250: fs->n_rootdir = LD_WORD(fs->win+BPB_RootEntCnt);	/* Number of root directory entries */
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
	C$ff.c$2251$1_0$172 ==.
;	FATFS\src\ff.c:2251: if (fs->n_rootdir % (SS(fs) / SZ_DIR))				/* (Must be sector aligned) */
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
	C$ff.c$2252$1_0$172 ==.
;	FATFS\src\ff.c:2252: return FR_NO_FILESYSTEM;
	mov	dpl,#0x0d
	ljmp	__sdcc_banked_ret
00146$:
	C$ff.c$2254$1_0$172 ==.
;	FATFS\src\ff.c:2254: tsect = LD_WORD(fs->win+BPB_TotSec16);				/* Number of sectors on the volume */
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
	mov	dptr,#_find_volume_tsect_65536_172
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
	C$ff.c$2255$1_0$172 ==.
;	FATFS\src\ff.c:2255: if (!tsect) tsect = LD_DWORD(fs->win+BPB_TotSec32);
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
	mov	dptr,#_find_volume_tsect_65536_172
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
	C$ff.c$2322$1_0$172 ==.
;	FATFS\src\ff.c:2322: return FR_OK;
	pop	ar2
	pop	ar1
	pop	ar0
	C$ff.c$2255$1_0$172 ==.
;	FATFS\src\ff.c:2255: if (!tsect) tsect = LD_DWORD(fs->win+BPB_TotSec32);
00148$:
	C$ff.c$2257$1_0$172 ==.
;	FATFS\src\ff.c:2257: nrsv = LD_WORD(fs->win+BPB_RsvdSecCnt);				/* Number of reserved sectors */
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
	C$ff.c$2258$1_0$172 ==.
;	FATFS\src\ff.c:2258: if (!nrsv) return FR_NO_FILESYSTEM;					/* (Must not be 0) */
	pop	ar2
	pop	ar1
	pop	ar0
	mov	a,_find_volume_sloc6_1_0
	orl	a,(_find_volume_sloc6_1_0 + 1)
	jnz	00150$
	mov	dpl,#0x0d
	ljmp	__sdcc_banked_ret
00150$:
	C$ff.c$2261$1_0$172 ==.
;	FATFS\src\ff.c:2261: sysect = nrsv + fasize + fs->n_rootdir / (SS(fs) / SZ_DIR);	/* RSV+FAT+DIR */
	push	ar0
	push	ar1
	push	ar2
	mov	dptr,#_find_volume_fasize_65536_172
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
	C$ff.c$2262$1_0$172 ==.
;	FATFS\src\ff.c:2262: if (tsect < sysect) return FR_NO_FILESYSTEM;		/* (Invalid volume size) */
	mov	dptr,#_find_volume_tsect_65536_172
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
	C$ff.c$2263$1_0$172 ==.
;	FATFS\src\ff.c:2263: nclst = (tsect - sysect) / fs->csize;				/* Number of clusters */
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
	C$ff.c$2264$1_0$172 ==.
;	FATFS\src\ff.c:2264: if (!nclst) return FR_NO_FILESYSTEM;				/* (Invalid volume size) */
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
	C$ff.c$2265$1_0$172 ==.
;	FATFS\src\ff.c:2265: fmt = FS_FAT12;
	mov	dptr,#_find_volume_fmt_65536_172
	mov	a,#0x01
	movx	@dptr,a
	C$ff.c$2266$1_0$172 ==.
;	FATFS\src\ff.c:2266: if (nclst >= MIN_FAT16) fmt = FS_FAT16;
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
	mov	dptr,#_find_volume_fmt_65536_172
	mov	a,#0x02
	movx	@dptr,a
00156$:
	C$ff.c$2267$1_0$172 ==.
;	FATFS\src\ff.c:2267: if (nclst >= MIN_FAT32) fmt = FS_FAT32;
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
	mov	dptr,#_find_volume_fmt_65536_172
	mov	a,#0x03
	movx	@dptr,a
00158$:
	C$ff.c$2270$1_0$172 ==.
;	FATFS\src\ff.c:2270: fs->n_fatent = nclst + 2;							/* Number of FAT entries */
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
	C$ff.c$2271$1_0$172 ==.
;	FATFS\src\ff.c:2271: fs->volbase = bsect;								/* Volume start sector */
	mov	a,#0x12
	add	a,r0
	mov	_find_volume_sloc5_1_0,a
	clr	a
	addc	a,r1
	mov	(_find_volume_sloc5_1_0 + 1),a
	mov	(_find_volume_sloc5_1_0 + 2),r2
	mov	dptr,#_find_volume_bsect_65536_172
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
	C$ff.c$2272$1_0$172 ==.
;	FATFS\src\ff.c:2272: fs->fatbase = bsect + nrsv; 						/* FAT start sector */
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
	C$ff.c$2273$1_0$172 ==.
;	FATFS\src\ff.c:2273: fs->database = bsect + sysect;						/* Data start sector */
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
	C$ff.c$2274$1_0$172 ==.
;	FATFS\src\ff.c:2274: if (fmt == FS_FAT32) {
	mov	dptr,#_find_volume_fmt_65536_172
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
	C$ff.c$2275$2_0$179 ==.
;	FATFS\src\ff.c:2275: if (fs->n_rootdir) return FR_NO_FILESYSTEM;		/* (BPB_RootEntCnt must be 0) */
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
	C$ff.c$2276$2_0$179 ==.
;	FATFS\src\ff.c:2276: fs->dirbase = LD_DWORD(fs->win+BPB_RootClus);	/* Root directory start cluster */
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
	C$ff.c$2277$2_0$179 ==.
;	FATFS\src\ff.c:2277: szbfat = fs->n_fatent * 4;						/* (Needed FAT size) */
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
	mov	dptr,#_find_volume_szbfat_65536_172
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
	C$ff.c$2279$2_0$180 ==.
;	FATFS\src\ff.c:2279: if (!fs->n_rootdir)	return FR_NO_FILESYSTEM;	/* (BPB_RootEntCnt must not be 0) */
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
	C$ff.c$2280$2_0$180 ==.
;	FATFS\src\ff.c:2280: fs->dirbase = fs->fatbase + fasize;				/* Root directory start sector */
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
	mov	dptr,#_find_volume_fasize_65536_172
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
	C$ff.c$2281$2_0$180 ==.
;	FATFS\src\ff.c:2281: szbfat = (fmt == FS_FAT16) ?					/* (Needed FAT size) */
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
	C$ff.c$2282$2_0$180 ==.
;	FATFS\src\ff.c:2282: fs->n_fatent * 2 : fs->n_fatent * 3 / 2 + (fs->n_fatent & 1);
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
	C$ff.c$2322$1_0$172 ==.
;	FATFS\src\ff.c:2322: return FR_OK;
	pop	ar2
	pop	ar1
	pop	ar0
	C$ff.c$2282$2_0$180 ==.
;	FATFS\src\ff.c:2282: fs->n_fatent * 2 : fs->n_fatent * 3 / 2 + (fs->n_fatent & 1);
00177$:
	mov	dptr,#_find_volume_szbfat_65536_172
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
	C$ff.c$2284$1_0$172 ==.
;	FATFS\src\ff.c:2284: if (fs->fsize < (szbfat + (SS(fs) - 1)) / SS(fs))	/* (BPB_FATSz must not be less than needed) */
	push	ar0
	push	ar1
	push	ar2
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
	mov	dptr,#_find_volume_szbfat_65536_172
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
	C$ff.c$2285$1_0$172 ==.
;	FATFS\src\ff.c:2285: return FR_NO_FILESYSTEM;
	mov	dpl,#0x0d
	sjmp	00170$
00167$:
	C$ff.c$2313$1_0$172 ==.
;	FATFS\src\ff.c:2313: fs->fs_type = fmt;	/* FAT sub-type */
	mov	dptr,#_find_volume_fmt_65536_172
	movx	a,@dptr
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrput
	C$ff.c$2314$1_0$172 ==.
;	FATFS\src\ff.c:2314: fs->id = ++Fsid;	/* File system mount ID */
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
	C$ff.c$2322$1_0$172 ==.
;	FATFS\src\ff.c:2322: return FR_OK;
	mov	dpl,#0x00
00170$:
	C$ff.c$2323$1_0$172 ==.
;	FATFS\src\ff.c:2323: }
	C$ff.c$2323$1_0$172 ==.
	XFff$find_volume$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'validate'
;------------------------------------------------------------
;sloc0                     Allocated with name '_validate_sloc0_1_0'
;obj                       Allocated with name '_validate_obj_65536_181'
;fil                       Allocated with name '_validate_fil_65536_182'
;------------------------------------------------------------
	Fff$validate$0$0 ==.
	C$ff.c$2333$1_0$182 ==.
;	FATFS\src\ff.c:2333: FRESULT validate (	/* FR_OK(0): The object is valid, !=0: Invalid */
;	-----------------------------------------
;	 function validate
;	-----------------------------------------
_validate:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_validate_obj_65536_181
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$ff.c$2337$1_0$182 ==.
;	FATFS\src\ff.c:2337: FIL *fil = (FIL*)obj;	/* Assuming offset of .fs and .id in the FIL/DIR structure is identical */
	mov	dptr,#_validate_obj_65536_181
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
	C$ff.c$2340$1_0$182 ==.
;	FATFS\src\ff.c:2340: if (!fil || !fil->fs || !fil->fs->fs_type || fil->fs->id != fil->id)
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
	C$ff.c$2341$1_0$182 ==.
;	FATFS\src\ff.c:2341: return FR_INVALID_OBJECT;
	mov	dpl,#0x09
	sjmp	00108$
00102$:
	C$ff.c$2345$1_0$182 ==.
;	FATFS\src\ff.c:2345: if (disk_status(fil->fs->drv) & STA_NOINIT)
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
	C$ff.c$2346$1_0$182 ==.
;	FATFS\src\ff.c:2346: return FR_NOT_READY;
	mov	dpl,#0x03
	sjmp	00108$
00107$:
	C$ff.c$2348$1_0$182 ==.
;	FATFS\src\ff.c:2348: return FR_OK;
	mov	dpl,#0x00
00108$:
	C$ff.c$2349$1_0$182 ==.
;	FATFS\src\ff.c:2349: }
	C$ff.c$2349$1_0$182 ==.
	XFff$validate$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_mount'
;------------------------------------------------------------
;path                      Allocated with name '_f_mount_PARM_2'
;opt                       Allocated with name '_f_mount_PARM_3'
;fs                        Allocated with name '_f_mount_fs_65536_183'
;cfs                       Allocated with name '_f_mount_cfs_65536_184'
;vol                       Allocated with name '_f_mount_vol_65536_184'
;res                       Allocated with name '_f_mount_res_65536_184'
;rp                        Allocated with name '_f_mount_rp_65536_184'
;------------------------------------------------------------
	G$f_mount$0$0 ==.
	C$ff.c$2366$1_0$184 ==.
;	FATFS\src\ff.c:2366: FRESULT f_mount (
;	-----------------------------------------
;	 function f_mount
;	-----------------------------------------
_f_mount:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_mount_fs_65536_183
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$ff.c$2375$2_0$184 ==.
;	FATFS\src\ff.c:2375: const TCHAR *rp = path;
	mov	dptr,#_f_mount_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_mount_rp_65536_184
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$ff.c$2378$1_0$184 ==.
;	FATFS\src\ff.c:2378: vol = get_ldnumber(&rp);
	mov	dptr,#_f_mount_rp_65536_184
	mov	b,#0x00
	mov	r0,#_get_ldnumber
	mov	r1,#(_get_ldnumber >> 8)
	mov	r2,#(_get_ldnumber >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	C$ff.c$2379$1_0$184 ==.
;	FATFS\src\ff.c:2379: if (vol < 0) return FR_INVALID_DRIVE;
	mov	a,dph
	mov	r7,a
	jnb	acc.7,00102$
	mov	dpl,#0x0b
	ljmp	__sdcc_banked_ret
00102$:
	C$ff.c$2380$1_0$184 ==.
;	FATFS\src\ff.c:2380: cfs = FatFs[vol];					/* Pointer to fs object */
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
	C$ff.c$2382$1_0$184 ==.
;	FATFS\src\ff.c:2382: if (cfs) {
	mov	a,r3
	orl	a,r4
	jz	00104$
	C$ff.c$2389$2_0$185 ==.
;	FATFS\src\ff.c:2389: cfs->fs_type = 0;				/* Clear old fs object */
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
00104$:
	C$ff.c$2392$1_0$184 ==.
;	FATFS\src\ff.c:2392: if (fs) {
	mov	dptr,#_f_mount_fs_65536_183
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_f_mount_fs_65536_183
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00106$
	C$ff.c$2393$2_0$186 ==.
;	FATFS\src\ff.c:2393: fs->fs_type = 0;				/* Clear new fs object */
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
00106$:
	C$ff.c$2398$1_0$184 ==.
;	FATFS\src\ff.c:2398: FatFs[vol] = fs;					/* Register new fs object */
	mov	dptr,#_f_mount_fs_65536_183
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
	C$ff.c$2400$1_0$184 ==.
;	FATFS\src\ff.c:2400: if (!fs || opt != 1) return FR_OK;	/* Do not mount now, it will be mounted later */
	mov	dptr,#_f_mount_fs_65536_183
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
	C$ff.c$2402$1_0$184 ==.
;	FATFS\src\ff.c:2402: res = find_volume(&fs, &path, 0);	/* Force mounted the volume */
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
	mov	dptr,#_f_mount_fs_65536_183
	mov	b,#0x00
	mov	r0,#_find_volume
	mov	r1,#(_find_volume >> 8)
	mov	r2,#(_find_volume >> 16)
	lcall	__sdcc_banked_call
	C$ff.c$2403$1_0$184 ==.
;	FATFS\src\ff.c:2403: LEAVE_FF(fs, res);
	mov  r7,dpl
00110$:
	C$ff.c$2404$1_0$184 ==.
;	FATFS\src\ff.c:2404: }
	C$ff.c$2404$1_0$184 ==.
	XG$f_mount$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_open'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_open_sloc0_1_0'
;sloc1                     Allocated with name '_f_open_sloc1_1_0'
;sloc2                     Allocated with name '_f_open_sloc2_1_0'
;path                      Allocated with name '_f_open_PARM_2'
;mode                      Allocated with name '_f_open_PARM_3'
;fp                        Allocated with name '_f_open_fp_65536_187'
;res                       Allocated with name '_f_open_res_65536_188'
;dj                        Allocated with name '_f_open_dj_65536_188'
;dir                       Allocated with name '_f_open_dir_65536_188'
;sfn                       Allocated with name '_f_open_sfn_65536_188'
;lfn                       Allocated with name '_f_open_lfn_65536_188'
;------------------------------------------------------------
	G$f_open$0$0 ==.
	C$ff.c$2413$1_0$188 ==.
;	FATFS\src\ff.c:2413: FRESULT f_open (
;	-----------------------------------------
;	 function f_open
;	-----------------------------------------
_f_open:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_open_fp_65536_187
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$ff.c$2425$1_0$188 ==.
;	FATFS\src\ff.c:2425: if (!fp) return FR_INVALID_OBJECT;
	mov	dptr,#_f_open_fp_65536_187
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_open_fp_65536_187
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
	mov	dpl,#0x09
	ljmp	__sdcc_banked_ret
00102$:
	C$ff.c$2426$1_0$188 ==.
;	FATFS\src\ff.c:2426: fp->fs = 0;			/* Clear file object */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	C$ff.c$2433$1_0$188 ==.
;	FATFS\src\ff.c:2433: mode &= FA_READ;
	mov	dptr,#_f_open_PARM_3
	movx	a,@dptr
	anl	acc,#0x01
	movx	@dptr,a
	C$ff.c$2434$1_0$188 ==.
;	FATFS\src\ff.c:2434: res = find_volume(&dj.fs, &path, 0);
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
	mov	dptr,#_f_open_dj_65536_188
	mov	b,#0x00
	mov	r0,#_find_volume
	mov	r1,#(_find_volume >> 8)
	mov	r2,#(_find_volume >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	dptr,#_f_open_res_65536_188
	mov	a,r7
	movx	@dptr,a
	C$ff.c$2436$1_0$188 ==.
;	FATFS\src\ff.c:2436: if (res == FR_OK) {
	mov	a,r7
	jz	00147$
	ljmp	00115$
00147$:
	C$ff.c$2437$3_0$190 ==.
;	FATFS\src\ff.c:2437: INIT_BUF(dj);
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
	mov	dptr,#(_f_open_dj_65536_188 + 0x0019)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_f_open_dj_65536_188 + 0x0016)
	mov	a,#_f_open_sfn_65536_188
	movx	@dptr,a
	mov	a,#(_f_open_sfn_65536_188 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$ff.c$2438$2_0$189 ==.
;	FATFS\src\ff.c:2438: res = follow_path(&dj, path);	/* Follow the file path */
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
	mov	dptr,#_f_open_dj_65536_188
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
	mov	dptr,#_f_open_res_65536_188
	mov	a,r4
	movx	@dptr,a
	C$ff.c$2439$2_0$189 ==.
;	FATFS\src\ff.c:2439: dir = dj.dir;
	mov	dptr,#(_f_open_dj_65536_188 + 0x0013)
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_f_open_dir_65536_188
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	C$ff.c$2511$2_0$189 ==.
;	FATFS\src\ff.c:2511: if (res == FR_OK) {					/* Follow succeeded */
	mov	a,r4
	jnz	00111$
	C$ff.c$2512$3_0$191 ==.
;	FATFS\src\ff.c:2512: dir = dj.dir;
	mov	dptr,#_f_open_dir_65536_188
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	C$ff.c$2513$3_0$191 ==.
;	FATFS\src\ff.c:2513: if (!dir) {						/* Current directory itself */
	mov	a,r1
	orl	a,r2
	jnz	00108$
	C$ff.c$2514$4_0$192 ==.
;	FATFS\src\ff.c:2514: res = FR_INVALID_NAME;
	mov	dptr,#_f_open_res_65536_188
	mov	a,#0x06
	movx	@dptr,a
	sjmp	00111$
00108$:
	C$ff.c$2516$4_0$193 ==.
;	FATFS\src\ff.c:2516: if (dir[DIR_Attr] & AM_DIR)	/* It is a directory */
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
	C$ff.c$2517$4_0$193 ==.
;	FATFS\src\ff.c:2517: res = FR_NO_FILE;
	mov	dptr,#_f_open_res_65536_188
	mov	a,#0x04
	movx	@dptr,a
00111$:
	C$ff.c$2521$2_0$189 ==.
;	FATFS\src\ff.c:2521: FREE_BUF();
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_ff_memfree
	mov	r1,#(_ff_memfree >> 8)
	mov	r2,#(_ff_memfree >> 16)
	lcall	__sdcc_banked_call
	C$ff.c$2523$2_0$189 ==.
;	FATFS\src\ff.c:2523: if (res == FR_OK) {
	mov	dptr,#_f_open_res_65536_188
	movx	a,@dptr
	jz	00152$
	ljmp	00115$
00152$:
	C$ff.c$2524$3_0$194 ==.
;	FATFS\src\ff.c:2524: fp->flag = mode;					/* File access mode */
	mov	dptr,#_f_open_fp_65536_187
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
	C$ff.c$2525$3_0$194 ==.
;	FATFS\src\ff.c:2525: fp->err = 0;						/* Clear error flag */
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
	C$ff.c$2526$3_0$194 ==.
;	FATFS\src\ff.c:2526: fp->sclust = ld_clust(dj.fs, dir);	/* File start cluster */
	mov	a,#0x0f
	add	a,r5
	mov	_f_open_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_open_sloc0_1_0 + 1),a
	mov	(_f_open_sloc0_1_0 + 2),r7
	mov	dptr,#_f_open_dj_65536_188
	movx	a,@dptr
	mov	_f_open_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc1_1_0 + 2),a
	mov	dptr,#_f_open_dir_65536_188
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
	C$ff.c$2527$3_0$194 ==.
;	FATFS\src\ff.c:2527: fp->fsize = LD_DWORD(dir+DIR_FileSize);	/* File size */
	mov	a,#0x0b
	add	a,r5
	mov	_f_open_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_open_sloc1_1_0 + 1),a
	mov	(_f_open_sloc1_1_0 + 2),r7
	mov	dptr,#_f_open_dir_65536_188
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
	C$ff.c$2528$3_0$194 ==.
;	FATFS\src\ff.c:2528: fp->fptr = 0;						/* File pointer */
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
	C$ff.c$2529$3_0$194 ==.
;	FATFS\src\ff.c:2529: fp->dsect = 0;
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
	C$ff.c$2531$3_0$194 ==.
;	FATFS\src\ff.c:2531: fp->cltbl = 0;						/* Normal seek mode */
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
	C$ff.c$2533$3_0$194 ==.
;	FATFS\src\ff.c:2533: fp->fs = dj.fs;	 					/* Validate file object */
	mov	dptr,#_f_open_dj_65536_188
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
	C$ff.c$2534$3_0$194 ==.
;	FATFS\src\ff.c:2534: fp->id = fp->fs->id;
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
	C$ff.c$2538$1_0$188 ==.
;	FATFS\src\ff.c:2538: LEAVE_FF(dj.fs, res);
	mov	dptr,#_f_open_res_65536_188
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	C$ff.c$2539$1_0$188 ==.
;	FATFS\src\ff.c:2539: }
	C$ff.c$2539$1_0$188 ==.
	XG$f_open$0$0 ==.
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
;fp                        Allocated with name '_f_read_fp_65536_195'
;res                       Allocated with name '_f_read_res_65536_196'
;clst                      Allocated with name '_f_read_clst_65536_196'
;sect                      Allocated with name '_f_read_sect_65536_196'
;remain                    Allocated with name '_f_read_remain_65536_196'
;rcnt                      Allocated with name '_f_read_rcnt_65536_196'
;cc                        Allocated with name '_f_read_cc_65536_196'
;csect                     Allocated with name '_f_read_csect_65536_196'
;rbuff                     Allocated with name '_f_read_rbuff_65536_196'
;------------------------------------------------------------
	G$f_read$0$0 ==.
	C$ff.c$2548$1_0$196 ==.
;	FATFS\src\ff.c:2548: FRESULT f_read (
;	-----------------------------------------
;	 function f_read
;	-----------------------------------------
_f_read:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_read_fp_65536_195
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$ff.c$2558$1_0$196 ==.
;	FATFS\src\ff.c:2558: BYTE csect, *rbuff = (BYTE*)buff;
	mov	dptr,#_f_read_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_read_rbuff_65536_196
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$ff.c$2561$1_0$196 ==.
;	FATFS\src\ff.c:2561: *br = 0;	/* Clear read byte counter */
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
	C$ff.c$2563$1_0$196 ==.
;	FATFS\src\ff.c:2563: res = validate(fp);							/* Check validity */
	mov	dptr,#_f_read_fp_65536_195
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
	C$ff.c$2564$1_0$196 ==.
;	FATFS\src\ff.c:2564: if (res != FR_OK) LEAVE_FF(fp->fs, res);
	mov	a,dpl
	mov	r4,a
	jz	00102$
	mov	dpl,r4
	ljmp	__sdcc_banked_ret
00102$:
	C$ff.c$2565$1_0$196 ==.
;	FATFS\src\ff.c:2565: if (fp->err)								/* Check error */
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
	C$ff.c$2566$1_0$196 ==.
;	FATFS\src\ff.c:2566: LEAVE_FF(fp->fs, (FRESULT)fp->err);
	mov	dpl,r4
	ljmp	__sdcc_banked_ret
00104$:
	C$ff.c$2567$1_0$196 ==.
;	FATFS\src\ff.c:2567: if (!(fp->flag & FA_READ)) 					/* Check access mode */
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
	C$ff.c$2568$1_0$196 ==.
;	FATFS\src\ff.c:2568: LEAVE_FF(fp->fs, FR_DENIED);
	mov	dpl,#0x07
	ljmp	__sdcc_banked_ret
00106$:
	C$ff.c$2569$1_0$196 ==.
;	FATFS\src\ff.c:2569: remain = fp->fsize - fp->fptr;
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
	C$ff.c$2570$1_0$196 ==.
;	FATFS\src\ff.c:2570: if (btr > remain) btr = (UINT)remain;		/* Truncate btr by remaining bytes */
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
	mov	dptr,#_f_read_fp_65536_195
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
	C$ff.c$2572$2_0$197 ==.
;	FATFS\src\ff.c:2572: for ( ;  btr;								/* Repeat until all data read */
	mov	dptr,#_f_read_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00217$
	ljmp	00136$
00217$:
	C$ff.c$2574$3_0$198 ==.
;	FATFS\src\ff.c:2574: if ((fp->fptr % SS(fp->fs)) == 0) {		/* On the sector boundary? */
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
	C$ff.c$2575$1_0$196 ==.
;	FATFS\src\ff.c:2575: csect = (BYTE)(fp->fptr / SS(fp->fs) & (fp->fs->csize - 1));	/* Sector offset in the cluster */
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
	C$ff.c$2576$1_0$196 ==.
;	FATFS\src\ff.c:2576: if (!csect) {						/* On the cluster boundary? */
	mov	_f_read_sloc6_1_0,a
	jz	00220$
	ljmp	00120$
00220$:
	C$ff.c$2577$5_0$200 ==.
;	FATFS\src\ff.c:2577: if (fp->fptr == 0) {			/* On the top of the file? */
	mov	a,_f_read_sloc4_1_0
	orl	a,(_f_read_sloc4_1_0 + 1)
	orl	a,(_f_read_sloc4_1_0 + 2)
	orl	a,(_f_read_sloc4_1_0 + 3)
	jnz	00113$
	C$ff.c$2578$1_0$196 ==.
;	FATFS\src\ff.c:2578: clst = fp->sclust;			/* Follow from the origin */
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
	mov	dptr,#_f_read_clst_65536_196
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
	C$ff.c$2581$1_0$196 ==.
;	FATFS\src\ff.c:2581: if (fp->cltbl)
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
	C$ff.c$2582$1_0$196 ==.
;	FATFS\src\ff.c:2582: clst = clmt_clust(fp, fp->fptr);	/* Get cluster# from the CLMT */
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
	mov	dptr,#_f_read_clst_65536_196
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
	C$ff.c$2585$1_0$196 ==.
;	FATFS\src\ff.c:2585: clst = get_fat(fp->fs, fp->clust);	/* Follow cluster chain on the FAT */
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
	mov	dptr,#_f_read_clst_65536_196
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
	C$ff.c$2638$1_0$196 ==.
;	FATFS\src\ff.c:2638: LEAVE_FF(fp->fs, FR_OK);
	C$ff.c$2585$5_0$200 ==.
;	FATFS\src\ff.c:2585: clst = get_fat(fp->fs, fp->clust);	/* Follow cluster chain on the FAT */
00114$:
	C$ff.c$2587$5_0$200 ==.
;	FATFS\src\ff.c:2587: if (clst < 2) ABORT(fp->fs, FR_INT_ERR);
	mov	dptr,#_f_read_clst_65536_196
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
	mov	dptr,#_f_read_fp_65536_195
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
	C$ff.c$2588$5_0$200 ==.
;	FATFS\src\ff.c:2588: if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
	mov	a,#0xff
	cjne	a,_f_read_sloc4_1_0,00118$
	cjne	a,(_f_read_sloc4_1_0 + 1),00118$
	cjne	a,(_f_read_sloc4_1_0 + 2),00118$
	cjne	a,(_f_read_sloc4_1_0 + 3),00118$
	mov	dptr,#_f_read_fp_65536_195
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
	C$ff.c$2589$5_0$200 ==.
;	FATFS\src\ff.c:2589: fp->clust = clst;				/* Update current cluster */
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
	C$ff.c$2591$1_0$196 ==.
;	FATFS\src\ff.c:2591: sect = clust2sect(fp->fs, fp->clust);	/* Get current sector */
	mov	dptr,#_f_read_fp_65536_195
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
	C$ff.c$2592$1_0$196 ==.
;	FATFS\src\ff.c:2592: if (!sect) ABORT(fp->fs, FR_INT_ERR);
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
	C$ff.c$2593$1_0$196 ==.
;	FATFS\src\ff.c:2593: sect += csect;
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
	C$ff.c$2594$4_0$199 ==.
;	FATFS\src\ff.c:2594: cc = btr / SS(fp->fs);				/* When remaining bytes >= sector size, */
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
	mov	dptr,#_f_read_cc_65536_196
	mov	a,_f_read_sloc5_1_0
	movx	@dptr,a
	mov	a,(_f_read_sloc5_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	C$ff.c$2595$1_0$196 ==.
;	FATFS\src\ff.c:2595: if (cc) {							/* Read maximum contiguous sectors directly */
	mov	a,_f_read_sloc5_1_0
	orl	a,(_f_read_sloc5_1_0 + 1)
	jnz	00227$
	ljmp	00128$
00227$:
	C$ff.c$2596$1_0$196 ==.
;	FATFS\src\ff.c:2596: if (csect + cc > fp->fs->csize)	/* Clip at cluster boundary */
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
	C$ff.c$2597$5_0$206 ==.
;	FATFS\src\ff.c:2597: cc = fp->fs->csize - csect;
	mov	r0,_f_read_sloc5_1_0
	mov	r4,#0x00
	mov	dptr,#_f_read_cc_65536_196
	mov	a,r0
	clr	c
	subb	a,_f_read_sloc6_1_0
	movx	@dptr,a
	mov	a,r4
	subb	a,(_f_read_sloc6_1_0 + 1)
	inc	dptr
	movx	@dptr,a
00124$:
	C$ff.c$2598$1_0$196 ==.
;	FATFS\src\ff.c:2598: if (disk_read(fp->fs->drv, rbuff, sect, cc))
	mov	dptr,#_f_read_fp_65536_195
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
	mov	dptr,#_f_read_rbuff_65536_196
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_read_cc_65536_196
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
	C$ff.c$2599$6_0$207 ==.
;	FATFS\src\ff.c:2599: ABORT(fp->fs, FR_DISK_ERR);
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
	C$ff.c$2609$5_0$206 ==.
;	FATFS\src\ff.c:2609: rcnt = SS(fp->fs) * cc;			/* Number of bytes transferred */
	mov	a,_f_read_sloc6_1_0
	add	a,_f_read_sloc6_1_0
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_f_read_rcnt_65536_196
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$ff.c$2610$5_0$206 ==.
;	FATFS\src\ff.c:2610: continue;
	ljmp	00135$
00128$:
	C$ff.c$2625$4_0$199 ==.
;	FATFS\src\ff.c:2625: fp->dsect = sect;
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
	C$ff.c$2627$3_0$198 ==.
;	FATFS\src\ff.c:2627: rcnt = SS(fp->fs) - ((UINT)fp->fptr % SS(fp->fs));	/* Get partial sector data from sector buffer */
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
	mov	dptr,#_f_read_rcnt_65536_196
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$ff.c$2628$3_0$198 ==.
;	FATFS\src\ff.c:2628: if (rcnt > btr) rcnt = btr;
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
	mov	dptr,#_f_read_rcnt_65536_196
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
00132$:
	C$ff.c$2630$1_0$196 ==.
;	FATFS\src\ff.c:2630: if (move_window(fp->fs, fp->dsect))		/* Move sector window */
	mov	dptr,#_f_read_fp_65536_195
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
	C$ff.c$2631$4_0$208 ==.
;	FATFS\src\ff.c:2631: ABORT(fp->fs, FR_DISK_ERR);
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
	C$ff.c$2632$1_0$196 ==.
;	FATFS\src\ff.c:2632: mem_cpy(rbuff, &fp->fs->win[fp->fptr % SS(fp->fs)], rcnt);	/* Pick partial sector */
	mov	dptr,#_f_read_rbuff_65536_196
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
	mov	dptr,#_f_read_rcnt_65536_196
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
	C$ff.c$2638$1_0$196 ==.
;	FATFS\src\ff.c:2638: LEAVE_FF(fp->fs, FR_OK);
	C$ff.c$2632$2_0$197 ==.
;	FATFS\src\ff.c:2632: mem_cpy(rbuff, &fp->fs->win[fp->fptr % SS(fp->fs)], rcnt);	/* Pick partial sector */
00135$:
	C$ff.c$2573$2_0$197 ==.
;	FATFS\src\ff.c:2573: rbuff += rcnt, fp->fptr += rcnt, *br += rcnt, btr -= rcnt) {
	mov	dptr,#_f_read_rcnt_65536_196
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_f_read_rbuff_65536_196
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_f_read_rbuff_65536_196
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
	C$ff.c$2638$1_0$196 ==.
;	FATFS\src\ff.c:2638: LEAVE_FF(fp->fs, FR_OK);
	mov	dpl,#0x00
	C$ff.c$2639$1_0$196 ==.
;	FATFS\src\ff.c:2639: }
	C$ff.c$2639$1_0$196 ==.
	XG$f_read$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_close'
;------------------------------------------------------------
;fp                        Allocated with name '_f_close_fp_65536_209'
;res                       Allocated with name '_f_close_res_65536_210'
;------------------------------------------------------------
	G$f_close$0$0 ==.
	C$ff.c$2819$1_0$210 ==.
;	FATFS\src\ff.c:2819: FRESULT f_close (
;	-----------------------------------------
;	 function f_close
;	-----------------------------------------
_f_close:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_close_fp_65536_209
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$ff.c$2831$2_0$211 ==.
;	FATFS\src\ff.c:2831: res = validate(fp);				/* Lock volume */
	mov	dptr,#_f_close_fp_65536_209
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
	C$ff.c$2832$2_0$211 ==.
;	FATFS\src\ff.c:2832: if (res == FR_OK) {
	mov	a,r4
	jnz	00102$
	C$ff.c$2840$3_0$212 ==.
;	FATFS\src\ff.c:2840: fp->fs = 0;				/* Invalidate file object */
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
	C$ff.c$2846$1_0$210 ==.
;	FATFS\src\ff.c:2846: return res;
	mov	dpl,r4
	C$ff.c$2847$1_0$210 ==.
;	FATFS\src\ff.c:2847: }
	C$ff.c$2847$1_0$210 ==.
	XG$f_close$0$0 ==.
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
;fp                        Allocated with name '_f_lseek_fp_65536_213'
;res                       Allocated with name '_f_lseek_res_65536_214'
;cl                        Allocated with name '_f_lseek_cl_131072_215'
;pcl                       Allocated with name '_f_lseek_pcl_131072_215'
;ncl                       Allocated with name '_f_lseek_ncl_131072_215'
;tcl                       Allocated with name '_f_lseek_tcl_131072_215'
;dsc                       Allocated with name '_f_lseek_dsc_131072_215'
;tlen                      Allocated with name '_f_lseek_tlen_131072_215'
;ulen                      Allocated with name '_f_lseek_ulen_131072_215'
;tbl                       Allocated with name '_f_lseek_tbl_131072_215'
;clst                      Allocated with name '_f_lseek_clst_131072_227'
;bcs                       Allocated with name '_f_lseek_bcs_131072_227'
;nsect                     Allocated with name '_f_lseek_nsect_131072_227'
;ifptr                     Allocated with name '_f_lseek_ifptr_131072_227'
;------------------------------------------------------------
	G$f_lseek$0$0 ==.
	C$ff.c$2991$1_0$214 ==.
;	FATFS\src\ff.c:2991: FRESULT f_lseek (
;	-----------------------------------------
;	 function f_lseek
;	-----------------------------------------
_f_lseek:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_lseek_fp_65536_213
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$ff.c$2999$1_0$214 ==.
;	FATFS\src\ff.c:2999: res = validate(fp);					/* Check validity of the object */
	mov	dptr,#_f_lseek_fp_65536_213
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
	mov	dptr,#_f_lseek_res_65536_214
	mov	a,r4
	movx	@dptr,a
	C$ff.c$3000$1_0$214 ==.
;	FATFS\src\ff.c:3000: if (res != FR_OK) LEAVE_FF(fp->fs, res);
	mov	a,r4
	jz	00102$
	mov	dpl,r4
	ljmp	__sdcc_banked_ret
00102$:
	C$ff.c$3001$1_0$214 ==.
;	FATFS\src\ff.c:3001: if (fp->err)						/* Check error */
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
	C$ff.c$3002$1_0$214 ==.
;	FATFS\src\ff.c:3002: LEAVE_FF(fp->fs, (FRESULT)fp->err);
	mov	dpl,r4
	ljmp	__sdcc_banked_ret
00104$:
	C$ff.c$3005$1_0$214 ==.
;	FATFS\src\ff.c:3005: if (fp->cltbl) {	/* Fast seek */
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
	C$ff.c$3008$2_0$215 ==.
;	FATFS\src\ff.c:3008: if (ofs == CREATE_LINKMAP) {	/* Create CLMT */
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
	mov	a,#0xff
	cjne	a,_f_lseek_sloc0_1_0,00282$
	cjne	a,(_f_lseek_sloc0_1_0 + 1),00282$
	cjne	a,(_f_lseek_sloc0_1_0 + 2),00282$
	cjne	a,(_f_lseek_sloc0_1_0 + 3),00282$
	sjmp	00283$
00282$:
	ljmp	00132$
00283$:
	C$ff.c$3010$3_0$216 ==.
;	FATFS\src\ff.c:3010: tlen = *tbl++; ulen = 2;	/* Given table size and required table size */
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
	mov	dptr,#_f_lseek_tbl_131072_215
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
	mov	dptr,#_f_lseek_ulen_131072_215
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$ff.c$3011$3_0$216 ==.
;	FATFS\src\ff.c:3011: cl = fp->sclust;			/* Top of the chain */
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
	mov	dptr,#_f_lseek_cl_131072_215
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
	C$ff.c$3012$3_0$216 ==.
;	FATFS\src\ff.c:3012: if (cl) {
	mov	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	jnz	00284$
	ljmp	00118$
00284$:
	C$ff.c$3013$6_0$219 ==.
;	FATFS\src\ff.c:3013: do {
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
	C$ff.c$3015$1_0$214 ==.
;	FATFS\src\ff.c:3015: tcl = cl; ncl = 0; ulen += 2;	/* Top, length and used items */
	mov	dptr,#_f_lseek_cl_131072_215
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
	mov	dptr,#_f_lseek_tcl_131072_215
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
	mov	dptr,#_f_lseek_ulen_131072_215
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
	C$ff.c$3016$1_0$214 ==.
;	FATFS\src\ff.c:3016: do {
	clr	a
	mov	_f_lseek_sloc4_1_0,a
	mov	(_f_lseek_sloc4_1_0 + 1),a
	mov	(_f_lseek_sloc4_1_0 + 2),a
	mov	(_f_lseek_sloc4_1_0 + 3),a
	C$ff.c$3139$1_0$214 ==.
;	FATFS\src\ff.c:3139: LEAVE_FF(fp->fs, res);
	C$ff.c$3016$5_0$218 ==.
;	FATFS\src\ff.c:3016: do {
00109$:
	C$ff.c$3017$6_0$219 ==.
;	FATFS\src\ff.c:3017: pcl = cl; ncl++;
	mov	dptr,#_f_lseek_cl_131072_215
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
	mov	dptr,#_f_lseek_pcl_131072_215
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
	C$ff.c$3018$6_0$219 ==.
;	FATFS\src\ff.c:3018: cl = get_fat(fp->fs, cl);
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
	mov	dptr,#_f_lseek_cl_131072_215
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
	C$ff.c$3019$6_0$219 ==.
;	FATFS\src\ff.c:3019: if (cl <= 1) ABORT(fp->fs, FR_INT_ERR);
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
	C$ff.c$3020$6_0$219 ==.
;	FATFS\src\ff.c:3020: if (cl == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
	mov	a,#0xff
	cjne	a,_f_lseek_sloc6_1_0,00110$
	cjne	a,(_f_lseek_sloc6_1_0 + 1),00110$
	cjne	a,(_f_lseek_sloc6_1_0 + 2),00110$
	cjne	a,(_f_lseek_sloc6_1_0 + 3),00110$
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
	C$ff.c$3021$5_0$218 ==.
;	FATFS\src\ff.c:3021: } while (cl == pcl + 1);
	mov	dptr,#_f_lseek_pcl_131072_215
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
	C$ff.c$3022$5_0$218 ==.
;	FATFS\src\ff.c:3022: if (ulen <= tlen) {		/* Store the length and top of the fragment */
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
	C$ff.c$3023$6_0$222 ==.
;	FATFS\src\ff.c:3023: *tbl++ = ncl; *tbl++ = tcl;
	mov	dptr,#_f_lseek_tbl_131072_215
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
	mov	dptr,#_f_lseek_tbl_131072_215
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
	mov	dptr,#_f_lseek_tbl_131072_215
	movx	a,@dptr
	mov	_f_lseek_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc4_1_0 + 2),a
	mov	dptr,#_f_lseek_tcl_131072_215
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
	mov	dptr,#_f_lseek_tbl_131072_215
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
	C$ff.c$3025$4_0$217 ==.
;	FATFS\src\ff.c:3025: } while (cl < fp->fs->n_fatent);	/* Repeat until end of chain */
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
	C$ff.c$3027$3_0$216 ==.
;	FATFS\src\ff.c:3027: *fp->cltbl = ulen;	/* Number of items used */
	mov	dptr,#_f_lseek_fp_65536_213
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
	mov	dptr,#_f_lseek_ulen_131072_215
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
	C$ff.c$3028$3_0$216 ==.
;	FATFS\src\ff.c:3028: if (ulen <= tlen)
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
	C$ff.c$3029$3_0$216 ==.
;	FATFS\src\ff.c:3029: *tbl = 0;		/* Terminate table */
	mov	dptr,#_f_lseek_tbl_131072_215
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
	C$ff.c$3031$3_0$216 ==.
;	FATFS\src\ff.c:3031: res = FR_NOT_ENOUGH_CORE;	/* Given table size is smaller than required */
	mov	dptr,#_f_lseek_res_65536_214
	mov	a,#0x11
	movx	@dptr,a
	ljmp	00161$
00132$:
	C$ff.c$3034$3_0$223 ==.
;	FATFS\src\ff.c:3034: if (ofs > fp->fsize)		/* Clip offset at the file size */
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
	C$ff.c$3035$3_0$223 ==.
;	FATFS\src\ff.c:3035: ofs = fp->fsize;
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
	C$ff.c$3036$3_0$223 ==.
;	FATFS\src\ff.c:3036: fp->fptr = ofs;				/* Set file pointer */
	mov	dptr,#_f_lseek_fp_65536_213
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
	C$ff.c$3037$3_0$223 ==.
;	FATFS\src\ff.c:3037: if (ofs) {
	mov	a,_f_lseek_sloc4_1_0
	orl	a,(_f_lseek_sloc4_1_0 + 1)
	orl	a,(_f_lseek_sloc4_1_0 + 2)
	orl	a,(_f_lseek_sloc4_1_0 + 3)
	jnz	00295$
	ljmp	00161$
00295$:
	C$ff.c$3038$4_0$224 ==.
;	FATFS\src\ff.c:3038: fp->clust = clmt_clust(fp, ofs - 1);
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
	C$ff.c$3039$4_0$224 ==.
;	FATFS\src\ff.c:3039: dsc = clust2sect(fp->fs, fp->clust);
	mov	dptr,#_f_lseek_fp_65536_213
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
	C$ff.c$3040$4_0$224 ==.
;	FATFS\src\ff.c:3040: if (!dsc) ABORT(fp->fs, FR_INT_ERR);
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
	C$ff.c$3041$4_0$224 ==.
;	FATFS\src\ff.c:3041: dsc += (ofs - 1) / SS(fp->fs) & (fp->fs->csize - 1);
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
	C$ff.c$3042$4_0$224 ==.
;	FATFS\src\ff.c:3042: if (fp->fptr % SS(fp->fs) && dsc != fp->dsect) {	/* Refill sector cache if needed */
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
	C$ff.c$3054$5_0$226 ==.
;	FATFS\src\ff.c:3054: fp->dsect = dsc;
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
	C$ff.c$3065$2_0$227 ==.
;	FATFS\src\ff.c:3065: if (ofs > fp->fsize					/* In read-only mode, clip offset with the file size */
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
	C$ff.c$3069$2_0$227 ==.
;	FATFS\src\ff.c:3069: ) ofs = fp->fsize;
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
	C$ff.c$3071$2_0$227 ==.
;	FATFS\src\ff.c:3071: ifptr = fp->fptr;
	mov	dptr,#_f_lseek_fp_65536_213
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
	C$ff.c$3072$2_0$227 ==.
;	FATFS\src\ff.c:3072: fp->fptr = nsect = 0;
	mov	dptr,#_f_lseek_nsect_131072_227
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
	C$ff.c$3073$2_0$227 ==.
;	FATFS\src\ff.c:3073: if (ofs) {
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
	C$ff.c$3074$1_0$214 ==.
;	FATFS\src\ff.c:3074: bcs = (DWORD)fp->fs->csize * SS(fp->fs);	/* Cluster size (byte) */
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
	C$ff.c$3075$1_0$214 ==.
;	FATFS\src\ff.c:3075: if (ifptr > 0 &&
	mov	a,_f_lseek_sloc6_1_0
	orl	a,(_f_lseek_sloc6_1_0 + 1)
	orl	a,(_f_lseek_sloc6_1_0 + 2)
	orl	a,(_f_lseek_sloc6_1_0 + 3)
	jnz	00302$
	ljmp	00137$
00302$:
	C$ff.c$3076$1_0$214 ==.
;	FATFS\src\ff.c:3076: (ofs - 1) / bcs >= (ifptr - 1) / bcs) {	/* When seek to same or following cluster, */
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
	C$ff.c$3077$4_0$229 ==.
;	FATFS\src\ff.c:3077: fp->fptr = (ifptr - 1) & ~(bcs - 1);	/* start from the current cluster */
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
	C$ff.c$3078$4_0$229 ==.
;	FATFS\src\ff.c:3078: ofs -= fp->fptr;
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
	C$ff.c$3079$4_0$229 ==.
;	FATFS\src\ff.c:3079: clst = fp->clust;
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
	mov	dptr,#_f_lseek_clst_131072_227
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
	C$ff.c$3081$4_0$230 ==.
;	FATFS\src\ff.c:3081: clst = fp->sclust;						/* start from the first cluster */
	mov	dptr,#_f_lseek_fp_65536_213
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
	mov	dptr,#_f_lseek_clst_131072_227
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
	C$ff.c$3090$4_0$230 ==.
;	FATFS\src\ff.c:3090: fp->clust = clst;
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
	C$ff.c$3092$3_0$228 ==.
;	FATFS\src\ff.c:3092: if (clst != 0) {
	mov	dptr,#_f_lseek_clst_131072_227
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
	C$ff.c$3093$4_0$231 ==.
;	FATFS\src\ff.c:3093: while (ofs > bcs) {						/* Cluster following loop */
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
	C$ff.c$3102$1_0$214 ==.
;	FATFS\src\ff.c:3102: clst = get_fat(fp->fs, clst);	/* Follow cluster chain if not in write mode */
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_f_lseek_fp_65536_213
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
	mov	dptr,#_f_lseek_clst_131072_227
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
	mov	dptr,#_f_lseek_clst_131072_227
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
	C$ff.c$3103$5_0$232 ==.
;	FATFS\src\ff.c:3103: if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
	mov	a,#0xff
	cjne	a,_f_lseek_sloc6_1_0,00307$
	cjne	a,(_f_lseek_sloc6_1_0 + 1),00307$
	cjne	a,(_f_lseek_sloc6_1_0 + 2),00307$
	cjne	a,(_f_lseek_sloc6_1_0 + 3),00307$
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
	C$ff.c$3104$5_0$232 ==.
;	FATFS\src\ff.c:3104: if (clst <= 1 || clst >= fp->fs->n_fatent) ABORT(fp->fs, FR_INT_ERR);
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
	mov	dptr,#_f_lseek_fp_65536_213
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
	C$ff.c$3105$5_0$232 ==.
;	FATFS\src\ff.c:3105: fp->clust = clst;
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
	C$ff.c$3106$5_0$232 ==.
;	FATFS\src\ff.c:3106: fp->fptr += bcs;
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
	C$ff.c$3107$5_0$232 ==.
;	FATFS\src\ff.c:3107: ofs -= bcs;
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
	C$ff.c$3109$4_0$231 ==.
;	FATFS\src\ff.c:3109: fp->fptr += ofs;
	mov	dptr,#_f_lseek_fp_65536_213
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
	C$ff.c$3110$4_0$231 ==.
;	FATFS\src\ff.c:3110: if (ofs % SS(fp->fs)) {
	mov	a,r4
	jnz	00311$
	mov	a,r5
	jb	acc.0,00311$
	ljmp	00155$
00311$:
	C$ff.c$3111$1_0$214 ==.
;	FATFS\src\ff.c:3111: nsect = clust2sect(fp->fs, clst);	/* Current sector */
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
	mov	dptr,#_f_lseek_clst_131072_227
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
	C$ff.c$3112$1_0$214 ==.
;	FATFS\src\ff.c:3112: if (!nsect) ABORT(fp->fs, FR_INT_ERR);
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
	C$ff.c$3113$5_0$235 ==.
;	FATFS\src\ff.c:3113: nsect += ofs / SS(fp->fs);
	mov	a,r7
	mov	r7,#0x00
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r5
	rrc	a
	mov	r4,a
	mov	dptr,#_f_lseek_nsect_131072_227
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
	C$ff.c$3117$2_0$227 ==.
;	FATFS\src\ff.c:3117: if (fp->fptr % SS(fp->fs) && nsect != fp->dsect) {	/* Fill sector cache if needed */
	mov	dptr,#_f_lseek_fp_65536_213
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
	mov	dptr,#_f_lseek_nsect_131072_227
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
	C$ff.c$3129$3_0$237 ==.
;	FATFS\src\ff.c:3129: fp->dsect = nsect;
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
	C$ff.c$3139$1_0$214 ==.
;	FATFS\src\ff.c:3139: LEAVE_FF(fp->fs, res);
	mov	dptr,#_f_lseek_res_65536_214
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	C$ff.c$3140$1_0$214 ==.
;	FATFS\src\ff.c:3140: }
	C$ff.c$3140$1_0$214 ==.
	XG$f_lseek$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_opendir'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_opendir_sloc0_1_0'
;path                      Allocated with name '_f_opendir_PARM_2'
;dp                        Allocated with name '_f_opendir_dp_65536_238'
;res                       Allocated with name '_f_opendir_res_65536_239'
;fs                        Allocated with name '_f_opendir_fs_65536_239'
;sfn                       Allocated with name '_f_opendir_sfn_65536_239'
;lfn                       Allocated with name '_f_opendir_lfn_65536_239'
;------------------------------------------------------------
	G$f_opendir$0$0 ==.
	C$ff.c$3149$1_0$239 ==.
;	FATFS\src\ff.c:3149: FRESULT f_opendir (
;	-----------------------------------------
;	 function f_opendir
;	-----------------------------------------
_f_opendir:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_opendir_dp_65536_238
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$ff.c$3159$1_0$239 ==.
;	FATFS\src\ff.c:3159: if (!dp) return FR_INVALID_OBJECT;
	mov	dptr,#_f_opendir_dp_65536_238
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
	C$ff.c$3162$1_0$239 ==.
;	FATFS\src\ff.c:3162: res = find_volume(&fs, &path, 0);
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
	mov	dptr,#_f_opendir_fs_65536_239
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
	mov	dptr,#_f_opendir_res_65536_239
	mov	a,r4
	movx	@dptr,a
	C$ff.c$3163$1_0$239 ==.
;	FATFS\src\ff.c:3163: if (res == FR_OK) {
	mov	a,r4
	jz	00159$
	ljmp	00117$
00159$:
	C$ff.c$3164$2_0$240 ==.
;	FATFS\src\ff.c:3164: dp->fs = fs;
	mov	dptr,#_f_opendir_fs_65536_239
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
	C$ff.c$3165$3_0$241 ==.
;	FATFS\src\ff.c:3165: INIT_BUF(*dp);
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
	mov	a,#_f_opendir_sfn_65536_239
	lcall	__gptrput
	inc	dptr
	mov	a,#(_f_opendir_sfn_65536_239 >> 8)
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	C$ff.c$3166$2_0$240 ==.
;	FATFS\src\ff.c:3166: res = follow_path(dp, path);			/* Follow the path to the directory */
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
	mov	dptr,#_f_opendir_res_65536_239
	mov	a,r7
	movx	@dptr,a
	C$ff.c$3167$2_0$240 ==.
;	FATFS\src\ff.c:3167: FREE_BUF();
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
	C$ff.c$3168$2_0$240 ==.
;	FATFS\src\ff.c:3168: if (res == FR_OK) {						/* Follow completed */
	mov	a,r7
	jz	00161$
	ljmp	00113$
00161$:
	C$ff.c$3169$3_0$242 ==.
;	FATFS\src\ff.c:3169: if (dp->dir) {						/* It is not the origin directory itself */
	mov	dptr,#_f_opendir_dp_65536_238
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
	C$ff.c$3170$1_0$239 ==.
;	FATFS\src\ff.c:3170: if (dp->dir[DIR_Attr] & AM_DIR)	/* The object is a sub directory */
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
	C$ff.c$3171$4_0$243 ==.
;	FATFS\src\ff.c:3171: dp->sclust = ld_clust(fs, dp->dir);
	mov	a,#0x07
	add	a,r5
	mov	_f_opendir_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_opendir_sloc0_1_0 + 1),a
	mov	(_f_opendir_sloc0_1_0 + 2),r7
	mov	dptr,#_f_opendir_fs_65536_239
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
	C$ff.c$3173$4_0$243 ==.
;	FATFS\src\ff.c:3173: res = FR_NO_PATH;
	mov	dptr,#_f_opendir_res_65536_239
	mov	a,#0x05
	movx	@dptr,a
00109$:
	C$ff.c$3175$3_0$242 ==.
;	FATFS\src\ff.c:3175: if (res == FR_OK) {
	mov	dptr,#_f_opendir_res_65536_239
	movx	a,@dptr
	jnz	00113$
	C$ff.c$3176$4_0$244 ==.
;	FATFS\src\ff.c:3176: dp->id = fs->id;
	mov	dptr,#_f_opendir_dp_65536_238
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
	mov	dptr,#_f_opendir_fs_65536_239
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
	C$ff.c$3177$4_0$244 ==.
;	FATFS\src\ff.c:3177: res = dir_sdi(dp, 0);			/* Rewind directory */
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
	mov	dptr,#_f_opendir_res_65536_239
	movx	@dptr,a
00113$:
	C$ff.c$3191$2_0$240 ==.
;	FATFS\src\ff.c:3191: if (res == FR_NO_FILE) res = FR_NO_PATH;
	mov	dptr,#_f_opendir_res_65536_239
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00117$
	mov	dptr,#_f_opendir_res_65536_239
	mov	a,#0x05
	movx	@dptr,a
00117$:
	C$ff.c$3193$1_0$239 ==.
;	FATFS\src\ff.c:3193: if (res != FR_OK) dp->fs = 0;		/* Invalidate the directory object if function faild */
	mov	dptr,#_f_opendir_res_65536_239
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00119$
	mov	dptr,#_f_opendir_dp_65536_238
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
	C$ff.c$3195$1_0$239 ==.
;	FATFS\src\ff.c:3195: LEAVE_FF(fs, res);
	mov	dpl,r7
	C$ff.c$3196$1_0$239 ==.
;	FATFS\src\ff.c:3196: }
	C$ff.c$3196$1_0$239 ==.
	XG$f_opendir$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_closedir'
;------------------------------------------------------------
;dp                        Allocated with name '_f_closedir_dp_65536_245'
;res                       Allocated with name '_f_closedir_res_65536_246'
;------------------------------------------------------------
	G$f_closedir$0$0 ==.
	C$ff.c$3205$1_0$246 ==.
;	FATFS\src\ff.c:3205: FRESULT f_closedir (
;	-----------------------------------------
;	 function f_closedir
;	-----------------------------------------
_f_closedir:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_closedir_dp_65536_245
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$ff.c$3212$1_0$246 ==.
;	FATFS\src\ff.c:3212: res = validate(dp);
	mov	dptr,#_f_closedir_dp_65536_245
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
	C$ff.c$3213$1_0$246 ==.
;	FATFS\src\ff.c:3213: if (res == FR_OK) {
	mov	a,r4
	jnz	00102$
	C$ff.c$3222$2_0$247 ==.
;	FATFS\src\ff.c:3222: dp->fs = 0;				/* Invalidate directory object */
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
	C$ff.c$3227$1_0$246 ==.
;	FATFS\src\ff.c:3227: return res;
	mov	dpl,r4
	C$ff.c$3228$1_0$246 ==.
;	FATFS\src\ff.c:3228: }
	C$ff.c$3228$1_0$246 ==.
	XG$f_closedir$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_readdir'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_readdir_sloc0_1_0'
;fno                       Allocated with name '_f_readdir_PARM_2'
;dp                        Allocated with name '_f_readdir_dp_65536_248'
;res                       Allocated with name '_f_readdir_res_65536_249'
;sfn                       Allocated with name '_f_readdir_sfn_65536_249'
;lfn                       Allocated with name '_f_readdir_lfn_65536_249'
;------------------------------------------------------------
	G$f_readdir$0$0 ==.
	C$ff.c$3237$1_0$249 ==.
;	FATFS\src\ff.c:3237: FRESULT f_readdir (
;	-----------------------------------------
;	 function f_readdir
;	-----------------------------------------
_f_readdir:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_readdir_dp_65536_248
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$ff.c$3245$1_0$249 ==.
;	FATFS\src\ff.c:3245: res = validate(dp);						/* Check validity of the object */
	mov	dptr,#_f_readdir_dp_65536_248
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
	mov	dptr,#_f_readdir_res_65536_249
	mov	a,r4
	movx	@dptr,a
	C$ff.c$3246$1_0$249 ==.
;	FATFS\src\ff.c:3246: if (res == FR_OK) 
	mov	a,r4
	jz	00140$
	ljmp	00113$
00140$:
	C$ff.c$3248$2_0$250 ==.
;	FATFS\src\ff.c:3248: if (!fno) 
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
	C$ff.c$3250$3_0$251 ==.
;	FATFS\src\ff.c:3250: res = dir_sdi(dp, 0);			/* Rewind the directory object */
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
	mov	dptr,#_f_readdir_res_65536_249
	movx	@dptr,a
	ljmp	00113$
00110$:
	C$ff.c$3254$1_0$249 ==.
;	FATFS\src\ff.c:3254: INIT_BUF(*dp);
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
	mov	a,#_f_readdir_sfn_65536_249
	lcall	__gptrput
	inc	dptr
	mov	a,#(_f_readdir_sfn_65536_249 >> 8)
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	C$ff.c$3255$3_0$252 ==.
;	FATFS\src\ff.c:3255: res = dir_read(dp, 0);			/* Read an item */
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
	mov	dptr,#_f_readdir_res_65536_249
	mov	a,r7
	movx	@dptr,a
	C$ff.c$3256$3_0$252 ==.
;	FATFS\src\ff.c:3256: if (res == FR_NO_FILE) 			/* Reached end of directory */
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
	C$ff.c$3258$4_0$254 ==.
;	FATFS\src\ff.c:3258: dp->sect = 0;
	mov	dptr,#_f_readdir_dp_65536_248
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
	C$ff.c$3259$4_0$254 ==.
;	FATFS\src\ff.c:3259: res = FR_OK;
	mov	dptr,#_f_readdir_res_65536_249
	movx	@dptr,a
00104$:
	C$ff.c$3261$3_0$252 ==.
;	FATFS\src\ff.c:3261: if (res == FR_OK) 
	mov	dptr,#_f_readdir_res_65536_249
	movx	a,@dptr
	jnz	00108$
	C$ff.c$3263$4_0$255 ==.
;	FATFS\src\ff.c:3263: get_fileinfo(dp, fno);		/* Get the object information */
	mov	dptr,#_f_readdir_dp_65536_248
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
	C$ff.c$3264$4_0$255 ==.
;	FATFS\src\ff.c:3264: res = dir_next(dp, 0);		/* Increment index for next */
	mov	dptr,#_f_readdir_dp_65536_248
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
	mov	dptr,#_f_readdir_res_65536_249
	mov	a,r7
	movx	@dptr,a
	C$ff.c$3265$4_0$255 ==.
;	FATFS\src\ff.c:3265: if(res == FR_NO_FILE)
	cjne	r7,#0x04,00108$
	C$ff.c$3267$5_0$256 ==.
;	FATFS\src\ff.c:3267: dp->sect = 0;
	mov	dptr,#_f_readdir_dp_65536_248
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
	C$ff.c$3268$5_0$256 ==.
;	FATFS\src\ff.c:3268: res = FR_OK;
	mov	dptr,#_f_readdir_res_65536_249
	movx	@dptr,a
00108$:
	C$ff.c$3271$3_0$252 ==.
;	FATFS\src\ff.c:3271: FREE_BUF();
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
	C$ff.c$3275$1_0$249 ==.
;	FATFS\src\ff.c:3275: LEAVE_FF(dp->fs, res);
	mov	dptr,#_f_readdir_res_65536_249
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	C$ff.c$3276$1_0$249 ==.
;	FATFS\src\ff.c:3276: }
	C$ff.c$3276$1_0$249 ==.
	XG$f_readdir$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_stat'
;------------------------------------------------------------
;fno                       Allocated with name '_f_stat_PARM_2'
;path                      Allocated with name '_f_stat_path_65536_257'
;res                       Allocated with name '_f_stat_res_65536_258'
;dj                        Allocated with name '_f_stat_dj_65536_258'
;sfn                       Allocated with name '_f_stat_sfn_65536_258'
;lfn                       Allocated with name '_f_stat_lfn_65536_258'
;------------------------------------------------------------
	G$f_stat$0$0 ==.
	C$ff.c$3285$1_0$258 ==.
;	FATFS\src\ff.c:3285: FRESULT f_stat (
;	-----------------------------------------
;	 function f_stat
;	-----------------------------------------
_f_stat:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_stat_path_65536_257
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$ff.c$3296$1_0$258 ==.
;	FATFS\src\ff.c:3296: res = find_volume(&dj.fs, &path, 0);
	mov	dptr,#_find_volume_PARM_2
	mov	a,#_f_stat_path_65536_257
	movx	@dptr,a
	mov	a,#(_f_stat_path_65536_257 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_find_volume_PARM_3
	movx	@dptr,a
	mov	dptr,#_f_stat_dj_65536_258
	mov	b,#0x00
	mov	r0,#_find_volume
	mov	r1,#(_find_volume >> 8)
	mov	r2,#(_find_volume >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	dptr,#_f_stat_res_65536_258
	mov	a,r7
	movx	@dptr,a
	C$ff.c$3297$1_0$258 ==.
;	FATFS\src\ff.c:3297: if (res == FR_OK) {
	mov	a,r7
	jz	00134$
	ljmp	00111$
00134$:
	C$ff.c$3298$3_0$260 ==.
;	FATFS\src\ff.c:3298: INIT_BUF(dj);
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
	mov	dptr,#(_f_stat_dj_65536_258 + 0x0019)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_f_stat_dj_65536_258 + 0x0016)
	mov	a,#_f_stat_sfn_65536_258
	movx	@dptr,a
	mov	a,#(_f_stat_sfn_65536_258 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$ff.c$3299$2_0$259 ==.
;	FATFS\src\ff.c:3299: res = follow_path(&dj, path);	/* Follow the file path */
	mov	dptr,#_f_stat_path_65536_257
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
	mov	dptr,#_f_stat_dj_65536_258
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
	mov	dptr,#_f_stat_res_65536_258
	mov	a,r4
	movx	@dptr,a
	C$ff.c$3300$2_0$259 ==.
;	FATFS\src\ff.c:3300: if (res == FR_OK) {				/* Follow completed */
	mov	a,r4
	jnz	00109$
	C$ff.c$3301$3_0$261 ==.
;	FATFS\src\ff.c:3301: if (dj.dir) {		/* Found an object */
	mov	dptr,#(_f_stat_dj_65536_258 + 0x0013)
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
	C$ff.c$3302$4_0$262 ==.
;	FATFS\src\ff.c:3302: if (fno) get_fileinfo(&dj, fno);
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
	mov	dptr,#_f_stat_dj_65536_258
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
	C$ff.c$3304$4_0$263 ==.
;	FATFS\src\ff.c:3304: res = FR_INVALID_NAME;
	mov	dptr,#_f_stat_res_65536_258
	mov	a,#0x06
	movx	@dptr,a
00109$:
	C$ff.c$3307$2_0$259 ==.
;	FATFS\src\ff.c:3307: FREE_BUF();
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_ff_memfree
	mov	r1,#(_ff_memfree >> 8)
	mov	r2,#(_ff_memfree >> 16)
	lcall	__sdcc_banked_call
00111$:
	C$ff.c$3310$1_0$258 ==.
;	FATFS\src\ff.c:3310: LEAVE_FF(dj.fs, res);
	mov	dptr,#_f_stat_res_65536_258
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	C$ff.c$3311$1_0$258 ==.
;	FATFS\src\ff.c:3311: }
	C$ff.c$3311$1_0$258 ==.
	XG$f_stat$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_getlabel'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_getlabel_sloc0_1_0'
;sloc1                     Allocated with name '_f_getlabel_sloc1_1_0'
;label                     Allocated with name '_f_getlabel_PARM_2'
;sn                        Allocated with name '_f_getlabel_PARM_3'
;path                      Allocated with name '_f_getlabel_path_65536_264'
;res                       Allocated with name '_f_getlabel_res_65536_265'
;dj                        Allocated with name '_f_getlabel_dj_65536_265'
;i                         Allocated with name '_f_getlabel_i_65536_265'
;j                         Allocated with name '_f_getlabel_j_65536_265'
;------------------------------------------------------------
	G$f_getlabel$0$0 ==.
	C$ff.c$3756$1_0$265 ==.
;	FATFS\src\ff.c:3756: FRESULT f_getlabel (
;	-----------------------------------------
;	 function f_getlabel
;	-----------------------------------------
_f_getlabel:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_getlabel_path_65536_264
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$ff.c$3768$1_0$265 ==.
;	FATFS\src\ff.c:3768: res = find_volume(&dj.fs, &path, 0);
	mov	dptr,#_find_volume_PARM_2
	mov	a,#_f_getlabel_path_65536_264
	movx	@dptr,a
	mov	a,#(_f_getlabel_path_65536_264 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_find_volume_PARM_3
	movx	@dptr,a
	mov	dptr,#_f_getlabel_dj_65536_265
	mov	b,#0x00
	mov	r0,#_find_volume
	mov	r1,#(_find_volume >> 8)
	mov	r2,#(_find_volume >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	dptr,#_f_getlabel_res_65536_265
	mov	a,r7
	movx	@dptr,a
	C$ff.c$3771$1_0$265 ==.
;	FATFS\src\ff.c:3771: if (res == FR_OK && label) {
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
	C$ff.c$3772$2_0$266 ==.
;	FATFS\src\ff.c:3772: dj.sclust = 0;					/* Open root directory */
	mov	dptr,#(_f_getlabel_dj_65536_265 + 0x0007)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$ff.c$3773$2_0$266 ==.
;	FATFS\src\ff.c:3773: res = dir_sdi(&dj, 0);
	mov	dptr,#_dir_sdi_PARM_2
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_getlabel_dj_65536_265
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
	mov	dptr,#_f_getlabel_res_65536_265
	mov	a,r4
	movx	@dptr,a
	C$ff.c$3774$2_0$266 ==.
;	FATFS\src\ff.c:3774: if (res == FR_OK) {
	mov	a,r4
	jz	00171$
	ljmp	00113$
00171$:
	C$ff.c$3775$3_0$267 ==.
;	FATFS\src\ff.c:3775: res = dir_read(&dj, 1);		/* Get an entry with AM_VOL */
	mov	dptr,#_dir_read_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_getlabel_dj_65536_265
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
	mov	dptr,#_f_getlabel_res_65536_265
	mov	a,r4
	movx	@dptr,a
	C$ff.c$3776$3_0$267 ==.
;	FATFS\src\ff.c:3776: if (res == FR_OK) {			/* A volume label is exist */
	mov	a,r4
	jz	00172$
	ljmp	00107$
00172$:
	C$ff.c$3787$1_0$265 ==.
;	FATFS\src\ff.c:3787: mem_cpy(label, dj.dir, 11);
	push	ar4
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
	mov	_f_getlabel_sloc0_1_0,r1
	mov	(_f_getlabel_sloc0_1_0 + 1),r2
	mov	(_f_getlabel_sloc0_1_0 + 2),r3
	mov	dptr,#(_f_getlabel_dj_65536_265 + 0x0013)
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
	C$ff.c$3790$1_0$265 ==.
;	FATFS\src\ff.c:3790: do {
	mov	_f_getlabel_sloc0_1_0,#0x0b
	mov	(_f_getlabel_sloc0_1_0 + 1),#0x00
	C$ff.c$3811$1_0$265 ==.
;	FATFS\src\ff.c:3811: LEAVE_FF(dj.fs, res);
	pop	ar4
	C$ff.c$3790$4_0$268 ==.
;	FATFS\src\ff.c:3790: do {
00103$:
	C$ff.c$3791$5_0$269 ==.
;	FATFS\src\ff.c:3791: label[j] = 0;
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
	C$ff.c$3792$5_0$269 ==.
;	FATFS\src\ff.c:3792: if (!j) break;
	mov	a,_f_getlabel_sloc0_1_0
	orl	a,(_f_getlabel_sloc0_1_0 + 1)
	jz	00107$
	C$ff.c$3793$4_0$268 ==.
;	FATFS\src\ff.c:3793: } while (label[--j] == ' ');
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
	C$ff.c$3795$3_0$267 ==.
;	FATFS\src\ff.c:3795: if (res == FR_NO_FILE) {	/* No label, return nul string */
	cjne	r4,#0x04,00113$
	C$ff.c$3796$4_0$270 ==.
;	FATFS\src\ff.c:3796: label[0] = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	C$ff.c$3797$4_0$270 ==.
;	FATFS\src\ff.c:3797: res = FR_OK;
	mov	dptr,#_f_getlabel_res_65536_265
	movx	@dptr,a
00113$:
	C$ff.c$3803$1_0$265 ==.
;	FATFS\src\ff.c:3803: if (res == FR_OK && sn) {
	mov	dptr,#_f_getlabel_res_65536_265
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
	C$ff.c$3804$1_0$265 ==.
;	FATFS\src\ff.c:3804: res = move_window(dj.fs, dj.fs->volbase);
	mov	dptr,#_f_getlabel_dj_65536_265
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
	mov	dptr,#_f_getlabel_res_65536_265
	mov	a,r7
	movx	@dptr,a
	C$ff.c$3805$1_0$265 ==.
;	FATFS\src\ff.c:3805: if (res == FR_OK) {
	mov	a,r7
	jz	00180$
	ljmp	00118$
00180$:
	C$ff.c$3806$3_0$272 ==.
;	FATFS\src\ff.c:3806: i = dj.fs->fs_type == FS_FAT32 ? BS_VolID32 : BS_VolID;
	mov	dptr,#_f_getlabel_dj_65536_265
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
	C$ff.c$3807$3_0$272 ==.
;	FATFS\src\ff.c:3807: *sn = LD_DWORD(&dj.fs->win[i]);
	mov	dptr,#_f_getlabel_dj_65536_265
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
	C$ff.c$3811$1_0$265 ==.
;	FATFS\src\ff.c:3811: LEAVE_FF(dj.fs, res);
	mov	dptr,#_f_getlabel_res_65536_265
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	C$ff.c$3812$1_0$265 ==.
;	FATFS\src\ff.c:3812: }
	C$ff.c$3812$1_0$265 ==.
	XG$f_getlabel$0$0 ==.
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_gets'
;------------------------------------------------------------
;len                       Allocated with name '_f_gets_PARM_2'
;fp                        Allocated with name '_f_gets_PARM_3'
;buff                      Allocated with name '_f_gets_buff_65536_273'
;n                         Allocated with name '_f_gets_n_65536_274'
;c                         Allocated with name '_f_gets_c_65536_274'
;p                         Allocated with name '_f_gets_p_65536_274'
;s                         Allocated with name '_f_gets_s_65536_274'
;rc                        Allocated with name '_f_gets_rc_65536_274'
;------------------------------------------------------------
	G$f_gets$0$0 ==.
	C$ff.c$4297$1_0$274 ==.
;	FATFS\src\ff.c:4297: TCHAR* f_gets (
;	-----------------------------------------
;	 function f_gets
;	-----------------------------------------
_f_gets:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_gets_buff_65536_273
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$ff.c$4304$2_0$274 ==.
;	FATFS\src\ff.c:4304: TCHAR c, *p = buff;
	mov	dptr,#_f_gets_buff_65536_273
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	C$ff.c$4309$1_0$274 ==.
;	FATFS\src\ff.c:4309: while (n < len - 1) {	/* Read characters until buffer gets filled */
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
	C$ff.c$4354$1_0$274 ==.
;	FATFS\src\ff.c:4354: f_read(fp, s, 1, &rc);
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
	mov	a,#_f_gets_s_65536_274
	movx	@dptr,a
	mov	a,#(_f_gets_s_65536_274 >> 8)
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
	mov	a,#_f_gets_rc_65536_274
	movx	@dptr,a
	mov	a,#(_f_gets_rc_65536_274 >> 8)
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
	C$ff.c$4355$2_0$275 ==.
;	FATFS\src\ff.c:4355: if (rc != 1) break;
	mov	dptr,#_f_gets_rc_65536_274
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
	C$ff.c$4356$2_0$275 ==.
;	FATFS\src\ff.c:4356: c = s[0];
	mov	dptr,#_f_gets_s_65536_274
	movx	a,@dptr
	C$ff.c$4359$2_0$275 ==.
;	FATFS\src\ff.c:4359: *p++ = c;
	mov	r0,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	C$ff.c$4360$2_0$275 ==.
;	FATFS\src\ff.c:4360: n++;
	inc	r1
	cjne	r1,#0x00,00136$
	inc	r2
00136$:
	C$ff.c$4361$2_0$275 ==.
;	FATFS\src\ff.c:4361: if (c == '\n') break;		/* Break on EOL */
	cjne	r0,#0x0a,00137$
	sjmp	00138$
00137$:
	ljmp	00108$
00138$:
00110$:
	C$ff.c$4363$1_0$274 ==.
;	FATFS\src\ff.c:4363: *p = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	C$ff.c$4364$1_0$274 ==.
;	FATFS\src\ff.c:4364: return n ? buff : 0;			/* When no data read (eof or error), return with error. */
	mov	a,r1
	orl	a,r2
	jz	00113$
	mov	dptr,#_f_gets_buff_65536_273
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
	C$ff.c$4365$1_0$274 ==.
;	FATFS\src\ff.c:4365: }
	C$ff.c$4365$1_0$274 ==.
	XG$f_gets$0$0 ==.
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fff$ExCvt$0_0$0 == .
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
Fff$LfnOfs$0_0$0 == .
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
Fff$__str_0$0_0$0 == .
___str_0:
	.db 0x22
	.ascii "*:<>?|"
	.db 0x7f
	.db 0x00
Fff$__str_1$0_0$0 == .
___str_1:
	.ascii "+,;=[]"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
