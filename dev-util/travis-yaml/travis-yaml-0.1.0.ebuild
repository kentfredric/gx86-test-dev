# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20"

RUBY_FAKEGEM_RECIPE_TEST="rspec"
RUBY_FAKEGEM_TASK_DOC="rdoc"
RUBY_FAKEGEM_EXTRADOC="README.md"

inherit ruby-fakegem

DESCRIPTION="Parses and validates your .travis.yml, fast and secure"
HOMEPAGE="https://github.com/travis-ci/travis-yaml"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

ruby_add_rdepend "dev-ruby/psych"

all_ruby_prepare() {
	sed -i -e "/bundler/d" -e "/coverage/d" spec/support.rb || die
	sed -i -e "1igem \"psych\"" -e "2irequire \"psych\"" spec/support/environment.rb || die
}
