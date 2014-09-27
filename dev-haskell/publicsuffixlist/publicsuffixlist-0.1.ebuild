# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Is a given string a domain suffix?"
HOMEPAGE="https://github.com/litherum/publicsuffixlist"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="dev-haskell/cereal:=[profile?]
		dev-haskell/data-default:=[profile?]
		>=dev-haskell/text-0.11:=[profile?]
		dev-haskell/utf8-string:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( dev-haskell/hunit
			>=dev-haskell/idna-0.1.1
			<dev-haskell/idna-1.0
		)"
