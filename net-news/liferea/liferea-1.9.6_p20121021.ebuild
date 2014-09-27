# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

GCONF_DEBUG=no

inherit eutils gnome2 pax-utils

MY_P=${PN}
S=${WORKDIR}/${MY_P}

DESCRIPTION="News Aggregator for RDF/RSS/CDF/Atom/Echo feeds"
HOMEPAGE="http://liferea.sourceforge.net/"
SRC_URI="http://dev.gentoo.org/~vostorga/distfiles/${P}.tar.bz2"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="ayatana libnotify"

RDEPEND=">=x11-libs/gtk+-2.91.4:3
	>=dev-libs/glib-2.26.0:2
	>=x11-libs/pango-1.4.0
	>=gnome-base/gconf-1.1.9:2
	>=dev-libs/libxml2-2.6.27:2
	>=dev-libs/libxslt-1.1.19
	>=dev-db/sqlite-3.7.0:3
	>=net-libs/libsoup-2.28.2:2.4
	dev-libs/libunique:3
	>=net-libs/webkit-gtk-1.6.1:3
	dev-libs/json-glib
	ayatana? ( dev-libs/libindicate )
	libnotify? ( >=x11-libs/libnotify-0.3.2 )
	>=dev-libs/libpeas-1.0.0[gtk]
	gnome-base/gsettings-desktop-schemas"
DEPEND="${RDEPEND}
	dev-util/intltool
	virtual/pkgconfig"

DOCS="AUTHORS ChangeLog README"

S=${WORKDIR}/${MY_P}

pkg_setup() {
	G2CONF="${G2CONF}
		--enable-sm
		--disable-schemas-install
		$(use_enable ayatana libindicate)
		$(use_enable libnotify)"
}

src_prepare() {
	./autogen.sh || die
	gnome2_src_prepare
}

src_install() {
	gnome2_src_install
	# bug #338213
	# Uses webkit's JIT. Needs mmap('rwx') to generate code in runtime.
	# MPROTECT policy violation. Will sit here until webkit will
	# get optional JIT.
	pax-mark m "${D}"/usr/bin/liferea

	einfo "If you want to enhance funcitonality of this package"
	einfo "You should consider installing these packages:"
	einfo "    dev-libs/dbus-glib"
	einfo "    net-misc/networkmanager"
}
