# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

ROX_LIB_VER=2.0.0
inherit rox

MY_PN="Lithium"
DESCRIPTION="Lithium - A battery-status applet for ROX"
HOMEPAGE="http://rox-lithium.googlecode.com"
SRC_URI="http://rox-lithium.googlecode.com/files/${MY_PN}-${PV}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

APPNAME=${MY_PN}
APPCATEGORY=""
S=${WORKDIR}

src_unpack() {
	mkdir ${MY_PN}
	cd ${MY_PN}
	unpack ${A}
}
