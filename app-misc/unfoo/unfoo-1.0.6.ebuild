# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

DESCRIPTION="A simple bash driven frontend to simplify decompression of files"
HOMEPAGE="http://obsoleet.org/code/unfoo"
SRC_URI="${HOMEPAGE}/${P}.sh"

LICENSE="BSD"
SLOT="0"
KEYWORDS=" amd64 ppc ppc64 s390 x86 ~x86-fbsd"
IUSE=""

S="${WORKDIR}"

src_unpack() {
	cp "${DISTDIR}"/${A} "${WORKDIR}"
}

src_install() {
	newbin ${P}.sh unfoo || die
}

pkg_postinst() {
	echo
	elog "unfoo can handle far more than just .tar*, but it requires some"
	elog "optional packages to do so. For a list, either consult the source"
	elog "(less /usr/bin/unfoo), or see http://obsoleet.org/code/unfoo"
	echo
}
