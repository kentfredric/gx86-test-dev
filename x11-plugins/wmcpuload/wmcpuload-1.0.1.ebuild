# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

IUSE=""
DESCRIPTION="WMCPULoad is a program to monitor CPU usage"
HOMEPAGE="http://dockapps.windowmaker.org/file.php/id/36"
SRC_URI="mirror://gentoo/${P}.tar.bz2"

RDEPEND="x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXt
	x11-libs/libXpm"
DEPEND="${RDEPEND}
	x11-proto/xextproto"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="alpha amd64 ~mips ppc ppc64 sparc x86"

src_install () {
	einstall || die "make install failed"
	dodoc AUTHORS ChangeLog NEWS README THANKS TODO
}
