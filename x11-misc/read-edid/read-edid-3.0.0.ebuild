# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit cmake-utils

DESCRIPTION="Program that can get information from a PnP monitor"
HOMEPAGE="http://www.polypux.org/projects/read-edid/"
SRC_URI="http://www.polypux.org/projects/${PN}/${P}.tar.gz"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="-* ~amd64 ~x86"

DEPEND=">=dev-libs/libx86-1.1"
RDEPEND="$DEPEND"

DOCS=( AUTHORS ChangeLog NEWS README )
PATCHES=(
	"${FILESDIR}"/${P}-include.patch
	"${FILESDIR}"/${P}-sharedir.patch
)

src_prepare() {
	mv get-edid.man get-edid.1 || die
	cmake-utils_src_prepare
}
