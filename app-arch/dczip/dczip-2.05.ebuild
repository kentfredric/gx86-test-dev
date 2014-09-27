# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

DESCRIPTION="dcZip is an archiving program for managing various compression file formats"
HOMEPAGE="http://www.davidcampaign.net/dczip.html"
SRC_URI="http://www.davidcampaign.net/files/${PN}.jar"
LICENSE="freedist"
SLOT="0"
KEYWORDS="~amd64 ppc x86"
IUSE=""
DEPEND=""
RDEPEND=">=virtual/jre-1.3"

S="${WORKDIR}"

src_unpack() {
	cp "${DISTDIR}/${A}" "${WORKDIR}"
}

src_install() {
	insinto /opt/${PN}/lib
	doins ${PN}.jar

	echo "#!/bin/sh" > ${PN}
	echo "cd /opt/${PN}" >> ${PN}
	echo '${JAVA_HOME}'/bin/java -jar lib/${PN}.jar '$*' >> ${PN}

	into /opt
	dobin ${PN}
}
