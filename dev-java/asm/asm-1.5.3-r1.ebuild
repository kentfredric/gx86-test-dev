# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4
inherit java-pkg-2 java-ant-2

DESCRIPTION="Bytecode manipulation framework for Java"
HOMEPAGE="http://asm.objectweb.org"
SRC_URI="http://download.forge.objectweb.org/${PN}/${P}.tar.gz"
LICENSE="BSD"
SLOT="1.5"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86 ~amd64-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos"
IUSE="doc source"
DEPEND=">=virtual/jdk-1.3
	dev-java/ant-core
	dev-java/ant-owanttask
	source? ( app-arch/zip )"
RDEPEND=">=virtual/jre-1.3"

RESTRICT="test"

src_prepare() {
	echo "objectweb.ant.tasks.path ${EPREFIX}/usr/share/ant-owanttask/lib/ow_util_ant_tasks.jar" \
		>> build.properties
}

EANT_DOC_TARGET=jdoc

src_install() {
	for x in output/dist/lib/*.jar ; do
		java-pkg_newjar ${x} $(basename ${x/-${PV}})
	done
	use doc && java-pkg_dohtml -r output/dist/doc/javadoc/user/*
	use source && java-pkg_dosrc src/*
}
