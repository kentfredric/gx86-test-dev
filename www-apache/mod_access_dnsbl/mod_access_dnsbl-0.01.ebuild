# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit apache-module eutils

KEYWORDS="~amd64 ~x86"

DESCRIPTION="mod_access_dnsbl allows to specify access controls against a list of DNSBL zones"
HOMEPAGE="http://www.apacheconsultancy.com/modules/mod_access_dnsbl/"
SRC_URI="http://www.apacheconsultancy.com/modules/mod_access_dnsbl/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
IUSE=""

DEPEND="www-apache/mod_dnsbl_lookup"
RDEPEND="${DEPEND}"

APACHE2_MOD_CONF="10_${PN}"
APACHE2_MOD_DEFINE="DNSBL"

need_apache2_2
