# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

inherit vim-plugin vcs-snapshot

DESCRIPTION="vim plugin: automatic reloading of vim scripts"
HOMEPAGE="http://peterodding.com/code/vim/reload/"
SRC_URI="https://github.com/xolox/vim-${PN}/tarball/${PV} -> ${P}.tar.gz"
LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="app-vim/xolox-misc"

VIM_PLUGIN_HELPFILES="${PN}.txt"

src_prepare() {
	rm INSTALL.md README.md || die
	rm -r autoload/xolox/misc || die
}
