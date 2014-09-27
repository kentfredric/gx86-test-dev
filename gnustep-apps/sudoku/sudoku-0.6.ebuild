# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit gnustep-2

MY_P=${PN/s/S}${PV/0./}

DESCRIPTION="Sudoku generator for GNUstep"
HOMEPAGE="http://www.gnustep.it/marko/Sudoku"
# Upstream site is gone
SRC_URI="mirror://gentoo/${MY_P}.tgz"

LICENSE="GPL-2"
KEYWORDS="amd64 ppc x86"
SLOT="0"
IUSE=""

S=${WORKDIR}/${MY_P}
