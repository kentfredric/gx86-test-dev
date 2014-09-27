# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

PYTHON_DEPEND="2:2.6"

inherit eutils python

MY_P=${PN}-2011.04.04.48155
DESCRIPTION="A gui theme editor for openbox"
HOMEPAGE="http://xyne.archlinux.ca/projects/obtheme/"
SRC_URI="http://xyne.archlinux.ca/projects/obtheme/archives/${MY_P}.tar.xz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	dev-python/pygobject:2
	dev-python/pygtk:2
	dev-python/fuse-python
	x11-libs/gtk+:2"

S=${WORKDIR}/${MY_P}

src_install() {
	dobin ${PN}
	make_desktop_entry ${PN} "${PN} editor" "" Utility
}
