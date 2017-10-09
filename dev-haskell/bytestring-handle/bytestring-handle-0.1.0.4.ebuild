# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="ByteString-backed Handles"
HOMEPAGE="http://hub.darcs.net/ganesh/bytestring-handle"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.4
		>=dev-haskell/quickcheck-2.1.2
		>=dev-haskell/test-framework-0.2.0 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2.0 <dev-haskell/test-framework-hunit-0.4
		>=dev-haskell/test-framework-quickcheck2-0.2.5 <dev-haskell/test-framework-quickcheck2-0.4 )
"

src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck >= 2.1.2 && < 2.9' 'QuickCheck >= 2.1.2'
}