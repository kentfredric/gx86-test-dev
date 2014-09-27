# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit eutils gpe

DESCRIPTION="Plucker ebook reader for the GPE Palmtop Environment"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~arm ~amd64 ~x86"
IUSE=""

RDEPEND="${RDEPEND}
	gpe-base/libgpewidget"
DEPEND="${DEPEND}
	${RDEPEND}"

GPE_DOCS="Changelog README README-GPE ToDo"

src_unpack() {
	gpe_src_unpack "$@"

	# This package doesn't currrently support autotools
	mv -f gpe-plucker.desktop.in gpe-plucker.desktop
	sed -i -e 's/^_//' gpe-plucker.desktop || die "desktop sed fail"

	# nls not supported on this pkg
	sed -i -e 's;include $(BUILD)/Makefile.translation;;' Makefile \
		|| die "Makefile sed fail"
}
