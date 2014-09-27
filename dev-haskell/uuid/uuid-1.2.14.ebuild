# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="For creating, comparing, parsing and printing Universally Unique Identifiers"
HOMEPAGE="http://projects.haskell.org/uuid/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.4:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	>=dev-haskell/cryptohash-0.7:=[profile?] <dev-haskell/cryptohash-0.11:=[profile?]
	>=dev-haskell/maccatcher-1.0:=[profile?] <dev-haskell/maccatcher-2.2:=[profile?]
	>=dev-haskell/random-1.0.1:=[profile?] <dev-haskell/random-1.1:=[profile?]
	>=dev-lang/ghc-6.12.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8.0.2
	test? ( >=dev-haskell/criterion-0.4 <dev-haskell/criterion-0.9
		>=dev-haskell/deepseq-1.1 <dev-haskell/deepseq-1.4
		>=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.3
		dev-haskell/mersenne-random-pure64
		>=dev-haskell/quickcheck-2.4 <dev-haskell/quickcheck-2.7
		>=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.3 <dev-haskell/test-framework-hunit-0.4
		>=dev-haskell/test-framework-quickcheck2-0.3 <dev-haskell/test-framework-quickcheck2-0.4 )
"
