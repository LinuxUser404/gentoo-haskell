# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A library for writing irc bots"
HOMEPAGE="http://hub.darcs.net/stepcut/ircbot"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/irc-0.6:=[profile?] <dev-haskell/irc-0.7:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/network-2.3:=[profile?] <dev-haskell/network-2.7:=[profile?]
	>=dev-haskell/parsec-3.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/safesemaphore-0.10:=[profile?] <dev-haskell/safesemaphore-0.11:=[profile?]
	>=dev-haskell/stm-2.2:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_prepare() {
	cabal_chdeps \
		'time       >= 1.5  && < 1.6' 'time       >= 1.5'
}