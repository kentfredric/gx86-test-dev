# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

MODULE_AUTHOR=DANIEL
MODULE_VERSION=0.07
inherit perl-module

DESCRIPTION="Seamless DB schema up- and downgrades"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-perl/File-Slurp
	virtual/perl-File-Spec
	dev-perl/DBI
	dev-perl/Class-Accessor"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
	test? (
		dev-perl/DBD-SQLite
	)"

SRC_TEST=do
