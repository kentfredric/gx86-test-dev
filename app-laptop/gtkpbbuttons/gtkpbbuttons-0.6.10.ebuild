# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="1"

inherit eutils

DESCRIPTION="On screen display client for pbbuttonsd"
HOMEPAGE="http://pbbuttons.sf.net"
SRC_URI="mirror://sourceforge/pbbuttons/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="ppc ~x86"
IUSE="gnome"

DEPEND="x11-libs/gtk+:2
	>=media-libs/audiofile-0.1.9
	dev-libs/popt
	>=app-laptop/pbbuttonsd-0.7.9
	gnome? ( gnome-base/libgnomeui )"

src_compile() {
	local myconf=""
	use gnome && myconf="--with-gnome"
	econf ${myconf}
	make || die
}

src_install() {
	make install DESTDIR="${D}" || die
	dodoc README
}
