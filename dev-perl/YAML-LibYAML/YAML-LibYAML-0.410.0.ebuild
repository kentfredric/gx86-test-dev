# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=INGY
MODULE_VERSION=0.41
inherit perl-module

DESCRIPTION='Perl YAML Serialization using XS and libyaml'
SRC_URI+=" http://dev.gentoo.org/~tove/distfiles/dev-perl/${PN}-0.380.0-patches.tar.gz"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

SRC_TEST="do"
PATCHES=(
	"${WORKDIR}"/${PN}-patches/0.380.0-format_string_flaws.patch
)
export OPTIMIZE="$CFLAGS"
