# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Massiv is an Array Library"
HOMEPAGE="https://github.com/lehins/massiv"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="unsafe-checks"

RDEPEND="dev-haskell/data-default-class:=[profile?]
	dev-haskell/exceptions:=[profile?]
	dev-haskell/primitive:=[profile?]
	>=dev-haskell/scheduler-1.1.0:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	>=dev-haskell/cabal-doctest-1.0.6
	test? ( dev-haskell/async
		dev-haskell/data-default
		>=dev-haskell/doctest-0.15
		dev-haskell/hspec
		dev-haskell/quickcheck
		dev-haskell/unliftio )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag unsafe-checks unsafe-checks)
}
