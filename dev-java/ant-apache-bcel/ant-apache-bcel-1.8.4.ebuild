# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"

ANT_TASK_DEPNAME="bcel"

inherit ant-tasks

KEYWORDS="amd64 ppc ppc64 x86 ~x86-fbsd ~x64-freebsd ~x86-freebsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"
IUSE=""

DEPEND=">=dev-java/bcel-5.1-r3:0"
RDEPEND="${DEPEND}"
