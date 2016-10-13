PRO test_pro 
	
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
	MODIFYCT, 1, 'visit_accent', red, green, blue, FILE=tblFile	

END
