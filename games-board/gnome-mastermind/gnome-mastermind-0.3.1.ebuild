# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2
inherit eutils gnome2

DESCRIPTION="A little Mastermind game for GNOME"
HOMEPAGE="http://www.autistici.org/gnome-mastermind/"
SRC_URI="http://download.gna.org/gnome-mastermind/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~arm ppc x86"
IUSE=""

RDEPEND="gnome-base/gconf
	gnome-base/orbit
	app-text/gnome-doc-utils
	dev-libs/atk
	dev-libs/glib:2
	x11-libs/pango
	x11-libs/cairo
	x11-libs/gtk+:2"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	dev-util/intltool
	sys-devel/gettext
	app-text/scrollkeeper"

src_prepare() {
	gnome2_src_prepare
	epatch "${FILESDIR}"/${P}-gentoo.patch
}

src_install() {
	DOCS="AUTHORS ChangeLog NEWS TODO" gnome2_src_install
}
