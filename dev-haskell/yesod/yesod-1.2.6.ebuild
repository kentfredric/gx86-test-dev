# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Creation of type-safe, RESTful web applications"
HOMEPAGE="http://www.yesodweb.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	>=dev-haskell/blaze-html-0.5:=[profile?]
	>=dev-haskell/blaze-markup-0.5.1:=[profile?]
	dev-haskell/conduit-extra:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/fast-logger:=[profile?]
	>=dev-haskell/hamlet-1.1:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?] <dev-haskell/monad-control-0.4:=[profile?]
	dev-haskell/monad-logger:=[profile?]
	dev-haskell/network-conduit:=[profile?]
	dev-haskell/safe:=[profile?]
	dev-haskell/shakespeare:=[profile?]
	>=dev-haskell/shakespeare-css-1.0:=[profile?]
	>=dev-haskell/shakespeare-js-1.0.2:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/transformers-0.2.2:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-haskell/wai-1.3:=[profile?]
	>=dev-haskell/wai-extra-1.3:=[profile?]
	>=dev-haskell/warp-1.3:=[profile?]
	dev-haskell/yaml:=[profile?]
	>=dev-haskell/yesod-auth-1.2:=[profile?] <dev-haskell/yesod-auth-1.4:=[profile?]
	>=dev-haskell/yesod-core-1.2.2:=[profile?] <dev-haskell/yesod-core-1.3:=[profile?]
	>=dev-haskell/yesod-form-1.3:=[profile?] <dev-haskell/yesod-form-1.4:=[profile?]
	>=dev-haskell/yesod-persistent-1.2:=[profile?] <dev-haskell/yesod-persistent-1.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
