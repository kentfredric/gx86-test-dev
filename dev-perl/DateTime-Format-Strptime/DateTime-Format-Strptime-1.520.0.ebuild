# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

MODULE_AUTHOR=DROLSKY
MODULE_VERSION=1.52
inherit perl-module

DESCRIPTION="Parse and Format DateTimes using Strptime"

LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="amd64 x86 ~ppc-aix ~x64-macos ~x86-solaris"
IUSE=""

RDEPEND="
	>=dev-perl/DateTime-0.44
	>=dev-perl/DateTime-Locale-0.45
	>=dev-perl/DateTime-TimeZone-0.79
	>=dev-perl/Params-Validate-0.91"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31"

SRC_TEST=do
