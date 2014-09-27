# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="2"

inherit toolchain-funcs

DESCRIPTION="A phylogenetic tree drawing program which supports tree rooting"
HOMEPAGE="http://pbil.univ-lyon1.fr/software/njplot.html"
SRC_URI="ftp://pbil.univ-lyon1.fr/pub/mol_phylogeny/njplot/archive/njplot-${PV}.tar.gz"
LICENSE="public-domain"

SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="x11-libs/libXmu"
DEPEND="sci-biology/ncbi-tools[X]
	${RDEPEND}"

src_prepare() {
	sed -i -e 's|/banques0/ncbiJun04|/usr/include/ncbi|' \
		-e 's/CC = gcc/CC='$(tc-getCC)'/' -e 's/CFLAGS  =/CFLAGS +=/' \
		makefile || die
	sed -i -e "s%njplot.help%/usr/share/doc/${PF}/njplot.help%" njplot-vib.c || die
}

src_install() {
	dobin newicktops newicktotxt njplot unrooted || die
	doman *.1 || die
	dodoc README njplot.help
}
