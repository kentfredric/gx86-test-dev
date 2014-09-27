# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit eutils multilib

DESCRIPTION="FLIC animation file loading library"
HOMEPAGE="http://www.libsdl.org/"
SRC_URI="mirror://gentoo/SDL_flic-12.tgz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="alpha amd64 ~hppa ~mips ~ppc ppc64 ~sparc x86"
IUSE=""

DEPEND="media-libs/libsdl"

S=${WORKDIR}/SDL_flic-${PV}

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}/${PV}-win32.patch"
	cp "${FILESDIR}/Makefile" .
	edos2unix SDL_flic.h
}

src_install() {
	emake \
		DESTDIR="${D}" \
		LIBDIR=/usr/$(get_libdir) \
		install \
		|| die "emake install failed"
	dodoc README.txt
}
