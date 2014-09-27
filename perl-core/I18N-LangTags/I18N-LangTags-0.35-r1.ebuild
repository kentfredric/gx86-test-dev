# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=SBURKE
MY_PN=I18N-LangTags
MY_P=${MY_PN}-${PV}
S=${WORKDIR}/${MY_P}
inherit perl-module

DESCRIPTION="RFC3066 language tag handling for Perl"
SRC_URI+=" http://dev.gentoo.org/~tove/files/${MY_P}-Detect-1.04.patch"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ppc ppc64 s390 sh sparc x86 ~amd64-fbsd ~x86-solaris"
IUSE=""

SRC_TEST="do"
PATCHES=( "${DISTDIR}"/${MY_P}-Detect-1.04.patch )
