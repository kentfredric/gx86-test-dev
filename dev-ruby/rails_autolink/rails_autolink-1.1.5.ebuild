# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19"

RUBY_FAKEGEM_RECIPE_TEST="none"
RUBY_FAKEGEM_RECIPE_DOC="rdoc"

inherit ruby-fakegem

DESCRIPTION="This is an extraction of the auto_link method from rails"
HOMEPAGE="http://github.com/tenderlove/rails_autolink"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc test"

# Restrict tests since they seem to be tied to very specific rails and
# test framework versions without making this explicit anywhere. Things
# seem to work for the most part with Rails 3.2 and Minitest 4.2.
RESTRICT="test"

ruby_add_bdepend "test? ( dev-ruby/minitest )"

ruby_add_rdepend ">=dev-ruby/rails-3.1"

each_ruby_test() {
	${RUBY} -Ilib test/test_*.rb || die "tests failed"
}
