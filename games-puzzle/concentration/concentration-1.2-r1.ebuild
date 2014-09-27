# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2
inherit eutils games

DESCRIPTION="The classic memory game with some new life"
HOMEPAGE="http://www.happypenguin.org/show?Concentration"
SRC_URI="mirror://gentoo/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE=""

DEPEND="media-libs/libsdl[sound,video]
	media-libs/sdl-mixer[vorbis]
	media-libs/sdl-image[png]
	media-libs/sdl-ttf"

PATCHES=( "${FILESDIR}"/${P}-gentoo.patch )

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	newicon pics/set1/19.png ${PN}.png
	make_desktop_entry ${PN} Concentration
	dodoc AUTHORS ChangeLog
	prepgamesdirs
}
