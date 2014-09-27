# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.3.9999

# disabled 'haddock hscolour hoogle' as haddock-2.10.0 fails on them
CABAL_FEATURES="lib profile"
inherit haskell-cabal

DESCRIPTION="Unicode"
HOMEPAGE="http://hackage.haskell.org/package/utf8-light"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"
