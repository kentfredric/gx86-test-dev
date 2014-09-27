# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Public Key cryptography"
HOMEPAGE="http://github.com/vincenthz/hs-crypto-pubkey"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/crypto-numbers:=[profile?]
		=dev-haskell/crypto-pubkey-types-0.4*:=[profile?]
		=dev-haskell/crypto-random-api-0.2*:=[profile?]
		>=dev-haskell/cryptohash-0.8:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( dev-haskell/hunit
			>=dev-haskell/quickcheck-2
			>=dev-haskell/test-framework-0.3.3
			dev-haskell/test-framework-hunit
			>=dev-haskell/test-framework-quickcheck2-0.2.9
		)"
