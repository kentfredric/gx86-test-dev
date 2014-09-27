# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

inherit apache-module eutils toolchain-funcs

KEYWORDS="~amd64 ~x86"

DESCRIPTION="Apache2 modules to debug segmentation faults in threads"
HOMEPAGE="http://people.apache.org/~trawick/exception_hook.html"
SRC_URI="mirror://gentoo/${P}.c"
LICENSE="Apache-2.0"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND=""

APACHE2_MOD_CONF="10_${PN}"
APACHE2_MOD_DEFINE="WHATKILLEDUS"

need_apache2_2

RDEPEND+="
	www-servers/apache:2[debug]"

src_unpack() {
	mkdir -p "${S}" || die "mkdir S failed"
	cp -f "${DISTDIR}/${P}.c" "${S}/${PN}.c" || die "source copy failed"
}

src_compile() {
	$(tc-getCC) \
		$(/usr/bin/apr-1-config --includes) \
		$(/usr/bin/apr-1-config --cppflags) \
		${CFLAGS} ${LDFLAGS} \
		-o "${S}"/gen_test_char \
		"${FILESDIR}"/gen_test_char.c
	"${S}"/gen_test_char > "${S}"/test_char.h
	apache-module_src_compile
}
