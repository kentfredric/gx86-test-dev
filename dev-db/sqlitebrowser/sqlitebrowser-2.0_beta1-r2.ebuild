# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4
inherit eutils qt4-r2

DESCRIPTION="SQLite Database Browser"
HOMEPAGE="http://sqlitebrowser.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${PN}_200_b1_src.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-qt/qtcore-4.6:4[qt3support]
	>=dev-qt/qtgui-4.6:4[qt3support]
	>=dev-qt/qt3support-4.6:4"
RDEPEND="${DEPEND}"

S=${WORKDIR}/trunk/${PN}

PATCHES=( "${FILESDIR}"/${P}-qt-4.7.0.patch
	"${FILESDIR}"/${P}-gold.patch )

src_install() {
	dobin ${PN}/${PN}
	newicon ${PN}/images/128.png ${PN}.png
	make_desktop_entry ${PN} "SQLite Database Browser"
}
