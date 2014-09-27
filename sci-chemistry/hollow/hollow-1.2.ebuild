# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"

PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit python

DESCRIPTION="Production of surface images of proteins"
HOMEPAGE="http://hollow.sourceforge.net/"
#SRC_URI="mirror://sourceforge/${P}.zip"
SRC_URI="http://hollow.sourceforge.net/${P}.zip"

SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
LICENSE="GPL-3"
IUSE=""

RDEPEND="sci-chemistry/pymol"
DEPEND="app-arch/unzip"

src_install() {
	rm -rf pdbstruct/.svn || die
	installation() {
		insinto $(python_get_sitedir)
		doins -r pdbstruct || die

		insinto $(python_get_sitedir)/${PN}
		doins *.py hollow.txt || die

		cat >> ${PN} <<- EOF
		$(PYTHON) -O "${EPREFIX}$(python_get_sitedir)/${PN}/${PN}.py" \$@
		EOF

		dobin ${PN}
	}
	python_execute_function installation

	dodoc README || die
}

pkg_postinst() {
	python_mod_optimize ${PN} pdbstruct
}

pkg_postrm() {
	python_mod_cleanup ${PN} pdbstruct
}
