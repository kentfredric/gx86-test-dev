# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

inherit leechcraft

DESCRIPTION="Twitter client for LeechCraft"

SLOT="0"
KEYWORDS="amd64 x86"
IUSE="debug"

DEPEND="~app-leechcraft/lc-core-${PV}
		dev-libs/qjson
		dev-libs/kqoauth"
RDEPEND="${DEPEND}"