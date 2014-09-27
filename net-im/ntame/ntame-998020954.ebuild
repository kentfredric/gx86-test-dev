# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

S=${WORKDIR}/ntaim
DESCRIPTION="Ncurses based AOL Instant Messenger"
HOMEPAGE="http://tame.sourceforge.net/"
SRC_URI="mirror://sourceforge/tame/ntaim.${PV}.tar.gz"
DEPEND=">=sys-libs/ncurses-5.2"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86"
IUSE=""

src_compile () {

	./configure --prefix=/usr --host=${CHOST} || die
	emake || die

}

src_install () {

	dodir /usr/bin
	make DESTDIR=${D} install || die

	dodoc AUTHORS BUGS NEWS README TODO
}

pkg_postinst () {
	elog "Executable name is actually ntaim"
}
