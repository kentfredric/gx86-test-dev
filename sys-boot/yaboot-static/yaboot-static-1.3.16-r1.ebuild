# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit eutils

DESCRIPTION="Static yaboot ppc boot loader for machines with open firmware"
### Generated by using quickpkg on a ppc32 machine, compiled with -O2 -pipe

HOMEPAGE="http://penguinppc.org/projects/yaboot/"
SRC_URI="mirror://gentoo/yaboot-static-${PV}.tbz2"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="-* ~ppc64"
IUSE="ibm"
DEPEND="!sys-boot/yaboot
		sys-apps/powerpc-utils"
RDEPEND="!ibm? ( sys-fs/hfsutils
				 sys-fs/hfsplusutils
				 sys-fs/mac-fdisk )"

src_install() {
	cp -pPR "${WORKDIR}"/* "${D}" || die "cp failed"
}
