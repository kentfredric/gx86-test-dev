# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit vdr-plugin-2

DESCRIPTION="VDR Plugin: another epg osd"
HOMEPAGE="http://vdr.websitec.de/download/vdr-yaepg"
SRC_URI="http://vdr.websitec.de/download/vdr-yaepg/vdr-yaepg-0.0.10.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=">=media-video/vdr-1.5.7[yaepg]"
