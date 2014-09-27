# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

RESTRICT="mirror bindist"

DESCRIPTION="Firmware for the Technotrend S2-6400 DVB Card"
HOMEPAGE="http://www.aregel.de/"
SRC_URI="http://www.aregel.de/file_download/23/dvb-ttpremium-st7109-01_v0_4_0.zip
		http://www.aregel.de/file_download/14/dvb-ttpremium-fpga-01_v1_09.zip
		http://www.aregel.de/file_download/7/dvb-ttpremium-loader-01_v1_03.zip"

LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND="${DEPEND}"

S=${WORKDIR}

src_install() {
	insinto /lib/firmware
	doins dvb-ttpremium-fpga-01.fw dvb-ttpremium-loader-01.fw dvb-ttpremium-st7109-01.fw
}
