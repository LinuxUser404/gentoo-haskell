# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="GenValidity support for aeson"
HOMEPAGE="https://github.com/NorfairKing/validity#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	>=dev-haskell/genvalidity-0.5:=[profile?]
	>=dev-haskell/genvalidity-scientific-0.2:=[profile?]
	>=dev-haskell/genvalidity-text-0.5:=[profile?]
	>=dev-haskell/genvalidity-unordered-containers-0.2:=[profile?]
	>=dev-haskell/genvalidity-vector-0.2:=[profile?]
	dev-haskell/quickcheck:2=[profile?]
	>=dev-haskell/validity-0.5:=[profile?]
	>=dev-haskell/validity-aeson-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/genvalidity-hspec
		dev-haskell/hspec )
"
