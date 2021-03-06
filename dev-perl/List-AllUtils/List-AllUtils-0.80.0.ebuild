# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=DROLSKY
MODULE_VERSION=0.08
inherit perl-module

DESCRIPTION='Combines List::Util and List::MoreUtils in one bite-sized package'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	virtual/perl-Exporter
	>=dev-perl/List-MoreUtils-0.280.0
	>=virtual/perl-Scalar-List-Utils-1.310.0
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	${RDEPEND}
	test? (
		virtual/perl-File-Temp
		>=virtual/perl-Test-Simple-0.880.0
		dev-perl/Test-Warnings
	)
"

SRC_TEST="do parallel"
