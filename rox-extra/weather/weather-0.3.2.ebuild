# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

ROX_LIB_VER=1.9.6
inherit rox

MY_PN="Weather"
DESCRIPTION="Weather is a panel applet for Rox"
HOMEPAGE="http://rox4debian.berlios.de"
SRC_URI="ftp://ftp.berlios.de/pub/rox4debian/apps/${MY_PN}-${PV}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE=""

APPNAME="${MY_PN}"
S="${WORKDIR}"
