# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

ROX_LIB_VER=1.9.6
inherit rox

MY_PN="TaskTray"
DESCRIPTION="TaskTray is a rox panel applet to show running applications"
HOMEPAGE="http://rox4debian.berlios.de"
SRC_URI="ftp://ftp.berlios.de/pub/rox4debian/apps/${MY_PN}-${PV}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 sparc x86"
IUSE=""

RDEPEND="dev-python/libwnck-python
	>=rox-base/traylib-0.3.2.1"

APPNAME="${MY_PN}"
S="${WORKDIR}"
