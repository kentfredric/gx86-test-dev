# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI="5"

IUSE=""
MODS="phpfpm"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for phpfpm"

KEYWORDS="~amd64 ~x86"
DEPEND="${DEPEND}
	sec-policy/selinux-apache
"
RDEPEND="${DEPEND}"
