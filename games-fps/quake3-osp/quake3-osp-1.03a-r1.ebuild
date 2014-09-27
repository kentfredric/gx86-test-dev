# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2

MOD_DESC="a tournament mod"
MOD_NAME="OSP"
MOD_DIR="osp"

inherit games games-mods

HOMEPAGE="http://www.orangesmoothie.org/"
SRC_URI="http://www.sunflow.com/orangesmoothie/downloads/osp-Quake3-${PV}_full.zip"

LICENSE="GPL-2"
KEYWORDS="amd64 ~ppc x86"
IUSE="dedicated opengl"

src_prepare() {
	cd ${MOD_DIR}
	rm -f VoodooStats-ReadMe.txt *.exe
	rm -rf voodoo
}
