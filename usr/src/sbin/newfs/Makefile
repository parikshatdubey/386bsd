#	@(#)Makefile	7.13 (Berkeley) 2/26/91

NONSTDINC= ${INCDEV} ${INCFS}
PROG=	newfs
CFLAGS+=-DMFS
SRCS=	dkcksum.c newfs.c mkfs.c
MAN8=	newfs.0
LINKS=	${BINDIR}/newfs ${LIBEXECDIR}/mount_mfs
MLINKS=	newfs.8 mfs.8
.PATH:	${.CURDIR}/../disklabel

.include <bsd.prog.mk>
