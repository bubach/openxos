.M86.OBJ:
	XMAC $(@DPN)

.C.OBJ:
	WCC386 /D1 /I=XOSINC:\WCX\ /ZQ /3S /J /W3 /WE /FP3 /OD /S \
		/NM=$(@DPN) $(@DPN)

ALL:		XFPOSRV.RUN XFPSRV.RUN BOOTSRV.RUN \
		TELNET.RUN TLNSRV.RUN PING.RUN NETMODEM.RUN NETLINK.RUN \
		DNSRSLV.RUN DNSTEST.RUN
	@ECHO All done.

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

PING.RUN: 	PING.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS PING \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/O=PING /M=PING /SYM=PING
	COPY /OVER PING.RUN XOSCMD:PING.RUN

PING.OBJ:	PING.C

DNSTEST.RUN: 	DNSTEST.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS DNSTEST \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/O=DNSTEST /M=DNSTEST /SYM=DNSTEST
	COPY /OVER DNSTEST.RUN XOSCMD:DNSTEST.RUN

DNSTEST.OBJ:	DNSTEST.C

NETLINK.RUN:	NETLINK.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS NETLINK \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/O=NETLINK /M=NETLINK /SYM=NETLINK
	COPY /OVER NETLINK.RUN XOSCMD:NETLINK.RUN

NETLINK.OBJ:	NETLINK.C

NETMODEM.RUN:	NETMODEM.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS NETMODEM \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/O=NETMODEM /M=NETMODEM /SYM=NETMODEM
	COPY /OVER NETMODEM.RUN XOSCMD:NETMODEM.RUN

NETMODEM.OBJ:	NETMODEM.C

CKSUM.RUN:	CKSUM.OBJ
	LINK L:\TCV\$$MAIN CKSUM, CKSUM /MAP /LINE, CKSUM, \
		L:\TCV\ANSITV01 L:\TCV\XOSTV01;
	GENSYM CKSUM
	EXE2RUN CKSUM
	DEL CKSUM.EXE

CKSUM.OBJ:	CKSUM.C

MSG.RUN:	MSG.OBJ
	LINK L:\TCV\$$MAINX MSG, MSG /MAP /LINE, MSG, \
		L:\TCV\ANSITV01 L:\TCV\XOSTV01;
	GENSYM MSG
	EXE2RUN MSG
	DEL MSG.EXE
	COPY /OVER MSG.RUN XOSCMD:MSG.RUN

MSG.OBJ:	MSG.C

XFPOSRV.RUN:	XFPOSRV.OBJ
	XLINK XFPOSRV XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/O=XFPOSRV /M=XFPOSRV /SYM=XFPOSRV
	COPY /OVER XFPOSRV.RUN XOSSYS:XFPOSRV.RUN

XFPOSRV.OBJ:	XFPOSRV.M86

XFPSRV.RUN:	XFPSRV.OBJ
	XLINK XOSLIB:\XOS\_MAINALT XFPSRV \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/O=XFPSRV /M=XFPSRV /SYM=XFPSRV
	COPY /OVER XFPSRV.RUN XOSSYS:XFPSRV.RUN

XFPSRV.OBJ:	XFPSRV.M86

DNSRSLV.RUN: 	DNSRSLV.OBJ
	XLINK XOSLIB:\XOS\_MAINALT DNSRSLV \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/O=DNSRSLV /M=DNSRSLV /SYM=DNSRSLV
	COPY /OVER DNSRSLV.RUN XOSSYS:DNSRSLV.RUN
	COPY /OVER DNSRSLV.SYM XOSSYS:DNSRSLV.SYM

DNSRSLV.OBJ:	DNSRSLV.M86

IPSSRV.RUN:	IPSSRV.OBJ IPSSRVT.OBJ IPSSRVE.OBJ IPSSRVXE.OBJ IPSSRVG.OBJ \
		IPSSRVD.OBJ IPSSRVS.OBJ
	XLINK @IPSSRV.LNK
	COPY /OVER IPSSRV.RUN XOSSYS:IPSSRV.RUN

IPSSRV.OBJ:	IPSSRV.M86

IPSSRVT.OBJ:	IPSSRVT.M86

IPSSRVE.OBJ:	IPSSRVE.M86

IPSSRVXE.OBJ:	IPSSRVXE.M86

IPSSRVG.OBJ:	IPSSRVG.M86

IPSSRVD.OBJ:	IPSSRVD.M86

IPSSRVS.OBJ:	IPSSRVS.M86

BOOTSRV.RUN:	BOOTSRV.OBJ BOOTRARP.OBJ BOOTTFTP.OBJ BOOTBTP.OBJ
	XLINK XOSLIB:\XOS\_MAINALT BOOTSRV BOOTRARP BOOTTFTP BOOTBTP \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/O=BOOTSRV /M=BOOTSRV /SYM=BOOTSRV
	COPY /OVER BOOTSRV.RUN XOSSYS:BOOTSRV.RUN

BOOTSRV.OBJ:	BOOTSRV.M86

BOOTRARP.OBJ:	BOOTRARP.M86

BOOTTFTP.OBJ:	BOOTTFTP.M86

BOOTBTP.OBJ:	BOOTBTP.M86

RARPTEST.RUN:	RARPTEST.OBJ
	XLINK RARPTEST XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
	/O=RARPTEST /M=RARPTEST /SYM=RARPTEST

RARPTEST.OBJ:	RARPTEST.M86

TELNET.RUN:	TELNET.OBJ
	XLINK TELNET XOSLIB:\XOS\_MAINALT \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/O=TELNET /M=TELNET /SYM=TELNET
	COPY /OVER TELNET.RUN XOSCMD:TELNET.RUN

TELNET.OBJ:	TELNET.M86

TLNSRV.RUN:	TLNSRV.OBJ
	XLINK TLNSRV XOSLIB:\XOS\_MAINALT \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/O=TLNSRV /M=TLNSRV /SYM=TLNSRV
	COPY /OVER TLNSRV.RUN XOSSYS:TLNSRV.RUN

TLNSRV.OBJ:	TLNSRV.M86

NETSPY.RUN:	NETSPY.OBJ
	XLINK NETSPY \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/O=NETSPY /M=NETSPY /SYM=NETSPY
	COPY /OVER NETSPY.RUN XOSCMD:NETSPY.RUN

NETSPY.OBJ:	NETSPY.M86

SERVER.RUN: 	SERVER.OBJ
	XLINK XOSLIB:\XOS\DEFSEGS SERVER XOSLIB:\XOS\_MAINALT \
		XOSLIB:\XOS\LIBX01 XOSLIB:\XOS\LIBC01 \
		/O=SERVER /M=SERVER /SYM=SERVER
	COPY /OVER SERVER.RUN XOSCMD:SERVER.RUN

SERVER.OBJ:	SERVER.C
