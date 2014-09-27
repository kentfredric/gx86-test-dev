# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4"
PYTHON_COMPAT=( python2_7 )
DISTUTILS_JOBS="1"

inherit python-r1 eutils distutils-r1

DESCRIPTION="A graphical journal with calendar, templates, tags, keyword searching, and export functionality"
HOMEPAGE="http://rednotebook.sourceforge.net"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="libyaml spell"

RDEPEND="${PYTHON_DEPS}
	dev-python/pyyaml[libyaml?]
	>=dev-python/pygtk-2.13
	>=dev-python/pywebkitgtk-1.1.5
	dev-python/chardet
	spell? ( dev-python/gtkspell-python )"
DEPEND="${RDEPEND}"

pkg_setup() {
	python_setup
}

src_prepare() {
	! use spell && epatch "${FILESDIR}/${PN}-1.6.5-disable-spell.patch"
}
