# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

#inherit pax-utils

DESCRIPTION="Canon Printer Driver for MX520 series machines"
HOMEPAGE="http://support-sg.canon-asia.com/contents/SG/EN/0100515502.html"
SRC_URI="http://www.andmarios.com/attachments/cnijfilter-mx520-1.00.tar.bz2"

LICENSE="GPL-2 and Proprietary"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="net-print/cups"

S="${WORKDIR}"


src_install() {
	cp -R "${S}/usr" "${D}/" || die "Install failed!"
	cp -R "${S}/etc" "${D}/" || die "Install failed!"
}
