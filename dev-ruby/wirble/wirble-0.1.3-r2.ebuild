# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19"

RUBY_FAKEGEM_DOCDIR="doc"
RUBY_FAKEGEM_EXTRADOC="README ChangeLog"

RUBY_FAKEGEM_TASK_TEST=""

inherit ruby-fakegem

DESCRIPTION="Wirble is a set of enhancements for Irb"
HOMEPAGE="http://pablotron.org/software/wirble/"

LICENSE="Ruby"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE=""

pkg_postinst() {
	elog "The quick way to use wirble is to make your ~/.irbrc look like this:"
	elog "  # load libraries"
	elog "  require 'rubygems'"
	elog "  require 'wirble'"
	elog "  "
	elog "  # start wirble (with color)"
	elog "  Wirble.init"
	elog "  Wirble.colorize"
}
