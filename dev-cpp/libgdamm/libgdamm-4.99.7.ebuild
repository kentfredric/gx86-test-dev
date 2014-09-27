# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
GCONF_DEBUG="no"

inherit gnome2

DESCRIPTION="C++ bindings for libgda"
HOMEPAGE="http://www.gtkmm.org"

LICENSE="LGPL-2.1"
SLOT="5"
KEYWORDS="amd64 ~ppc ~sparc x86"
IUSE="berkdb doc"

RDEPEND="
	>=dev-cpp/glibmm-2.27.93:2
	>=gnome-extra/libgda-5.0.2:5[berkdb=]
"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	doc? ( app-doc/doxygen )
"

src_configure() {
	# Automagic libgda-berkdb support
	gnome2_src_configure $(use_enable doc documentation)
}
