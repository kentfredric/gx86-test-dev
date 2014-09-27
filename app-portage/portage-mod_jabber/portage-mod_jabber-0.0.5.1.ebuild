# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit multilib

DESCRIPTION="A notification module for the portage elog-system to notify via the XMPP (Jabber) protocol"
HOMEPAGE="http://usrportage.de/"
SRC_URI="http://software.usrportage.de/portage-mod_jabber/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND=""
RDEPEND=">=sys-apps/portage-2.1
	>=dev-python/xmpppy-0.2"

src_install() {
	insinto /usr/$(get_libdir)/portage/pym/portage/elog
	doins mod_jabber.py || die "doins failed"
	dosym /usr/$(get_libdir)/portage/pym/portage/elog/mod_jabber.py \
		/usr/$(get_libdir)/portage/pym/elog_modules/mod_jabber.py || die

	dodoc README ChangeLog || die "dodoc failed"
}
