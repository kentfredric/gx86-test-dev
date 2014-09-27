# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EBOV="6.1.0"

inherit embassy

DESCRIPTION="EMBOSS wrappers for applications from the CBS group"
SRC_URI="ftp://emboss.open-bio.org/pub/EMBOSS/old/${EBOV}/EMBOSS-${EBOV}.tar.gz
	mirror://gentoo/embassy-${EBOV}-${PN:8}-${PV}.tar.gz"

KEYWORDS="~amd64 ~ppc ~x86 ~amd64-linux ~x86-linux ~ppc-macos"
