# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"

TEXLIVE_MODULE_CONTENTS="epsf fontname genmisc kastrup multido path tex-ps ulem collection-genericrecommended
"
TEXLIVE_MODULE_DOC_CONTENTS="epsf.doc fontname.doc kastrup.doc multido.doc path.doc tex-ps.doc ulem.doc "
TEXLIVE_MODULE_SRC_CONTENTS="kastrup.source multido.source "
inherit  texlive-module
DESCRIPTION="TeXLive Recommended generic packages"

LICENSE="GPL-2 GPL-1 LPPL-1.3 public-domain TeX-other-free"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 s390 sh sparc x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~x64-solaris ~x86-solaris"
IUSE=""
DEPEND=">=dev-texlive/texlive-basic-2011
!=dev-texlive/texlive-basic-2007*
!<dev-texlive/texlive-texinfo-2009
!<dev-texlive/texlive-latexextra-2010
"
RDEPEND="${DEPEND} "
