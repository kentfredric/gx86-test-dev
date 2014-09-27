# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_6 python2_7 )
inherit distutils-r1

DESCRIPTION="A collection of utilities for Python programmers"
HOMEPAGE="https://pypi.python.org/pypi/pyutil"
SRC_URI="mirror://pypi/p/pyutil/pyutil-${PV}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

# dev-python/twisted-core[${PYTHON_USEDEP}]
RDEPEND="dev-python/simplejson[${PYTHON_USEDEP}]
	dev-python/twisted-core"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_install() {
	distutils-r1_src_install

	rm -rf "${ED%/}"/usr/share/doc/${PN}
}
