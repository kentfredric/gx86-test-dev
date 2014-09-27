# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=RURBAN
MODULE_VERSION=1.18
inherit perl-module

DESCRIPTION='print debug info about ops'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	virtual/perl-ExtUtils-MakeMaker
	virtual/perl-Test-Simple
	"
RDEPEND="
	virtual/perl-Test-Simple
	"
SRC_TEST="do"
