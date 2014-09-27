# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="A remote security scanner"
HOMEPAGE="http://www.openvas.org/"
DEPEND=">=net-analyzer/openvas-libraries-6.0.0
	>=net-analyzer/openvas-scanner-3.4.0
	>=net-analyzer/openvas-manager-4.0.1
	>=net-analyzer/openvas-administrator-1.3.0
	>=net-analyzer/openvas-cli-1.2.0
	>=net-analyzer/greenbone-security-assistant-4.0.1"
# greenbone-security-desktop is broken and unsupported upstream
RDEPEND="${DEPEND}"
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""
