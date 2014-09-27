# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
JAVA_PKG_IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

MY_P=${PN/-/.}-${PV}

DESCRIPTION="Dependency injection for Java (JSR-330)"
HOMEPAGE="http://code.google.com/p/atinject/"
SRC_URI="http://atinject.googlecode.com/files/${MY_P}-bundle.jar"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=virtual/jre-1.5"
DEPEND=">=virtual/jdk-1.5
	app-arch/unzip"

src_unpack() {
	unpack ${A}
	cd "${S}"
	unzip -q ${MY_P}-sources.jar || die
}

src_install() {
	java-pkg_dojar ${PN}.jar
	use doc && java-pkg_dojavadoc target/api
	use source && java-pkg_dosrc javax
}
