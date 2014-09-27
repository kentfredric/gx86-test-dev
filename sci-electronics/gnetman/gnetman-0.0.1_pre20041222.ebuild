# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

MY_PV="22Dec04"

DESCRIPTION="A GNU Netlist Manipulation Library"
HOMEPAGE="http://www.viasic.com/opensource/"
SRC_URI="http://www.viasic.com/opensource/gnetman-${MY_PV}.tar.gz"

IUSE=""
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="ppc ~x86"

DEPEND="dev-lang/tk"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}-${MY_PV}"
