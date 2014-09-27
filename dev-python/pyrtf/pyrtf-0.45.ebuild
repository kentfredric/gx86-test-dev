# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils

MY_PN="PyRTF"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A set of Python classes that make it possible to produce RTF documents from Python programs"
HOMEPAGE="http://pyrtf.sourceforge.net http://pypi.python.org/pypi/PyRTF"
SRC_URI="mirror://sourceforge/$PN/${MY_P}.tar.gz"

LICENSE="|| ( GPL-2 LGPL-2 )"
SLOT="0"
KEYWORDS="amd64 ~ia64 ~ppc x86"
IUSE=""

DEPEND=""
RDEPEND=""

S="${WORKDIR}/${MY_P}"

PYTHON_MODNAME="${MY_PN}"
