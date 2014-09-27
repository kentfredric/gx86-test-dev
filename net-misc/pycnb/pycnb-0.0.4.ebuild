# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python{2_6,2_7} )

inherit distutils-r1

DESCRIPTION="Access cnb.cz daily rates with the comfort of your command line"
HOMEPAGE="https://github.com/yaccz/pycnb"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="dev-python/cement[${PYTHON_USEDEP}]
	dev-python/twisted-web
	dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
