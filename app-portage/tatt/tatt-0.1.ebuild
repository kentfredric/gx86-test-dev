# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

#configobj does not support python-3
PYTHON_COMPAT=( python2_6 python2_7 )

inherit distutils-r1

DESCRIPTION="tatt is an arch testing tool"
HOMEPAGE="https://github.com/tom111/tatt"
SRC_URI="https://github.com/tom111/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="+templates"

RDEPEND="
	${PYTHON_DEPS}
	app-portage/eix
	app-portage/gentoolkit
	www-client/pybugz
	dev-python/configobj"
DEPEND="
	${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"

python_install_all() {
	distutils-r1_python_install_all
	if use templates; then
		insinto "/usr/share/${PN}"
		doins -r templates || die
	fi
}
