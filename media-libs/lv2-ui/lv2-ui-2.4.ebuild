# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=3
inherit waf-utils

DESCRIPTION="Generic UI interface for LV2 plugins"
HOMEPAGE="http://lv2plug.in/ns/extensions/ui"
SRC_URI="http://lv2plug.in/spec/${P}.tar.bz2"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=media-libs/lv2core-6.0"

DOCS=( "NEWS" )
