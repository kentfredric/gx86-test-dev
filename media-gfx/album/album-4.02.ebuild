# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

DESCRIPTION="HTML photo album generator"
HOMEPAGE="http://MarginalHacks.com/Hacks/album/"
SRC_URI="http://marginalhacks.com/bin/album.versions/${P}.tar.gz"

LICENSE="marginalhacks"
SLOT="0"
KEYWORDS="amd64 ~ppc ~ppc64 x86"
IUSE="ffmpeg"

DEPEND=""
RDEPEND="dev-lang/perl
	media-gfx/imagemagick
	media-gfx/jhead
	ffmpeg? ( virtual/ffmpeg )"

src_install() {
	dobin album
	doman album.1
	dohtml Documentation.html
	dodoc License.txt
}

pkg_postinst() {
	elog "For some optional themes please browse:"
	elog "http://MarginalHacks.com/Hacks/album/Themes/"
	elog
	elog "For some optional tools please browse:"
	elog "http://MarginalHacks.com/Hacks/album/tools/"
}
