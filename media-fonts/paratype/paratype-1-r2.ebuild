# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=3

inherit font

DESCRIPTION="ParaType font collection for languages of Russia"
HOMEPAGE="http://www.paratype.com/public/"
SRC_URI="http://www.fontstock.com/public/PTMonoOFL.zip -> ${PN}-mono-${PV}.zip
	http://www.fontstock.com/public/PTSansOFL.zip -> ${PN}-sans-${PV}.zip
	http://www.fontstock.com/public/PTSerifOFL.zip -> ${PN}-serif-${PV}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="X"

DEPEND="app-arch/unzip"
RDEPEND=""

S=${WORKDIR}
FONT_S=${WORKDIR}
FONT_SUFFIX="ttf"
