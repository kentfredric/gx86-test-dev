# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A class for types that can be converted to a hash value"
HOMEPAGE="http://github.com/tibbe/hashable"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-haskell/text-0.11.0.5:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		test? ( >=dev-haskell/quickcheck-2.4.0.1
			=dev-haskell/random-1.0*
			>=dev-haskell/test-framework-0.3.3
			>=dev-haskell/test-framework-quickcheck2-0.2.9
		)
		>=dev-haskell/cabal-1.8"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-sse41 \
		--flag=-fixed-salt \
		--flag=-integer-gmp
}
