# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

RUBY_FAKEGEM_EXTRADOC="History.txt README.rdoc"
RUBY_FAKEGEM_RECIPE_DOC="yard"
RUBY_FAKEGEM_RECIPE_TEST="rspec"

inherit ruby-fakegem

DESCRIPTION="Descriptive configuration files for Ruby written in Ruby"
HOMEPAGE="https://rubygems.org/gems/adhearsion-loquacious"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

all_ruby_prepare() {
	sed -i -e "/guard/d"\
		-e "/git ls-files/d"\
		-e "s/, \[\"~> 2.7.0\"\]//"\
		-e "/gntp/d"\
		loquacious.gemspec || die
	sed -i -e "/[Bb]undler/d" spec/spec_helper.rb || die
}
