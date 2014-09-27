# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

PYTHON_COMPAT=( python{2_6,2_7} )

inherit distutils-r1

DESCRIPTION="meld3 is an HTML/XML templating engine"
HOMEPAGE="https://github.com/supervisor/meld3 http://pypi.python.org/pypi/meld3"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DOCS=( CHANGES.txt README.txt TODO.txt )

python_test() {
	"${PYTHON}" "${S}/meld3/test_${PN}.py" || die "tests failed with ${PYTHON}"
}
