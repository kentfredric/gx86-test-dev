# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"

inherit eutils autotools toolchain-funcs

DESCRIPTION="Daemon to use hardware random number generators"
HOMEPAGE="http://gkernel.sourceforge.net/"
SRC_URI="mirror://sourceforge/gkernel/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~x86"
IUSE=""

src_prepare() {
	echo 'bin_PROGRAMS = randstat' >> contrib/Makefile.am
	epatch "${FILESDIR}"/test-for-argp.patch
	eautoreconf

	sed -i '/^AR /d' Makefile.in
	tc-export AR
}

src_install() {
	default
	newinitd "${FILESDIR}"/rngd-initd-4 rngd
	newconfd "${FILESDIR}"/rngd-confd-4 rngd
}
