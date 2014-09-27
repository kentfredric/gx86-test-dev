# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit games

DESCRIPTION="3D curling simulation"
HOMEPAGE="http://stoned.cute-ninjas.com/"
SRC_URI="http://stoned.cute-ninjas.com/download/${P/-bin}-i386-linux.tar.gz"

LICENSE="public-domain no-source-code"
SLOT="0"
KEYWORDS="-* x86"
IUSE=""
RESTRICT="strip"

RDEPEND="virtual/opengl
	media-libs/freeglut
	media-libs/sdl-net
	=media-libs/fmod-3*
	sys-libs/zlib
	media-libs/libpng"

S=${WORKDIR}/${P/-bin}-i386-linux

src_install() {
	into "${GAMES_PREFIX_OPT}"
	dobin stoned || die "dobin failed"
	dodoc FAQ README
	prepgamesdirs
}
