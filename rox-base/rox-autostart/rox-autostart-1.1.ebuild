# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

ROX_LIB_VER=1.9.6
inherit rox

MY_PN="Autostart"
DESCRIPTION="Autostart manages FreeDesktop.org autostart items"
HOMEPAGE="http://roscidus.com/desktop/node/430"
SRC_URI="http://users.unet.net.ph/~lars/rox/Autostart/${MY_PN}-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/pyxdg"

APPNAME="${MY_PN}"
APPCATEGORY="Settings"

S="${WORKDIR}"

src_unpack() {
	unpack ${A}
	mv ${MY_PN}-${PV} ${APPNAME}
}
