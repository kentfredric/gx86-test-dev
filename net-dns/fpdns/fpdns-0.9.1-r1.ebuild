# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

DESCRIPTION="Fingerprinting DNS servers"
HOMEPAGE="http://www.rfc.se/fpdns/"
SRC_URI="http://www.rfc.se/fpdns/distfiles/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-perl/Net-DNS-0.42"

src_compile() { :; }

src_install() {
	newbin fpdns.pl fpdns
	doman fpdns.1
}
