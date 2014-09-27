# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
# On pypy-1.8: undefined symbol: PyUnicodeDecodeError_SetStart.
# Might start working in future pypys, but restrict for now.
RESTRICT_PYTHON_ABIS="3.* *-jython *-pypy-*"

inherit distutils

DESCRIPTION="Python Codecs for Iconv Encodings"
HOMEPAGE="http://cjkpython.i18n.org/"
SRC_URI="mirror://berlios/cjkpython/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ia64 x86"
IUSE=""

DEPEND=""
RDEPEND=""

PYTHON_MODNAME="iconv_codec.py"

src_compile() {
	distutils_src_compile --with-libc
}
