# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

DESCRIPTION="Console app for copying burning audio cds"
SLOT="0"
SRC_URI="http://www.thenktor.homepage.t-online.de/burncdda/download/${P}.tar.gz"
LICENSE="GPL-2"
HOMEPAGE="http://www.thenktor.homepage.t-online.de/burncdda/index.html"
IUSE="flac mp3 vorbis"
KEYWORDS="~amd64 ppc ~sparc x86"

DEPEND="dev-util/dialog
	app-cdr/cdrdao
	virtual/cdrtools
	mp3? ( media-sound/mpg123
		media-sound/mp3_check )
	vorbis? ( media-sound/vorbis-tools )
	flac? ( media-libs/flac )
	media-sound/normalize
	media-sound/sox"

src_install() {
	dodoc CHANGELOG
	insinto /etc
	doins burncdda.conf
	dobin burncdda
	insinto /usr/lib/burncdda
	doins *.func
	insinto /usr/share/man/man1
	doins burncdda.1.gz
}
