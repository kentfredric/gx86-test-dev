# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit rpm

DESCRIPTION="firmware for the intel gma500 (poulsbo)"
HOMEPAGE="http://www.happyassassin.net/2009/05/13/native-poulsbo-gma-500-graphics-driver-for-fedora-10/"
SRC_URI="http://adamwill.fedorapeople.org/poulsbo/src/psb-firmware-0.30-3.fc11.src.rpm"

LICENSE="intel-psb"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND=""
RDEPEND=""

src_unpack() {
	rpm_src_unpack
}

src_install() {
	cd "${WORKDIR}/${PN}"
	insinto /lib/firmware
	doins msvdx_fw.bin
}
