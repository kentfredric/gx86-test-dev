# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

MODULE_AUTHOR=PERIGRIN
MODULE_VERSION=1.29
inherit perl-module

DESCRIPTION="Wrapper Class for the various JSON classes"

SLOT="0"
KEYWORDS="~amd64 ~x86 ~x64-macos ~x86-solaris"
IUSE=""

DEPEND="
	dev-perl/JSON
	>=dev-perl/JSON-XS-2.3
"
RDEPEND="${DEPEND}"

SRC_TEST=do
