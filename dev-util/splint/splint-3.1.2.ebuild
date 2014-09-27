# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

DESCRIPTION="Check C programs for vulnerabilities and programming mistakes"
HOMEPAGE="http://lclint.cs.virginia.edu/"
SRC_URI="http://www.splint.org/downloads/${P}.src.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~arm hppa ~ia64 ppc ppc64 sparc x86"
IUSE=""

DEPEND="
	sys-devel/flex
	virtual/yacc
"
RDEPEND=""

src_compile() {
	econf || die
	emake -j1 || die "emake failed"
}

src_install() {
	make -j1 DESTDIR="${D}" install || die
}
