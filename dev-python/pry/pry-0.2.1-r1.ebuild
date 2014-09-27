# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7} )

inherit distutils-r1

DESCRIPTION="A unit testing framework and coverage engine"
HOMEPAGE="https://github.com/cortesi/pry http://pypi.python.org/pypi/pry/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="!dev-ruby/pry"

PATCHES=( "${FILESDIR}"/${PN}-0.2.1-exit-status.patch )

python_test() {
	cd test
	"${PYTHON}" "${BUILD_DIR}"/scripts/pry
}
