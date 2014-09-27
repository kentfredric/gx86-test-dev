# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2

inherit php-pear-r1

DESCRIPTION="Generation of CAPTCHAs"
LICENSE="BSD"
SLOT="0"

KEYWORDS="amd64 x86"
IUSE="minimal"

RDEPEND="dev-php/PEAR-Text_Password
	dev-lang/php[truetype]
	|| ( dev-lang/php[gd] dev-lang/php[gd-external] )
	!minimal? ( dev-php/PEAR-Numbers_Words
		    dev-php/PEAR-Text_Figlet
		    dev-php/PEAR-Image_Text )"
