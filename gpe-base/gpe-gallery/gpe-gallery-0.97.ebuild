# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit gpe

DESCRIPTION="Image viewer for the GPE Palmtop Environment"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~arm ~amd64 ~x86"
IUSE="${IUSE}"
RDEPEND="gpe-base/libgpewidget"

GPE_DOCS="ChangeLog"

src_unpack() {
	gpe_src_unpack
	# NLS is broken
	sed -i -e 's;include $(BUILD)/Makefile.translation;;' Makefile
}
