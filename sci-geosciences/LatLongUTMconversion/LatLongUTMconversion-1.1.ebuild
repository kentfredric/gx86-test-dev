# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils

DESCRIPTION="A lat/lon-UTM conversion utility (used by pygps)"
HOMEPAGE="http://www.pygps.org/#LatLongUTMconversion"
SRC_URI="http://www.pygps.org/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

DOCS="README"
PYTHON_MODNAME="LatLongUTMconversion.py"
