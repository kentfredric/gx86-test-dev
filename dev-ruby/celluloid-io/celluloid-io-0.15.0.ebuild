# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

RUBY_FAKEGEM_RECIPE_TEST="rspec"
RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="CHANGES.md README.md"

inherit ruby-fakegem

DESCRIPTION="Evented IO for Celluloid actors"
HOMEPAGE="https://github.com/celluloid/celluloid-io"
IUSE=""
SLOT="0"

LICENSE="MIT"
KEYWORDS="~amd64 ~ppc ~ppc64"

# Test hangs
RESTRICT="test"

ruby_add_rdepend "dev-ruby/celluloid
	dev-ruby/nio4r"

all_ruby_prepare() {
	sed -i -e '/[Bb]undler/d' -e '/[Cc]overalls/d' spec/spec_helper.rb || die
}
