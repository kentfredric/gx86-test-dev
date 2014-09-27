# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Meta package for Yesod"
HOMEPAGE="http://www.yesodweb.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.7.0.1:=[profile?]
	>=dev-haskell/ansi-terminal-0.6.1.1:=[profile?]
	>=dev-haskell/asn1-encoding-0.8.1.2:=[profile?]
	>=dev-haskell/asn1-parse-0.8.1:=[profile?]
	>=dev-haskell/asn1-types-0.2.3:=[profile?]
	>=dev-haskell/attoparsec-0.11.1.0:=[profile?]
	>=dev-haskell/attoparsec-conduit-1.0.1.2:=[profile?]
	>=dev-haskell/authenticate-1.3.2.6:=[profile?]
	>=dev-haskell/base-unicode-symbols-0.2.2.4:=[profile?]
	>=dev-haskell/base64-bytestring-1.0.0.1:=[profile?]
	>=dev-haskell/blaze-builder-0.3.3.2:=[profile?]
	>=dev-haskell/blaze-builder-conduit-1.0.0:=[profile?]
	>=dev-haskell/blaze-html-0.7.0.1:=[profile?]
	>=dev-haskell/blaze-markup-0.6.0.0:=[profile?]
	>=dev-haskell/byteable-0.1.1:=[profile?]
	>=dev-haskell/byteorder-1.0.4:=[profile?]
	>=dev-haskell/case-insensitive-1.1.0.3:=[profile?]
	>=dev-haskell/cereal-0.4.0.1:=[profile?]
	>=dev-haskell/cipher-aes-0.2.6:=[profile?]
	>=dev-haskell/cipher-rc4-0.1.4:=[profile?]
	>=dev-haskell/clientsession-0.9.0.3:=[profile?]
	>=dev-haskell/conduit-1.0.14:=[profile?]
	>=dev-haskell/connection-0.2.0:=[profile?]
	>=dev-haskell/control-monad-loop-0.1:=[profile?]
	>=dev-haskell/cookie-0.4.0.1:=[profile?]
	>=dev-haskell/cprng-aes-0.5.2:=[profile?]
	>=dev-haskell/crypto-api-0.13:=[profile?]
	>=dev-haskell/crypto-cipher-types-0.0.9:=[profile?]
	>=dev-haskell/crypto-conduit-0.5.2.2:=[profile?]
	>=dev-haskell/crypto-numbers-0.2.3:=[profile?]
	>=dev-haskell/crypto-pubkey-0.2.4:=[profile?]
	>=dev-haskell/crypto-pubkey-types-0.4.1:=[profile?]
	>=dev-haskell/crypto-random-0.0.7:=[profile?]
	>=dev-haskell/cryptohash-0.11.2:=[profile?]
	>=dev-haskell/cryptohash-cryptoapi-0.1.0:=[profile?]
	>=dev-haskell/css-text-0.1.1:=[profile?]
	>=dev-haskell/data-default-0.5.3:=[profile?]
	>=dev-haskell/data-default-class-0.0.1:=[profile?]
	>=dev-haskell/data-default-instances-base-0.0.1:=[profile?]
	>=dev-haskell/data-default-instances-containers-0.0.1:=[profile?]
	>=dev-haskell/data-default-instances-dlist-0.0.1:=[profile?]
	>=dev-haskell/data-default-instances-old-locale-0.0.1:=[profile?]
	>=dev-haskell/dlist-0.6.0.1:=[profile?]
	>=dev-haskell/email-validate-2.0.1:=[profile?]
	>=dev-haskell/entropy-0.2.2.4:=[profile?]
	>=dev-haskell/esqueleto-1.3.4.5:=[profile?]
	>=dev-haskell/failure-0.2.0.1:=[profile?]
	>=dev-haskell/fast-logger-2.1.5:=[profile?]
	>=dev-haskell/file-embed-0.0.6:=[profile?]
	>=dev-haskell/filesystem-conduit-1.0.0.1:=[profile?]
	>=dev-haskell/hamlet-1.1.7.7:=[profile?]
	>=dev-haskell/hjsmin-0.1.4.5:=[profile?]
	>=dev-haskell/hspec-1.8.3:=[profile?]
	>=dev-haskell/hspec-expectations-0.5.0.1:=[profile?]
	>=dev-haskell/html-conduit-1.1.0.1:=[profile?]
	>=dev-haskell/http-client-0.2.2.2:=[profile?]
	>=dev-haskell/http-client-conduit-0.2.0.1:=[profile?]
	>=dev-haskell/http-client-tls-0.2.1.1:=[profile?]
	>=dev-haskell/http-conduit-2.0.0.5:=[profile?]
	>=dev-haskell/http-date-0.0.4:=[profile?]
	>=dev-haskell/http-types-0.8.3:=[profile?]
	>=dev-haskell/language-javascript-0.5.8:=[profile?]
	>=dev-haskell/lifted-base-0.2.2.0:=[profile?]
	>=dev-haskell/mime-mail-0.4.4:=[profile?]
	>=dev-haskell/mime-types-0.1.0.3:=[profile?]
	>=dev-haskell/mmorph-1.0.2:=[profile?]
	>=dev-haskell/monad-control-0.3.2.3:=[profile?]
	>=dev-haskell/monad-logger-0.3.4.0:=[profile?]
	>=dev-haskell/monad-loops-0.4.2:=[profile?]
	>=dev-haskell/network-conduit-1.0.2.2:=[profile?]
	>=dev-haskell/optparse-applicative-0.7.0.2:=[profile?]
	>=dev-haskell/path-pieces-0.1.3.1:=[profile?]
	>=dev-haskell/pem-0.2.1:=[profile?]
	>=dev-haskell/persistent-1.3.0.2:=[profile?]
	>=dev-haskell/persistent-template-1.3.1.1:=[profile?]
	>=dev-haskell/pool-conduit-0.1.2:=[profile?]
	>=dev-haskell/primitive-0.5.1.0:=[profile?]
	>=dev-haskell/process-conduit-1.0.0.1:=[profile?]
	>=dev-haskell/publicsuffixlist-0.1:=[profile?]
	>=dev-haskell/puremd5-2.1.2.1:=[profile?]
	>=dev-haskell/pwstore-fast-2.4.1:=[profile?]
	>=dev-haskell/quickcheck-io-0.1.0:=[profile?]
	>=dev-haskell/resource-pool-0.2.1.1:=[profile?]
	>=dev-haskell/resourcet-0.4.10:=[profile?]
	>=dev-haskell/safe-0.3.4:=[profile?]
	>=dev-haskell/scientific-0.2.0.1:=[profile?]
	>=dev-haskell/securemem-0.1.3:=[profile?]
	>=dev-haskell/semigroups-0.12.2:=[profile?]
	>=dev-haskell/setenv-0.1.1.1:=[profile?]
	>=dev-haskell/sha-1.6.4:=[profile?]
	>=dev-haskell/shakespeare-1.2.0.4:=[profile?]
	>=dev-haskell/shakespeare-css-1.0.6.6:=[profile?]
	>=dev-haskell/shakespeare-i18n-1.0.0.5:=[profile?]
	>=dev-haskell/shakespeare-js-1.2.0.3:=[profile?]
	>=dev-haskell/shakespeare-text-1.0.1:=[profile?]
	>=dev-haskell/silently-1.2.4.1:=[profile?]
	>=dev-haskell/simple-sendfile-0.2.13:=[profile?]
	>=dev-haskell/skein-1.0.8.1:=[profile?]
	>=dev-haskell/socks-0.5.4:=[profile?]
	>=dev-haskell/stm-chans-3.0.0:=[profile?]
	>=dev-haskell/stringsearch-0.3.6.5:=[profile?]
	>=dev-haskell/system-fileio-0.3.12:=[profile?]
	>=dev-haskell/system-filepath-0.4.9:=[profile?]
	>=dev-haskell/tagged-0.7:=[profile?]
	>=dev-haskell/tagsoup-0.13.1:=[profile?]
	>=dev-haskell/tagstream-conduit-0.5.5:=[profile?]
	>=dev-haskell/text-stream-decode-0.1.0.3:=[profile?]
	>=dev-haskell/tls-1.2.2:=[profile?]
	>=dev-haskell/transformers-base-0.4.1:=[profile?]
	>=dev-haskell/unix-compat-0.4.1.1:=[profile?]
	>=dev-haskell/unordered-containers-0.2.3.3:=[profile?]
	>=dev-haskell/utf8-light-0.4.2:=[profile?]
	>=dev-haskell/utf8-string-0.3.7:=[profile?]
	>=dev-haskell/vector-0.10.9.1:=[profile?]
	>=dev-haskell/void-0.6.1:=[profile?]
	>=dev-haskell/wai-2.0.0:=[profile?]
	>=dev-haskell/wai-app-static-2.0.0.2:=[profile?]
	>=dev-haskell/wai-extra-2.0.3.3:=[profile?]
	>=dev-haskell/wai-logger-2.1.1:=[profile?]
	>=dev-haskell/wai-test-2.0.0.1:=[profile?]
	>=dev-haskell/warp-2.0.3.3:=[profile?]
	>=dev-haskell/warp-tls-2.0.2:=[profile?]
	>=dev-haskell/word8-0.0.4:=[profile?]
	>=dev-haskell/x509-1.4.7:=[profile?]
	>=dev-haskell/x509-store-1.4.4:=[profile?]
	>=dev-haskell/x509-system-1.4.2:=[profile?]
	>=dev-haskell/x509-validation-1.5.0:=[profile?]
	>=dev-haskell/xml-conduit-1.1.0.9:=[profile?]
	>=dev-haskell/xml-types-0.3.4:=[profile?]
	>=dev-haskell/xss-sanitize-0.3.4.2:=[profile?]
	>=dev-haskell/yaml-0.8.7.2:=[profile?]
	>=dev-haskell/yesod-1.2.5:=[profile?]
	>=dev-haskell/yesod-auth-1.2.5.3:=[profile?]
	>=dev-haskell/yesod-core-1.2.6.7:=[profile?]
	>=dev-haskell/yesod-form-1.3.5.1:=[profile?]
	>=dev-haskell/yesod-persistent-1.2.2.1:=[profile?]
	>=dev-haskell/yesod-routes-1.2.0.6:=[profile?]
	>=dev-haskell/yesod-static-1.2.2.1:=[profile?]
	>=dev-haskell/yesod-test-1.2.1:=[profile?]
	>=dev-haskell/zlib-bindings-0.1.1.3:=[profile?]
	>=dev-haskell/zlib-conduit-1.0.0:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"

src_prepare() {
	cabal_chdeps \
		' == ' ' >= '
}
