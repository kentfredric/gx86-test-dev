# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit flag-o-matic mount-boot

DESCRIPTION="A module that uses Intel(R) Trusted Execution Technology to perform a measured and verified boot"
HOMEPAGE="http://sourceforge.net/projects/tboot/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 -*"
IUSE="custom-cflags"

RESTRICT="test" # test is restricted because it requires patching the kernel src

DEPEND="app-crypt/trousers
app-crypt/tpm-tools"

RDEPEND="${DEPEND}
sys-boot/grub:2"

DOCS=(README COPYING CHANGELOG)

src_prepare() {
	epatch "${FILESDIR}/1.8.2-genkernel_arch.patch"

	# the version number is wrong in the grub files
	sed -i 's/tboot_version="1.8.1"/tboot_version="1.8.2"/' tboot/20_linux*tboot

	sed -i 's/ -Werror//g' Config.mk
	sed -i 's/^INSTALL_STRIP = -s$//' Config.mk # QA Errors

	epatch_user
}

src_compile() {
	use custom-cflags && export TBOOT_CFLAGS=${CFLAGS} || unset CCASFLAGS CFLAGS CPPFLAGS LDFLAGS

	if use amd64; then
		MAKEARGS="TARGET_ARCH=x86_64"
	else
		MAKEARGS="TARGET_ARCH=i686"
	fi

	emake ${MAKEARGS} build
}

src_install() {
	emake DISTDIR="${D}" install

	dodoc "${DOCS[@]}"
	dodoc docs/*.txt lcptools/*.{txt,pdf} || die "docs failed"

	cd "${D}"
	mkdir -p usr/lib/tboot/ || die
	mv boot usr/lib/tboot/ || die
}

pkg_postinst() {
	mount-boot_mount_boot_partition

	cp ${ROOT%/}/usr/lib/tboot/boot/* ${ROOT%/}/boot/

	mount-boot_pkg_postinst

	ewarn "Please remember to download the SINIT AC Module relevant"
	ewarn "for your platform from:"
	ewarn "http://software.intel.com/en-us/articles/intel-trusted-execution-technology/"
}
