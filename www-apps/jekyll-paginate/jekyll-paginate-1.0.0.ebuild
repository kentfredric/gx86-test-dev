# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20"

RUBY_FAKEGEM_RECIPE_TEST="rspec"
RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"

inherit ruby-fakegem

DESCRIPTION="Default pagination generator for Jekyll"
HOMEPAGE="https://github.com/jekyll/jekyll-paginate"
SRC_URI="https://github.com/jekyll/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

ruby_add_bdepend "test? ( >=www-apps/jekyll-2 )"

all_ruby_prepare() {
	rm Rakefile || die
}
