# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

GNOME_ORG_MODULE="gnome-python-desktop"
G_PY_BINDINGS=( evolution evolution_ecal )
PYTHON_COMPAT=( python2_7 )

inherit gnome-python-common-r1

DESCRIPTION="Python bindings for Evolution and Evolution Data Server"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd"
IUSE=""

RDEPEND="dev-python/libbonobo-python:2[${PYTHON_USEDEP}]
	<gnome-extra/evolution-data-server-3.6
	!<dev-python/gnome-python-desktop-2.22.0-r10"
DEPEND="${RDEPEND}"
