# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# ebuild generated by hackport 0.2.13

EAPI="4"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit base haskell-cabal

DESCRIPTION="A class for types that can be converted to a hash value"
HOMEPAGE="http://github.com/tibbe/hashable"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="=dev-haskell/text-0.11*
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/cabal-1.10
			>=dev-haskell/test-framework-0.3.3[profile?] <dev-haskell/test-framework-0.7[profile?]
			>=dev-haskell/test-framework-quickcheck2-0.2.9[profile?] <dev-haskell/test-framework-quickcheck2-0.3[profile?]
			>=dev-haskell/quickcheck-2.4.0.1[profile?]
		)"

src_prepare() {
	sed -e 's@test-framework >= 0.3.3 && < 0.6@test-framework >= 0.3.3 \&\& < 0.7@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen depdencies"
}

src_configure() {
	cabal_src_configure $(use_enable test tests)
}
