# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

MODULE_AUTHOR="DCOPPIT"
MODULE_VERSION="0.7102"

inherit perl-module

DESCRIPTION="Perl code benchmarking tool"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-perl/Statistics-TTest"
