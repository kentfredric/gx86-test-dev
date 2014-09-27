# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit font

DESCRIPTION="A collection of Free fonts for Thai"
HOMEPAGE="http://linux.thai.net/projects/thaifonts-scalable"
SRC_URI="ftp://linux.thai.net/pub/thailinux/software/thai-ttf/thai-ttf-${PV}.tar.gz"

LICENSE="|| ( GPL-2-with-font-exception GPL-3-with-font-exception )"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND=""

S="${WORKDIR}/thai-ttf-${PV}"
FONT_S="${S}"
FONT_SUFFIX="ttf"

FONT_CONF=(	"${FONT_S}"/etc/fonts/conf.avail/64-ttf-thai-tlwg.conf
			"${FONT_S}"/etc/fonts/conf.avail/89-ttf-thai-tlwg-synthetic.conf )

pkg_postinst() {
	font_pkg_postinst
	echo
	elog "  64-ttf-thai-tlwg.conf enables basic support."
	elog "  89-ttf-thai-tlwg-synthetic.conf emulates the Thai font of Windows."
	echo
}

DOCS=""
