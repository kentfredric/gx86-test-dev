# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2
inherit eutils games

DESCRIPTION="3D motor sports simulator"
HOMEPAGE="http://gracer.sourceforge.net/"
SRC_URI="mirror://sourceforge/gracer/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc sparc x86"
IUSE="joystick"

DEPEND="x11-libs/libXi
	x11-libs/libXmu
	virtual/glu
	media-libs/freeglut
	virtual/opengl
	dev-lang/tcl
	media-libs/giflib
	virtual/jpeg
	media-libs/libpng
	media-libs/plib"

PATCHES=( "${FILESDIR}"/${PV}-gldefs.patch
	"${FILESDIR}"/${PN}-gcc-3.4.patch
	"${FILESDIR}/${P}"-gcc41.patch
	"${FILESDIR}"/${P}-as-needed.patch
	"${FILESDIR}"/${P}-libpng14.patch
	"${FILESDIR}"/${P}-png15.patch )

src_configure() {
	egamesconf \
		--enable-gif \
		--enable-jpeg \
		--enable-png \
		$(use_enable joystick) \
		|| die
	sed -i \
		-e 's:-lplibsl:-lplibsl -lplibul:' $(find -name Makefile) \
			|| die "sed Makefiles failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	dodoc AUTHORS ChangeLog NEWS README
	prepgamesdirs
}
