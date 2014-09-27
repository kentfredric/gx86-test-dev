# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_2,3_3} )

inherit distutils-r1

HOMEPAGE="https://pypi.python.org/pypi/requests-cache"
DESCRIPTION="Persistent cache for requests library"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-python/requests-1.1.0"
DEPEND="${RDEPEND}
		dev-python/setuptools[${PYTHON_USEDEP}]"

DOCS=( README.rst HISTORY.rst )