# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="2"

inherit eutils toolchain-funcs

DESCRIPTION="killproc and assorted tools for boot scripts"
HOMEPAGE="http://www.suse.de/"
SRC_URI="ftp://ftp.suse.com/pub/projects/init/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~arm ~hppa ~ia64 ppc ~sparc x86"
IUSE=""

src_prepare() {
	epatch "${FILESDIR}/${P}-makefile.patch"
}

src_compile() {
	tc-export CC
	export COPTS=${CFLAGS}
	emake || die "emake failed"
}

src_install() {
	into /
	dosbin checkproc fsync killproc startproc usleep || die "dosbin failed"
	into /usr
	doman *.8 *.1
	dodoc README *.lsm
}
