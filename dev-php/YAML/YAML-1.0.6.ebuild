# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

PEAR_PV="1.0.6"
PHP_PEAR_PKG_NAME="YAML"

inherit php-pear-r1

DESCRIPTION="The Symfony YAML Component"
HOMEPAGE="http://pear.symfony-project.com"
SRC_URI="http://pear.symfony-project.com//get/YAML-1.0.6.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 hppa x86"
IUSE=""

DEPEND=">=dev-lang/php-5.2.4
	>=dev-php/pear-1.4.1"
RDEPEND="${DEPEND}"
