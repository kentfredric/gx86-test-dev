# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

PYTHON_DEPEND="*:2.5"
inherit distutils

DESCRIPTION="PSSH provides parallel versions of OpenSSH and related tools"
HOMEPAGE="http://code.google.com/p/parallel-ssh/"
SRC_URI="http://parallel-ssh.googlecode.com/files/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86 ~x86-interix ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND="net-misc/openssh
	!net-misc/putty"
DEPEND="${RDEPEND}
	dev-python/setuptools"

# Requires ssh access to run.
RESTRICT="test"

PYTHON_MODNAME=psshlib

src_prepare() {
	sed -i -e "s|man/man1'|share/&|g" setup.py || die
	distutils_src_prepare
}
