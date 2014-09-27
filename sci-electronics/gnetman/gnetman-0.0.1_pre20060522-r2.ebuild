# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

MY_P="${PN}-22May06"

DESCRIPTION="A GNU Netlist Manipulation Library"
HOMEPAGE="http://sourceforge.net/projects/gnetman/
	http://www.viasic.com/opensource/"
SRC_URI="http://www.viasic.com/opensource/${MY_P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
IUSE="doc examples"
KEYWORDS="~amd64 ~ppc ~x86"

S="${WORKDIR}/${MY_P}"

DEPEND="
	dev-lang/tk
	sci-electronics/geda"
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i -e 's/ sym / /' Makefile.in || die "sed failed"
	if use examples ; then
		sed -i -e "s:gEDA/sch/gnetman:doc/${PF}/examples:" \
			sch/Makefile.in || die "sed failed"
		sed -i -e "s:gEDA/examples/gnetman:doc/${PF}/examples:" \
			test/Makefile.in || die "sed failed"
	else
		sed -i -e 's/ sch test//' Makefile.in || die "sed failed"
	fi
}

src_install () {
	default
	use doc && dodoc doc/*.{html,jpg}
}
