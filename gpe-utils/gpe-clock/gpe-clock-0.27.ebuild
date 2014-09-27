# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

GPE_TARBALL_SUFFIX="gz"
GPE_MIRROR="http://gpe.linuxtogo.org/download/source"
inherit eutils gpe

DESCRIPTION="The GPE panel clock"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~arm ~amd64 ~x86"

# When gpe-conf goes into portage, we need to add a RDEPEND on it here.
RDEPEND="gpe-base/libgpewidget gpe-base/libgpelaunch gpe-base/libschedule"
IUSE="${IUSE}"
