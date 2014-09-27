# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

OASIS_BUILD_DOCS=1

inherit oasis

DESCRIPTION="A cross-platform library for manipulating the terminal"
HOMEPAGE="http://forge.ocamlcore.org/projects/lambda-term/"
SRC_URI="http://forge.ocamlcore.org/frs/download.php/1136/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-ml/lwt-2.4.0:=[react]
	>=dev-ml/zed-1.2:="
RDEPEND="${DEPEND}"

DOCS=( "CHANGES.md" "README.md" )
