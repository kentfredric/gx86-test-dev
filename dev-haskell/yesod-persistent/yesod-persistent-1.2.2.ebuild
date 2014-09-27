# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Some helpers for using Persistent from Yesod"
HOMEPAGE="http://www.yesodweb.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/blaze-builder:=[profile?]
	dev-haskell/conduit:=[profile?]
	dev-haskell/lifted-base:=[profile?]
	>=dev-haskell/persistent-1.2:=[profile?] <dev-haskell/persistent-1.3:=[profile?]
	>=dev-haskell/persistent-template-1.2:=[profile?] <dev-haskell/persistent-template-1.3:=[profile?]
	dev-haskell/pool-conduit:=[profile?]
	dev-haskell/resourcet:=[profile?]
	>=dev-haskell/transformers-0.2.2:=[profile?] <dev-haskell/transformers-0.4:=[profile?]
	>=dev-haskell/yesod-core-1.2.2:=[profile?] <dev-haskell/yesod-core-1.3:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( dev-haskell/hspec
		dev-haskell/persistent-sqlite
		dev-haskell/text
		dev-haskell/wai-test )
"
