# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"

inherit distutils eutils

DESCRIPTION="A Python/GTK wrapper for quilt"
HOMEPAGE="http://gquilt.sourceforge.net/ http://sourceforge.net/projects/gquilt/"
SRC_URI="mirror://sourceforge/gquilt/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND="dev-python/pygtk:2
	|| ( dev-util/quilt dev-util/mercurial )"
RDEPEND="${DEPEND}"

PYTHON_MODNAME="gquilt_pkg"

pkg_setup() {
	python_set_active_version 2
	python_pkg_setup
}

src_prepare() {
	distutils_src_prepare
	python_convert_shebangs -r 2 .

	epatch "${FILESDIR}"/${P}-desktopfile.patch
}

src_install() {
	distutils_src_install

	dobin ${PN} || die
	domenu ${PN}.desktop || die
}
