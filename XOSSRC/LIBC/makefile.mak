CX86 = /3S
#CX86 = /5S

FPMODE = /fpi87
#FPMODE = /fp3

.M86.OBJ:
	XMAC $(@DPN)

.C.OBJ:
	WCC386 /D1 /MS /I=XOSINC:\WCX\ /NM=$(@DPN) $(@DPN)

.cpp.obj:
	WPP386 /D1 /I=XOSINC:\WCX\ /ZQ $(CX86) /J /W3 $(FPMODE) /S \
	/NM=$(@DPN) $(@DPN)

ALL:	LIBC01.OBJ _MCPP.OBJ _MAINALT.OBJ _MAINMIN.OBJ
	@ECHO All done

CLEAN:
	-DELETE *.BAK
	-DELETE *.DMP
	-DELETE *.ERR
	-DELETE *.EXE
	-DELETE *.LKE
	-DELETE *.LST
	-DELETE *.MAP
	-DELETE *.OBJ
	-DELETE *.RST
	-DELETE *.RUN
	-DELETE *.SYM
	-DELETE *.TMP

# Following removed: DATE_PRS.OBJ

LIBC01.OBJ:	ADD2SDT.OBJ AXTOI.OBJ DDT2STR.OBJ DEFSEGS.OBJ \
		ERRMSG.OBJ FEMSG.OBJ \
		FEMSG2.OBJ FEXIST.OBJ FGTFINFO.OBJ FISCTRM.OBJ GETCH.OBJ \
		GETCHE.OBJ GETFARG.OBJ GETFINFO.OBJ GETSPACE.OBJ \
		GTRQNAME.OBJ HEAPSORT.OBJ ISCTRM.OBJ KERDEF.OBJ LOG.OBJ \
		LONGADD.OBJ LONGLONGADD.OBJ LONGDIV.OBJ LONGADDDIV.OBJ \
		NULLFUNC.OBJ PROCARG.OBJ PROGARG.OBJ \
# PROGASST.OBJ
		ROTATE.OBJ SBRK.OBJ SDT2STR.OBJ SDTADD.OBJ SDTSUB.OBJ \
		SDTCMP.OBJ SETVECTR.OBJ \
		STRICMP.OBJ STRLOWER.OBJ STRMOV.OBJ STRNCHR.OBJ STRNICMP.OBJ \
		STRNMOV.OBJ STRUPR.OBJ STRNUPR.OBJ SVCDEF.OBJ XSTRNCMP.OBJ \
		ABS.OBJ ATEXIT.OBJ ATOI.OBJ DIV.OBJ EXIT.OBJ FCLOSE.OBJ \
		FEOF.OBJ FERROR.OBJ FFLUSH.OBJ \
		FGETSTR.OBJ FGETS.OBJ FGETSL.OBJ FGETC.OBJ \
		FOPEN.OBJ FDOPEN.OBJ FPUTC.OBJ FPUTS.OBJ FREAD.OBJ \
		FSEEK.OBJ FTELL.OBJ \
		FWRITE.OBJ GETCHAR.OBJ GETENV.OBJ \
		io.obj \
		ISALNUM.OBJ ISALPHA.OBJ \
		ISCNTRL.OBJ ISDIGIT.OBJ ISGRAPH.OBJ ISLOWER.OBJ ISPRINT.OBJ \
		ISPUNCT.OBJ ISSPACE.OBJ ISUPPER.OBJ ISXDIGIT.OBJ MALLOC.OBJ \
		MEMCHR.OBJ MEMSCAN.OBJ MEMCMP.OBJ MEMICMP.OBJ MEMCPY.OBJ \
		MEMCPYLONG.OBJ MEMMOVE.OBJ MEMSET.OBJ \
		PERROR.OBJ PRINTF.OBJ PUTCHAR.OBJ PUTS.OBJ \
		QSORT.OBJ REMOVE.OBJ RENAME.OBJ \
		setjmp_w.obj SETJMP.OBJ \
		STRCAT.OBJ \
		STRCHR.OBJ STRCMP.OBJ STRCPY.OBJ STRCSPN.OBJ STRERROR.OBJ \
		STRLEN.OBJ STRNLEN.OBJ STRNCAT.OBJ STRNCMP.OBJ STRNCPY.OBJ \
		STRNCPYN.OBJ STRPBRK.OBJ \
		STRRCHR.OBJ STRSPN.OBJ STRSTR.OBJ STRTOK.OBJ STRTOL.OBJ \
		STRTOUL.OBJ SYSTEM.OBJ TMPNAM.OBJ TOLOWER.OBJ TOUPPER.OBJ \
		UNGETC.OBJ $$DUMPBLK.OBJ $$NEXTBLK.OBJ _ASSERT.OBJ \
		_CHRTBL.OBJ _ERRNO.OBJ _FMODE.OBJ _FSETUP.OBJ _IOB.OBJ \
		ECVT.OBJ TIMECVT.OBJ W_TIME.OBJ W_POW.OBJ W_FLOAT.OBJ \
		W_CPP_C.OBJ W_CPP_M.OBJ Z_DIR.OBJ _MAIN.OBJ MATH\__STOS.OBJ
	XLIB LIBC01/CREATE/LIST=LIBC01 \
		_MAIN PROCARG PROGARG FEMSG FEMSG2 ERRMSG GETSPACE \
		GETENV ABS DIV ATOI AXTOI LOG LONGADD LONGLONGADD LONGDIV \
		LONGADDDIV ROTATE ADD2SDT SDT2STR DDT2STR SDTADD SDTSUB \
		SDTCMP EXIT ATEXIT setjmp_w SETJMP \
		SYSTEM PERROR QSORT PRINTF FERROR FFLUSH FOPEN \
		FDOPEN PUTS FPUTS FREAD GETCHAR FSEEK \
		FTELL REMOVE RENAME TMPNAM UNGETC FWRITE PUTCHAR FCLOSE FEOF \
		FGETS FGETSL FGETSTR FGETC FPUTC FEXIST FGTFINFO FISCTRM \
		GETCH GETCHE GETFARG GETFINFO ISCTRM _FSETUP _FMODE \
		io \
		GTRQNAME SETVECTR STRTOL STRTOUL STRICMP STRLOWER STRMOV \
		STRNCHR STRNICMP STRNMOV STRUPR STRNUPR XSTRNCMP STRCAT \
		STRCHR STRCMP STRCPY STRCSPN STRERROR STRLEN STRNLEN STRNCAT \
		STRNCMP STRNCPY STRNCPYN STRPBRK STRRCHR STRSPN STRSTR \
		MATH\__STOS \
		STRTOK ISALNUM ISALPHA \
		ISCNTRL ISDIGIT ISGRAPH ISLOWER ISPRINT ISPUNCT ISSPACE \
		ISUPPER ISXDIGIT TOLOWER TOUPPER MALLOC HEAPSORT SBRK MEMCHR \
		MEMSCAN MEMCMP MEMICMP MEMCPY MEMCPYLONG MEMMOVE MEMSET _IOB \
		$$NEXTBLK ECVT \
		TIMECVT W_TIME W_POW W_FLOAT W_CPP_C W_CPP_M \
		Z_DIR \
		$$DUMPBLK KERDEF SVCDEF _ASSERT _CHRTBL _ERRNO NULLFUNC
	COPY /OVER LIBC01.OBJ XOSLIB:\XOS\LIBC01.OBJ

ADD2SDT.OBJ:	ADD2SDT.M86
AXTOI.OBJ:	AXTOI.M86
DATE_PRS.OBJ:	DATE_PRS.C
DDT2STR.OBJ:	DDT2STR.M86
DEFSEGS.OBJ:	DEFSEGS.M86
	XMAC DEFSEGS
	COPY /OVER DEFSEGS.OBJ XOSLIB:\XOS\DEFSEGS.OBJ

ERRMSG.OBJ:	ERRMSG.M86
FEMSG.OBJ:	FEMSG.M86
FEMSG2.OBJ:	FEMSG2.C
FEXIST.OBJ:	FEXIST.M86
FGTFINFO.OBJ:	FGTFINFO.M86
FISCTRM.OBJ:	FISCTRM.M86
GETCH.OBJ:	GETCH.M86
GETCHE.OBJ:	GETCHE.M86
GETFARG.OBJ:	GETFARG.M86
GETFINFO.OBJ:	GETFINFO.M86
GETSPACE.OBJ:	GETSPACE.M86
GTRQNAME.OBJ:	GTRQNAME.M86
HEAPSORT.OBJ:	HEAPSORT.C
io.obj:		io.c
ISCTRM.OBJ:	ISCTRM.M86
KERDEF.OBJ:	KERDEF.M86
LOG.OBJ:	LOG.C
LONGADD.OBJ:	LONGADD.M86
LONGLONGADD.OBJ: LONGLONGADD.M86
LONGDIV.OBJ:	LONGDIV.M86
LONGADDDIV.OBJ:	LONGADDDIV.M86
NULLFUNC.OBJ:	NULLFUNC.M86
PROCARG.OBJ:	PROCARG.M86
PROGARG.OBJ:	PROGARG.M86
PROGASST.OBJ:	PROGASST.C
ROTATE.OBJ:	ROTATE.M86
SBRK.OBJ:	SBRK.M86
SDT2STR.OBJ:	SDT2STR.M86
SDTADD.OBJ:	SDTADD.M86
SDTSUB.OBJ:	SDTSUB.M86
SDTCMP.OBJ:	SDTCMP.M86
SETVECTR.OBJ:	SETVECTR.M86
STRICMP.OBJ:	STRICMP.M86
STRLOWER.OBJ:	STRLOWER.M86
STRMOV.OBJ:	STRMOV.M86
STRNCHR.OBJ:	STRNCHR.M86
STRNICMP.OBJ:	STRNICMP.M86
STRNMOV.OBJ:	STRNMOV.M86
STRUPR.OBJ:	STRUPR.M86
STRNUPR.OBJ:	STRNUPR.M86
SVCDEF.OBJ:	SVCDEF.M86
XSTRNCMP.OBJ:	XSTRNCMP.M86


_MAINALT.OBJ:	_MAINALT.M86
	XMAC _MAINALT
	COPY /OVER _MAINALT.OBJ XOSLIB:\XOS\_MAINALT.OBJ

_MAINMIN.OBJ:	_MAINMIN.M86
	XMAC _MAINMIN
	COPY /OVER _MAINMIN.OBJ XOSLIB:\XOS\_MAINMIN.OBJ

_MCPP.OBJ:	_MCPP.M86
	XMAC _MCPP
	COPY /OVER _MCPP.OBJ XOSLIB:\XOS\_MCPP.OBJ

ABS.OBJ:        ABS.M86
ATEXIT.OBJ:     ATEXIT.M86
ATOI.OBJ:       ATOI.M86
DIV.OBJ:        DIV.M86
ecvt.obj:	ecvt.c
	WCC386 /3S /fpi87 /D1 /MS /I=XOSINC:\WCX\ /NM=$(@DPN) $(@DPN)

EXIT.OBJ:       EXIT.M86
FCLOSE.OBJ:     FCLOSE.M86
FEOF.OBJ:       FEOF.M86
FERROR.OBJ:     FERROR.M86
FFLUSH.OBJ:     FFLUSH.M86
FGETS.OBJ:      FGETS.M86
FGETSL.OBJ:	FGETSL.M86
FGETSTR.OBJ:	FGETSTR.M86
FGETC.OBJ:      FGETC.M86
FOPEN.OBJ:      FOPEN.M86
FDOPEN.OBJ:	FDOPEN.M86
FPUTC.OBJ:      FPUTC.M86
FPUTS.OBJ:      FPUTS.M86
FREAD.OBJ:      FREAD.M86
FSEEK.OBJ:      FSEEK.M86
FTELL.OBJ:      FTELL.M86
FWRITE.OBJ:     FWRITE.M86
GETCHAR.OBJ:	GETCHAR.M86
GETENV.OBJ:     GETENV.M86
ISALNUM.OBJ:    ISALNUM.M86
ISALPHA.OBJ:    ISALPHA.M86
ISCNTRL.OBJ:    ISCNTRL.M86
ISDIGIT.OBJ:    ISDIGIT.M86
ISGRAPH.OBJ:    ISGRAPH.M86
ISLOWER.OBJ:    ISLOWER.M86
ISPRINT.OBJ:    ISPRINT.M86
ISPUNCT.OBJ:    ISPUNCT.M86
ISSPACE.OBJ:    ISSPACE.M86
ISUPPER.OBJ:    ISUPPER.M86
ISXDIGIT.OBJ:   ISXDIGIT.M86
MALLOC.OBJ:     MALLOC.M86
MEMCHR.OBJ:     MEMCHR.M86
MEMSCAN.OBJ:	MEMSCAN.M86
MEMCMP.OBJ:     MEMCMP.M86
MEMICMP.OBJ:	MEMICMP.M86
MEMCPY.OBJ:     MEMCPY.M86
MEMCPYLONG.OBJ:	MEMCPYLONG.M86
MEMMOVE.OBJ:    MEMMOVE.M86
MEMSET.OBJ:     MEMSET.M86
PERROR.OBJ:     PERROR.M86
PRINTF.OBJ:     PRINTF.M86

PRINTFX.OBJ:    PRINTFX.M86
	XMAC $(@DPN)
	COPY /OVER PRINTFX.OBJ XOSLIB:\XOS\PRINTFX.OBJ


PUTCHAR.OBJ:	PUTCHAR.M86
PUTS.OBJ:       PUTS.M86
QSORT.OBJ:	QSORT.C
REMOVE.OBJ:     REMOVE.M86
RENAME.OBJ:     RENAME.M86
SETJMP.OBJ:     SETJMP.M86
setjmp_w.obj:	setjmp_w.m86
STRCAT.OBJ:     STRCAT.M86
STRCHR.OBJ:     STRCHR.M86
STRCMP.OBJ:     STRCMP.M86
STRCPY.OBJ:     STRCPY.M86
STRCSPN.OBJ:    STRCSPN.M86
STRERROR.OBJ:   STRERROR.M86
STRLEN.OBJ:     STRLEN.M86
STRNLEN.OBJ:	STRNLEN.M86
STRNCAT.OBJ:    STRNCAT.M86
STRNCMP.OBJ:    STRNCMP.M86
STRNCPY.OBJ:    STRNCPY.M86
STRNCPYN.OBJ:	STRNCPYN.M86
STRPBRK.OBJ:    STRPBRK.M86
STRRCHR.OBJ:    STRRCHR.M86
STRSPN.OBJ:     STRSPN.M86
STRSTR.OBJ:     STRSTR.M86
STRTOK.OBJ:     STRTOK.M86
STRTOL.OBJ:     STRTOL.M86
STRTOUL.OBJ:    STRTOUL.M86
SYSTEM.OBJ:     SYSTEM.M86
TMPNAM.OBJ:     TMPNAM.M86
TOLOWER.OBJ:    TOLOWER.M86
TOUPPER.OBJ:    TOUPPER.M86
UNGETC.OBJ:     UNGETC.M86
$$DUMPBLK.OBJ:  $$DUMPBLK.M86
$$NEXTBLK.OBJ:  $$NEXTBLK.M86
_ASSERT.OBJ:    _ASSERT.M86
_CHRTBL.OBJ:    _CHRTBL.M86
_ERRNO.OBJ:     _ERRNO.M86
_FSETUP.OBJ:    _FSETUP.M86
_FMODE.OBJ:     _FMODE.M86
_IOB.OBJ:       _IOB.M86
_MAIN.OBJ:      _MAIN.M86

w_cpp_c.obj:	w_cpp_c.cpp
w_cpp_m.obj:	w_cpp_m.m86
w_pow.obj:	w_pow.cpp
w_time.obj:	w_time.cpp
w_float.obj:	w_float.m86
timecvt.obj:	timecvt.cpp
z_dir.obj:	z_dir.c

test.run:	test.obj
	XLINK \
		XOSLIB:\XOS\_MCPP \
		test \
		XOSLIB:\XOS\LIBX01 \
		XOSLIB:\XOS\LIBC01 \
		XOSLIB:\XOS\LIBC01 \
		/OUTPUT=test /MAP=test /SYM=test
#	COPY /OVER test.RUN NEWCMD:test.RUN
	@echo Done test.run

test.obj:	test.c libc01.obj
