# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="Scaffolding CLI for the Snap Framework"
HOMEPAGE="http://snapframework.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/directory-tree-0.11:= <dev-haskell/directory-tree-0.13:=
	>=dev-haskell/old-time-1.0:= <dev-haskell/old-time-1.2:=
	>=dev-haskell/text-0.11:= <dev-haskell/text-1.3:=
	>=dev-haskell/hashable-1.2.0.6:= <dev-haskell/hashable-1.3:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_prepare() {
	default

	cabal_chdeps \
		'directory           >= 1.0     && < 1.3' 'directory           >= 1.0' \
		'template-haskell    >= 2.2     && < 2.12' 'template-haskell    >= 2.2'
}
