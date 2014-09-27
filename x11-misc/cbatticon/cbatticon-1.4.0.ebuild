# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit toolchain-funcs

DESCRIPTION="A lightweight and fast battery icon that sits in your system tray"
HOMEPAGE="https://github.com/ColinJones/cbatticon"
SRC_URI="https://github.com/ColinJones/cbatticon/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="x11-libs/gtk+:3
	x11-libs/libnotify"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_compile() {
	tc-export CC
	emake WITH_GTK3=1 V=1 VERSION="${PF}"
}

src_install() {
	emake DESTDIR="${D}" V=1 VERSION="${PF}" install
}
