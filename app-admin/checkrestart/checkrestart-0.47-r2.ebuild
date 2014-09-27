# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"

inherit eutils

DESCRIPTION="the sysadmin's rolling upgrade tool"
HOMEPAGE="http://arcdraco.net/checkrestart"
SRC_URI="http://arcdraco.net/~dragon/${P}-sep.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~hppa ~x86"
IUSE=""

RDEPEND="
	=dev-lang/python-2*
	sys-apps/lsb-release
	app-portage/portage-utils
	sys-process/lsof
"

S=${WORKDIR}

src_prepare() {
	epatch "${FILESDIR}"/${P}-list-comprehension-fix.patch
	sed -i ${PN} -e '1{s|python|&2|g}' || die
}

src_install() {
	dosbin ${PN}
}
