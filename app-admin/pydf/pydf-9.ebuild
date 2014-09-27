# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"

PYTHON_DEPEND="*"
inherit eutils python

DESCRIPTION="Enhanced df with colors"
HOMEPAGE="http://kassiopeia.juls.savba.sk/~garabik/software/pydf/"
SRC_URI="http://kassiopeia.juls.savba.sk/~garabik/software/pydf/${PN}_${PV}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="amd64 ppc ppc64 x86 ~x86-fbsd ~amd64-linux ~x86-linux"
IUSE=""

src_prepare() {
	sed "s:/etc/pydfrc:${EPREFIX}/etc/pydfrc:g" -i ${PN} || die
}

src_install() {
	dobin pydf || die
	insinto /etc
	doins pydfrc || die
	doman pydf.1 || die
	dodoc README || die
}
