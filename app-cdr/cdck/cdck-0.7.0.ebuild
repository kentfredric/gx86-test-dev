# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

DESCRIPTION="CD/DVD check tools"
HOMEPAGE="http://swaj.net/unix/index.html#cdck"
SRC_URI="http://swaj.net/unix/cdck/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

src_compile() {
	econf --disable-dependency-tracking \
		--disable-shared || die "econf failed."
	emake -j1 || die "emake failed."
}

src_install() {
	dobin src/cdck || die "dobin failed."
	doman man/cdck.1
	dodoc AUTHORS ChangeLog NEWS README THANKS TODO
}
