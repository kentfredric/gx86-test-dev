# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} )

inherit python-r1

DESCRIPTION="A utility for submitting version updates to Freecode via its JSON API"
HOMEPAGE="http://www.catb.org/~esr/freecode-submit/"
SRC_URI="http://www.catb.org/~esr/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"

src_compile() { :; }

src_install() {
	python_foreach_impl python_doscript ${PN}
	dodoc AUTHORS README
	doman ${PN}.1
}
