# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3.9999
#hackport: flags: -check-bounds

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Efficient basic number-theoretic functions. Primes, powers, integer logarithms"
HOMEPAGE="https://github.com/cartazio/arithmoi"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # needs a QC-2.10 port

RDEPEND=">=dev-haskell/exact-pi-0.4.1.1:=[profile?]
	>=dev-haskell/integer-logarithms-1.0:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/nats-1:=[profile?] <dev-haskell/nats-1.2:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/semigroups-0.8:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/quickcheck-2.7.6
		>=dev-haskell/smallcheck-1.1 <dev-haskell/smallcheck-1.2
		>=dev-haskell/tasty-0.10
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.10
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.9
		>=dev-haskell/tasty-smallcheck-0.8 <dev-haskell/tasty-smallcheck-0.9 )
"

src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck >= 2.7.6 && < 2.10' 'QuickCheck >= 2.7.6' \
		'tasty >= 0.10 && < 0.12' 'tasty >= 0.10'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-check-bounds
}
