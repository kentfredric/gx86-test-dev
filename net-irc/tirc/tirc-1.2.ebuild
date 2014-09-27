# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

DESCRIPTION="Token's IRC client"
HOMEPAGE="http://home.mayn.de/jean-luc/alt/tirc/"
SRC_URI="mirror://debian/pool/main/t/tirc/${PN}_${PV}.orig.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~ppc"
IUSE="debug"

DEPEND="sys-libs/ncurses"
RDEPEND="${DEPEND}"

src_prepare() {
	# Don't call dodoc on a directory, bug #367505.
	rm -rf doc/RCS || die
}

src_configure() {
	econf \
		$(use_enable debug)
}

src_compile() {
	emake depend
	emake tirc
}

src_install() {
	dobin tirc
	doman tirc.1

	dodoc Changelog FAQ Notes README doc/*
}
