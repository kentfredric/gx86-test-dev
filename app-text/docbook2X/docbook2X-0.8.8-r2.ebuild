# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"

WANT_AUTOMAKE="1.12"

inherit autotools eutils

DESCRIPTION="Tools to convert docbook to man and info"
SRC_URI="mirror://sourceforge/docbook2x/${P}.tar.gz"
HOMEPAGE="http://docbook2x.sourceforge.net/"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ppc ppc64 s390 sh sparc x86 ~amd64-fbsd ~x86-fbsd ~x86-linux ~x86-solaris"
IUSE="test"
LICENSE="MIT"

# dev-perl/XML-LibXML - although not mentioned upstream is required
# for make check to complete.
DEPEND="dev-lang/perl
	dev-libs/libxslt
	dev-perl/XML-NamespaceSupport
	dev-perl/XML-SAX
	dev-perl/XML-LibXML
	app-text/docbook-xsl-stylesheets
	=app-text/docbook-xml-dtd-4.2*"
RDEPEND="${DEPEND}"

src_prepare() {
	# Patches from debian, for description see patches itself.
	epatch "${FILESDIR}"/${P}-filename_whitespace_handling.patch
	epatch "${FILESDIR}"/${P}-preprocessor_declaration_syntax.patch
	epatch "${FILESDIR}"/${P}-error_on_missing_refentry.patch

	eautoreconf #290284
}

src_configure() {
	econf \
		--with-xslt-processor=libxslt \
		--program-transform-name='/^docbook2/s,$,.pl,'
}
