# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit eutils haskell-cabal

DESCRIPTION="Pure and impure Bloom Filter implementations"
HOMEPAGE="https://github.com/bos/bloomfilter"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux"
IUSE=""

RDEPEND="dev-haskell/deepseq:=[profile?]
		>=dev-lang/ghc-6.8.2:="
DEPEND="${RDEPEND}
		test? ( >=dev-haskell/quickcheck-2.4:2
			<dev-haskell/quickcheck-2.8:2
			dev-haskell/random
			dev-haskell/test-framework
			dev-haskell/test-framework-quickcheck2
		)
		>=dev-haskell/cabal-1.8"

src_prepare() {
	cabal_chdeps \
		'QuickCheck == 2.4.*' 'QuickCheck >= 2.4 && < 2.8'

	if has_version ">=dev-haskell/quickcheck-2.5"; then
		epatch "${FILESDIR}/${PN}-1.2.6.10-quickcheck-2.6.patch"
	fi
	epatch "${FILESDIR}/${PN}-1.2.6.10-ghc-7.7.patch"
}
