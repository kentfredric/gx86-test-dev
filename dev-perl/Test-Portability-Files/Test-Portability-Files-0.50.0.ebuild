# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

MODULE_AUTHOR=SAPER
MODULE_VERSION=0.05
inherit perl-module

DESCRIPTION="Check file names portability"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-File-Spec
	virtual/perl-Test-Simple"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"

SRC_TEST="do"
