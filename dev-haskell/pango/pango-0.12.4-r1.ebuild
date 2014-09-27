# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.9999

GTK_MAJ_VER="2"

#nocabaldep is for the fancy cabal-detection feature at build-time
CABAL_FEATURES="lib profile haddock hoogle hscolour nocabaldep"
inherit haskell-cabal

DESCRIPTION="Binding to the Pango text rendering engine"
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~alpha amd64 ~ia64 ppc ppc64 sparc x86"
IUSE=""

RDEPEND=">=dev-haskell/cairo-0.12.0:0=[profile?]
		<dev-haskell/cairo-0.13:0=[profile?]
		>=dev-haskell/glib-0.12.0:0=[profile?]
		<dev-haskell/glib-0.13:0=[profile?]
		dev-haskell/mtl:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		x11-libs/cairo
		x11-libs/pango"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		>=dev-haskell/gtk2hs-buildtools-0.12.4:0=
		virtual/pkgconfig"
