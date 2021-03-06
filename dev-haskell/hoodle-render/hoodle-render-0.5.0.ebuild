# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Hoodle file renderer"
HOMEPAGE="http://hackage.haskell.org/package/hoodle-render"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="gtk3"

RDEPEND=">=dev-haskell/base64-bytestring-0.1:=[profile?]
	>=dev-haskell/cairo-0.13.0.3:=[profile?]
	>=dev-haskell/gd-3000.7:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/hoodle-types-0.3.0:=[profile?]
	>=dev-haskell/lens-2.5:=[profile?]
	>=dev-haskell/monad-loops-0.3:=[profile?]
	>=dev-haskell/mtl-2:=[profile?] <dev-haskell/mtl-3:=[profile?]
	>=dev-haskell/poppler-0.12.2.2:=[profile?]
	dev-haskell/stm:=[profile?]
	>=dev-haskell/strict-0.3:=[profile?]
	>=dev-haskell/svgcairo-0.12:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-haskell/uuid-1.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	gtk3? ( >=dev-haskell/gtk3-0.13:=[profile?] )
	!gtk3? ( >dev-haskell/gtk-0.13:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag gtk3 gtk3)
}
