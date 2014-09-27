# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

DESCRIPTION="System performance benchmark"
HOMEPAGE="http://sysbench.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="aio mysql"

DEPEND="mysql? ( virtual/mysql )
	aio? ( dev-libs/libaio )"
RDEPEND="${DEPEND}"

src_compile() {
	if ! use aio; then my_econf="--disable-aio"; fi
	econf $(use_with mysql mysql /usr) $my_econf || die "econf failed"
	emake || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	dodoc ChangeLog README
}
