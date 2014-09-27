# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_2} )

inherit distutils-r1 eutils

MY_PN=${PN/l/L}
MY_P=${MY_PN}-${PV}

DESCRIPTION="A logging replacement for Python"
HOMEPAGE="http://packages.python.org/Logbook/ http://pypi.python.org/pypi/Logbook"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DOCS=( CHANGES README )

S=${WORKDIR}/${MY_P}

python_prepare_all() {
	local PATCHES=(
		"${FILESDIR}"/${P}-testspy3.patch
	)

	distutils-r1_python_prepare_all
}

python_test() {
	esetup.py test
}
