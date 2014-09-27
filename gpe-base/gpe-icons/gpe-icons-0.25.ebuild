# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="1"

inherit gpe

DESCRIPTION="Common icons for the GPE Palmtop Environment"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 arm x86"
IUSE="${IUSE}"
GPE_DOCS="README"

RDEPEND="${RDEPEND}
	x11-libs/gtk+:2"

DEPEND="${DEPEND}
	${RDEPEND}"
