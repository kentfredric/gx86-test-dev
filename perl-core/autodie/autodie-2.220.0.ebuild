# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=PJF
MODULE_VERSION=2.22
inherit perl-module

DESCRIPTION='Replace functions with ones that succeed or die with lexical scope'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

SRC_TEST="do"
