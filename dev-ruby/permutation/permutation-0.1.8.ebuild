# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

USE_RUBY="ruby19 ruby20 ruby21"
RUBY_FAKEGEM_RECIPE_TEST="rake"
RUBY_FAKEGEM_RECIPE_DOC="rake"
RUBY_FAKEGEM_TASK_DOC="doc"

inherit multilib ruby-fakegem

DESCRIPTION="Library to perform different operations with permutations of sequences (strings, arrays, etc.)"
HOMEPAGE="http://flori.github.com/permutation"

LICENSE="|| ( Ruby-BSD BSD-2 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc"
