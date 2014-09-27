# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit eutils

DESCRIPTION="display bandwidth usage on an interface"
HOMEPAGE="http://www.ex-parrot.com/pdw/iftop/"
SRC_URI="http://www.ex-parrot.com/pdw/iftop/download/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 hppa ia64 ppc ~ppc64 sparc x86 ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos"
IUSE=""

DEPEND="sys-libs/ncurses
	net-libs/libpcap"

src_unpack() {
	unpack ${A}; cd "${S}"
	# bug 101926
	epatch "${FILESDIR}"/${PN}-0.16-bar_in_bytes.patch
}

src_install() {
	dosbin iftop
	doman iftop.8

	dodoc ChangeLog README "${FILESDIR}"/iftoprc
}
