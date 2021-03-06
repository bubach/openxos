.M86.OBJ:
	XMAC $(@DPN)

.C.OBJ:
	WCC386 /D1 /I=XOSINC:\WCX\ /ZQ /3S /J /W3 /WE /FP3 /S \
		/NM=$(@DPN) $(@DPN)

ALL:	ADDUNIT.RUN ATTRIB.RUN BINCOM.RUN CLSCHAR.RUN COLOR.RUN CONFIG.RUN \
	COPY.RUN CRSHSAVE.RUN DAYTIME.RUN DEFAULT.RUN DELETE.RUN DEVCHAR.RUN \
	DIR.RUN DISPLAY.RUN DOSCOM.RUN FIXDRIVE.RUN RMVDRIVE.RUN DOSLPT.RUN \
	DOSQUIRK.RUN ECHO.RUN KILLPROC.RUN LABEL.RUN LKELOAD.RUN LOGICAL.RUN \
	MKDIR.RUN MORE.RUN PATH.RUN PROMPT.RUN RENAME.RUN RMDIR.RUN SET.RUN \
	SETENV.RUN SYMBIONT.RUN SYSCHAR.RUN SYSDIS.RUN TYPE.RUN TIMEZONE.RUN \
	DUMP.RUN UNDUMP.RUN DISMOUNT.RUN DISKINST.RUN CONINST.RUN
	@ECHO Finished.

CLEAN:
	-DELETE *.BAK
	-DELETE *.COM
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

ADDUNIT.RUN:	ADDUNIT.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS ADDUNIT \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=ADDUNIT /MAP=ADDUNIT /SYM=ADDUNIT
	COPY /OVER ADDUNIT.RUN NEWCMD:ADDUNIT.RUN

ADDUNIT.OBJ:	ADDUNIT.C

ATTRIB.RUN:	ATTRIB.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS ATTRIB \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=ATTRIB /MAP=ATTRIB /SYM=ATTRIB
	COPY /OVER ATTRIB.RUN NEWCMD:ATTRIB.RUN

ATTRIB.OBJ:	ATTRIB.C

BINCOM.RUN:	BINCOM.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS BINCOM \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=BINCOM /MAP=BINCOM /SYM=BINCOM
	COPY /OVER BINCOM.RUN NEWCMD:BINCOM.RUN

BINCOM.OBJ:	BINCOM.C

CLSCHAR.RUN:	CLSCHAR.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS CLSCHAR \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=CLSCHAR /MAP=CLSCHAR /SYM=CLSCHAR
	COPY /OVER CLSCHAR.RUN NEWCMD:CLSCHAR.RUN

CLSCHAR.OBJ:	DEVCHAR.C
	WCC386 /D1 /I=XOSINC:\WCX\ /ZQ /3S /J /W3 /WE /FP3 /S \
		/NM=CLSCHAR /FO=CLSCHAR.OBJ /DCLSCHAR DEVCHAR

COLOR.RUN:	COLOR.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS COLOR \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=COLOR /MAP=COLOR /SYM=COLOR
	COPY /OVER COLOR.RUN NEWCMD:COLOR.RUN

COLOR.OBJ:	COLOR.C

CONFIG.RUN:	CONFIG.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS CONFIG \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=CONFIG /MAP=CONFIG /SYM=CONFIG
	COPY /OVER CONFIG.RUN NEWCMD:CONFIG.RUN

CONFIG.OBJ:	CONFIG.C

COPY.RUN:	COPY.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS COPY \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=COPY /MAP=COPY /SYM=COPY
	COPY /OVER COPY.RUN MOVE.RUN
	COPY /OVER COPY.SYM MOVE.SYM
	COPY /OVER COPY.RUN NEWCMD:COPY.RUN
	COPY /OVER MOVE.RUN NEWCMD:MOVE.RUN

COPY.OBJ:	COPY.C

CRSHSAVE.RUN:	CRSHSAVE.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS CRSHSAVE \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=CRSHSAVE /MAP=CRSHSAVE /SYM=CRSHSAVE
	COPY /OVER CRSHSAVE.RUN NEWCMD:CRSHSAVE.RUN

CRSHSAVE.OBJ:	CRSHSAVE.C

DAYTIME.RUN:	DAYTIME.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS DAYTIME \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=DAYTIME /MAP=DAYTIME /SYM=DAYTIME
	COPY /OVER DAYTIME.RUN NEWCMD:DAYTIME.RUN

DAYTIME.OBJ:	DAYTIME.C

DEFAULT.RUN:	DEFAULT.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS DEFAULT \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=DEFAULT /MAP=DEFAULT /SYM=DEFAULT
	COPY /OVER DEFAULT.RUN NEWCMD:DEFAULT.RUN

DEFAULT.OBJ:	DEFAULT.C

DELETE.RUN:	DELETE.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS DELETE \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=DELETE /MAP=DELETE /SYM=DELETE
	COPY /OVER DELETE.RUN NEWCMD:DELETE.RUN

DELETE.OBJ:	DELETE.C

DEVCHAR.RUN:	DEVCHAR.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS DEVCHAR \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=DEVCHAR /MAP=DEVCHAR /SYM=DEVCHAR
	COPY /OVER DEVCHAR.RUN NEWCMD:DEVCHAR.RUN

DEVCHAR.OBJ:	DEVCHAR.C

DIR.RUN:	DIR.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS DIR \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=DIR /MAP=DIR /SYM=DIR
	COPY /OVER DIR.RUN NEWCMD:DIR.RUN

DIR.OBJ:	DIR.C

DISPLAY.RUN:	DISPLAY.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS DISPLAY \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=DISPLAY /MAP=DISPLAY /SYM=DISPLAY
	COPY /OVER DISPLAY.RUN NEWCMD:DISPLAY.RUN

DISPLAY.OBJ:	DISPLAY.C

DOSCOM.RUN:	DOSCOM.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS DOSCOM \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=DOSCOM /MAP=DOSCOM /SYM=DOSCOM
	COPY /OVER DOSCOM.RUN NEWCMD:DOSCOM.RUN

DOSCOM.OBJ:	DOSCOM.C

FIXDRIVE.RUN:	FIXDRIVE.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS FIXDRIVE \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=FIXDRIVE /MAP=FIXDRIVE /SYM=FIXDRIVE
	COPY /OVER FIXDRIVE.RUN NEWCMD:FIXDRIVE.RUN

FIXDRIVE.OBJ:	FIXDRIVE.C

RMVDRIVE.RUN:	RMVDRIVE.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS RMVDRIVE \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=RMVDRIVE /MAP=RMVDRIVE /SYM=RMVDRIVE
	COPY /OVER RMVDRIVE.RUN NEWCMD:RMVDRIVE.RUN

RMVDRIVE.OBJ:	RMVDRIVE.C

DOSLPT.RUN:	DOSLPT.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS DOSLPT \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=DOSLPT /MAP=DOSLPT /SYM=DOSLPT
	COPY /OVER DOSLPT.RUN NEWCMD:DOSLPT.RUN

DOSLPT.OBJ:	DOSLPT.C

DOSQUIRK.RUN:	DOSQUIRK.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS DOSQUIRK \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=DOSQUIRK /MAP=DOSQUIRK /SYM=DOSQUIRK
	COPY /OVER DOSQUIRK.RUN NEWCMD:DOSQUIRK.RUN

DOSQUIRK.OBJ:	DOSQUIRK.C

DUMP.RUN:	DUMP.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS DUMP \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=DUMP /MAP=DUMP /SYM=DUMP
	COPY /OVER DUMP.RUN NEWCMD:DUMP.RUN

DUMP.OBJ:	DUMP.C

UNDUMP.RUN:	UNDUMP.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS UNDUMP \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=UNDUMP /MAP=UNDUMP /SYM=UNDUMP
	COPY /OVER UNDUMP.RUN NEWCMD:UNDUMP.RUN

UNDUMP.OBJ:	UNDUMP.C

TIMEZONE.RUN:	TIMEZONE.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS TIMEZONE \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=TIMEZONE /MAP=TIMEZONE /SYM=TIMEZONE
	COPY /OVER TIMEZONE.RUN NEWCMD:TIMEZONE.RUN

TIMEZONE.OBJ:	TIMEZONE.C

ECHO.RUN:	ECHO.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS ECHO \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=ECHO /MAP=ECHO /SYM=ECHO
	COPY /OVER ECHO.RUN NEWCMD:ECHO.RUN

ECHO.OBJ:	ECHO.C

KILLPROC.RUN:    KILLPROC.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS KILLPROC \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=KILLPROC /MAP=KILLPROC /SYM=KILLPROC
	COPY /OVER KILLPROC.RUN NEWCMD:KILLPROC.RUN

KILLPROC.OBJ:	KILLPROC.C

LABEL.RUN:	LABEL.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS LABEL \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=LABEL /MAP=LABEL /SYM=LABEL
	COPY /OVER LABEL.RUN NEWCMD:LABEL.RUN

LABEL.OBJ:	LABEL.C

LKELOAD.RUN:	LKELOAD.OBJ LKELOADF.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS LKELOAD LKELOADF \
		XOSLIB:\XOS\_MAINMIN XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=LKELOAD /MAP=LKELOAD /SYM=LKELOAD
	COPY /OVER LKELOAD.RUN NEWCMD:LKELOAD.RUN

LKELOAD.OBJ:	LKELOAD.C

LKELOADF.OBJ:	LKELOADF.C
	WCC386 /D1 /I=XOSINC:\WCX\ /ZQ /3S /J /W3 /WE /FP3 /S \
		/NM=LKELOADF LKELOADF
	COPY /OVER LKELOADF.OBJ XOSLIB:\XOS\*.*

LOGICAL.RUN:	LOGICAL.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS LOGICAL \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=LOGICAL /MAP=LOGICAL /SYM=LOGICAL
	COPY /OVER LOGICAL.RUN NEWCMD:LOGICAL.RUN

LOGICAL.OBJ:	LOGICAL.C

MKDIR.RUN:	MKDIR.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS MKDIR \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=MKDIR /MAP=MKDIR /SYM=MKDIR
	COPY /OVER MKDIR.RUN NEWCMD:MKDIR.RUN

MKDIR.OBJ:	MKDIR.C

MORE.RUN:	MORE.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS MORE \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=MORE /MAP=MORE /SYM=MORE
	COPY /OVER MORE.RUN NEWCMD:MORE.RUN

MORE.OBJ:	TYPE.C
	WCC386 /D1 /I=XOSINC:\WCX\ /ZQ /3S /J /W3 /WE /FP3 /S \
		/NM=MORE /FO=MORE.OBJ /DMORE TYPE

PATH.RUN:	PATH.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS PATH \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=PATH /MAP=PATH /SYM=PATH
	COPY /OVER PATH.RUN NEWCMD:PATH.RUN

PATH.OBJ:	PATH.C

PROMPT.RUN:	PROMPT.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS PROMPT \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=PROMPT /MAP=PROMPT /SYM=PROMPT
	COPY /OVER PROMPT.RUN NEWCMD:PROMPT.RUN

PROMPT.OBJ:	PROMPT.C

PROTFS.RUN:	PROTFS.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS PROTFS \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=PROTFS /MAP=PROTFS /SYM=PROTFS
	COPY /OVER PROTFS.RUN NEWCMD:PROTFS.RUN

PROTFS.OBJ:	PROTFS.C

RENAME.RUN:	RENAME.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS RENAME \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=RENAME /MAP=RENAME /SYM=RENAME
	COPY /OVER RENAME.RUN NEWCMD:RENAME.RUN

RENAME.OBJ:	RENAME.C

RMDIR.RUN:	RMDIR.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS RMDIR \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=RMDIR /MAP=RMDIR /SYM=RMDIR
	COPY /OVER RMDIR.RUN NEWCMD:RMDIR.RUN

RMDIR.OBJ:	RMDIR.C

SET.RUN:	SET.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS SET \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=SET /MAP=SET /SYM=SET
	COPY /OVER SET.RUN NEWCMD:SET.RUN

SET.OBJ:	SET.C

SETENV.RUN:	SETENV.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS SETENV \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=SETENV /MAP=SETENV /SYM=SETENV
	COPY /OVER SETENV.RUN NEWCMD:SETENV.RUN

SETENV.OBJ:	SETENV.C

SYMBIONT.RUN:	SYMBIONT.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS XOSLIB:\XOS\_MAINALT SYMBIONT \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=SYMBIONT /MAP=SYMBIONT /SYM=SYMBIONT
	COPY /OVER SYMBIONT.RUN NEWCMD:SYMBIONT.RUN

SYMBIONT.OBJ:	SYMBIONT.C

SYSCHAR.RUN:	SYSCHAR.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS SYSCHAR \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=SYSCHAR /MAP=SYSCHAR /SYM=SYSCHAR
	COPY /OVER SYSCHAR.RUN NEWCMD:SYSCHAR.RUN

SYSCHAR.OBJ:	DEVCHAR.C
	WCC386 /D1 /I=XOSINC:\WCX\ /ZQ /3S /J /W3 /WE /FP3 /S \
		/NM=SYSCHAR /FO=SYSCHAR.OBJ /DSYSCHAR DEVCHAR

SYSDIS.RUN:	SYSDIS.OBJ
	XLINK SYSDIS XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=SYSDIS /MAP=SYSDIS /SYM=SYSDIS
	COPY /OVER SYSDIS.RUN NEWCMD:SYSDIS.RUN

SYSDIS.OBJ: SYSDIS.M86

TYPE.RUN:	TYPE.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS TYPE \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=TYPE /MAP=TYPE /SYM=TYPE
	COPY /OVER TYPE.RUN NEWCMD:TYPE.RUN

TYPE.OBJ:	TYPE.C

COMMAND.COM:	COMMAND.OBJ
	LINK COMMAND /MAP /LINE, COMMAND;
	GENSYM COMMAND
	EXE2COM COMMAND
	-DELETE COMMAND.EXE
	-DELETE COMMAND.MAP
	COPY /OVER COMMAND.COM NEWCMD:COMMAND.COM

COMMAND.OBJ:	COMMAND.ASM
	TASM COMMAND

DISMOUNT.RUN:	DISMOUNT.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS DISMOUNT \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=DISMOUNT /MAP=DISMOUNT /SYM=DISMOUNT
	COPY /OVER DISMOUNT.RUN NEWCMD:DISMOUNT.RUN

DISMOUNT.OBJ:	DISMOUNT.C

METRIC.EXE:	METRIC.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS METRIC \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=METRIC /MAP=METRIC /SYM=METRIC

METRIC.OBJ: METRIC.C

LPRT.RUN:	LPRT.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS LPRT \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/O=LPRT /M=LPRT /SYM=LPRT
	COPY /OVER LPRT.RUN NEWCMD:LPRT.RUN

LPRT.OBJ: LPRT.C

DISKINST.RUN: DISKINST.OBJ LKELOADF.C
	XLINK XOSLIB:\XOS\DEFSEGS DISKINST LKELOADF \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/O=DISKINST /M=DISKINST /SYM=DISKINST
	COPY /OVER DISKINST.RUN NEWCMD:DISKINST.RUN

DISKINST.OBJ: DISKINST.C

CONINST.RUN: CONINST.OBJ LKELOADF.C
	XLINK XOSLIB:\XOS\DEFSEGS CONINST LKELOADF \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/O=CONINST /M=CONINST /SYM=CONINST
	COPY /OVER CONINST.RUN NEWCMD:CONINST.RUN

CONINST.OBJ: CONINST.C

CONCMD.RUN:	CONCMD.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS XOSLIB:\XOS\_MAINALT CONCMD \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=CONCMD /MAP=CONCMD /SYM=CONCMD
	COPY /OVER CONCMD.RUN NEWCMD:CONCMD.RUN

CONCMD.OBJ:	CONCMD.C

MENUSEL.RUN:	MENUSEL.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS MENUSEL \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=MENUSEL /MAP=MENUSEL /SYM=MENUSEL
	COPY /OVER MENUSEL.RUN NEWCMD:MENUSEL.RUN

MENUSEL.OBJ:	MENUSEL.C

DELAY.RUN:	DELAY.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS DELAY \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=DELAY /MAP=DELAY /SYM=DELAY
	COPY /OVER DELAY.RUN NEWCMD:DELAY.RUN

DELAY.OBJ:	DELAY.C

SYSLOG.RUN:	SYSLOG.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS SYSLOG \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/OUTPUT=SYSLOG /MAP=SYSLOG /SYM=SYSLOG
	COPY /OVER SYSLOG.RUN NEWCMD:SYSLOG.RUN

SYSLOG.OBJ:	SYSLOG.C
