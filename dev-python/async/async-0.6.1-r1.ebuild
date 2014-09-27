# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7} )

inherit distutils-r1

DESCRIPTION="Async Framework"
HOMEPAGE="http://gitorious.org/git-python/async
	http://pypi.python.org/pypi/async"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE=""

RDEPEND="sys-libs/zlib"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		${RDEPEND}"

PATCHES=( "${FILESDIR}"/${P}_libz_link.patch )

python_test() {
	nosetests || die
}
