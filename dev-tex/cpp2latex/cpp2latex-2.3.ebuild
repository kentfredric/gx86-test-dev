# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# eutils is in portage proper now, no need to inherit

DESCRIPTION="A program to convert C++ code to LaTeX source"
HOMEPAGE="http://www.arnoldarts.de/drupal/?q=Cpp2LaTeX"
SRC_URI="http://www.arnoldarts.de/drupal/files/downloads/cpp2latex/${P}.tar.gz"
LICENSE="GPL-2"

IUSE=""
SLOT="0"
KEYWORDS="x86 ppc amd64 sparc"

# although it makes sense to have tex installed, it is
# neither a compile or runtime dependency

src_compile() {

	econf || die
	emake || die

}

src_install() {

	make install DESTDIR=${D} || die

}
