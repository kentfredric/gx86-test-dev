# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2
inherit games-ggz

DESCRIPTION="The SDL versions of the games for GGZ Gaming Zone"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE=""

DEPEND="~dev-games/libggz-${PV}
	~dev-games/ggz-client-libs-${PV}
	media-libs/libsdl:0[video,X]
	media-libs/sdl-image[png]
	media-libs/sdl-mixer[vorbis]
	media-libs/sdl-ttf
	virtual/opengl
	x11-libs/libXcursor
	media-fonts/ttf-bitstream-vera"

src_install() {
	dosym /usr/share/fonts/ttf-bitstream-vera \
		/usr/share/ggz/geekgame/fonts
	games-ggz_src_install
}
