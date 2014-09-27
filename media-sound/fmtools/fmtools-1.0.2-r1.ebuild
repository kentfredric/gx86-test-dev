# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2
inherit base toolchain-funcs

DESCRIPTION="A collection of programs for controlling v4l radio card drivers"
HOMEPAGE="http://www.stanford.edu/~blp/fmtools"
SRC_URI="http://www.stanford.edu/~blp/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~sparc x86"
IUSE=""
PATCHES=( "${FILESDIR}/${P}-ldflags.patch" )

RDEPEND=""
DEPEND=""

src_compile() {
	emake CC="$(tc-getCC)" CFLAGS="${CFLAGS}" || die "emake failed"
}

src_install() {
	dobin fm fmscan || die "dobin failed"
	doman fm.1 fmscan.1
	dodoc CHANGES README
}
