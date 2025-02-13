# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6
#hackport: flags: -developer

CABAL_FEATURES="lib profile haddock hoogle hscolour"  # test-suite
inherit haskell-cabal

DESCRIPTION="Fast JSON parsing and encoding"
HOMEPAGE="https://github.com/bos/aeson"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="cffi fast"

RESTRICT=test # quickcheck-instances requires quickcheck-2.13

RDEPEND=">=dev-haskell/attoparsec-0.13.2.2:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/base-compat-0.9.1:=[profile?] <dev-haskell/base-compat-0.11:=[profile?]
	>=dev-haskell/contravariant-1.4.1:=[profile?] <dev-haskell/contravariant-1.6:=[profile?]
	>=dev-haskell/dlist-0.8.0.4:=[profile?] <dev-haskell/dlist-0.9:=[profile?]
	>=dev-haskell/fail-4.9:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-haskell/hashable-1.2.7.0:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/nats-1.1.1:=[profile?] <dev-haskell/nats-1.2:=[profile?]
	>=dev-haskell/primitive-0.6.3.0:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-haskell/scientific-0.3.6.2:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/semigroups-0.18.5:=[profile?] <dev-haskell/semigroups-0.20:=[profile?]
	>=dev-haskell/tagged-0.8.5:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/th-abstraction-0.2.8.0:=[profile?] <dev-haskell/th-abstraction-0.4:=[profile?]
	>=dev-haskell/time-compat-1.9.2.2:=[profile?] <dev-haskell/time-compat-1.10:=[profile?]
	>=dev-haskell/transformers-compat-0.6.2:=[profile?] <dev-haskell/transformers-compat-0.7:=[profile?]
	>=dev-haskell/unordered-containers-0.2.8.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/uuid-types-1.0.3:=[profile?] <dev-haskell/uuid-types-1.1:=[profile?]
	>=dev-haskell/vector-0.12.0.1:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/void-0.7.2:=[profile?] <dev-haskell/void-0.8:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3"
# 	test? ( >=dev-haskell/base-orphans-0.5.3 <dev-haskell/base-orphans-0.9
# 		dev-haskell/base16-bytestring
# 		dev-haskell/diff
# 		>=dev-haskell/generic-deriving-1.10 <dev-haskell/generic-deriving-1.13
# 		>=dev-haskell/hashable-time-0.2 <dev-haskell/hashable-time-0.3
# 		>=dev-haskell/integer-logarithms-1 <dev-haskell/integer-logarithms-1.1
# 		>=dev-haskell/quickcheck-2.10.0.1 <dev-haskell/quickcheck-2.14
# 		>=dev-haskell/quickcheck-instances-0.3.21 <dev-haskell/quickcheck-instances-0.4
# 		dev-haskell/tasty
# 		dev-haskell/tasty-golden
# 		dev-haskell/tasty-hunit
# 		dev-haskell/tasty-quickcheck )
# "

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag cffi cffi) \
		--flag=-developer \
		$(cabal_flag fast fast)
}
