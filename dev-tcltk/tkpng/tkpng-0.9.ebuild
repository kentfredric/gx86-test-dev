# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"

MY_P="${PN}${PV}"

DESCRIPTION="Implements support for loading and using PNG images with Tcl/Tk"
HOMEPAGE="http://www.muonics.com/FreeStuff/TkPNG/"
SRC_URI="mirror://sourceforge/${PN}/${PN}/${PV}/${MY_P}.tgz"

SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="tcltk"
IUSE="debug threads"

RDEPEND="
	>=dev-lang/tcl-8.4
	>=dev-lang/tk-8.4
	sys-libs/zlib"
DEPEND="${RDEPEND}"

# test target in Makefile, but test not shipped
RESTRICT="test"

S="${WORKDIR}"/${MY_P}

src_configure() {
	econf \
		$(use_enable debug symbols) \
		$(use_enable amd64 64bit) \
		$(use_enable threads)
}

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc ChangeLog README || die
}
