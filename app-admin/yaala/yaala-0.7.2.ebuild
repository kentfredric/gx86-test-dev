# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

DESCRIPTION="Yet Another Log Analyzer"
HOMEPAGE="http://www.yaala.org/"
SRC_URI="http://www.yaala.org/files/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

src_install() {
	dodir /usr/share/yaala
	cp -pRx * "${D}"/usr/share/yaala/
}
