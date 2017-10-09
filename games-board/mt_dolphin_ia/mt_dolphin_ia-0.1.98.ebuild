# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit games eutils

DESCRIPTION="client for the french tarot game maitretarot"
HOMEPAGE="http://www.nongnu.org/maitretarot/"
SRC_URI="https://savannah.nongnu.org/download/maitretarot/${PN}.pkg/${PV}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="dev-libs/glib:2
	dev-libs/libxml2
	dev-games/libmaitretarot
	dev-games/libmt_client"
RDEPEND=${DEPEND}

src_prepare() {
	epatch "${FILESDIR}"/${P}-formatsecurity.patch
}

src_install() {
	default
	prepgamesdirs
}