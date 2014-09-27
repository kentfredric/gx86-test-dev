# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

ROX_LIB_VER=1.9.13
inherit rox

MY_PN="Mp3Ogg2Wav"
DESCRIPTION="Mp3Ogg2Wav: A small rox utility to convert .ogg and .mp3 files to .wav files"
HOMEPAGE="http://kymatica.com/index.php/Software"
SRC_URI="http://kymatica.com/uploads/Software/${MY_PN}-${PV}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc x86"
IUSE=""

RDEPEND=">=dev-python/pyogg-1.3
	>=dev-python/pyvorbis-1.3
	>=dev-python/pymad-0.5.2"

APPNAME=${MY_PN}
S=${WORKDIR}
