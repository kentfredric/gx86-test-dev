# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit eutils

DESCRIPTION="a high level library for C++ designed to make easier the creation and decoding of network packets"
HOMEPAGE="https://code.google.com/p/libcrafter/"
SRC_URI="https://dev.gentoo.org/~jer/libcrafter-${PV}.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="pcap static-libs"

DEPEND="
	pcap? ( net-libs/libpcap )
"

S=${WORKDIR}/${P}/${PN}

src_configure() {
	econf \
		$(use_enable static-libs static) \
		$(use_with pcap libpcap)
}

src_install() {
	default

	prune_libtool_files
}
