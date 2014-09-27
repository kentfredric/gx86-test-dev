# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

MY_P=${PN}.${PV}

DESCRIPTION="Poly/ML is a full implementation of Standard ML"
HOMEPAGE="http://www.polyml.org"
SRC_URI="mirror://sourceforge/${PN}/${MY_P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="X"

DEPEND=""
RDEPEND=""

S=${WORKDIR}/${MY_P}

src_compile() {
	econf $(use_with X)

	emake || die
}

src_install() {
	emake DESTDIR="${D}" install || die
}
