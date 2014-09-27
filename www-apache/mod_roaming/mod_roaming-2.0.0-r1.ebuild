# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit apache-module

KEYWORDS="x86"

DESCRIPTION="Apache2 module enabling Netscape Communicator roaming profiles"
HOMEPAGE="http://www.klomp.org/mod_roaming/"
SRC_URI="http://www.klomp.org/${PN}/${P}.tar.gz"
LICENSE="BSD"
SLOT="0"
IUSE=""

APACHE2_MOD_CONF="18_mod_roaming"
APACHE2_MOD_DEFINE="ROAMING"

DOCFILES="CHANGES INSTALL LICENSE README"

need_apache2

pkg_postinst() {
	install -d -m 0755 -o apache -g apache "${ROOT}"/var/lib/${PN}
	apache-module_pkg_postinst
}
