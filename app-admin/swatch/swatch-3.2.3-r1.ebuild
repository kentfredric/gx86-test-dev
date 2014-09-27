# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"

inherit perl-app

DESCRIPTION="Perl-based system log watcher"
HOMEPAGE="http://swatch.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE=""

RDEPEND="
	dev-perl/DateManip
	dev-perl/Date-Calc
	dev-perl/File-Tail
	dev-perl/TimeDate
	>=virtual/perl-Time-HiRes-1.12
"

src_install() {
	emake install
	dodir "/var/run/swatch"
	newinitd "${FILESDIR}"/${PN}-initd ${PN}
	newconfd "${FILESDIR}"/${PN}-confd ${PN}
}
