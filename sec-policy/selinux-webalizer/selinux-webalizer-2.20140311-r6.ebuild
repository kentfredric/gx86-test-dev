# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI="5"

IUSE=""
MODS="webalizer"

DEPEND="sec-policy/selinux-apache"
RDEPEND="${DEPEND}"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for webalizer"

KEYWORDS="~amd64 ~x86"
