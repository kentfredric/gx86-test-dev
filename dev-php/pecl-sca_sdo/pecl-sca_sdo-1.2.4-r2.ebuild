# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

PHP_EXT_NAME="sdo"
PHP_EXT_PECL_PKG="SCA_SDO"
PHP_EXT_INI="yes"
PHP_EXT_ZENDEXT="no"

inherit eutils php-ext-pecl-r2

KEYWORDS="~amd64 ~x86"

DESCRIPTION="Service Component Architecture (SCA) and Service Data Objects (SDO) for PHP"
LICENSE="Apache-2.0"
SLOT="0"
IUSE="examples"

DEPEND=">=dev-lang/php-5.2[json,soap,xml]
	    || ( <dev-lang/php-5.3[pcre,reflection,spl] >=dev-lang/php-5.3.1 )"
RDEPEND="${DEPEND}"

src_prepare() {
	for slot in $(php_get_slots) ; do
		cd "${WORKDIR}/${slot}"
		epatch "${FILESDIR}"/${P}-gcc44.patch
		epatch "${FILESDIR}/${P}-php53.patch"
	done
	php-ext-source-r2_src_prepare
}

src_install() {
	php-ext-pecl-r2_src_install

	insinto /usr/share/php5
	doins -r DAS SCA
}
