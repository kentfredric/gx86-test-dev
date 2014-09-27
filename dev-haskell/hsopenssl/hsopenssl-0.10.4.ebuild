# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="HsOpenSSL"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Partial OpenSSL binding for Haskell"
HOMEPAGE="https://github.com/phonohawk/HsOpenSSL"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+fast-bignum"

RDEPEND=">=dev-haskell/network-2.1.0.0:=[profile?]
	>=dev-lang/ghc-6.12.1:=
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8.0.2
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag fast-bignum fast-bignum)
}
