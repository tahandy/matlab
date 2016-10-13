PRO create_visit_table
;!PATH = EXPAND_PATH('<IDL_DEFAULT>:+/Users/timhandy/code/workspace/matlab/ColorTables/colortables/IDL')
tblDefault = '/tmp/visit.tbl'
tblRead = ''
READ,tblRead,PROMPT='Enter output table name (default '+tblDefault+'): '
tblFile = tblDefault
IF(strlen(tblRead) GT 0) THEN BEGIN
tblFile = tblRead
ENDIF
tableExists = FILE_TEST(tblFile)
IF(tableExists) THEN BEGIN
doOverwriteStr = ''
READ,doOverwriteStr,PROMPT='Table file ('+tblFile+') exists! Overwrite? (y/n): '
IF(strcmp(doOverwriteStr,'n',1,/FOLD_CASE)) THEN BEGIN
PRINT,'Aborting.'
RETURN
ENDIF ELSE BEGIN
PRINT,'Overwriting '+tblFile
ENDELSE
ENDIF
GET_LUN,IUNIT
OPENW,IUNIT, tblFile, /BLOCK
WRITEU, IUNIT, 1b
WRITEU, IUNIT, BYTARR(256)
WRITEU, IUNIT, BYTARR(256)
WRITEU, IUNIT, BYTARR(256)
tmp = bytarr(32)+32B
tmp[0:strlen('Empty')-1]=byte('Empty')
WRITEU, IUNIT, tmp
FREE_LUN, IUNIT
visit_accent,red,green,blue
MODIFYCT, 1, 'accent', red, green, blue, FILE=tblFile
visit_blues,red,green,blue
MODIFYCT, 2, 'blues', red, green, blue, FILE=tblFile
visit_brbg,red,green,blue
MODIFYCT, 3, 'brbg', red, green, blue, FILE=tblFile
visit_bugn,red,green,blue
MODIFYCT, 4, 'bugn', red, green, blue, FILE=tblFile
visit_bupu,red,green,blue
MODIFYCT, 5, 'bupu', red, green, blue, FILE=tblFile
visit_dark2,red,green,blue
MODIFYCT, 6, 'dark2', red, green, blue, FILE=tblFile
visit_gnbu,red,green,blue
MODIFYCT, 7, 'gnbu', red, green, blue, FILE=tblFile
visit_greens,red,green,blue
MODIFYCT, 8, 'greens', red, green, blue, FILE=tblFile
visit_greys,red,green,blue
MODIFYCT, 9, 'greys', red, green, blue, FILE=tblFile
visit_orrd,red,green,blue
MODIFYCT, 10, 'orrd', red, green, blue, FILE=tblFile
visit_oranges,red,green,blue
MODIFYCT, 11, 'oranges', red, green, blue, FILE=tblFile
visit_prgn,red,green,blue
MODIFYCT, 12, 'prgn', red, green, blue, FILE=tblFile
visit_paired,red,green,blue
MODIFYCT, 13, 'paired', red, green, blue, FILE=tblFile
visit_pastel1,red,green,blue
MODIFYCT, 14, 'pastel1', red, green, blue, FILE=tblFile
visit_pastel2,red,green,blue
MODIFYCT, 15, 'pastel2', red, green, blue, FILE=tblFile
visit_piyg,red,green,blue
MODIFYCT, 16, 'piyg', red, green, blue, FILE=tblFile
visit_pubu,red,green,blue
MODIFYCT, 17, 'pubu', red, green, blue, FILE=tblFile
visit_pubugn,red,green,blue
MODIFYCT, 18, 'pubugn', red, green, blue, FILE=tblFile
visit_puor,red,green,blue
MODIFYCT, 19, 'puor', red, green, blue, FILE=tblFile
visit_purd,red,green,blue
MODIFYCT, 20, 'purd', red, green, blue, FILE=tblFile
visit_purples,red,green,blue
MODIFYCT, 21, 'purples', red, green, blue, FILE=tblFile
visit_rdbu,red,green,blue
MODIFYCT, 22, 'rdbu', red, green, blue, FILE=tblFile
visit_rdgy,red,green,blue
MODIFYCT, 23, 'rdgy', red, green, blue, FILE=tblFile
visit_rdpu,red,green,blue
MODIFYCT, 24, 'rdpu', red, green, blue, FILE=tblFile
visit_rdylbu,red,green,blue
MODIFYCT, 25, 'rdylbu', red, green, blue, FILE=tblFile
visit_rdylgn,red,green,blue
MODIFYCT, 26, 'rdylgn', red, green, blue, FILE=tblFile
visit_reds,red,green,blue
MODIFYCT, 27, 'reds', red, green, blue, FILE=tblFile
visit_set1,red,green,blue
MODIFYCT, 28, 'set1', red, green, blue, FILE=tblFile
visit_set2,red,green,blue
MODIFYCT, 29, 'set2', red, green, blue, FILE=tblFile
visit_set3,red,green,blue
MODIFYCT, 30, 'set3', red, green, blue, FILE=tblFile
visit_spectral,red,green,blue
MODIFYCT, 31, 'spectral', red, green, blue, FILE=tblFile
visit_ylgn,red,green,blue
MODIFYCT, 32, 'ylgn', red, green, blue, FILE=tblFile
visit_ylgnbu,red,green,blue
MODIFYCT, 33, 'ylgnbu', red, green, blue, FILE=tblFile
visit_ylorbr,red,green,blue
MODIFYCT, 34, 'ylorbr', red, green, blue, FILE=tblFile
visit_ylorrd,red,green,blue
MODIFYCT, 35, 'ylorrd', red, green, blue, FILE=tblFile
visit_black_blue_red_white,red,green,blue
MODIFYCT, 36, 'black_blue_red_white', red, green, blue, FILE=tblFile
visit_black_blue_yellow_red_white,red,green,blue
MODIFYCT, 37, 'black_blue_yellow_red_white', red, green, blue, FILE=tblFile
visit_black_blue_yellow_red_white2,red,green,blue
MODIFYCT, 38, 'black_blue_yellow_red_white2', red, green, blue, FILE=tblFile
visit_black_yellow_red_black,red,green,blue
MODIFYCT, 39, 'black_yellow_red_black', red, green, blue, FILE=tblFile
visit_black_yellow_red_white,red,green,blue
MODIFYCT, 40, 'black_yellow_red_white', red, green, blue, FILE=tblFile
visit_black_yellow_red,red,green,blue
MODIFYCT, 41, 'black_yellow_red', red, green, blue, FILE=tblFile
visit_blue_purple_black_saturated,red,green,blue
MODIFYCT, 42, 'blue_purple_black_saturated', red, green, blue, FILE=tblFile
visit_blue_purple_saturated,red,green,blue
MODIFYCT, 43, 'blue_purple_saturated', red, green, blue, FILE=tblFile
visit_blue_purple_saturated,red,green,blue
MODIFYCT, 44, 'blue_purple_saturated', red, green, blue, FILE=tblFile
visit_blue_red,red,green,blue
MODIFYCT, 45, 'blue_red', red, green, blue, FILE=tblFile
visit_blue_and_red,red,green,blue
MODIFYCT, 46, 'blue_and_red', red, green, blue, FILE=tblFile
visit_bluehot,red,green,blue
MODIFYCT, 47, 'bluehot', red, green, blue, FILE=tblFile
visit_caleblack,red,green,blue
MODIFYCT, 48, 'caleblack', red, green, blue, FILE=tblFile
visit_calewhite,red,green,blue
MODIFYCT, 49, 'calewhite', red, green, blue, FILE=tblFile
visit_contoured,red,green,blue
MODIFYCT, 50, 'contoured', red, green, blue, FILE=tblFile
visit_difference,red,green,blue
MODIFYCT, 51, 'difference', red, green, blue, FILE=tblFile
visit_edgy_bluered,red,green,blue
MODIFYCT, 52, 'edgy_bluered', red, green, blue, FILE=tblFile
visit_edgy_bw,red,green,blue
MODIFYCT, 53, 'edgy_bw', red, green, blue, FILE=tblFile
visit_edgy_redblue,red,green,blue
MODIFYCT, 54, 'edgy_redblue', red, green, blue, FILE=tblFile
visit_fuity_dark_white,red,green,blue
MODIFYCT, 55, 'fuity_dark_white', red, green, blue, FILE=tblFile
visit_fuity_white,red,green,blue
MODIFYCT, 56, 'fuity_white', red, green, blue, FILE=tblFile
visit_gray,red,green,blue
MODIFYCT, 57, 'gray', red, green, blue, FILE=tblFile
visit_hot,red,green,blue
MODIFYCT, 58, 'hot', red, green, blue, FILE=tblFile
visit_hot_and_cold,red,green,blue
MODIFYCT, 59, 'hot_and_cold', red, green, blue, FILE=tblFile
visit_hot_desaturated,red,green,blue
MODIFYCT, 60, 'hot_desaturated', red, green, blue, FILE=tblFile
visit_hot_desaturated_blacklow,red,green,blue
MODIFYCT, 61, 'hot_desaturated_blacklow', red, green, blue, FILE=tblFile
visit_hot_desaturated_pakmor,red,green,blue
MODIFYCT, 62, 'hot_desaturated_pakmor', red, green, blue, FILE=tblFile
visit_hot_pakmor,red,green,blue
MODIFYCT, 63, 'hot_pakmor', red, green, blue, FILE=tblFile
visit_orangehot_bot,red,green,blue
MODIFYCT, 64, 'orangehot_bot', red, green, blue, FILE=tblFile
visit_orangehot,red,green,blue
MODIFYCT, 65, 'orangehot', red, green, blue, FILE=tblFile
visit_purple_blue_saturated,red,green,blue
MODIFYCT, 66, 'purple_blue_saturated', red, green, blue, FILE=tblFile
visit_rainbow,red,green,blue
MODIFYCT, 67, 'rainbow', red, green, blue, FILE=tblFile
visit_rainbow_desaturated_pakmor,red,green,blue
MODIFYCT, 68, 'rainbow_desaturated_pakmor', red, green, blue, FILE=tblFile
visit_rainbow_pakmor,red,green,blue
MODIFYCT, 69, 'rainbow_pakmor', red, green, blue, FILE=tblFile
visit_red_blue_white,red,green,blue
MODIFYCT, 70, 'red_blue_white', red, green, blue, FILE=tblFile
visit_red_blue,red,green,blue
MODIFYCT, 71, 'red_blue', red, green, blue, FILE=tblFile
visit_red_gold_blue,red,green,blue
MODIFYCT, 72, 'red_gold_blue', red, green, blue, FILE=tblFile
visit_red_orange_white,red,green,blue
MODIFYCT, 73, 'red_orange_white', red, green, blue, FILE=tblFile
visit_red_white_blue,red,green,blue
MODIFYCT, 74, 'red_white_blue', red, green, blue, FILE=tblFile
visit_red_and_blue,red,green,blue
MODIFYCT, 75, 'red_and_blue', red, green, blue, FILE=tblFile
visit_test,red,green,blue
MODIFYCT, 76, 'test', red, green, blue, FILE=tblFile
visit_tricolor,red,green,blue
MODIFYCT, 77, 'tricolor', red, green, blue, FILE=tblFile
visit_white_blue_red_white,red,green,blue
MODIFYCT, 78, 'white_blue_red_white', red, green, blue, FILE=tblFile
visit_white_blue_red,red,green,blue
MODIFYCT, 79, 'white_blue_red', red, green, blue, FILE=tblFile
visit_xray_black_white_black,red,green,blue
MODIFYCT, 80, 'xray_black_white_black', red, green, blue, FILE=tblFile
visit_xray,red,green,blue
MODIFYCT, 81, 'xray', red, green, blue, FILE=tblFile
END
