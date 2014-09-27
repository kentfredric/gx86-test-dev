# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit eutils git-r3

DESCRIPTION="Common linux commands in a multicall binary"
HOMEPAGE="http://landley.net/code/toybox/"
EGIT_REPO_URI="https://github.com/gfto/toybox.git"

# The source code does not explicitly say that it's BSD, but the author has repeatedly said it
LICENSE="BSD-2"
SLOT="0"
KEYWORDS=""
IUSE=""

src_configure() {
	make defconfig || die
}

src_compile() {
	emake || die
}

src_test() {
	emake test || die
}

src_install() {
	mkdir -p "${D}/usr/bin"
	cp toybox "${D}/usr/bin" || die
}
