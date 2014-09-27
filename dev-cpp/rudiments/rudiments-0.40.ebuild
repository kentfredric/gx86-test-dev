# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

inherit autotools eutils

DESCRIPTION="C++ class library for daemons, clients and servers"
HOMEPAGE="http://rudiments.sourceforge.net/"
SRC_URI="mirror://sourceforge/rudiments/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="debug pcre ssl static-libs"

DEPEND="pcre? ( dev-libs/libpcre )
	ssl? ( dev-libs/openssl )"
RDEPEND="${DEPEND}"

src_prepare() {
	epatch "${FILESDIR}/${PV}-configure.patch"
	eautoconf
}

src_configure() {
	econf \
		--docdir="/usr/share/doc/${PF}/html" \
		$(use_enable debug) \
		$(use_enable pcre) \
		$(use_enable ssl) \
		$(use_enable static-libs static)
}

src_install() {
	default
	prune_libtool_files
}
