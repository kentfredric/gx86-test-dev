# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="2"

inherit eutils pam

DESCRIPTION="Provides Access to Netware services using the NCP protocol"
HOMEPAGE="ftp://platan.vc.cvut.cz/pub/linux/ncpfs/"
SRC_URI="ftp://platan.vc.cvut.cz/pub/linux/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc ppc64 x86"
IUSE="nls pam php"

DEPEND="nls? ( sys-devel/gettext )
	pam? ( virtual/pam )
	php? ( || ( dev-lang/php virtual/httpd-php ) )"

RDEPEND="${DEPEND}"

src_prepare() {
	# Add patch for PHP extension sandbox violation
	epatch "${FILESDIR}"/${PN}-2.2.5-php.patch
	epatch "${FILESDIR}"/${P}-gcc4.patch
	epatch "${FILESDIR}"/${P}-missing-includes.patch

	# Add a patch to fix multiple vulnerabilities.
	# CVE-2010-0788, CVE-2010-0790, & CVE-2010-0791.
	# http://seclists.org/fulldisclosure/2010/Mar/122
	epatch "${FILESDIR}"/${P}-multiple-vulns.patch

	# Add a patch that removes the __attribute__((packed)); directive
	# from several struct members in include/ncp/ncplib.h.  This will
	# cut down on a large number of compile warnings generated by modern
	# gcc releases.
	epatch "${FILESDIR}"/${P}-remove-packed-attrib.patch

	# Bug #273484
	sed -i '/ldconfig/d' lib/Makefile.in

	# Hack to inject LDFLAGS into the build
	sed -i '/^LIBS/s:=:= @LDFLAGS@:' `find -name Makefile.in` || die
}

src_configure() {
	econf \
		$(use_enable nls) \
		$(use_enable pam pam "$(getpam_mod_dir)") \
		$(use_enable php)
}

src_install() {
	dodir $(getpam_mod_dir) /usr/sbin /sbin

	# Install the main programs, then the headers.
	emake DESTDIR="${D}" install || die
	emake DESTDIR="${D}" install-dev || die

	# Install a startup script in /etc/init.d and a conf file in /etc/conf.d
	newconfd "${FILESDIR}"/ipx.confd ipx
	newinitd "${FILESDIR}"/ipx.init ipx

	# Docs
	dodoc FAQ README
}
