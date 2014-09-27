# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

CABAL_FEATURES="lib profile haddock"
inherit haskell-cabal

DESCRIPTION="Bindings to the editline library (libedit)"
HOMEPAGE="http://code.haskell.org/editline"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.6.1
		dev-libs/libedit"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"
