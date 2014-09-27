# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit php-pear-r1 eutils

DESCRIPTION="Package for generating Excel spreadsheets"
LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ppc ppc64 ~s390 ~sh sparc x86"
RDEPEND=">=dev-php/PEAR-OLE-0.5-r1"
IUSE="unicode"

src_unpack() {
	unpack ${A}
	cd "${S}"
	use unicode && epatch "${FILESDIR}"/${P}-utf8.patch
}
