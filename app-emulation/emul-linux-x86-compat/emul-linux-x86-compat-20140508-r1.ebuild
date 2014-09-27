# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="32 bit lib-compat and libstdc++-v3 (compatibility metapackage)"
HOMEPAGE="http://dev.gentoo.org/~pacho/emul.html"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="-* ~amd64"
IUSE=""

DEPEND=""
RDEPEND="sys-libs/lib-compat
	sys-libs/libstdc++-v3[multilib]"
