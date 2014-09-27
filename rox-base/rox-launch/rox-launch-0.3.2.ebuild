# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

ROX_LIB_VER=2.0.2
inherit rox-0install

MY_PN="Launch"
DESCRIPTION="Launch provides facilities for launching URLs and configuring the
applications used to launch them."
HOMEPAGE="http://www.kerofin.demon.co.uk/rox/launch.html"
SRC_URI="http://www.kerofin.demon.co.uk/rox/${MY_PN}-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

APPNAME=${MY_PN}
S=${WORKDIR}
