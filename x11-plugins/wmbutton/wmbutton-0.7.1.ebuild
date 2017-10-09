# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="a dockapp application that displays nine configurable buttons"
HOMEPAGE="http://www.dockapps.net/wmbutton"
SRC_URI="http://www.dockapps.net/download/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE="branding"

RDEPEND="x11-libs/libX11
	x11-libs/libXpm
	x11-libs/libXext"
DEPEND="${RDEPEND}
	x11-proto/xproto"