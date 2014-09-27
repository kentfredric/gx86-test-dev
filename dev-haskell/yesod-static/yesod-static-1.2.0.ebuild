# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Static file serving subsite for Yesod Web Framework"
HOMEPAGE="http://www.yesodweb.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base64-bytestring-0.1.0.1:=[profile?]
		>=dev-haskell/cereal-0.3:=[profile?]
		>=dev-haskell/conduit-0.5:=[profile?]
		>=dev-haskell/crypto-conduit-0.4:=[profile?]
		>=dev-haskell/cryptohash-0.6.1:=[profile?]
		dev-haskell/data-default:=[profile?]
		>=dev-haskell/file-embed-0.0.4.1:=[profile?]
		<dev-haskell/file-embed-0.5:=[profile?]
		>=dev-haskell/http-types-0.7:=[profile?]
		>=dev-haskell/shakespeare-css-1.0.3:=[profile?]
		>=dev-haskell/system-fileio-0.3:=[profile?]
		>=dev-haskell/system-filepath-0.4.6:=[profile?]
		<dev-haskell/system-filepath-0.5:=[profile?]
		>=dev-haskell/text-0.9:=[profile?]
		>=dev-haskell/transformers-0.2.2:=[profile?]
		>=dev-haskell/unix-compat-0.2:=[profile?]
		>=dev-haskell/wai-1.3:=[profile?]
		<dev-haskell/wai-1.5:=[profile?]
		=dev-haskell/wai-app-static-1.3*:=[profile?]
		=dev-haskell/yesod-core-1.2*:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/hspec-1.3
		)"
