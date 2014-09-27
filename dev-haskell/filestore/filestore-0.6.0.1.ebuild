# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Interface for versioning file stores"
HOMEPAGE="http://hackage.haskell.org/package/filestore"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+maxcount"

RDEPEND=">=dev-haskell/diff-0.2:=[profile?]
		<dev-haskell/diff-0.4:=[profile?]
		>=dev-haskell/parsec-2:=[profile?]
		<dev-haskell/parsec-3.2:=[profile?]
		>=dev-haskell/split-0.1:=[profile?]
		<dev-haskell/split-0.3:=[profile?]
		=dev-haskell/utf8-string-0.3*:=[profile?]
		=dev-haskell/xml-1.3*:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.10
		test? ( =dev-haskell/hunit-1.2*
			dev-haskell/mtl
		)"

src_prepare() {
	cabal_chdeps \
		'process >= 1.0 && < 1.2' 'process >= 1.0 && < 1.3'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag maxcount maxcount)
}

pkg_postinst() {
	ghc-package_pkg_postinst

	elog "${PN} requires either dev-vcs/darcs or dev-vcs/git to work."
	elog "Please install one of these DVCS packages to fully utilise ${PN}."
	elog "(These aren't in RDEPEND in case you are just using filestore to program.)"
}
