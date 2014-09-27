# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4
inherit autotools rpm

DESCRIPTION="The xsri wallpaper setter from RedHat"
HOMEPAGE="http://fedoraproject.org"
SRC_URI="http://download.fedoraproject.org/pub/fedora/linux/releases/15/Everything/source/SRPMS/${P}-17.fc12.src.rpm"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc x86 ~x86-fbsd"
IUSE=""

RDEPEND="x11-libs/gtk+:2"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_prepare() {
	sed -e '/-DG.*_DISABLE_DEPRECATED/d' \
		-i Makefile.am || die
	sed -e 's/PKG_CHECK_MODULES(GTK,/& x11 /' \
		-i configure.in || die #367663
	eautoreconf
}

src_install() {
	emake DESTDIR="${D}" install
	dodoc AUTHORS README
	doman ../${PN}.1
}
