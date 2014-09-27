# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=1
inherit eutils

MY_P=${P/_/-}

DESCRIPTION="A Midi Controllable Audio Sampler"
HOMEPAGE="http://zhevny.com/specimen"
SRC_URI="http://zhevny.com/${PN}/files/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc sparc x86"
IUSE="lash"

RDEPEND=">=media-sound/jack-audio-connection-kit-0.109.2
	>=media-libs/alsa-lib-0.9
	media-libs/libsamplerate
	media-libs/libsndfile
	>=media-libs/phat-0.4
	dev-libs/libxml2:2
	x11-libs/gtk+:2
	gnome-base/libgnomecanvas
	lash? ( media-sound/lash )"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

S="${WORKDIR}"/${MY_P}

src_unpack() {
	unpack ${A}
	cd "${S}"
	sed -e "s:-Werror::" -e "s:-O3:${CFLAGS}:" -i configure
	epatch "${FILESDIR}/${P}-jackmidi.patch"
}

src_compile() {
	econf $(use_enable lash)
	emake || die "emake failed."
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed."
	dodoc AUTHORS BUGS ChangeLog NEWS PROFILE \
		README ROADMAP TODO STYLE TODO WISHLIST
	doicon pixmaps/${PN}.png
	make_desktop_entry ${PN} Specimen ${PN}
}
