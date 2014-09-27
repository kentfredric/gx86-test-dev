# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"

SUPPORT_PYTHON_ABIS="1"
PYTHON_DEPEND="*:2.4"

inherit distutils

DESCRIPTION="Ultra fast JSON encoder and decoder for Python"
HOMEPAGE="http://pypi.python.org/pypi/ujson/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.zip"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
