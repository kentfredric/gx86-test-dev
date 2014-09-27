# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=3

PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.* *-jython"

inherit distutils multilib

DESCRIPTION="Toolkit and library for the analysis and manipulation of macromolecular structural models"
HOMEPAGE="http://pymmlib.sourceforge.net/"
SRC_URI="mirror://sourceforge/pymmlib/${P}.tar.gz"

LICENSE="Artistic"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE=""

RDEPEND="
	dev-python/numpy
	dev-python/pygtkglext
	media-libs/freeglut
	virtual/glu
	virtual/opengl
	x11-libs/libXmu"
DEPEND="${RDEPEND}"

src_prepare() {
	python_convert_shebangs $(python_get_version -f) "${S}"/applications/* "${S}"/examples/*
	distutils_src_prepare
}

src_install() {
	distutils_src_install
	dobin "${S}"/applications/* "${S}"/examples/* || die
	dodoc "${S}"/README.txt || die
	dohtml -r "${S}"/doc || die
}
