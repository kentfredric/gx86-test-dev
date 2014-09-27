# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"

DESCRIPTION="Allows people who have limited mobility to control their computer using morse code"
HOMEPAGE="http://www.morseall.org/"
SRC_URI="http://pehr.net/software/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="-amd64 ~x86"
IUSE=""

DEPEND="gnome-extra/at-spi:1"
RDEPEND="${DEPEND}"

src_install() {
	emake DESTDIR="${D}" install || die "install failed"
	dodoc README ChangeLog NEWS TODO
}
