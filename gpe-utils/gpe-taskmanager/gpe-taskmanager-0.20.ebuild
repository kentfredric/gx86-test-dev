# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit eutils gpe

DESCRIPTION="GPE task manager"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~arm ~amd64 ~x86"
RDEPEND="${RDEPEND}
	gpe-base/libgpewidget
	gpe-base/libgpelaunch"
DEPEND="${DEPEND}
	${RDEPEND}"

IUSE="${IUSE}"
