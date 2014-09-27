# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2
inherit games

DESCRIPTION="Nyan Cat Telnet Server"
HOMEPAGE="http://github.com/klange/nyancat"
SRC_URI="mirror://gentoo/${P}.tar.bz2"

LICENSE="UoI-NCSA"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

src_compile() {
	emake LFLAGS="${LDFLAGS} ${CFLAGS}" || die
}

src_install() {
	dogamesbin src/${PN} || die
	dodoc README.md
	prepgamesdirs
}
