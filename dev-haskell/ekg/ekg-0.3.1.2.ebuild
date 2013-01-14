# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Remote monitoring of processes"
HOMEPAGE="https://github.com/tibbe/ekg"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/aeson-0.7:=[profile?]
		<dev-haskell/snap-core-0.10:=[profile?]
		<dev-haskell/snap-server-0.10:=[profile?]
		<dev-haskell/text-0.12:=[profile?]
		<dev-haskell/transformers-0.4:=[profile?]
		<dev-haskell/unordered-containers-0.3:=[profile?]
		>=dev-lang/ghc-7.4.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
