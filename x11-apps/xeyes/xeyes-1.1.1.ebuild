# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=3

inherit xorg-2

DESCRIPTION="X.Org xeyes application"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 s390 sh sparc x86 ~x86-interix ~amd64-linux ~ia64-linux ~x86-linux ~sparc64-solaris"
IUSE=""
RDEPEND="x11-libs/libX11
	x11-libs/libXt
	x11-libs/libXext
	x11-libs/libXmu
	x11-libs/libXrender"
DEPEND="${RDEPEND}"

CONFIGURE_OPTIONS="--with-xrender"
