# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2:2.6"
DISTUTILS_SRC_TEST="setup.py"

inherit distutils eutils

DESCRIPTION="Module to validate VAT numbers"
HOMEPAGE="http://code.google.com/p/vatnumber/"
SRC_URI="http://vatnumber.googlecode.com/files/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test vies"

RDEPEND="vies? ( dev-python/suds )"
DEPEND="${RDEPEND}
	dev-python/setuptools
	test? ( dev-python/suds )"

PYTHON_MODNAME="vatnumber"

src_prepare() {
	epatch "${FILESDIR}"/${P}-skiptest.patch
}

src_install() {
	distutils_src_install
	dodoc COPYRIGHT README CHANGELOG
}
