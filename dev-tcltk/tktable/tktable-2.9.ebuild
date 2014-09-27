# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

MY_P="Tktable${PV}"

DESCRIPTION="full-featured 2D table widget"
HOMEPAGE="http://tktable.sourceforge.net/"
SRC_URI="mirror://sourceforge/tktable/${MY_P}.tar.gz"

LICENSE="BSD"
KEYWORDS="~amd64 ppc x86"
SLOT="0"
IUSE=""

DEPEND=">=dev-lang/tk-8.0"
RDEPEND="${DEPEND}"

S=${WORKDIR}/${MY_P}

src_unpack() {
	unpack ${A}
	cd "${S}"

	sed -i -e "s/relid'/relid/" "${S}"/{configure,tclconfig/tcl.m4} || die
}

src_compile() {
	econf
	emake || die
}

src_install() {
	make DESTDIR="${D}" install || die
}
