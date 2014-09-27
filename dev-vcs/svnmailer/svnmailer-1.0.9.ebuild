# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"

inherit distutils

DESCRIPTION="A subversion commit notifier written in Python"
HOMEPAGE="http://opensource.perlig.de/svnmailer/"
SRC_URI="http://storage.perlig.de/svnmailer/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="${DEPEND}
	dev-vcs/subversion[python]
	virtual/mta"
RDEPEND="${DEPEND}"

DOCS="CHANGES NOTICE CREDITS"

pkg_setup() {
	python_set_active_version 2
	python_pkg_setup
}

src_prepare() {
	distutils_src_prepare
	sed -i -e "s:man/man1:share/&:" setup.py || die
}

src_install() {
	distutils_src_install
	dohtml -r docs/* || die
}
