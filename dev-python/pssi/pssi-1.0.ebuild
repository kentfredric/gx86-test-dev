# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.* *-jython"

inherit distutils

DESCRIPTION="Python Simple Smartcard Interpreter"
HOMEPAGE="http://code.google.com/p/pssi/"
SRC_URI="http://pssi.googlecode.com/files/${P}.tar"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/pyscard"
RDEPEND="${DEPEND}"
