# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"

inherit fortran-2

DESCRIPTION="HF propagation prediction tool"
HOMEPAGE="http://www.qsl.net/hz1jw/voacapl/index.html"
SRC_URI="http://www.qsl.net/hz1jw/${PN}/downloads/${P}.tar.gz"

LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RESTRICT="mirror bindist"

src_install() {
	emake DESTDIR="${D}" docdir=/usr/share/doc/${PF} install
}
