# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# ebuild generated by hackport 0.2.13

EAPI=4

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Efficient Arrays"
HOMEPAGE="http://code.haskell.org/vector"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="alpha amd64 ia64 ppc ppc64 sparc x86 ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE=""

RDEPEND="=dev-haskell/primitive-0.4*[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.3"

src_prepare() {
	local can_spec_const="yes"

	ghc-supports-interpreter || can_spec_const="no"

	# ghci-less GHC can't do ANN #482960
	if [[ ${can_spec_const} == "no" ]]; then
		einfo "Disabling 'ForceSpecConstr' due to bug #482960"
		sed -e 's/{-# ANN type SPEC ForceSpecConstr #-}/{- # ANN type SPEC ForceSpecConstr #-}/' \
			-i Data/Vector/Fusion/Stream/Monadic.hs || die
	fi
}
