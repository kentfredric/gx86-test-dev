# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2
inherit eutils multilib toolchain-funcs

DESCRIPTION="Low-level feature extraction plugins using Jamie Bullock's libxtract library to provide around 50 spectral and other features"
HOMEPAGE="http://www.vamp-plugins.org/"
SRC_URI="mirror://sourceforge/vamp/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND="=sci-libs/fftw-3*
	>=media-libs/libxtract-0.6.3
	media-libs/vamp-plugin-sdk"
DEPEND="${RDEPEND}"

src_prepare() {
	epatch "${FILESDIR}"/${PN}-0.4.2.20071019-gcc44.patch
	sed -e "s/-O3//" -e "s/ -Wl,-Bstatic//" -i Makefile
}

src_compile() {
	tc-export CXX
	emake || die "emake failed"
}

src_install() {
	insinto /usr/$(get_libdir)/vamp
	doins vamp-libxtract.{so,cat} || die "doins failed"
	dodoc README STATUS
}
