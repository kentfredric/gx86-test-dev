# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2

MOD_DESC="Enhanced AI for the Quake III Bots"
MOD_NAME="Brainworks"
MOD_DIR="brainworks"

inherit games games-mods

HOMEPAGE="http://www.planetquake.com/artofwar"
SRC_URI="brainworks-0-91.zip"

LICENSE="freedist"
KEYWORDS="amd64 ~ppc x86"
IUSE="dedicated opengl"
RESTRICT="strip mirror fetch"

pkg_nofetch() {
	einfo "Go to http://artofwar.planetquake.gamespy.com/downloads.html and"
	einfo "download ${A}, then put it into ${DISTDIR}."
}
