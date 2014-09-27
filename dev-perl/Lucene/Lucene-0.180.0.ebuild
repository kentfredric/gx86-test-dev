# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

MODULE_AUTHOR=TBUSCH
MODULE_VERSION=0.18
inherit perl-module

DESCRIPTION="API to the C++ port of the Lucene search engine"

SLOT="0"
KEYWORDS="~amd64 ~x86 ~ppc"
IUSE=""

RDEPEND="dev-cpp/clucene"
DEPEND="${RDEPEND}"

SRC_TEST="do"
