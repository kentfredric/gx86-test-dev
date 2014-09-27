# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI="4"

IUSE=""
MODS="thunderbird"
BASEPOL="2.20140311-r2"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for thunderbird"

KEYWORDS="amd64 x86"
DEPEND="${DEPEND}
	sec-policy/selinux-xserver
"
RDEPEND="${DEPEND}"
