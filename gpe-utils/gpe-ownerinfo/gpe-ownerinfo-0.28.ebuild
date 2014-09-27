# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit gpe

DESCRIPTION="GPE owner information dialog"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~arm ~amd64 ~x86"

RDEPEND="${RDEPEND}
	>=gpe-base/libgpewidget-0.117"

DEPEND="${DEPEND}
	${RDEPEND}"

IUSE=""

GPE_DOCS="README ChangeLog"

src_install() {
	gpe_src_install install-devel
}
